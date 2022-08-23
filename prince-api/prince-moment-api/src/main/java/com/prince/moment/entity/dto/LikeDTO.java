package com.prince.moment.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 点赞
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:33
 */
@Data
public class LikeDTO implements Serializable {

    private Long id;
    /**
     * 点赞者id
     */
    private Long userId;
    /**
     * 目标对象拥有者id
     */
    private Long author;
    /**
     * 目标对象id
     */
    private Long targetId;
    /**
     * 点赞时间
     */
    private Date likeTime;
    /**
     * 目标对象类型。1：动态；2：评论
     */
    private Integer type;
}
