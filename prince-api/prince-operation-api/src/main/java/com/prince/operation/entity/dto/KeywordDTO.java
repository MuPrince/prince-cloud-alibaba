package com.prince.operation.entity.dto;

import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 11:43
 */
@Data
public class KeywordDTO implements Serializable {

    @NotNull(message = "id不能为空", groups = {Edit.class})
    private Long id;
    /**
     * 关键字。matchingWay=2时，该值为正则表达式
     */
    @NotBlank(message = "关键字不能为空", groups = {Add.class, Edit.class})
    private String keyword;
    /**
     * 作用范围。1：虚拟屋；2：聊天室
     */
    @NotNull(message = "作用范围不能为空", groups = {Add.class, Edit.class})
    private Integer actionScope;
    /**
     * 匹配方式。1：字符串；2：正则
     */
    @NotNull(message = "匹配方式不能为空", groups = {Add.class, Edit.class})
    private Integer matchingWay;
}
