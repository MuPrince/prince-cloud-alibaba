package com.prince.server.config;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

import java.nio.charset.StandardCharsets;

/**
 * Description : 使用fastJson序列化
 *
 * @author Mu Prince <br\>
 * @since 2022/7/14 15:36
 */
public class FastJson2JsonRedisSerializer<T> implements RedisSerializer<T> {

    private final Class<T> clazz;

    private final String typeKey = "@type";

    public FastJson2JsonRedisSerializer(Class<T> clazz) {
        super();
        this.clazz = clazz;
    }

    @Override
    public byte[] serialize(T t) throws SerializationException {
        if (t == null) {
            return new byte[0];
        }
        return JSON.toJSONString(t, SerializerFeature.WriteClassName).getBytes(StandardCharsets.UTF_8);
    }

    @Override
    @SuppressWarnings("unchecked")
    public T deserialize(byte[] bytes) throws SerializationException {
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        String str = new String(bytes, StandardCharsets.UTF_8);
        T t = JSON.parseObject(str, clazz);
        if (t instanceof JSONObject) {
            JSONObject jsonObject = (JSONObject) t;
            String className = jsonObject.get(this.typeKey).toString();
            if (className.startsWith("com.prince")) {
                Class<T> clazz0;
                try {
                    clazz0 = (Class<T>) Class.forName(className);
                    return jsonObject.toJavaObject(clazz0);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return t;
    }
}
