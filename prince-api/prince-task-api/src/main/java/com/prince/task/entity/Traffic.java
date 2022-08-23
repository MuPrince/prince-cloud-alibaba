package com.prince.task.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 流量统计
 *
 * @author Mu Prince <br\>
 * @since 2022/7/26 14:58
 */
@Data
public class Traffic implements Serializable {


    private String _id;
    /**
     * 请求路径
     */
    private String uri;
    /**
     * 用户id
     */
    private String user;
    /**
     * 请求时间
     */
    private Date time;
    /**
     * 请求方式
     */
    private String method;
    /**
     * 附加信息
     */
    private String message;

}
