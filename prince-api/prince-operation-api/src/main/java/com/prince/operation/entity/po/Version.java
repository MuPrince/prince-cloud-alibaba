package com.prince.operation.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description : 版本控制
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:12
 */
@Data
@TableName("version")
public class Version implements Serializable {

    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
    /**
     * 版本号
     */
    private String version;
    /**
     * 更新内容
     */
    private String content;
    /**
     * 平台
     */
    private int platform;
    /**
     * 安装包
     */
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
