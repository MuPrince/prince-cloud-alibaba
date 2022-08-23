package com.prince.gateway.exception;

import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebExceptionHandler;
import reactor.core.publisher.Mono;

/**
 * Description : 异常处理
 *
 * @author Mu Prince <br\>
 * @since 2022/7/26 11:54
 */
@Component
public class CustomWebExceptionHandler implements WebExceptionHandler {
    @Override
    public Mono<Void> handle(ServerWebExchange serverWebExchange, Throwable throwable) {
        System.out.println(throwable.getClass() + throwable.getMessage());

        return null;
    }
}
