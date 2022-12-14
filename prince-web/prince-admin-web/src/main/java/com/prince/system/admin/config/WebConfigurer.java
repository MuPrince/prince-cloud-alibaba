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

        //??????????????????????????????
        tomcatFactory.addConnectorCustomizers(connector -> {
            Http11NioProtocol protocol =
                    (Http11NioProtocol) connector.getProtocolHandler();
            // ?????? keepAliveTimeout????????????????????????????????? Socket ??????????????????
            // ?????? 300 ?????????????????????????????????????????? socket ??????
            protocol.setKeepAliveTimeout(10000);
            protocol.setConnectionTimeout(10000);
            // ???????????????????????? 10000 ?????????,??????????????? socket ??????
            protocol.setMaxKeepAliveRequests(1);

            //?????????????????????
            protocol.setMaxConnections(3000);
            //...??????????????????
        });
        return tomcatFactory;
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        MappingJackson2HttpMessageConverter jackson2HttpMessageConverter = new MappingJackson2HttpMessageConverter();
        ObjectMapper objectMapper = new ObjectMapper();
        /**
         * ????????????json???,????????????long??????string
         * ??????js???????????????????????????????????????java long???
         */
        SimpleModule simpleModule = new SimpleModule();
        simpleModule.addSerializer(Long.class, ToStringSerializer.instance);
        simpleModule.addSerializer(Long.TYPE, ToStringSerializer.instance);
        objectMapper.registerModule(simpleModule);

        //json???????????????????????????????????????????????????
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        //???????????????????????????
//        SimpleDateFormat smt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        objectMapper.setDateFormat(smt);
//        objectMapper.setTimeZone(TimeZone.getTimeZone("GMT+8"));//???????????????8????????????

//        objectMapper.getSerializerProvider().setNullValueSerializer(new JsonSerializer<Object>() {
//            @Override
//            public void serialize(Object o, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
//                jsonGenerator.writeObject("");
//            }
//        });

        //????????????????????????
        List<MediaType> list = new ArrayList<>();
        list.add(MediaType.APPLICATION_JSON);
        jackson2HttpMessageConverter.setSupportedMediaTypes(list);

        jackson2HttpMessageConverter.setObjectMapper(objectMapper);
        converters.add(0, jackson2HttpMessageConverter);
    }
}
