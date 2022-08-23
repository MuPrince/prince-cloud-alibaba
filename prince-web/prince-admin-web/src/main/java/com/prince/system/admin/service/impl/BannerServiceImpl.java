package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.entity.dto.BannerDTO;
import com.prince.system.entity.po.Banner;
import com.prince.system.entity.vo.BannerVo;
import com.prince.admin.mapper.BannerMapper;
import com.prince.admin.service.BannerService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/7 14:28
 */
@Service
@RequiredArgsConstructor
public class BannerServiceImpl extends ServiceImpl<BannerMapper, Banner> implements BannerService {

    private final BannerMapper bannerMapper;

    private final EntityTransformationUtil<Banner> entityTransformationUtil = new EntityTransformationUtil<>();

    @Override
    public void add(BannerDTO bannerDTO) {
        Banner banner = entityTransformationUtil.transformTo(bannerDTO, Banner.class);
        banner.setCreateTime(new Date());
        bannerMapper.insert(banner);
    }

    @Override
    public void edit(BannerDTO bannerDTO) {
        bannerMapper.updateById(entityTransformationUtil.transformTo(bannerDTO, Banner.class));
    }

    @Override
    public PageInfo<BannerDTO> search(BannerVo bannerVo) {
        LambdaQueryWrapper<Banner> query = new LambdaQueryWrapper<>();
        EntityTransformationUtil<BannerDTO> transform = new EntityTransformationUtil<>();
        if (bannerVo.getEnable() != null) {
            query.eq(Banner::getEnable, bannerVo.getEnable());
        }
        PageHelper.startPage(bannerVo.getCurrent(), bannerVo.getSize());
        PageInfo<Banner> page = PageInfo.of(bannerMapper.selectList(query));
        return transform.transformPageFrom(page, BannerDTO.class);
    }

    @Override
    public void enable(Long id) {
        Banner banner = bannerMapper.selectById(id);
        if (banner != null) {
            banner.setEnable(!banner.getEnable());
            bannerMapper.updateById(banner);
        }
    }
}
