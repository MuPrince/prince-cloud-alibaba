package com.prince.order.service.pay.wx;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.prince.common.constant.RedissonKey;
import com.prince.common.exception.AdminServiceException;
import com.prince.common.util.IpAddressUtil;
import com.prince.common.util.RandomUtil;
import com.prince.order.config.WxAppConfig;
import com.prince.order.constant.PayNotifyUriConstant;
import com.prince.order.entity.Order;
import com.prince.order.enums.OrderStatusEnum;
import com.prince.order.mapper.OrderMapper;
import com.prince.order.utils.WeChatUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class WxAppPayServiceImpl extends WxPayServiceImpl {

    private final WxAppConfig wxAppConfig;

    private final OrderMapper orderMapper;

    private final RedissonClient redisson;

    @Override
    @Transactional
    public String doOrder(String orderNo, HttpServletRequest request) {

        Order order = orderMapper.selectOne(new LambdaQueryWrapper<Order>().eq(Order::getOrderNo, orderNo));

        if (order == null) {
            throw new AdminServiceException("订单不存在。");
        }
        //微信支付金额单位是分
        BigDecimal payMoney = order.getPayMoney().multiply(BigDecimal.valueOf(100)).setScale(0, RoundingMode.HALF_UP);

        SortedMap<String, Object> data = new TreeMap<>();
        data.put("appid", wxAppConfig.getAppid());
        data.put("mch_id", wxAppConfig.getMchId());
        data.put("notify_url", wxAppConfig.getNotifyDomain() + PayNotifyUriConstant.NOTIFY_WX);
        data.put("device_info", "WEB");
        data.put("body", order.getProductName());
        data.put("nonce_str", RandomUtil.randomString(10));
        data.put("out_trade_no", order.getOrderNo());
        data.put("total_fee", payMoney);
        data.put("spbill_create_ip", IpAddressUtil.getIp(request));
        data.put("trade_type", "APP");
        data.put("sign", WeChatUtil.createSign(data, wxAppConfig.getAppKey()));

        log.info("========================微信支付接口，参数打印：{}", JSONObject.toJSONString(data));

        try {
            String result = WeChatUtil.executeHttpPost(wxAppConfig.getDomain(), data);


            String resp = JSON.toJSONString(WeChatUtil.createSign2(result, wxAppConfig.getAppKey()));
            log.info("===================微信支付接口响应：{}", resp);
            return resp;
        } catch (IOException e) {
            log.error("===================微信支付接口，调用异常");
            e.printStackTrace();
            throw new AdminServiceException("微信支付失败");
        }
    }

    @Override
    public String notify(HttpServletRequest request, HttpServletResponse response) {
        log.info("微信支付回调通知================");

        String inputLine = "";
        StringBuilder notifyXml = new StringBuilder();
        try {
            while ((inputLine = request.getReader().readLine()) != null) {
                notifyXml.append(inputLine);
            }
            //关闭流
            request.getReader().close();
            log.info("微信回调内容信息：" + notifyXml);
            //解析成Map
            Map<String, String> map = WeChatUtil.transferXmlToMap(notifyXml.toString());
            //判断 支付是否成功
            if ("SUCCESS".equals(map.get("result_code"))) {
                log.info("支付成功回调");
                //获得订单号
                String orderNo = map.get("out_trade_no");
                String transactionNumber = map.get("transaction_id");

                //查询订单详情
                Order order = orderMapper.selectByOrderNo(orderNo);

                if (order == null) {
                    throw new AdminServiceException("订单不存在");
                }

                RLock lock = redisson.getLock(RedissonKey.LOCK_PAY_KEY + orderNo);

                try {
                    //加锁
                    lock.lock();

                    if (order.getStatus() <= OrderStatusEnum.PAID.getStatus()) {

                        Date date = new Date();
                        order.setPayTime(date);
                        order.setStatus(OrderStatusEnum.PAID.getStatus());
                        order.setUpdateTime(date);
                        order.setTransactionNumber(transactionNumber);

                        orderMapper.update(order, new UpdateWrapper<Order>().eq("order_no", orderNo));

                        log.info("微信回调  订单号：" + orderNo + ",修改状态成功");
                    }
                } finally {
                    //释放
                    lock.unlock();
                }

                //封装 返回值
                StringBuffer buffer = new StringBuffer();
                buffer.append("<xml>");
                buffer.append("<return_code>SUCCESS</return_code>");
                buffer.append("<return_msg>OK</return_msg>");
                buffer.append("</xml>");
                //给微信服务器返回
                ServletOutputStream outputStream = response.getOutputStream();
                String json = new ObjectMapper().writeValueAsString(buffer);
                outputStream.write(json.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return null;
    }


    /**
     * Description :  微信V3支付
     *
     * @param orderNo
     * @return java.lang.String
     * @throws
     * @author Mu_Prince
     * @since 2022/6/8 14:25
     */
    private String pay(String orderNo) {

//        Orders order = orderMapper.selectById(orderId);

        //组装amount
        Map<String, Object> amountMap = new HashMap<>();
        amountMap.put("total", 1);
        amountMap.put("currency", "CNY");

        // 拼装请求body参数
        Map<String, Object> body = new HashMap<>();
        body.put("out_trade_no", "no1231654");
        body.put("amount", amountMap);
        body.put("description", "test");

        //生成HttpPost请求
        HttpPost httpPost = getHttpPost(body, PayNotifyUriConstant.NOTIFY_WX);

        //向微信发起下单请求
        CloseableHttpResponse response = null;
        try {
//            response = wxPayClient.execute(httpPost);
            //完成签名并执行请求
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200) { //处理成功
                log.info("success,return body = " + EntityUtils.toString(response.getEntity()));
            } else if (statusCode == 204) { //处理成功，无返回Body
                log.info("success");
            } else {
                log.info("failed,resp code = " + statusCode + ",return body = " + EntityUtils.toString(response.getEntity()));
                throw new IOException("request failed");
            }
            String s = EntityUtils.toString(response.getEntity());
            Map<String, Object> resp = JSONObject.parseObject(s, Map.class);
            resp.put("appid", wxAppConfig.getAppid());
            resp.put("partnerid", wxAppConfig.getMchId());
            resp.put("package", "Sign=WXPay");
            resp.put("noncestr", "Sign=WXPay");
            resp.put("timestamp", System.currentTimeMillis() / 1000);
            resp.put("sign", System.currentTimeMillis() / 1000);


        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                assert response != null;
                response.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private HttpPost getHttpPost(Map<String, Object> params, String uri) {
        SortedMap<String, Object> data = new TreeMap<>();
        data.put("appid", wxAppConfig.getAppid());
        data.put("mchid", wxAppConfig.getMchId());
        data.put("notify_url", wxAppConfig.getNotifyDomain() + uri);

        //处理用户参数
        if (params != null && !params.isEmpty()) {
            data.putAll(params);
        }

        String s = JSONObject.toJSONString(data);
        log.info("微信预支付订单==>请求body：{}", s);

        //构建Post请求
        HttpPost httpPost = new HttpPost(wxAppConfig.getDomain());
        //构建Body字符串（JSON）
        StringEntity entity = new StringEntity(s, "utf-8");
        entity.setContentType("application/json");
        httpPost.setEntity(entity);
        httpPost.setHeader("Accept", "application/json");
        return httpPost;
    }

}
