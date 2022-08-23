package com.prince.chat.tencent.constant.api;

/**
 * Description : 全员推送
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 14:46
 */
public interface AllPushManage {
    /**全员推送*/
    String IM_PUSH = "v4/all_member_push/im_push";
    /**设置应用属性名称*/
    String IM_SET_ATTR_NAME = "v4/all_member_push/im_set_attr_name";
    /**获取应用属性名称*/
    String IM_GET_ATTR_NAME = "v4/all_member_push/im_get_attr_name";
    /**获取用户属性*/
    String IM_GET_ATTR = "v4/all_member_push/im_get_attr";
    /**设置用户属性*/
    String IM_SET_ATTR = "v4/all_member_push/im_set_attr";
    /**删除用户属性*/
    String IM_REMOVE_ATTR = "v4/all_member_push/im_remove_attr";
    /**获取用户标签*/
    String IM_GET_TAG = "v4/all_member_push/im_get_tag";
    /**添加用户标签*/
    String IM_ADD_TAG = "v4/all_member_push/im_add_tag";
    /**删除用户标签*/
    String IM_REMOVE_TAG = "v4/all_member_push/im_remove_tag";
    /**删除用户所有标签*/
    String IM_REMOVE_ALL_TAGS = "v4/all_member_push/im_remove_all_tags";
}
