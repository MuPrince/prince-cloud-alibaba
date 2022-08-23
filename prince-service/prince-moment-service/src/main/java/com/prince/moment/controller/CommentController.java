package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.dto.CommentDTO;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 评论
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 11:29
 */
@RestController
@RequestMapping("/comment")
@RequiredArgsConstructor
public class CommentController {

    private final CommentService commentService;

    @PutMapping
    public RespResult<?> comment(CommentDTO dto) {
        commentService.comment(dto);
        return RespResult.ok();
    }

    @DeleteMapping("/del/{commentId}")
    public RespResult<?> comment(@PathVariable Long commentId) {
        commentService.del(commentId);
        return RespResult.ok();
    }

    @PutMapping("like")
    public RespResult<?> like(@RequestBody LikeDTO like) {
        commentService.like(like);
        return RespResult.ok();
    }

    @GetMapping("/page/{momentId}/{current}")
    public RespResult<PageInfo<CommentDTO>> getPage(@PathVariable Long momentId, @PathVariable Integer current) {
        return RespResult.ok(commentService.getPage(momentId, current, PrinceConstants.PAGE_SIZE));
    }

    @GetMapping("/get/{commentId}")
    public RespResult<?> getOne(@PathVariable Long commentId) {
        return RespResult.ok(commentService.getOne(commentId));
    }
}
