package com.prince.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Project prince-microservice <br\>
 * Package com.prince.goods.entity <br\>
 * <p>
 * Description : 商品品牌 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:07
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "brand")
public class Brand {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Integer id;
    /**
     * 名称
     */
    private String name;
    /**
     * 图片
     */
    private String image;
    /**
     * 首字母
     */
    private String initial;
    /**
     * 排序
     */
    private Integer sort;
}
