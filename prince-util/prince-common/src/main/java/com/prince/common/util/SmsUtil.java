package com.prince.common.util;

import com.alibaba.fastjson.JSON;
import com.aliyun.dysmsapi20170525.Client;
import com.aliyun.dysmsapi20170525.models.SendSmsRequest;
import com.aliyun.dysmsapi20170525.models.SendSmsResponse;
import com.aliyun.teaopenapi.models.Config;
import com.prince.common.constant.PrinceConstants;
import com.prince.common.exception.ChatServiceException;
import com.prince.common.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.HashMap;

@Slf4j
@Service
public class SmsUtil {
    @Value("${aliyun.accessKeyId:''}")
    private String ACCESS_KEY_ID;

    @Value("${aliyun.accessKeySecret:''}")
    private String ACCESS_KEY_SECRET;

    @Value("${aliyun.sms.signName:''}")
    private String SMS_SIGN_NAME;

    @Value("${aliyun.sms.templateCode:''}")
    private String SMS_TEMPLATE_CODE;

    @Value("${prince.operation.phone:''}")
    public String OPERATION_PHONE;

    private final String ENDPOINT = "dysmsapi.aliyuncs.com";

    private Client client;

    @PostConstruct
    public void initClient() {
        try {
            Config config = new Config()
                    .setAccessKeyId(ACCESS_KEY_ID)
                    .setAccessKeySecret(ACCESS_KEY_SECRET)
                    .setEndpoint(ENDPOINT);
            this.client = new Client(config);
        } catch (Exception exception) {
            throw new ServiceException("SMS_INIT_ERROR");
        }
    }

    /**
     * 验证码发送
     *
     * @param phoneNumbers
     * @param codeNumber
     */
    public void sendCode(String phoneNumbers, String codeNumber) {
        if(phoneNumbers.matches(PrinceConstants.PHONE_REGEX)){
            try {
                HashMap<String, Object> params = new HashMap<>(16);
                params.put("code",codeNumber);
                SendSmsRequest sendSmsRequest = new SendSmsRequest()
                        .setSignName(SMS_SIGN_NAME)
                        .setPhoneNumbers(phoneNumbers)
                        .setTemplateCode(SMS_TEMPLATE_CODE)
                        .setTemplateParam(JSON.toJSONString(params));
                SendSmsResponse res = client.sendSms(sendSmsRequest);
                if (!res.getBody().getCode().equals("OK")) {
                    if (res.getBody().getCode().equals("isv.BUSINESS_LIMIT_CONTROL")) {
                        throw new ServiceException("SMS_SEND_LIMIT");
                    }
                    log.error("短信验证码发送错误，阿里响应信息"+res.getBody().getMessage());
                    throw new ServiceException("SMS_SEND_ERROR");
                }
            } catch (ChatServiceException businessException) {
                throw new ServiceException(businessException.getMessage());
            } catch (Exception exception) {
                log.error("短信验证码发送错误", exception);
                throw new ServiceException("SMS_SEND_ERROR");
            }
        }else {
            throw new ServiceException("手机号格式有误!");
        }

    }

    public void sendMessage(String phoneNumbers, String templateCode) {
        try {
            SendSmsRequest sendSmsRequest = new SendSmsRequest()
                    .setSignName(SMS_SIGN_NAME)
                    .setPhoneNumbers(phoneNumbers)
                    .setTemplateCode(templateCode);
            SendSmsResponse res = client.sendSms(sendSmsRequest);
            if (!res.getBody().getCode().equals("OK")) {
                if (res.getBody().getCode().equals("isv.BUSINESS_LIMIT_CONTROL")) {
                    throw new ServiceException("SMS_SEND_LIMIT");
                }
                log.error("短信验证码发送错误，阿里响应信息"+res.getBody().getMessage());
                throw new ServiceException("SMS_SEND_ERROR");
            }
        } catch (ChatServiceException businessException) {
            throw new ServiceException(businessException.getMessage());
        } catch (Exception exception) {
            log.error("短信验证码发送错误", exception);
            throw new ServiceException("SMS_SEND_ERROR");
        }
    }
}
