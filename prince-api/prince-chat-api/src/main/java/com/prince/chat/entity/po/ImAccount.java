package com.prince.chat.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : Im账号
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 10:10
 */
@Data
@TableName("im_account")
public class ImAccount implements Serializable {

    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * im账号
     */
    private String account;


    private Date created;
    private Date updated;
}
