package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.operation.mapper.ActivityMapper;
import com.prince.operation.mapper.ActivityPublicationMapper;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.ActivityDTO;
import com.prince.operation.entity.po.Activity;
import com.prince.operation.entity.po.ActivityPublication;
import com.prince.operation.entity.vo.ActivityVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 11:30
 */
@Service
@RequiredArgsConstructor
public class SystemActivityServiceImpl extends ServiceImpl<ActivityMapper, Activity> implements SystemActivityService {

    private final ActivityMapper activityMapper;

    private final ActivityPublicationMapper activityPublicationMapper;

    private final EntityTransformationUtil<Activity, ActivityDTO> transform = new EntityTransformationUtil<>(Activity.class, ActivityDTO.class);

    @Override
    public void add(ActivityDTO activityDTO) {
        activityDTO.setCreateTime(new Date());
        activityMapper.insert(transform.transformToFirst(activityDTO));
    }

    @Override
    public void edit(ActivityDTO activityDTO) {
        if (activityDTO.getId() != null && activityDTO.getId() != 0L) {
            activityMapper.updateById(transform.transformToFirst(activityDTO));
        }
    }

    @Override
    public void del(List<Long> ids) {
        List<ActivityPublication> activityPublications = activityPublicationMapper.selectList(new LambdaQueryWrapper<ActivityPublication>().in(ActivityPublication::getActivityId, ids));
        if (activityPublications != null && activityPublications.size() > 0) {
            throw new AdminServiceException("活动正在进行中，不能删除。");
        }
        activityMapper.deleteBatchIds(ids);
    }

    @Override
    public void delById(Long id) {
        List<ActivityPublication> activityPublications = activityPublicationMapper.selectList(new LambdaQueryWrapper<ActivityPublication>().eq(ActivityPublication::getActivityId, id));
        if (activityPublications != null && activityPublications.size() > 0) {
            throw new AdminServiceException("活动正在进行中，不能删除。");
        }
        activityMapper.deleteById(id);
    }

    @Override
    public PageInfo<ActivityDTO> search(ActivityVo activityVo) {
        List<Long> inProgress = activityPublicationMapper.selectIsPublishedActivities();
        LambdaQueryWrapper<Activity> query = new LambdaQueryWrapper<>();
        if (activityVo.getTitle() != null) {
            query.like(Activity::getTitle, activityVo.getTitle());
        }
        query.orderByDesc(Activity::getCreateTime);
        PageHelper.startPage(activityVo.getCurrent(), activityVo.getSize());
        PageInfo<Activity> page = PageInfo.of(activityMapper.selectList(query));
        PageInfo<ActivityDTO> result = new PageInfo<>();
        List<Activity> list = page.getList();
        List<ActivityDTO> data = new ArrayList<>();
        if (list == null || list.size() <= 0) {
            return result;
        }
        page.setList(null);
        BeanUtils.copyProperties(page, result);
        list.forEach(activity -> {
            ActivityDTO activityDTO = transform.transformToSecond(activity);
            if (inProgress.contains(activity.getId())) {
                activityDTO.setIsInProgress(true);
            }
            data.add(activityDTO);
        });
        result.setList(data);
        return result;
    }

    @Override
    public ActivityDTO searchOne(Long id) {
        return transform.transformToSecond(activityMapper.selectById(id));
    }
}
