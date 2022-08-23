package com.prince.system.admin.entity.vo;

import com.prince.common.util.EntityTransformationUtil;
import com.prince.system.entity.vo.BaseVo;
import com.prince.admin.entity.dto.RoleDTO;
import com.prince.admin.entity.po.Role;
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

    public static void main(String[] args) {
        RoleVo r = new RoleVo();
        r.setCurrent(1);
        r.setSize(1);
        r.setRoleName("123");
        EntityTransformationUtil<RoleDTO> t = new EntityTransformationUtil<>();
        EntityTransformationUtil<Role> to = new EntityTransformationUtil<>();

        RoleDTO roleDTO = t.transformTo(r, RoleDTO.class);
        Role role = to.transformTo(r, Role.class);
        System.out.println(r);
        System.out.println("------------------------------------");
        System.out.println(roleDTO);
        System.out.println("------------------------------------");
        System.out.println(role);
    }
}
