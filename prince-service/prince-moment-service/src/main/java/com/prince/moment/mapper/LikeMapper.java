package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.po.Like;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Description : 点赞
 *
 * @author Mu Prince <br\>
 * @since 2022/8/9 16:47
 */
public interface LikeMapper extends BaseMapper<Like> {
    /**
     * Description :  是否已经点赞
     * @param userId 用户id
     * @param momentId 动态id
     * @return {@link int}
     * @since 2022/8/9 11:33
     * @author Mu Prince
     */
    @Select("select count(1) from moment_like where type = 1 and user_id = #{userId} and target_id = #{momentId}")
    int likedMoment(@Param("userId") Long userId, @Param("momentId") Long momentId);

    /**
     * Description :  是否已经点赞
     * @param userId 用户id
     * @param commentId 动态id
     * @return {@link int}
     * @since 2022/8/9 11:33
     * @author Mu Prince
     */
    @Select("select count(1) from moment_like where type = 2 and user_id = #{userId} and target_id = #{commentId}")
    int likedComment(@Param("userId") Long userId, @Param("commentId") Long commentId);

}
