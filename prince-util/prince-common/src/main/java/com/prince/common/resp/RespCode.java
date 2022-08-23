package com.prince.common.resp;

/**
 * Project prince <br\>
 * Package com.prince.util <br\>
 * <p>
 * Description : 返回数据相关枚举 <br\>
 *
 * @author MuPrince <br\>
 * @since 2022/6/3 20:04
 */
@Deprecated
public enum RespCode {

    SUCCESS(200, "SUCCESS"),

    SYS_FILE_ERROR(1001, "文件上传失败，请稍后再试"),
    SYS_OSS_TOKEN_ERROR(1002, "OSS TOKEN获取失败"),
    PHONE_ERROR(10001, "手机号码格式错误，请填写正确格式"),
    PHONE_CODE_CHECK_ERROR(10002, "验证码校验错误"),
    SMS_INIT_ERROR(10003, "短信初始化失败"),
    SMS_SEND_ERROR(10004, "短信发送失败，请稍后再试"),
    SMS_SEND_LIMIT(10005, "短信发送超频，请稍后再试"),
    USER_BLOCK(10006, "因违反社区规则，你的账号已被冻结暂时无法登录"),
    MOBILE_BIND_EXIST(10007, "该手机号码已绑定其他账号，请确认后修改"),
    NO_PERMISSION(10008, "访问失败"),
    GET_DATA_ERROR(10008, "对不起，数据获取失败"),
    NEAR_NO_PERSON(10009, "附近暂时没有与你匹配的人"),
    MAX_PERSON(10010,"别往下划啦,没人啦"),

    AUDIT_NO_PERMISSION(19998,"动态审核未通过暂不能转发"),
    USER_LOGOUT(19999, "对不起，该账号已注销"),
    USER_NOT_EXIST(20000, "对不起，该账号不存在"),
    MOMENT_ERROR(20018, "动态提示异常，请稍后再试"),
    ACCOUNT_NOT_EXIST(20001, "该账号不存在，操作失败"),
    ACCOUNT_ALREADY_SET_PASSWORD(20002, "账号已完成密码设置，请勿重复操作"),
    ACCOUNT_EXPIRED(20003, "登录账号已过期，请重新登录"),
    ACCOUNT_OR_SECRET_ERROR(20004, "账号或密码错误，请重试"),
    ACCOUNT_QQ_APP_KEY_ERROR(20005, "QQ授权失败"),
    ACCOUNT_WX_APP_KEY_ERROR(20018, "微信授权失败"),
    ACCOUNT_FACE_AUTH_ERROR(20006, "人脸认证失败"),
    ACCOUNT_FACE_RESULT_ERROR(20007, "获取人脸信息失败"),
    ACCOUNT_FACE_RESULT_FAILED(20008, "对不起，认证未通过，请稍后再试"),
    ACCOUNT_FACE_RESULT_UNKNOWN(20009, "为了更好的用户体验感受，请进行人脸认证"),
    ACCOUNT_FACE_NUMBER_UNKNOWN(20010, "对不起，未获取到身份证信息，请稍后再试"),
    ACCOUNT_FACE_GENDER_UNKNOWN(20011, "为了更好的用户体验感受，平台仅限女性用户注册"),
    ACCOUNT_GOLD_NOT_ENOUGH(20012, "对不起，你的鲸币余额不足"),
    ACCOUNT_TAG_NOT_LAPH(20013, "对不起，该用户未设置恋爱偏好"),
    ACCOUNT_INVITE_ERROR(20014, "对不起，邀请码获取失败"),
    ACCOUNT_AGE_LIMIT(20015, "根据国家相关法律规定，需满{age}岁方可使用"),
    ACCOUNT_REAL_AUTH_ERROR(20016, "根据国家相关法律规定，请先进行实名认证"),
    ACCOUNT_NICKNAME_EXIST(20017, "对不起，该昵称已存在，请确认后修改"),
    USER_BLACK(20018, "该用户因违反社区规则已被暂时冻结"),
    USER_LOGOUT_OR_BLACK(20019, "该用户因违反社区规则已被注销或永久冻结"),
    ACCOUNT_MOBILE_USED(20020, "对不起，该手机号码账户已存在，请确认后使用"),
    USER_LOGOUT_FAIL(20020, "对不起，注销失败，请稍后再试"),
    USER_BLOCKS(20021, "你已把该用户拉入黑名单"),
    EXCHANGE_USER_BLOCK(20022, "对方已将你拉入黑名单"),
    NOTIFY_USER_NULL(20023, "通知账号不可为空，请确认昵称是否正确"),
    NOT_LOGIN_BLOCK(20024, "因违反社区规则，你的账号已被冻结暂时无法登录"),
    NOT_PUSH_BLOCK(20025, "因违反社区规则，你的账号已被永久冻结"),
    ID_CARD_BIND_MAX(20026, "对不起，该身份证名下账号已超过限制数量"),
    GENERATE_NICKNAME_ERROR(20027, "对不起，获取昵称失败，请稍后再试"),
    MOBILE_NOT_FOUND(20028, "对不起，该手机号不存在"),
    TEST_LIMIT_ERROR(20029, "对不起，内测账号已达到上限，感谢您的支持"),
    DEFAULT_PHOTO_ALBUM(20030, "默认相册不可编辑"),
    ID_CARD_ERROR(20031, "身份证号码格式错误"),
    DUN_AUDIT_FAILED(20032, "实人认证失败，请联系客服"),
    RESET_FACE_ERROR(20033, "重置失败，实人认证信息过期"),
    VIRTUAL_HOUSE_ERROR(20034, "当前虚拟屋还没用开放哦，请于每天22:00-10:00点进入"),

    MOMENT_CANT_GOLD_SELF(30001, "对不起，暂时不能给自己的动态投币哦"),
    MOMENT_PHOTO_ALBUM_REMOVE_ERROR(30002, "对不起，该相册目前无法删除，请稍后再试"),

    IM_REQUEST_FAILED(40001, "IM服务请求错误"),
    IM_ACCOUNT_EXIST(40002, "IM账号已存在"),
    IM_CREATE_ERROR(40003, "IM账号创建失败"),
    IM_USER_INFO_ERROR(40004, "未获取到IM用户信息"),
    IM_USER_INFO_UPDATE_ERROR(40005, "IM账号修改失败"),
    IM_ACCOUNT_NOT_EXIST(40006, "IM账号不存在"),
    IM_SYSTEM_PUSH_ERROR(40007, "系统消息推送失败"),

    MATE_FRIEND_MORE_TIMES(50001, "对不起，今日你已超过匹配上限次数"),

    ERROR(500,"ERROR"),

    SYSTEM_ERROR(501, "SYSTEM_ERROR");

    private Integer code;

    private String message;

    RespCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    RespCode() {
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
