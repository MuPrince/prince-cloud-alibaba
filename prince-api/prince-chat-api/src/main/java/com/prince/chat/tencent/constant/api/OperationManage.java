package com.prince.chat.tencent.constant.api;

/**
 * Description : 运营管理
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 14:53
 */
public interface OperationManage {
    /**拉取运营数据*/
    String GET_APP_INFO = "v4/openconfigsvr/getappinfo";
    /**下载消息记录*/
    String GET_HISTORY = "v4/open_msg_svc/get_history";
    /**获取服务器 IP 地址*/
    String GET_IP_LIST = "v4/ConfigSvc/GetIPList";
}
