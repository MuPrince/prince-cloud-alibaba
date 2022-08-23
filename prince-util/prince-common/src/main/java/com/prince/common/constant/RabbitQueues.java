package com.prince.common.constant;

/**
 * Description : mq消息队列
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 9:55
 */
public interface RabbitQueues {

    /**
     * im账号异步注册
     */
    String IM_REGISTRY_QUEUE = "im-registry-queue";
    /**
     * 网关流量统计
     */
    String TRAFFIC_STATISTIC_QUEUE = "traffic-statistic-queue";
}
