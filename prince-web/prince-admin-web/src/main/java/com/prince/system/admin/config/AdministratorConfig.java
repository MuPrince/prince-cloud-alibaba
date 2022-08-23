package com.prince.system.admin.config;

import com.prince.common.constant.PrinceConstants;
import com.prince.encrypt.MD5Coder;
import com.prince.system.admin.entity.po.SystemUser;
import com.prince.system.admin.enums.SystemRole;
import com.prince.system.admin.mapper.SystemUserMapper;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Description : 系统管理员
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 15:28
 */
@Data
@Component
@ConfigurationProperties(prefix = "prince.admin")
@RequiredArgsConstructor
public class AdministratorConfig {

    public static Long ADMIN_ID = 1L;

    private String username;

    private String password;

    private SystemUser administrator;

    private final SystemUserMapper userMapper;

    public static Long getAdminId() {
        return ADMIN_ID;
    }

    public SystemUser getAdministrator() {
        if (administrator == null) {
            administrator = new SystemUser();
            administrator.setId(ADMIN_ID);
            administrator.setUsername(username);
            administrator.setPassword(MD5Coder.encodeMD5(password));
            administrator.setNickname("系统管理员");
            administrator.setStatus(true);
            administrator.setHead(PrinceConstants.DEFAULT_HEAD_PICTURE);
            administrator.setRoleId(SystemRole.ADMIN.id);

            userMapper.insertAdmin(administrator);
        }
        return administrator;
    }
}
