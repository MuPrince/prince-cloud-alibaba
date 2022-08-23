package com.prince.goods.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.prince.common.resp.RespResult;
import com.prince.goods.entity.Brand;
import com.prince.goods.service.BrandService;
import com.prince.goods.vo.BrandVo;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description : 商品品牌 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:03
 */
@RestController
@RequestMapping("brand")
@RequiredArgsConstructor
public class BrandController {

    private final BrandService brandService;

    @PostMapping
    public RespResult<Page<Brand>> page(@RequestBody BrandVo vo) {
        return RespResult.ok(brandService.queryPage(vo));
    }

}
