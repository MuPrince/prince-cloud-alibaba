package com.prince.user.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 用户邀请
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 16:07
 */
@TableName("invitation")
@Data
public class Invitation implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 邀请者
     */
    private Long inviter;
    /**
     * 被邀请者
     */
    private Long invitee;
    /**
     * 邀请时间
     */
    private Date invitedTime;
    /**
     * 邀请状态
     */
    private Integer status;
}
