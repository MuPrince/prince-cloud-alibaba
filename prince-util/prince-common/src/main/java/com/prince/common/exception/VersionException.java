package com.prince.common.exception;

import com.prince.common.resp.ResponseCode;

/**
 * Description : 版本异常
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 11:31
 */
public class VersionException extends RuntimeException {

    private ResponseCode code;

    private String version;

    public VersionException() {
    }

    public VersionException(ResponseCode responseCode, String version) {
        super(responseCode.getDesc());
        this.code = responseCode;
        this.version = version;
    }

    public VersionException(String message) {
        super(message);
    }

    public VersionException(String message, Throwable cause) {
        super(message, cause);
    }

    public VersionException(Throwable cause) {
        super(cause);
    }

    public ResponseCode getCode() {
        return this.code;
    };

    public String getVersion() {
        return this.version;
    }
}
