package com.prince.operation.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 11:03
 */
@Data
public class TagDTO implements Serializable {

    private Long id;
    /**
     * 名字
     */
    private String name;
    /**
     * 作用范围  1：全部；2：用户；3：内容
     */
    private Integer actionScope;
}
