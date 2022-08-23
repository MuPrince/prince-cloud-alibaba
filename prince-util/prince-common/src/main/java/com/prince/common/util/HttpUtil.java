package com.prince.common.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.http.Consts;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Description : HTTP请求工具类
 *
 * @author Mu Prince <br\>
 * @since 2022/6/23 15:35
 */
public class HttpUtil {
    private static final CloseableHttpClient httpclient = HttpClients.createDefault();

    /**
     * 发送HttpGet请求
     *
     * @param url
     * @return
     */
    public static String sendGet(String url) {

        HttpGet httpget = new HttpGet(url);
        CloseableHttpResponse response = null;
        try {
            response = httpclient.execute(httpget);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        String result = null;
        if (response != null) {
            try {
                HttpEntity entity = response.getEntity();
                if (entity != null) {
                    result = EntityUtils.toString(entity);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    response.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    /**
     * 发送HttpPost请求，参数为map
     *
     * @param url
     * @param map
     * @return
     */
    public static String sendPost(String url, Map<String, String> map) {
        List<NameValuePair> formParams = new ArrayList<NameValuePair>();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            formParams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        }
        UrlEncodedFormEntity entity = new UrlEncodedFormEntity(formParams, Consts.UTF_8);
        HttpPost httppost = new HttpPost(url);
        httppost.setEntity(entity);
        CloseableHttpResponse response = null;
        try {
            response = httpclient.execute(httppost);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String result = null;
        if (response != null) {
            HttpEntity entity1 = response.getEntity();
            try {
                result = EntityUtils.toString(entity1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     * 发送不带参数的HttpPost请求
     *
     * @param url
     * @return
     */
    public static String sendPost(String url) {
        HttpPost httppost = new HttpPost(url);
        CloseableHttpResponse response = null;
        try {
            response = httpclient.execute(httppost);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String result = null;
        if (response != null) {
            HttpEntity entity = response.getEntity();
            try {
                result = EntityUtils.toString(entity);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    public static String doPost(String url, JSONObject param) {
        HttpPost httpPost;
        String result = null;
        HttpResponse response;
        HttpClient client;
        try {
            client = HttpClients.createDefault();
            httpPost = new HttpPost(url);
            if (param != null) {
                StringEntity se = new StringEntity(param.toString(), Consts.UTF_8);
                httpPost.setEntity(se); // post方法中，加入json数据
                httpPost.setHeader("Content-Type", "application/json");
            }

            response = client.execute(httpPost);
            if (response != null) {
                HttpEntity resEntity = response.getEntity();
                if (resEntity != null) {
                    result = EntityUtils.toString(resEntity, Consts.UTF_8);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public static String doPost(String url, JSONObject param, String authorization) {
        HttpPost httpPost;
        String result = null;
        HttpResponse response;
        HttpClient client;
        try {
            client = HttpClients.createDefault();
            httpPost = new HttpPost(url);
            if (param != null) {
                StringEntity se = new StringEntity(param.toString(), Consts.UTF_8);
                httpPost.setEntity(se); // post方法中，加入json数据
                httpPost.setHeader("Content-Type", "application/json");
                httpPost.setHeader("Authorization", authorization);
            }

            response = client.execute(httpPost);
            if (response != null) {
                HttpEntity resEntity = response.getEntity();
                if (resEntity != null) {
                    result = EntityUtils.toString(resEntity, Consts.UTF_8);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

}
