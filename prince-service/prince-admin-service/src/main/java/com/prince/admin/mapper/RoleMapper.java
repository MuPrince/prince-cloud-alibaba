package com.prince.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.admin.entity.po.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

/**
 * Description : 角色
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:44
 */
public interface RoleMapper extends BaseMapper<Role> {

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
     * Description :  为角色授权
     * @param roleId 角色id
     * @param ids 权限id列表
     * @since 2022/7/4 11:55
     * @author Mu Prince
     */
    void authorize(@Param("roleId") Long roleId, @Param("ids") Set<Long> ids);
    /**
     * Description :  查询角色拥有的权限
     * @param roleId 角色id
     * @return {@link Set<Long>}
     * @throws
     * @since 2022/7/4 11:56
     * @author Mu Prince
     */
    Set<Long> queryRolePermissions(Long roleId);
    /**
     * Description :  为角色设置菜单
     * @param roleId 角色id
     * @param ids 菜单id集合
     * @since 2022/7/21 15:11
     * @author Mu Prince
     */
    void access(@Param("roleId") Long roleId, @Param("ids") Set<Long> ids);
    /**
     * Description :  查询角色的所有菜单
     * @param roleId 角色id
     * @return {@link Set<Long>}
     * @since 2022/7/21 15:13
     * @author Mu Prince
     */
    Set<Long> queryRoleMenus(Long roleId);
    /**
     * Description :  删除角色的所有菜单
     * @param id 角色id
     * @since 2022/7/21 15:02
     * @author Mu Prince
     */
    void delRoleMenuByRoleId(Long id);
    /**
     * Description : 删除角色的所有权限
     * @param id 角色id
     * @since 2022/7/21 15:02
     * @author Mu Prince
     */
    void delRolePermissionByRoleId(Long id);
}
