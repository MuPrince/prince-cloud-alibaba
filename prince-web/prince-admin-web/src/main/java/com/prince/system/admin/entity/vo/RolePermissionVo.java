package com.prince.system.admin.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;

/**
 * Description : 角色授权列表
 *
 * @author Mu Prince <br\>
 * @since 2022/7/4 10:57
 */
@Data
public class RolePermissionVo implements Serializable {

    @NotNull(message = "角色ID不能为空")
    private Long roleId;

    private Set<Long> permissions;
}
