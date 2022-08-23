package com.prince.common.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 16:24
 */
@Component
public class SpringContextUtil implements ApplicationContextAware {
    private static ApplicationContext appCtx;

    /**
     * @param applicationContext ApplicationContext.
     */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) {
        appCtx = applicationContext;

    }

    public static ApplicationContext getApplicationContext() {
        return appCtx;
    }

    public static Object getBean(String beanName) {
        return appCtx.getBean(beanName);
    }

    public static <T> T getBean(Class<T> clazz) {
        return appCtx.getBean(clazz);
    }
}