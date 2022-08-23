package com.prince.user.verification.jpush.model;

import lombok.Data;

/**
 * Description : 极光推送一键登录响应模型
 *
 * @author Mu Prince <br\>
 * @since 2022/7/20 11:17
 */
@Data
public class JVerificationModel {

    /**
     * 流水号
     */
    private Long id;
    /**
     * 响应码
     */
    private Integer code;
    /**
     * 响应码说明
     */
    private String content;
    /**
     * 开发者自定义的id，若请求时为空返回为空
     */
    private String exID;
    /**
     * 加密后的手机号码，需用配置在极光的公钥对应的私钥解密
     */
    private String phone;
    /**
     * 风险评分
     */
    private Integer score;
}
