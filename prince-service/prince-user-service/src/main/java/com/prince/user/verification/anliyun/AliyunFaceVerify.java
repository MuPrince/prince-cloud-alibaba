package com.prince.user.verification.anliyun;

import com.aliyun.cloudauth20190307.models.DescribeFaceVerifyRequest;
import com.aliyun.cloudauth20190307.models.DescribeFaceVerifyResponse;
import com.aliyun.cloudauth20190307.models.InitFaceVerifyRequest;
import com.aliyun.cloudauth20190307.models.InitFaceVerifyResponse;
import com.aliyun.tea.TeaException;
import com.aliyun.tea.TeaUnretryableException;
import com.aliyun.teaopenapi.models.Config;
import com.aliyun.teautil.models.RuntimeOptions;
import com.prince.common.exception.BusinessException;
import com.prince.common.resp.ResponseCode;
import com.prince.user.verification.anliyun.exception.FaceVerifyResponseCode;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import com.aliyun.cloudauth20190307.Client;

import java.util.Arrays;
import java.util.List;

/**
 * Description : 阿里云实人认证
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 10:51
 */
@Component
@RequiredArgsConstructor
@Slf4j
public class AliyunFaceVerify {

    public static final String PASSED = "T";

    public static final String FAILED = "F";

    private final AliyunConfig aliyunConfig;

    // 第一个为主区域Endpoint，第二个为备区域Endpoint。
    private final List<String> endpoints = Arrays.asList("cloudauth.cn-shanghai.aliyuncs.com", "cloudauth.cn-beijing.aliyuncs.com");

    private final String CertType = "IDENTITY_CARD";


    public AliyunConfig getAliyunConfig() {
        return this.aliyunConfig;
    }

    private Client getClient() {
        return getClient(endpoints.get(0));
    }
    /**
     * Description :  创建客户端连接
     *
     * @param endpoint 区域Endpoint
     * @return {@link Client}
     * @throws BusinessException 客户端创建失败时抛出
     * @author Mu Prince
     * @since 2022/7/18 13:24
     */
    private Client getClient(String endpoint) {
        try {
            Config config = new Config();
            config.setAccessKeyId(aliyunConfig.getAccessKeyId());
            config.setAccessKeySecret(aliyunConfig.getAccessKeySecret());
            config.setEndpoint(endpoint);
            return new Client(config);
        } catch (Exception e) {
            throw new BusinessException(e);
        }
    }

    /**
     * Description :  创建实人认证 <br/>
     * 实例化request对象
     * InitFaceVerifyRequest request = new InitFaceVerifyRequest(); <br/><br/>
     * * request.setSceneId(xxxxL); 设置场景id<br/><br/>
     * * request.setOuterOrderNo("xxxx"); 设置商户请求唯一标识，支持长度为32位的字母和数字的组合，请确保唯一。<br/><br/>
     * * request.setProductCode("ID_PRO"); 认证方案{@link com.prince.user.verification.anliyun.constant.ProductCode}<br/><br/>
     * * request.setModel("LIVENESS"); 活体检测类型{@link com.prince.user.verification.anliyun.constant.Model}<br/><br/>
     * * request.setCertType("IDENTITY_CARD"); 证件类型。当前仅支持身份证，取值固定为IDENTITY_CARD。<br/><br/>
     * * request.setCertName("张三"); 真实姓名<br/>
     * * request.setCertNo("xxxx"); 证件号码<br/><br/>
     * * request.setMetaInfo("xxxxxxxx"); MetaInfo环境参数，需要通过客户端SDK获取。<br/><br/>
     * request.setMobile("130xxxxxxxx"); 终端用户的手机号码。<br/>
     * request.setIp("114.xxx.xxx.xxx"); 终端用户的IP。<br/>
     * request.setUserId("12345xxxx"); 自定义的用户ID，请保持唯一。<br/><br/>
     * request.setCallbackUrl("https://www.aliyundoc.com"); 认证结果的回调通知地址，必须以https开头。平台在完成认证后会回调该地址，并自动添加certifyId、passed和subcode字段<br/><br/>
     * request.setCallbackToken("xxxxx"); 安全Token，由您自行生成，用于防重复、防篡改校验。如果设置了该值会在回调地址显示CallbackToken字段。<br/><br/>
     * request.setEncryptType("SM2"); 加密类型。为空表示不加密。如开启加密传输，需传入加密算法。目前仅支持SM2国密算法。如需传入加密算法，需对CertName和CertNo进行加密，并传入加密后的密文。<br/><br/>
     * request.setCertName("BCRD/7ZkNy7Q*****M1BMBezZe8GaYHrLwyJv558w==");<br/>
     * request.setCertNo("BMjsstxK3S4b1YH*****Pet8ECObfxmLN92SLsNg==");<br/>
     *
     * @param request 请求对象
     * @return {@link InitFaceVerifyResponse}
     * @throws BusinessException 异常
     * @author Mu Prince
     * @since 2022/7/18 12:04
     */
    public InitFaceVerifyResponse initFaceVerifyAutoRoute(InitFaceVerifyRequest request) {
        if (request.getSceneId() == null) {
            request.setSceneId(aliyunConfig.getFace().getSceneId());
        }
        //证件类型。当前仅支持身份证，取值固定为IDENTITY_CARD
        request.setCertType(CertType);
        // 创建RuntimeObject实例并设置运行参数。
        RuntimeOptions runtime = new RuntimeOptions();
        runtime.readTimeout = 10000;
        runtime.connectTimeout = 10000;
        for (String endpoint : endpoints) {
            try {
                InitFaceVerifyResponse response = getClient(endpoint).initFaceVerifyWithOptions(request, runtime);
                // 服务端错误，切换到下个区域调用。
                if (response != null && response.getStatusCode() != 200) {
                    Integer code = response.getStatusCode();
                    String msg = FaceVerifyResponseCode.getMsg(code);
                    log.error(msg);
                    continue;
                }
                return response;
            } catch (Exception e) {
                doException(e);
            }
        }
        throw new BusinessException(ResponseCode.FACE_VERIFY_INIT_FAIL);
    }

    /**
     * Description :  获取认证结果。<br/>
     * 实例化request对象 <br/>
     * DescribeFaceVerifyRequest request = new DescribeFaceVerifyRequest(); <br/>
     * 设置场景id，该ID在控制台创建认证场景后自动生成。可以不设置 <br/>
     * request.setSceneId(xxxxL); <br/>
     * 实人认证唯一标识。该值需要调用InitFaceVerify获取。<br/>
     * request.setCertifyId("xxxx"); <br/>
     *
     * @param request 请求对象
     * @return {@link DescribeFaceVerifyResponse}
     * @throws BusinessException 异常
     * @author Mu Prince
     * @since 2022/7/18 12:00
     */
    public DescribeFaceVerifyResponse describeFaceVerify(DescribeFaceVerifyRequest request) {
        if (request.getSceneId() == null) {
            request.setSceneId(aliyunConfig.getFace().getSceneId());
        }
        // 创建RuntimeObject实例并设置运行参数。
        RuntimeOptions runtime = new RuntimeOptions();
        runtime.readTimeout = 10000;
        runtime.connectTimeout = 10000;
        DescribeFaceVerifyResponse lastResponse = null;
        for (String endpoint : endpoints) {
            try {
                DescribeFaceVerifyResponse response = getClient(endpoint).describeFaceVerifyWithOptions(request, runtime);
                lastResponse = response;
                // 服务端错误，切换到下个区域调用。
                if (response != null && "500".equals(response.getBody().getCode())) {
                    continue;
                }
                return response;
            } catch (Exception e) {
                doException(e);
            }
        }
        return lastResponse;
    }

    private void doException(Exception e) {
        // 网络异常，切换到下个区域调用。
        if (e.getCause() instanceof TeaException) {
            TeaException teaException = ((TeaException) e.getCause());
            if (teaException.getData() != null && "ServiceUnavailable".equals(
                    teaException.getData().get("Code"))) {
                return;
            }
        }
        if (e.getCause() instanceof TeaUnretryableException) {
            return;
        }
        throw new BusinessException("人脸认证错误");
    }
}
