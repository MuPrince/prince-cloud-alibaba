package com.prince.operation.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/28 17:33
 */
@Data
public class ActivityPublicationVo extends BaseVo implements Serializable {

    private String title;

    /**
     * 发布人昵称
     */
    private String nickname;
}
