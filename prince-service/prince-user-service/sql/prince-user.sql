SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `branch_id` bigint NOT NULL,
                             `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `rollback_info` longblob NOT NULL,
                             `log_status` int NOT NULL,
                             `log_created` datetime NOT NULL,
                             `log_modified` datetime NOT NULL,
                             `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE,
                             UNIQUE INDEX `ux_undo_log`(`xid` ASC, `branch_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` bigint NOT NULL,
                         `prince_number` bigint NOT NULL COMMENT 'prince号',
                         `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
                         `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码，加密存储',
                         `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '132' COMMENT '手机号',
                         `phone_cryptographic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '手机号加密串',
                         `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册邮箱',
                         `is_verified` tinyint(1) NULL DEFAULT 0 COMMENT '是否实名认证',
                         `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
                         `status` int NULL DEFAULT NULL COMMENT '使用状态（-2：注销；-1：未完成注册；1：正常；2：锁定；3：冻结；4：禁言）',
                         `unfreeze_time` datetime NULL DEFAULT NULL COMMENT '解冻时间',
                         `head_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
                         `is_mobile_check` tinyint(1) NULL DEFAULT 0 COMMENT '手机是否验证 （0否  1是）',
                         `is_email_check` tinyint(1) NULL DEFAULT 0 COMMENT '邮箱是否检测（0否  1是）',
                         `vip_level` int NULL DEFAULT 0 COMMENT '会员等级',
                         `points` int NULL DEFAULT 0 COMMENT '积分',
                         `experience_value` int NULL DEFAULT 0 COMMENT '经验值',
                         `credit_scope` int NULL DEFAULT 100 COMMENT '信用分',
                         `im_account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'im账号',
                         `registry_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                         `vip_end_time` datetime NULL DEFAULT NULL COMMENT '会员到期时间',
                         `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                         `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
                         `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                         PRIMARY KEY (`id`) USING BTREE,
                         UNIQUE INDEX `prince_number`(`prince_number` ASC) USING BTREE,
                         UNIQUE INDEX `index_phone`(`phone_cryptographic` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
                              `id` bigint NOT NULL,
                              `user_id` bigint NOT NULL COMMENT '用户id',
                              `created` datetime NOT NULL COMMENT '创建时间',
                              `updated` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                              `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
                              `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
                              `head_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
                              `background_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片',
                              `self_identity` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自我认同 t:T p:P h:H bisexual:双性 unknow:迷茫',
                              `relationship_status` int NULL DEFAULT NULL COMMENT '感情状态.1：单身；2：恋爱中；3：暗恋中；4：保持单身',
                              `birthday` datetime NULL DEFAULT NULL COMMENT '出生年月日',
                              `province_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份ID',
                              `city_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市ID',
                              `area_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区ID',
                              `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
                              `id_card_cryptographic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证加密串',
                              `constellation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星座',
                              `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
                              `height` double(3, 2) NULL DEFAULT NULL COMMENT '身高',
                              `weight` double(3, 2) NULL DEFAULT NULL COMMENT '体重',
                              `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                              `prince_number` bigint NOT NULL COMMENT 'prince号',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for prince_number
-- ----------------------------
DROP TABLE IF EXISTS `prince_number`;
CREATE TABLE `prince_number`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `number` bigint NOT NULL COMMENT '号码',
                                  `level` int NOT NULL DEFAULT 0 COMMENT '靓号等级。-1：保留账号；0：普通账号，升序',
                                  `is_used` tinyint NOT NULL DEFAULT 0 COMMENT '是否被使用',
                                  `is_recyclable` tinyint NULL DEFAULT NULL COMMENT '是否可回收',
                                  `last_user` bigint NULL DEFAULT NULL COMMENT '最后使用用户',
                                  PRIMARY KEY (`id`) USING BTREE,
                                  UNIQUE INDEX `number_index`(`number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'prince号' ROW_FORMAT = DYNAMIC;


SET FOREIGN_KEY_CHECKS = 1;