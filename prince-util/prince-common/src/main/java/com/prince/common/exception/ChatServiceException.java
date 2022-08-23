package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 即时聊天服务异常，用于返回确定性异常
 * @author Mu Prince <br\>
 * @since 2022/7/2 10:16
 */
public class ChatServiceException extends ServiceException {

    private final int code = ResponseCode.CHAT_SERVICE_ERROR.getCode();
    @Override
    public int getCode() {
        return code;
    }

    public ChatServiceException() {
    }

    public ChatServiceException(String message) {
        super(message);
    }

    public ChatServiceException(ResponseCode responseCode) {
        super(responseCode.toString());
    }

    public ChatServiceException(String message, Throwable cause) {
        super(message, cause);
    }

}
