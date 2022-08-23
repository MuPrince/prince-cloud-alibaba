package com.prince.system.admin;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:32
 */
@SpringBootApplication
@EnableCaching
@EnableDubbo
@MapperScan(basePackages = {"com.prince.admin.mapper"})
@ComponentScans({@ComponentScan(basePackages = {"com.prince.common"})})
public class SystemAdminApplication {
    public static void main(String[] args) {
        SpringApplication.run(SystemAdminApplication.class, args);
    }
}
