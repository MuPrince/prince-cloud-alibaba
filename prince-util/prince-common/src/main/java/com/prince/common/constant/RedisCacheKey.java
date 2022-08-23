package com.prince.common.constant;

/**
 * Description : redis 缓存key管理 常量类，用于数据缓存<br/>
 * <br/>
 * 所有的缓存key必须以cache开头 cache:xxx:xxx <br/>
 * <br/>
 * @author StrangePrince <br\>
 * @since 2022/6/19 13:27
 */
public interface RedisCacheKey {

    /**----------------------------用户 服务-----------------------------------*/
    /**
     * 登录用户的信息缓存
     */
    String USER_ONLINE = "cache:user:online:";
    /**
     * 实人认证缓存
     */
    String USER_ID_CARD_INFO = "cache:user:verify";
    /**
     * 邀请码缓存
     */
    String CACHE_INVITATION = "cache:user:invitation:";
    /**
     * 短信验证码
     */
    String PHONE_VERIFICATION = "cache:user:verification:";

    /**----------------------------动态 服务-----------------------------------*/
    String CACHE_MOMENT = "cache:moment";
    String CACHE_COMMENT = "cache:comment";
    /**
     * 缓存动态点赞量
     */
    String CACHE_MOMENT_LIKED = "cache:moment:liked";
    /**
     * 缓存动态评论量
     */
    String CACHE_MOMENT_COMMENTED = "cache:moment:commented";
    /**
     * 缓存动态分享量
     */
    String CACHE_MOMENT_SHARED = "cache:moment:shared";
    /**
     * 缓存动态收藏量
     */
    String CACHE_MOMENT_FAVOURITED = "cache:moment:favourited";
    /**
     * 缓存动态观看量
     */
    String CACHE_MOMENT_WATCHED = "cache:moment:watched";
    /**
     * 缓存评论点赞量
     */
    String CACHE_COMMENT_LIKED = "cache:comment:liked";
    /**
     * 缓存评论回复量
     */
    String CACHE_COMMENT_REPLIED = "cache:comment:replied";

    /**----------------------------聊天 服务-----------------------------------*/
    /**----------------------------管理后台 服务-----------------------------------*/
    String SYSTEM_USER_ONLINE = "cache:system_user:online";
    /**----------------------------运营 服务-----------------------------------*/
    /**----------------------------任务调度 服务-----------------------------------*/
    /**----------------------------商品 服务-----------------------------------*/
    /**----------------------------订单 服务-----------------------------------*/
}
