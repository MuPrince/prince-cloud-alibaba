package com.prince.system.admin.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;

/**
 * Description : 角色菜单列表
 *
 * @author Mu Prince <br\>
 * @since 2022/7/5 10:49
 */
@Data
public class RoleMenuVo implements Serializable {

    @NotNull(message = "角色不能为空")
    private Long roleId;

    private Set<Long> menuIds;
}
