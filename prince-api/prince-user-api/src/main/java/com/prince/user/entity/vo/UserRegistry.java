package com.prince.user.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * Description : 用户注册
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 16:57
 */
@Data
public class UserRegistry implements Serializable {

    @NotBlank(message = "手机不能为空")
    private String phone;
    @NotBlank(message = "验证码不能为空")
    private String verification;
    /**
     * 邀请码
     */
    private String invitationCode;

}
