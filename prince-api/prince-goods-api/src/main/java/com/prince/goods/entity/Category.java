package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 分类信息
 *
 * @author StrangePrince <br\>
 * @since 2022/6/8 0:00
 */
@Data
@TableName(value = "category")
public class Category implements Serializable {

    @TableId(type = IdType.AUTO)
    private Integer id;
    /**
     * 分类名称
     */
    private String name;
    /**
     * 排序
     */
    private Integer sort;
    /**
     * 父ID
     */
    private Integer parentId;
}
