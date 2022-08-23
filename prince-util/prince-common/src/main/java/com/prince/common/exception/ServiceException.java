package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 服务中台总异常 用于返回异常消息
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class ServiceException extends RuntimeException {

    public int code;

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public ServiceException() {
    }

    public ServiceException(String message) {
        super(message);
    }

    public ServiceException(int code, String message) {
        super(message);
        this.code = code;
    }

    public ServiceException(ResponseCode responseCode) {
        super(responseCode.getDesc());
    }

    public ServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
