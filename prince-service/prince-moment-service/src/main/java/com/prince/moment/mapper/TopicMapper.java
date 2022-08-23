package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.po.Topic;

import java.util.List;

/**
 * Description : 话题
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 18:56
 */
public interface TopicMapper extends BaseMapper<Topic> {

    void deleteRelations(List<Long> ids);

    void deleteRelation(Long id);

    List<Topic> topTenWithKeyword(String keyword);
}
