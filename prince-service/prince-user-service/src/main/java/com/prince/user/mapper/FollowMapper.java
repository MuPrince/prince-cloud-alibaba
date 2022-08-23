package com.prince.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.po.Follow;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Description : 关注
 *
 * @author Mu Prince <br\>
 * @since 2022/8/11 15:44
 */
public interface FollowMapper extends BaseMapper<Follow> {

    @Select("select count(1) from follow where follower = #{follower} and followed = #{followed}")
    int isFollowed(@Param("follower") Long follower, @Param("followed") Long followed);
    /**
     * Description :  查询被关注
     * @param userId 用户id
     * @return {@link List< UserDTO>}
     * @since 2022/8/11 17:16
     * @author Mu Prince
     */
    List<UserInfoDTO> getFollowed(Long userId);
    /**
     * Description :  查询粉丝（关注者）
     * @param userId 用户id
     * @return {@link List< UserDTO>}
     * @since 2022/8/11 17:17
     * @author Mu Prince
     */
    List<UserInfoDTO> getFollowers(Long userId);
}
