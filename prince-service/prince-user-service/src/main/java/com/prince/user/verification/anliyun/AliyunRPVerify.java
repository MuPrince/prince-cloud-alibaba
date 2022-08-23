package com.prince.user.verification.anliyun;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.cloudauth.model.v20190307.DescribeVerifyResultRequest;
import com.aliyuncs.cloudauth.model.v20190307.DescribeVerifyResultResponse;
import com.aliyuncs.cloudauth.model.v20190307.DescribeVerifyTokenRequest;
import com.aliyuncs.cloudauth.model.v20190307.DescribeVerifyTokenResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.ProtocolType;
import com.aliyuncs.profile.DefaultProfile;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * Description : 阿里云人脸认证 <br/>
 *         1. 接入方服务端发起认证请求，获得认证Token。<br/>
 *         2. 接入方服务端将Token传递给接入方无线客户端。<br/>
 *         3. 接入方无线客户端用Token调起无线认证SDK。<br/>
 *         4. 用户按照由无线认证SDK组织的认证流程页面的指引，提交认证资料。<br/>
 *         5. 认证流程结束退出无线认证SDK，进入客户端回调函数。<br/>
 *         6. 接入方服务端获取认证状态和认证资料（注：客户端无线认证SDK回调中也会携带认证状态, 但建议以服务端调接口获取的为准进行业务上的判断和处理）。<br/>
 *
 * @author Mu Prince <br\>
 * @since 2022/7/16 17:28
 */
@Component
public class AliyunRPVerify {

    @Value("${aliyun.accessKeyId}")
    private String accessKey;

    @Value("${aliyun.accessKeySecret}")
    private String accessSecret;

    private final String regionId = "cn-hangzhou";

    private IAcsClient client;

    public void init() {
        DefaultProfile profile = DefaultProfile.getProfile(
                regionId,    // 固定cn-hangzhou。
                accessKey,      // 您的AccessKey ID。
                accessSecret);  // 您的AccessKey Secret。

        IAcsClient client = new DefaultAcsClient(profile);
    }

    public String getVerifyToken(String bizId, String bizType) throws ClientException {

        //1. 接入方服务端发起认证请求，获得认证Token。
        DescribeVerifyTokenRequest request = new DescribeVerifyTokenRequest();

        // 需要传入以下参数。
        request.setSysRegionId(regionId);
        request.setSysProtocol(ProtocolType.HTTPS);
        request.setBizId(bizId);
        request.setBizType(bizType);

        DescribeVerifyTokenResponse response = client.getAcsResponse(request);

        return response.getVerifyToken();

    }

    public void getVerifyResult(String bizId, String bizType) throws ClientException {
        // 查询认证结果。
        DescribeVerifyResultRequest verifyResultRequest = new DescribeVerifyResultRequest();
        // 需要传入以下参数。
        verifyResultRequest.setSysRegionId(regionId);
        verifyResultRequest.setSysProtocol(ProtocolType.HTTPS);
        verifyResultRequest.setBizId(bizId);
        verifyResultRequest.setBizType(bizType);

        DescribeVerifyResultResponse verifyResultResponse = client.getAcsResponse(verifyResultRequest);
    }
}
