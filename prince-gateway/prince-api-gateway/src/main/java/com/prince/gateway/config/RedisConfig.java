package com.prince.gateway.config;

import com.alibaba.fastjson2.support.spring.data.redis.FastJsonRedisSerializer;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.time.Duration;

/**
 *
 * Description: <br/>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/21 15:20
 */
@Configuration
@EnableCaching
public class RedisConfig {

    @Bean
    RedisMessageListenerContainer container(RedisConnectionFactory connectionFactory) {
        RedisMessageListenerContainer container = new RedisMessageListenerContainer();
        container.setConnectionFactory(connectionFactory);
        return container;
    }

    @Bean
    public RedisSerializer<Object> fastJson2JsonRedisSerializer() {
        return new FastJson2JsonRedisSerializer<>(Object.class);
    }


    /**
     * RedisTemplate配置
     */
    @Bean
    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory factory, RedisSerializer<Object> fastJson2JsonRedisSerializer) {
        RedisTemplate<String, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(factory);
        template.setKeySerializer(new StringRedisSerializer());
//        template.setValueSerializer(new FastJsonRedisSerializer<>(Object.class));
        template.setValueSerializer(fastJson2JsonRedisSerializer);
        template.setHashKeySerializer(new StringRedisSerializer());
        template.setHashValueSerializer(fastJson2JsonRedisSerializer);
//        template.setHashValueSerializer(new FastJsonRedisSerializer<>(Object.class));
        template.afterPropertiesSet();
        return template;
    }

    /**
     * 缓存配置管理器
     */
    @Bean
    public CacheManager cacheManager(LettuceConnectionFactory factory) {
        // 以锁写入的方式创建RedisCacheWriter对象
        RedisCacheWriter writer = RedisCacheWriter.lockingRedisCacheWriter(factory);
        /**
         * 设置CacheManager的Value序列化方式为JdkSerializationRedisSerializer,
         * 但其实RedisCacheConfiguration默认就是使用 StringRedisSerializer序列化key，
         * JdkSerializationRedisSerializer序列化value, 所以以下注释代码就是默认实现，没必要写，直接注释掉
         * 设置缓存有效期一小时;
         */
        RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig().entryTtl(Duration.ofHours(1));
        return new RedisCacheManager(writer, config);
    }



}
