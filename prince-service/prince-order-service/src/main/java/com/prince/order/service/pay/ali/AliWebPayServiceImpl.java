package com.prince.order.service.pay.ali;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Service
@RequiredArgsConstructor
public class AliWebPayServiceImpl extends AliPayServiceImpl {


    /**
     * ali相关配置
     */
//    protected final AliWebConfig aliWebConfig;

    @Override
    public String doOrder(String orderNo, HttpServletRequest request) {

        return null;
    }

    @Override
    public String notify(HttpServletRequest request, HttpServletResponse response) {
        return null;
    }
}
