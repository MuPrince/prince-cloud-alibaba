package com.prince.system.admin.intercepter;

import com.alibaba.fastjson.JSON;
import com.prince.system.admin.constant.RedisCacheKey;
import com.prince.system.admin.constant.RolePermissionConstants;
import com.prince.system.admin.context.SystemUserContext;
import com.prince.system.admin.entity.po.Permission;
import com.prince.system.admin.entity.po.Role;
import com.prince.system.admin.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Description : 权限校验拦截器
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 16:23
 */
@Component
@RequiredArgsConstructor
public class PermissionInterceptor implements HandlerInterceptor {

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    private final RoleService roleService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("权限校验过滤器");
        String uri = request.getRequestURI();
        String method = request.getMethod();
        Long roleId = SystemUserContext.getRoleId();
        System.out.println(roleId);
        if (roleId != 0L) {
            //系统管理员直接放过
            if (roleId.equals(RolePermissionConstants.ROLE_ADMIN_ID)) {
                return true;
            }
            //完全匹配
            List<Permission> permissions0 = cachePermission0(roleId);
            if (permissions0 != null && permissions0.size() > 0 && match0(permissions0, uri, method)) {
                return true;
            }
            //通配符匹配
            List<Permission> permissions1 = cachePermission1(roleId);
            if (permissions1 != null && permissions1.size() > 0 && match1(permissions1, uri, method)) {
                return true;
            }
        }
        response.setContentType("text/html;charset=utf-8");
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        Map<String, Object> message = new HashMap<>();
        message.put("code", HttpServletResponse.SC_UNAUTHORIZED);
        message.put("message", "没有权限");
        response.getWriter().println(JSON.toJSONString(message));
        return false;

    }

    /**
     * Description :  路径完全匹配
     *
     * @param permissions 完全匹配权限列表
     * @param uri         请求路径
     * @param method      请求方式
     * @return boolean
     * @author Mu Prince
     * @since 2022/6/29 15:17
     */
    private boolean match0(List<Permission> permissions, String uri, String method) {
        for (Permission permission : permissions) {
            if (permission != null) {
                if (uri.equals(permission.getUrl())) {
                    try {
                        if (method.equals(permission.getMethod().toUpperCase())) return true;
                        //忽略空指针异常
                    } catch (NullPointerException ignore) {
                    }
                }
            }
        }
        return false;
    }

    /**
     * Description :  通配符方式匹配权限
     *
     * @param permissions 通配符权限列表
     * @param uri         资源路径
     * @param method      请求方式
     * @return boolean
     * @author Mu Prince
     * @since 2022/6/29 15:18
     */
    private boolean match1(List<Permission> permissions, String uri, String method) {
        for (Permission permission : permissions) {
            String regex = permission.getUrl().replaceAll("\\{string}", "\\\\w+").replaceAll("\\{number}", "\\\\d+");
            if (uri.matches(regex)) {
                try {
                    if (method.equals(permission.getMethod().toUpperCase())) return true;
                    //忽略空指针异常
                } catch (NullPointerException ignore) {
                }
            }
        }
        return false;
    }

    /**
     * Description :  获取完全匹配权限列表并冲入缓存
     *
     * @param roleId 角色id
     * @author Mu Prince
     * @since 2022/6/29 14:50
     */
    @SuppressWarnings("unchecked")
    private List<Permission> cachePermission0(Long roleId) {
        List<Permission> permissions0 = (List<Permission>) redisTemplate.boundHashOps(RedisCacheKey.CACHE_PERMISSION_0).get(roleId.toString());
        if (permissions0 == null || permissions0.size() <= 0) {
            List<Role> roles = roleService.queryListByMatchingWay(0);
            for (Role role : roles) {
                if (role != null) {
                    List<Permission> permissions = role.getPermissions();
                    if (permissions != null && permissions.size() > 0) {
                        redisTemplate.boundHashOps(RedisCacheKey.CACHE_PERMISSION_0).put(role.getRid(), permissions);
                    }
                    if (Objects.equals(roleId, role.getRid())) {
                        permissions0 = role.getPermissions();
                    }
                }
            }
        }
        return permissions0;
    }

    /**
     * Description :  获取通配符匹配权限列表并冲入缓存
     *
     * @param roleId 角色id
     * @author Mu Prince
     * @since 2022/6/29 14:50
     */
    @SuppressWarnings("unchecked")
    private List<Permission> cachePermission1(Long roleId) {
        List<Permission> permissions1 = (List<Permission>) redisTemplate.boundHashOps(RedisCacheKey.CACHE_PERMISSION_1).get(roleId.toString());
        if (permissions1 == null || permissions1.size() <= 0) {
            List<Role> roles = roleService.queryListByMatchingWay(1);
            for (Role role : roles) {
                if (role != null) {
                    List<Permission> permissions = role.getPermissions();
                    if (permissions != null && permissions.size() > 0) {
                        redisTemplate.boundHashOps(RedisCacheKey.CACHE_PERMISSION_1).put(role.getRid(), permissions);
                    }
                    if (Objects.equals(roleId, role.getRid())) {
                        permissions1 = role.getPermissions();
                    }
                }
            }
        }
        return permissions1;
    }
}
