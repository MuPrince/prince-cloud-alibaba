package com.prince.system.admin.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * Description : 角色
 *
 * @author StrangePrince <br\>
 * @since 2022/6/11 0:03
 */
@Data
@TableName("sys_role")
public class Role implements Serializable {

    /**
     * id
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long rid;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 描述
     */
    private String description;
    /**
     * 角色等级
     */
    private Integer level;
    /**
     * 权限列表
     */
    @TableField(exist = false)
    private List<Permission> permissions;
}
