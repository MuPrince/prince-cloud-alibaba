package com.prince.encrypt;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Project prince-microservice <br\>
 * Package com.prince.encode <br\>
 * <p>
 * Description : MD5 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 16:24
 */
public class MD5Coder {


    /**
     * MD5 签名
     *
     * @param str
     * @return 签名后的字符串信息
     */
    public static String encodeMD5(String str) {
        if (str == null || str.trim().length() == 0){
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] inputByteArray = str.getBytes();
            messageDigest.update(inputByteArray);
            byte[] resultByteArray = messageDigest.digest();
            return byteArrayToHex(resultByteArray);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }


    // 辅助 encodeMD5 方法实现
    private static String byteArrayToHex(byte[] byteArray) {
        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] resultCharArray = new char[byteArray.length * 2];
        int index = 0;
        for (byte b : byteArray) {
            resultCharArray[index++] = hexDigits[b >>> 4 & 0xf];
            resultCharArray[index++] = hexDigits[b & 0xf];
        }
        // 字符数组组合成字符串返回
        return new String(resultCharArray);
    }
}
