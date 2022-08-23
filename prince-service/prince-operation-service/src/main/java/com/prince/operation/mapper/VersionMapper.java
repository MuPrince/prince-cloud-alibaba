package com.prince.operation.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.operation.entity.po.Version;
import org.apache.ibatis.annotations.Update;

/**
 * Description : 版本控制
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:32
 */
public interface VersionMapper extends BaseMapper<Version> {

    @Update("update version set enable = 1 where id = #{versionId}")
    void enable(Long versionId);

    @Update("update version set enable = 0 where id = #{versionId}")
    void close(Long versionId);
}
