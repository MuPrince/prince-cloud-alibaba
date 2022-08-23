package com.prince.moment;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * Description :
 *
 * @author StrangePrince <br\>
 * @since 2022/6/11 0:31
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.prince.moment.mapper"})
@EnableCaching
@EnableDubbo
@EnableScheduling
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server", "com.prince.common"})})
public class MomentApplication {
    public static void main(String[] args) {
        SpringApplication.run(MomentApplication.class, args);
    }
}
