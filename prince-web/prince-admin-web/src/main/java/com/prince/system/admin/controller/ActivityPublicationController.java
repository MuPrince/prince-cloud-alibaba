package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.system.entity.dto.ActivityPublicationDTO;
import com.prince.system.entity.vo.ActivityPublicationVo;
import com.prince.system.admin.service.ActivityPublicationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 17:14
 */
@RestController
@RequestMapping("activity/publication")
@RequiredArgsConstructor
public class ActivityPublicationController {

    private final ActivityPublicationService activityPublicationService;

    @PutMapping
    public RespResult<?> publish(@RequestBody ActivityPublicationDTO activityPublicationDTO) {
        activityPublicationService.publish(activityPublicationDTO);
        return RespResult.ok();
    }

    @PostMapping("ending/{publicationId}")
    public RespResult<?> ending(@PathVariable Long publicationId) {
        activityPublicationService.ending(publicationId);
        return RespResult.ok();
    }

    @PostMapping("search")
    public RespResult<PageInfo<ActivityPublicationDTO>> search(@RequestBody ActivityPublicationVo vo) {
        return RespResult.ok(activityPublicationService.search(vo));
    }

    @PostMapping("cancel/{publicationId}")
    public RespResult<?> cancel(@PathVariable Long publicationId) {
        activityPublicationService.cancel(publicationId);
        return RespResult.ok();
    }

    @PostMapping("promote/{publicationId}")
    public RespResult<?> promote(@PathVariable Long publicationId) {
        activityPublicationService.promote(publicationId);
        return RespResult.ok();
    }

    @PostMapping("unPromote/{publicationId}")
    public RespResult<?> unPromote(@PathVariable Long publicationId) {
        activityPublicationService.unPromote(publicationId);
        return RespResult.ok();
    }
}
