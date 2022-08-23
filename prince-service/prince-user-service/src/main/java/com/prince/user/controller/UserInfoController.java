package com.prince.user.controller;

import com.prince.common.resp.RespResult;
import com.prince.operation.service.TagService;
import com.prince.server.context.UserContext;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.vo.Location;
import com.prince.user.service.UserInfoService;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 12:25
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("userinfo")
public class UserInfoController {

    private final UserInfoService userInfoService;

    @DubboReference(check = false)
    private TagService tagService;
    /**
     * Description :  编辑用户信息
     * @param info 用户信息
     * @return {@link RespResult<?>}
     * @since 2022/8/12 14:17
     * @author Mu Prince
     */
    @PostMapping("edit")
    public RespResult<?> editUserInfo(@RequestBody UserInfoDTO info) {
        userInfoService.edit(info);
        return RespResult.ok();
    }
    /**
     * Description :  查询用户信息
     * @param userId 用户id
     * @return {@link RespResult< UserInfoDTO>}
     * @since 2022/8/12 14:17
     * @author Mu Prince
     */
    @GetMapping("search/{userId}")
    public RespResult<UserInfoDTO> searchOne(@PathVariable Long userId) {

        UserInfoDTO info = userInfoService.searchOne(userId);
        return RespResult.ok(null);
    }
    /**
     * Description :  获取自己的用户信息
     * @return {@link RespResult< UserInfoDTO>}
     * @since 2022/8/12 14:18
     * @author Mu Prince
     */
    @GetMapping("getSelf")
    public RespResult<UserInfoDTO> getSelf() {
        Long userId = UserContext.get();
        UserInfoDTO dto = userInfoService.searchOne(userId);
        return RespResult.ok(null);
    }
    /**
     * Description :  修改用户地址
     * @param location 定位信息
     * @return {@link RespResult<?>}
     * @since 2022/8/12 10:44
     * @author Mu Prince
     */
    @PostMapping("goe")
    public RespResult<?> recordGeo(@RequestBody Location location) {
        userInfoService.updateGeo(location);
        return RespResult.ok();
    }

}
