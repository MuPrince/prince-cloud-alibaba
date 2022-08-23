package com.prince.common.resp;

import java.io.Serializable;

/**
 * Project prince <br\>
 * Package com.prince.util <br\>
 * <p>
 * Description : 用于封装响应用户请求的数据 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/3 20:07
 */
public class RespResult<T> implements Serializable {

    /**
     * 响应数据的结果集
     */
    private T data;

    /**
     * 响应的状态码
     */
    private Integer code;

    /**
     * 响应的消息
     */
    private String message;

    public RespResult() {
    }

    public RespResult(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public RespResult(T data, Integer code, String message) {
        this.data = data;
        this.code = code;
        this.message = message;
    }

    public RespResult(ResponseCode responseCode) {
        this.code = responseCode.getCode();
        this.message = responseCode.getDesc();
    }

    public RespResult(T data, ResponseCode responseCode) {
        this.data = data;
        this.code = responseCode.getCode();
        this.message = responseCode.getDesc();
    }

    public static RespResult<?> ok() {
        return new RespResult<>(ResponseCode.SUCCESS);
    }

    public static <T> RespResult<T> ok(T data) {
        return new RespResult<>(data, ResponseCode.SUCCESS);
    }

    public static RespResult<?> error() {
        return new RespResult<>(ResponseCode.ERROR);
    }

    public static RespResult<?> error(ResponseCode responseCode) {
        return new RespResult<>(responseCode);
    }

    public static RespResult<?> error(String message) {
        return new RespResult<>(ResponseCode.ERROR.getCode(), message);
    }

    public static RespResult<?> error(Integer code, String message) {
        return new RespResult<>(code, message);
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
