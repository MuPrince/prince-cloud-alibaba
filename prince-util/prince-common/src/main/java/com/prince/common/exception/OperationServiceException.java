package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 系统管理服务异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class OperationServiceException extends ServiceException {

    private final int code = ResponseCode.OPERATION_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    public OperationServiceException() {
    }

    public OperationServiceException(String message) {
        super(message);
    }

    public OperationServiceException(ResponseCode responseCode) {
        super(responseCode.getDesc());
    }

    public OperationServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
