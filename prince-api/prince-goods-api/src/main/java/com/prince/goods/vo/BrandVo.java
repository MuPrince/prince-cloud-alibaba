package com.prince.goods.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

/**
 * Description : 商品DTO <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:42
 */
@Data
public class BrandVo extends BaseVo {

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
