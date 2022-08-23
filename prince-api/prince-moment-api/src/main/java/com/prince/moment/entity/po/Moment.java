package com.prince.moment.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:50
 */
@Data
@TableName("moment")
public class Moment implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    private Long authorId;
    /**
     * 标题
     */
    private String title;
    /**
     * 内容
     */
    private String content;
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
    /**
     * 地理位置
     */
    private String location;
    /**
     * 作品集id
     */
    private Long portfolioId;
    /**
     * 类型。1：视频；2：文章；3：音频；4：图文
     */
    private Integer type;
    /**
     * 是否展示
     */
    private Boolean isDisplay;
    /**
     * 是否接受礼物
     */
    private Boolean isAcceptPresent;
    /**
     * 禁止转发
     */
    private Boolean doNotForward;
    /**
     * 热度
     */
    private Integer hot;
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
     * 状态。1：正常；-1：下架
     */
    private Integer status;

    private String remark;

    @TableField(exist = false)
    private List<Topic> topics;

}
