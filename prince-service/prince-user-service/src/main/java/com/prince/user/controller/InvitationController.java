package com.prince.user.controller;

import com.prince.common.resp.RespResult;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description : 用户邀请
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 15:24
 */
@RestController
@RequestMapping
@RequiredArgsConstructor
public class InvitationController {

    @GetMapping("invite")
    public RespResult<?> invite() {
        return RespResult.ok();
    }
}
