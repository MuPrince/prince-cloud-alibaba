package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.entity.dto.ActivityDTO;
import com.prince.system.entity.po.Activity;
import com.prince.system.entity.po.ActivityPublication;
import com.prince.system.entity.vo.ActivityVo;
import com.prince.admin.mapper.ActivityMapper;
import com.prince.admin.mapper.ActivityPublicationMapper;
import com.prince.admin.service.ActivityService;
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
public class ActivityServiceImpl extends ServiceImpl<ActivityMapper, Activity> implements ActivityService {

    private final ActivityMapper activityMapper;

    private final ActivityPublicationMapper activityPublicationMapper;

    private final EntityTransformationUtil<Activity> transform = new EntityTransformationUtil<>();

    @Override
    public void add(ActivityDTO activityDTO) {
        activityDTO.setCreateTime(new Date());
        activityMapper.insert(transform.transformTo(activityDTO, Activity.class));
    }

    @Override
    public void edit(ActivityDTO activityDTO) {
        if (activityDTO.getId() != null && activityDTO.getId() != 0L) {
            activityMapper.updateById(transform.transformTo(activityDTO, Activity.class));
        }
    }

    @Override
    public void del(List<Long> ids) {
        List<ActivityPublication> activityPublications = activityPublicationMapper.selectList(new LambdaQueryWrapper<ActivityPublication>().in(ActivityPublication::getActivityId, ids));
        if (activityPublications != null && activityPublications.size() > 0) {
            throw new SystemWebException("活动正在进行中，不能删除。");
        }
        activityMapper.deleteBatchIds(ids);
    }

    @Override
    public void delById(Long id) {
        List<ActivityPublication> activityPublications = activityPublicationMapper.selectList(new LambdaQueryWrapper<ActivityPublication>().eq(ActivityPublication::getActivityId, id));
        if (activityPublications != null && activityPublications.size() > 0) {
            throw new SystemWebException("活动正在进行中，不能删除。");
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
        EntityTransformationUtil<ActivityDTO> transformDTO = new EntityTransformationUtil<>();
        List<Activity> list = page.getList();
        List<ActivityDTO> data = new ArrayList<>();
        if (list == null || list.size() <= 0) {
            return result;
        }
        page.setList(null);
        BeanUtils.copyProperties(page, result);
        list.forEach(activity -> {
            ActivityDTO activityDTO = transformDTO.transformTo(activity, ActivityDTO.class);
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
        EntityTransformationUtil<ActivityDTO> transformDTO = new EntityTransformationUtil<>();
        return transformDTO.transformTo(activityMapper.selectById(id), ActivityDTO.class);
    }
}
