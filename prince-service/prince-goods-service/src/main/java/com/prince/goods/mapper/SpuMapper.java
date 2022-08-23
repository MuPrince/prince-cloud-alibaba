package com.prince.goods.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.goods.entity.Product;
import com.prince.goods.entity.Spu;


/**
 * Description : 商品 标准化产品单元(Standard Product Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:16
 */
public interface SpuMapper extends BaseMapper<Spu> {

    /**
     * Description :  保存商品
     * @param product
     * @return void
     * @throws
     * @since 2022/6/7 23:43
     * @author StrangePrince
     */
    void saveProduct(Product product);

    /**
     * Description :  根据spuId查询商品
     * @param id
     * @return com.prince.goods.entity.Product
     * @throws
     * @since 2022/6/7 23:43
     * @author StrangePrince
     */
    Product findBySupId(String id);
}
