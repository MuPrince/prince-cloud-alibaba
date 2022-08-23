package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.admin.context.SystemUserContext;
import com.prince.system.entity.dto.ActivityPublicationDTO;
import com.prince.system.entity.po.ActivityPublication;
import com.prince.admin.entity.po.SystemUser;
import com.prince.system.entity.vo.ActivityPublicationVo;
import com.prince.admin.mapper.ActivityPublicationMapper;
import com.prince.admin.service.ActivityPublicationService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 14:12
 */
@Service
@RequiredArgsConstructor
public class ActivityPublicationServiceImpl extends ServiceImpl<ActivityPublicationMapper, ActivityPublication> implements ActivityPublicationService {

    private final ActivityPublicationMapper activityPublicationMapper;

    private final EntityTransformationUtil<ActivityPublication> transform = new EntityTransformationUtil<>();

    @Override
    public void publish(ActivityPublicationDTO activityPublicationDTO) {
        if (activityPublicationMapper.selectIsPublished(activityPublicationDTO.getActivityId())) {
            throw new SystemWebException("当前活动已发布，不可重复发布。");
        }
        SystemUser user = SystemUserContext.getUser();
        ActivityPublication activityPublication = transform.transformTo(activityPublicationDTO, ActivityPublication.class);
        activityPublication.setPublicationDate(new Date());
        activityPublication.setUserId(user.getId());
        activityPublication.setNickname(user.getNickname());

        activityPublicationMapper.insert(activityPublication);
    }

    @Override
    public void ending(Long publicationId) {
        if (activityPublicationMapper.selectIsInProgress(publicationId)) {
            activityPublicationMapper.ending(publicationId);
        }
    }

    @Override
    public PageInfo<ActivityPublicationDTO> search(ActivityPublicationVo vo) {
        LambdaQueryWrapper<ActivityPublication> query = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(vo.getTitle())) {
            query.like(ActivityPublication::getTitle, vo.getTitle());
        }
        if (StringUtils.isNotBlank(vo.getNickname())) {
            query.like(ActivityPublication::getNickname, vo.getNickname());
        }
        query.orderByDesc(ActivityPublication::getIsPromotion);
        query.orderByDesc(ActivityPublication::getPublicationDate);
        PageHelper.startPage(vo.getCurrent(), vo.getSize());
        PageInfo<ActivityPublication> page = PageInfo.of(activityPublicationMapper.selectList(query));
        EntityTransformationUtil<ActivityPublicationDTO> transformDTO = new EntityTransformationUtil<>();
        PageInfo<ActivityPublicationDTO> result = new PageInfo<>();
        List<ActivityPublication> list = page.getList();
        Date current = new Date();
        List<ActivityPublicationDTO> data = new ArrayList<>();
        if (list == null || list.size() <= 0) {
            return result;
        }
        page.setList(null);
        BeanUtils.copyProperties(page, result);
        list.forEach(publication -> {
            ActivityPublicationDTO dto = transformDTO.transformTo(publication, ActivityPublicationDTO.class);
            if (!dto.getIsCancel()) {
                if (current.after(dto.getEndTime())) {
                    dto.setStatus(3);
                } else if (current.before(dto.getStartTime())) {
                    dto.setStatus(1);
                } else {
                    dto.setStatus(2);
                }
            }
            data.add(dto);
        });

        result.setList(data);
        return result;
    }

    @Override
    public void cancel(Long publicationId) {
        ActivityPublication publication = activityPublicationMapper.selectById(publicationId);

        if (new Date().after(publication.getStartTime()) && new Date().before(publication.getEndTime())) {
            throw new SystemWebException("活动进行中，不能取消。");
        }
        if (!publication.getIsCancel()) {
            activityPublicationMapper.cancel(publicationId);
        }
    }

    @Override
    public void promote(Long publicationId) {
        ActivityPublication publication = activityPublicationMapper.selectPromotion();
        if (publication != null && !(publication.getId().equals(publicationId))) {
            publication.setIsPromotion(false);
            activityPublicationMapper.updateById(publication);
        }
        activityPublicationMapper.promote(publicationId);
    }

    @Override
    public void unPromote(Long publicationId) {
        ActivityPublication publication = activityPublicationMapper.selectPromotion();
        if (publication != null && publication.getId().equals(publicationId)) {
            publication.setIsPromotion(false);
            activityPublicationMapper.updateById(publication);
        }
    }
}
