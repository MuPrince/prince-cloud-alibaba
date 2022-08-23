package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.system.entity.vo.ActivityVo;
import com.prince.system.admin.service.ActivityService;
import com.prince.system.entity.dto.ActivityDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 活动管理
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 11:26
 */
@RestController
@RequestMapping("activity")
@RequiredArgsConstructor
public class ActivityController {

    private final ActivityService activityService;

    @PutMapping
    public RespResult<?> add(@Validated @RequestBody ActivityDTO activityDTO) {

        activityService.add(activityDTO);
        return RespResult.ok();
    }

    @PostMapping
    public RespResult<?> edit(@Validated @RequestBody ActivityDTO activityDTO) {
        activityService.edit(activityDTO);
        return RespResult.ok();
    }

    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && ids.size() > 0) {
            activityService.del(ids);
        }
        return RespResult.ok();
    }

    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        activityService.delById(id);
        return RespResult.ok();
    }

    @PostMapping("search")
    public RespResult<PageInfo<ActivityDTO>> search(@RequestBody ActivityVo activityVo) {
        return RespResult.ok(activityService.search(activityVo));
    }

    @GetMapping("search/{id}")
    public RespResult<ActivityDTO> searchOne(@PathVariable Long id) {
        return RespResult.ok(activityService.searchOne(id));
    }
}
