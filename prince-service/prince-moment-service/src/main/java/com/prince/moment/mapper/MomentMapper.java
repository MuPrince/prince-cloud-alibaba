package com.prince.moment.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.moment.entity.dto.MomentDTO;
import com.prince.moment.entity.po.Moment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:36
 */
public interface MomentMapper extends BaseMapper<Moment> {

    List<MomentDTO> search(@Param("keyword") String keyword, @Param("count") int count);
}
