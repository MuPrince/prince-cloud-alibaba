package com.prince.common.annotation;

import java.lang.annotation.*;

/**
 * Description : 版本控制注解
 * <br/>
 * <br/>
 * 方法级别覆盖类级别
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 11:25
 */

@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface ApiVersion {

    /**
     * 版本
     */
    String value() default "0.1.0";

    /**
     * 是否允许旧版通过
     */
    boolean allow() default false;
}
