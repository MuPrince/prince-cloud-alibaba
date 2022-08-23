package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.dto.PortfolioDTO;
import com.prince.moment.entity.po.Portfolio;

import java.util.List;

/**
 * Description : 作品集
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 9:41
 */
public interface PortfolioService extends IService<Portfolio> {
    /**
     * Description :  创建
     * @param dto 作品集信息
     * @since 2022/8/13 10:08
     * @author Mu Prince
     */
    void create(PortfolioDTO dto);
    /**
     * Description :  修改
     * @param dto 作品集信息
     * @since 2022/8/13 10:08
     * @author Mu Prince
     */
    void edit(PortfolioDTO dto);
    /**
     * Description :  批量删除
     * @param ids id集合
     * @since 2022/8/13 10:08
     * @author Mu Prince
     */
    void del(List<Long> ids);
    /**
     * Description : 删除作品集
     * @param id id
     * @since 2022/8/13 10:08
     * @author Mu Prince
     */
    void del(Long id);
    /**
     * Description :  查询作品集详情
     * @param portfolioId 作品集id
     * @return {@link PortfolioDTO}
     * @since 2022/8/13 10:08
     * @author Mu Prince
     */
    PortfolioDTO findOne(Long portfolioId);
    /**
     * Description :  分页查询用户作品集列表
     * @param userId 用户id
     * @param current 当前页
     * @param pageSize 显示条数
     * @return {@link PageInfo< PortfolioDTO>}
     * @since 2022/8/13 10:09
     * @author Mu Prince
     */
    PageInfo<PortfolioDTO> findPage(Long userId, int current, int pageSize);
    /**
     * Description :  搜索作品集
     * @param keyword 关键字
     * @param count 显示条数
     * @return {@link List< PortfolioDTO>}
     * @since 2022/8/13 10:09
     * @author Mu Prince
     */
    List<PortfolioDTO> search(String keyword, Integer count);
    /**
     * Description :  置顶
     * @param portfolioId id
     * @since 2022/8/13 15:25
     * @author Mu Prince
     */
    void top(Long portfolioId);
}
