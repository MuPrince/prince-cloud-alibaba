package com.prince.common.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 权限
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 23:57
 */
@Data
public class PermissionTemp implements Serializable {

    private Long pid;
    /**
     * url
     */
    private String url;
    /**
     * url匹配方式 0：完全匹配；1：通配符匹配
     */
    private Integer matchingWay;
    /**
     * 请求方式
     */
    private String method;

}
