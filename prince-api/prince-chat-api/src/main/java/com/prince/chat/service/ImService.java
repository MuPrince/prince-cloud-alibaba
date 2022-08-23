package com.prince.chat.service;

import com.prince.user.entity.po.User;

/**
 * Description : Im即时聊天
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 20:39
 */
public interface ImService {
    /**
     * Description :  注册im账号
     * @param user 用户信息
     * @since 2022/7/14 10:05
     * @author Mu Prince
     */
    void registry(User user);
    /**
     * Description :  注册im账号
     * @param imAccount im账号
     * @since 2022/7/14 10:05
     * @author Mu Prince
     */
    void registry(String imAccount);
    /**
     * Description :
     * @param imAccount  im账号
     * @param nickname  昵称
     * @param headPic 头像
     * @since 2022/7/14 10:07
     * @author Mu Prince
     */
    void registry(String imAccount, String nickname, String headPic);

}
