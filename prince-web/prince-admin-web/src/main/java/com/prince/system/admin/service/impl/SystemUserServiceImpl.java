package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.exception.SystemWebException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.util.JWTUtil;
import com.prince.encrypt.MD5Coder;
import com.prince.admin.config.AdministratorConfig;
import com.prince.admin.entity.dto.SystemUserDTO;
import com.prince.admin.entity.po.SystemUser;
import com.prince.admin.entity.vo.SystemUserVo;
import com.prince.admin.enums.SystemRole;
import com.prince.admin.mapper.SystemUserMapper;
import com.prince.admin.service.SystemUserService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Description : 系统用户
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:36
 */
@Service
@RequiredArgsConstructor
public class SystemUserServiceImpl extends ServiceImpl<SystemUserMapper, SystemUser> implements SystemUserService {

    private final AdministratorConfig administratorConfig;

    private final SystemUserMapper systemUserMapper;

    @Override
    public SystemUserDTO login(String username, String password) {
        SystemUser user;
        //判断当前登录的是否是Administrator
        if (administratorConfig.getUsername().equals(username)) {
            user = systemUserMapper.selectByUsername(username);
            if (user == null) {
                user = administratorConfig.getAdministrator();
            }
        } else {
            user = systemUserMapper.selectByUsername(username);
        }
        if (user == null) {
            throw new SystemWebException("用户不存在");
        } else {
            String psw = user.getPassword();
            if (!psw.equals(MD5Coder.encodeMD5(password))) {
                throw new SystemWebException("密码错误");
            } else {
                if (!user.getStatus()) {
                    throw new SystemWebException("该账号已经被禁用");
                }
                //记录用户登录时间
                user.setLoginTime(new Date());
                //检查用户数据
                if (user.getRoleId() == null) {
                    throw new SystemWebException("用户未分配角色，不能登录");
                }
                if (user.getHead() == null) {
                    user.setHead(PrinceConstants.DEFAULT_HEAD_PICTURE);
                }
                if (user.getNickname() == null) {
                    String nickname = "系统用户" + user.getId();
                    user.setNickname(nickname);
                }
                //修改用户登录时间
                systemUserMapper.updateById(user);

                //生成token
                Map<String, Object> data = new HashMap<>();
                data.put("userId", user.getId());
                data.put("head", user.getHead());
                data.put("nickname", user.getNickname());
                data.put("role", user.getRoleId());
                String token = JWTUtil.createToken(data);

                //组装返回
                SystemUserDTO userDTO = new SystemUserDTO();
                userDTO.setHead(user.getHead());
                userDTO.setId(user.getId());
                userDTO.setUsername(user.getUsername());
                userDTO.setStatus(user.getStatus());
                userDTO.setLoginTime(user.getLoginTime());
                userDTO.setNickname(user.getNickname());
                userDTO.setRoleId(user.getRoleId());
                userDTO.setToken(token);

                return userDTO;
            }
        }
    }

    @Override
    public void addSystemUser(SystemUserVo userVo) {
        SystemUser user = systemUserMapper.selectByUsername(userVo.getUsername());
        if (user != null) throw new SystemWebException("用户名已存在");
        EntityTransformationUtil<SystemUser> transform = new EntityTransformationUtil<>();
        SystemUser systemUser = transform.transformTo(userVo, SystemUser.class);
        if (systemUser.getHead() == null) {
            systemUser.setHead(PrinceConstants.DEFAULT_HEAD_PICTURE);
        }
        systemUser.setPassword(MD5Coder.encodeMD5(systemUser.getPassword()));
        systemUserMapper.insert(systemUser);
    }

    @Override
    public void updateSystemUser(SystemUserVo userVo) {
        EntityTransformationUtil<SystemUser> transform = new EntityTransformationUtil<>();
        SystemUser systemUser = transform.transformTo(userVo, SystemUser.class);
        if (StringUtils.isNotBlank(userVo.getPassword())) systemUser.setPassword(MD5Coder.encodeMD5(userVo.getPassword()));
        systemUserMapper.updateById(systemUser);
    }

    @Override
    public PageInfo<SystemUserDTO> search(SystemUserVo user) {
//        LambdaQueryWrapper<SystemUser> query = new LambdaQueryWrapper<>();
//        if (user.getNickname() != null) {
//            query.like(SystemUser::getNickname, user.getNickname());
//        }
//        if (user.getStatus() != null) {
//            query.eq(SystemUser::getStatus, user.getStatus());
//        }
//        if (user.getUsername() != null) {
//            query.like(SystemUser::getUsername, user.getUsername());
//        }
//        if (user.getLoginTimeStart() != null && user.getLoginTimeEnd() != null && user.getLoginTimeStart().before(user.getLoginTimeEnd())) {
//            query.between(SystemUser::getLoginTime, user.getLoginTimeStart(), user.getLoginTimeEnd());
//        }
        PageHelper.startPage(user.getCurrent(), user.getSize());
        PageInfo<SystemUser> page = PageInfo.of(systemUserMapper.selectUserList(user));
        EntityTransformationUtil<SystemUserDTO> transform = new EntityTransformationUtil<>();

        return transform.transformPageFrom(page, SystemUserDTO.class);
    }

    @Override
    public SystemUserDTO searchById(Long id) {
        return new EntityTransformationUtil<SystemUserDTO>().transformTo(systemUserMapper.selectById(id), SystemUserDTO.class);
    }

    @Override
    public void appoint(Long userId, Long roleId) {
        if (userId != null && roleId != null && userId != 1L) {
            systemUserMapper.setRoleIdByUserId(userId, roleId);
        }
    }

    @Override
    public void relieve(Long userId) {
        if (AdministratorConfig.ADMIN_ID.equals(userId)) {
            throw new SystemWebException("不能操作系统管理员");
        }
        appoint(userId, SystemRole.NORMAL.id);
    }

    @Override
    public void enable(Long id) {
        if (AdministratorConfig.ADMIN_ID.equals(id)) {
            throw new SystemWebException("不能操作系统管理员");
        }
        SystemUser user = systemUserMapper.selectById(id);
        Boolean status = user.getStatus();
        user.setStatus(!status);

        systemUserMapper.updateById(user);
    }
}
