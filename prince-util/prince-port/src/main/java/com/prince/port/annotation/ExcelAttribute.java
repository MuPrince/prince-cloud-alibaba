package com.prince.port.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Description : 导出注解
 *
 * @author StrangePrince <br\>
 * @since 2022/6/10 1:10
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface ExcelAttribute {
    /** 对应的列名称 */
    String name() default "";
    /** 列序号 */
    int sort();
    /** 字段类型对应的格式 */
    String format() default "";

}
