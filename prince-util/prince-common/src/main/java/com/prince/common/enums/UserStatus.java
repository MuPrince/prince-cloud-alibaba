package com.prince.common.enums;

/**
 * Description : 用户状态
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 9:57
 */
public enum UserStatus {
    CANCELLED(-2, "已注销"),
    REGISTERING(-1, "注册中"),
    NORMAL(1, "正常"),
    LOCKED(2,"锁定"),
    FROZEN(3, "冻结"),
    BANNED_TO_POST(4, "禁言");


    public final Integer code;

    public final String des;

    UserStatus(Integer code, String des) {
        this.code = code;
        this.des = des;
    }
}
