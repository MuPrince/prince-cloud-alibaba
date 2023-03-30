package com.prince.common.util;

import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class EntityTransformationUtil2 {

    /**
     * Description :  类型转换，由数据源驱动
     * @param source 数据源
     * @return {@link R}
     * @throws 
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public static <R, T> T transformTo(R source, Class<T> targetClass) {
        if (source == null) {
            return null;
        }
        Class<?> sourceClass;
        if ((sourceClass = source.getClass()) == targetClass) {
            return (T) source;
        }
        try {
            T instance = (T) targetClass.getDeclaredConstructors()[0].newInstance();
            Field[] fields = sourceClass.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                Object value = field.get(source);
                if (value != null) {
                    String name = field.getName();
                    byte[] bytes = name.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] - 32);
                    String methodName = "set" + new String(bytes, StandardCharsets.UTF_8);
                    Class<?> type = field.getType();
                    try {
                        Method method = targetClass.getMethod(methodName, type);
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
     * @param source 数据源
     * @param target 目标实例
     * @since 2022/7/2 17:34
     * @author Mu Prince
     */
    @SuppressWarnings("unchecked")
    public static <S,T> void transformFrom(S source, T target) {
        if (source == null) {
            return;
        }
        if (target == null) {
            return;
        }
        Class<?> sourceClass = source.getClass();
        Class<?> targetClass = target.getClass();
        if (sourceClass == targetClass) {
            target = (T) source;
        }
        try {
            Method[] methods = targetClass.getMethods();
            for (Method method : methods) {
                String name = method.getName();
                if (name.startsWith("set")) {
                    String fieldName = name.substring(3);
                    byte[] bytes = fieldName.getBytes(StandardCharsets.UTF_8);
                    bytes[0] = (byte) (bytes[0] + 32);
                    try {
                        fieldName = new String(bytes, StandardCharsets.UTF_8);
                        Field field = sourceClass.getDeclaredField(fieldName);
                        field.setAccessible(true);
                        method.invoke(target, field.get(source));
                    } catch (NoSuchFieldException ignored) {}
                }
            }
        } catch (IllegalAccessException | IllegalArgumentException |
                 InvocationTargetException e) {
            log.info(e.getClass().toString() + ":" + e.getMessage());
        }
    }

    public static <T, S> PageInfo<T> transformPageTo(PageInfo<S> source, Class<T> targetClass) {
        PageInfo<T> result = new PageInfo<>();
        if (source == null) {
            return result;
        }
        List<S> objects = source.getList();
        if (objects == null || objects.isEmpty()) {
            return result;
        }
        List<T> data = new ArrayList<>();
        source.setList(null);
        BeanUtils.copyProperties(source, result);
        objects.forEach(s -> data.add(transformTo(s, targetClass)));
        result.setList(data);
        return result;
    }

    public static <S, T> List<T> transformListTo(List<S> list, Class<T> targetClass) {
        List<T> result = new ArrayList<>();
        if (list == null || list.isEmpty()) {
            return result;
        }
        list.forEach(s -> result.add(transformTo(s, targetClass)));
        return result;
    }
}
