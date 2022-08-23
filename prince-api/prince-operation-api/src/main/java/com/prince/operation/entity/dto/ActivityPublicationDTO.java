package com.prince.operation.entity.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 14:14
 */
@Data
public class ActivityPublicationDTO implements Serializable {

    private Long id;
    /**
     * 活动id
     */
    @NotNull(message = "选择要发布的活动。")
    private Long activityId;
    /**
     * 活动标题
     */
    private String title;
    /**
     * 发布时间
     */
    private Date publicationDate;
    /**
     * 发布人
     */
    private Long userId;
    /**
     * 发布人昵称
     */
    private String nickname;
    /**
     * 开始时间
     */
    @NotNull(message = "设置开始时间。")
    private Date startTime;
    /**
     * 结束时间
     */
    @NotNull(message = "设置结束时间。")
    private Date endTime;
    /**
     * 状态. 1:未开始;2:未结束;3:已结束;
     */
    private int status;
    /**
     * 是否取消
     */
    private Boolean isCancel;
    /**
     * 推广
     */
    private Boolean isPromotion;
    /**
     * 取消时间
     */
    private Date cancelTime;
}
