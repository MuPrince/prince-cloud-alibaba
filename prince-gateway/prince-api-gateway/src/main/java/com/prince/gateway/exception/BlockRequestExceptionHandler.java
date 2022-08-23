package com.prince.gateway.exception;

import com.alibaba.csp.sentinel.adapter.gateway.sc.callback.BlockRequestHandler;
import com.alibaba.csp.sentinel.slots.block.BlockException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.server.ServerResponse;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import java.util.HashMap;
import java.util.Map;

/**
 * Description : 限流熔断异常处理
 *
 * @author Mu Prince <br\>
 * @since 2022/7/25 18:41
 */
@Configuration
@Slf4j
public class BlockRequestExceptionHandler implements BlockRequestHandler {

    @Override
    public Mono<ServerResponse> handleRequest(ServerWebExchange exchange, Throwable e) {
        if (e instanceof BlockException) {

        }
        return endProcess(exchange, HttpStatus.FORBIDDEN, "服务器忙，请稍后重试。");
    }

    private Mono<ServerResponse> endProcess(ServerWebExchange exchange, HttpStatus httpStatus, String message) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("message", message);
        exchange.getResponse().setStatusCode(httpStatus);
        ServerHttpResponse response = exchange.getResponse();
        response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
        return ServerResponse.status(HttpStatus.FORBIDDEN).contentType(MediaType.APPLICATION_JSON).body(BodyInserters.fromValue(resultMap));
    }
}
