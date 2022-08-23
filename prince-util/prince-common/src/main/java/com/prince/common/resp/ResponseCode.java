package com.prince.common.resp;


/**
 * Description : 异常信息
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public enum ResponseCode {

    SUCCESS(200, "OK"),

    ERROR(500, "未知错误"),

    USER_SERVICE_ERROR(5100, "用户服务错误。"),
    UNVERIFIED(5101, "账号未完成实名认证。"),
    FACE_VERIFY_INIT_FAIL(5102, "人脸认证启动失败"),
    FACE_VERIFY_AUTH_FAIL(5103, "人脸认证不通过"),

    YIDUN_AUDIT_FAILED(5015, "人脸认证失败。"),
    ACCOUNT_NOT_EXIST(5120, "号码未注册。"),


    TOKEN_EXPIRED(5199, "令牌过期，重新登录。"),
    CHAT_SERVICE_ERROR(5200, "聊天服务错误。"),


    MOMENT_SERVICE_ERROR(5300, "动态服务错误。"),


    TASK_SERVICE_ERROR(5400, "任务调度服务错误"),


    ORDER_SERVICE_ERROR(5500, "订单服务错误。"),


    GOODS_SERVICE_ERROR(5600, "商品服务错误。"),


    OPERATION_SERVICE_ERROR(5700, "运营服务错误。"),


    ADMIN_SERVICE_ERROR(5800, "管理系统服务错误。"),


    SYSTEM_ERROR(5900, "系统异常。"),
    USER_NOT_FOUND(5901, "读取用户信息失败，请重试。"),

    REMOTE_SERVICE_EXCEPTION(5998, "远程服务异常，请稍后重试。"),
    VERSION_ERROR(5999, "软件版本过旧，请更新版本"),
    ;

    private final int code;
    private final String desc;

    ResponseCode(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}