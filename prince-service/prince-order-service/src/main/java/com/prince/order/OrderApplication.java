package com.prince.order;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Project prince-microservice <br\>
 * Package com.prince <br\>
 * <p>
 * Description :  <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 10:54
 */
@SpringBootApplication
@EnableCaching
@EnableDubbo
@MapperScan(basePackages = {"com.prince.order.mapper"})
@ComponentScans({@ComponentScan(basePackages = {"com.prince.common"})})
public class OrderApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderApplication.class, args);
    }
}
