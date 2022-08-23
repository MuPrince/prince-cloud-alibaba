package com.prince.server.context;

import com.prince.common.exception.BusinessException;
import com.prince.common.resp.ResponseCode;

/**
 * Description : 用户上下文
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:24
 */
public class UserContext {
    private static final ThreadLocal<Long> userHolder = new ThreadLocal<>();

    public static Long get() {
        Long userId = userHolder.get();
        if (userId == null) {
            throw new BusinessException(ResponseCode.USER_NOT_FOUND);
        }
        return userId;
    }

    public static void set(Long userId) {
        userHolder.set(userId);
    }

    public static void clear() {
        userHolder.remove();
    }
}
