package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.operation.mapper.KeywordMapper;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.KeywordDTO;
import com.prince.operation.entity.po.Keyword;
import com.prince.operation.entity.vo.KeywordVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * Description : 屏蔽关键词
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:27
 */
@Service
@RequiredArgsConstructor
public class SystemKeywordServiceImpl extends ServiceImpl<KeywordMapper, Keyword> implements SystemKeywordService {

    private final KeywordMapper keywordMapper;

    private final EntityTransformationUtil<Keyword, KeywordDTO> transformer = new EntityTransformationUtil<>(Keyword.class, KeywordDTO.class);

    @Override
    public void add(KeywordDTO keywordDTO) {
        keywordMapper.insert(transformer.transformToFirst(keywordDTO));
    }

    @Override
    public void edit(KeywordDTO keywordDTO) {
        keywordMapper.updateById(transformer.transformToFirst(keywordDTO));
    }

    @Override
    public PageInfo<KeywordDTO> search(KeywordVo keywordVo) {
        LambdaQueryWrapper<Keyword> query = new LambdaQueryWrapper<>();
        if (keywordVo.getKeyword() != null) {
            query.like(Keyword::getKeyword, keywordVo.getKeyword());
        }
        if (keywordVo.getMatchingWay() != null) {
            query.eq(Keyword::getMatchingWay, keywordVo.getMatchingWay());
        }
        if (keywordVo.getActionScope() != null) {
            query.eq(Keyword::getActionScope, keywordVo.getActionScope());
        }
        PageHelper.startPage(keywordVo.getCurrent(), keywordVo.getSize());
        PageInfo<Keyword> page = PageInfo.of(keywordMapper.selectList(query));

        return transformer.transformPageToSecond(page);
    }

    @Override
    public KeywordDTO searchOne(Long id) {
        return transformer.transformToSecond(keywordMapper.selectById(id));
    }
}
