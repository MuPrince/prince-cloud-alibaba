package com.prince.common.entity.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * Description : 基础VO 用于封装分页参数
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 22:28
 */
@Data
public class BaseVo implements Serializable {

    /**
     * 当前页
     */
    public Integer current = 1;

    /**
     * 条数
     */
    public Integer size = 10;

    /**
     * 总条数
     */
    public Integer total;
}
