package com.prince.order.service.pay.ali;


import com.prince.order.service.PayService;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
public abstract class AliPayServiceImpl implements PayService {

    @Override
    public abstract String doOrder(String orderNo, HttpServletRequest request);

    @Override
    public abstract String notify(HttpServletRequest request, HttpServletResponse response);
}
