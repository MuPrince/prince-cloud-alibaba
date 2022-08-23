package com.prince.system.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.system.entity.dto.ActivityPublicationDTO;
import com.prince.system.entity.po.ActivityPublication;
import com.prince.system.entity.vo.ActivityPublicationVo;

import java.util.List;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 14:11
 */
public interface ActivityPublicationService extends IService<ActivityPublication> {

    /**
     * Description :  发布活动
     * @param activityPublicationDTO 发布信息
     * @since 2022/7/28 17:36
     * @author Mu Prince
     */
    void publish(ActivityPublicationDTO activityPublicationDTO);

    /**
     * Description :  结束活动
     * @param publicationId 发布id
     * @since 2022/7/28 17:36
     * @author Mu Prince
     */
    void ending(Long publicationId);

    /**
     * Description :  分页查询发布记录
     * @param vo 查询条件
     * @return {@link PageInfo<List<ActivityPublicationDTO>>}
     * @since 2022/7/28 17:37
     * @author Mu Prince
     */
    PageInfo<ActivityPublicationDTO> search(ActivityPublicationVo vo);
    /**
     * Description :  取消活动
     * @param publicationId 活动发布记录id
     * @since 2022/7/28 18:22
     * @author Mu Prince
     */
    void cancel(Long publicationId);
    /**
     * Description :  推广活动
     * @param publicationId 发布id
     * @since 2022/7/29 16:38
     * @author Mu Prince
     */
    void promote(Long publicationId);
    /**
     * Description :  取消推广
     * @param publicationId 发布id
     * @since 2022/7/29 16:38
     * @author Mu Prince
     */
    void unPromote(Long publicationId);
}
