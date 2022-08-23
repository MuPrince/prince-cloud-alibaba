package com.prince.system.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.system.entity.dto.TagDTO;
import com.prince.system.entity.po.Tag;
import com.prince.system.entity.vo.TagVo;

import java.util.List;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 14:15
 */
public interface TagService extends IService<Tag> {

    /**
     * Description :  添加
     * @param tagDTO 标签信息
     * @since 2022/7/16 15:03
     * @author Mu Prince
     */
    void add(TagDTO tagDTO);
    /**
     * Description :  修改
     * @param tagDTO 标签信息
     * @since 2022/7/16 15:03
     * @author Mu Prince
     */
    void edit(TagDTO tagDTO);
    /**
     * Description :  条件查询
     * @param tagVo 查询条件
     * @return {@link PageInfo< TagDTO>}
     * @since 2022/7/16 15:04
     * @author Mu Prince
     */
    PageInfo<TagDTO> search(TagVo tagVo);
    /**
     * Description :  查询用户的标签列表
     * @param userId 用户id
     * @return {@link List< TagDTO>}
     * @throws
     * @since 2022/7/16 15:04
     * @author Mu Prince
     */
    List<TagDTO> getListByUserId(Long userId);
    /**
     * Description : 获取所有用户标签
     * @return {@link List< TagDTO>}
     * @since 2022/7/16 15:04
     * @author Mu Prince
     */
    List<TagDTO> getUserTags();
    /**
     * Description :  获取所有内容标签
     * @return {@link List< TagDTO>}
     * @since 2022/7/16 15:04
     * @author Mu Prince
     */
    List<TagDTO> getContentTags();
}
