package com.prince.common.util;

import com.prince.common.constant.Constants;
import org.apache.commons.lang3.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Description : 身份证号码验证
 *
 * @author Mu Prince <br\>
 * @since 2022/7/29 10:30
 */
public class IdCardNoVerificationUtil {

    private static final SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");

    /**
     * Description :  获取生日
     * @param idNo 身份证号
     * @return {@link Date} 生日
     * @throws ParseException 日期转换错误
     * @since 2022/7/29 17:35
     * @author Mu Prince
     */
    public static Date getBirthday(String idNo) {
        if (StringUtils.isBlank(idNo)) {
            return null;
        }
        String birthdayStr = idNo.substring(6, 14);
        try {
            return sd.parse(birthdayStr);
        } catch (ParseException e) {
            return null;
        }
    }
    /**
     * Description :  获取年龄
     * @param idNo 身份证号码
     * @return {@link int} 年龄
     * @throws ParseException 日期转换错误
     * @since 2022/7/29 17:34
     * @author Mu Prince
     */
    public static int getAge(String idNo) {
        Date birthDay = getBirthday(idNo);

        Calendar cal = Calendar.getInstance();
        //出生日期晚于当前时间，无法计算
        if (birthDay == null || cal.before(birthDay)) {
            throw new IllegalArgumentException("You are not born yet.It's unbelievable!");
        }
        //当前年份
        int yearNow = cal.get(Calendar.YEAR);
        //当前月份
        int monthNow = cal.get(Calendar.MONTH);
        //当前日期
        int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);
        cal.setTime(birthDay);
        int yearBirth = cal.get(Calendar.YEAR);
        int monthBirth = cal.get(Calendar.MONTH);
        int dayOfMonthBirth = cal.get(Calendar.DAY_OF_MONTH);
        //计算年份差数
        int age = yearNow - yearBirth;
        if (monthNow <= monthBirth) {
            if (monthNow == monthBirth) {
                //当前日期在生日之前，年龄减1
                if (dayOfMonthNow < dayOfMonthBirth) age--;
            } else {
                //当前月份在生日之前，年龄减1
                age--;
            }
        }
        return age;
    }

    /**
     *
     * 星座 constellation
     * 水瓶座 Aquarius 1月20日—2月18日
     * 双鱼座 Pisces 2月19日—3月20日
     * 白羊座 Aries  3月21日-4月20日
     * 金牛座 Taurus 4月20日~5月20日
     * 双子座 Gemini 5月21日~6月21日
     * 巨蟹座 Cancer 6月22日 – 7月22日
     * 狮子座 Leo    7月23日~8月22日
     * 室女座 Virgo  8月23日—9月22日
     * 天秤座 Libra  9月23日-10月23日
     * 天蝎座 Scorpio 10月24日-11月22日
     * 射手座 Sagittarius 11月23日~12月21日
     * 摩羯座 Capricorns 12月22日至1月19日
     */
    /**
     * Description :  获取星座
     * @param date 生日
     * @return {@link String} 星座
     * @since 2022/7/29 17:37
     * @author Mu Prince
     */
    public static String getConstellation(Date date) {
        if (date == null) {
            return null;
        }
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month = cal.get(Calendar.MONTH);
        int day = cal.get(Calendar.DAY_OF_MONTH);
        int index = month;
        if (day < Constants.CONSTELLATION_DAYS[index]) {
            index = index - 1;
            if (index == -1) {
                index = 11;
            }
        }
        return Constants.CONSTELLATION_STRINGS[index];
    }
    /**
     * Description :  获取星座
     * @param idNo 身份证号码
     * @return {@link String} 星座
     * @since 2022/7/29 17:37
     * @author Mu Prince
     */
    public static String getConstellation(String idNo) {
        return getConstellation(getBirthday(idNo));
    }
    /**
     * Description :  获取性别
     * @param idNo 身份证号码
     * @return  1：男；0：女
     * @since 2022/7/29 17:56
     * @author Mu Prince
     */
    public static int getGender(String idNo) {
        String gender = idNo.substring(16, 17);
        return Integer.parseInt(gender) % 2;
    }
    /**
     * Description :  验证身份证验证码，判断身份证是否有效
     * @param idNo 身份证号码
     * @return {@link boolean}
     * @since 2022/7/29 18:23
     * @author Mu Prince
     */
    public static boolean verifyIdNo(String idNo) {
        if (StringUtils.isBlank(idNo) || idNo.length() != 18) {
            return false;
        }
        char[] chars = idNo.toCharArray();
        int sum = 0;
        for (int i = 0; i < chars.length - 1; i++) {
            int v = chars[i] - 48;
            if (v < 0 || v > 9) {
                return false;
            }
            sum += Constants.VERIFY_ID_NUMBER_WEIGHT[i] * v;
        }
        return chars[17] == Constants.VERIFY_ID_NUMBER_VALIDATE[sum % Constants.VERIFY_ID_NUMBER_DIVISOR];
    }
}
