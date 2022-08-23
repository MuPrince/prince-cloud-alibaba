package com.prince.operation.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.operation.mapper.TagMapper;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.po.Tag;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.vo.Sign;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 11:40
 */
@Service
@DubboService
@RequiredArgsConstructor
public class TagServiceImpl extends ServiceImpl<TagMapper, Tag> implements TagService {

    private final TagMapper tagMapper;

    private final EntityTransformationUtil<Tag, TagDTO> transformer = new EntityTransformationUtil<>(Tag.class, TagDTO.class);

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

    @Override
    public List<TagDTO> getTagsByUser(Long userId) {
        return transformer.transformListToSecond(tagMapper.selectListByUserId(userId));
    }

    @Override
    public void mark(Sign sign) {
        try {
            TimeUnit.SECONDS.sleep(10000);
        } catch (InterruptedException ignore) {

        }
        List<Long> tags = sign.getTags();
        if (tags != null && tags.size() > 0) {
            //清除用户的所有标签
            tagMapper.unmark(sign.getUserId());
            //标记
            tagMapper.mark(sign.getUserId(), tags);
        }
    }

    @Override
    public void unmark(Sign sign) {
        List<Long> tags = sign.getTags();
        if (tags != null && tags.size() > 0) {
            tagMapper.unmark(sign.getUserId());
        }
    }
}
