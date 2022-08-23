package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 订单服务异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class OrderServiceException extends ServiceException {

    private final int code = ResponseCode.ORDER_SERVICE_ERROR.getCode();

    @Override
    public int getCode() {
        return code;
    }

    public OrderServiceException() {
    }

    public OrderServiceException(String message) {
        super(message);
    }

    public OrderServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public OrderServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
