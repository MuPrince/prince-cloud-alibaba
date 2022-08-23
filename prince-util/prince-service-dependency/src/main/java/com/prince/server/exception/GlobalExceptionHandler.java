package com.prince.server.exception;

import com.prince.common.exception.*;
import com.prince.common.resp.RespResult;
import com.prince.common.resp.ResponseCode;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.rpc.RpcException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Description : 全局异常处理器
 *
 * @author Mu Prince <br\>
 * @since 2022/6/30 20:49
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * Description :  自定义业务异常
     *
     * @param e 异常
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 17:42
     */
    @ExceptionHandler(BusinessException.class)
    public RespResult<?> handleServiceException(BusinessException e) {
        return RespResult.error(e.getResponseCode());
    }

    /**
     * Description :  优先处理自定义异常
     *
     * @param e 异常
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 17:42
     */
    @ExceptionHandler(ServiceException.class)
    public RespResult<?> handleServiceException(ServiceException e) {
        //TODO 针对服务做处理
        if (e instanceof UserServiceException) {
            System.out.println("用户系统");
        }
        if (e instanceof AdminServiceException) {
            System.out.println("管理系统服务");
        }
        if (e instanceof MomentServiceException) {
            System.out.println("动态服务");
        }
        if (e instanceof GoodsServiceException) {
            System.out.println("商品服务");
        }
        if (e instanceof ChatServiceException) {
            System.out.println("聊天服务");
        }
        if (e instanceof OrderServiceException) {
            System.out.println("订单服务");
        }
        if (e instanceof OperationServiceException) {
            System.out.println("运营服务");
        }
        return RespResult.error(e.getCode(), e.getMessage());
    }

    /**
     * Description :  统一处理参数校验异常，标准化返回
     *
     * @param e 参数校验异常
     * @return {@link RespResult<?>}
     * @author Mu Prince
     * @since 2022/7/4 12:02
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public RespResult<?> handleBindException(MethodArgumentNotValidException e) {
        StringBuilder sb = new StringBuilder("校验失败:");
        for (FieldError fieldError : e.getBindingResult().getFieldErrors()) {
            sb.append(fieldError.getField()).append(":").append(fieldError.getDefaultMessage());
        }
        return RespResult.error(sb.toString());
    }

    /**
     * Description :  参数异常，标准化返回
     *
     * @param e 参数异常
     * @return {@link RespResult<?>}
     * @author Mu Prince
     * @since 2022/7/4 12:02
     */
    @ExceptionHandler(MissingServletRequestParameterException.class)
    public RespResult<?> handleBindException(MissingServletRequestParameterException e) {
        return RespResult.error("参数丢失：" + e.getParameterName() + "不存在。");
    }


    @ExceptionHandler(RpcException.class)
    public RespResult<?> handleRpcException(RpcException e) {
        log.error("Dubbo Rpc exception.code:{},message:{}", e.getCode(), e.getMessage());
//        e.printStackTrace();
        return RespResult.error(ResponseCode.REMOTE_SERVICE_EXCEPTION);
    }
    @ExceptionHandler(Exception.class)
    public RespResult<?> handleOtherwiseException(Exception e) {
        log.error("发生不可预测错误，错误类型：{}，错误消息：{}", e.getClass(), e.getMessage());
        e.printStackTrace();
//        return RespResult.error(e.getMessage());
        return RespResult.error(ResponseCode.ERROR);

    }
}
