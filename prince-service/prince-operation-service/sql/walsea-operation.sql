
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

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
                            `id` bigint NOT NULL,
                            `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '版本号',
                            `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新内容',
                            `platform` int NOT NULL COMMENT '平台，1：安卓；2：ios',
                            `installation_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '安装包',
                            `is_force` tinyint NOT NULL DEFAULT 0 COMMENT '更新方式',
                            `user_id` bigint NOT NULL COMMENT '发布人',
                            `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布人昵称',
                            `enable` tinyint NOT NULL DEFAULT 0 COMMENT '是否开始下载',
                            `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '版本控制' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名字',
                        `action_scope` int NOT NULL DEFAULT 1 COMMENT '作用范围。1：全部；2：用户；3：内容',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '标签表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword`  (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `keyword` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字，matching_way为2时存储正则表达式',
                            `action_scope` int NOT NULL DEFAULT 1 COMMENT '作用范围，作用目标。1：虚拟屋；2：聊天室',
                            `matching_way` int NOT NULL DEFAULT 1 COMMENT '匹配方式。1：直接匹配；2：正则匹配',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '屏蔽关键词' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
                           `sort` int NULL DEFAULT 1 COMMENT '排序',
                           `enable` tinyint NULL DEFAULT 0 COMMENT '启用',
                           `link` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '连接地址',
                           `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
                           `create_time` datetime NULL DEFAULT NULL,
                           `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
                             `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文字描述',
                             `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动海报',
                             `images` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述图片',
                             `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动链接',
                             `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                             `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1552951292714844161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动信息表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for activity_publication
-- ----------------------------
DROP TABLE IF EXISTS `activity_publication`;
CREATE TABLE `activity_publication`  (
                                         `id` bigint NOT NULL,
                                         `activity_id` bigint NOT NULL COMMENT '活动id',
                                         `user_id` bigint NOT NULL COMMENT '发布人',
                                         `publication_date` datetime NOT NULL COMMENT '发布时间',
                                         `start_time` datetime NOT NULL COMMENT '开始时间',
                                         `end_time` datetime NOT NULL COMMENT '结束时间',
                                         `activity_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动标题',
                                         `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布人昵称',
                                         `is_cancel` tinyint NULL DEFAULT 0 COMMENT '是否取消活动',
                                         `cancel_time` datetime NULL DEFAULT NULL COMMENT '取消时间',
                                         `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动标题',
                                         `is_promotion` tinyint NULL DEFAULT NULL COMMENT '推广',
                                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动发布表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for user_tag
-- ----------------------------
DROP TABLE IF EXISTS `user_tag`;
CREATE TABLE `user_tag`  (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `user_id` bigint NOT NULL COMMENT '用户id',
                             `tag_id` bigint NOT NULL COMMENT '标签id',
                             PRIMARY KEY (`id`) USING BTREE,
                             INDEX `user_index`(`user_id` ASC, `tag_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户标签' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;