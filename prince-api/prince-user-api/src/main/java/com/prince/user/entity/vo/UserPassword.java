package com.prince.user.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Description : 操作密码
 *
 * @author Mu Prince <br\>
 * @since 2022/7/20 16:05
 */
@Data
public class UserPassword implements Serializable {

    /**
     * 用户id
     */
    private Long userId;
    /**
     * 手机号
     */
    @NotBlank
    private String phone;
    /**
     * 密码
     */
    @NotBlank
    private String password;
    /**
     * 验证码
     */
    @NotBlank
    private String verification;
}
