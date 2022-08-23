package com.prince.operation.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.prince.common.exception.OperationServiceException;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.po.Tag;
import com.prince.operation.entity.vo.Sign;

import java.util.List;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 11:36
 */
public interface TagService extends IService<Tag> {

    /**
     * Description : 获取所有用户标签
     * @return {@link List <  TagDTO >}
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
    /**
     * Description :  用户标记
     * @param sign 标记信息
     * @since 2022/7/19 17:54
     * @author Mu Prince
     */
    void mark(Sign sign);
    /**
     * Description :  取消标记
     * @param sign 标记信息
     * @since 2022/7/19 18:15
     * @author Mu Prince
     */
    void unmark(Sign sign);

    List<TagDTO> getTagsByUser(Long userId);
}
