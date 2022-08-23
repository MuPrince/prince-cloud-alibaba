package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.dto.PermissionDTO;
import com.prince.admin.entity.po.Permission;
import com.prince.admin.entity.vo.PermissionVo;
import com.prince.admin.service.PermissionService;
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
@RequestMapping("permission")
@RequiredArgsConstructor
public class PermissionController {

    private final PermissionService permissionService;

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
        permissionService.addPermission(permissionDTO);
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
        permissionService.updatePermission(permissionDTO);
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
            throw new SystemWebException("请选择需要删除的权限");
        }
        permissionService.removeByIds(ids);
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
        permissionService.removeById(id);
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
        EntityTransformationUtil<PermissionDTO> transform = new EntityTransformationUtil<>();
        return RespResult.ok(permissionService.search(transform.transformTo(permissionVo, PermissionDTO.class), permissionVo.getCurrent(), permissionVo.getSize()));
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
        Permission permission = permissionService.getById(id);
        EntityTransformationUtil<PermissionDTO> transform = new EntityTransformationUtil<>();
        return RespResult.ok(transform.transformTo(permission, PermissionDTO.class));
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
        return RespResult.ok(permissionService.queryByRoleId(roleId));
    }
    @GetMapping("list/{roleId}")
    public RespResult<List<MenuDTO>> getList(@PathVariable Long roleId) {
        return RespResult.ok(permissionService.getList(roleId));
    }
}
