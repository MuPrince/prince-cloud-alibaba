package com.prince.server.config;

import lombok.Data;
import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

/**
 * Description : Redisson配置
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/8 14:03
 */
@Configuration
@ConfigurationProperties(prefix = "spring.redis")
@Data
public class RedissonConfig {

    private String password;

    private int port;

    private String host;

    private int database;


    @Bean
    public RedissonClient redisson(){
        String redissonAddress = "redis://" + host + ":" + port;
        // 单机模式
        Config config = new Config();
        config.useSingleServer()
                .setAddress(redissonAddress)
                //心跳检测，定时与redis连接，可以防止一段时间过后，与redis的连接断开
                .setPingConnectionInterval(1000)
                .setDatabase(database)
                //设置密码
                .setPassword(password);
        return Redisson.create(config);
    }
}
