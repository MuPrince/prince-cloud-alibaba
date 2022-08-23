package com.prince.moment.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:50
 */
@Data
public class MomentDTO implements Serializable {

    private Long id;
    /**
     * 标题
     */
    private String title;
    /**
     * 内容
     */
    private String content;
    /**
     * 排序
     */
    private Double sort;
    /**
     * 作者
     */
    private Long userId;
    /**
     * 点赞数
     */
    private Integer amountOfLike;
    /**
     * 评论数
     */
    private Integer amountOfComment;
    /**
     * 分享数
     */
    private Integer amountOfShare;
    /**
     * 收藏数
     */
    private Integer amountOfFavorite;
    /**
     * 观看数
     */
    private Integer amountOfWatch;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 类型。1：视频；2：文章；3：音频；4：图文
     */
    private Integer type;
    /**
     * 描述
     */
    private String description;
    /**
     * 经度
     */
    private BigDecimal longitude;
    /**
     * 纬度
     */
    private BigDecimal latitude;

}
