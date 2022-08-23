package com.prince.user.listener;

import com.prince.common.constant.RedisKey;
import com.prince.common.constant.RedissonKey;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.util.RandomUtil;
import com.prince.common.util.SpringContextUtil;
import com.prince.user.entity.po.PrinceNumber;
import com.prince.user.mapper.PrinceNumberMapper;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.listener.KeyspaceEventMessageListener;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : RedisKey的值发生变化时的事件监听
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/21 15:20
 */
@Slf4j
@Component
public class RedisKeyChangeEventMsgListener extends KeyspaceEventMessageListener {

    private final RedisTemplate<String, Object> redisTemplate;

    private final RedissonClient redisson;

    private PrinceNumberMapper princeNumberMapper;

    /**
     * Creates new {@link KeyspaceEventMessageListener}.
     *
     * @param container     must not be {@literal null}.
     * @param redisTemplate
     */
    public RedisKeyChangeEventMsgListener(RedisMessageListenerContainer container, RedisTemplate<String, Object> redisTemplate, RedissonClient redisson) {
        super(container);
        this.redisTemplate = redisTemplate;
        this.redisson = redisson;
        setKeyspaceNotificationsConfigParameter("");
    }

    @Override
    protected void doHandleMessage(Message message) {
//        log.info("redis事件监听器触发-body:{},channel:{}", new String(message.getBody()), new String(message.getChannel()));
        String key = new String(message.getBody());
        String event = new String(message.getChannel());
        if (key.startsWith(RedisKey.PRINCE_NUMBER_POOL)) {
            if (event.endsWith("pop")) {
                Long size = redisTemplate.boundSetOps(RedisKey.PRINCE_NUMBER_POOL).size();
                if (size == null || size < PrinceConstants.PRINCE_NUMBER_POOL_FILL_FACTOR) {
                    fillPrinceNumber();
                }
            }
        }
    }

    private void fillPrinceNumber() {
        log.info("生成prince号");
        RBloomFilter<Long> filter = redisson.getBloomFilter(RedissonKey.PRINCE_NUMBER_BLOOM_FILTER);
        if (this.princeNumberMapper == null) {
            this.princeNumberMapper = (PrinceNumberMapper) SpringContextUtil.getBean("princeNumberMapper");
        }
        List<PrinceNumber> nums = new ArrayList<>();
        String[] numbers = new String[PrinceConstants.PRINCE_NUMBER_POOL_FILL_SIZE];
        for (int i = 0; i < PrinceConstants.PRINCE_NUMBER_POOL_FILL_SIZE; i++) {
            String num = RandomUtil.randomprinceNumber();
            //判断是否存在
            if (!filter.contains(Long.valueOf(num))) {
                PrinceNumber princeNumber = new PrinceNumber();
                for (String regex : PrinceConstants.PRINCE_NUMBER_PRETTY_REGEX) {
                    boolean matches = num.matches(regex);
                    if (matches) {
                        princeNumber.setLevel(1);
                        break;
                    } else {
                        princeNumber.setLevel(0);
                    }
                }
                princeNumber.setPrinceNumber(Long.valueOf(num));
                nums.add(princeNumber);
                numbers[i] = num;
                filter.add(Long.valueOf(num));
            }
        }
        //保存
        princeNumberMapper.insertBatch(nums);
        log.info("本次共计生成{}个prince号", nums.size());
        //放入redis
        redisTemplate.boundSetOps(RedisKey.PRINCE_NUMBER_POOL).add(numbers);
    }
}
