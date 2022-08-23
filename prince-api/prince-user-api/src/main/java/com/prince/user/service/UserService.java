package com.prince.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.operation.entity.vo.Sign;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.po.User;
import com.prince.user.entity.vo.FaceVerify;
import com.prince.user.entity.vo.UserLogin;
import com.prince.user.entity.vo.UserPassword;
import com.prince.user.entity.vo.UserRegistry;

/**
 * Description : 用户业务
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:45
 */
public interface UserService extends IService<User> {
    /**
     * Description :  用户登录
     * @param userLogin 登录信息
     * @return {@link UserDTO}
     * @since 2022/8/12 12:00
     * @author Mu Prince
     */
    UserDTO loginByPhone(UserLogin userLogin);
    /**
     * Description :  短信验证码登录
     * @param userLogin 登录信息
     * @return {@link UserDTO}
     * @since 2022/8/12 12:00
     * @author Mu Prince
     */
    UserDTO loginByVerification(UserLogin userLogin);
    /**
     * Description :  prince号+密码登录
     * @param userLogin 登录信息
     * @return {@link UserDTO}
     * @since 2022/8/12 12:01
     * @author Mu Prince
     */
    UserDTO loginByprinceNumber(UserLogin userLogin);
    /**
     * Description :  一键登录
     * @param userLogin 用户登录信息
     * @return {@link UserDTO}
     * @since 2022/8/12 12:02
     * @author Mu Prince
     */
    UserDTO loginBySuyan(UserLogin userLogin);
    /**
     * Description :  用户注册
     * @param userRegistry 用户注册信息
     * @since 2022/8/12 12:03
     * @author Mu Prince
     */
    void registry(UserRegistry userRegistry);
    /**
     * Description :  用户手机注册
     * @param userRegistry 注册信息
     * @return {@link UserDTO}
     * @since 2022/8/12 12:03
     * @author Mu Prince
     */
    UserDTO registryByPhone(UserRegistry userRegistry);
    /**
     * Description :  发送手机验证码
     * @param phone 手机号
     * @param scene 随机码
     * @since 2022/8/12 12:04
     * @author Mu Prince
     */
    void sendVerification(String phone, String scene);
    /**
     * Description :  退出登录
     * @since 2022/8/12 12:04
     * @author Mu Prince
     */
    void logout();
    /**
     * Description :  初始化实人认证
     * @param faceVerify 实人认证信息
     * @return {@link String}
     * @since 2022/8/12 14:15
     * @author Mu Prince
     */
    String initFaceVerify(FaceVerify faceVerify);
    /**
     * Description :  查询实人认证结果
     * @param certifyId 实人认证唯一标识
     * @param userId 用户id
     * @return {@link Boolean}
     * @since 2022/8/12 14:16
     * @author Mu Prince
     */
    Boolean describeFaceVerify(String certifyId, Long userId);
    /**
     * Description :  修改密码
     * @param userPassword 用户密码
     * @since 2022/8/12 14:16
     * @author Mu Prince
     */
    void changePassword(UserPassword userPassword);
    /**
     * Description : 设置密码
     * @param userId 用户id
     * @param password 密码
     * @since 2022/8/12 14:16
     * @author Mu Prince
     */
    void setPassword(Long userId, String password);
    /**
     * Description : 刷新token
     * @return {@link String}
     * @since 2022/8/12 14:17
     * @author Mu Prince
     */
    String refreshToken();

    UserDTO verifyFaceByNetease(FaceVerify verify);
    /**
     * Description :  是否注册
     * @param phone 手机号
     * @return {@link Boolean}
     * @since 2022/8/16 17:21
     * @author Mu Prince
     */
    Integer isSignIn(String phone);

    void mark(Sign sign);
}
