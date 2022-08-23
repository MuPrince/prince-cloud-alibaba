package com.prince.chat.tencent.constant.api;

/**
 * Description : 关系链管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 14:48
 */
public interface RelationManage {
    /**添加好友*/
    String FRIEND_ADD = "v4/sns/friend_add";
    /**导入好友*/
    String FRIEND_IMPORT = "v4/sns/friend_import";
    /**更新好友*/
    String FRIEND_UPDATE = "v4/sns/friend_update";
    /**删除好友*/
    String FRIEND_DELETE = "v4/sns/friend_delete";
    /**删除所有好友*/
    String FRIEND_DELETE_ALL = "v4/sns/friend_delete_all";
    /**校验好友*/
    String FRIEND_CHECK = "v4/sns/friend_check";
    /**拉取好友*/
    String FRIEND_GET = "v4/sns/friend_get";
    /**拉取指定好友*/
    String FRIEND_GET_LIST = "v4/sns/friend_get_list";
    /**添加黑名单*/
    String BLACK_LIST_ADD = "v4/sns/black_list_add";
    /**删除黑名单*/
    String BLACK_LIST_DELETE = "v4/sns/black_list_delete";
    /**拉取黑名单*/
    String BLACK_LIST_GET = "v4/sns/black_list_get";
    /**校验黑名单*/
    String BLACK_LIST_CHECK = "v4/sns/black_list_check";
    /**添加分组*/
    String GROUP_ADD = "v4/sns/group_add";
    /**删除分组*/
    String GROUP_DELETE = "v4/sns/group_delete";
    /**拉取分组*/
    String GROUP_GET = "v4/sns/group_get";
}
