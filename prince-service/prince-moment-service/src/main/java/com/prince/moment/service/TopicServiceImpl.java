package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.moment.entity.po.Topic;
import com.prince.moment.mapper.TopicMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 18:57
 */
@Service
@RequiredArgsConstructor
public class TopicServiceImpl extends ServiceImpl<TopicMapper, Topic> implements TopicService {

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
    public void updateHot(Integer hot) {

    }

    @Override
    public List<Topic> getTopTen(String keyword) {
        return topicMapper.topTenWithKeyword(keyword);
    }
}
