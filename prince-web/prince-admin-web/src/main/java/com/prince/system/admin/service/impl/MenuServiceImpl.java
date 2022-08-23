package com.prince.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.prince.common.exception.SystemWebException;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.admin.context.SystemUserContext;
import com.prince.admin.entity.dto.MenuDTO;
import com.prince.admin.entity.po.Menu;
import com.prince.admin.enums.SystemRole;
import com.prince.admin.mapper.MenuMapper;
import com.prince.admin.service.MenuService;
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
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

    private final MenuMapper menuMapper;

    private static final EntityTransformationUtil<Menu> transform = new EntityTransformationUtil<>();

    @Override
    public void addMenu(MenuDTO menuDTO) {
        menuMapper.insert(transform.transformTo(menuDTO, Menu.class));
    }

    @Override
    public void updateMenu(MenuDTO menuDTO) {
        menuMapper.updateById(transform.transformTo(menuDTO, Menu.class));
    }

    @Override
    public PageInfo<MenuDTO> search(MenuDTO menuDTO, Integer current, Integer size) {
        LambdaQueryWrapper<Menu> query = new LambdaQueryWrapper<>();
        if (menuDTO.getParentId() != null) {
            query.eq(Menu::getParentId, menuDTO.getParentId());
        }
        if (menuDTO.getEnabled() != null) {
            query.eq(Menu::getEnable, menuDTO.getEnabled());
        }
        if (menuDTO.getLevel() != null) {
            query.eq(Menu::getLevel, menuDTO.getLevel());
        }
        if (menuDTO.getName() != null) {
            query.like(Menu::getName, menuDTO.getName());
        }
        if (menuDTO.getUrl() != null) {
            query.likeRight(Menu::getUrl, menuDTO.getUrl());
        }
        PageHelper.startPage(current, size);
        PageInfo<Menu> page = PageInfo.of(menuMapper.selectList(query));

        return new EntityTransformationUtil<MenuDTO>().transformPageFrom(page, MenuDTO.class);
    }
    @Override
    public List<MenuDTO> getTree(Long roleId) {
        long current = SystemUserContext.getRoleId();
        if (!(SystemRole.ADMIN.id.equals(current))) throw new SystemWebException("没有权限");
        List<MenuDTO> result = new ArrayList<>();
        List<Menu> ownedMenus = menuMapper.selectListByRoleId(roleId);
        Set<Long> owned = new HashSet<>();
        for (Menu menu : ownedMenus) {
            owned.add(menu.getMid());
        }
        List<Menu> all = menuMapper.selectList(new QueryWrapper<Menu>().orderByDesc("sort"));
        Map<Long, MenuDTO> map = new TreeMap<>();
        EntityTransformationUtil<MenuDTO> transform = new EntityTransformationUtil<>();
        //将所有菜单数据缓存
        all.forEach(menu -> {
            MenuDTO menuDTO = transform.transformTo(menu, MenuDTO.class);
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
        EntityTransformationUtil<MenuDTO> transform = new EntityTransformationUtil<>();
        Map<Long, MenuDTO> map = new TreeMap<>();
        //将所有菜单数据缓存
        list.forEach(menu -> {
            MenuDTO menuDTO = transform.transformTo(menu, MenuDTO.class);
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
        EntityTransformationUtil<MenuDTO> transform = new EntityTransformationUtil<>();
        //将所有菜单数据缓存
        all.forEach(menu -> {
            MenuDTO menuDTO = transform.transformTo(menu, MenuDTO.class);
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
