package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 轮播图
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 17:55
 */
@Data
@TableName("banner")
public class Banner implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 描述
     */
    private String description;
    /**
     * 排序
     */
    private Integer sort;
    /**
     * 是否启用0:禁用；1：启用
     */
    private Boolean enable;
    /**
     * 连接地址
     */
    private String link;
    /**
     * 图片
     */
    private String image;

    private Date createTime;

    private Date updateTime;
}
