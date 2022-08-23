package com.prince.system.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.system.entity.dto.ActivityDTO;
import com.prince.system.entity.po.Activity;
import com.prince.system.entity.vo.ActivityVo;

import java.util.List;

/**
 * Description : 活动
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 11:29
 */
public interface ActivityService extends IService<Activity> {

    void add(ActivityDTO activityDTO);

    void edit(ActivityDTO activityDTO);

    void del(List<Long> ids);

    void delById(Long id);

    PageInfo<ActivityDTO> search(ActivityVo activityVo);

    ActivityDTO searchOne(Long id);
}
