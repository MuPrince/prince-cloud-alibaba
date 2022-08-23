package com.prince.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.admin.entity.vo.MenuVo;
import com.prince.common.exception.AdminServiceException;
import com.prince.server.context.SystemUserContext;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.po.Menu;
import com.prince.common.enums.SystemRole;
import com.prince.admin.mapper.MenuMapper;
import com.prince.common.util.EntityTransformationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Description : 菜单
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:39
 */
@Service
@RequiredArgsConstructor
public class SystemMenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements SystemMenuService {

    private final MenuMapper menuMapper;

    private static final EntityTransformationUtil<Menu, MenuDTO> transformer = new EntityTransformationUtil<>(Menu.class, MenuDTO.class);

    @Override
    public void addMenu(MenuDTO menuDTO) {
        menuMapper.insert(transformer.transformToFirst(menuDTO));
    }

    @Override
    public void updateMenu(MenuDTO menuDTO) {
        menuMapper.updateById(transformer.transformToFirst(menuDTO));
    }

    @Override
    public PageInfo<MenuDTO> search(MenuVo vo) {
        LambdaQueryWrapper<Menu> query = new LambdaQueryWrapper<>();
        if (vo.getParentId() != null) {
            query.eq(Menu::getParentId, vo.getParentId());
        }
        if (vo.getEnabled() != null) {
            query.eq(Menu::getEnable, vo.getEnabled());
        }
        if (vo.getLevel() != null) {
            query.eq(Menu::getLevel, vo.getLevel());
        }
        if (vo.getName() != null) {
            query.like(Menu::getName, vo.getName());
        }
        if (vo.getUrl() != null) {
            query.likeRight(Menu::getUrl, vo.getUrl());
        }
        PageHelper.startPage(vo.getCurrent(), vo.getSize());
        PageInfo<Menu> page = PageInfo.of(menuMapper.selectList(query));

        return transformer.transformPageToSecond(page);
    }
    @Override
    public List<MenuDTO> getTree(Long roleId) {
        long current = SystemUserContext.getRoleId();
        if (!(SystemRole.ADMIN.id.equals(current))) throw new AdminServiceException("没有权限");
        List<MenuDTO> result = new ArrayList<>();
        List<Menu> ownedMenus = menuMapper.selectListByRoleId(roleId);
        Set<Long> owned = new HashSet<>();
        for (Menu menu : ownedMenus) {
            owned.add(menu.getMid());
        }
        List<Menu> all = menuMapper.selectList(new QueryWrapper<Menu>().orderByDesc("sort"));
        Map<Long, MenuDTO> map = new TreeMap<>();
        //将所有菜单数据缓存
        all.forEach(menu -> {
            MenuDTO menuDTO = transformer.transformToSecond(menu);
            menuDTO.setHasMenu(owned.contains(menuDTO.getMid()));
            map.put(menu.getMid(), menuDTO);
        });
        buildTree(map, result);
        return result;
    }

    @Override
    public List<MenuDTO> getCurrentTree() {
        long roleId = SystemUserContext.getRoleId();
        List<Menu> list;
        if (SystemRole.ADMIN.id.equals(roleId)) {
            list = menuMapper.selectList(new QueryWrapper<Menu>().orderByDesc("sort"));
        } else {
            list = menuMapper.selectListByRoleId(roleId);
        }
        List<MenuDTO> result = new ArrayList<>();
        if (list == null || list.size() <= 0) {
            return result;
        }
        Map<Long, MenuDTO> map = new TreeMap<>();
        //将所有菜单数据缓存
        list.forEach(menu -> {
            MenuDTO menuDTO = transformer.transformToSecond(menu);
            map.put(menu.getMid(), menuDTO);
        });
        buildTree(map, result);
        return result;
    }

    @Override
    public List<MenuDTO> getFullTree() {
        List<MenuDTO> result = new ArrayList<>();
        List<Menu> all = menuMapper.selectList(new QueryWrapper<Menu>().orderByDesc("sort"));
        Map<Long, MenuDTO> map = new HashMap<>();
        //将所有菜单数据缓存
        all.forEach(menu -> {
            MenuDTO menuDTO = transformer.transformToSecond(menu);
            map.put(menu.getMid(), menuDTO);
        });
        buildTree(map, result);
        return result;
    }

    private void buildTree(Map<Long, MenuDTO> map, List<MenuDTO> tree) {
        //组装树状结构
        map.forEach((k, v) -> {
            MenuDTO menuDTO = map.get(v.getParentId());
            if (menuDTO != null) {
                if (menuDTO.children == null) {
                    menuDTO.children = new ArrayList<>();
                }
                menuDTO.children.add(v);
            }
            if (v.getParentId() == 0L) {
                tree.add(v);
            }
        });
        tree.forEach(m -> {
            if (m.children != null) {
                Collections.sort(m.children);
            }
        });
        Collections.sort(tree);
    }
}
