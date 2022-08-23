package com.prince.user.verification.jpush;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.prince.common.exception.UserServiceException;
import com.prince.common.util.HttpUtil;
import com.prince.user.verification.jpush.model.JVerificationModel;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;

/**
 * Description : 极光推送一键登录
 *
 * @author Mu Prince <br\>
 * @since 2022/7/20 10:37
 */
@Slf4j
@Component
public class JVerification {

    @Value("${third.jpush.appKey}")
    private String APP_KEY;

    @Value("${third.jpush.masterSecret}")
    private String MASTER_SECRET;

    @Value("${third.jpush.private-key}")
    private String PRIVATE_KEY;
    /**
     * 成功响应码
     */
    private static final Integer SUCCESS = 8000;
    /**
     * 失败响应码
     */
    private static final Integer FAIL = 8001;

    private static final String AUTHORIZATION_PREFIX = "Basic ";
    /**
     * Description :  认证并获取手机号
     * @param loginToken 认证SDK获取到的loginToken
     * @param exID 自定义ID
     * @return {@link String}
     * @since 2022/7/20 11:40
     * @author Mu Prince
     */
    public String verifyAndGetPhone(String loginToken, String exID) {
        String response = verify(loginToken, exID);
        JVerificationModel model = JSON.parseObject(response, JVerificationModel.class);
        if (SUCCESS.equals(model.getCode())) {
            return decrypt(model.getPhone());
        }
        return null;
    }
    /**
     * Description :  认证并获取响应体
     * @param loginToken 认证SDK获取到的loginToken
     * @param exID 自定义ID
     * @return {@link JVerificationModel}
     * @since 2022/7/20 11:40
     * @author Mu Prince
     */
    public JVerificationModel verifyAndGetModel(String loginToken, String exID) {
        String response = verify(loginToken, exID);
        JVerificationModel model = JSON.parseObject(response, JVerificationModel.class);
        if (SUCCESS.equals(model.getCode())) {
            return model;
        }
        return null;
    }
    /**
     * Description :  发送认证请求
     * @param loginToken 认证SDK获取到的loginToken
     * @param exID 自定义ID
     * @return {@link String}
     * @since 2022/7/20 11:40
     * @author Mu Prince
     */
    public String verify(String loginToken, String exID) {
        //鉴权串
        String authorization = getBasicAuthorization();

        //参数
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("loginToken", loginToken);
        if (StringUtils.isNotBlank(exID)) {
            jsonObject.put("exID", exID);
        }

        return HttpUtil.doPost(JVerificationApi.VERIFY_V1_URL, jsonObject, authorization);
    }

    private String getBasicAuthorization() {
        String auth = APP_KEY + ":" + MASTER_SECRET;
        byte[] encodedAuth = Base64.encodeBase64(auth.getBytes(StandardCharsets.UTF_8));
        return AUTHORIZATION_PREFIX + new String(encodedAuth);
    }

    /**
     * Description :  解密
     * @param cryptographic 密文
     * @return {@link String} 明文
     * @since 2022/7/20 14:41
     * @author Mu Prince
     */
    public String decrypt(String cryptographic) {
        try {
            //处理私钥
            PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(Base64.decodeBase64(PRIVATE_KEY));
            PrivateKey privateKey = KeyFactory.getInstance("RSA").generatePrivate(keySpec);

            Cipher cipher = Cipher.getInstance("RSA");
            cipher.init(Cipher.DECRYPT_MODE, privateKey);

            byte[] b = java.util.Base64.getDecoder().decode(cryptographic);
            return new String(cipher.doFinal(b));
        } catch (NoSuchPaddingException | InvalidKeyException | InvalidKeySpecException | NoSuchAlgorithmException |
                 IllegalBlockSizeException | BadPaddingException e) {
            log.error("解密时发生错误。错误类型：{},错误消息：{}", e.getClass(), e.getMessage());
            throw new UserServiceException("一键登录失败。");
        }
    }
}
