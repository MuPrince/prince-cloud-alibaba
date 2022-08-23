package com.prince.server.init;

import lombok.RequiredArgsConstructor;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

/**
 * Description : 初始化器
 *
 * @author Mu Prince <br\>
 * @since 2022/7/15 15:17
 */
@Component
@RequiredArgsConstructor
public abstract class Initializer {

    protected final RedissonClient redisson;

    protected final RedisTemplate<String, Object> redisTemplate;

    @PostConstruct
    public void doInitialize() {
        doInitialize0();
    }

    protected abstract void doInitialize0();

}
