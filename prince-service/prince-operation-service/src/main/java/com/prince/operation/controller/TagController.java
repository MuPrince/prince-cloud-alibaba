package com.prince.operation.controller;

import com.prince.common.annotation.ApiVersion;
import com.prince.common.exception.OperationServiceException;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.common.exception.UserServiceException;
import com.prince.common.resp.RespResult;
import com.prince.operation.entity.vo.Sign;
import com.prince.operation.service.TagService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description : 标签
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 11:42
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("tag")
public class TagController {

    private final TagService tagService;

    /**
     * Description :  用户标记交友偏向
     * @param sign 标记信息
     * @return {@link RespResult<?>}
     * @throws UserServiceException 标签数量限制
     * @since 2022/7/19 17:55
     * @author Mu Prince
     */
    @Deprecated
    @PostMapping("markUser")
    public RespResult<?> markUser(@RequestBody Sign sign) {
        List<Long> tags = sign.getTags();
        if (tags.size() > 3) {
            throw new OperationServiceException("最多选择3个标签");
        }
        tagService.mark(sign);
        return RespResult.ok();
    }
    /**
     * Description :  用户标记内容兴趣偏向
     * @param sign 标记信息
     * @return {@link RespResult<?>}
     * @throws UserServiceException 标签数量限制
     * @since 2022/7/19 17:56
     * @author Mu Prince
     */
    @Deprecated
    @PostMapping("markContent")
    public RespResult<?> markContent(Sign sign) {
        List<Long> tags = sign.getTags();
        if (tags.size() > 8) {
            throw new OperationServiceException("最多选择8个标签");
        }
        tagService.mark(sign);
        return RespResult.ok();
    }

    /**
     * Description :  用户标记交友偏向
     * @param sign 标记信息
     * @return {@link RespResult<?>}
     * @throws UserServiceException 标签数量限制
     * @since 2022/7/19 17:55
     * @author Mu Prince
     */
    @PostMapping("mark")
    public RespResult<?> markTags(@RequestBody Sign sign) {
        List<Long> tags = sign.getTags();
        if (tags.size() > 11) {
            throw new OperationServiceException("最多选择11个标签");
        }
        tagService.mark(sign);
        return RespResult.ok();
    }
    @GetMapping("getByUser/{userId}")
    public RespResult<List<TagDTO>> getTagsByUser(@PathVariable Long userId) {
        return RespResult.ok(tagService.getTagsByUser(userId));
    }
    /**
     * Description :  取消标记
     * @param sign 标记信息
     * @return {@link RespResult<?>}
     * @since 2022/7/19 18:22
     * @author Mu Prince
     */
    @PostMapping("unmark")
    public RespResult<?> unmark(Sign sign) {
        tagService.unmark(sign);
        return RespResult.ok();
    }
    /**
     * Description : 获取全部用户标签
     * @return {@link RespResult< List < TagDTO >>}
     * @since 2022/7/16 15:02
     * @author Mu Prince
     */
    @GetMapping("getUserTags")
    public RespResult<List<TagDTO>> getUserTags() {
        return RespResult.ok(tagService.getUserTags());
    }
    /**
     * Description : 获取全部内容标签
     * @return {@link RespResult<?>}
     * @since 2022/7/16 15:03
     * @author Mu Prince
     */
    @GetMapping("getContentTags")
    public RespResult<?> getContentTags() {
        return RespResult.ok(tagService.getContentTags());
    }
}
