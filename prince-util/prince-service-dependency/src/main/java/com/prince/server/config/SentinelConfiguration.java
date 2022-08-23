package com.prince.server.config;

import com.alibaba.csp.sentinel.annotation.aspectj.SentinelResourceAspect;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/25 14:18
 */
@Configuration
public class SentinelConfiguration {

    @Bean
    public SentinelResourceAspect sentinelResourceAspect(){
        return new SentinelResourceAspect();
    }
}
