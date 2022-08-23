package com.prince.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.RoleDTO;
import com.prince.admin.entity.po.Role;
import com.prince.admin.entity.vo.RoleMenuVo;
import com.prince.admin.entity.vo.RolePermissionVo;
import com.prince.admin.entity.vo.RoleVo;

import java.util.List;

/**
 * Description : 角色
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:43
 */
public interface SystemRoleService extends IService<Role> {

    /**
     * Description :  根据匹配方式查询权限列表
     * @param way 匹配方式。0：完全匹配；1：通配符匹配
     * @return java.util.List<com.prince.system.entity.po.Role>
     * @throws 
     * @since 2022/6/29 15:57
     * @author Mu Prince
     */
    List<Role> queryListByMatchingWay(Integer way);

    /**
     * Description :  根据条件查询角色
     * @param vo 角色
     * @return {@link List<com.prince.admin.entity.dto.RoleDTO>}
     * @throws
     * @since 2022/6/29 18:34
     * @author Mu Prince
     */
    PageInfo<RoleDTO> queryList(RoleVo vo);
    /**
     * Description :  根据id查询角色详细信息
     * @param roleId  角色id
     * @return {@link com.prince.admin.entity.dto.RoleDTO}
     * @since 2022/6/29 18:35
     * @author Mu Prince
     */
    RoleDTO queryOne(Long roleId);

    /**
     * Description :  添加角色
     * @param roleDTO 角色信息
     * @since 2022/7/2 16:56
     * @author Mu Prince
     */
    void addRole(RoleDTO roleDTO);
    /**
     * Description :  修改角色
     * @param roleDTO 角色信息
     * @since 2022/7/2 16:56
     * @author Mu Prince
     */
    void editRole(RoleDTO roleDTO);

    /**
     * Description :  保存角色信息
     * @param roleDTO 角色信息
     * @since 2022/7/4 12:01
     * @author Mu Prince
     */
    void saveRole(RoleDTO roleDTO);

    void delById(Long id);

    void delByIds(List<Long> ids);

    /**
     * Description :  查询全部角色列表
     * @return {@link List< RoleDTO>}
     * @since 2022/7/18 16:42
     * @author Mu Prince
     */
    List<RoleDTO> roleList();

    void setMenu(RoleMenuVo roleMenuVo);

    void setPermission(RolePermissionVo rolePermissionVo);
}
