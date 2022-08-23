package com.prince.goods.controller;

import com.prince.common.resp.RespResult;
import com.prince.goods.entity.Spu;
import com.prince.goods.service.SpuService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : 商品 标准化产品单元(Standard Product Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:13
 */
@RestController
@RequestMapping("spu")
@RequiredArgsConstructor
public class SpuController {

    private final SpuService spuService;

    @GetMapping
    public RespResult<List<Spu>> list() {

        return RespResult.ok(new ArrayList<>());
    }
}
