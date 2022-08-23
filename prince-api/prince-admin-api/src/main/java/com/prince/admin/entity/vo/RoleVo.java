package com.prince.admin.entity.vo;

import com.prince.admin.entity.dto.RoleDTO;
import com.prince.admin.entity.po.Role;
import com.prince.common.util.EntityTransformationUtil;
import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

/**
 * Description : 角色 视图对象
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 16:24
 */
@Data
public class RoleVo extends BaseVo implements Serializable {
    /**
     * id
     */
    private Long rid;
    /**
     * 角色名称
     */
    @NotEmpty(message = "名称不能为空")
    private String roleName;
    /**
     * 描述
     */
    private String description;
    /**
     * 角色等级
     */
    @NotEmpty(message = "等级必填")
    private Integer level;

}
