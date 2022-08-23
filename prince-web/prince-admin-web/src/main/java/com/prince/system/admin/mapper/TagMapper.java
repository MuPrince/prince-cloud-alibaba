package com.prince.system.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.system.entity.po.Tag;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Description : 用户标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 10:56
 */
public interface TagMapper extends BaseMapper<Tag> {

    /**
     * Description :  查询用户的标签列表
     * @param userId 用户id
     * @return {@link List< Tag>}
     * @throws
     * @since 2022/7/16 15:05
     * @author Mu Prince
     */
    List<Tag> selectListByUserId(Long userId);
    /**
     * Description :  查询所有用户标签
     * @return {@link List< Tag>}
     * @since 2022/7/16 15:39
     * @author Mu Prince
     */
    @Select("select id, name, action_scope from tag where action_scope = 1 or action_scope = 2")
    List<Tag> selectUserTags();

    /**
     * Description :  查询所有内容标签
     * @return {@link List< Tag>}
     * @since 2022/7/16 15:39
     * @author Mu Prince
     */
    @Select("select id, name, action_scope from tag where action_scope = 1 or action_scope = 3")
    List<Tag> selectContentList();
}
