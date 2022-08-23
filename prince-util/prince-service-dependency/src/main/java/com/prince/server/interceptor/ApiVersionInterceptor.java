package com.prince.server.interceptor;

import com.alibaba.fastjson2.JSON;
import com.prince.common.annotation.ApiVersion;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.ResponseCode;
import com.prince.common.util.Version;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Description : 版本控制过滤器
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 11:38
 */
@Slf4j
@Component
@NoArgsConstructor
public class ApiVersionInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response, @NotNull Object handler) throws Exception {
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        String uri = request.getRequestURI();
        if (uri.startsWith(PrinceConstants.ADMIN_URI_PREFIX)) {
            return true;
        }
        String versionStr = request.getHeader(PrinceConstants.REQUEST_HEADER_VERSION);
        if (StringUtils.isBlank(versionStr)) {
            versionStr = PrinceConstants.DEFAULT_VERSION_STR;
        }
        HandlerMethod method = (HandlerMethod) handler;
        ApiVersion annotation = method.getMethod().getAnnotation(ApiVersion.class);
        if (annotation == null) {
            annotation = method.getBeanType().getAnnotation(ApiVersion.class);
            if (annotation == null) {
                return true;
            }
        }
        Version version = new Version(annotation.value());
        Version appVer = new Version(versionStr);
        if (version.after(appVer)) {
            return true;
        }
        if (annotation.allow()) {
            return true;
        }
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.setStatus(HttpServletResponse.SC_FORBIDDEN);
        Map<String, Object> message = new HashMap<>();
        message.put("code", ResponseCode.VERSION_ERROR.getCode());
        message.put("message", ResponseCode.VERSION_ERROR.getDesc());
        response.getWriter().print(JSON.toJSONString(message));
        return false;
    }
}
