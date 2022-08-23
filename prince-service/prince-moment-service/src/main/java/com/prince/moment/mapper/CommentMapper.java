package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.po.Comment;
import com.prince.moment.entity.po.Moment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:36
 */
public interface CommentMapper extends BaseMapper<Comment> {

}
