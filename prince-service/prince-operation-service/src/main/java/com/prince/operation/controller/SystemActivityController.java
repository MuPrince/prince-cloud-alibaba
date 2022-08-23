package com.prince.operation.controller;

import com.github.pagehelper.PageInfo;
import com.prince.operation.service.SystemActivityService;
import com.prince.common.resp.RespResult;
import com.prince.operation.entity.dto.ActivityDTO;
import com.prince.operation.entity.vo.ActivityVo;
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
@RequestMapping("sys/activity")
@RequiredArgsConstructor
public class SystemActivityController {

    private final SystemActivityService systemActivityService;

    @PutMapping
    public RespResult<?> add(@Validated @RequestBody ActivityDTO activityDTO) {

        systemActivityService.add(activityDTO);
        return RespResult.ok();
    }

    @PostMapping
    public RespResult<?> edit(@Validated @RequestBody ActivityDTO activityDTO) {
        systemActivityService.edit(activityDTO);
        return RespResult.ok();
    }

    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && ids.size() > 0) {
            systemActivityService.del(ids);
        }
        return RespResult.ok();
    }

    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        systemActivityService.delById(id);
        return RespResult.ok();
    }

    @PostMapping("search")
    public RespResult<PageInfo<ActivityDTO>> search(@RequestBody ActivityVo activityVo) {
        return RespResult.ok(systemActivityService.search(activityVo));
    }

    @GetMapping("search/{id}")
    public RespResult<ActivityDTO> searchOne(@PathVariable Long id) {
        return RespResult.ok(systemActivityService.searchOne(id));
    }
}
