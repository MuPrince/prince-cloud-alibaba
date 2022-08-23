package com.prince.user.entity.dto;

import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.po.Tag;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/8/1 14:20
 */
@Data
public class UserInfoDTO {

    private Long id;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * prince号
     */
    private Long princeNumber;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 头像
     */
    private String headPic;
    /**
     * 背景图片
     */
    private String backgroundPic;
    /**
     * 自我认同。  t:T p:P h:H bisexual:双性 unknow:迷茫
     */
    private String selfIdentity;
    /**
     * 感情状态.1：单身；2：恋爱中；3：暗恋中；4：保持单身
     */
    private Integer relationshipStatus;
    /**
     * 出生日期
     */
    private Date birthday;
    /**
     * 身份证号码 格式：51**************11
     */
    private String idCard;
    /**
     * 手机号 格式：18*******99
     */
    private String phone;
    /**
     * 星座
     */
    private String constellation;
    /**
     * 身高
     */
    private Double height;
    /**
     * 体重
     */
    private Double weight;
    /**
     * 年龄
     */
    private Integer age;
    /**
     * 个性签名
     */
    private String signature;
    /**
     * 已注册天数duration
     */
    private Integer period;
    /**
     * 粉丝数
     */
    private Integer fans;
    /**
     * 关注数
     */
    private Integer follows;
    /**
     * 用户标签
     */
    private List<TagDTO> tags;
    /**
     * vip等级
     */
    private Integer vipLevel;
    /**
     * vip过期时间
     */
    private Date vipEndTime;
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

}
