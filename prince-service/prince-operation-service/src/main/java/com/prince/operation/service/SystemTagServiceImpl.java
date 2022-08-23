package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.operation.mapper.TagMapper;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.po.Tag;
import com.prince.operation.entity.vo.TagVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 14:15
 */
@Service
@RequiredArgsConstructor
public class SystemTagServiceImpl extends ServiceImpl<TagMapper, Tag> implements SystemTagService {

    private final TagMapper tagMapper;

    private final EntityTransformationUtil<Tag, TagDTO> transformer = new EntityTransformationUtil<>(Tag.class, TagDTO.class);

    @Override
    public void add(TagDTO tagDTO) {
        tagMapper.insert(transformer.transformToFirst(tagDTO));
    }

    @Override
    public void edit(TagDTO tagDTO) {
        tagMapper.updateById(transformer.transformToFirst(tagDTO));
    }

    @Override
    public PageInfo<TagDTO> search(TagVo tagVo) {
        LambdaQueryWrapper<Tag> query = new LambdaQueryWrapper<>();
        if (tagVo.getName() != null) {
            query.like(Tag::getName, tagVo.getName());
        }
        if (tagVo.getActionScope() != null) {
            query.eq(Tag::getActionScope, tagVo.getActionScope());
        }
        PageHelper.startPage(tagVo.getCurrent(), tagVo.getSize());
        PageInfo<Tag> page = PageInfo.of(tagMapper.selectList(query));
        return transformer.transformPageToSecond(page);
    }

    @Override
    public List<TagDTO> getListByUserId(Long userId) {
        List<Tag> tags = tagMapper.selectListByUserId(userId);
        return transformer.transformListToSecond(tags);
    }

    @Override
    public List<TagDTO> getUserTags() {
        List<Tag> tags = tagMapper.selectUserTags();
        return transformer.transformListToSecond(tags);
    }

    @Override
    public List<TagDTO> getContentTags() {
        List<Tag> tags = tagMapper.selectContentList();
        return transformer.transformListToSecond(tags);
    }
}
