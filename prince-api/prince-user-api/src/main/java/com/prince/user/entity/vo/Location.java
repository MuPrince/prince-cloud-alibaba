package com.prince.user.entity.vo;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Description : 定位信息
 *
 * @author Mu Prince <br\>
 * @since 2022/8/12 10:47
 */
@Data
public class Location implements Serializable {

    /**
     * 用户id
     */
    private Long userId;
    /**
     * 经度
     */
    private BigDecimal longitude;
    /**
     * 纬度
     */
    private BigDecimal latitude;
    /**
     * 地点
     */
    private String place;
}
