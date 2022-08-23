package com.prince.user.verification.anliyun.constant;

/**
 * Description : 活体检测类型
 *
 * @author Mu Prince <br\>
 * @since 2022/7/18 13:13
 */
public interface Model {

    /**
     * （默认）眨眼动作活体检测。
     */
    String LIVENESS = "LIVENESS";

    /**
     * 眨眼动作活体+炫彩活体双重检测。
     */
    String PHOTINUS_LIVENESS = "PHOTINUS_LIVENESS";

    /**
     * 多动作活体检测。当前为眨眼+任意摇头检测。
     */
    String MULTI_ACTION = "MULTI_ACTION";
}
