package com.prince.system.admin.controller;

import com.github.pagehelper.PageInfo;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.system.entity.dto.BannerDTO;
import com.prince.system.entity.vo.BannerVo;
import com.prince.system.admin.service.BannerService;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 轮播
 *
 * @author Mu Prince <br\>
 * @since 2022/7/7 14:29
 */
@RestController
@RequestMapping("banner")
@RequiredArgsConstructor
public class BannerController {

    private final BannerService bannerService;

    /**
     * Description :  添加
     * @param bannerDTO banner信息
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:47
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> add(@Validated(Add.class) @RequestBody BannerDTO bannerDTO) {
        bannerService.add(bannerDTO);
        return RespResult.ok();
    }
    /**
     * Description :  修改
     * @param bannerDTO banner信息
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:47
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> edit(@Validated({Edit.class}) @RequestBody BannerDTO bannerDTO) {
        bannerService.edit(bannerDTO);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除
     * @param ids banner id集合
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:47
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && ids.size() > 0) bannerService.removeByIds(ids);
        return RespResult.ok();
    }
    /**
     * Description : 删除
     * @param id id
     * @return {@link RespResult<?>}
     * @since 2022/7/7 14:48
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        bannerService.removeById(id);
        return RespResult.ok();
    }
    /**
     * Description :  条件查询banner列表
     * @param bannerVo 查询条件
     * @return {@link RespResult< PageInfo< BannerDTO>>}
     * @since 2022/7/7 14:48
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<BannerDTO>> search(@RequestBody BannerVo bannerVo) {
        PageInfo<BannerDTO> result = bannerService.search(bannerVo);
        return RespResult.ok(result);
    }
    /**
     * Description : 查询banner详情
     * @param id id
     * @return {@link RespResult< BannerDTO>}
     * @since 2022/7/7 14:48
     * @author Mu Prince
     */
    @GetMapping("search/{id}")
    public RespResult<BannerDTO> searchOne(@PathVariable Long id) {
        EntityTransformationUtil<BannerDTO> transform = new EntityTransformationUtil<>();
        return RespResult.ok(transform.transformTo(bannerService.getById(id), BannerDTO.class));
    }

    @PostMapping("enable/{id}")
    public RespResult<?> enable(@PathVariable Long id) {
        bannerService.enable(id);
        return RespResult.ok();
    }
}
