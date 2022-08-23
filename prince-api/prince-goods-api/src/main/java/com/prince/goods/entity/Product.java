package com.prince.goods.entity;

import lombok.Data;

import java.util.List;

/**
 * Description : 商品信息
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:41
 */
@Data
public class Product {
    /**
     * spu
     */
    private Spu spu;
    /**
     * sku
     */
    private List<Sku> skus;
}
