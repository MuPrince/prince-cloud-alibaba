package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.system.entity.po.Tag;
import com.prince.system.entity.dto.TagDTO;
import com.prince.system.entity.vo.TagVo;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.admin.mapper.TagMapper;
import com.prince.admin.service.TagService;
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
public class TagServiceImpl extends ServiceImpl<TagMapper, Tag> implements TagService {

    private final TagMapper tagMapper;

    private final EntityTransformationUtil<Tag> entityTransformationUtil = new EntityTransformationUtil<>();

    @Override
    public void add(TagDTO tagDTO) {
        tagMapper.insert(entityTransformationUtil.transformTo(tagDTO, Tag.class));
    }

    @Override
    public void edit(TagDTO tagDTO) {
        tagMapper.updateById(entityTransformationUtil.transformTo(tagDTO, Tag.class));
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
        EntityTransformationUtil<TagDTO> transform = new EntityTransformationUtil<>();
        return transform.transformPageFrom(page, TagDTO.class);
    }

    @Override
    public List<TagDTO> getListByUserId(Long userId) {
        List<Tag> tags = tagMapper.selectListByUserId(userId);
        EntityTransformationUtil<TagDTO> transform = new EntityTransformationUtil<>();
        return transform.transformListFrom(tags, TagDTO.class);
    }

    @Override
    public List<TagDTO> getUserTags() {
        List<Tag> tags = tagMapper.selectUserTags();
        EntityTransformationUtil<TagDTO> transform = new EntityTransformationUtil<>();
        return transform.transformListFrom(tags, TagDTO.class);
    }

    @Override
    public List<TagDTO> getContentTags() {
        List<Tag> tags = tagMapper.selectContentList();
        EntityTransformationUtil<TagDTO> transform = new EntityTransformationUtil<>();
        return transform.transformListFrom(tags, TagDTO.class);
    }
}
