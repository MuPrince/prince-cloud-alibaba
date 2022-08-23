package com.prince.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.po.UserInfo;
import com.prince.user.entity.vo.Location;

import java.math.BigDecimal;
import java.util.List;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 12:22
 */
public interface UserInfoService extends IService<UserInfo> {
    /**
     * Description :  编辑用户信息
     * @param info 用户信息
     * @since 2022/8/12 14:18
     * @author Mu Prince
     */
    void edit(UserInfoDTO info);
    /**
     * Description :  查询用户个人信息
     * @param userId 用户id
     * @return {@link UserInfoDTO}
     * @throws
     * @since 2022/8/12 14:19
     * @author Mu Prince
     */
    UserInfoDTO searchOne(Long userId);

    UserInfoDTO getSelf();
    /**
     * Description :  修改用户地址信息
     * @param location 定位信息
     * @since 2022/8/12 10:43
     * @author Mu Prince
     */
    void updateGeo(Location location);

    List<UserInfoDTO> search(String keyword, int count);
}
