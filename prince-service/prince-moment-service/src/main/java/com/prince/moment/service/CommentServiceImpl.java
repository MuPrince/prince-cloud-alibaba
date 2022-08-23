package com.prince.moment.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageInfo;
import com.prince.common.constant.RedisCacheKey;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.moment.entity.dto.CommentDTO;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.po.Comment;
import com.prince.moment.entity.po.Like;
import com.prince.moment.entity.po.Moment;
import com.prince.moment.mapper.CommentMapper;
import com.prince.moment.mapper.LikeMapper;
import com.prince.moment.mapper.MomentMapper;
import com.prince.moment.repository.CommentRepository;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import org.springframework.data.mongodb.core.MongoTemplate;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    private final EntityTransformationUtil<Comment, CommentDTO> transformer = new EntityTransformationUtil<>(Comment.class, CommentDTO.class);

    private final EntityTransformationUtil<Like, LikeDTO> transformerLike = new EntityTransformationUtil<>(Like.class, LikeDTO.class);

    private final CommentRepository commentRepository;

    private final RedisTemplate<String, Object> redisTemplate;

    private final CommentMapper commentMapper;

    private final MomentMapper momentMapper;

    private final LikeMapper likeMapper;

    private final MongoTemplate mongoTemplate;

    @Override
    public void comment(CommentDTO dto) {
        if (dto.getUtterer() == null) {
            dto.setUtterer(UserContext.get());
        }
        Comment comment = transformer.transformToFirst(dto);
        commentMapper.insert(comment);

        //记录评论数
        recordInteraction(RedisCacheKey.CACHE_MOMENT_COMMENTED, dto.getMomentId(), 1);
    }

    @Override
    public void del(Long commentId) {
        Long userId = UserContext.get();
        Comment comment = commentMapper.selectById(commentId);
        if (comment != null) {
            commentMapper.delete(new QueryWrapper<Comment>().eq("utterer", userId).eq("id", commentId));

            //记录评论数
            recordInteraction(RedisCacheKey.CACHE_MOMENT_COMMENTED, comment.getMomentId(), -1);
        }
    }

    @Override
    public void like(LikeDTO like) {
        Long userId = UserContext.get();
        int likes = likeMapper.likedComment(userId, like.getTargetId());
        if (likes <= 0) {
            like.setLikeTime(new Date());
            like.setType(2);
            like.setUserId(userId);
            likeMapper.insert(transformerLike.transformToFirst(like));
            //记录点赞数
            recordInteraction(RedisCacheKey.CACHE_COMMENT_LIKED, like.getTargetId(), 1);
        }
    }

    @Override
    public CommentDTO getOne(Long commentId) {
        CommentDTO commentDTO = (CommentDTO) redisTemplate.boundHashOps(RedisCacheKey.CACHE_COMMENT).get(commentId);
        if (commentDTO == null) {
            Comment comment = commentMapper.selectById(commentId);
            if (comment == null) return null;
            commentDTO = transformer.transformToSecond(comment);
            redisTemplate.boundHashOps(RedisCacheKey.CACHE_COMMENT).put(commentId, commentDTO);
        }
        return commentDTO;
    }

    @Override
    public PageInfo<CommentDTO> getPage(Long momentId, Integer current, Integer size) {
        return null;
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
            switch (key) {
                case RedisCacheKey.CACHE_MOMENT_COMMENTED:
                    Moment moment = momentMapper.selectById(targetId);
                    amount += moment.getAmountOfComment();
                case RedisCacheKey.CACHE_COMMENT_LIKED:
                    Comment comment = commentMapper.selectById(targetId);
                    amount += comment.getAmountOfLike();
            }
            redisTemplate.boundHashOps(key).put(targetId.toString(), amount);
        }
    }
}
