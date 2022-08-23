package com.prince.operation.entity.dto;

import com.prince.common.validation.Add;
import com.prince.common.validation.Edit;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:19
 */
@Data
public class VersionDTO implements Serializable {

    @NotNull(message = "id不能为空。", groups = {Edit.class})
    private Long id;
    /**
     * 版本号
     */
    @NotBlank(message = "版本号不能为空。", groups = {Add.class})
    private String version;
    /**
     * 更新内容
     */
    private String content;
    /**
     * 平台 1:安卓；2：IOS
     */
    @NotNull(message = "平台不能为空。", groups = {Add.class})
    private int platform;
    /**
     * 安装包
     */
    @NotBlank(message = "安装包不能为空。", groups = {Add.class})
    private String installationPackage;
    /**
     * 是否强制
     */
    private Boolean isForce;
    /**
     * 发布人id
     */
    private Long userId;
    /**
     * 发布人昵称
     */
    private String nickname;
    /**
     * 是否启用更新
     */
    private Boolean enable;

    private Date createTime;

    private Date updateTime;
}
