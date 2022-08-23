package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.dto.ReplyDTO;
import com.prince.moment.entity.po.Reply;

/**
 * Description : 回复
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:42
 */
public interface ReplyService extends IService<Reply> {

    void reply(ReplyDTO dto);

    void del(Long replyId);

    PageInfo<ReplyDTO> getPageOfReplies(Long commentId, Integer page, Integer pageSize);
}
