package com.prince.user.verification.netease;

import org.apache.commons.lang3.StringUtils;

/**
 * Description : 签名方式
 *
 * @author Mu Prince <br\>
 * @since 2022/8/15 15:01
 */
public enum SignatureMethodEnum {
    MD5,
    SM3,
    SHA1,
    SHA256;

    public static boolean isValid(String signatureMethod) {
        try {
            SignatureMethodEnum.valueOf(StringUtils.upperCase(signatureMethod));
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
