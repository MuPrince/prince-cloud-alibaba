package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * Description : 商品 标准化产品单元(Standard Product Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:17
 */
@Data
@TableName("spu")
public class Spu {

    @TableId(type = IdType.ASSIGN_ID)
    private String id;
    /**
     * 名称
     */
    private String name;
    /**
     * 简介
     */
    private String intro;
    /**
     * 品牌id
     */
    private Integer brandId;
    /**
     * 一级分类
     */
    private Integer categoryOneId;
    /**
     * 二级分类
     */
    private Integer categoryTwoId;
    /**
     * 三级分类
     */
    private Integer categoryThreeId;
    /**
     * 描述图片
     */
    private String images;
    /**
     * 售后服务
     */
//    private String afterSalesService;
    /**
     * 介绍
     */
    private String content;
    /**
     * 规格列表
     */
    private String attributeList;
    /**
     * 是否上架,0已下架，1已上架
     */
    private Integer isMarketable;
    /**
     * 是否删除,0:未删除，1：已删除
     */
    private Integer isDelete;
    /**
     * 审核状态，0：未审核，1：已审核，2：审核不通过
     */
    private Integer status;
}
