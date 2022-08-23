package com.prince.user.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : user
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:46
 */
@Data
@TableName("user")
@ToString
public class User implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
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
     * 密码
     */
    private String password;
    /**
     * 手机号加密串
     */
    private String phoneCryptographic;
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
     * im账号
     */
    private String imAccount;
    /**
     * 最后登录时间
     */
    private Date lastLoginTime;
    /**
     * 注册时间
     */
    private Date registryTime;
    /**
     * 修改时间
     */
    private Date updateTime;
}
