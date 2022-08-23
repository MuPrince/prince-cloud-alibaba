package com.prince.moment.task;

import com.prince.common.constant.RedisCacheKey;
import com.prince.moment.entity.po.Comment;
import com.prince.moment.entity.po.Moment;
import com.prince.moment.service.CommentService;
import com.prince.moment.service.MomentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Description : 动态定时任务 处理互动量
 *
 * @author Mu Prince <br\>
 * @since 2022/8/10 10:57
 */
@Component
@Slf4j
@RequiredArgsConstructor
public class InteractionTask {

    private final RedisTemplate<String, Object> redisTemplate;

    private final MomentService momentService;

    private final CommentService commentService;

    @Scheduled(cron = "0 0/10 * * * ?")
    @Transactional
    public void processorInteraction() {
        log.info("开始处理互动数据。当前时间：{}", new Date());
        //动态缓存
        Map<Long, Moment> moments = new HashMap<>();
        //评论缓存
        Map<Long, Comment> comments = new HashMap<>();
        //处理评论回复
        Map<Object, Object> replied = redisTemplate.boundHashOps(RedisCacheKey.CACHE_COMMENT_REPLIED).entries();
        if (replied != null && replied.size() > 0) {
            replied.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Comment comment;
                if (comments.containsKey(id)) {
                    comment = comments.get(id);
                } else {
                    comment = new Comment();
                    comment.setId(id);
                }
                comment.setAmountOfReply(Integer.valueOf(v.toString()));
                comments.put(comment.getId(), comment);
            });
        }
        //处理评论点赞
        Map<Object, Object> likedOfComment = redisTemplate.boundHashOps(RedisCacheKey.CACHE_COMMENT_LIKED).entries();
        if (likedOfComment != null && likedOfComment.size() > 0) {
            likedOfComment.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Comment comment;
                if (comments.containsKey(id)) {
                    comment = comments.get(id);
                } else {
                    comment = new Comment();
                    comment.setId(id);
                }
                comment.setAmountOfLike(Integer.valueOf(v.toString()));
                comments.put(comment.getId(), comment);
            });
        }
        //处理动态观看
        Map<Object, Object> watched = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT_WATCHED).entries();
        if (watched != null && watched.size() > 0) {
            watched.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Moment moment;
                if (moments.containsKey(id)) {
                    moment = moments.get(id);
                } else {
                    moment = new Moment();
                    moment.setId(id);
                }
                moment.setAmountOfWatch(Integer.valueOf(v.toString()));
                moments.put(moment.getId(), moment);
            });
        }
        //处理动态评论
        Map<Object, Object> commented = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT_COMMENTED).entries();
        if (commented != null && commented.size() > 0) {
            commented.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Moment moment;
                if (moments.containsKey(id)) {
                    moment = moments.get(id);
                } else {
                    moment = new Moment();
                    moment.setId(id);
                }
                moment.setAmountOfComment(Integer.valueOf(v.toString()));
                moments.put(moment.getId(), moment);
            });
        }
        //处理动态收藏
        Map<Object, Object> favourited = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT_FAVOURITED).entries();
        if (favourited != null && favourited.size() > 0) {
            favourited.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Moment moment;
                if (moments.containsKey(id)) {
                    moment = moments.get(id);
                } else {
                    moment = new Moment();
                    moment.setId(id);
                }
                moment.setAmountOfFavorite(Integer.valueOf(v.toString()));
                moments.put(moment.getId(), moment);
            });
        }
        //处理动态点赞
        Map<Object, Object> liked = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT_LIKED).entries();
        if (liked != null && liked.size() > 0) {
            liked.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Moment moment;
                if (moments.containsKey(id)) {
                    moment = moments.get(id);
                } else {
                    moment = new Moment();
                    moment.setId(id);
                }
                moment.setAmountOfLike(Integer.valueOf(v.toString()));
                moments.put(moment.getId(), moment);
            });
        }
        //处理动态分享
        Map<Object, Object> shared = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT_SHARED).entries();
        if (shared != null && shared.size() > 0) {
            shared.forEach((k, v) -> {
                Long id = Long.valueOf(k.toString());
                Moment moment;
                if (moments.containsKey(id)) {
                    moment = moments.get(id);
                } else {
                    moment = new Moment();
                    moment.setId(id);
                }
                moment.setAmountOfShare(Integer.valueOf(v.toString()));
                moments.put(moment.getId(), moment);
            });
        }
        log.info("开始保存互动数据。动态：{}；评论：{}", moments, comments);
        //更新数据库
        momentService.updateBatchById(moments.values());
        commentService.updateBatchById(comments.values());
        //清除已刷盘的数据
        List<String> keys = new ArrayList<>();
        keys.add(RedisCacheKey.CACHE_COMMENT_LIKED);
        keys.add(RedisCacheKey.CACHE_COMMENT_REPLIED);
        keys.add(RedisCacheKey.CACHE_MOMENT_COMMENTED);
        keys.add(RedisCacheKey.CACHE_MOMENT_FAVOURITED);
        keys.add(RedisCacheKey.CACHE_MOMENT_LIKED);
        keys.add(RedisCacheKey.CACHE_MOMENT_SHARED);
        keys.add(RedisCacheKey.CACHE_MOMENT_WATCHED);
        redisTemplate.delete(keys);
    }
}
