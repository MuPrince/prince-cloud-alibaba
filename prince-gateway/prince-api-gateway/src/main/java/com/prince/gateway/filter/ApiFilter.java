package com.prince.gateway.filter;


import com.alibaba.fastjson2.JSON;
import com.prince.common.constant.PrinceConstants;
import com.prince.gateway.permission.AuthorizationInterceptor;
import com.prince.gateway.permission.PermissionInterceptor;
import com.prince.task.entity.Traffic;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import java.util.*;
import java.util.function.Consumer;

/**
 * Description : 网关过滤器
 *
 * @author Mu Prince <br\>
 * @since 2022/6/10 20:47
 */
@Component
@Slf4j
public class ApiFilter implements GlobalFilter, Ordered {

    private final AuthorizationInterceptor authorizationInterceptor;

    private final PermissionInterceptor permissionInterceptor;

    private final AmqpTemplate amqpTemplate;


    private static final List<String> pass = new ArrayList<>();

    private static final String TRAFFIC_STATISTIC_QUEUE = "traffic-statistic-queue";

    private static final String ADMIN_URI_PREFIX = "/sys/";

    private static final String ADMIN_LOGOUT_URI = "/sys/logout";

    private static final String APP_LOGOUT_URI = "/logout";

    private static final String USER_HEADER_NAME = "User";

    private static final String NO_TOKEN = "No token.";

    private static final String TOKEN_IS_INVALID = "token is invalid.";

    private static final String PERMISSION_DENIED = "Permission denied";

    static {
        pass.add("/login");
        pass.add("/changePassword");
//        pass.add("/logout");
        pass.add("/registry");
        pass.add("/sys/user/login");
//        pass.add("/sys/logout");
        pass.add("/tag/markUser");
        pass.add("/tag/markContent");
        pass.add("/tag/getUserTags");
        pass.add("/tag/getContentTags");

    }

    public ApiFilter(AuthorizationInterceptor authorizationInterceptor, PermissionInterceptor permissionInterceptor, AmqpTemplate amqpTemplate) {
        this.authorizationInterceptor = authorizationInterceptor;
        this.permissionInterceptor = permissionInterceptor;
        this.amqpTemplate = amqpTemplate;
    }

    /**
     * Description :  gateway全局过滤器
     *
     * @param exchange
     * @param chain
     * @return reactor.core.publisher.Mono<java.lang.Void>
     * @throws
     * @author Mu Prince
     * @since 2022/6/22 19:30
     */
    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        ServerHttpRequest request = exchange.getRequest();
        String uri = request.getURI().getPath();
        String method = request.getMethod() == null ? "" : request.getMethod().name();
        Traffic traffic = new Traffic();
//        traffic.setUri(uri);
//        traffic.setMethod(method);
//        traffic.setTime(new Date());
        log.info("收到请求，uri：{}--{}", uri, request.getMethod());
//        if (authorizationInterceptor.isInvalid(uri)) return endProcess(exchange, 404, null);

        //放过登陆
        if (pass.contains(uri)) {
//            amqpTemplate.convertAndSend(TRAFFIC_STATISTIC_QUEUE, traffic);
            return chain.filter(exchange);
        }
        //获取token
        String token = request.getHeaders().getFirst(HttpHeaders.AUTHORIZATION);
        //TODO 开发
        if (StringUtils.isBlank(token)) {
            if (!(uri.startsWith(ADMIN_URI_PREFIX))) {
                token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJ0b2tlbiIsImF1ZCI6Im1lbWJlciIsImlzcyI6IndhbHNlYSIsImJvZHkiOnsic2lnbiI6ImFwcCIsInVzZXIiOjF9LCJleHAiOjE2NjExMzMxMTAsImlhdCI6MTY2MDUyODMxMCwianRpIjoiZGFkNGNjODRmMmQ4NGU1MDhjOGFkYjdkNTI4NTIyYWIifQ.CrmKUAMQl4Fnguw9gPxGrqjxaKYfnQIuruGHU6_xIy6YUYrJqVLKCfF64CgBT9lE";
            } else {
                token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJ0b2tlbiIsImF1ZCI6Im1lbWJlciIsImlzcyI6IndhbHNlYSIsImJvZHkiOnsic2lnbiI6InN5cyIsInVzZXIiOjF9LCJleHAiOjE2NjEyMzY3NDQsImlhdCI6MTY2MDYzMTk0NCwianRpIjoiY2FlNGZmMDUyMTM2NGZhYmIxNGQ3MWRhODYyZTFhYjgifQ.CRMyE24WgNRC3qYlPh0TcTaMg6d1eJmaIhfOkp_0HmJulILYHOrWXmlW3ucWMpGu";
            }
        }
        //找不到token
        if (StringUtils.isNotBlank(token)) {
            //解析token
            Map<String, Object> data = authorizationInterceptor.parseMap(token);
            if (data != null && data.size() > 0) {
                Long userId = Long.valueOf(data.get("user").toString());
                String sign = data.get("sign").toString();
                //管理系统token
                if (PrinceConstants.SYSTEM_TOKEN_SIGN.equals(sign)) {
                    //判断是否是管理系统的请求
                    if (uri.startsWith(ADMIN_URI_PREFIX)) {
                        //是否是允许的token
//                        if (authorizationInterceptor.isValidTokenForAdmin(userId.toString(), token)) {
                            //直接在网关层处理退出
                            if (ADMIN_LOGOUT_URI.equals(uri)) {
                                authorizationInterceptor.logoutFromAdmin(userId.toString());
                                return endProcess(exchange, HttpStatus.OK, "", traffic);
                            }
                            //鉴权
                            if (permissionInterceptor.identification(userId, uri, method)) {
                                traffic.setUser(userId.toString());
                                //                        amqpTemplate.convertAndSend(TRAFFIC_STATISTIC_QUEUE, traffic);
                                //将user信息向后传递
                                return chainFilterAndSetHeaders(chain, exchange, userId.toString());
                            }
                            return endProcess(exchange, HttpStatus.FORBIDDEN, PERMISSION_DENIED, traffic);
//                        }
                    }
                }
                //app请求
                if (PrinceConstants.APP_TOKEN_SIGN.equals(sign)) {
                    //是否是允许的token
//                    if (authorizationInterceptor.isValidTokenForAdmin(userId.toString(), token)) {
                        //直接在网关层处理退出
                        if (APP_LOGOUT_URI.equals(uri)) {
                            authorizationInterceptor.logoutFromApp(userId.toString());
                            return endProcess(exchange, HttpStatus.OK, "", traffic);
                        }
//                        traffic.setUser(userId.toString());
//                        amqpTemplate.convertAndSend(TRAFFIC_STATISTIC_QUEUE, traffic);
                        //将user信息向后传递
                        return chainFilterAndSetHeaders(chain, exchange, userId.toString());
//                    }
                }
            }
            return endProcess(exchange, HttpStatus.UNAUTHORIZED, TOKEN_IS_INVALID, traffic);
        }
        return endProcess(exchange, HttpStatus.UNAUTHORIZED, NO_TOKEN, traffic);
    }

    @Override
    public int getOrder() {
        return 10099;
    }

    /**
     * Description : 结束请求
     *
     * @param exchange   {@link ServerWebExchange}
     * @param httpStatus HTTP状态码
     * @param message    消息
     * @return reactor.core.publisher.Mono<java.lang.Void>
     * @throws
     * @author Mu Prince
     * @since 2022/6/22 19:15
     */
    private Mono<Void> endProcess(ServerWebExchange exchange, HttpStatus httpStatus, String message, Traffic traffic) {
        traffic.setMessage(message);
//        amqpTemplate.convertAndSend(TRAFFIC_STATISTIC_QUEUE, traffic);
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", httpStatus.value());
        resultMap.put("message", message);
        exchange.getResponse().setStatusCode(httpStatus);
        ServerHttpResponse response = exchange.getResponse();
        response.getHeaders().setContentType(MediaType.APPLICATION_JSON);
        return response.writeWith(Mono.just(response.bufferFactory().wrap(JSON.toJSONString(resultMap).getBytes())));
    }

    /**
     * 设置向后传递的header
     *
     * @param chain     过滤器链
     * @param exchange
     * @param headerMap 需要设置的header
     * @return reactor.core.publisher.Mono<java.lang.Void>
     * @throws
     * @author Mu Prince
     * @since 2022/6/22 19:15
     */
    private Mono<Void> chainFilterAndSetHeaders(GatewayFilterChain chain, ServerWebExchange exchange, LinkedHashMap<String, String> headerMap) {
        // 添加header
        Consumer<HttpHeaders> httpHeaders = httpHeader -> {
            for (Map.Entry<String, String> entry : headerMap.entrySet()) {
                // 遍历Map设置header，向后传递
                httpHeader.set(entry.getKey(), entry.getValue());
            }
        };

        ServerHttpRequest newRequest = exchange.getRequest().mutate().headers(httpHeaders).build();
        ServerWebExchange build = exchange.mutate().request(newRequest).build();
        //将现在的request 变成 exchange对象
        return chain.filter(build);
    }

    /**
     * 设置向后传递的header
     *
     * @param chain    过滤器链
     * @param exchange
     * @param user     传递的user信息
     * @return reactor.core.publisher.Mono<java.lang.Void>
     * @throws
     * @author Mu Prince
     * @since 2022/6/22 19:15
     */
    private Mono<Void> chainFilterAndSetHeaders(GatewayFilterChain chain, ServerWebExchange exchange, String user) {
        // 添加header
        ServerHttpRequest newRequest = exchange.getRequest().mutate().header(USER_HEADER_NAME, user).build();
        ServerWebExchange build = exchange.mutate().request(newRequest).build();
        //将现在的request 变成 exchange对象
        return chain.filter(build);
    }
}
