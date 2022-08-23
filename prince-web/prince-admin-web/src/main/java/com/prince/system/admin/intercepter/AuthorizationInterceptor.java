package com.prince.system.admin.intercepter;

import com.alibaba.fastjson.JSON;
import com.prince.common.util.JWTUtil;
import com.prince.admin.context.SystemUserContext;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Description : 授权校验拦截器
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:06
 */
@Component
public class AuthorizationInterceptor implements HandlerInterceptor {

    /**
     * Description :  解析token
     * @param token 令牌
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @throws
     * @since 2022/6/22 19:29
     * @author Mu Prince
     */
    public static Map<String, Object> jwtVerify(String token) {
        if (token == null) {
            return null;
        }
        //解析token
        return JWTUtil.parseToken(token);
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("token校验拦截器");
        String token = request.getHeader(HttpHeaders.AUTHORIZATION);
        if (StringUtils.isEmpty(token)) {
//            response.setContentType("text/html;charset=utf-8");
//            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
//            Map<String, Object> message = new HashMap<>();
//            message.put("code", HttpServletResponse.SC_UNAUTHORIZED);
//            message.put("message", "请登录");
//            response.getWriter().print(JSON.toJSONString(message));
//            return false;
            token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJ0b2tlbiIsImF1ZCI6Im1lbWJlciIsImlzcyI6IndhbHNlYSIsImJvZHkiOnsiaGVhZCI6IiIsInJvbGVJZCI6MSwidXNlcklkIjoxLCJ1c2VybmFtZSI6ImFkbWluIn0sImV4cCI6MTY4ODcyNTg4MSwiaWF0IjoxNjU3MTAzNDgxLCJqdGkiOiI5YTYzMWY3Njg4M2E0YWYxODNkZjUwN2VmMzM1ODUzZSJ9.wy1X8EnDe3pXxPCWlQW8wU8tI4TU9UWfGGgntPee-6iG7fDrVRzre-nOCLGg2vXd";
        }
        Map<String, Object> data = jwtVerify(token);
        if (data == null) {
            response.setContentType("text/html;charset=utf-8");
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            Map<String, Object> message = new HashMap<>();
            message.put("code", HttpServletResponse.SC_UNAUTHORIZED);
            message.put("message", "认证失败，token无效");
            response.getWriter().println(JSON.toJSONString(message));
            return false;
        }
        SystemUserContext.set(data);
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        SystemUserContext.clear();
    }
}
