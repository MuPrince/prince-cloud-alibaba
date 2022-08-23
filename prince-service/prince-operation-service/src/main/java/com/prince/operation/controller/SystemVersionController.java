package com.prince.operation.controller;

import com.github.pagehelper.PageInfo;
import com.prince.operation.service.SystemVersionService;
import com.prince.common.resp.RespResult;
import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import com.prince.operation.entity.dto.VersionDTO;
import com.prince.operation.entity.vo.VersionVo;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 版本控制
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:11
 */
@RestController
@RequestMapping("sys/version")
@RequiredArgsConstructor
public class SystemVersionController {

    private final SystemVersionService systemVersionService;
    /**
     * Description :  发布新版本
     * @param dto 版本信息
     * @return {@link RespResult<?>}
     * @since 2022/7/30 16:46
     * @author Mu Prince
     */
    @PutMapping("publish")
    public RespResult<?> publish(@Validated(Add.class) @RequestBody VersionDTO dto) {
        systemVersionService.publish(dto);
        return RespResult.ok();
    }
    /**
     * Description :  修改
     * @param dto 版本信息
     * @return {@link RespResult<?>}
     * @throws
     * @since 2022/7/30 16:46
     * @author Mu Prince
     */
    @PostMapping
    public RespResult<?> edit(@Validated(Edit.class)@RequestBody VersionDTO dto) {
        systemVersionService.edit(dto);
        return RespResult.ok();
    }
    /**
     * Description :  批量删除
     * @param ids 版本信息id集合
     * @return {@link RespResult<?>}
     * @since 2022/7/30 16:46
     * @author Mu Prince
     */
    @DeleteMapping
    public RespResult<?> del(@RequestBody List<Long> ids) {
        systemVersionService.del(ids);
        return RespResult.ok();
    }
    /**
     * Description :  删除版本控制信息
     * @param versionId 版本id
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    @DeleteMapping("del/{versionId}")
    public RespResult<?> delById(@PathVariable Long versionId) {
        systemVersionService.delById(versionId);
        return RespResult.ok();
    }
    /**
     * Description :  开启版本下载
     * @param versionId 版本id
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    @PostMapping("enable/{versionId}")
    public RespResult<?> enable(@PathVariable Long versionId) {
        systemVersionService.enable(versionId);
        return RespResult.ok();
    }
    /**
     * Description :  关闭下载
     * @param versionId 版本信息id
     * @since 2022/7/30 16:44
     * @author Mu Prince
     */
    @PostMapping("close/{versionId}")
    public RespResult<?> close(@PathVariable Long versionId) {
        systemVersionService.close(versionId);
        return RespResult.ok();
    }
    /**
     * Description :  分页查询版本信息列表
     * @param vo 查询条件
     * @return {@link RespResult< PageInfo< VersionDTO>>}
     * @since 2022/7/30 16:50
     * @author Mu Prince
     */
    @PostMapping("search")
    public RespResult<PageInfo<VersionDTO>> search(@RequestBody VersionVo vo) {
        return RespResult.ok(systemVersionService.search(vo));
    }
    /**
     * Description :  查询版本信息详情
     * @param versionId 版本信息id
     * @return {@link VersionDTO}
     * @since 2022/7/30 16:50
     * @author Mu Prince
     */
    @GetMapping("search/{versionId}")
    public RespResult<VersionDTO> searchOne(@PathVariable Long versionId) {
        return RespResult.ok(systemVersionService.searchOne(versionId));
    }

}
