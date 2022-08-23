package com.prince.admin.entity.dto;

import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 18:09
 */
@Data
public class MenuDTO implements Serializable, Comparable<MenuDTO> {

    @NotNull(message = "菜单id不能为空", groups = {Edit.class})
    private Long mid;
    /**
     * 菜单名称
     */
    @NotBlank(message = "菜单名字不能为空", groups = {Add.class, Edit.class})
    private String name;
    /**
     * 父菜单ID
     */
    private Long parentId;
    /**
     * 显示顺序
     */
    private Integer sort;
    /**
     * 请求地址
     */
    private String url;
    /**
     * 菜单状态（0显示 1隐藏）
     */
    private Boolean enabled;
    /**
     * 菜单图标
     */
    private String icon;
    /**
     * 菜单等级
     */
    private Integer level;
    /**
     * 指定用户是否拥有
     */
    private Boolean hasMenu;
    /**
     * 子菜单
     */
    public List<MenuDTO> children;

    public List<PermissionDTO> permissions;

    @Override
    public int compareTo(@org.jetbrains.annotations.NotNull MenuDTO menuDTO) {
        return this.sort - menuDTO.getSort();
    }
}
