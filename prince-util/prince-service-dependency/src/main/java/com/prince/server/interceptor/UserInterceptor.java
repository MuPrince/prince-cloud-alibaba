package com.prince.server.interceptor;

import com.prince.common.constant.RedisCacheKey;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.entity.UserTemp;
import com.prince.server.context.SystemUserContext;
import com.prince.server.context.UserContext;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.concurrent.TimeUnit;

/**
 * Description : 用户信息传递拦截器
 *
 * @author Mu Prince <br\>
 * @since 2022/6/19 20:09
 */
@Slf4j
@Component
@NoArgsConstructor
@Order(20)
public class UserInterceptor implements HandlerInterceptor {

    private RedisTemplate<String, Object> redisTemplate;

    @Resource
    public void setRedisTemplate(RedisTemplate<String, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    @Override
    @SuppressWarnings("unchecked")
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        String user = request.getHeader("user");
        System.out.println(user);
        log.info("收到请求，uri: {} {}-->{}", request.getMethod(), uri, user);
        if (uri.startsWith(PrinceConstants.ADMIN_URI_PREFIX)) {
            UserTemp temp = (UserTemp) redisTemplate.boundHashOps(RedisCacheKey.SYSTEM_USER_ONLINE).get(user);
            SystemUserContext.set(temp);
        } else {
            user = "12";
            UserContext.set(Long.valueOf(user));
            redisTemplate.boundValueOps(RedisCacheKey.USER_ONLINE + user).expire(PrinceConstants.USER_CACHE_EXPIRE_AT_S, TimeUnit.SECONDS);
        }
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        UserContext.clear();
        SystemUserContext.clear();
    }

}
