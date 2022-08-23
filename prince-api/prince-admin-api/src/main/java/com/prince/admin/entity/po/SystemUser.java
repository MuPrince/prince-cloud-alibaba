package com.prince.admin.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * Description : 管理系统用户
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:38
 */
@Data
@TableName("sys_user")
public class SystemUser {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
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
    @TableField(exist = false)
    private String roleName;
    /**
     * 角色信息
     */
    @TableField(exist = false)
    private Role role;
}
