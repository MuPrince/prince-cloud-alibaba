package com.prince.moment.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.prince.moment.entity.po.Reply;
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
public class CommentDTO implements Serializable {

    private String id;
    /**
     * 发言人
     */
    private Long utterer;
    /**
     * 评论内容
     */
    private String content;
    /**
     * 图片
     */
    private String images;
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

}
