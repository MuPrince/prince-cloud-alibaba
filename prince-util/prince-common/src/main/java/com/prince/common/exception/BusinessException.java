package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 业务异常，需要通过错误码做一些业务处理
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 9:43
 */
public class BusinessException extends RuntimeException {

    private ResponseCode responseCode;

    public BusinessException() {
    }

    public BusinessException(ResponseCode responseCode) {
        super(responseCode.getDesc());
        this.responseCode = responseCode;
    }

    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }

    public BusinessException(Throwable cause) {
        super(cause);
    }

    public ResponseCode getResponseCode() {
        return this.responseCode;
    };
}
