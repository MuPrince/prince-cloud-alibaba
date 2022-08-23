package com.prince.order.enums;

/**
 * Project prince-client-api <br\>
 * Package com.huyan.prince.common.enums <br\>
 * <p>
 * Description : 订单状态枚举 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/7 17:19
 */
public enum OrderStatusEnum {

    UNPAID(0, "待支付"),

    PAID(1, "已支付"),

    SHIPPED(2, "已发货"),

    FINISHED(3, "已完成"),

    APPLY(4, "申请退换货"),

    RETURNED(5, "已退货"),

    REFUNDED(6, "已退款"),

    CANCEL(7, "已取消");


    OrderStatusEnum(int status, String des) {
    }

    int status;

    String des;

    public int getStatus() {
        return status;
    }

    public String getDes() {
        return des;
    }
}
