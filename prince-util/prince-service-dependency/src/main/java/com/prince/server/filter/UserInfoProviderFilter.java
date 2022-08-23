package com.prince.server.filter;

import com.alibaba.fastjson2.JSON;
import com.prince.common.constant.PrinceConstants;
import com.prince.server.constant.RpcConstants;
import com.prince.server.context.SystemUserContext;
import com.prince.server.context.UserContext;
import com.prince.common.entity.UserTemp;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.common.constants.CommonConstants;
import org.apache.dubbo.common.extension.Activate;
import org.apache.dubbo.rpc.*;

import java.util.Arrays;

/**
 * Description : 提供方拦截
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:54
 */
@Slf4j
@Activate(group = {CommonConstants.PROVIDER})
public class UserInfoProviderFilter implements Filter {

    @Override
    @SuppressWarnings("unchecked")
    public Result invoke(Invoker<?> invoker, Invocation invocation) throws RpcException {
        log.info("收到Dubbo Rpc调用：{}#{}，参数：{}", invoker.getInterface().getName(), invocation.getMethodName(), Arrays.toString(invocation.getArguments()));
        String user = RpcContext.getContext().getAttachment(RpcConstants.USER);
        String serviceName = invoker.getInterface().getSimpleName();
        try {
            //管理系统rpc调用
            if (serviceName.startsWith(PrinceConstants.ADMIN_CLASS_NAME_PREFIX)) {
                SystemUserContext.set(JSON.parseObject(user, UserTemp.class));
            } else {
            //App rpc调用
                UserContext.set(Long.valueOf(user));
            }

            return invoker.invoke(invocation);
        } finally {
            SystemUserContext.clear();
            UserContext.clear();
        }
    }

}

