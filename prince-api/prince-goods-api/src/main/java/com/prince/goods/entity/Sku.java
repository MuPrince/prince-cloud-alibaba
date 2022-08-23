package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * Description : 商品 最小的库存单位(StockKeeping Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:16
 */
@Data
@TableName(value = "sku")
public class Sku {

    @TableId(type = IdType.ASSIGN_ID)
    private String id;
    /**
     * 名称
     */
    private String name;
    /**
     * 价格
     */
    private Integer price;
    /**
     * 库存
     */
    private Integer inventory;
    /**
     * 图片
     */
    private String image;
    /**
     * 描述图片
     */
    private String descriptionImages;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改时间
     */
    private Date updateTime;
    /**
     * spuId
     */
    private String spuId;
    /**
     * 分类Id
     */
    private Integer categoryId;
    /**
     * 分类名称
     */
    private String categoryName;
    /**
     * 品牌id
     */
    private Integer brandId;
    /**
     * 品牌名称
     */
    private String brandName;
    /**
     * 商品属性
     */
    private String skuAttribute;
    /**
     * 商品状态，1：正常；2：下架
     */
    private Integer status;
}
