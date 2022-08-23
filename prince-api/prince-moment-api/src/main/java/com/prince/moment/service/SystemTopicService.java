package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.po.Topic;

import java.util.List;

/**
 * Description : 话题管理
 *
 * @author Mu Prince <br\>
 * @since 2022/8/16 14:13
 */
public interface SystemTopicService extends IService<Topic> {

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
     * Description :  批量删除
     * @param ids 话题id集合
     * @since 2022/8/16 9:48
     * @author Mu Prince
     */
    void del(List<Long> ids);
    /**
     * Description :  删除话题
     * @param id 话题id
     * @since 2022/8/16 9:49
     * @author Mu Prince
     */
    void del(Long id);

    /**
     * Description :  分页查询话题列表
     * @param description 话题描述
     * @param keyword 话题
     * @param current 页码
     * @param size 条数
     * @return {@link PageInfo< Topic>}
     * @since 2022/8/16 14:23
     * @author Mu Prince
     */
    PageInfo<Topic> getPage(String description, String keyword, int current, int size);
}
