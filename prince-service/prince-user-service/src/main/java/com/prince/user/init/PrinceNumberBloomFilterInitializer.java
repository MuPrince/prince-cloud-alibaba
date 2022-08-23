package com.prince.user.init;

import com.prince.common.constant.RedissonKey;
import com.prince.server.init.Initializer;
import com.prince.user.mapper.PrinceNumberMapper;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

/**
 * Description : 初始化prince号布隆过滤器
 *
 * @author Mu Prince <br\>
 * @since 2022/7/15 15:21
 */
@Slf4j
@Component
public class PrinceNumberBloomFilterInitializer extends Initializer {

    private final PrinceNumberMapper princeNumberMapper;

    public PrinceNumberBloomFilterInitializer(RedissonClient redisson, RedisTemplate<String, Object> redisTemplate, PrinceNumberMapper princeNumberMapper) {
        super(redisson, redisTemplate);
        this.princeNumberMapper = princeNumberMapper;
    }

    @Override
    protected void doInitialize0() {
        long s1 = System.currentTimeMillis();
        RBloomFilter<Long> filter = this.redisson.getBloomFilter(RedissonKey.PRINCE_NUMBER_BLOOM_FILTER);
//        filter.delete();
//        List<Long> nums = princeNumberMapper.selectAllNumber();
        long s = System.currentTimeMillis();
        filter.tryInit(90000000L, 0.0001);
//        for (Long num : nums) {
//            filter.add(num);
//        }
        long e = System.currentTimeMillis();

        log.info("初始化总用时:{}毫秒，初始化布隆过滤器用时：{}毫秒", (e - s1), (e - s));
//        log.info("{}个prince号放入布隆过滤器", nums.size());
    }
}
