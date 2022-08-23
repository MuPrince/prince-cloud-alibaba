package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * Description : 分类属性
 *
 * @author StrangePrince <br\>
 * @since 2022/6/8 0:01
 */
@Data
@TableName(value = "category_attribute")
public class CategoryAttribute {

    @TableField
    private Integer categoryId;

    @TableField
    private Integer attrId;

}
