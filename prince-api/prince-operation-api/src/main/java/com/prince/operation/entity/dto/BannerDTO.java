package com.prince.operation.entity.dto;

import com.prince.common.validation.Edit;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Description : 轮播图
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 18:02
 */
@Data
public class BannerDTO implements Serializable {

    @NotNull(message = "id不能为空", groups = {Edit.class})
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
