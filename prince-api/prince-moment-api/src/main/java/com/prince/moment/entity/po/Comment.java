package com.prince.moment.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Description : 评论
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:41
 */
@Data
@TableName("comment")
public class Comment implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 发言人
     */
    private Long utterer;
    /**
     * 评论内容
     */
    private String content;
    /**
     * 动态id
     */
    private Long momentId;
    /**
     * 动态发布者
     */
    private Long poster;
    /**
     * 回复数
     */
    private Integer amountOfReply;
    /**
     * 点赞数
     */
    private Integer amountOfLike;
    /**
     * 评论时间
     */
    private Date createTime;

    private Boolean isSelf;

}
