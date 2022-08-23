package com.prince.order.config;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 微信-app 支付的配置yml中信息
 * 这里简单配置部分...
 */
@Configuration
@ConfigurationProperties(prefix = "wx.app")
@Data
@Slf4j
public class WxAppConfig {

    /**
     * 商户号
     */
    private String mchId;

    /**
     * 商户API证书序列号
     */
    private String mchSerialNo;

    /**
     * 商户私钥文件
     */
    private String privateKeyPath;

    /**
     * APIv3密钥
     */
    private String apiV3Key;

    /**
     * APP密钥
     */
    private String appKey;

    /**
     * APPID
     */
    private String appid;

    /**
     * 微信服务器地址
     */
    private String domain;

    /**
     * 接收结果通知地址
     */
    private String notifyDomain;

    /**
     * APIv2密钥
     */
    private String partnerKey;

    /**
     * 获取签名验证器
     * @return
     */
//    @Bean
//    public Verifier getVerifier() throws Exception {
//        log.info("获取签名验证器");
//        //获取商户私钥
//        PrivateKey privateKey = getPrivateKey(privateKeyPath);
//        // 私钥签名对象
//        PrivateKeySigner keySigner = new PrivateKeySigner(mchSerialNo, privateKey);
//        // 身份认证对象
//        WechatPay2Credentials wechatPay2Credentials = new WechatPay2Credentials(mchId, keySigner);
//
//        // 获取证书管理器实例
//        CertificatesManager certificatesManager = CertificatesManager.getInstance();
//        // 向证书管理器增加需要自动更新平台证书的商户信息
//        certificatesManager.putMerchant(mchId, wechatPay2Credentials,
//                apiV3Key.getBytes(StandardCharsets.UTF_8));
//        // ... 若有多个商户号，可继续调用putMerchant添加商户信息
//
//        return certificatesManager.getVerifier(mchId);
//    }

//    /**
//     * 获取HttpClient，无需进行应答签名验证，跳过验签的流程
//     */
//    @Bean
//    public CloseableHttpClient getWxPayClient() throws Exception {
//
//        //获取商户私钥
//        PrivateKey privateKey = getPrivateKey(privateKeyPath);
//
//        Verifier verifier = getVerifier();
//
//        //用于构造HttpClient
//        WechatPayHttpClientBuilder builder = WechatPayHttpClientBuilder.create()
//                //设置商户信息
//                .withMerchant(mchId, mchSerialNo, privateKey)
//                //无需进行签名验证、通过withValidator((response) -> true)实现
////                .withValidator((response) -> true);
//                .withValidator(new WechatPay2Validator(verifier));
//
//        // 通过WechatPayHttpClientBuilder构造的HttpClient，会自动的处理签名和验签，并进行证书自动更新
//        CloseableHttpClient httpClient = builder.build();
//
//        log.info("== getWxPayNoSignClient END ==");
//        return httpClient;
//    }

//    /**
//     * 获取商户的私钥文件
//     * @param filename 文件地址
//     * @return
//     */
//    private PrivateKey getPrivateKey(String filename){
//
//        try {
//            return PemUtil.loadPrivateKey(new FileInputStream(filename));
//        } catch (FileNotFoundException e) {
//            throw new RuntimeException("私钥文件不存在", e);
//        }
//    }
}
