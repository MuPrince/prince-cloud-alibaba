package com.prince.server.exception;

import com.alibaba.csp.sentinel.adapter.spring.webmvc.callback.BlockExceptionHandler;
import com.alibaba.csp.sentinel.slots.block.BlockException;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeException;
import com.alibaba.csp.sentinel.slots.block.flow.FlowException;
import com.alibaba.csp.sentinel.slots.system.SystemBlockException;
import com.alibaba.fastjson.JSON;
import com.prince.common.resp.RespResult;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/26 10:23
 */
@Component
@RestControllerAdvice
//@Order(Ordered.HIGHEST_PRECEDENCE)
public class GlobalBlockExceptionHandler implements BlockExceptionHandler {
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, BlockException e) throws Exception {
        if (e instanceof DegradeException) {
            System.out.println("熔断了，发短信");
            endProcess(request, response, HttpServletResponse.SC_SERVICE_UNAVAILABLE, "服务器不可用，请稍后重试。");
        }
        System.out.println("限流了");
        endProcess(request, response, HttpServletResponse.SC_FORBIDDEN, "服务器忙，请稍后重试。");
    }

    private void endProcess(HttpServletRequest request, HttpServletResponse response, int code, String msg) throws IOException {
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.setCharacterEncoding("UTF-8");
        response.setStatus(code);
        Map<String, Object> message = new HashMap<>();
        message.put("code", code);
        message.put("message", msg);
        response.getWriter().println(JSON.toJSONString(message));
    }

    /**
     * Description :  sentinel限流熔断异常处理
     * @param e BlockException
     * @since 2022/7/26 9:51
     * @author Mu Prince
     */
    @ExceptionHandler(BlockException.class)
    public RespResult<?> handleBlockException(BlockException e) {
        if (e instanceof FlowException) {
            System.out.println("限流了");
        }
        if (e instanceof DegradeException) {
            System.out.println("熔断了，给运维发短信");
        }
        if (e instanceof SystemBlockException) {
            System.out.println("系统自适应保护");
        }
        return RespResult.error("限流熔断");
    }
}
