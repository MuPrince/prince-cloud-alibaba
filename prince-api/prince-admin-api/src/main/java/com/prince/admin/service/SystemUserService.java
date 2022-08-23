package com.prince.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.SystemUserDTO;
import com.prince.admin.entity.po.SystemUser;
import com.prince.admin.entity.vo.SystemUserVo;

/**
 * Description : 系统用户
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:36
 */
public interface SystemUserService extends IService<SystemUser> {

    /**
     * Description :  登录
     * @param username 用户名
     * @param password 密码MD5
     * @return {@link SystemUserDTO}
     * @throws
     * @since 2022/7/6 9:45
     * @author Mu Prince
     */
    SystemUserDTO login(String username, String password);
    /**
     * Description :  添加用户
     * @param vo 用户信息
     * @since 2022/7/6 9:46
     * @author Mu Prince
     */
    void addSystemUser(SystemUserVo vo);
    /**
     * Description :  修改用户信息
     * @param userVo 用户信息
     * @since 2022/7/6 9:46
     * @author Mu Prince
     */
    void updateSystemUser(SystemUserVo userVo);
    /**
     * Description :  查询用户列表
     * @param userVo 查询条件
     * @return {@link PageInfo< SystemUserDTO>}
     * @since 2022/7/6 9:47
     * @author Mu Prince
     */
    PageInfo<SystemUserDTO> search(SystemUserVo userVo);
    /**
     * Description :  查询用户
     * @param id 用户id
     * @return {@link SystemUserDTO}
     * @since 2022/7/6 9:48
     * @author Mu Prince
     */
    SystemUserDTO searchById(Long id);

    /**
     * Description :  任命
     * @param userId 用户id
     * @param roleId 角色id
     * @since 2022/7/6 10:07
     * @author Mu Prince
     */
    void appoint(Long userId, Long roleId);
    /**
     * Description : 卸任
     * @param userId 用户id
     * @since 2022/7/6 10:11
     * @author Mu Prince
     */
    void relieve(Long userId);
    /**
     * Description :  启用/禁用
     * @param id 用户id
     * @since 2022/7/6 10:45
     * @author Mu Prince
     */
    void enable(Long id);
}
