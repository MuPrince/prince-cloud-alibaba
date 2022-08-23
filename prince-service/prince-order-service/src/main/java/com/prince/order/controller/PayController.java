package com.prince.order.controller;

import com.prince.common.resp.RespResult;
import com.prince.order.enums.PayWayEnum;
import com.prince.order.service.PayService;
import com.prince.order.service.factory.PayFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Project prince-microservice <br\>
 * Package com.prince.order.controller <br\>
 * <p>
 * Description : 支付 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 10:57
 */
@RestController
@RequestMapping("pay")
@RequiredArgsConstructor
public class PayController {

    private final PayFactory payFactory;

    @PostMapping
    public RespResult<String> pay(String typeEnumStr, String orderNo, HttpServletRequest request) {
        PayWayEnum typeEnum = PayWayEnum.valueOf(typeEnumStr);

        PayService payService = payFactory.getPay(typeEnum);

        //获取处理结果,这里实际或转换成具体的结果实现类
        String resp = payService.doOrder(orderNo, request);

        return RespResult.ok(resp);
    }
}
