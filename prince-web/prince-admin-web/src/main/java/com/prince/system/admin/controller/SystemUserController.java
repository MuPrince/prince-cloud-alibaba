package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.resp.RespResult;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.admin.config.AdministratorConfig;
import com.prince.admin.entity.dto.SystemUserDTO;
import com.prince.admin.entity.vo.SystemUserVo;
import com.prince.admin.entity.vo.UserLogin;
import com.prince.admin.service.SystemUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 用户
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 14:20
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("sys_user")
public class SystemUserController {

    private final SystemUserService systemUserService;

    /**
     * Description :  登录
     * @param userLogin 登录信息
     * @return {@link RespResult< SystemUserDTO>}
     * @throws
     * @since 2022/7/6 10:13
     * @author Mu Prince
     */
    @PostMapping("login")
    public RespResult<SystemUserDTO> login(@Validated @RequestBody UserLogin userLogin) {
        return RespResult.ok(systemUserService.login(userLogin.getUsername(), userLogin.getPassword()));
    }

    /**
     * Description :  添加用户
     * @param userVo 用户信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:13
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> add(@Validated({Add.class}) @RequestBody SystemUserVo userVo) {
        systemUserService.addSystemUser(userVo);
        return RespResult.ok();
    }
    /**
     * Description :  修改用户信息
     * @param userVo 用户信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:13
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> update(@Validated(Edit.class) @RequestBody SystemUserVo userVo) {
        systemUserService.updateSystemUser(userVo);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除用户
     * @param ids id集合
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:14
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids == null || ids.size() <= 0) {
            throw new SystemWebException("选择删除的用户");
        }
        ids.remove(AdministratorConfig.getAdminId());
        systemUserService.removeByIds(ids);
        return RespResult.ok();
    }
    /**
     * Description :  删除用户
     * @param id 用户id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:14
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        if (AdministratorConfig.getAdminId().equals(id)) {
            throw new SystemWebException("系统管理员不能删除");
        }
        systemUserService.removeById(id);
        return RespResult.ok();
    }
    /**
     * Description :  查询用户列表
     * @param userVo 查询条件
     * @return {@link RespResult< PageInfo< SystemUserDTO>>}
     * @throws
     * @since 2022/7/6 10:14
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<SystemUserDTO>> search(@RequestBody SystemUserVo userVo) {
        return RespResult.ok(systemUserService.search(userVo));
    }
    /**
     * Description :  查询用户
     * @param id 用户id
     * @return {@link RespResult<SystemUserDTO>}
     * @throws
     * @since 2022/7/6 10:14
     * @author Mu Prince
     */
    @GetMapping("search/{id}")
    public RespResult<SystemUserDTO> searchById(@PathVariable Long id) {
        return RespResult.ok(systemUserService.searchById(id));
    }
    /**
     * Description :  任命
     * @param userVo 用户信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:15
     * @author Mu Prince
     */
    @PostMapping("appoint")
    public RespResult<?> appoint(@RequestBody SystemUserVo userVo) {
        systemUserService.appoint(userVo.getId(), userVo.getRoleId());
        return RespResult.ok();
    }
    /**
     * Description :  卸任
     * @param id 用户id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/6 10:15
     * @author Mu Prince
     */
    @PostMapping("relieve/{id}")
    public RespResult<?> relieve(@PathVariable Long id) {
        systemUserService.relieve(id);
        return RespResult.ok();
    }
    @PostMapping("enable/{id}")
    public RespResult<?> enable(@PathVariable Long id) {
        systemUserService.enable(id);
        return RespResult.ok();
    }
}
