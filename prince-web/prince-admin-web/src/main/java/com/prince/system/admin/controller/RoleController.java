package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.admin.entity.dto.RoleDTO;
import com.prince.admin.entity.vo.RoleMenuVo;
import com.prince.admin.entity.vo.RolePermissionVo;
import com.prince.admin.entity.vo.RoleVo;
import com.prince.admin.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 角色管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 17:40
 */
@RestController
@RequestMapping("role")
@RequiredArgsConstructor
public class RoleController {

    private final RoleService roleService;

    /**
     * Description :  查询角色列表
     * @param roleDTO 角色数据传输对象
     * @return {@link com.prince.admin.entity.dto.RoleDTO}
     * @since 2022/6/29 18:23
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<RoleDTO>> searchList(@RequestBody RoleVo roleVo) {
        EntityTransformationUtil<RoleDTO> transform = new EntityTransformationUtil<>();
        return RespResult.ok(roleService.queryList(transform.transformTo(roleVo, RoleDTO.class), roleVo.getCurrent(), roleVo.getSize()));
    }

    /**
     * Description :  查询角色详细信息
     * @param roleId 角色数据传输对象
     * @return {@link com.prince.admin.entity.dto.RoleDTO}
     * @since 2022/6/29 18:23
     * @author Mu Prince
     */
    @GetMapping("search/{roleId}")
    public RespResult<RoleDTO> searchOne(@PathVariable Long roleId) {
        return RespResult.ok(roleService.queryOne(roleId));
    }

    /**
     * Description :  保存角色，id不为空时修改，id为空时添加
     * @param roleDTO 角色信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/4 11:59
     * @author Mu Prince
     */
    @PostMapping("save")
    public RespResult<?> saveRole(@Validated @RequestBody RoleDTO roleDTO) {
        roleService.saveRole(roleDTO);
        return RespResult.ok();
    }
    /**
     * Description :  添加角色
     * @param roleDTO 角色信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/4 11:59
     * @author Mu Prince
     */
    @PutMapping("add")
    public RespResult<?> addRole(@Validated(Add.class) @RequestBody RoleDTO roleDTO) {
        roleService.addRole(roleDTO);
        return RespResult.ok();
    }
    /**
     * Description :  修改角色
     * @param roleDTO 角色信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/4 12:00
     * @author Mu Prince
     */
    @PostMapping("edit")
    public RespResult<?> editRole(@Validated(Edit.class) @RequestBody RoleDTO roleDTO) {
        roleService.editRole(roleDTO);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除角色
     * @param ids 角色id集合
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/4 14:48
     * @author Mu Prince
     */
    @DeleteMapping("del")
    public RespResult<?> deleteRole(List<Long> ids) {
        if (ids == null || ids.size() <= 0) {
            throw new SystemWebException("请选择需要删除的角色");
        }
        roleService.delByIds(ids);
        return RespResult.ok();
    }
    /**
     * Description :  删除指定角色
     * @param  id 角色id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/4 14:48
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> deleteRole(@PathVariable Long id) {
        roleService.delById(id);
        return RespResult.ok();
    }
    @PostMapping("setMenu")
    public RespResult<?> setMenu(@Validated @RequestBody RoleMenuVo roleMenuVo) {
        roleService.setMenu(roleMenuVo);
        return RespResult.ok();
    }

    @PostMapping("setPermission")
    public RespResult<?> setPermission(@Validated @RequestBody RolePermissionVo rolePermissionVo) {
        roleService.setPermission(rolePermissionVo);
        return RespResult.ok();
    }

    @GetMapping("list")
    public RespResult<List<RoleDTO>> getList() {
        return RespResult.ok(roleService.roleList());
    }
}
