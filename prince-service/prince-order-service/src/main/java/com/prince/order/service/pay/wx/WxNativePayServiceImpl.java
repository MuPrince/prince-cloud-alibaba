package com.prince.order.service.pay.wx;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 微信Native支付中间层
 * <p>系统支付功能类，调用抽象类的各基础方法，为系统提供支付、查询、退款、退款查询等功能；</p>
 */
@Service
@RequiredArgsConstructor
public class WxNativePayServiceImpl extends WxPayServiceImpl {

    /**
     * 微信相关配置
     */
//    protected final WxNativeConfig wxNativeConfig;

    @Override
    public String doOrder(String orderNo, HttpServletRequest request) {

        return null;
    }

    @Override
    public String notify(HttpServletRequest request, HttpServletResponse response) {

        return null;
    }
}
