package com.prince.user.service;

import com.github.pagehelper.PageInfo;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserInfoDTO;

/**
 * Description : 关注
 *
 * @author Mu Prince <br\>
 * @since 2022/8/11 15:25
 */
public interface FollowService {

    /**
     * Description :  关注
     * @param followed 被关注者id
     * @since 2022/8/11 16:09
     * @author Mu Prince
     */
    void follow(Long followed);
    /**
     * Description :  取消关注
     * @param followed 被关注者id
     * @since 2022/8/11 16:09
     * @author Mu Prince
     */
    void unfollow(Long followed);
    /**
     * Description :  关注列表
     * @param current 当前页
     * @param pageSize 条数
     * @return {@link PageInfo< UserDTO>}
     * @since 2022/8/11 16:22
     * @author Mu Prince
     */
    PageInfo<UserInfoDTO> getFollowed(int current, Integer pageSize);
    /**
     * Description :  粉丝列表
     * @param current  当前页
     * @param pageSize 条数
     * @return {@link PageInfo< UserDTO>}
     * @since 2022/8/11 16:22
     * @author Mu Prince
     */
    PageInfo<UserInfoDTO> getFollowers(int current, Integer pageSize);
}
