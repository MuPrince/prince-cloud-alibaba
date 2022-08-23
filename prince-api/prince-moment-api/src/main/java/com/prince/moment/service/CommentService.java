package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.dto.CommentDTO;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.po.Comment;

/**
 * Description : 评论
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:42
 */
public interface CommentService extends IService<Comment> {

    /**
     * Description :  评论
     * @param dto 评论信息
     * @since 2022/8/9 18:18
     * @author Mu Prince
     */
    void comment(CommentDTO dto);
    /**
     * Description :  删除评论
     * @param commentId 评论id
     * @since 2022/8/9 18:18
     * @author Mu Prince
     */
    void del(Long commentId);
    /**
     * Description : 点赞
     * @param like 点赞信息
     * @since 2022/8/9 18:17
     * @author Mu Prince
     */
    void like(LikeDTO like);
    /**
     * Description :  查看评论详情
     * @param momentId 动态id
     * @param current 页码
     * @param size 条数
     * @return {@link CommentDTO}
     * @throws
     * @since 2022/8/9 18:16
     * @author Mu Prince
     */
    PageInfo<CommentDTO> getPage(Long momentId, Integer current, Integer size);

    CommentDTO getOne(Long commentId);
}
