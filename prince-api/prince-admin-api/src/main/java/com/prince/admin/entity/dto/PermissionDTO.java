package com.prince.admin.entity.dto;

import com.prince.admin.entity.po.Permission;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 18:02
 */
@Data
public class PermissionDTO implements Serializable {

    @NotNull(message = "请选择需要修改的权限", groups = {Edit.class})
    private Long pid;
    /**
     * 菜单
     */
    private Long menuId;
    /**
     * 菜单名称
     */
    private String menuName;
    /**
     * url
     */
    @NotBlank(message = "请填写权限路径", groups = {Add.class, Edit.class})
    private String url;
    /**
     * url匹配方式 0：完全匹配；1：通配符匹配
     */
    @NotNull(message = "请选择匹配方式", groups = {Add.class, Edit.class})
    private Integer matchingWay;
    /**
     * 请求方式
     */
    @NotBlank(message = "请选择请求方式", groups = {Add.class, Edit.class})
    private String method;
    /**
     * 权限描述
     */
    private String description;

    /**
     * 当前登录角色是否拥有该权限
     */
    private Boolean hasPermission;

    public static PermissionDTO toPermissionDTO(Permission permission) {
        PermissionDTO permissionDTO = new PermissionDTO();
        permissionDTO.setPid(permission.getPid());
        permissionDTO.setMethod(permission.getMethod());
        permissionDTO.setUrl(permission.getUrl());
        permissionDTO.setMenuId(permission.getMenuId());
        permissionDTO.setMatchingWay(permission.getMatchingWay());
        return permissionDTO;
    }

    public static Permission toPermission(PermissionDTO permissionDTO) {
        Permission permission = new Permission();
        permission.setPid(permissionDTO.getPid());
        permission.setMethod(permissionDTO.getMethod());
        permission.setUrl(permissionDTO.getUrl());
        permission.setMenuId(permissionDTO.getMenuId());
        permission.setMatchingWay(permissionDTO.getMatchingWay());
        return permission;
    }
}
