package com.prince.operation.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 轮播图 视图对象
 *
 * @author Mu Prince <br\>
 * @since 2022/7/7 14:33
 */
@Data
public class BannerVo extends BaseVo implements Serializable {

    private Long id;
    /**
     * 描述
     */
    private String description;
    /**
     * 排序
     */
    private Integer sort;
    /**
     * 是否启用0:禁用；1：启用
     */
    private Boolean enable;
    /**
     * 连接地址
     */
    private String link;
    /**
     * 图片
     */
    private String image;

}
