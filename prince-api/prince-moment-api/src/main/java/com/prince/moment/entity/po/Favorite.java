package com.prince.moment.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 收藏
 *
 * @author Mu Prince <br\>
 * @since 2022/8/5 18:33
 */
@Data
@TableName("favorite")
public class Favorite implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 收藏者id
     */
    private Long userId;
    /**
     * 动态作者id
     */
    private Long author;
    /**
     * 动态id
     */
    private Long momentId;
    /**
     * 点赞时间
     */
    private Date favoriteTime;

}
