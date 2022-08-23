package com.prince.moment.entity.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 作品集
 *
 * @author Mu Prince <br\>
 * @since 2022/8/12 11:54
 */
@Data
public class PortfolioDTO implements Serializable {

    private Long id;
    /**
     * 作品集名称
     */
    private String name;
    /**
     * 所属用户
     */
    private Long userId;
    /**
     * 类型。1：视频；2：文章；3：音频；4：图文
     */
    private Integer type;
    /**
     * 封面
     */
    private String image;
    /**
     * 描述
     */
    private String description;
    /**
     * 当前集数
     */
    private Integer currentSection;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改时间
     */
    private Date updateTime;

}
