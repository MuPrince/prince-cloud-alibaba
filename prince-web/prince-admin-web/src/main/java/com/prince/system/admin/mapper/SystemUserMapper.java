package com.prince.system.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.system.admin.entity.po.SystemUser;
import com.prince.system.admin.entity.vo.SystemUserVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 14:39
 */
public interface SystemUserMapper extends BaseMapper<SystemUser> {

    SystemUser selectByUsername(String username);

    @Update("update sys_user set role_id = #{roleId} where id = #{userId}")
    void setRoleIdByUserId(@Param("userId") Long userId, @Param("roleId") Long roleId);

    void insertAdmin(@Param("user") SystemUser user);

    List<SystemUser> selectUserList(SystemUserVo user);
}
