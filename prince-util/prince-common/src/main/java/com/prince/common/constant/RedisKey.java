package com.prince.common.constant;

/**
 * Description : redis key管理常量类 ，用户业务控制
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:26
 */
public interface RedisKey {

    String USER_CONTEXT_KEY_PREFIX = "user:context:";

    String PRINCE_NUMBER_POOL = "prince_number:pool";
    /**
     * 实人认证欠费，短信发送动态控制
     */
    String PRINCE_EXCEPTION_SMS_ALIYUN_FACE_VERIFY_ARREARS = "prince:exception:aliyun-face-verify-arrears";

    /**
     * 完全匹配权限
     */
    String PRINCE_PERMISSION_0 = "prince:permission0";
    /**
     * 通配符匹配权限
     */
    String PRINCE_PERMISSION_1 = "prince:permission1";

    /**
     * 记录管理系统用户token
     */
    String PRINCE_TOKEN_ADMIN = "prince:token:admin";
    /**
     * APP用户Token
     */
    String PRINCE_TOKEN_APP = "prince:token:app";
}
