package com.prince.operation.entity.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * Description : 标记
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 17:47
 */
@Data
public class Sign implements Serializable {

    private Long userId;

    private List<Long> tags;
}
