package com.prince.admin.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 菜单视图对象
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:47
 */
@Data
public class MenuVo extends BaseVo implements Serializable {
    /**
     * 菜单名称
     */
    private String name;
    /**
     * 父菜单ID
     */
    private Long parentId;
    /**
     * 请求地址
     */
    private String url;
    /**
     * 菜单状态（0显示 1隐藏）
     */
    private Boolean enabled;
    /**
     * 菜单等级
     */
    private Integer level;
}
