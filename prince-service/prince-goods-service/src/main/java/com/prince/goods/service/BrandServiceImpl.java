package com.prince.goods.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.goods.dto.BrandDTO;
import com.prince.goods.entity.Brand;
import com.prince.goods.mapper.BrandMapper;
import com.prince.goods.vo.BrandVo;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Project prince-microservice <br\>
 * Package com.prince.goods.service <br\>
 * <p>
 * Description : 商品品牌业务 <br\>
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:05
 */
@Service
@DubboService
@RequiredArgsConstructor
public class BrandServiceImpl extends ServiceImpl<BrandMapper, Brand> implements BrandService {

    private final BrandMapper brandMapper;

    @Override
    public List<Brand> queryList(BrandDTO brandDTO) {
        QueryWrapper<Brand> qw = new QueryWrapper<>();
        qw.like("name",brandDTO.getName()).eq("initial",brandDTO.getInitial());
        return brandMapper.selectList(qw);
    }

    @Override
    public Page<Brand> queryPage(BrandVo vo) {
        QueryWrapper<Brand> qw = new QueryWrapper<>();
        qw.like("name",vo.getName());

        return brandMapper.selectPage(new Page<>(vo.getCurrent(), vo.getSize()), qw);
    }

    @Override
    public List<Brand> queryListByCategoryId(Integer categoryId) {
        //根据分类id查询品牌ids集合
//        List<Integer> brandIds = brandMapper.findBrandIdsByCategoryId(categoryId);
//        if (brandIds != null && brandIds.size() > 0) {
//            //根据品牌ids查询品牌
//            return brandMapper.selectList(new QueryWrapper<Brand>().in("id",brandIds));
//        }
        return null;
    }
}
