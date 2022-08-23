package com.prince.moment.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 话题
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 18:18
 */
@Data
@TableName("topic")
public class Topic implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long tid;
    /**
     * 话题
     */
    private String keyword;
    /**
     * 描述
     */
    private String description;
    /**
     * 图片
     */
    private String image;
    /**
     * 热度
     */
    private Integer hot;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改时间
     */
    private Date updateTime;
}
