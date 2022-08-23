package com.prince.common.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Description : JWT 令牌工具
 *
 * @author StrangePrince <br\>
 * @since 2022/6/8 22:24
 */
public class JWTUtil {

    /**
     * 默认秘钥
     */
    private static final String DEFAULT_SECRET="prince@2022";

    private static final String SYSTEM_TOKEN_SIGN = "sys";

    private static final String APP_TOKEN_SIGN = "app";

    /**
     * 过期时间 604800000
     */
    private static final long EXPIRES_AT = 86400000 * 7;

    private static final long SYS_EXPIRES_AT = 86400000;


    public static void main(String[] args) {
        System.out.println(createSystemToken(1L));
    }
    /**
     * Description :  创建管理系统token
     * @param id 用户id
     * @return {@link String}
     * @since 2022/8/13 17:30
     * @author Mu Prince
     */
    public static String createSystemToken(Long id) {
        Map<String,Object> dataMap = new HashMap<>();
        dataMap.put("user", id);
        dataMap.put("sign", SYSTEM_TOKEN_SIGN);
        return createToken(dataMap, DEFAULT_SECRET, SYS_EXPIRES_AT);
    }
    /**
     * Description :  创建APP用户token
     * @param id 用户id
     * @return {@link String}
     * @since 2022/8/13 17:31
     * @author Mu Prince
     */
    public static String createAppToken(Long id) {
        Map<String,Object> dataMap = new HashMap<>();
        dataMap.put("user", id);
        dataMap.put("sign", APP_TOKEN_SIGN);
        return createToken(dataMap, DEFAULT_SECRET, EXPIRES_AT);
    }

    /**
     * Description :  根据密钥生成token
     * @param dataMap 数据载荷
     * @param secret 密钥
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 22:27
     * @author StrangePrince
     */
    public static String createToken(Map<String,Object> dataMap, String secret, long expires) {
        //确认秘钥
        if(secret == null || "".equals(secret)){
            secret = DEFAULT_SECRET;
        }

        //确认签名算法
        Algorithm algorithm = Algorithm.HMAC384(secret);

        return
        JWT.create()
                //数据载荷
                .withClaim("body", dataMap)
                //签发者
                .withIssuer("prince")
                //签发时间
                .withIssuedAt(new Date())
                //主题
                .withSubject("token")
                //接受方
                .withAudience("member")
                //过期时间
                .withExpiresAt(new Date(System.currentTimeMillis() + expires))
                //唯一标识
                .withJWTId(UUID.randomUUID().toString().replace("-", ""))
                .sign(algorithm);

    }
    /**
     * Description :  根据密钥生成token
     * @param dataMap 数据载荷
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 22:27
     * @author StrangePrince
     */
    public static String createToken(Map<String,Object> dataMap) {
        return createToken(dataMap, null, EXPIRES_AT);
    }
    /**
     * Description :  根据密钥生成token
     * @param id 数据载荷
     * @param secret 密钥
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 22:27
     * @author StrangePrince
     */
    public static String createToken(Long id, String secret) {
        //确认秘钥
        if(secret == null || "".equals(secret)){
            secret = DEFAULT_SECRET;
        }

        //确认签名算法
        Algorithm algorithm = Algorithm.HMAC384(secret);

        return
                JWT.create()
                        //数据载荷
                        .withClaim("body", id)
                        //签发者
                        .withIssuer("prince")
                        //签发时间
                        .withIssuedAt(new Date())
                        //主题
                        .withSubject("token")
                        //接受方
                        .withAudience("member")
                        //过期时间
                        .withExpiresAt(new Date(System.currentTimeMillis() + EXPIRES_AT))
                        //唯一标识
                        .withJWTId(UUID.randomUUID().toString().replace("-", ""))
                        .sign(algorithm);

    }

    /**
     * Description :  根据密钥生成token
     * @param id 数据载荷
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 22:27
     * @author StrangePrince
     */
    public static String createToken(Long id) {
        return createToken(id, null);
    }
    /**
     * Description :  解析token
     * @param token token令牌
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @throws JWTVerificationException token校验失败
     * @since 2022/6/8 22:53
     * @author StrangePrince
     */
    public static Long parseTokenToLong(String token) {
        return parseTokenToLong(token, null);
    }

    /**
     * Description :  解析token
     * @param token token令牌
     * @param secret 密钥
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @throws
     * @since 2022/6/8 22:53
     * @author StrangePrince
     */
    @SuppressWarnings("unchecked")
    public static Long parseTokenToLong(String token, String secret) {
        //确认秘钥
        if(secret == null || "".equals(secret)){
            secret = DEFAULT_SECRET;
        }

        //确认签名算法
        Algorithm algorithm = Algorithm.HMAC384(secret);
        //创建令牌校验对象
        JWTVerifier verifier = JWT.require(algorithm).build();
        //校验解析
        return verifier.verify(token).getClaim("body").as(Long.class);
    }

    /**
     * Description :  解析token
     * @param token token令牌
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @throws JWTVerificationException token校验失败
     * @since 2022/6/8 22:53
     * @author StrangePrince
     */
    public static Map<String, Object> parseToken(String token) {
        return parseToken(token, null);
    }

    /**
     * Description :  解析token
     * @param token token令牌
     * @param secret 密钥
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @throws
     * @since 2022/6/8 22:53
     * @author StrangePrince
     */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> parseToken(String token, String secret) {
        //确认秘钥
        if(secret == null || "".equals(secret)){
            secret = DEFAULT_SECRET;
        }

        //确认签名算法
        Algorithm algorithm = Algorithm.HMAC384(secret);
        //创建令牌校验对象
        JWTVerifier verifier = JWT.require(algorithm).build();
        //校验解析
        return verifier.verify(token).getClaim("body").as(Map.class);
    }
}
