package com.prince.user.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 15:04
 */
@Data
public class PrinceNumberDTO implements Serializable {

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
}
