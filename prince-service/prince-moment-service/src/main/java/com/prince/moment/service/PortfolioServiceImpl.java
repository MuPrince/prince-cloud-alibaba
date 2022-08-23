package com.prince.moment.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.moment.entity.dto.PortfolioDTO;
import com.prince.moment.entity.po.Portfolio;
import com.prince.moment.mapper.PortfolioMapper;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : 作品集实现
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 9:41
 */
@Service
@RequiredArgsConstructor
public class PortfolioServiceImpl extends ServiceImpl<PortfolioMapper, Portfolio> implements PortfolioService {

    private final EntityTransformationUtil<Portfolio, PortfolioDTO> transformer = new EntityTransformationUtil<>(Portfolio.class, PortfolioDTO.class);
    private final PortfolioMapper portfolioMapper;


    @Override
    public void create(PortfolioDTO dto) {
        Portfolio portfolio = transformer.transformToFirst(dto);
        portfolioMapper.insert(portfolio);
    }

    @Override
    public void edit(PortfolioDTO dto) {
        Portfolio portfolio = transformer.transformToFirst(dto);
        portfolioMapper.updateById(portfolio);
    }

    @Override
    @Transactional
    public void del(List<Long> ids) {
        portfolioMapper.delCatalogsByPortfolioIds(ids);
        portfolioMapper.deleteBatchIds(ids);
    }

    @Override
    @Transactional
    public void del(Long id) {
        portfolioMapper.delCatalogByPortfolioId(id);
        portfolioMapper.deleteById(id);
    }

    @Override
    public PortfolioDTO findOne(Long portfolioId) {
        Portfolio portfolio = portfolioMapper.selectById(portfolioId);
        return transformer.transformToSecond(portfolio);
    }

    @Override
    public PageInfo<PortfolioDTO> findPage(Long userId, int current, int pageSize) {
        PageHelper.startPage(current, pageSize);
        PageInfo<Portfolio> page = PageInfo.of(portfolioMapper.selectList(new LambdaQueryWrapper<Portfolio>().eq(Portfolio::getUserId, userId).orderByDesc(Portfolio::getAtTop).orderByDesc(Portfolio::getCreateTime)));
        return transformer.transformPageToSecond(page);
    }

    @Override
    public void top(Long portfolioId) {
        Long userId = UserContext.get();
        //查询用户当前已经置顶的作品集
        List<Portfolio> portfolios = portfolioMapper.selectList(new LambdaQueryWrapper<Portfolio>().eq(Portfolio::getAtTop, 1).eq(Portfolio::getUserId, userId));
        //已有置顶则取消置顶
        if (portfolios != null && portfolios.size() > 0) {
            List<Portfolio> updates = new ArrayList<>();
            portfolios.forEach(p -> {
                p.setAtTop(false);
                updates.add(p);
            });
            this.updateBatchById(updates);
        }
        //置顶
        this.update(new LambdaUpdateWrapper<Portfolio>().set(Portfolio::getAtTop, 1).eq(Portfolio::getId, portfolioId).eq(Portfolio::getUserId, userId));
    }

    @Override
    public List<PortfolioDTO> search(String keyword, Integer count) {
        List<Portfolio> portfolios = portfolioMapper.search(keyword, count);
        return transformer.transformListToSecond(portfolios);
    }
}
