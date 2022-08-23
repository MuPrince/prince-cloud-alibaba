package com.prince.common.util;

import com.github.pagehelper.PageInfo;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.BeanUtils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/**
 * Description : 实体转换 根据字段名字转换，只能转换同名同类型的字段
 *
 * @author Mu Prince <br\>
 * @since 2022/6/30 14:19
 */
@Log4j
public class EntityTransformationUtil<F, S> {

    private final Class<?> first;

    private final Class<?> second;
    public EntityTransformationUtil(Class<F> first, Class<S> second) {
        this.first = first;
        this.second = second;
    }

    /**
     * Description :  类型转换，由数据源驱动
     * @param second 数据源
     * @return {@link F}
     * @throws 
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public F transformToFirst(S second) {
        if (second == null) {
            return null;
        }
        if (this.first == this.second) {
            return (F) second;
        }
        try {
            F instance = (F) this.first.getDeclaredConstructors()[0].newInstance();
            Field[] fields = this.second.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                Object value = field.get(second);
                if (value != null) {
                    String name = field.getName();
                    byte[] bytes = name.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] - 32);
                    String methodName = "set" + new String(bytes, StandardCharsets.UTF_8);
                    Class<?> type = field.getType();
                    try {
                        Method method = first.getMethod(methodName, type);
                        method.invoke(instance, value);
                    } catch (NoSuchMethodException ignored) {
                    }
                }
            }
            return instance;
        } catch (InstantiationException | IllegalAccessException | IllegalArgumentException |
                 InvocationTargetException e) {
            log.info(e.getClass().toString() + ":" + e.getMessage());
        }
        return null;
    }

    /**
     * Description :  类型转换，由数据源驱动
     * @param first 数据源
     * @return {@link S}
     * @throws
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public S transformToSecond(F first) {
        if (first == null) {
            return null;
        }
        if (this.first == this.second) {
            return (S) first;
        }
        try {
            S instance = (S) this.second.getDeclaredConstructors()[0].newInstance();
            Field[] fields = this.first.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                Object value = field.get(first);
                if (value != null) {
                    String name = field.getName();
                    byte[] bytes = name.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] - 32);
                    String methodName = "set" + new String(bytes, StandardCharsets.UTF_8);
                    Class<?> type = field.getType();
                    try {
                        Method method = second.getMethod(methodName, type);
                        method.invoke(instance, value);
                    } catch (NoSuchMethodException ignored) {
                    }
                }
            }
            return instance;
        } catch (InstantiationException | IllegalAccessException | IllegalArgumentException |
                 InvocationTargetException e) {
            log.info(e.getClass().toString() + ":" + e.getMessage());
        }
        return null;
    }

    /**
     * Description :  类型转换，由目标类驱动
     * @param first 数据源
     * @return {@link S}
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public S transformFromFirst(F first) {
        if (first == null) {
            return null;
        }
        if (this.first == this.second) {
            return (S) first;
        }
        try {
            S instance = (S) this.second.getDeclaredConstructors()[0].newInstance();
            Method[] methods = this.second.getMethods();
            for (Method method : methods) {
                String name = method.getName();
                if (name.startsWith("set")) {
                    String fieldName = name.substring(3);
                    byte[] bytes = fieldName.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] + 32);
                    try {
                        fieldName = new String(bytes, StandardCharsets.UTF_8);
                        Field field = this.second.getDeclaredField(fieldName);
                        field.setAccessible(true);
                        method.invoke(instance, field.get(first));
                    } catch (NoSuchFieldException ignored) {}
                }
            }
            return instance;
        } catch (InstantiationException | IllegalAccessException | IllegalArgumentException |
                 InvocationTargetException e) {
            log.info(e.getClass().toString() + ":" + e.getMessage());
        }
        return null;
    }

    /**
     * Description :  类型转换，由目标类驱动
     * @param second 数据源
     * @return {@link F}
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public F transformFromSecond(S second) {
        if (second == null) {
            return null;
        }
        if (this.second == this.first) {
            return (F) second;
        }
        try {
            F instance = (F) this.first.getDeclaredConstructors()[0].newInstance();
            Method[] methods = this.first.getMethods();
            for (Method method : methods) {
                String name = method.getName();
                if (name.startsWith("set")) {
                    String fieldName = name.substring(3);
                    byte[] bytes = fieldName.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] + 32);
                    try {
                        fieldName = new String(bytes, StandardCharsets.UTF_8);
                        Field field = this.second.getDeclaredField(fieldName);
                        field.setAccessible(true);
                        method.invoke(instance, field.get(second));
                    } catch (NoSuchFieldException ignored) {}
                }
            }
            return instance;
        } catch (InstantiationException | IllegalAccessException | IllegalArgumentException |
                 InvocationTargetException e) {
            log.info(e.getClass().toString() + ":" + e.getMessage());
        }
        return null;
    }

    public PageInfo<S> transformPageToSecond(PageInfo<F> page) {
        PageInfo<S> result = new PageInfo<>();
        if (page == null) {
            return result;
        }
        List<F> objects = page.getList();
        if (objects == null || objects.size() == 0) {
            return result;
        }
        List<S> data = new ArrayList<>();
        page.setList(null);
        BeanUtils.copyProperties(page, result);
        objects.forEach(f -> data.add(transformToSecond(f)));
        result.setList(data);
        return result;
    }

    public PageInfo<F> transformPageToFirst(PageInfo<S> page) {
        PageInfo<F> result = new PageInfo<>();
        if (page == null) {
            return result;
        }
        List<S> objects = page.getList();
        if (objects == null || objects.size() == 0) {
            return result;
        }
        List<F> data = new ArrayList<>();
        page.setList(null);
        BeanUtils.copyProperties(page, result);
        objects.forEach(s -> data.add(transformToFirst(s)));
        result.setList(data);
        return result;
    }

    public List<F> transformListToFirst(List<S> list) {
        List<F> result = new ArrayList<>();
        if (list == null || list.size() == 0) {
            return result;
        }
        list.forEach(s -> result.add(transformToFirst(s)));
        return result;
    }

    public List<S> transformListToSecond(List<F> list) {
        List<S> result = new ArrayList<>();
        if (list == null || list.size() == 0) {
            return result;
        }
        list.forEach(f -> result.add(transformToSecond(f)));
        return result;
    }
}
