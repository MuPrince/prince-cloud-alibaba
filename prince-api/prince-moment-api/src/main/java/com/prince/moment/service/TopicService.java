package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.moment.entity.po.Topic;

import java.util.List;

/**
 * Description : 话题
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 18:56
 */
public interface TopicService extends IService<Topic> {

    /**
     * Description : 添加话题 
     * @param topic 话题信息
     * @since 2022/8/16 9:48
     * @author Mu Prince
     */
    void add(Topic topic);
    /**
     * Description :  修改话题
     * @param topic 话题信息
     * @since 2022/8/16 9:48
     * @author Mu Prince
     */
    void edit(Topic topic);

    /**
     * Description : 查询话题，前十条
     * @param keyword 话题
     * @return {@link List< Topic>}
     * @since 2022/8/16 9:49
     * @author Mu Prince
     */
    List<Topic> getTopTen(String keyword);
    /**
     * Description : 修改热度
     * @param hot 热度
     * @since 2022/8/16 10:13
     * @author Mu Prince
     */
    void updateHot(Integer hot);
}
