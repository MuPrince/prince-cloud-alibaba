package com.prince.admin.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

/**
 * Description : 用户登录信息
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 14:32
 */
@Data
public class SystemUserLogin {

    @NotBlank(message = "用户名不能为空")
    @Pattern(regexp = "^admin$|^\\w{6,20}$")
    private String username;

    @NotBlank(message = "密码不能为空")
    private String password;
}
