package com.prince.operation.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.operation.entity.dto.VersionDTO;
import com.prince.operation.entity.po.Version;
import com.prince.operation.entity.vo.VersionVo;

import java.util.List;

/**
 * Description : 版本控制
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:33
 */
public interface SystemVersionService extends IService<Version> {
    /**
     * Description :  发布新版本
     * @param dto 版本信息
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    void publish(VersionDTO dto);
    /**
     * Description :  修改版本信息
     * @param dto 版本信息
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    void edit(VersionDTO dto);
    /**
     * Description :  批量删除版本控制信息
     * @param versionIds 版本id集合
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    void del(List<Long> versionIds);
    /**
     * Description :  删除版本控制信息
     * @param versionId 版本id
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    void delById(Long versionId);
    /**
     * Description :  开启版本下载
     * @param versionId 版本id
     * @since 2022/7/30 11:05
     * @author Mu Prince
     */
    void enable(Long versionId);
    /**
     * Description :  关闭下载
     * @param versionId 版本信息id
     * @since 2022/7/30 16:44
     * @author Mu Prince
     */
    void close(Long versionId);
    /**
     * Description :  分页查询版本信息
     * @param vo 查询条件
     * @return {@link PageInfo< VersionDTO>}
     * @since 2022/7/30 16:49
     * @author Mu Prince
     */
    PageInfo<VersionDTO> search(VersionVo vo);
    /**
     * Description :  查询版本信息详情
     * @param versionId 版本信息id
     * @return {@link VersionDTO}
     * @since 2022/7/30 16:50
     * @author Mu Prince
     */
    VersionDTO searchOne(Long versionId);
}
