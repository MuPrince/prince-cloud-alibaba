package com.prince.user.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Description : 用户信息
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:47
 */
@Data
@TableName("user_info")
public class UserInfo implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
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
     * 年龄
     */
    private Integer age;
    /**
     * 经度
     */
    private BigDecimal longitude;
    /**
     * 纬度
     */
    private BigDecimal latitude;
    /**
     * 地点描述
     */
    private String place;
    /**
     * 身份证号码 格式：51**************11
     */
    private String idCard;
    /**
     * 身份证号码加密串
     */
    private String idCardCryptographic;
    /**
     * 手机号 格式：18*******99
     */
    private String phone;
    /**
     * 手机号加密串
     */
    private String phoneCryptographic;
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
     * 个性签名
     */
    private String signature;
    /**
     * 创建时间
     */
    private Date created;
    /**
     * 修改时间
     */
    private Date updated;
}
