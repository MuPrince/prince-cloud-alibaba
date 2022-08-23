package com.prince.user.entity.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 13:30
 */
@Data
public class FaceVerify implements Serializable {

    /**
     * MetaInfo环境参数，需要通过客户端SDK获取。
     */
    @NotBlank(message = "获取环境参数失败")
    private String metaInfo;
    /**
     * 真实姓名
     */
    @NotBlank(message = "真实姓名不能为空")
    private String name;
    /**
     * 证件号码
     */
    @NotBlank(message = "证件号不能为空")
    @Pattern(regexp = "\\d{17}(\\d|X|x)")
    private String certNo;
    @NotNull(message = "读取用户失败")
    private Long userId;
    /**
     * 实人认证唯一标识
     */
    private String certifyId;

//    private String productCode;
//    private String model;
//    private String mobile;
//    private String ip;
}
