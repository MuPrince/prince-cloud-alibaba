package com.prince.system.admin.enums;

import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Description : 系统角色
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 17:57
 */
public enum SystemRole {

    ADMIN(1L, "系统管理员"),
    NORMAL(2L, "普通用户"),


    ;

    public final Long id;

    public final String name;

    private static Map<Long, SystemRole> systemRoles;

    SystemRole(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    private static void initSystemRoles() {
        systemRoles = Arrays.stream(SystemRole.values()).collect(Collectors.toMap(e -> e.id,e-> e));
    }

    public static Boolean isSystemRole(Long id) {
        if (systemRoles == null) {
            initSystemRoles();
        }
        return systemRoles.containsKey(id);
    }
}
