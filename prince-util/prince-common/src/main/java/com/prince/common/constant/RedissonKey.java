package com.prince.common.constant;

/**
 * Description : Redisson使用的key维护
 *
 * @author Mu_Prince <br\>
 * @since 2022/6/8 14:15
 */
public interface RedissonKey {

    /**
     * 支付系统的分布式锁
     */
    String LOCK_PAY_KEY = "lock:pay:";

    String PRINCE_NUMBER_BLOOM_FILTER = "bloom:prince_number";
}
