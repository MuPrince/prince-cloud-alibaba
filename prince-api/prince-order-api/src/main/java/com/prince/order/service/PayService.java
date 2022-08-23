package com.prince.order.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Project prince-microservice <br\>
 * Package com.prince.order.service <br\>
 * <p>
 * Description : 支付业务 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 10:57
 */
public interface PayService {

    /**
     * Description :  统一下单
     * @param orderNo
     * @param request
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 14:26
     * @author Mu_Prince
     */
    String doOrder(String orderNo, HttpServletRequest request);

    /**
     * Description :  支付回调
     * @param request
     * @return java.lang.String
     * @throws
     * @since 2022/6/8 14:27
     * @author Mu_Prince
     */
    String notify(HttpServletRequest request, HttpServletResponse response);
}
