package com.prince.operation.controller;

import com.prince.operation.entity.po.Tag;
import com.github.pagehelper.PageInfo;
import com.prince.operation.service.SystemTagService;
import com.prince.common.resp.RespResult;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.vo.TagVo;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 标签管理
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 14:14
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("sys/tag")
public class SystemTagController {

    private final SystemTagService systemTagService;

    private final EntityTransformationUtil<Tag, TagDTO> transformer = new EntityTransformationUtil<>(Tag.class, TagDTO.class);

    /**
     * Description : 添加
     * @param tagDTO 标签信息
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:00
     * @author Mu Prince
     */
    @PutMapping
    public RespResult<?> add(@RequestBody TagDTO tagDTO) {
        systemTagService.add(tagDTO);
        return RespResult.ok();
    }
    /**
     * Description : 修改
     * @param tagDTO 标签信息
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:00
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> edit(@RequestBody TagDTO tagDTO) {
        systemTagService.edit(tagDTO);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除
     * @param ids id集合
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:00
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        if (ids != null && ids.size() > 0) {
            systemTagService.removeBatchByIds(ids);
        }
        return RespResult.ok();
    }
    /**
     * Description :  删除
     * @param id 标签id
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:01
     * @author Mu Prince
     */
    @DeleteMapping("del/{id}")
    public RespResult<?> delById(@PathVariable Long id) {
        systemTagService.removeById(id);
        return RespResult.ok();
    }
    /**
     * Description :  条件查询分页数据
     * @param tagVo 分页查询条件
     * @return {@link RespResult< PageInfo< TagDTO>>}
     * @since 2022/7/16 15:01
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<TagDTO>> search(@RequestBody TagVo tagVo) {
        return RespResult.ok(systemTagService.search(tagVo));
    }
    /**
     * Description :  查询详情
     * @param id 标签id
     * @return {@link RespResult< TagDTO>}
     * @throws
     * @since 2022/7/16 15:02
     * @author Mu Prince
     */
    @GetMapping("search/{id}")
    public RespResult<TagDTO> searchOne(@PathVariable Long id) {
        return RespResult.ok(transformer.transformToSecond(systemTagService.getById(id)));
    }
    /**
     * Description :  查询用户的标签
     * @param userId 用户id
     * @return {@link RespResult< List< TagDTO>>}
     * @throws
     * @since 2022/7/16 15:02
     * @author Mu Prince
     */
    @GetMapping("getTagsByUser/{userId}")
    public RespResult<List<TagDTO>> getTagsByUserId(@PathVariable Long userId) {
        return RespResult.ok(systemTagService.getListByUserId(userId));
    }
    /**
     * Description : 获取全部用户标签
     * @return {@link RespResult< List< TagDTO>>}
     * @since 2022/7/16 15:02
     * @author Mu Prince
     */
    @GetMapping("getUserTags")
    public RespResult<List<TagDTO>> getUserTags() {
        return RespResult.ok(systemTagService.getUserTags());
    }
    /**
     * Description : 获取全部内容标签
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:03
     * @author Mu Prince
     */
    @GetMapping("getContentTags")
    public RespResult<?> getContentTags() {
        return RespResult.ok(systemTagService.getContentTags());
    }

}
