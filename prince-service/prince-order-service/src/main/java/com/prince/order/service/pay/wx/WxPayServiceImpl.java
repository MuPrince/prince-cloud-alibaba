package com.prince.order.service.pay.wx;


import com.prince.order.service.PayService;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 微信支付底层抽象类
 * <p>为对接第三方支付接口的支付抽象类，需要实现第三方支付接口的所有API交互，为支付功能类提供功能方法</p>
 * <p>每一种支付方法，都可以继承该抽象类，并拥有自己的独立的支付流程,</p>
 */

@Slf4j
public abstract class WxPayServiceImpl implements PayService {

    @Override
    public abstract String doOrder(String orderNo, HttpServletRequest request);

    @Override
    public abstract String notify(HttpServletRequest request, HttpServletResponse response);
}
