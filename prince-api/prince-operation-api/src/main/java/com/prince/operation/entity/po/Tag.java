package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 10:57
 */
@Data
@TableName("tag")
public class Tag implements Serializable {

    @TableId(type = IdType.AUTO)
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
