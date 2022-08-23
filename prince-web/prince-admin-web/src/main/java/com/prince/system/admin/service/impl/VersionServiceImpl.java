package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.admin.context.SystemUserContext;
import com.prince.admin.entity.po.SystemUser;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.entity.dto.VersionDTO;
import com.prince.system.entity.po.Version;
import com.prince.admin.mapper.VersionMapper;
import com.prince.admin.service.VersionService;
import com.prince.system.entity.vo.VersionVo;
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
public class VersionServiceImpl extends ServiceImpl<VersionMapper, Version> implements VersionService {

    private final EntityTransformationUtil<Version> transform = new EntityTransformationUtil<>();

    private final VersionMapper versionMapper;

    @Override
    public void publish(VersionDTO dto) {
        SystemUser user = SystemUserContext.getUser();
        Version version = transform.transformTo(dto, Version.class);
        version.setCreateTime(new Date());
        version.setNickname(user.getNickname());
        version.setUserId(user.getId());
        versionMapper.insert(version);
    }

    @Override
    public void edit(VersionDTO dto) {
        versionMapper.updateById(transform.transformTo(dto, Version.class));
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
        EntityTransformationUtil<VersionDTO> trans = new EntityTransformationUtil<>();
        PageHelper.startPage(vo.getCurrent(), vo.getSize());
        PageInfo<Version> page = PageInfo.of(versionMapper.selectList(query));

        return trans.transformPageFrom(page, VersionDTO.class);
    }

    @Override
    public VersionDTO searchOne(Long versionId) {
        EntityTransformationUtil<VersionDTO> trans = new EntityTransformationUtil<>();
        return trans.transformTo(versionMapper.selectById(versionId), VersionDTO.class);
    }
}
