package com.prince.operation.entity.vo;

import com.prince.common.entity.vo.BaseVo;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 10:28
 */
@Data
public class VersionVo extends BaseVo implements Serializable {

    /**
     * 版本号
     */
    private String version;
    /**
     * 平台
     */
    private int platform;
    /**
     * 开始时间
     */
    private Date start;
    /**
     * 结束时间
     */
    private Date end;
}
