package com.prince.server.config;

import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.lang.Nullable;
import org.springframework.util.Assert;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/**
 * Description : redis key序列化
 *
 * @author Mu Prince <br\>
 * @since 2022/8/12 18:55
 */
public class ObjectToStringRedisSerializer implements RedisSerializer<Object> {
    private final Charset charset;

    public static final StringRedisSerializer US_ASCII;
    public static final StringRedisSerializer ISO_8859_1;
    public static final StringRedisSerializer UTF_8;

    public ObjectToStringRedisSerializer() {
        this(StandardCharsets.UTF_8);
    }

    public ObjectToStringRedisSerializer(Charset charset) {
        Assert.notNull(charset, "Charset must not be null!");
        this.charset = charset;
    }

    public Object deserialize(@Nullable byte[] bytes) {
        return bytes == null ? null : new String(bytes, this.charset);
    }

    public byte[] serialize(@Nullable Object key) {
        return key == null ? null : key.toString().getBytes(this.charset);
    }

    public Class<?> getTargetType() {
        return Object.class;
    }

    static {
        US_ASCII = new StringRedisSerializer(StandardCharsets.US_ASCII);
        ISO_8859_1 = new StringRedisSerializer(StandardCharsets.ISO_8859_1);
        UTF_8 = new StringRedisSerializer(StandardCharsets.UTF_8);
    }
}
