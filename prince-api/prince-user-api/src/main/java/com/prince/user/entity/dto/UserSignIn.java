package com.prince.user.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * Description : 用户注册信息
 *
 * @author Mu Prince <br\>
 * @since 2022/8/16 17:29
 */
@Data
public class UserSignIn implements Serializable {
    /**
     * 是否注册
     */
    private Boolean isRegistered;
    /**
     * 是否设置标签
     */
    private Boolean isNoTags;

}
