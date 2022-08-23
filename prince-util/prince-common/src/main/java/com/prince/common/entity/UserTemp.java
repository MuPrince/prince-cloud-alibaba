package com.prince.common.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * Description : 用户信息
 *
 * @author Mu Prince <br\>
 * @since 2022/8/10 17:15
 */
@Data
public class UserTemp implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long userId;

    private String head;

    private Long roleId;

    private String nickname;
}
