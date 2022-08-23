package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.mapper.ActivityPublicationMapper;
import com.prince.server.context.SystemUserContext;
import com.prince.operation.entity.dto.ActivityPublicationDTO;
import com.prince.operation.entity.po.ActivityPublication;
import com.prince.operation.entity.vo.ActivityPublicationVo;
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
public class SystemActivityPublicationServiceImpl extends ServiceImpl<ActivityPublicationMapper, ActivityPublication> implements SystemActivityPublicationService {

    private final ActivityPublicationMapper activityPublicationMapper;

    private final EntityTransformationUtil<ActivityPublication, ActivityPublicationDTO> transform = new EntityTransformationUtil<>(ActivityPublication.class, ActivityPublicationDTO.class);

    @Override
    public void publish(ActivityPublicationDTO activityPublicationDTO) {
        if (activityPublicationMapper.selectIsPublished(activityPublicationDTO.getActivityId())) {
            throw new AdminServiceException("当前活动已发布，不可重复发布。");
        }
        ActivityPublication activityPublication = transform.transformToFirst(activityPublicationDTO);
        activityPublication.setPublicationDate(new Date());
        activityPublication.setUserId(SystemUserContext.getUserId());
        activityPublication.setNickname(SystemUserContext.getNickname());

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
            ActivityPublicationDTO dto = transform.transformToSecond(publication);
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
            throw new AdminServiceException("活动进行中，不能取消。");
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
