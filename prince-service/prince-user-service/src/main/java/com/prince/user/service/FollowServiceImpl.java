package com.prince.user.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.server.context.UserContext;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.po.Follow;
import com.prince.user.mapper.FollowMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description : 关注
 *
 * @author Mu Prince <br\>
 * @since 2022/8/11 15:26
 */
@Slf4j
@Service
@DubboService
@RequiredArgsConstructor
public class FollowServiceImpl implements FollowService {

    private final FollowMapper followMapper;

    private final UserService userService;

    @Override
    public void follow(Long followed) {
        Long userId = UserContext.get();
        if (userId.equals(followed)) {
            return;
        }
        int follows = followMapper.isFollowed(userId, followed);
        if (follows > 0) {
            return;
        }
        Follow follow = new Follow();
        follow.setFollowed(followed);
        follow.setFollower(userId);
        follow.setFollowedTime(new Date());
        followMapper.insert(follow);
    }

    @Override
    public void unfollow(Long followed) {
        Long userId = UserContext.get();
        if (userId.equals(followed)) {
            return;
        }
        followMapper.delete(new QueryWrapper<Follow>().eq("follower", userId).eq("followed", followed));
    }

    @Override
    public PageInfo<UserInfoDTO> getFollowed(int current, Integer pageSize) {
        Long userId = UserContext.get();
        PageHelper.startPage(current, pageSize);
        return PageInfo.of(followMapper.getFollowed(userId));
    }

    @Override
    public PageInfo<UserInfoDTO> getFollowers(int current, Integer pageSize) {
        Long userId = UserContext.get();
        PageHelper.startPage(current, pageSize);
        return PageInfo.of(followMapper.getFollowers(userId));
    }
}
