package com.prince.gateway.permission;

import com.auth0.jwt.exceptions.JWTVerificationException;
import com.prince.common.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Objects;

/**
 * Description : 授权校验拦截器
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:06
 */
@Component
@RequiredArgsConstructor
public class AuthorizationInterceptor {

    private final RedisTemplate<String, Object> redisTemplate;

    private static final String prince_TOKEN_ADMIN = "prince:token:admin";

    private static final String prince_TOKEN_APP = "prince:token:app";

    /**
     * Description :  解析token
     *
     * @param token 令牌
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @author Mu Prince
     * @since 2022/6/22 19:29
     */
    public Map<String, Object> parseMap(String token) {
        if (token == null) {
            return null;
        }
        try {
            //解析token
            return JWTUtil.parseToken(token);
        } catch (JWTVerificationException e) {
            return null;
        }
    }

    /**
     * Description :  判断管理系统token有效
     *
     * @param token 令牌
     * @return {@link boolean}
     * @author Mu Prince
     * @since 2022/8/3 16:48
     */
    public boolean isValidTokenForAdmin(String userId, String token) {
        try {
            String tokenCache = Objects.requireNonNull(redisTemplate.boundHashOps(prince_TOKEN_ADMIN).get(userId)).toString();
            return token.equals(tokenCache);
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Description :  token无效
     *
     * @param token 令牌
     * @return {@link boolean}
     * @author Mu Prince
     * @since 2022/8/3 16:48
     */
    public boolean isInvalidTokenForAdmin(String userId, String token) {
        return !(isValidToken(userId, token));
    }

    /**
     * Description :  判断APP token有效
     *
     * @param token 令牌
     * @return {@link boolean}
     * @author Mu Prince
     * @since 2022/8/3 16:48
     */
    public boolean isValidToken(String userId, String token) {
        Object tokenCache = redisTemplate.boundHashOps(prince_TOKEN_APP).get(userId);
        if (tokenCache == null) {
            redisTemplate.boundHashOps(prince_TOKEN_APP).put(userId, token);
            return true;
        }
        return token.equals(tokenCache.toString());
    }

    /**
     * Description :  token无效
     *
     * @param token 令牌
     * @return {@link boolean}
     * @author Mu Prince
     * @since 2022/8/3 16:48
     */
    public boolean isInvalidToken(String userId, String token) {
        return !(isValidToken(userId, token));
    }

    /**
     * Description :  退出登录
     *
     * @param userId 用户id
     * @author Mu Prince
     * @since 2022/8/3 18:01
     */
    public void logoutFromApp(String userId) {
        redisTemplate.boundHashOps(prince_TOKEN_APP).delete(userId);
    }

    /**
     * Description :  退出登录
     *
     * @param userId 用户id
     * @author Mu Prince
     * @since 2022/8/3 18:02
     */
    public void logoutFromAdmin(String userId) {
        redisTemplate.boundHashOps(prince_TOKEN_ADMIN).delete(userId);
    }
}
