package com.prince.system.admin.entity.dto;

import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.system.admin.entity.po.Permission;
import com.prince.system.admin.entity.po.Role;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Description : 角色业务层实体
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 17:46
 */
@Data
public class RoleDTO implements Serializable {

    /**
     * id
     */
    @NotNull(message = "请选择角色", groups = {Edit.class})
    private Long rid;
    /**
     * 角色名称
     */
    @NotEmpty(message = "名称不能为空", groups = {Add.class, Edit.class})
    private String roleName;
    /**
     * 描述
     */
    private String description;
    /**
     * 角色等级
     */
    @NotNull(message = "等级必填", groups = {Add.class, Edit.class})
    private Integer level;
    /**
     * 权限列表
     */
    private List<PermissionDTO> permissions;

    public static RoleDTO toRoleDTO(Role role) {
        RoleDTO roleDTO = new RoleDTO();
        roleDTO.setRoleName(role.getRoleName());
        roleDTO.setDescription(role.getDescription());
        roleDTO.setRid(role.getRid());
        roleDTO.setLevel(role.getLevel());
        List<PermissionDTO> permissionDTOs = new ArrayList<>();
        List<Permission> permissions = role.getPermissions();
        if (permissions != null && permissions.size() > 0) {
            permissions.forEach(permission -> {
                if (permission != null) {
                    permissionDTOs.add(PermissionDTO.toPermissionDTO(permission));
                }
            });
        }
        roleDTO.setPermissions(permissionDTOs);
        return roleDTO;
    }

    public static Role toRole(RoleDTO roleDTO) {
        Role role = new Role();
        role.setRoleName(roleDTO.getRoleName());
        role.setDescription(roleDTO.getDescription());
        role.setRid(roleDTO.getRid());
        role.setLevel(roleDTO.getLevel());
        List<Permission> permissionDTOs = new ArrayList<>();
        List<PermissionDTO> permissions = roleDTO.getPermissions();
        if (permissions != null && permissions.size() > 0) {
            permissions.forEach(permission -> {
                if (permission != null) {
                    permissionDTOs.add(PermissionDTO.toPermission(permission));
                }
            });
        }
        role.setPermissions(permissionDTOs);
        return role;
    }
}
