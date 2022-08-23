package com.prince.operation.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.server.context.SystemUserContext;
import com.prince.operation.mapper.VersionMapper;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.operation.entity.dto.VersionDTO;
import com.prince.operation.entity.po.Version;
import com.prince.operation.entity.vo.VersionVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:35
 */
@Service
@RequiredArgsConstructor
public class SystemVersionServiceImpl extends ServiceImpl<VersionMapper, Version> implements SystemVersionService {

    private final EntityTransformationUtil<Version, VersionDTO> transformer = new EntityTransformationUtil<>(Version.class, VersionDTO.class);

    private final VersionMapper versionMapper;

    @Override
    public void publish(VersionDTO dto) {
        Version version = transformer.transformToFirst(dto);
        version.setCreateTime(new Date());
        version.setNickname(SystemUserContext.getNickname());
        version.setUserId(SystemUserContext.getUserId());
        versionMapper.insert(version);
    }

    @Override
    public void edit(VersionDTO dto) {
        versionMapper.updateById(transformer.transformToFirst(dto));
    }

    @Override
    public void del(List<Long> versionIds) {
        versionMapper.deleteBatchIds(versionIds);
    }

    @Override
    public void delById(Long versionId) {
        versionMapper.deleteById(versionId);
    }

    @Override
    public void enable(Long versionId) {
        versionMapper.enable(versionId);
    }

    @Override
    public void close(Long versionId) {
        versionMapper.close(versionId);
    }

    @Override
    public PageInfo<VersionDTO> search(VersionVo vo) {
        LambdaQueryWrapper<Version> query = new LambdaQueryWrapper<>();
        if (vo.getVersion() != null) {
            query.likeRight(Version::getVersion, vo.getVersion());
        }
        if (vo.getPlatform() != 0) {
            query.eq(Version::getPlatform, vo.getPlatform());
        }
        if (vo.getStart() != null && vo.getEnd() != null && vo.getEnd().after(vo.getStart())) {
            query.gt(Version::getCreateTime, vo.getStart());
            query.lt(Version::getCreateTime, vo.getEnd());
        }
        PageHelper.startPage(vo.getCurrent(), vo.getSize());
        PageInfo<Version> page = PageInfo.of(versionMapper.selectList(query));

        return transformer.transformPageToSecond(page);
    }

    @Override
    public VersionDTO searchOne(Long versionId) {
        return transformer.transformToSecond(versionMapper.selectById(versionId));
    }
}
