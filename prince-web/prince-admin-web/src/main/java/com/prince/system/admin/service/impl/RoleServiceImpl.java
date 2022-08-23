package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.admin.config.AdministratorConfig;
import com.prince.system.admin.entity.dto.RoleDTO;
import com.prince.system.admin.entity.po.Role;
import com.prince.system.admin.entity.po.SystemUser;
import com.prince.system.admin.entity.vo.RoleMenuVo;
import com.prince.system.admin.entity.vo.RolePermissionVo;
import com.prince.system.admin.enums.SystemRole;
import com.prince.system.admin.mapper.RoleMapper;
import com.prince.system.admin.mapper.SystemUserMapper;
import com.prince.system.admin.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;


/**
 * Description : 角色
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:43
 */
@Service
@RequiredArgsConstructor
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
    private final RoleMapper roleMapper;

    private final SystemUserMapper userMapper;

    @Override
    public List<Role> queryListByMatchingWay(Integer way) {
        return roleMapper.queryListByMatchingWay(way);
    }

    @Override
    public PageInfo<RoleDTO> queryList(RoleDTO roleDTO, Integer current, Integer size) {
        LambdaQueryWrapper<Role> query = new LambdaQueryWrapper<>();
        query.ne(Role::getRid, SystemRole.ADMIN.id);
        query.ne(Role::getRid, SystemRole.NORMAL.id);
        if (roleDTO.getRoleName() != null) query.like(Role::getRoleName, roleDTO.getRoleName());
        if (roleDTO.getLevel() != null) query.eq(Role::getLevel, roleDTO.getLevel());
        PageHelper.startPage(current, size);
        PageInfo<Role> page = PageInfo.of(roleMapper.selectList(query.orderByAsc(Role::getLevel)));
        EntityTransformationUtil<RoleDTO> transform = new EntityTransformationUtil<>();
        return transform.transformPageFrom(page, RoleDTO.class);
    }

    @Override
    public RoleDTO queryOne(Long roleId) {
        if (SystemRole.ADMIN.id.equals(roleId) || SystemRole.NORMAL.id.equals(roleId)) {
            return null;
        }
        return RoleDTO.toRoleDTO(roleMapper.selectById(roleId));
    }

    @Override
    @Transactional
    public void saveRole(RoleDTO roleDTO) {
        Role role = RoleDTO.toRole(roleDTO);
        if (role.getRid() == null) {
            roleMapper.insert(role);
        } else {
            roleMapper.updateById(role);
        }
    }

    @Override
    @Transactional
    public void addRole(RoleDTO roleDTO) {
        Role role = RoleDTO.toRole(roleDTO);
        roleMapper.insert(role);
    }

    @Override
    @Transactional
    public void editRole(RoleDTO roleDTO) {
        Role role = RoleDTO.toRole(roleDTO);
        roleMapper.updateById(role);
    }

    @Override
    public void delById(Long id) {
        if (SystemRole.ADMIN.id.equals(id)) throw new SystemWebException("系统管理员不能删除!");
        if (SystemRole.NORMAL.id.equals(id)) throw new SystemWebException("普通角色不能删除!");

        //修改当前角色的用户为普通用户
        List<SystemUser> systemUsers = userMapper.selectList(new LambdaQueryWrapper<SystemUser>().eq(SystemUser::getRoleId, id));
        for (SystemUser user : systemUsers) {
            if (AdministratorConfig.ADMIN_ID.equals(user.getId())) {
                continue;
            }
            userMapper.setRoleIdByUserId(user.getId(), SystemRole.NORMAL.id);
        }
        //删除角色的权限
        roleMapper.delRolePermissionByRoleId(id);
        //删除角色的菜单
        roleMapper.delRoleMenuByRoleId(id);
        //删除角色
        roleMapper.deleteById(id);
    }

    @Override
    public void delByIds(List<Long> ids) {
        for (Long id : ids) {
            delById(id);
        }
    }

    @Override
    public List<RoleDTO> roleList() {
        List<Role> roles = roleMapper.selectList(new LambdaQueryWrapper<Role>().ne(Role::getRid, SystemRole.ADMIN.id));
        EntityTransformationUtil<RoleDTO> transform = new EntityTransformationUtil<>();
        return transform.transformListFrom(roles, RoleDTO.class);
    }

    @Override
    public void setMenu(RoleMenuVo roleMenuVo) {
        Set<Long> menus = roleMapper.queryRoleMenus(roleMenuVo.getRoleId());
        //判断是否发生变化
        if (hasChange(menus, roleMenuVo.getMenuIds())) {
            //删除用户的菜单
            roleMapper.delRoleMenuByRoleId(roleMenuVo.getRoleId());
            //重新设置菜单
            roleMapper.access(roleMenuVo.getRoleId(), roleMenuVo.getMenuIds());
        }
    }

    @Override
    public void setPermission(RolePermissionVo rolePermissionVo) {
        Set<Long> menus = roleMapper.queryRolePermissions(rolePermissionVo.getRoleId());

        //判断是否发生变化
        if (hasChange(menus, rolePermissionVo.getPermissions())) {
            //删除用户的权限
            roleMapper.delRolePermissionByRoleId(rolePermissionVo.getRoleId());
            if (rolePermissionVo.getPermissions() != null && rolePermissionVo.getPermissions().size() > 0) {
                //重新授权
                roleMapper.authorize(rolePermissionVo.getRoleId(), rolePermissionVo.getPermissions());
            }
        }
    }

    private boolean hasChange(Set<Long> old, Set<Long> now) {
        if (old != null && old.size() > 0) {
            if (now != null && now.size() > 0) {
                if (old.size() == now.size()) {
                    return !old.containsAll(now);
                }
                return true;
            }
            return true;
        }
        return now != null;
    }
}
