package com.prince.chat;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.amqp.rabbit.annotation.EnableRabbit;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Description :
 *
 * @author StrangePrince <br\>
 * @since 2022/6/11 0:28
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.prince.chat.mapper"})
@EnableCaching
@EnableDubbo
@EnableRabbit
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server", "com.prince.common"})})
public class ChatApplication {
    public static void main(String[] args) {
        SpringApplication.run(ChatApplication.class, args);
    }
}
