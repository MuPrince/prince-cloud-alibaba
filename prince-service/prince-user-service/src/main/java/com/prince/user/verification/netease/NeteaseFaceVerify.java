package com.prince.user.verification.netease;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.prince.common.exception.BusinessException;
import com.prince.common.resp.ResponseCode;
import com.prince.common.util.HttpUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.weaver.SignatureUtils;
import org.bouncycastle.crypto.digests.SM3Digest;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Description : 网易实人认证
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 10:58
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class NeteaseFaceVerify {

    private final NeteaseConfig neteaseConfig;

    public void verify(String idNo, String name, String token) {
        Map<String, String> params = new HashMap<>();
        // 1.设置公共参数
        params.put("secretId", neteaseConfig.getSecretId());
        params.put("businessId", neteaseConfig.getFaceBusinessId());
        params.put("version", "v1");
        params.put("timestamp", String.valueOf(System.currentTimeMillis()));
        params.put("nonce", String.valueOf(new Random().nextInt()));

        // 2.设置私有参数
        params.put("token", token);
        params.put("cardNo", idNo);
        params.put("name", name);

        // 3.生成签名信息
        String signature = genSignature(neteaseConfig.getSecretKey(), null, params);
        params.put("signature", signature);

        // 4.发送HTTP请求
        String resp = HttpUtil.sendPost(NeteaseFaceVerifyApi.url, params);

        if (StringUtils.isBlank(resp)) {
            throw new BusinessException(ResponseCode.YIDUN_AUDIT_FAILED);
        }
        // 5.解析接口返回值
        JsonObject jObject = JsonParser.parseString(resp).getAsJsonObject();

        if (jObject.get("code").getAsInt() != 200) {
            log.error("网易易盾实人认证失败，错误码{}，错误消息{}", jObject.get("code").getAsInt(), jObject.get("msg").getAsString());
            throw new BusinessException(ResponseCode.YIDUN_AUDIT_FAILED);
        }
        JsonObject resultObject = jObject.get("result").getAsJsonObject();
        if (resultObject.get("status").getAsInt() != 1) {
            if (resultObject.get("status").getAsInt() == 2) {
                if (resultObject.get("reasonType").getAsInt() == 2) {
                    log.error("实名认证失败,输入姓名和身份证号不一致，姓名{}， 身份证号{}", name, idNo);
                }
                if (resultObject.get("reasonType").getAsInt() == 3) {
                    log.error("实名认证失败,查无此身份证，姓名{}， 身份证号{}", name, idNo);
                }
            }
            throw new BusinessException(ResponseCode.YIDUN_AUDIT_FAILED);
        }
    }

    public static String genSignature(String secretKey, String signatureMethod, Map<String, String> params) {
        // 1. 参数名按照ASCII码表升序排序
        String[] keys = params.keySet().toArray(new String[0]);
        Arrays.sort(keys);
        // 2. 按照排序拼接参数名与参数值
        StringBuilder sb = new StringBuilder();
        for (String key : keys) {
            sb.append(key).append(params.get(key));
        }
        // 3. 将secretKey拼接到最后
        sb.append(secretKey);
        try {
            // 默认使用MD5
            SignatureMethodEnum signatureMethodEnum = StringUtils.isBlank(signatureMethod) ?
                    SignatureMethodEnum.MD5 : SignatureMethodEnum.valueOf(StringUtils.upperCase(signatureMethod));
            switch (signatureMethodEnum) {
                case MD5:
                    return DigestUtils.md5Hex(sb.toString().getBytes(StandardCharsets.UTF_8));
                case SHA1:
                    return DigestUtils.sha1Hex(sb.toString().getBytes(StandardCharsets.UTF_8));
                case SHA256:
                    return DigestUtils.sha256Hex(sb.toString().getBytes(StandardCharsets.UTF_8));
                case SM3:
                    return sm3DigestHex(sb.toString().getBytes(StandardCharsets.UTF_8));
                default:
                    System.out.println("[ERROR] unsupported signature method: " + signatureMethod);
                    return null;
            }
        } catch (Exception e) {
            System.out.println("[ERROR] not supposed to happen: " + e.getMessage());
        }
        return null;
    }

    public static String sm3DigestHex(byte[] srcData) {
        SM3Digest sm3Digest = new SM3Digest();
        sm3Digest.update(srcData, 0, srcData.length);
        byte[] hash = new byte[sm3Digest.getDigestSize()];
        sm3Digest.doFinal(hash, 0);
        return Hex.encodeHexString(hash);
    }
}
