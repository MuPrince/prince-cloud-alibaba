package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 动态服务异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class MomentServiceException extends ServiceException {

    private final int code = ResponseCode.MOMENT_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    public MomentServiceException() {
    }

    public MomentServiceException(String message) {
        super(message);
    }

    public MomentServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public MomentServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
