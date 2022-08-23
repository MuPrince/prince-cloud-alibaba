package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.operation.mapper.BannerMapper;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.BannerDTO;
import com.prince.operation.entity.po.Banner;
import com.prince.operation.entity.vo.BannerVo;
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
public class SystemBannerServiceImpl extends ServiceImpl<BannerMapper, Banner> implements SystemBannerService {

    private final BannerMapper bannerMapper;

    private final EntityTransformationUtil<Banner, BannerDTO> transform = new EntityTransformationUtil<>(Banner.class, BannerDTO.class);

    @Override
    public void add(BannerDTO bannerDTO) {
        Banner banner = transform.transformToFirst(bannerDTO);
        banner.setCreateTime(new Date());
        bannerMapper.insert(banner);
    }

    @Override
    public void edit(BannerDTO bannerDTO) {
        bannerMapper.updateById(transform.transformToFirst(bannerDTO));
    }

    @Override
    public PageInfo<BannerDTO> search(BannerVo bannerVo) {
        LambdaQueryWrapper<Banner> query = new LambdaQueryWrapper<>();
        if (bannerVo.getEnable() != null) {
            query.eq(Banner::getEnable, bannerVo.getEnable());
        }
        PageHelper.startPage(bannerVo.getCurrent(), bannerVo.getSize());
        PageInfo<Banner> page = PageInfo.of(bannerMapper.selectList(query));
        return transform.transformPageToSecond(page);
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
