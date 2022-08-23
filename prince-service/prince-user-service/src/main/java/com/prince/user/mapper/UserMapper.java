package com.prince.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.common.enums.UserStatus;
import com.prince.user.entity.po.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * Description :
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 14:38
 */
public interface UserMapper extends BaseMapper<User> {
    @Update("UPDATE user SET is_verified = 1, status = 1 where id = #{userId}")
    void verified(Long userId);

    @Update("update user set password = #{password} where id = #{userId}")
    void updatePassword(Long userId, String password);

    @Update("update user set status = #{status} where id = #{userId}")
    void updateStatus(@Param("userId") Long userId, @Param("status") Integer status);
}
