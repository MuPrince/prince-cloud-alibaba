package com.prince.chat.tencent.constant.api;

/**
 * Description : 账号管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 16:25
 */
public interface AccountManage {
    /**导入单个帐号*/
     String ACCOUNT_IMPORT = "v4/im_open_login_svc/account_import";
    /**导入多个帐号*/
     String MULTI_ACCOUNT_IMPORT = "v4/im_open_login_svc/account_import";
    /**删除帐号*/
     String ACCOUNT_DELETE = "v4/im_open_login_svc/account_delete";
    /**查询帐号*/
     String ACCOUNT_CHECK = "v4/im_open_login_svc/account_check";
    /**失效帐号登录状态*/
     String ACCOUNT_KICK = "v4/im_open_login_svc/kick";
    /**查询账号在线状态*/
     String ACCOUNT_QUERY_STATE = "v4/openim/querystate";
}
