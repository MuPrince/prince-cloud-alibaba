package com.prince.chat.tencent.constant.api;

/**
 * Description : 全局禁言管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 14:51
 */
public interface AllSilentManage {
    /**设置全局禁言*/
    String SET_NO_SPEAKING = "v4/openconfigsvr/setnospeaking";
    /**查询全局禁言*/
    String GET_NO_SPEAKING = "v4/openconfigsvr/getnospeaking";
}
