package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 关键词
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:25
 */
@Data
@TableName("keyword")
public class Keyword implements Serializable {

    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 关键字
     */
    private String keyword;
    /**
     * 作用范围。1：虚拟屋；2：聊天室
     */
    private Integer actionScope;
    /**
     * 匹配方式。1：字符串；2：正则
     */
    private Integer matchingWay;

}
