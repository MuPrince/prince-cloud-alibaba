package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.List;

/**
 * Description : sku属性
 *
 * @author StrangePrince <br\>
 * @since 2022/6/8 0:05
 */
@TableName(value = "sku_attribute")
public class SkuAttribute implements Serializable {

    @TableId(type = IdType.AUTO)
    private Integer id;
    /**
     * 属性名称
     */
    private String name;
    /**
     * 属性选项
     */
    private String options;
    /**
     * 排序
     */
    private Integer sort;

    /**
     * 对应分类
     */
    @TableField(exist = false)
    private List<Category> categories;

}
