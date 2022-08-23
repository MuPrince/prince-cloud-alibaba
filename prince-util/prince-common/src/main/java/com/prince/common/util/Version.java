package com.prince.common.util;

import lombok.Data;

/**
 * Description : 版本比较工具类 </br>
 * <p>
 * 版本：主版本号.子版本号[.修正版本号[.编译版本号]]
 *
 * @author Mu Prince <br\>
 * @since 2022/7/30 12:49
 */
@Data
public class Version {

    /**
     * 版本
     */
    private final String version;
    /**
     * 主版本号
     */
    private int major;
    /**
     * 次版本号（子版本号）
     */
    private int minor;
    /**
     * 修正版本号
     */
    private int revision;
    /**
     * 编译版本号
     */
    private int build;

    public Version(String version) {
        this.version = version;
        String[] versions = version.split("\\.");
        try {
            this.major = Integer.parseInt(versions[0]);
            this.minor = Integer.parseInt(versions[1]);
            if (versions.length >= 3) {
                this.revision = Integer.parseInt(versions[2]);
            }
            if (versions.length >= 4) {
                this.build = Integer.parseInt(versions[3]);
            }
        } catch (NumberFormatException ignore){}
    }

    /**
     * Description :  判断传入版本是否是新版本或同一个版本
     * @param version 版本信息
     * @return {@link boolean}
     * @since 2022/7/30 15:54
     * @author Mu Prince
     */
    public boolean after(Version version) {
        return compare(version) >= 0;
    }
    /**
     * Description :  判断传入版本是否是旧版本
     * @param version 版本信息
     * @return {@link boolean}
     * @since 2022/7/30 15:54
     * @author Mu Prince
     */
    public boolean before(Version version) {
        return compare(version) < 0;
    }

    private int compare(Version version) {
        if (version == null) {
            return -1;
        }
        if (this.major != version.major) {
            return version.major - this.major;
        }
        if (this.minor != version.minor) {
            return version.minor - this.minor;
        }
        if (this.revision != version.revision) {
            return version.revision - this.revision;
        }
        return 0;
    }

    public static void main(String[] args) {
        Version version1 = new Version("1.0.0.0");
        Version version3 = new Version("1.0.0.0");
        Version version2 = new Version("1.2.3.4");

        if (version1.after(version3)) {
            System.out.println("新版本");
        } else {
            System.out.println("旧版本");
        }

        if (version1.before(version3)) {
            System.out.println("旧版本");
        } else {
            System.out.println("新版本");
        }

    }
}
