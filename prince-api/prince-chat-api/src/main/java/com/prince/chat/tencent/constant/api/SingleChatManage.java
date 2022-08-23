package com.prince.chat.tencent.constant.api;

/**
 * Description : 单聊消息
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 16:26
 */
public interface SingleChatManage {
    /**单发单聊消息*/
    String SEND_MSG = "v4/openim/sendmsg";
    /**批量发单聊消息*/
    String BATCH_SEND_MSG = "v4/openim/batchsendmsg";
    /**导入单聊消息*/
    String IMPORT_MSG = "v4/openim/importmsg";
    /**查询单聊消息*/
    String ADMIN_GET_ROAM_MSG = "v4/openim/admin_getroammsg";
    /**撤回单聊消息*/
    String ADMIN_MSG_WITH_DRAW = "v4/openim/admin_msgwithdraw";
    /**设置单聊消息已读*/
    String ADMIN_SET_MSG_READ = "v4/openim/admin_set_msg_read";
}
