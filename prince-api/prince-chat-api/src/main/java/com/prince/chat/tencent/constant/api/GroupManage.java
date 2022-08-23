package com.prince.chat.tencent.constant.api;

/**
 * Description : 群组管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 14:50
 */
public interface GroupManage {
    /**创建群组*/
    String CREATE_GROUP = "v4/group_open_http_svc/create_group";
    /**获取群详细资料*/
    String GET_GROUP_INFO = "v4/group_open_http_svc/get_group_info";
    /**获取群成员详细资料*/
    String GET_GROUP_MEMBER_INFO = "v4/group_open_http_svc/get_group_member_info";
    /**修改群基础资料*/
    String MODIFY_GROUP_BASE_INFO = "v4/group_open_http_svc/modify_group_base_info";
    /**增加群成员*/
    String ADD_GROUP_MEMBER = "v4/group_open_http_svc/add_group_member";
    /**删除群成员*/
    String DELETE_GROUP_MEMBER = "v4/group_open_http_svc/delete_group_member";
    /**修改群成员资料*/
    String MODIFY_GROUP_MEMBER_INFO = "v4/group_open_http_svc/modify_group_member_info";
    /**解散群组*/
    String DESTROY_GROUP = "v4/group_open_http_svc/destroy_group";
    /**获取用户所加入的群组*/
    String GET_JOINED_GROUP_LIST = "v4/group_open_http_svc/get_joined_group_list";
    /**查询用户在群组中的身份*/
    String GET_ROLE_IN_GROUP = "v4/group_open_http_svc/get_role_in_group";
    /**批量禁言和取消禁言*/
    String FORBID_SEND_MSG = "v4/group_open_http_svc/forbid_send_msg";
    /**获取被禁言群成员列表*/
    String GET_GROUP_SHUT_UIN = "v4/group_open_http_svc/get_group_shutted_uin";
    /**在群组中发送普通消息*/
    String SEND_GROUP_MSG = "v4/group_open_http_svc/send_group_msg";
    /**在群组中发送系统通知*/
    String SEND_GROUP_SYSTEM_NOTIFICATION = "v4/group_open_http_svc/send_group_system_notification";
    /**撤回群消息*/
    String GROUP_MSG_RECALL = "v4/group_open_http_svc/group_msg_recall";
    /**转让群主*/
    String CHANGE_GROUP_OWNER = "v4/group_open_http_svc/change_group_owner";
    /**导入群基础资料*/
    String IMPORT_GROUP = "v4/group_open_http_svc/import_group";
    /**导入群消息*/
    String IMPORT_GROUP_MSG = "v4/group_open_http_svc/import_group_msg";
    /**导入群成员*/
    String IMPORT_GROUP_MEMBER = "v4/group_open_http_svc/import_group_member";
    /**设置成员未读消息计数*/
    String SET_UNREAD_MSG_NUM = "v4/group_open_http_svc/set_unread_msg_num";
    /**删除指定用户发送的消息*/
    String DELETE_GROUP_MSG_BY_SENDER = "v4/group_open_http_svc/delete_group_msg_by_sender";
    /**拉取群历史消息*/
    String GROUP_MSG_GET_SIMPLE = "v4/group_open_http_svc/group_msg_get_simple";
    /**获取直播群在线人数*/
    String GET_ONLINE_MEMBER_NUM = "v4/group_open_http_svc/get_online_member_num";
}
