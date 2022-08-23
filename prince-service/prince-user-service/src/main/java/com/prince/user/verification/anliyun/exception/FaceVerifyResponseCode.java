package com.prince.user.verification.anliyun.exception;

import java.util.Arrays;
import java.util.Optional;

/**
 * Description : 阿里实人认证异常
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 13:54
 */
public enum FaceVerifyResponseCode {

    /**
     * 调用成功和认证通过都会返回200
     */
    SUCCESS(200, "成功"),
    /**
     * 参数不能为空。
     */
    NOT_NULL(400, "参数不能为空"),
    /**
     * 非法参数。传入的姓名、身份证号码长度必须符合国家标准且不得包含英文字母等特殊字符。
     */
    ILLEGAL_PARAMETERS(401, "参数非法"),
    /**
     * 应用配置不存在
     */
    CONFIGURATION_NOT_EXIST(402, "应用配置不存在"),
    /**
     * 认证未完成
     */
    CERTIFICATION_NOT_COMPLETED(403, "认证未完成"),
    /**
     * 认证场景配置不存在，请先在控制台上创建认证场景。
     */
    SCENE_ID_NOT_EXIST(404, "认证场景配置不存在"),
    /**
     * 未开通OSS产品或未完成OSS读写授权，请登录控制台完成授权。
     */
    SERVICE_NOT_AVAILABLE(410, "未开通服务"),
    /**
     * 需要给RAM用户授予AliyunAntCloudAuthFullAccess的操作权限。
     */
    RAM_NO_PERMISSION(411, "RAM无权限"),
    /**
     * 金融级实人认证或OSS存在欠费，请充值后操作。
     */
    ARREARS(412, "欠费中"),
    /**
     * 当前移动设备不支持刷脸认证，请更换设备后操作。
     */
    DEVICE_TYPE_IS_NOT_SUPPORTED(414, "设备类型不支持"),
    /**
     * 当前认证SDK版本不支持刷脸认证，请升级SDK后操作。
     */
    SDK_VERSION_IS_NOT_SUPPORTED(415, "SDK版本不支持"),
    /**
     * 当前操作系统版本不支持刷脸认证，请升级系统或更换设备操作。
     */
    SYSTEM_VERSION_IS_NOT_SUPPORTED(416, "系统版本不支持"),
    /**
     * 当前身份信息无可用比对源，导致此错误的原因请参考认证结果错误码ResultObject.SubCode）201、202和203的描述说明。更多内容，请参见DescribeFaceVerify。
     */
    UNUSABLE(417, "无法使用刷脸服务"),
    /**
     * 当天刷脸认证次数过多，请明天再试。一个身份信息在一天内最多可以认证失败20次，无法调整更多的认证失败次数。
     */
    TOO_MANY(418, "刷脸失败次数过多"),
    /**
     * 当前CertifyId还未完成认证，建议您客户端收到认证回调为1000或2006时，再请求查询接口获取详情。
     * 如果出现CertifyId未认证、认证过程中放弃、认证处理中的情况，均会导致查询接口返回此错误码。
     */
    RECORD_NOT_EXIST(424, "身份认证记录不存在"),
    /**
     * 个性化业务安全策略限制，如有疑问可咨询客服。
     */
    BUSINESS_POLICY_CONSTRAINTS(427, "业务策略限制"),

    SYSTEM_ERROR(500, "系统错误");

    private Integer code;

    private String msg;

    FaceVerifyResponseCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return this.code;
    }

    public String getMsg() {
        return msg;
    }

    public static String getMsg(Integer code) {
        Optional<FaceVerifyResponseCode> any = Arrays.stream(FaceVerifyResponseCode.values()).filter(e -> e.code.equals(code)).findAny();
        return any.map(e -> e.msg).orElse(null);
    }
}
