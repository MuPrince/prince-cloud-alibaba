package com.prince.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.po.UserInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 12:21
 */
public interface UserInfoMapper extends BaseMapper<UserInfo> {

    /**
     * Description :  查看他人信息
     * @param userId 用户id
     * @return {@link UserInfoDTO}
     * @since 2022/8/11 17:48
     * @author Mu Prince
     */
    UserInfoDTO findPerson(Long userId);
    /**
     * Description :  查询自己的信息
     * @param self 自己的id
     * @return {@link UserInfoDTO}
     * @since 2022/8/11 17:47
     * @author Mu Prince
     */
    UserInfoDTO selectSelf(Long self);

    List<UserInfoDTO> search(@Param("keyword") String keyword, @Param("count") int count);
}
