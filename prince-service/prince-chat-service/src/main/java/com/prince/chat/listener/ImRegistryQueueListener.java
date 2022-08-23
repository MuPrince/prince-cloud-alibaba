package com.prince.chat.listener;

import com.prince.common.constant.RabbitQueues;
import com.prince.chat.service.ImService;
import com.prince.user.entity.po.User;
import lombok.RequiredArgsConstructor;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * Description : im注册队列监听
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 20:49
 */
@Component
@RabbitListener(queues = RabbitQueues.IM_REGISTRY_QUEUE)
@RequiredArgsConstructor
public class ImRegistryQueueListener {

    private final ImService imService;

    @RabbitHandler
    public void registryIm(User user) {
        System.out.println(user);
        if (user != null) {
            imService.registry(user);
        }
    }
}
