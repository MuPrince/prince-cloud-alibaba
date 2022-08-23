/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : prince-moment

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 10/08/2022 10:29:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint NOT NULL,
  `utterer` bigint NOT NULL COMMENT '发言人',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `moment_id` bigint NOT NULL COMMENT '动态id',
  `poster` bigint NOT NULL COMMENT '动态发布者',
  `amount_of_like` int NULL DEFAULT 0 COMMENT '点赞数',
  `amount_of_reply` int NULL DEFAULT 0 COMMENT '回复数',
  `comment_time` datetime NULL DEFAULT NULL COMMENT '评论时间',
  `is_self` tinyint NULL DEFAULT 0 COMMENT '是否是动态作者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `author` bigint NOT NULL COMMENT '作者',
  `moment_id` bigint NOT NULL COMMENT '动态id',
  `favorite_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like`  (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '点赞者id',
  `author` bigint NOT NULL COMMENT '目标对象拥有者id',
  `target_id` bigint NOT NULL COMMENT '目标对象id',
  `like_time` datetime NOT NULL COMMENT '点赞时间',
  `type` int NOT NULL COMMENT '目标对象类型。1：动态；2：评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moment
-- ----------------------------
DROP TABLE IF EXISTS `moment`;
CREATE TABLE `moment`  (
  `id` bigint NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `author_id` bigint NOT NULL COMMENT '用户id',
  `amount_of_like` int NULL DEFAULT NULL COMMENT '点赞数',
  `amount_of_share` int NULL DEFAULT NULL COMMENT '分享数',
  `amount_of_favorite` int NULL DEFAULT NULL COMMENT '收藏数',
  `amount_of_comment` int NULL DEFAULT NULL COMMENT '评论数',
  `amount_of_watch` int NULL DEFAULT NULL COMMENT '阅读量',
  `hot` int NULL DEFAULT NULL COMMENT '热度',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `type` int NULL DEFAULT NULL COMMENT '类型',
  `longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  `is_display` tinyint NULL DEFAULT NULL COMMENT '是否展示',
  `topic_id` bigint NULL DEFAULT NULL COMMENT '话题id',
  `portfolio_id` bigint NULL DEFAULT NULL COMMENT '作品集id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `is_accept_present` tinyint NULL DEFAULT NULL COMMENT '是否接受礼物',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '动态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moment_detail
-- ----------------------------
DROP TABLE IF EXISTS `moment_detail`;
CREATE TABLE `moment_detail`  (
  `id` bigint NOT NULL,
  `moment_id` bigint NOT NULL COMMENT '动态id',
  `type` int NOT NULL COMMENT '动态类型',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` bigint NOT NULL,
  `replier` bigint NOT NULL COMMENT '回复人',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `utterer` bigint NOT NULL COMMENT '评论发言人',
  `comment_id` bigint NOT NULL COMMENT '评论id',
  `target` bigint NOT NULL COMMENT '回复对象',
  `type` int NULL DEFAULT NULL COMMENT '回复对象类型',
  `reply_time` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `is_self` tinyint NULL DEFAULT 0 COMMENT '评论是否属于自己',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share`  (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `author` bigint NOT NULL,
  `moment_id` bigint NOT NULL,
  `share_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分享' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
