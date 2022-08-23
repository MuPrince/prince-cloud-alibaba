package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.po.Portfolio;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Description : 作品集
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 9:43
 */

public interface PortfolioMapper extends BaseMapper<Portfolio> {
    /**
     * Description : 根据作品集id删除作品集目录
     * @param ids 作品集id集合
     * @since 2022/8/13 10:16
     * @author Mu Prince
     */
    void delCatalogsByPortfolioIds(@Param("ids") List<Long> ids);

    void delCatalogByPortfolioId(Long id);

    List<Portfolio> search(@Param("keyword") String keyword, @Param("count") Integer count);
}
