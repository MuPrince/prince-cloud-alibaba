package com.prince.admin.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 18:05
 */
@Data
@TableName("sys_menu")
public class Menu {

    @TableId(type = IdType.ASSIGN_ID)
    private Long mid;
    /**
     * 菜单名称
     */
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
    private Boolean enable;
    /**
     * 菜单图标
     */
    private String icon;
    /**
     * 菜单等级
     */
    private Integer level;

}
