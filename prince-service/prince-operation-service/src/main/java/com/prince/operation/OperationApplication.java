package com.prince.operation;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.amqp.rabbit.annotation.EnableRabbit;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/8/2 15:40
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.prince.operation.mapper"})
@EnableCaching
@EnableDubbo
@EnableRabbit
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server", "com.prince.common"})})
public class OperationApplication {

    public static void main(String[] args) {
        SpringApplication.run(OperationApplication.class, args);
    }
}
