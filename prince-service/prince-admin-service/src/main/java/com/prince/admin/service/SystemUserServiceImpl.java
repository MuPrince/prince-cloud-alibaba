package com.prince.admin.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.admin.config.AdministratorConfig;
import com.prince.admin.entity.dto.SystemUserDTO;
import com.prince.admin.entity.po.Permission;
import com.prince.admin.entity.po.SystemUser;
import com.prince.admin.entity.vo.SystemUserVo;
import com.prince.admin.mapper.PermissionMapper;
import com.prince.admin.transformation.PermissionTransformation;
import com.prince.common.constant.RedisCacheKey;
import com.prince.common.constant.RedisKey;
import com.prince.common.enums.SystemRole;
import com.prince.admin.mapper.SystemUserMapper;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.util.JWTUtil;
import com.prince.encrypt.MD5Coder;
import com.prince.common.entity.UserTemp;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description : 系统用户
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:36
 */
@Service
@RequiredArgsConstructor
public class SystemUserServiceImpl extends ServiceImpl<SystemUserMapper, SystemUser> implements SystemUserService {

    private final RedisTemplate<String, Object> redisTemplate;

    private final AdministratorConfig administratorConfig;

    private final SystemUserMapper systemUserMapper;

    private final PermissionMapper permissionMapper;

    private final EntityTransformationUtil<SystemUser, SystemUserVo> transformer = new EntityTransformationUtil<>(SystemUser.class, SystemUserVo.class);

    private final EntityTransformationUtil<SystemUser, SystemUserDTO> transformerDTO = new EntityTransformationUtil<>(SystemUser.class, SystemUserDTO.class);

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
            throw new AdminServiceException("用户不存在");
        } else {
            String psw = user.getPassword();
            if (!psw.equals(MD5Coder.encodeMD5(password))) {
                throw new AdminServiceException("密码错误");
            } else {
                if (!user.getStatus()) {
                    throw new AdminServiceException("该账号已经被禁用");
                }
                //记录用户登录时间
                user.setLoginTime(new Date());
                //检查用户数据
                if (user.getRoleId() == null) {
                    throw new AdminServiceException("用户未分配角色，不能登录");
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
                Long roleId = user.getRoleId();

                //缓存登录用户的角色权限
                List<Permission> match1 = permissionMapper.selectMatch1ByRoleId(roleId);
                List<Permission> match0 = permissionMapper.selectMatch0ByRoleId(roleId);
                if (match1 != null && match1.size() > 0) {
                    redisTemplate.boundHashOps(RedisKey.PRINCE_PERMISSION_1).put(roleId.toString(), PermissionTransformation.transformList(match1));
                }
                if (match0 != null && match0.size() > 0) {
                    redisTemplate.boundHashOps(RedisKey.PRINCE_PERMISSION_0).put(roleId.toString(), PermissionTransformation.transformList(match0));
                }

                //生成token
                String token = JWTUtil.createSystemToken(user.getId());

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

                //缓存用户信息
                UserTemp temp = new UserTemp();
                temp.setUserId(user.getId());
                temp.setNickname(user.getNickname());
                temp.setHead(user.getHead());
                temp.setRoleId(user.getRoleId());
                redisTemplate.boundHashOps(RedisCacheKey.SYSTEM_USER_ONLINE).put(user.getId(), temp);

                //缓存token
                redisTemplate.boundHashOps(RedisKey.PRINCE_TOKEN_ADMIN).put(user.getId(), token);
                return userDTO;
            }
        }
    }

    @Override
    public void addSystemUser(SystemUserVo vo) {
        SystemUser user = systemUserMapper.selectByUsername(vo.getUsername());
        if (user != null) throw new AdminServiceException("用户名已存在");
        SystemUser systemUser = transformer.transformToFirst(vo);
        if (systemUser.getHead() == null) {
            systemUser.setHead(PrinceConstants.DEFAULT_HEAD_PICTURE);
        }
        systemUser.setPassword(MD5Coder.encodeMD5(systemUser.getPassword()));
        systemUserMapper.insert(systemUser);
    }

    @Override
    public void updateSystemUser(SystemUserVo userVo) {
        SystemUser systemUser = transformer.transformToFirst(userVo);
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


        return transformerDTO.transformPageToSecond(page);
    }

    @Override
    public SystemUserDTO searchById(Long id) {
        return transformerDTO.transformToSecond(systemUserMapper.selectById(id));
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
            throw new AdminServiceException("不能操作系统管理员");
        }
        appoint(userId, SystemRole.NORMAL.id);
    }

    @Override
    public void enable(Long id) {
        if (AdministratorConfig.ADMIN_ID.equals(id)) {
            throw new AdminServiceException("不能操作系统管理员");
        }
        SystemUser user = systemUserMapper.selectById(id);
        Boolean status = user.getStatus();
        user.setStatus(!status);

        systemUserMapper.updateById(user);
    }
}
