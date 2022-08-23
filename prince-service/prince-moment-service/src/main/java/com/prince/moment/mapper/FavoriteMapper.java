package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.po.Favorite;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Description : 点赞
 *
 * @author Mu Prince <br\>
 * @since 2022/8/9 16:47
 */
public interface FavoriteMapper extends BaseMapper<Favorite> {
    /**
     * Description :  是否已经收藏
     * @param userId 用户id
     * @param momentId 动态id
     * @return {@link int}
     * @since 2022/8/9 11:34
     * @author Mu Prince
     */
    @Select("select count(1) favorite where user_id = #{userId} and moment_id = #{momentId}")
    int inFavorites(@Param("userId") Long userId, @Param("momentId") Long momentId);
}
