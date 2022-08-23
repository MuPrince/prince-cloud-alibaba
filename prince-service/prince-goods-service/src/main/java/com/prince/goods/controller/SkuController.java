package com.prince.goods.controller;

import com.prince.common.resp.RespResult;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description : 商品 最小的库存单位(StockKeeping Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:12
 */
@RestController
@RequestMapping("sku")
@RequiredArgsConstructor
public class SkuController {

    @GetMapping("test")
    public RespResult<String> test() {
        Long s = UserContext.get();
        return RespResult.ok("只是由网关路由过来的请求,你的id是：" + s);
    }
}
