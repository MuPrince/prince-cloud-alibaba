package com.prince.user.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 关注
 *
 * @author Mu Prince <br\>
 * @since 2022/8/11 15:32
 */
@Data
@TableName("follow")
public class Follow implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 关注者
     */
    private Long follower;
    /**
     * 被关注者
     */
    private Long followed;
    /**
     * 关注时间
     */
    private Date followedTime;
}
