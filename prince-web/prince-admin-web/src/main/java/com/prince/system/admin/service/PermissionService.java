package com.prince.system.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.dto.PermissionDTO;
import com.prince.admin.entity.po.Permission;

import java.util.List;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:42
 */
public interface PermissionService extends IService<Permission> {

    /**
     * Description :  根据角色id查询权限列表
     * @param roleId 角色id
     * @return java.util.List<com.prince.system.entity.po.Permission>
     * @since 2022/6/29 11:39
     * @author Mu Prince
     */
    List<PermissionDTO> queryByRoleId(Long roleId);
    /**
     * Description :  根据匹配方式查询权限列表
     * @param way 匹配方式。0：完全匹配；1：通配符匹配
     * @return java.util.List<com.prince.system.entity.po.Permission>
     * @throws 
     * @since 2022/6/29 15:23
     * @author Mu Prince
     */
    List<Permission> queryByMatchingWay(int way);

    /**
     * Description :  添加权限
     * @param permissionDTO 权限信息
     * @since 2022/7/4 14:50
     * @author Mu Prince
     */
    void addPermission(PermissionDTO permissionDTO);

    /**
     * Description :  修改权限
     * @param permissionDTO 权限信息
     * @since 2022/7/4 14:44
     * @author Mu Prince
     */
    void updatePermission(PermissionDTO permissionDTO);
    /**
     * Description :  条件查询权限集合
     * @param permissionDTO 权限信息
     * @return {@link PageInfo<PermissionDTO>}
     * @since 2022/7/4 14:44
     * @author Mu Prince
     */
    PageInfo<PermissionDTO> search(PermissionDTO permissionDTO, Integer current, Integer size);

    List<MenuDTO> getList(Long roleId);
}
