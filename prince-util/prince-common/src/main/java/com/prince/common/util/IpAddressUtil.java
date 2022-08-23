package com.prince.common.util;

import cn.hutool.core.net.NetUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.servlet.ServletUtil;

import javax.servlet.http.HttpServletRequest;

/**
 * Description : 根据ip地址定位工具类，使用阿里云定位api <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 16:24
 */
public class IpAddressUtil {



    private static final String LOCAL_IP = "127.0.0.1";

    private static final String LOCAL_REMOTE_HOST = "0:0:0:0:0:0:0:1";

    /**
     * Description :  获取IP
     * @param request
     * @return java.lang.String
     * @throws
     * @since 2022/6/9 22:37
     * @author StrangePrince
     */
    public static String getIp(HttpServletRequest request) {
        if (ObjectUtil.isEmpty(request)) {
            return "-";
        } else {
            String remoteHost = ServletUtil.getClientIP(request);
            return LOCAL_REMOTE_HOST.equals(remoteHost) ? LOCAL_IP : remoteHost;
        }
    }

    /**
     * Description :  根据IP定位
     * @param request
     * @return java.lang.String
     * @throws
     * @since 2022/6/9 22:36
     * @author StrangePrince
     */
    public static String getAddress(HttpServletRequest request) {
        String resultJson = "-";

        String ip = getIp(request);

        //如果是本地ip或局域网ip，则直接不查询
        if (ObjectUtil.isEmpty(ip) || NetUtil.isInnerIP(ip)) {
            return resultJson;
        } else {
            //TODO 定位，调用阿里云api
            return ip;
        }
    }

}
