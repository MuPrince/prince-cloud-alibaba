package com.prince.common.constant;

/**
 * Description : 请求方式
 *
 * @author Mu Prince <br\>
 * @since 2022/6/29 14:59
 */
public interface HTTPMethod {

    /**
     * 返回服务器针对特定资源所支持的HTTP请求方法，也可以利用向web服务器发送‘*’的请求来测试服务器的功能性
     */
    String OPTION = "OPTION";
    /**
     * 向特定的资源发出请求。注意：GET方法不应当被用于产生“副作用”的操作中，例如在Web Application中，其中一个原因是GET可能会被网络蜘蛛等随意访问。Loadrunner中对应get请求函数：web_link和web_url
     */
    String GET = "GET";
    /**
     * 向指定资源提交数据进行处理请求（例如提交表单或者上传文件）。数据被包含在请求体中。POST请求可能会导致新的资源的建立和/或已有资源的修改。 Loadrunner中对应POST请求函数：web_submit_data,web_submit_form
     */
    String POST = "POST";
    /**
     * 向指定资源位置上传其最新内容
     */
    String PUT = "PUT";
    /**
     * 请求服务器删除Request-URL所标识的资源
     */
    String DELETE = "DELETE";
    /**
     * 回显服务器收到的请求，用于测试和诊断
     */
    String TRACE = "TRACE";
    /**
     * 向服务器索取GET请求相一致地响应，只不过响应体将不会被返回。这一方法可以再不必传输整个响应内容的情况下，就可以获取包含在响应小消息头中的元信息。
     */
    String HEAD = "HEAD";
    /**
     * HTTP/1.1协议中预留给能够将连接改为管道方式的代理服务器。
     */
    String CONNECT = "CONNECT";
}
