package com.prince.admin.entity.vo;

import com.prince.common.validation.Add;
import com.prince.common.validation.ChangePassword;
import com.prince.common.validation.Edit;
import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.util.Date;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 15:00
 */
@Data
public class SystemUserVo extends BaseVo implements Serializable {

    @NotNull(message = "用户id不存在", groups = {Edit.class})
    private Long id;
    /**
     * 用户名
     */
    @NotBlank(message = "用户名不能为空", groups = {Add.class, Edit.class})
    @Pattern(regexp = "^\\w{6,20}$", message = "用户名格式不正确", groups = {Add.class, Edit.class})
    private String username;
    /**
     * 密码
     */
    @NotBlank(message = "密码不能为空", groups = {ChangePassword.class, Add.class})
    private String password;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 头像
     */
    private String head;
    /**
     * 登录时间 开始
     */
    private Date loginTimeStart;
    /**
     * 登录时间 结束
     */
    private Date loginTimeEnd;
    /**
     * 用户状态
     */
    private Boolean status;
    /**
     * 角色id
     */
    private Long roleId;
    /**
     * 角色名字
     */
    private String roleName;
    /**
     * token
     */
    private String token;
}
