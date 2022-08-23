package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.po.Topic;
import com.prince.moment.service.SystemTopicService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Nullable;
import java.util.List;

/**
 * Description : 话题管理
 *
 * @author Mu Prince <br\>
 * @since 2022/8/16 14:12
 */
@RestController
@RequestMapping("sys/topic")
@RequiredArgsConstructor
public class SystemTopicController {

    private final SystemTopicService systemTopicService;

    @PutMapping
    public RespResult<?> add(@RequestBody Topic topic) {
        systemTopicService.add(topic);
        return RespResult.ok();
    }

    @PostMapping
    public RespResult<?> edit(@RequestBody Topic topic) {
        systemTopicService.edit(topic);
        return RespResult.ok();
    }

    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        systemTopicService.del(ids);
        return RespResult.ok();
    }

    @DeleteMapping("del/{topicId}")
    public RespResult<?> delOne(@PathVariable Long topicId) {
        systemTopicService.del(topicId);
        return RespResult.ok();
    }

    @GetMapping("getPage")
    public RespResult<PageInfo<Topic>> getPage(@RequestParam("current") int current, @RequestParam("size") int size,
                                               @Nullable @RequestParam("description") String description, @Nullable @RequestParam("keyword") String keyword) {
        PageInfo<Topic> topics = systemTopicService.getPage(description, keyword, current, size);
        return RespResult.ok(topics);
    }
}
