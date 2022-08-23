package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

import java.util.HashMap;
import java.util.Map;

/**
 * Description : 管理系统异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class AdminServiceException extends ServiceException {

    private final int code = ResponseCode.ADMIN_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    private Map<String, String> params;

    public AdminServiceException() {
    }

    public AdminServiceException(String message) {
        super(message);
    }

    public AdminServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public AdminServiceException(String message, Throwable cause) {
        super(message, cause);
    }

    public AdminServiceException(String message, HashMap<String, String> params) {
        super(message);
        this.params = params;
    }

    public Map<String, String> getParams() {
        return this.params;
    }

}
