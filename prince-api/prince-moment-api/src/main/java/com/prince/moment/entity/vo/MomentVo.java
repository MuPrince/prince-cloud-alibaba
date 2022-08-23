package com.prince.moment.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:50
 */
@Data
public class MomentVo extends BaseVo implements Serializable {

    private Long id;

    private String title;

    private String content;

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

}
