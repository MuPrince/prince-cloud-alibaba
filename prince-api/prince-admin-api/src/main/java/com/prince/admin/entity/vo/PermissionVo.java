package com.prince.admin.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;

/**
 * Description : 权限
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 18:02
 */
@Data
public class PermissionVo extends BaseVo implements Serializable {

    /**
     * 菜单
     */
    private Long menuId;
    /**
     * 菜单名称
     */
    private String menuName;
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
    /**
     * 权限描述
     */
    private String description;
}
