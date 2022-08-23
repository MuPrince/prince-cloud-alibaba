package com.prince.moment.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;
import com.prince.moment.entity.dto.LikeDTO;
import com.prince.moment.entity.dto.MomentDTO;
import com.prince.moment.entity.po.Moment;

import java.util.List;

/**
 * Description : 动态
 *
 * @author Mu Prince <br\>
 * @since 2022/8/8 10:37
 */
public interface MomentService extends IService<Moment> {

    /**
     * Description :  发布动态
     * @param dto 动态信息
     * @since 2022/8/9 11:06
     * @author Mu Prince
     */
    void publish(MomentDTO dto);
    /**
     * Description :  删除
     * @param momentId 动态id
     * @since 2022/8/9 11:09
     * @author Mu Prince
     */
    void del(Long momentId);
    /**
     * Description :  分页查询
     * @param current 页码
     * @param size 条数
     * @return {@link PageInfo< MomentDTO>}
     * @since 2022/8/9 11:10
     * @author Mu Prince
     */
    PageInfo<MomentDTO> getPage(Integer current, Integer size);
    /**
     * Description :  查询详情
     * @param momentId 动态id
     * @return {@link MomentDTO}
     * @since 2022/8/9 11:10
     * @author Mu Prince
     */
    MomentDTO getOne(Long momentId);
    /**
     * Description :  点赞
     * @param like 点赞信息
     * @since 2022/8/9 11:10
     * @author Mu Prince
     */
    void like(LikeDTO like);
    /**
     * Description :  取消点赞
     * @param momentId 动态id
     * @since 2022/8/9 11:10
     * @author Mu Prince
     */
    void unlike(Long momentId);
    /**
     * Description :  收藏
     * @param momentId 动态id
     * @since 2022/8/9 11:11
     * @author Mu Prince
     */
    void favorite(Long momentId);
    /**
     * Description :  移除收藏
     * @param momentId 动态id
     * @since 2022/8/9 11:11
     * @author Mu Prince
     */
    void removeFavorite(Long momentId);
    /**
     * Description : 分享
     * @param momentId 动态id
     * @since 2022/8/9 11:11
     * @author Mu Prince
     */
    void share(Long momentId);
    /**
     * Description :  查询用户发布的动态数量
     * @param userId 用户id
     * @return {@link Integer}
     * @since 2022/8/12 9:51
     * @author Mu Prince
     */
    Integer getCountByUser(Long userId);

    List<MomentDTO> search(String keyword, int count);
}
