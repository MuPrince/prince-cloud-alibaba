package com.prince.goods.dto;

import lombok.Data;

/**
 * Description : 商品DTO <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:42
 */
@Data
public class BrandDTO {

    /**
     * id
     */
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
