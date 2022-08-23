package com.prince.user.verification.netease;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Description : 网易配置
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 14:33
 */
@Component
@ConfigurationProperties(prefix = "netease.yidun")
@Data
public class NeteaseConfig {

    private String secretId;

    private String secretKey;

    private String faceBusinessId;
}
