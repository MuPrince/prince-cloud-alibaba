package com.prince.gateway.permission;

import com.alibaba.fastjson.JSONObject;
import com.prince.common.constant.RedisCacheKey;
import com.prince.common.constant.RedisKey;
import com.prince.common.entity.PermissionTemp;
import com.prince.common.entity.UserTemp;
import com.prince.common.enums.SystemRole;
import lombok.RequiredArgsConstructor;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : 鉴权拦截
 *
 * @author Mu Prince <br\>
 * @since 2022/8/2 11:03
 */
@Component
@RequiredArgsConstructor
public class PermissionInterceptor {

    private final RedisTemplate<String, Object> redisTemplate;

    private final RedissonClient redisson;

    private static final List<String> pass = new ArrayList<>();

    static {
        pass.add("/sys/menu/tree");
    }

    @SuppressWarnings("unchecked")
    public boolean identification(Long userId, String uri, String method) {
        UserTemp userTemp = (UserTemp) redisTemplate.boundHashOps(RedisCacheKey.SYSTEM_USER_ONLINE).get(userId.toString());
        if (userTemp == null) {
            return false;
        }
        Long role = userTemp.getRoleId();
        if (SystemRole.ADMIN.id.equals(role)) {
            return true;
        }
        //放过登陆
        if (pass.contains(uri)) {
            return true;
        }
        if (role != 0L) {
            //完全匹配
            List<PermissionTemp> match0 = (List<PermissionTemp>) redisTemplate.boundHashOps(RedisKey.PRINCE_PERMISSION_0).get(role.toString());
            if (match0 != null && match0.size() > 0 && match0(match0, uri, method)) {
                return true;
            }
            List<PermissionTemp> match1 = (List<PermissionTemp>) redisTemplate.boundHashOps(RedisKey.PRINCE_PERMISSION_1).get(role.toString());
            //通配符匹配
            if (match1 != null && match1.size() > 0 && match1(match1, uri, method)) {
                return true;
            }
        }
        return false;
    }


    /**
     * Description :  路径完全匹配
     *
     * @param permissions   完全匹配权限列表
     * @param uri   权限描述符
     * @return boolean
     * @author Mu Prince
     * @since 2022/6/29 15:17
     */
    private boolean match0(List<PermissionTemp> permissions, String uri, String method) {
        for (PermissionTemp p : permissions) {
            if (uri.equals(p.getUrl())) {
                if (method.equals(p.getMethod())) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * Description :  通配符方式匹配权限
     *
     * @param permissions 通配符权限列表
     * @param uri   权限描述符
     * @return boolean
     * @author Mu Prince
     * @since 2022/6/29 15:18
     */
    private boolean match1(List<PermissionTemp> permissions, String uri, String method) {
        for (PermissionTemp p : permissions) {
            if (method.equals(p.getMethod())) {
                String url = p.getUrl();
                String regex = url.replaceAll("\\{string}", "\\\\w+").replaceAll("\\{number}", "\\\\d+");
                if (uri.matches(regex)) {
                    return true;
                }
            }
        }
        return false;
    }
}
