package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 活动发布
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 12:06
 */
@Data
@TableName("activity_publication")
public class ActivityPublication implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 活动id
     */
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
    private Date startTime;
    /**
     * 结束时间
     */
    private Date endTime;
    /**
     * 是否取消发布
     */
    private Boolean isCancel;
    /**
     *
     */
    private Boolean isPromotion;
    /**
     * 取消时间
     */
    private Date cancelTime;
}
