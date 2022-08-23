package com.prince.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.po.Menu;
import com.prince.admin.entity.vo.MenuVo;

import java.util.List;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:38
 */
public interface SystemMenuService extends IService<Menu> {
    /**
     * Description : 添加菜单
     * @param menuDTO 菜单信息
     * @since 2022/7/7 14:42
     * @author Mu Prince
     */
    void addMenu(MenuDTO menuDTO);
    /**
     * Description :  修改菜单
     * @param menuDTO 菜单信息
     * @since 2022/7/7 14:42
     * @author Mu Prince
     */
    void updateMenu(MenuDTO menuDTO);
    /**
     * Description :  条件查询菜单列表
     * @param vo 查询条件
     * @return {@link PageInfo< MenuDTO>}
     * @throws
     * @since 2022/7/7 14:41
     * @author Mu Prince
     */
    PageInfo<MenuDTO> search(MenuVo vo);
    /**
     * Description : 查询菜单树
     * @return {@link List< MenuDTO>}
     * @since 2022/7/7 14:41
     * @author Mu Prince
     */
    List<MenuDTO> getTree(Long roleId);
    /**
     * Description :  当前登录用户的菜单树
     * @return {@link List< MenuDTO>}
     * @since 2022/7/21 16:04
     * @author Mu Prince
     */
    List<MenuDTO> getCurrentTree();

    List<MenuDTO> getFullTree();
}
