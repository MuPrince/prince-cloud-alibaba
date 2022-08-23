package com.prince.server.filter;

import com.alibaba.fastjson2.JSON;
import com.prince.common.constant.PrinceConstants;
import com.prince.server.context.SystemUserContext;
import com.prince.server.context.UserContext;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.common.constants.CommonConstants;
import org.apache.dubbo.common.extension.Activate;
import org.apache.dubbo.rpc.*;
import com.prince.server.constant.RpcConstants;

import java.util.Arrays;

/**
 * Description : 消费方拦截
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:50
 */

@Slf4j
@Activate(group = {CommonConstants.CONSUMER})
public class UserInfoConsumerFilter implements Filter {

    @Override
    public Result invoke(Invoker<?> invoker, Invocation invocation) throws RpcException {
        log.info("Dubbo Rpc调用：{}#{}，参数：{}", invoker.getInterface().getName(), invocation.getMethodName(), Arrays.toString(invocation.getArguments()));
        String serviceName = invoker.getInterface().getSimpleName();
        String user;
        //管理系统RPC调用
        if (serviceName.startsWith(PrinceConstants.ADMIN_CLASS_NAME_PREFIX)) {
            user = JSON.toJSONString(SystemUserContext.get());
        } else {
        //App RPC调用
            user = UserContext.get().toString();
        }
        //若上下文没有用户信息，则尝试从dubbo上下文中获取
//        if (StringUtils.isEmpty(user)) {
//            user = RpcContext.getContext().getAttachment(RpcConstants.USER);
//        }
        //将用户信息放入Rpc上下文传递给下游服务
        invocation.getAttachments().put(RpcConstants.USER, user);
        return invoker.invoke(invocation);
    }
}
