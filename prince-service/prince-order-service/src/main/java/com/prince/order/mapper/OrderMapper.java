package com.prince.order.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.order.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Project prince-microservice <br\>
 * Package com.prince.mapper <br\>
 * <p>
 * Description : 订单 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 16:34
 */
public interface OrderMapper extends BaseMapper<Order> {

    @Select("select id, order_no, product_id, product_name, total, product_unit, money, currency_unit, pay_money, pay_type, create_time, update_time, pay_time, consign_time, end_time, user_id, username, recipients, recipients_mobile, recipients_address, transaction_number, status, payment, track_number, is_delete, remark from orders where order_no = #{orderNo}")
    Order selectByOrderNo(@Param("orderNo") String orderNo);
}
