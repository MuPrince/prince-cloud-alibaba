package com.prince.goods.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.goods.dto.BrandDTO;
import com.prince.goods.entity.Brand;
import com.prince.goods.vo.BrandVo;

import java.util.List;

/**
 *
 * Description : 商品品牌业务 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:04
 */
public interface BrandService extends IService<Brand> {

    /**
     * Description :  条件查询
     * @param brandDTO 品牌信息
     * @return java.util.List<com.prince.mall.goods.entity.Brand>
     * @since 2022/6/7 22:04
     * @author StrangePrince
     */
    List<Brand> queryList(BrandDTO brandDTO);

    /**
     * Description :  分页查询
     * @param vo {@link BrandVo}品牌信息
     * @return com.baomidou.mybatisplus.extension.plugins.pagination.Page<com.prince.mall.goods.entity.Brand>
     * @since 2022/6/7 22:04
     * @author StrangePrince
     */
    Page<Brand> queryPage(BrandVo vo);

    /**
     * Description :  根据分类ID查询品牌集合
     * @param categoryId  分类id
     * @return java.util.List<com.prince.mall.goods.entity.Brand>
     * @throws
     * @since 2022/6/7 22:04
     * @author StrangePrince
     */
    List<Brand> queryListByCategoryId(Integer categoryId);
}
