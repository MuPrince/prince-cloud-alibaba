package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.dto.ReplyDTO;
import com.prince.moment.service.ReplyService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * Description : 回复
 *
 * @author Mu Prince <br\>
 * @since 2022/8/10 9:41
 */
@RestController
@RequestMapping("reply")
@RequiredArgsConstructor
public class ReplyController {

    private final ReplyService replyService;

    @PutMapping()
    public RespResult<?> reply(@RequestBody ReplyDTO dto) {
        replyService.reply(dto);
        return RespResult.ok();
    }

    @DeleteMapping("del/{replyId}")
    public RespResult<?> del(@PathVariable Long replyId) {
        replyService.del(replyId);
        return RespResult.ok();
    }

    @GetMapping("page/{commentId}/{current}")
    public RespResult<PageInfo<ReplyDTO>> getPage(@PathVariable Long commentId, @PathVariable Integer current) {
        if (current == null) current = PrinceConstants.PAGE_CURRENT;
        PageInfo<ReplyDTO> replies = replyService.getPageOfReplies(commentId, current, PrinceConstants.PAGE_SIZE);
        return RespResult.ok(replies);
    }
}
