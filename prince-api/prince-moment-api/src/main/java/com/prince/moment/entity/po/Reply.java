package com.prince.moment.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 回复
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:52
 */
@Data
@TableName("reply")
public class Reply implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 回复人
     */
    private Long replier;
    /**
     * 回复内容
     */
    private String content;
    /**
     * 图片
     */
    private String images;
    /**
     * 评论发言人
     */
    private Long utterer;
    /**
     * 评论id
     */
    private Long commentId;
    /**
     * 回复对象
     */
    private Long target;
    /**
     * 回复类型。1：评论；2：回复
     */
    private Integer type;

    private Date replyTime;
}
