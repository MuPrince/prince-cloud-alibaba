package com.prince.common.constant;

/**
 * Description : 通用常量
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 16:17
 */
public interface PrinceConstants {

    /**
     * 账号不存在
     */
    Integer USER_NOT_EXIST = 1;
    /**
     * 未设置标签
     */
    Integer USER_NO_TAGS = 2;
    /**
     * 未实名
     */
    Integer USER_UNVERIFIED = 3;

    String SYSTEM_TOKEN_SIGN = "sys";

    String APP_TOKEN_SIGN = "app";

    String DEFAULT_VERSION_STR = "1.0.0.0";

    /**
     * 默认分页条数
     */
    int PAGE_SIZE = 10;
    /**
     * 首页
     */
    Integer PAGE_CURRENT = 1;
    /**
     * 用户缓存失效时间
     */
    Long USER_CACHE_EXPIRE_AT_MS = 86400000L;
    /**
     * 用户缓存失效时间
     */
    Long USER_CACHE_EXPIRE_AT_S = 86400L;

    /**
     * 后台管理系统ServiceName前缀
     */
    String ADMIN_CLASS_NAME_PREFIX = "System";
    /**
     * 后台管理系统url前缀
     */
    String ADMIN_URI_PREFIX = "/sys/";
    /**
     * 默认头像地址
     */
    String DEFAULT_HEAD_PICTURE = "https://...";
    /**
     * 默认昵称前缀
     */
    String DEFAULT_NICKNAME_PREFIX = "游客";
    /**
     * 手机号验证正则
     */
    String PHONE_REGEX = "^1(3\\d|4[5-9]|5[0-3,5-9]|6[2567]|7[0-8]|8\\d|9[0-3,5-9])\\d{8}$";

    String PRINCE_NUMBER_REGEX = "^\\d{8}$";

    String REQUEST_HEADER_VERSION = "Version";

    String SCENE_REGISTRY = "registry";

    long PRINCE_NUMBER_POOL_FILL_FACTOR = 5L;

    int PRINCE_NUMBER_POOL_FILL_SIZE = 10000;

    String PRINCE_NUMBER_PRETTIEST = "12345678|87654321|(\\d)\\1{7}";
    String PRINCE_NUMBER_PRETTY_4A2 = "(\\d)\\1{3}(\\d)\\2{3}";
    String PRINCE_NUMBER_PRETTY_7A = "\\d*(\\d)\\1{6}\\d*";
    String PRINCE_NUMBER_PRETTY_6A = "\\d*(\\d)\\1{5}\\d*";
    String PRINCE_NUMBER_PRETTY_5A = "(\\d)\\1{4}";
    String PRINCE_NUMBER_PRETTY_4A = "\\d*(\\d)\\1{3}\\d*";
    String PRINCE_NUMBER_PRETTY_ABCDWXYZ = "(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3}\\d(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3}\\d";
    String PRINCE_NUMBER_PRETTY_ABCDDCBA = "(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3,}\\d(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){3,}\\d";
    String PRINCE_NUMBER_PRETTY_ABCDABCD = "((?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3}\\d)\\1{1}";
    String PRINCE_NUMBER_PRETTY_AABBCCDD = "(\\d)\\1{1}(\\d)\\2{1}(\\d)\\3{1}(\\d)\\4{1}";
    String PRINCE_NUMBER_PRETTY_END_ABCD = "(\\d){4}(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3,}\\d";
    String PRINCE_NUMBER_PRETTY_START_ABCD = "(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3,}\\d(\\d){4}";
    String PRINCE_NUMBER_PRETTY_END_DCBA = "(\\d){4}(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){3,}\\d";
    String PRINCE_NUMBER_PRETTY_START_DCBA = "(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){3,}\\d(\\d){4}";

    String PRINCE_NUMBER_PRETTY_CONTINUOUS_7 = "\\d*(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){6}\\d*|\\d*(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){6}\\d*";
    String PRINCE_NUMBER_PRETTY_CONTINUOUS_6 = "\\d*(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){5}\\d*|\\d*(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){5}\\d*";
    String PRINCE_NUMBER_PRETTY_CONTINUOUS_5 = "\\d*(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){4}\\d*|\\d*(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){4}\\d*";
    String PRINCE_NUMBER_PRETTY_DATE = "((19|20)\\d{2})(1[0,1,2]|0[\\d])(3[0,1]|[1,2]\\d|0[\\d])";

    String PRINCE_NUMBER_PRETTY_520 = "((19|20)\\d{2})(1[0,1,2]|0[\\d])(3[0,1]|[1,2]\\d|0[\\d])";

    String PRINCE_NUMBER_PRETTY_1314 = "((19|20)\\d{2})(1[0,1,2]|0[\\d])(3[0,1]|[1,2]\\d|0[\\d])";

    String[] PRINCE_NUMBER_PRETTY_REGEX = {
            PRINCE_NUMBER_PRETTIEST,
            PRINCE_NUMBER_PRETTY_4A2,
            PRINCE_NUMBER_PRETTY_7A,
            PRINCE_NUMBER_PRETTY_6A,
            PRINCE_NUMBER_PRETTY_5A,
            PRINCE_NUMBER_PRETTY_4A,
            PRINCE_NUMBER_PRETTY_ABCDWXYZ,
            PRINCE_NUMBER_PRETTY_ABCDDCBA,
            PRINCE_NUMBER_PRETTY_ABCDABCD,
            PRINCE_NUMBER_PRETTY_AABBCCDD,
            PRINCE_NUMBER_PRETTY_END_ABCD,
            PRINCE_NUMBER_PRETTY_START_ABCD,
            PRINCE_NUMBER_PRETTY_END_DCBA,
            PRINCE_NUMBER_PRETTY_START_DCBA,
            PRINCE_NUMBER_PRETTY_DATE,
            PRINCE_NUMBER_PRETTY_520,
            PRINCE_NUMBER_PRETTY_1314,
            PRINCE_NUMBER_PRETTY_CONTINUOUS_7,
            PRINCE_NUMBER_PRETTY_CONTINUOUS_6,
            PRINCE_NUMBER_PRETTY_CONTINUOUS_5
    };
}
