package com.prince.admin.transformation;

import com.prince.admin.entity.po.Permission;
import com.prince.common.entity.PermissionTemp;

import java.util.ArrayList;
import java.util.List;

/**
 * Description : 权限转换
 *
 * @author Mu Prince <br\>
 * @since 2022/8/10 18:17
 */
public class PermissionTransformation {

    public static PermissionTemp transform(Permission permission) {
        PermissionTemp temp = new PermissionTemp();
        temp.setPid(permission.getPid());
        temp.setMethod(permission.getMethod());
        temp.setMatchingWay(permission.getMatchingWay());
        temp.setUrl(permission.getUrl());
        return temp;
    }

    public static List<PermissionTemp> transformList(List<Permission> permissions) {
        List<PermissionTemp> result = new ArrayList<>();
        permissions.forEach(permission -> {
            result.add(transform(permission));
        });
        return result;
    }
}
