package com.prince.operation.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:43
 */
@Data
public class KeywordVo extends BaseVo implements Serializable {

    private Long id;
    /**
     * 关键字
     */
    private String keyword;
    /**
     * 作用范围。1：虚拟屋；2：聊天室
     */
    private Integer actionScope;
    /**
     * 匹配方式。1：字符串；2：正则
     */
    private Integer matchingWay;
}
