package com.prince.moment.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.resp.RespResult;
import com.prince.moment.entity.dto.PortfolioDTO;
import com.prince.moment.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 作品集
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 9:39
 */
@RestController
@RequestMapping("portfolio")
@RequiredArgsConstructor
public class PortfolioController {

    private final PortfolioService portfolioService;
    /**
     * Description :  创建作品集
     * @param dto 作品集信息
     * @return {@link RespResult<?>}
     * @since 2022/8/13 10:03
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> create(@RequestBody PortfolioDTO dto) {
        portfolioService.create(dto);
        return RespResult.ok();
    }
    /**
     * Description :  修改作品集
     * @param dto 作品集信息
     * @return {@link RespResult<?>}
     * @since 2022/8/13 10:03
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> edit(@RequestBody PortfolioDTO dto) {
        portfolioService.edit(dto);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除
     * @param ids id集合
     * @return {@link RespResult<?>}
     * @since 2022/8/13 10:03
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> delByIds(@RequestBody List<Long> ids) {
        portfolioService.del(ids);
        return RespResult.ok();
    }
    /**
     * Description :  删除作品集
     * @param portfolioId 作品集id
     * @return {@link RespResult<?>}
     * @since 2022/8/13 10:03
     * @author Mu Prince
     */
    @DeleteMapping("del/{portfolioId}")
    public RespResult<?> delById(@PathVariable Long portfolioId) {
        portfolioService.del(portfolioId);
        return RespResult.ok();
    }
    /**
     * Description :  查询作品集详情
     * @param portfolioId 作品集id
     * @return {@link RespResult< PortfolioDTO>}
     * @since 2022/8/13 10:04
     * @author Mu Prince
     */
    @GetMapping("get/{portfolioId}")
    public RespResult<PortfolioDTO> findOne(@PathVariable Long portfolioId) {
        return RespResult.ok(portfolioService.findOne(portfolioId));
    }
    /**
     * Description :  分页查询用户作品集列表
     * @param userId 用户id
     * @param current 当前页
     * @return {@link RespResult< PageInfo< PortfolioDTO>>}
     * @since 2022/8/13 10:04
     * @author Mu Prince
     */
    @GetMapping("page/{current}/{userId}")
    public RespResult<PageInfo<PortfolioDTO>> findPage(@PathVariable Long userId, @PathVariable int current) {
        return RespResult.ok(portfolioService.findPage(userId, current, PrinceConstants.PAGE_SIZE));
    }
    /**
     * Description :  搜索作品集
     * @param keyword 搜索关键字
     * @return {@link RespResult< List< PortfolioDTO>>}
     * @since 2022/8/13 10:05
     * @author Mu Prince
     */
    @GetMapping("search")
    public RespResult<List<PortfolioDTO>> search(@RequestParam String keyword) {
        return RespResult.ok(portfolioService.search(keyword, 0));
    }
    /**
     * Description :  置顶
     * @param portfolioId id
     * @return {@link RespResult<?>}
     * @since 2022/8/13 15:25
     * @author Mu Prince
     */
    @PostMapping("top/{portfolioId}")
    public RespResult<?> top(@PathVariable Long portfolioId) {
        portfolioService.top(portfolioId);
        return RespResult.ok();
    }
}
