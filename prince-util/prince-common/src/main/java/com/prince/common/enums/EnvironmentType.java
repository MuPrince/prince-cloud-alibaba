package com.prince.common.enums;

import lombok.Getter;

/**
 * 环境变量类型
 */
@Getter
public enum EnvironmentType {
    DEV("dev"),
    PROD("prod");

    private final String code;

    EnvironmentType(String code) {
        this.code = code;
    }
}
