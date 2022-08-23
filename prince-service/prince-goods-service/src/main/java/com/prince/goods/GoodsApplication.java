package com.prince.goods;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * Project prince-microservice <br\>
 * Package com.prince.goods <br\>
 * <p>
 * Description :  <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 21:49
 */
@SpringBootApplication
@EnableCaching
@EnableDubbo
@MapperScan(basePackages = {"com.prince.goods.mapper"})
@ComponentScans({@ComponentScan(basePackages = {"com.prince.server"})})
public class GoodsApplication {
    public static void main(String[] args) {
        SpringApplication.run(GoodsApplication.class, args);
    }
}
