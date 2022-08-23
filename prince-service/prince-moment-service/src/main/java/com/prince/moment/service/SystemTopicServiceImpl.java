package com.prince.moment.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.po.Topic;
import com.prince.moment.mapper.TopicMapper;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/8/16 14:14
 */
@Service
@RequiredArgsConstructor
public class SystemTopicServiceImpl extends ServiceImpl<TopicMapper, Topic> implements SystemTopicService {

    private final TopicMapper topicMapper;

    @Override
    public void add(Topic topic) {
        topicMapper.insert(topic);
    }

    @Override
    public void edit(Topic topic) {
        topicMapper.updateById(topic);
    }

    @Override
    public void del(List<Long> ids) {
        topicMapper.deleteRelations(ids);
        topicMapper.deleteBatchIds(ids);
    }

    @Override
    public void del(Long id) {
        topicMapper.deleteRelation(id);
        topicMapper.deleteById(id);
    }

    @Override
    public PageInfo<Topic> getPage(String description, String keyword, int current, int size) {
        LambdaQueryWrapper<Topic> query = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(description)) {
            query.like(Topic::getDescription, description);
        }
        if (StringUtils.isNotBlank(keyword)) {
            query.like(Topic::getKeyword, keyword);
        }
        query.orderByDesc(Topic::getHot);
        PageHelper.startPage(current, size);

        return PageInfo.of(topicMapper.selectList(query));
    }
}
