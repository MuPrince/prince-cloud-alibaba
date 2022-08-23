package com.prince.user.verification.anliyun;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Description : 阿里云配置
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 10:14
 */
@Component
@ConfigurationProperties(prefix = "aliyun")
@Data
public class AliyunConfig {

    private String accessKeyId;

    private String accessKeySecret;

    private Face face;

    /**
     * Description : 阿里金融级实人认证配置
     *
     * @author Mu Prince <br\>
     * @since 2022/7/18 10:14
     */
    @Data
    @Component
    @ConfigurationProperties(prefix = "aliyun.face")
    public static class Face {
        private Long sceneId;
    }



}
