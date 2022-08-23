package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.dto.MomentDTO;
import com.prince.moment.service.MomentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:41
 */
@RestController
@RequestMapping("moment")
@RequiredArgsConstructor
public class MomentController {

    private final MomentService momentService;
    /**
     * Description :  发布动态
     * @param dto 动态信息
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:06
     * @author Mu Prince
     */
    @PutMapping("publish")
    public RespResult<?> publish(MomentDTO dto) {
        momentService.publish(dto);
        return RespResult.ok();
    }
    /**
     * Description :  删除动态
     * @param momentId 动态id
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:06
     * @author Mu Prince
     */
    @DeleteMapping("del/{momentId}")
    public RespResult<?> del(@PathVariable Long momentId) {
        momentService.del(momentId);
        return RespResult.ok();
    }
    /**
     * Description :  分页查询动态
     * @param current 页码
     * @return {@link RespResult< PageInfo< MomentDTO>>}
     * @throws
     * @since 2022/8/9 11:07
     * @author Mu Prince
     */
    @GetMapping("page/{current}")
    public RespResult<PageInfo<MomentDTO>> getList(@PathVariable Integer current) {
        return RespResult.ok(momentService.getPage(current, PrinceConstants.PAGE_SIZE));
    }
    /**
     * Description :  获取动态详情
     * @param momentId 动态id
     * @return {@link RespResult< MomentDTO>}
     * @throws
     * @since 2022/8/9 11:07
     * @author Mu Prince
     */
    @GetMapping("get/{momentId}")
    public RespResult<MomentDTO> getOne(@PathVariable Long momentId) {
        return RespResult.ok(momentService.getOne(momentId));
    }
    /**
     * Description :  点赞
     * @param like 点赞信息
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:07
     * @author Mu Prince
     */
    @PutMapping("like")
    public RespResult<?> like(@RequestBody LikeDTO like) {
        momentService.like(like);
        return RespResult.ok();
    }
    /**
     * Description :  取消点赞
     * @param momentId 动态id
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:08
     * @author Mu Prince
     */
    @DeleteMapping("unlike/{momentId}")
    public RespResult<?> unlike(@PathVariable Long momentId) {
        momentService.unlike(momentId);
        return RespResult.ok();
    }
    /**
     * Description :  收藏
     * @param momentId 动态id
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:08
     * @author Mu Prince
     */
    @PutMapping("favorite/{momentId}")
    public RespResult<?> favorite(@PathVariable Long momentId) {
        momentService.favorite(momentId);
        return RespResult.ok();
    }
    /**
     * Description :  移除收藏
     * @param momentId 动态id
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:08
     * @author Mu Prince
     */
    @DeleteMapping("remove/{momentId}")
    public RespResult<?> removeFavorite(@PathVariable Long momentId) {
        momentService.removeFavorite(momentId);
        return RespResult.ok();
    }
    /**
     * Description :  分享
     * @param momentId 动态id
     * @return {@link RespResult<?>}
     * @since 2022/8/9 11:09
     * @author Mu Prince
     */
    @PostMapping("share/{momentId}")
    public RespResult<?> share(@PathVariable Long momentId) {
        momentService.share(momentId);
        return RespResult.ok();
    }
}
