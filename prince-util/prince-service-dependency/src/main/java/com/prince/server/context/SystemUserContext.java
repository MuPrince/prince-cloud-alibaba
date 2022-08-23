package com.prince.server.context;

import com.prince.common.exception.BusinessException;
import com.prince.common.resp.ResponseCode;
import com.prince.common.entity.UserTemp;

/**
 * Description : 管理系统用户上下文
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:24
 */
public class SystemUserContext {
    private static final ThreadLocal<UserTemp> userHolder = new ThreadLocal<>();

    public static UserTemp get() {
        UserTemp data = userHolder.get();
        if (data == null ) {
            throw new BusinessException(ResponseCode.USER_NOT_FOUND);
        }
        return data;
    }

    public static Long getUserId() {
        return get().getUserId();
    }


    public static Long getRoleId() {
        return get().getRoleId();
    }

    public static String getHead() {
        return get().getHead();
    }
    public static String getNickname() {
        return get().getNickname();
    }

    public static void set(UserTemp data) {
        userHolder.set(data);
    }

    public static void clear() {
        userHolder.remove();
    }
}
