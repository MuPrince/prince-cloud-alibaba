package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.po.Topic;
import com.prince.moment.service.TopicService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 话题
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 18:58
 */
@RestController
@RequestMapping("topic")
@RequiredArgsConstructor
public class TopicController {

    private final TopicService topicService;

    @PutMapping
    public RespResult<?> add(@RequestBody Topic topic) {
        topicService.add(topic);
        return RespResult.ok();
    }

    @PostMapping
    public RespResult<?> edit(@RequestBody Topic topic) {
        topicService.edit(topic);
        return RespResult.ok();
    }

    @GetMapping("top")
    public RespResult<List<Topic>> getTopTen(@RequestParam("keyword") String keyword) {
        return RespResult.ok(topicService.getTopTen(keyword));
    }

    @GetMapping("search")
    public RespResult<PageInfo<Topic>> search(@RequestParam("keyword") String keyword, @RequestParam("current")int current) {
        return RespResult.ok(null);
    }
}
