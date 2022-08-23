package com.prince.system.admin.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 用户
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 14:24
 */
@Data
public class SystemUserDTO implements Serializable {

    private Long id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 头像
     */
    private String head;
    /**
     * 登录时间
     */
    private Date loginTime;
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

    private String token;
}
