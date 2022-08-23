package com.prince.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.admin.entity.dto.PermissionDTO;
import com.prince.admin.entity.po.Permission;
import com.prince.admin.entity.vo.PermissionVo;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:45
 */
public interface PermissionMapper extends BaseMapper<Permission> {

    @Select("SELECT p.pid,menu_id,url,method,p.matching_way,description FROM `sys_permission` p ,sys_role_permission rp WHERE rp.permission_id = p.pid AND role_id = #{roleId}")
    List<Permission> selectByRoleId(Long roleId);

    List<Permission> searchList(PermissionVo permission);

    @Select("SELECT p.pid,menu_id,url,method,p.matching_way,description FROM `sys_permission` p ,sys_role_permission rp WHERE rp.permission_id = p.pid AND p.matching_way = 1 AND role_id = #{roleId}")
    List<Permission> selectMatch1ByRoleId(Long roleId);

    @Select("SELECT p.pid,menu_id,url,method,p.matching_way,description FROM `sys_permission` p ,sys_role_permission rp WHERE rp.permission_id = p.pid AND p.matching_way = 0 AND role_id = #{roleId}")
    List<Permission> selectMatch0ByRoleId(Long roleId);
}
