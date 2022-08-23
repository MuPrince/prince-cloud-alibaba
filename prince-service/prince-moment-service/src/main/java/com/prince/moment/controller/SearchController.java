package com.prince.moment.controller;

import com.prince.common.resp.RespResult;
import com.prince.moment.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Description : 动态搜索
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 11:35
 */
@RestController
@RequestMapping("search")
@RequiredArgsConstructor
public class SearchController {

    private final SearchService searchService;

    /**
     * Description :  查询所有内容
     * @param keyword 关键字
     * @return {@link RespResult< Map< String, Object>>}
     * @since 2022/8/13 11:40
     * @author Mu Prince
     */
    @GetMapping("all")
    public RespResult<Map<String, Object>> searchAll(@RequestParam String keyword) {
        return RespResult.ok(searchService.searchAll(keyword));
    }
}
