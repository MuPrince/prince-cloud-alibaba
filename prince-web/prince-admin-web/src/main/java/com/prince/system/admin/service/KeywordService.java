package com.prince.system.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.system.entity.dto.KeywordDTO;
import com.prince.system.entity.po.Keyword;
import com.prince.system.entity.vo.KeywordVo;

/**
 * Description : 屏蔽关键词
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:26
 */
public interface KeywordService extends IService<Keyword> {
    /**
     * Description :  添加
     * @param keywordDTO 关键字信息
     * @since 2022/7/13 12:06
     * @author Mu Prince
     */
    void add(KeywordDTO keywordDTO);

    /**
     * Description :  修改
     * @param keywordDTO 关键字信息
     * @since 2022/7/13 12:06
     * @author Mu Prince
     */
    void edit(KeywordDTO keywordDTO);

    /**
     * Description :  查询
     * @param keywordVo 筛选条件
     * @return {@link PageInfo< KeywordDTO>}
     * @since 2022/7/13 12:06
     * @author Mu Prince
     */
    PageInfo<KeywordDTO> search(KeywordVo keywordVo);
    /**
     * Description : 查询详情
     * @param id id
     * @return {@link KeywordDTO}
     * @since 2022/7/13 12:48
     * @author Mu Prince
     */
    KeywordDTO searchOne(Long id);
}
