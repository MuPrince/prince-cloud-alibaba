package com.prince.common.util;

/**
 * Description : 号码转*
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 11:52
 */
public class NumberUtil {

    /**
     * Description :  将数字串转成 xx******xx
     * @param number 数字串
     * @param startIndex 开始位置
     * @param length 长度
     * @return {@link String}
     * @throws
     * @since 2022/8/1 9:23
     * @author Mu Prince
     */
    public static String numToStar(String number, int startIndex, int length) {
        if (number == null) {
            return null;
        }
        byte[] bytes = number.getBytes();
        for (int i = startIndex; i < (startIndex + length); i++) {
            bytes[i] = 42;
        }
        return new String(bytes);
    }
}
