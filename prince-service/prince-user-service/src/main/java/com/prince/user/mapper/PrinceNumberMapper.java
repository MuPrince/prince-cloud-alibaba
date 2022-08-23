package com.prince.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.user.entity.po.PrinceNumber;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Description : prince号
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 15:09
 */
public interface PrinceNumberMapper extends BaseMapper<PrinceNumber> {
    void insertBatch(@Param("nums") List<PrinceNumber> nums);

    @Select("select number from prince_number")
    List<Long> selectAllNumber();
}
