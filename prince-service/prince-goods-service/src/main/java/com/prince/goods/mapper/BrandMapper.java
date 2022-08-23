package com.prince.goods.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.goods.entity.Brand;

import javax.annotation.Resource;

/**
 * Project prince-microservice <br\>
 * Package com.prince.goods.mapper <br\>
 * <p>
 * Description : 商品品牌 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:05
 */
@Resource
public interface BrandMapper extends BaseMapper<Brand> {

    /**
     * 根据分类ID查找品牌ID
     * @param categoryId
     * @return
     */
//    @Select("SELECT brand_id FROM category_brand WHERE category_id = #{categoryId}")
//    List<Integer> findBrandIdsByCategoryId(Integer categoryId);
}
