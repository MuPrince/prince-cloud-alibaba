package com.prince.operation.controller;

import com.github.pagehelper.PageInfo;
import com.prince.operation.service.SystemActivityPublicationService;
import com.prince.common.resp.RespResult;
import com.prince.operation.entity.dto.ActivityPublicationDTO;
import com.prince.operation.entity.vo.ActivityPublicationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 17:14
 */
@RestController
@RequestMapping("/sys/activity/publication")
@RequiredArgsConstructor
public class SystemActivityPublicationController {

    private final SystemActivityPublicationService systemActivityPublicationService;

    @PutMapping
    public RespResult<?> publish(@RequestBody ActivityPublicationDTO activityPublicationDTO) {
        systemActivityPublicationService.publish(activityPublicationDTO);
        return RespResult.ok();
    }

    @PostMapping("ending/{publicationId}")
    public RespResult<?> ending(@PathVariable Long publicationId) {
        systemActivityPublicationService.ending(publicationId);
        return RespResult.ok();
    }

    @PostMapping("search")
    public RespResult<PageInfo<ActivityPublicationDTO>> search(@RequestBody ActivityPublicationVo vo) {
        return RespResult.ok(systemActivityPublicationService.search(vo));
    }

    @PostMapping("cancel/{publicationId}")
    public RespResult<?> cancel(@PathVariable Long publicationId) {
        systemActivityPublicationService.cancel(publicationId);
        return RespResult.ok();
    }

    @PostMapping("promote/{publicationId}")
    public RespResult<?> promote(@PathVariable Long publicationId) {
        systemActivityPublicationService.promote(publicationId);
        return RespResult.ok();
    }

    @PostMapping("unPromote/{publicationId}")
    public RespResult<?> unPromote(@PathVariable Long publicationId) {
        systemActivityPublicationService.unPromote(publicationId);
        return RespResult.ok();
    }
}
