package com.prince.user.verification.anliyun.exception;

/**
 * Description : 认证结果
 *
 * @author Mu Prince <br\>
 * @since 2022/7/19 14:14
 */
public enum FaceVerifySubCode {

    /**
     * 调用成功，认证通过
     */
    SUCCESS(200, "调用成功"),
    /**
     * 通过产品安全策略综合判断，建议认证通过。
     */
    PASS(210, "认证通过"),
    /**
     * 可能是用户的信息有误或用户的信息为假信息，建议用户确认后重新操作。若同一身份信息重新发起认证，服务端初始化将会返回417错误。
     */
    NAME_AND_ID_CARD_DO_NOT_MATCH(201, "姓名和身份证不一致"),
    /**
     * 可能是用户户口迁移、军人等特殊状态导致，建议预留人工审核入口，进行人工审核。若同一身份信息重新发起认证，服务端初始化将会返回417错误
     */
    IDENTITY_INFORMATION_NOT_FOUND(202, "查询不到身份信息"),
    /**
     * 可能是公安库数据问题导致，建议预留人工审核入口，进行人工审核。若同一身份信息重新发起认证，服务端初始化将会返回417错误。
     */
    NO_PHOTO(203, "查询不到照片或照片不可用"),
    /**
     * 可能不是同一人或活体照片质量较低，建议根据业务情况分层处理，若为同一人可重新操作。
     */
    FACE_COMPARISON_IS_INCONSISTENT(204, "人脸对比不一致"),
    /**
     * 可能存在攻击风险，建议人工审核分层处理，若为真人可重新操作。
     */
    RISKS_ASSOCIATED_WITH_LIVING_TESTING(205, "活体检测存在风险"),
    /**
     * 个性化业务安全策略限制，如有疑问可咨询客服。
     */
    BUSINESS_POLICY_CONSTRAINTS(206, "业务策略限制"),
    /**
     * 仅在使用ID_PLUS方案时返回，可能人证不符或人脸照片质量较低，建议根据业务情况分层处理，若为同一人可重新操作。
     */
    FACE_AND_ID_CARD_FACE_COMPARISON_IS_INCONSISTENT(207, "人脸与身份证人脸比对不一致"),
    /**
     * 仅在使用ID_PLUS方案时返回，可能人证不符或人脸照片质量较低，建议根据业务情况分层处理，若为同一人可重新操作。
     */
    AUTHORITATIVE_COMPARISON_SOURCE_IS_ABNORMAL(209, "权威比对源异常。"),


    ;
    private final Integer code;

    private final String msg;

    FaceVerifySubCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return this.code;
    }

    public String getMsg() {
        return msg;
    }

}
