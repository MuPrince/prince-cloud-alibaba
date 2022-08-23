package com.prince.system.admin.config;

import org.springframework.cache.CacheManager;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import javax.annotation.Resource;
import java.time.Duration;

/**
 * Description : spring boot 缓存配置
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 18:30
 */
//@Configuration
public class SpringCacheConfig{

    @Resource
    private LettuceConnectionFactory lettuceConnectionFactory;

//    @Bean
    public CacheManager cacheManager(){
        RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig()
                .entryTtl(Duration.ofHours(1L))
                        //变双冒号为单冒号
                        .computePrefixWith(name -> name + ":")
                        .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(new StringRedisSerializer()))
                        .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(new GenericJackson2JsonRedisSerializer()))
                        .disableCachingNullValues();
        return RedisCacheManager.RedisCacheManagerBuilder
                .fromConnectionFactory(lettuceConnectionFactory)
                .cacheDefaults(config)
                .transactionAware()
                .build();
    }
}
