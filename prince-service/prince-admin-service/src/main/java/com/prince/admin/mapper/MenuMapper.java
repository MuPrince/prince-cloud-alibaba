package com.prince.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.admin.entity.po.Menu;

import java.util.List;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:38
 */
public interface MenuMapper extends BaseMapper<Menu> {
    /**
     * Description :  根据角色id查询菜单列表
     * @param roleId 角色id
     * @return {@link List< Menu>}
     * @throws
     * @since 2022/7/7 14:40
     * @author Mu Prince
     */
    List<Menu> selectListByRoleId(Long roleId);
}
