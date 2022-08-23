package com.prince.task.listener;

import com.prince.common.constant.RabbitQueues;
import com.prince.task.entity.Traffic;
import lombok.RequiredArgsConstructor;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Description : 流量统计
 *
 * @author Mu Prince <br\>
 * @since 2022/7/26 14:43
 */
@Component
@RabbitListener(queues = RabbitQueues.TRAFFIC_STATISTIC_QUEUE)
@RequiredArgsConstructor
public class TrafficStatisticQueueListener {

    private final MongoTemplate mongoTemplate;

    @RabbitHandler
    public void recordTraffic(Traffic traffic) {
        if (traffic != null ) {
            mongoTemplate.insert(traffic);
        }
    }
}
