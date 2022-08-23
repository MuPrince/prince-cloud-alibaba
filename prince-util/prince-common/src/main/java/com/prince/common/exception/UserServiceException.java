package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 用户服务异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class UserServiceException extends ServiceException {

    private final int code = ResponseCode.USER_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    public UserServiceException() {
    }

    public UserServiceException(String message) {
        super(message);
    }

    public UserServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public UserServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
