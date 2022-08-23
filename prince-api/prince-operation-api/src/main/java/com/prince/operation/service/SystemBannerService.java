package com.prince.operation.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.operation.entity.dto.BannerDTO;
import com.prince.operation.entity.po.Banner;
import com.prince.operation.entity.vo.BannerVo;

/**
 * Description : 轮播
 *
 * @author Mu Prince <br\>
 * @since 2022/7/7 14:27
 */
public interface SystemBannerService extends IService<Banner> {

    /**
     * Description :  添加
     * @param bannerDTO banner信息
     * @since 2022/7/7 14:50
     * @author Mu Prince
     */
    void add(BannerDTO bannerDTO);
    /**
     * Description :  修改
     * @param bannerDTO banner信息
     * @since 2022/7/7 14:50
     * @author Mu Prince
     */
    void edit(BannerDTO bannerDTO);
    /**
     * Description :  条件查询banner列表
     * @param bannerVo 条件
     * @return {@link PageInfo< BannerDTO>}
     * @since 2022/7/7 14:51
     * @author Mu Prince
     */
    PageInfo<BannerDTO> search(BannerVo bannerVo);
    /**
     * Description :  启用banner
     * @param id id
     * @since 2022/7/7 14:51
     * @author Mu Prince
     */
    void enable(Long id);
}
