package com.prince.user.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : prince号
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 14:58
 */
@Data
@TableName("prince_number")
public class PrinceNumber implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * prince号
     */
    private Long princeNumber;
    /**
     * 靓号等级. -1：保留号码；0：普通账号；1；2；...。升序
     */
    private Integer level;
    /**
     * 是否被使用
     */
    private Boolean isUsed;
    /**
     * 是否可回收
     */
    private Boolean isRecyclable;
    /**
     * 最后使用用户
     */
    private Long lastUser;
}
