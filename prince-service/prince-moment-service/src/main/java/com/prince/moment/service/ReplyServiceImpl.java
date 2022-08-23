package com.prince.moment.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.constant.RedisCacheKey;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.moment.entity.dto.FavoriteDTO;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.dto.ReplyDTO;
import com.prince.moment.entity.po.Comment;
import com.prince.moment.entity.po.Favorite;
import com.prince.moment.entity.po.Like;
import com.prince.moment.entity.po.Reply;
import com.prince.moment.mapper.CommentMapper;
import com.prince.moment.mapper.LikeMapper;
import com.prince.moment.mapper.ReplyMapper;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description : 评论
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:45
 */
@Service
@RequiredArgsConstructor
public class ReplyServiceImpl extends ServiceImpl<ReplyMapper, Reply> implements ReplyService {

    private final EntityTransformationUtil<Reply, ReplyDTO> transformer = new EntityTransformationUtil<>(Reply.class, ReplyDTO.class);

    private final RedisTemplate<String, Object> redisTemplate;

    private final CommentMapper commentMapper;

    private final ReplyMapper replyMapper;

    @Override
    public void reply(ReplyDTO dto) {
        if (dto.getReplyTime() == null) {
            dto.setReplyTime(new Date());
        }
        dto.setReplier(UserContext.get());
        replyMapper.insert(transformer.transformToFirst(dto));
        //记录回复数
        recordInteraction(RedisCacheKey.CACHE_COMMENT_REPLIED, dto.getCommentId(), 1);
    }

    @Override
    public void del(Long replyId) {
        Long userId = UserContext.get();
        Reply reply = replyMapper.selectById(replyId);
        if (reply != null) {
            replyMapper.delete(new QueryWrapper<Reply>().eq("replier", userId).eq("id", replyId));
            //记录回复数
            recordInteraction(RedisCacheKey.CACHE_COMMENT_REPLIED, reply.getCommentId(), -1);
        }
    }

    @Override
    public PageInfo<ReplyDTO> getPageOfReplies(Long commentId, Integer current, Integer size) {
        LambdaQueryWrapper<Reply> query = new LambdaQueryWrapper<>();
        query.eq(Reply::getCommentId, commentId);
        PageHelper.startPage(current, size);
        PageInfo<Reply> page = PageInfo.of(replyMapper.selectList(query));
        return transformer.transformPageToSecond(page);
    }
    /**
     * Description :  缓存互动数据
     * @param key 缓存键
     * @param targetId 对象id
     * @param amount 数量
     * @since 2022/8/10 11:54
     * @author Mu Prince
     */
    private void recordInteraction(String key, Long targetId, int amount) {
        //记录互动量
        if (Boolean.TRUE.equals(redisTemplate.boundHashOps(key).hasKey(targetId.toString()))) {
            redisTemplate.boundHashOps(key).increment(targetId.toString(), amount);
        } else {
            Comment comment = commentMapper.selectById(targetId);
            amount += comment.getAmountOfReply();
            redisTemplate.boundHashOps(key).put(targetId.toString(), amount);
        }
    }
}
