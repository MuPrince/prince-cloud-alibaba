package com.prince.goods.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.goods.entity.Cart;
import com.prince.goods.entity.Sku;

import java.util.List;

/**
 * Description : 商品 最小的库存单位(StockKeeping Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:34
 */
public interface SkuService extends IService<Sku> {

    void deCount(List<Cart> carts);

    String test();

}
