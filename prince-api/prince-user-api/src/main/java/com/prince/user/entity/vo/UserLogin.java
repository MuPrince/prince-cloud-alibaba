package com.prince.user.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Description : 用户登录
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 16:23
 */
@Data
public class UserLogin implements Serializable {

//    @NotBlank(message = "账号不能为空")
    private String account;
    /**
     * 密码
     */
    private String password;
    /**
     * 验证码
     */
    private String verification;
    /**
     * 认证SDK获取到的loginToken
     */
    private String loginToken;
    /**
     * 开发者自定义的id，非必填
     */
    private String exID;

    /**
     * 登录类型，方式
     */
    @NotNull(message = "登录错误")
    private Integer type;
}
