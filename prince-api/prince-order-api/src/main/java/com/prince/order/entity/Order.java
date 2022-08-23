package com.prince.order.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Project prince-microservice <br\>
 * Package com.prince.entity <br\>
 * <p>
 * Description : 订单实体 <br\>
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/5 16:35
 */
@Data
@TableName("order")
public class Order implements Serializable {

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 订单号
     */
    private String orderNo;

    /**
     * 商品id
     */
    @NotNull(message = "请选择商品")
    private Long productId;

    /**
     * 商品名字
     */
    private String productName;
    /**
     * 商品数量
     */
    private Integer total;

    /**
     * 单价
     */
    @NotNull(message = " no price")
    private BigDecimal price;

    /**
     * 订单金额
     */
    private BigDecimal money;

    /**
     * 付款金额
     */
    private BigDecimal payMoney;

    /**
     * 支付类型
     */
    private Integer payType;

    /**
     * 付款时间
     */
    private Date payTime;

    /**
     * 支付平台
     */
    private Integer payment;

    /**
     * 发货时间
     */
    private Date consignTime;

    /**
     * 交易完成时间
     */
    private Date finishedTime;

    /**
     * 用户id
     */
    @NotNull(message = "登录失效，请重新登录")
    private Long userId;

    /**
     * 收件人
     */
    private String recipients;

    /**
     * 收件人电话
     */
    private String recipientsMobile;

    /**
     * 收件地址
     */
    private String recipientsAddress;
    /**
     * 交易流水号
     */
    private String transactionNumber;

    /**
     * 订单状态,0:待支付，1:已支付，2：已发货，3：完成，4：申请退货，5：已退货，6：已退款，7已取消
     */
    private Integer status;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 备注
     */
    private String remark;

    /**
     * 是否删除
     */
    private Boolean isDelete;

}
