package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.entity.dto.KeywordDTO;
import com.prince.system.entity.po.Keyword;
import com.prince.system.entity.vo.KeywordVo;
import com.prince.admin.mapper.KeywordMapper;
import com.prince.admin.service.KeywordService;
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
public class KeywordServiceImpl extends ServiceImpl<KeywordMapper, Keyword> implements KeywordService {

    private final KeywordMapper keywordMapper;

    private final EntityTransformationUtil<Keyword> entityTransformationUtil = new EntityTransformationUtil<>();

    @Override
    public void add(KeywordDTO keywordDTO) {
        keywordMapper.insert(entityTransformationUtil.transformTo(keywordDTO, Keyword.class));
    }

    @Override
    public void edit(KeywordDTO keywordDTO) {
        keywordMapper.updateById(entityTransformationUtil.transformTo(keywordDTO, Keyword.class));
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

        EntityTransformationUtil<KeywordDTO> transform = new EntityTransformationUtil<>();
        return transform.transformPageFrom(page, KeywordDTO.class);
    }

    @Override
    public KeywordDTO searchOne(Long id) {
        EntityTransformationUtil<KeywordDTO> transform = new EntityTransformationUtil<>();
        return transform.transformTo(keywordMapper.selectById(id), KeywordDTO.class);
    }
}
