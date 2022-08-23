package com.prince.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.po.Menu;
import com.prince.admin.entity.vo.MenuVo;
import com.prince.admin.service.SystemMenuService;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:41
 */
@RestController
@RequestMapping("sys/menu")
@RequiredArgsConstructor
public class SystemMenuController {

    private final SystemMenuService systemMenuService;

    private final EntityTransformationUtil<Menu, MenuDTO> transformer = new EntityTransformationUtil<>(Menu.class, MenuDTO.class);
    /**
     * Description : 添加
     * @param menuDTO 菜单信息
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:43
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> add(@Validated(Add.class) @RequestBody MenuDTO menuDTO) {
        systemMenuService.addMenu(menuDTO);
        return RespResult.ok();
    }
    /**
     * Description :  修改菜单
     * @param menuDTO 菜单信息
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:43
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> update(@Validated(Edit.class) @RequestBody MenuDTO menuDTO) {
        systemMenuService.updateMenu(menuDTO);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除菜单
     * @param ids 菜单id集合
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:43
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && !ids.isEmpty()) {
            systemMenuService.removeByIds(ids);
        }
        return RespResult.ok();
    }
    /**
     * Description :  删除菜单
     * @param id 菜单id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/7 14:44
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> delMenu(@PathVariable Long id) {
        systemMenuService.removeById(id);
        return RespResult.ok();
    }
    /**
     * Description :  条件查询菜单列表
     * @param menuVo 查询条件
     * @return {@link RespResult< PageInfo< MenuDTO>>}
     * @throws
     * @since 2022/7/7 14:44
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<MenuDTO>> search(@RequestBody MenuVo menuVo) {
        return RespResult.ok(systemMenuService.search(menuVo));
    }
    /**
     * Description :  查询菜单详情
     * @param id 菜单id
     * @return {@link RespResult< MenuDTO>}
     * @throws
     * @since 2022/7/7 14:44
     * @author Mu Prince
     */
    @GetMapping("search/{id}")
    public RespResult<MenuDTO> searchOne(@PathVariable Long id) {
        return RespResult.ok(transformer.transformToSecond(systemMenuService.getById(id)));
    }
    /**
     * Description : 查询当前用户拥有的菜单
     * @return {@link RespResult< List< MenuDTO>>}
     * @since 2022/7/7 14:44
     * @author Mu Prince
     */
    @GetMapping("tree")
    public RespResult<List<MenuDTO>> getCurrentTree() {
        return RespResult.ok(systemMenuService.getCurrentTree());
    }

    /**
     * Description : 查询整棵菜单树 并标记指定角色的菜单
     * @return {@link RespResult< List< MenuDTO>>}
     * @since 2022/7/7 14:44
     * @author Mu Prince
     */
    @GetMapping("tree/{roleId}")
    public RespResult<List<MenuDTO>> getTree(@PathVariable Long roleId) {
        return RespResult.ok(systemMenuService.getTree(roleId));
    }
    /**
     * Description :  查询整棵树
     * @return {@link RespResult< List< MenuDTO>>}
     * @since 2022/7/21 16:07
     * @author Mu Prince
     */
    @GetMapping("fullTree")
    public RespResult<List<MenuDTO>> getFullTree() {
        return RespResult.ok(systemMenuService.getFullTree());
    }
}
