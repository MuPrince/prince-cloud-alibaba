package com.prince.goods.entity;

import lombok.Data;

/**
 * Description : 购物车
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:45
 */
@Data
public class Cart {

    private String _id;
    /**
     * 用户名字
     */
    private String userName;
    /**
     * 商品名字
     */
    private String name;
    /**
     * 单价
     */
    private Integer price;
    /**
     * 商品图片
     */
    private String image;
    /**
     * 商品ID
     */
    private String skuId;
    /**
     * 商品数量
     */
    private Integer num;
}
