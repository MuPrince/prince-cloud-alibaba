package com.prince.user.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 17:52
 */
@Data
public class UserDTO implements Serializable {
    private Long id;
    /**
     * 用户名
     */
    private String username;
    /**
     * prince号
     */
    private Long princeNumber;
    /**
     * 手机号 格式：180****9999
     */
    private String phone;
    /**
     * im账号
     */
    private String imAccount;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 实名认证
     */
    private Boolean isVerified;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 状态。-2：注销；-1：未完成注册；1：正常；2：锁定；3：冻结；4：禁言
     */
    private Integer status;
    /**
     * 解锁时间，冻结状态才有
     */
    private Date unfreezeTime;
    /**
     * 头像
     */
    private String headPic;
    /**
     * 邮箱验证
     */
    private Boolean isEmailCheck;
    /**
     * vip等级
     */
    private Integer vipLevel;
    /**
     * vip过期时间
     */
    private Date vipEndTime;
    /**
     * 积分
     */
    private Integer points;
    /**
     * 经验值
     */
    private Integer experienceValue;
    /**
     * 信用分
     */
    private Integer creditScope;
    /**
     * 最后登录时间
     */
    private Date lastLoginTime;
    /**
     * token
     */
    private String token;
}
