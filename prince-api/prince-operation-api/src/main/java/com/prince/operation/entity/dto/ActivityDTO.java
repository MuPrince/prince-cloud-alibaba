package com.prince.operation.entity.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;

/**
 * Description : 活动
 *
 * @author Mu Prince <br\>
 * @since 2022/7/21 11:42
 */
@Data
public class ActivityDTO implements Serializable {

    private Long id;
    /**
     * 活动名称
     */
    @NotBlank(message = "活动名称不能为空")
    private String title;
    /**
     * 活动描述
     */
    private String description;
    /**
     * 活动海报
     */
    private String poster;
    /**
     * 活动描述图片
     */
    private String images;
    /**
     * 活动连接，app端uri
     */
    @NotBlank(message = "活动连接不能为空")
    private String link;
    /**
     * 是否正在进行中
     */
    private Boolean isInProgress;

    private Date createTime;

    private Date updateTime;
}
