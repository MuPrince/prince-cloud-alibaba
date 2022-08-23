package com.prince.task;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.amqp.rabbit.annotation.EnableRabbit;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 15:28
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@EnableDubbo
@EnableRabbit
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server", "com.prince.common"})})
public class TaskApplication {

    public static void main(String[] args) {
        SpringApplication.run(TaskApplication.class, args);
    }
}
