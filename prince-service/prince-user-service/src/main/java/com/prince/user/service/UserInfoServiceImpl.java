package com.prince.user.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.common.util.DateTimeUtil;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.vo.Sign;
import com.prince.operation.service.TagService;
import com.prince.server.context.UserContext;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.entity.po.UserInfo;
import com.prince.user.entity.vo.Location;
import com.prince.user.mapper.FollowMapper;
import com.prince.user.mapper.UserInfoMapper;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboReference;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 12:23
 */
@Service
@DubboService
@RequiredArgsConstructor
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {

    private final UserInfoMapper userInfoMapper;

    private final FollowMapper followMapper;

    private final EntityTransformationUtil<UserInfo, UserInfoDTO> transform = new EntityTransformationUtil<>(UserInfo.class, UserInfoDTO.class);

    @DubboReference(check = false)
    private TagService tagService;

    @Override
    public void edit(UserInfoDTO info) {

    }

    @Override
    public UserInfoDTO searchOne(Long userId) {
        UserInfoDTO userInfo = userInfoMapper.findPerson(userId);
        //查询用户标签
        List<TagDTO> tags = tagService.getTagsByUser(userId);
        userInfo.setTags(tags);
        //查询用户关注
        List<UserInfoDTO> followed = followMapper.getFollowed(userId);
        userInfo.setFollows(followed.size());
        //查询用户粉丝
        List<UserInfoDTO> followers = followMapper.getFollowers(userId);
        userInfo.setFans(followers.size());
        //计算注册天数
        Integer days = DateTimeUtil.calculatePeriodDays(userInfo.getRegistryTime(), new Date());
        userInfo.setPeriod(days);

        return userInfo;
    }

    @Override
    public UserInfoDTO getSelf() {
        Long self = UserContext.get();
        UserInfoDTO userInfo = userInfoMapper.selectSelf(self);
        return userInfo;
    }

    @Override
    public void updateGeo(Location location) {
        Long userId = UserContext.get();
        LambdaUpdateWrapper<UserInfo> update = new LambdaUpdateWrapper<>();
        update.set(UserInfo::getLongitude, location.getLongitude());
        update.set(UserInfo::getLatitude, location.getLatitude());
        update.set(UserInfo::getPlace, location.getPlace());
        update.eq(UserInfo::getUserId, userId);
        this.update(update);
    }

    @Override
    public List<UserInfoDTO> search(String keyword, int count) {
        return userInfoMapper.search(keyword, count);
    }
}
