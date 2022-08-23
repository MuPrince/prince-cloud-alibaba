package com.prince.system.admin.config;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.prince.system.admin.intercepter.AuthorizationInterceptor;
import com.prince.system.admin.intercepter.PermissionInterceptor;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.http11.Http11NioProtocol;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.ArrayList;
import java.util.List;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/6/28 15:27
 */
@Configuration
@RequiredArgsConstructor
public class WebConfigurer implements WebMvcConfigurer {

    private final AuthorizationInterceptor authorizationInterceptor;

    private final PermissionInterceptor permissionInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(authorizationInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/sys_user/login", "/error")
                .order(1);

        registry.addInterceptor(permissionInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/sys_user/login", "/error", "/menu/list")
                .order(2);
    }

    @Bean
    public TomcatServletWebServerFactory createEmbeddedServletContainerFactory() {
        TomcatServletWebServerFactory tomcatFactory = new TomcatServletWebServerFactory();

        //增加连接器的定制配置
        tomcatFactory.addConnectorCustomizers(connector -> {
            Http11NioProtocol protocol =
                    (Http11NioProtocol) connector.getProtocolHandler();
            // 定制 keepAliveTimeout，确定下次请求过来之前 Socket 连接保持多久
            // 设置 300 秒内没有请求则服务端自动断开 socket 连接
            protocol.setKeepAliveTimeout(10000);
            protocol.setConnectionTimeout(10000);
            // 当客户端发送超过 10000 个请求,强制关闭掉 socket 连接
            protocol.setMaxKeepAliveRequests(1);

            //设置最大连接数
            protocol.setMaxConnections(3000);
            //...省略其他配置
        });
        return tomcatFactory;
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        MappingJackson2HttpMessageConverter jackson2HttpMessageConverter = new MappingJackson2HttpMessageConverter();
        ObjectMapper objectMapper = new ObjectMapper();
        /**
         * 序列换成json时,将所有的long变成string
         * 因为js中得数字类型不能包含所有的java long值
         */
        SimpleModule simpleModule = new SimpleModule();
        simpleModule.addSerializer(Long.class, ToStringSerializer.instance);
        simpleModule.addSerializer(Long.TYPE, ToStringSerializer.instance);
        objectMapper.registerModule(simpleModule);

        //json中多余的参数不报错，不想要可以改掉
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        //设置全局的时间转化
//        SimpleDateFormat smt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        objectMapper.setDateFormat(smt);
//        objectMapper.setTimeZone(TimeZone.getTimeZone("GMT+8"));//解决时区差8小时问题

//        objectMapper.getSerializerProvider().setNullValueSerializer(new JsonSerializer<Object>() {
//            @Override
//            public void serialize(Object o, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
//                jsonGenerator.writeObject("");
//            }
//        });

        //设置中文编码格式
        List<MediaType> list = new ArrayList<>();
        list.add(MediaType.APPLICATION_JSON);
        jackson2HttpMessageConverter.setSupportedMediaTypes(list);

        jackson2HttpMessageConverter.setObjectMapper(objectMapper);
        converters.add(0, jackson2HttpMessageConverter);
    }
}
