package com.prince.user;

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
 * Project prince <br\>
 * Package com.prince.user <br\>
 * <p>
 * Description :  <br\>
 *
 * @author MuPrince <br\>
 * @since 2022/6/3 20:51
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.prince.user.mapper"})
@EnableCaching
@EnableDubbo
@EnableRabbit
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server", "com.prince.common"})})
public class UserApplication {

    public static void main(String[] args) {
        SpringApplication.run(UserApplication.class, args);
    }
}
