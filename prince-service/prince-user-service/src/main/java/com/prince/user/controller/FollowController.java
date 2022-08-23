package com.prince.user.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.RespResult;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.service.FollowService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 关注
 *
 * @author Mu Prince <br\>
 * @since 2022/8/11 15:24
 */
@RestController
@RequestMapping("follow")
@RequiredArgsConstructor
public class FollowController {

    private final FollowService followService;

    /**
     * Description :  关注
     * @param followed 被关注者
     * @return {@link RespResult<?>}
     * @since 2022/8/11 16:12
     * @author Mu Prince
     */
    @PutMapping("{followed}")
    public RespResult<?> follow(@PathVariable Long followed) {
        followService.follow(followed);
        return RespResult.ok();
    }
    /**
     * Description :  取消关注
     * @param followed 被关注者
     * @return {@link RespResult<?>}
     * @since 2022/8/11 16:13
     * @author Mu Prince
     */
    @DeleteMapping("{followed}")
    public RespResult<?> unfollow(@PathVariable Long followed) {
        followService.unfollow(followed);
        return RespResult.ok();
    }
    /**
     * Description : 分页查询关注的人（被关注者）
     * @param current 页码
     * @return {@link RespResult< PageInfo< UserDTO>>}
     * @since 2022/8/11 17:21
     * @author Mu Prince
     */
    @GetMapping("followed/page/{current}")
    public RespResult<PageInfo<UserInfoDTO>> getFollowed(@PathVariable int current) {
        return RespResult.ok(followService.getFollowed(current, PrinceConstants.PAGE_SIZE));
    }
    /**
     * Description :  分页查询粉丝（关注者）
     * @param current 页码
     * @return {@link RespResult< PageInfo< UserDTO>>}
     * @since 2022/8/11 17:21
     * @author Mu Prince
     */
    @GetMapping("follower/page/{current}")
    public RespResult<PageInfo<UserInfoDTO>> getFollowers (@PathVariable int current) {
        return RespResult.ok(followService.getFollowers(current, PrinceConstants.PAGE_SIZE));
    }

}
