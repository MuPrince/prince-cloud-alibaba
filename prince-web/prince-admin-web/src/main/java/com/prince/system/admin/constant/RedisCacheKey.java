package com.prince.system.admin.constant;

/**
 * Description : redis缓存key
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 14:46
 */
public interface RedisCacheKey {

    /**
     * 完全匹配权限
     */
    String CACHE_PERMISSION_0 = "cache:permission0:";
    /**
     * 通配符匹配权限
     */
    String CACHE_PERMISSION_1 = "cache:permission1:";
}
