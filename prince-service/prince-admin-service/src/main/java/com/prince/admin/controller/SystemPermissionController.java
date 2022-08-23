package com.prince.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.dto.PermissionDTO;
import com.prince.admin.entity.po.Permission;
import com.prince.admin.entity.vo.PermissionVo;
import com.prince.admin.service.SystemPermissionService;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 14:08
 */
@RestController
@RequestMapping("sys/permission")
@RequiredArgsConstructor
public class SystemPermissionController {

    private final SystemPermissionService systemPermissionService;

    private final EntityTransformationUtil<Permission, PermissionDTO> transformer = new EntityTransformationUtil<>(Permission.class, PermissionDTO.class);

    /**
     * Description :  添加权限
     *
     * @param permissionDTO 权限信息
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:43
     */
    @PutMapping
    public RespResult<?> addPermission(@Validated(Add.class) @RequestBody PermissionDTO permissionDTO) {
        systemPermissionService.addPermission(permissionDTO);
        return RespResult.ok();
    }

    /**
     * Description :  修改权限
     *
     * @param permissionDTO 权限信息
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:44
     */
    @PostMapping
    public RespResult<?> updatePermission(@Validated(Edit.class) @RequestBody PermissionDTO permissionDTO) {
        systemPermissionService.updatePermission(permissionDTO);
        return RespResult.ok();
    }

    /**
     * Description :  批量删除权限
     *
     * @param ids 权限id集合
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:44
     */
    @DeleteMapping
    public RespResult<?> deletePermission(@RequestBody List<Long> ids) {
        if (ids == null || ids.size() <= 0) {
            throw new AdminServiceException("请选择需要删除的权限");
        }
        systemPermissionService.removeByIds(ids);
        return RespResult.ok();
    }

    /**
     * Description :  根据id删除指定权限
     *
     * @param id 权限id
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:44
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> deletePermissionById(@PathVariable Long id) {
        systemPermissionService.removeById(id);
        return RespResult.ok();
    }

    /**
     * Description :  条件查询权限集合
     *
     * @param permissionVo 权限信息
     * @return {@link RespResult< PageInfo< PermissionDTO>>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:44
     */
    @PostMapping("search")
    public RespResult<PageInfo<PermissionDTO>> getPermissionList(@RequestBody PermissionVo permissionVo) {
        return RespResult.ok(systemPermissionService.search(permissionVo));
    }

    /**
     * Description :  查询权限详细信息
     *
     * @param id 权限id
     * @return {@link RespResult<?>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:45
     */
    @GetMapping("search/{id}")
    public RespResult<?> getPermission(@PathVariable Long id) {
        Permission permission = systemPermissionService.getById(id);
        return RespResult.ok(transformer.transformToSecond(permission));
    }

    /**
     * Description :  根据角色id查询权限集合
     *
     * @param roleId 角色id
     * @return {@link RespResult< List< PermissionDTO>>}
     * @throws
     * @author Mu Prince
     * @since 2022/7/4 14:45
     */
    @GetMapping("getByRoleId/{roleId}")
    public RespResult<List<PermissionDTO>> getPermissionsByRoleId(@PathVariable Long roleId) {
        return RespResult.ok(systemPermissionService.queryByRoleId(roleId));
    }
    @GetMapping("list/{roleId}")
    public RespResult<List<MenuDTO>> getList(@PathVariable Long roleId) {
        return RespResult.ok(systemPermissionService.getList(roleId));
    }
}
