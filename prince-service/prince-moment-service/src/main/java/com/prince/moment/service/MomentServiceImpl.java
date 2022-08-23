package com.prince.moment.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageInfo;
import com.prince.common.constant.RedisCacheKey;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.dto.MomentDTO;
import com.prince.moment.entity.po.*;
import com.prince.moment.entity.vo.MomentVo;
import com.prince.moment.mapper.FavoriteMapper;
import com.prince.moment.mapper.LikeMapper;
import com.prince.moment.mapper.MomentMapper;
import com.prince.moment.mapper.ShareMapper;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:38
 */
@Service
@DubboService
@RequiredArgsConstructor
public class MomentServiceImpl extends ServiceImpl<MomentMapper, Moment> implements MomentService {

    private final EntityTransformationUtil<Moment, MomentDTO> transformer = new EntityTransformationUtil<>(Moment.class, MomentDTO.class);

    private final EntityTransformationUtil<Like, LikeDTO> transformerLike = new EntityTransformationUtil<>(Like.class, LikeDTO.class);

    private final RedisTemplate<String, Object> redisTemplate;
    private final MomentMapper momentMapper;

    private final FavoriteMapper favoriteMapper;

    private final LikeMapper likeMapper;

    private final ShareMapper shareMapper;

    @Override
    public void publish(MomentDTO dto) {
        dto.setCreateTime(new Date());
        Moment moment = transformer.transformToFirst(dto);
        momentMapper.insert(moment);
        dto.setId(moment.getId());
        redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).put(moment.getId().toString(), dto);
    }

    @Override
    public void del(Long momentId) {
        Long userId = UserContext.get();
        Moment moment = momentMapper.selectById(momentId);
        if (moment == null) return;
        if (moment.getAuthorId().equals(userId)) {
            momentMapper.deleteById(momentId);
            redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).delete(momentId);
        }
    }

    @Override
    public PageInfo<MomentDTO> getPage(Integer current, Integer size) {
        return null;
    }

    @Override
    public MomentDTO getOne(Long momentId) {
        MomentDTO momentDTO = (MomentDTO) redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).get(momentId);
        if (momentDTO == null) {
            Moment moment = momentMapper.selectById(momentId);
            if (moment == null) return null;
            momentDTO = transformer.transformToSecond(moment);
            redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).put(momentId.toString(), momentDTO);
        }

        //记录观看数
        recordInteraction(RedisCacheKey.CACHE_MOMENT_WATCHED, momentId, 1);

        return momentDTO;
    }

    @Override
    public void like(LikeDTO like) {
        //获取用户信息
        Long userId = UserContext.get();
        //是否已经点赞
        int count = likeMapper.likedMoment(userId, like.getTargetId());
        //点赞
        if (count <= 0) {
            //type=1 动态点赞
            like.setType(1);
            like.setLikeTime(new Date());
            like.setUserId(userId);
            likeMapper.insert(transformerLike.transformToFirst(like));

            //记录点赞数
            recordInteraction(RedisCacheKey.CACHE_MOMENT_LIKED, like.getTargetId(), 1);
        }
        //取消点赞
        else {
            unlike(like.getTargetId());
        }
    }

    @Override
    public void unlike(Long momentId) {
        Long userId = UserContext.get();
        likeMapper.delete(new QueryWrapper<Like>().eq("user_id", userId).eq("target_id", momentId).eq("type", 1));
        //记录点赞数
        recordInteraction(RedisCacheKey.CACHE_MOMENT_LIKED, momentId, -1);
    }

    @Override
    public void favorite(Long momentId) {
        Long userId = UserContext.get();
        //查看是否收藏，已收藏不做处理，直接返回
        int count = favoriteMapper.inFavorites(userId, momentId);
        if (count <= 0) {
            //动态信息
            Moment moment;
            Object o = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).get(momentId);
            if (o == null) {
                moment = momentMapper.selectById(momentId);
            } else {
                moment = (Moment) o;
            }
            //构建收藏
            Favorite favorite = new Favorite();
            favorite.setUserId(userId);
            favorite.setMomentId(momentId);
            favorite.setFavoriteTime(new Date());
            favorite.setAuthor(moment.getAuthorId());
            favoriteMapper.insert(favorite);

            //记录收藏数
            recordInteraction(RedisCacheKey.CACHE_MOMENT_FAVOURITED, momentId, 1);
        }
    }

    @Override
    public void removeFavorite(Long momentId) {
        Long userId = UserContext.get();
        favoriteMapper.delete(new QueryWrapper<Favorite>().eq("user_id", userId).eq("moment_id", momentId));
    }

    @Override
    public void share(Long momentId) {
        Long userId = UserContext.get();
        //动态信息
        Moment moment;
        Object o = redisTemplate.boundHashOps(RedisCacheKey.CACHE_MOMENT).get(momentId);
        if (o == null) {
            moment = momentMapper.selectById(momentId);
        } else {
            moment = (Moment) o;
        }
        Share share = new Share();
        share.setUserId(userId);
        share.setAuthor(moment.getAuthorId());
        share.setShareTime(new Date());
        share.setMomentId(momentId);
        shareMapper.insert(share);
        //记录分享数
        recordInteraction(RedisCacheKey.CACHE_MOMENT_SHARED, momentId, 1);
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
            Moment moment = momentMapper.selectById(targetId);
            switch (key) {
                case RedisCacheKey.CACHE_MOMENT_SHARED :
                    amount += moment.getAmountOfShare();
                    break;
                case RedisCacheKey.CACHE_MOMENT_FAVOURITED:
                    amount += moment.getAmountOfFavorite();
                    break;
                case RedisCacheKey.CACHE_MOMENT_LIKED:
                    amount += moment.getAmountOfLike();
                    break;
                case RedisCacheKey.CACHE_MOMENT_WATCHED:
                    amount += moment.getAmountOfWatch();
                    break;
            }

            redisTemplate.boundHashOps(key).put(targetId.toString(), amount);
        }
    }

    @Override
    public Integer getCountByUser(Long userId) {
        LambdaQueryWrapper<Moment> query = new LambdaQueryWrapper<>();
        query.eq(Moment::getIsDisplay, true);
        query.eq(Moment::getStatus, 1);
        query.eq(Moment::getAuthorId, userId);
        Long count = momentMapper.selectCount(query);

        return count.intValue();
    }

    @Override
    public List<MomentDTO> search(String keyword, int count) {
        List<MomentDTO> moments = momentMapper.search(keyword, count);
        return moments;
    }
}
