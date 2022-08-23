package com.prince.user.controller;

import com.prince.common.exception.BusinessException;
import com.prince.common.exception.OperationServiceException;
import com.prince.common.resp.ResponseCode;
import com.prince.common.exception.UserServiceException;
import com.prince.common.resp.RespResult;
import com.prince.operation.entity.vo.Sign;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.vo.FaceVerify;
import com.prince.user.entity.vo.UserLogin;
import com.prince.user.entity.vo.UserPassword;
import com.prince.user.entity.vo.UserRegistry;
import com.prince.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.redisson.api.RedissonClient;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Project prince <br\>
 * Package com.prince.user.controller <br\>
 * <p>
 * Description : 用户user <br\>
 *
 * @author MuPrince <br\>
 * @since 2022/6/3 20:15
 */
@RestController
@RequestMapping
@RequiredArgsConstructor
public class UserController {

    private final RedissonClient redisson;

    private final UserService userService;

    @PostMapping("login")
    public RespResult<UserDTO> login(@Validated @RequestBody UserLogin userLogin) {
        Integer type = userLogin.getType();
        UserDTO result;
        switch (type) {
            case 1 :
                result = userService.loginByPhone(userLogin);
                break;
            case 2 :
                result = userService.loginByVerification(userLogin);
                break;
            case 3 :
                result = userService.loginBySuyan(userLogin);
                break;
            default: result = userService.loginByprinceNumber(userLogin);
        }
        return RespResult.ok(result);
    }

    @PostMapping("registry")
    public RespResult<?> registry(@RequestBody UserRegistry userRegistry) {
        userService.registry(userRegistry);
        return RespResult.ok();
    }

    @GetMapping("isSignIn")
    public RespResult<Integer> isSignIn(@RequestParam("phone") String phone) {
        return RespResult.ok(userService.isSignIn(phone));
    }

    /**
     * Description :  通过手机号注册
     *
     * @param userRegistry 注册信息
     * @return {@link RespResult<?>}
     * @author Mu Prince
     * @since 2022/7/14 11:37
     */
    @PostMapping("registryByPhone")
    public RespResult<UserDTO> registryByPhone(@Validated @RequestBody UserRegistry userRegistry) {
        return RespResult.ok(userService.registryByPhone(userRegistry));
    }
    /**
     * Description :  修改密码
     * @param userPassword 密码信息
     * @return {@link RespResult<?>}
     * @since 2022/8/12 11:59
     * @author Mu Prince
     */
    @PostMapping("changePassword")
    public RespResult<?> changePassword(@Validated @RequestBody UserPassword userPassword) {
        userService.changePassword(userPassword);
        return RespResult.ok();
    }
    /**
     * Description :  设置密码
     * @param userPassword 用户密码信息
     * @return {@link RespResult<?>}
     * @since 2022/8/12 11:58
     * @author Mu Prince
     */
    @PostMapping("setPassword")
    public RespResult<?> setPassword(@RequestBody UserPassword userPassword) {
        if (StringUtils.isBlank(userPassword.getPassword())) {
            throw new UserServiceException("密码不能为空！");
        }
        userService.setPassword(userPassword.getUserId(), userPassword.getPassword());
        return RespResult.ok();
    }

    /**
     * Description :  获取短信验证码
     *
     * @param phone 手机号
     * @return {@link RespResult<?>}
     * @author Mu Prince
     * @since 2022/7/14 11:36
     */
    @GetMapping("verification")
    public RespResult<?> sendVerification(@RequestParam("phone") String phone, @RequestParam("scene")String scene) {
        userService.sendVerification(phone, scene);
        return RespResult.ok();
    }

    @PostMapping("verifyFace")
    public RespResult<UserDTO> verifyFaceByNetease(@Validated @RequestBody FaceVerify faceVerify) {
        return RespResult.ok(userService.verifyFaceByNetease(faceVerify));
    }

    /**
     * Description :  初始化实人认证
     * @param faceVerify 实人认证信息
     * @return {@link RespResult< String>}
     * @since 2022/8/12 11:56
     * @author Mu Prince
     */
    @PostMapping("initFaceVerify")
    public RespResult<String> initFaceVerify(@Validated @RequestBody FaceVerify faceVerify) {
        return RespResult.ok(userService.initFaceVerify(faceVerify));
    }
    /**
     * Description :  查询实人认证结果
     * @param faceVerify 实人认证信息
     * @return {@link RespResult< Boolean>}
     * @since 2022/8/12 11:57
     * @author Mu Prince
     */
    @PostMapping("describeFaceVerify")
    public RespResult<Boolean> describeFaceVerify(@RequestBody FaceVerify faceVerify) {
        if (StringUtils.isNotBlank(faceVerify.getCertifyId())) {
            return RespResult.ok(userService.describeFaceVerify(faceVerify.getCertifyId(), faceVerify.getUserId()));
        }
        throw new BusinessException(ResponseCode.FACE_VERIFY_AUTH_FAIL);
    }
    /**
     * Description : 刷新token
     * @return {@link RespResult< String>}
     * @since 2022/8/12 11:57
     * @author Mu Prince
     */
    @PostMapping("refreshToken")
    public RespResult<String> refreshToken() {
        return RespResult.ok(userService.refreshToken());
    }
    /**
     * Description : 退出登录
     * @return {@link RespResult<?>}
     * @since 2022/8/12 11:58
     * @author Mu Prince
     */
    @GetMapping("logout")
    public RespResult<?> logout() {
        userService.logout();
        return RespResult.ok();
    }

    /**
     * Description :  用户标记交友偏向
     * @param sign 标记信息
     * @return {@link RespResult<?>}
     * @throws UserServiceException 标签数量限制
     * @since 2022/7/19 17:55
     * @author Mu Prince
     */
    @PostMapping("mark")
    public RespResult<?> markTags(@RequestBody Sign sign) {
        List<Long> tags = sign.getTags();
        if (tags.size() > 11) {
            throw new OperationServiceException("最多选择11个标签");
        }
        userService.mark(sign);
        return RespResult.ok();
    }
}
