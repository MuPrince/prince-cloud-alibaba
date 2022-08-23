package com.prince.operation.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.operation.entity.po.ActivityPublication;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 17:37
 */
public interface ActivityPublicationMapper extends BaseMapper<ActivityPublication> {

    /**
     * Description : 查询正在进行的活动
     * @return {@link List< Long>}
     * @since 2022/7/28 17:25
     * @author Mu Prince
     */
    List<Long> selectIsPublishedActivities();
    /**
     * Description :  结束指定活动
     * @param publicationId  活动发布信息id
     * @since 2022/7/28 17:22
     * @author Mu Prince
     */
    @Update("update activity_publication set end_time = NOW() where id = #{publicationId}")
    void ending(Long publicationId);

    /**
     * Description :  查询当前活动是否正在进行中
     * @param id 活动id
     * @return boolean
     * @since 2022/7/28 16:47
     * @author Mu Prince
     */
    default boolean selectIsInProgress(Long id) {
        //查询当前活动是否发布了
        LambdaQueryWrapper<ActivityPublication> query = new LambdaQueryWrapper<>();
        query.eq(ActivityPublication::getId, id);
        query.lt(ActivityPublication::getStartTime, new Date());
        query.gt(ActivityPublication::getEndTime, new Date());
        query.eq(ActivityPublication::getIsCancel, false);
        return this.selectOne(query) != null;
    }
    /**
     * Description :  是否存在发布信息
     * @param id 活动id
     * @return {@link boolean}
     * @since 2022/7/29 16:06
     * @author Mu Prince
     */
    default boolean selectIsPublished(Long id) {
        //查询当前活动是否发布了
        LambdaQueryWrapper<ActivityPublication> query = new LambdaQueryWrapper<>();
        query.eq(ActivityPublication::getActivityId, id);
        query.lt(ActivityPublication::getPublicationDate, new Date());
        query.gt(ActivityPublication::getEndTime, new Date());
        query.eq(ActivityPublication::getIsCancel, false);
        return this.selectOne(query) != null;
    }

    /**
     * Description :  是否存在发布信息
     * @return {@link boolean}
     * @since 2022/7/29 16:06
     * @author Mu Prince
     */
    default ActivityPublication selectPromotion() {
        LambdaQueryWrapper<ActivityPublication> query = new LambdaQueryWrapper<>();
        query.lt(ActivityPublication::getStartTime, new Date());
        query.gt(ActivityPublication::getEndTime, new Date());
        query.eq(ActivityPublication::getIsCancel, false);
        query.eq(ActivityPublication::getIsPromotion, true);
        return this.selectOne(query);
    }

    @Update("update activity_publication set is_cancel = 1, cancel_time = NOW() where id = #{publicationId}")
    void cancel(Long publicationId);

    @Update("update activity_publication set is_promotion = 1 where id = #{activityId}")
    void promote(Long activityId);
}
