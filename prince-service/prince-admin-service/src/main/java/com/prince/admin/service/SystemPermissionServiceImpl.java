package com.prince.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.vo.PermissionVo;
import com.prince.common.constant.SystemUserRoleConstants;
import com.prince.server.context.SystemUserContext;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.dto.PermissionDTO;
import com.prince.admin.entity.po.Menu;
import com.prince.admin.entity.po.Permission;
import com.prince.admin.mapper.MenuMapper;
import com.prince.admin.mapper.PermissionMapper;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.util.EntityTransformationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:46
 */
@Service
@RequiredArgsConstructor
public class SystemPermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements SystemPermissionService {
    private final PermissionMapper permissionMapper;

    private final MenuMapper menuMapper;

    private final EntityTransformationUtil<Permission, PermissionDTO> transformer = new EntityTransformationUtil<>(Permission.class, PermissionDTO.class);

    public List<PermissionDTO> queryByRoleId(Long roleId) {
        List<PermissionDTO> permissionDTOS = new ArrayList<>();
        List<Permission> permissions = permissionMapper.selectByRoleId(roleId);
        permissions.forEach(permission -> {
            if (permission != null) {
                permissionDTOS.add(transformer.transformToSecond(permission));
            }
        });
        return permissionDTOS;
    }

    @Override
    public List<Permission> queryByMatchingWay(int way) {
        return permissionMapper.selectList(new LambdaQueryWrapper<Permission>().eq(Permission::getMatchingWay, way));
    }

    @Override
    public void addPermission(PermissionDTO permissionDTO) {
        Permission permission = transformer.transformToFirst(permissionDTO);
        //检查权限是否已经存在
        Long permissionId;
        if ((permissionId = permission.getPid()) != null) {
            Permission oldPermission = permissionMapper.selectById(permissionId);
            if (oldPermission != null) {
                throw new AdminServiceException("权限已经存在，不可重复添加");
            }
        }
        //检查是否重复添加
        LambdaQueryWrapper<Permission> query = new LambdaQueryWrapper<>();
        query.eq(Permission::getUrl, permission.getUrl()).eq(Permission::getMethod, permission.getMethod());
        if (permissionMapper.exists(query)) {
            throw new AdminServiceException("权限已经存在，不可重复添加");
        }
        //转大写
        permission.setMethod(permission.getMethod().toUpperCase());
        permissionMapper.insert(permission);
    }

    @Override
    public void updatePermission(PermissionDTO permissionDTO) {
        Permission permission = transformer.transformToFirst(permissionDTO);
        if (permission.getPid() != null) {
            permissionMapper.updateById(permission);
        }
    }

    @Override
    public PageInfo<PermissionDTO> search(PermissionVo vo) {
        //分页
        PageHelper.startPage(vo.getCurrent(), vo.getSize());
        PageInfo<Permission> page = PageInfo.of(permissionMapper.searchList(vo));
        return transformer.transformPageToSecond(page);
    }

    @Override
    public List<MenuDTO> getList(Long roleId) {
        Long currentRole = SystemUserContext.getRoleId();
        if (!(SystemUserRoleConstants.ROLE_ADMIN_ID.equals(currentRole))) throw new AdminServiceException("没有权限");
        List<Menu> menus = menuMapper.selectList(null);
        Map<Long, MenuDTO> menuMap = new HashMap<>();
        EntityTransformationUtil<Menu, MenuDTO> menuTransformer = new EntityTransformationUtil<>(Menu.class, MenuDTO.class);
        for (Menu menu : menus) {
            menuMap.put(menu.getMid(), menuTransformer.transformToSecond(menu));
        }
        List<Permission> ownedPermission = permissionMapper.selectByRoleId(roleId);
        Set<Long> owned = new HashSet<>();
        for (Permission permission : ownedPermission) {
            owned.add(permission.getPid());
        }
        List<Permission> all = permissionMapper.selectList(null);
        for (Permission permission : all) {
            PermissionDTO dto = transformer.transformToSecond(permission);
            dto.setHasPermission(owned.contains(permission.getPid()));
            MenuDTO menu = menuMap.get(permission.getMenuId());

            if (menu.permissions == null) {
                menu.permissions = new ArrayList<>();
            }
            menu.permissions.add(dto);
        }

        return new ArrayList<>(menuMap.values());
    }
}
