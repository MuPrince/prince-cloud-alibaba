package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 活动
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 11:28
 */
@Data
@TableName("activity")
public class Activity implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 活动名称
     */
    private String title;
    /**
     * 活动描述
     */
    private String description;
    /**
     * 活动海报
     */
    private String poster;
    /**
     * 活动描述图片
     */
    private String images;
    /**
     * 活动连接
     */
    private String link;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改时间
     */
    private Date updateTime;

}
