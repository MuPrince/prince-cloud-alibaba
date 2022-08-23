package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.system.entity.dto.KeywordDTO;
import com.prince.system.entity.vo.KeywordVo;
import com.prince.system.admin.service.KeywordService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 关键字
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:30
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("keyword")
public class KeywordController {

    private final KeywordService keywordService;
    /**
     * Description :  添加
     * @param keywordDTO 关键字信息
     * @return {@link RespResult<?>}
     * @since 2022/7/13 12:48
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> add(@Validated(Add.class) @RequestBody KeywordDTO keywordDTO) {
        keywordService.add(keywordDTO);
        return RespResult.ok();
    }
    /**
     * Description :  修改
     * @param keywordDTO 关键字信息
     * @return {@link RespResult<?>}
     * @since 2022/7/13 12:49
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> edit(@Validated(Edit.class) @RequestBody KeywordDTO keywordDTO) {
        keywordService.edit(keywordDTO);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除
     * @param ids id集合
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/13 12:49
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && ids.size() > 0) {
            keywordService.removeByIds(ids);
        }
        return RespResult.ok();
    }
    /**
     * Description : 删除
     * @param id id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/13 12:49
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        keywordService.removeById(id);
        return RespResult.ok();
    }
    /**
     * Description :  分页查询
     * @param keywordVo 条件
     * @return {@link RespResult< PageInfo< KeywordDTO>>}
     * @throws
     * @since 2022/7/13 12:49
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<KeywordDTO>> search(@RequestBody KeywordVo keywordVo) {
        return RespResult.ok(keywordService.search(keywordVo));
    }
    /**
     * Description : 查询详情
     * @param id id
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/13 12:49
     * @author Mu Prince
     */
    @GetMapping("search/{id}")
    public RespResult<?> searchOne(@PathVariable Long id) {
        return RespResult.ok(keywordService.searchOne(id));
    }
}
