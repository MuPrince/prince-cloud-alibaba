package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

import java.util.HashMap;
import java.util.Map;

/**
 * Description : 商品服务异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class GoodsServiceException extends ServiceException {

    private final int code = ResponseCode.GOODS_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    private Map<String, String> params;

    public GoodsServiceException() {
    }

    public GoodsServiceException(String message) {
        super(message);
    }

    public GoodsServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public GoodsServiceException(String message, Throwable cause) {
        super(message, cause);
    }

    public GoodsServiceException(String message, HashMap<String, String> params) {
        super(message);
        this.params = params;
    }

    public Map<String, String> getParams() {
        return this.params;
    }

}
