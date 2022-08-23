package com.prince.system.admin.context;

import com.prince.system.admin.entity.po.SystemUser;

import java.util.Map;

/**
 * Description : 管理系统用户上下文
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:24
 */
public class SystemUserContext {
    private static final ThreadLocal<Map<String, Object>> userHolder = new ThreadLocal<>();

    public static Map<String, Object> get() {
        return userHolder.get();
    }

    public static Long getUserId() {
        return Long.valueOf(userHolder.get().get("userId").toString());
    }

    public static Long getRoleId() {
        return Long.valueOf(userHolder.get().get("roleId").toString());
    }

    public static SystemUser getUser() {
        SystemUser user = new SystemUser();
        user.setId(getUserId());
        user.setHead(userHolder.get().get("head").toString());
        user.setNickname(userHolder.get().get("nickname").toString());
        user.setRoleId(getRoleId());
        return user;
    }

    public static void set(Map<String, Object> data) {
        userHolder.set(data);
    }

    public static void clear() {
        userHolder.remove();
    }
}
