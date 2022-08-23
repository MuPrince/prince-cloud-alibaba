/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : prince-user

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 15/08/2022 17:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` bigint NOT NULL,
  `follower` bigint NOT NULL COMMENT '关注者',
  `followed` bigint NOT NULL COMMENT '被关注者',
  `followed_time` datetime NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '关注' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------

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

-- ----------------------------
-- Records of undo_log
-- ----------------------------

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
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 88888888, NULL, '8DDCFF3A80F4189CA1C9D4D902C3C909', '19*******11', 'CXWc1yLu2ejiFrqUzqg5sg==', NULL, 1, '蘑菇哇哇', 1, NULL, 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', 1, 0, 0, 0, 0, 100, 'b09eb2726c44468daf8ab171887a1ad5', '2022-08-13 18:25:10', NULL, '2022-08-13 18:40:19', '2022-08-15 09:51:50', NULL);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL COMMENT '用户id',
  `created` datetime NOT NULL COMMENT '创建时间',
  `updated` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `head_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `background_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片',
  `self_identity` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自我认同 t:T p:P h:H bisexual:双性 unknow:迷茫',
  `relationship_status` int NULL DEFAULT NULL COMMENT '感情状态.1：单身；2：恋爱中；3：暗恋中；4：保持单身',
  `birthday` datetime NULL DEFAULT NULL COMMENT '出生年月日',
  `id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `id_card_cryptographic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证加密串',
  `constellation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星座',
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `height` double(3, 2) NULL DEFAULT NULL COMMENT '身高',
  `weight` double(3, 2) NULL DEFAULT NULL COMMENT '体重',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `prince_number` bigint NOT NULL COMMENT 'prince号',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 1, '2022-08-13 18:25:29', '2022-08-13 18:27:17', '蘑菇哇哇', '蘑菇哇哇', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', NULL, NULL, NULL, '2022-08-11 00:00:00', '51**************22', NULL, NULL, NULL, NULL, NULL, NULL, 88888888, 18);

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

-- ----------------------------
-- Records of user_tag
-- ----------------------------

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

-- ----------------------------
-- Records of prince_number
-- ----------------------------


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
                             `mid` bigint NOT NULL AUTO_INCREMENT,
                             `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
                             `parent_id` bigint NULL DEFAULT 0 COMMENT '父id',
                             `sort` int NULL DEFAULT 1 COMMENT '排序',
                             `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求地址',
                             `enable` tinyint NULL DEFAULT 1 COMMENT '启用。0：禁用；1：启用',
                             `icon` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单图标',
                             `level` int NOT NULL DEFAULT 1 COMMENT '菜单等级',
                             PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1558271367168716803 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (6, '11', 5, 112, '222', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (7, '33', 5, 113, '333', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (15, 'banner设置', 14, 115, '/setting/banner', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (16, '标签设置', 14, 116, '/setting/tags', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (17, '权限管理', 1, 300, '/account/permissions', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (18, '关键字设置', 14, 118, '/setting/keyword', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (37, 'Banner设置', 36, 100, '/setting/banner', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (38, '标签设置', 36, 300, '/setting/tags', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (39, '关键字管理', 36, 122, '/setting/keyword', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (41, '测试子菜单', 40, 123, '/111112222', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (42, '工作台', 0, 100, '/workbench', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (51, '设置中心', 0, 1000, '/settings', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (52, '角色管理', 51, 1, '/settings/role', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (53, '账号管理', 51, 1, '/settings/account', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (54, '菜单管理', 51, 1, '/settings/menu', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (55, '权限管理', 51, 1, '/settings/permissions', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (56, '权限密码', 51, 1, '/settings/super', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (57, '运营中心', 0, 500, '/operation', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (58, 'banner管理', 57, 1, '/operation/banner', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (59, '屏蔽词管理', 57, 1, '/operation/keyword', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (60, '活动管理', 57, 1, '/operation/activity', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (61, '版本管理', 57, 1, '/operation/versions', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (62, '标签管理', 57, 1, '/operation/tags', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (63, '举报中心', 0, 700, '/report', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (64, '用户举报', 63, 200, '/report/user', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (65, '动态举报', 63, 100, '/report/posts', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (66, '虚拟屋举报', 63, 300, '/report/virtual', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (68, '群组举报', 63, 400, '/report/group', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (69, '评论举报', 63, 500, '/report/comment', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1552502448785059841, '审核中心', 0, 400, '/audit', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1552502552375980033, '动态审核', 1552502448785059841, 100, '/audit/posts', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1552502603995279362, '用户信息审核', 1552502448785059841, 200, '/audit/user', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1552559576316911617, '剧本审核', 1552502448785059841, 300, '/audit/script', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1552839921553747970, '群组审核', 1552502448785059841, 400, '/audit/group', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1552855974899986433, '创作者认证', 1552502448785059841, 500, '/audit/author', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553208482197483522, '用户中心', 0, 200, '/user', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1553208607250657282, '用户数据', 1553208482197483522, 100, '/user/dashboard', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553208735147569154, '用户管理', 1553208482197483522, 200, '/user/list', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553209249708978178, '用户画像', 1553208482197483522, 300, '/user/portrait', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553209445759135745, '创作者查询', 1553208482197483522, 400, '/user/author', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553934501585887234, '内容中心', 0, 300, '/content', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1553934693781479425, '作品集管理', 1553934501585887234, 200, '/content/showreel', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1553954453407670273, '剧本管理', 1553934501585887234, 300, '/content/script', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554279070181621761, '泡泡管理', 1553934501585887234, 900, '/content/bubble', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554316317241118721, '后悔药', 1553934501585887234, 600, '/content/regretful', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554346744123232257, '草稿箱', 1553934501585887234, 500, '/content/drafts', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554743909534429185, '虚拟屋管理', 1553934501585887234, 400, '/content/virtual', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554743986457964545, '群组管理', 1553934501585887234, 800, '/content/group', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1554782945762467842, '话题管理', 1553934501585887234, 700, '/content/topic', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1555096420200009730, '动态管理', 1553934501585887234, 100, '/content/posts', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1555371688848269313, '反馈与建议', 0, 900, '/feedback', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1555374324393713665, '用户反馈建议', 1555371688848269313, 900, '/feedback/feedback', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1556531559010480130, '订单中心', 0, 600, '/order', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1556532150822580226, '全部订单', 1556531559010480130, 100, '/order/order', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1558268506678554626, '申诉中心', 0, 800, '/appeal', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (1558269589912088577, '用户申诉', 1558268506678554626, 100, '/appeal/user', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1558269905294389249, '动态申诉', 1558268506678554626, 200, '/appeal/posts', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1558270723494047746, '虚拟屋申诉', 1558268506678554626, 300, '/appeal/virtual', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1558271310554001409, '群组申诉', 1558268506678554626, 400, '/appeal/group', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (1558271367168716802, '评论申诉', 1558268506678554626, 500, '/appeal/comment', 1, NULL, 2);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
                                   `pid` bigint NOT NULL AUTO_INCREMENT,
                                   `menu_id` bigint NOT NULL COMMENT '菜单id',
                                   `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源路径',
                                   `matching_way` int UNSIGNED NOT NULL COMMENT '路径匹配方式',
                                   `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限描述',
                                   `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方式',
                                   `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
                                   PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1554785315196100610 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1554785315196100609, 42, '/sys/permission/search', 0, '123', 'POST', NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
                             `rid` bigint NOT NULL AUTO_INCREMENT,
                             `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
                             `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色描述',
                             `level` int NOT NULL COMMENT '角色等级',
                             `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
                             PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1554783273178226690 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '系统管理员', '系统管理员', 1, NULL);
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 99, NULL);
INSERT INTO `sys_role` VALUES (1554783273178226689, '测试角色', '', 1, NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `role_id` bigint NOT NULL COMMENT '角色id',
                                  `menu_id` bigint NOT NULL COMMENT '菜单id',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (92, 1554783273178226689, 64);
INSERT INTO `sys_role_menu` VALUES (93, 1554783273178226689, 65);
INSERT INTO `sys_role_menu` VALUES (94, 1554783273178226689, 66);
INSERT INTO `sys_role_menu` VALUES (95, 1554783273178226689, 1556480320923054081);
INSERT INTO `sys_role_menu` VALUES (96, 1554783273178226689, 1554279070181621761);
INSERT INTO `sys_role_menu` VALUES (97, 1554783273178226689, 1552855974899986433);
INSERT INTO `sys_role_menu` VALUES (98, 1554783273178226689, 68);
INSERT INTO `sys_role_menu` VALUES (99, 1554783273178226689, 1556486106399191041);
INSERT INTO `sys_role_menu` VALUES (100, 1554783273178226689, 69);
INSERT INTO `sys_role_menu` VALUES (101, 1554783273178226689, 1553954453407670273);
INSERT INTO `sys_role_menu` VALUES (102, 1554783273178226689, 1554782945762467842);
INSERT INTO `sys_role_menu` VALUES (103, 1554783273178226689, 1554743909534429185);
INSERT INTO `sys_role_menu` VALUES (104, 1554783273178226689, 1552502448785059841);
INSERT INTO `sys_role_menu` VALUES (105, 1554783273178226689, 1553209445759135745);
INSERT INTO `sys_role_menu` VALUES (106, 1554783273178226689, 1553934693781479425);
INSERT INTO `sys_role_menu` VALUES (107, 1554783273178226689, 1553208735147569154);
INSERT INTO `sys_role_menu` VALUES (108, 1554783273178226689, 1556457156830638081);
INSERT INTO `sys_role_menu` VALUES (109, 1554783273178226689, 1552502552375980033);
INSERT INTO `sys_role_menu` VALUES (110, 1554783273178226689, 1553209249708978178);
INSERT INTO `sys_role_menu` VALUES (111, 1554783273178226689, 1555371688848269313);
INSERT INTO `sys_role_menu` VALUES (112, 1554783273178226689, 1556475010640588801);
INSERT INTO `sys_role_menu` VALUES (113, 1554783273178226689, 1553934501585887234);
INSERT INTO `sys_role_menu` VALUES (114, 1554783273178226689, 1552839921553747970);
INSERT INTO `sys_role_menu` VALUES (115, 1554783273178226689, 1555374324393713665);
INSERT INTO `sys_role_menu` VALUES (116, 1554783273178226689, 1555096420200009730);
INSERT INTO `sys_role_menu` VALUES (117, 1554783273178226689, 1556532150822580226);
INSERT INTO `sys_role_menu` VALUES (118, 1554783273178226689, 1554316317241118721);
INSERT INTO `sys_role_menu` VALUES (119, 1554783273178226689, 42);
INSERT INTO `sys_role_menu` VALUES (120, 1554783273178226689, 1552502603995279362);
INSERT INTO `sys_role_menu` VALUES (121, 1554783273178226689, 1556531559010480130);
INSERT INTO `sys_role_menu` VALUES (122, 1554783273178226689, 1553208482197483522);
INSERT INTO `sys_role_menu` VALUES (123, 1554783273178226689, 1553208607250657282);
INSERT INTO `sys_role_menu` VALUES (124, 1554783273178226689, 1554346744123232257);
INSERT INTO `sys_role_menu` VALUES (125, 1554783273178226689, 51);
INSERT INTO `sys_role_menu` VALUES (126, 1554783273178226689, 52);
INSERT INTO `sys_role_menu` VALUES (127, 1554783273178226689, 53);
INSERT INTO `sys_role_menu` VALUES (128, 1554783273178226689, 54);
INSERT INTO `sys_role_menu` VALUES (129, 1554783273178226689, 55);
INSERT INTO `sys_role_menu` VALUES (130, 1554783273178226689, 56);
INSERT INTO `sys_role_menu` VALUES (131, 1554783273178226689, 1554743986457964545);
INSERT INTO `sys_role_menu` VALUES (132, 1554783273178226689, 57);
INSERT INTO `sys_role_menu` VALUES (133, 1554783273178226689, 58);
INSERT INTO `sys_role_menu` VALUES (134, 1554783273178226689, 59);
INSERT INTO `sys_role_menu` VALUES (135, 1554783273178226689, 60);
INSERT INTO `sys_role_menu` VALUES (136, 1554783273178226689, 61);
INSERT INTO `sys_role_menu` VALUES (137, 1554783273178226689, 62);
INSERT INTO `sys_role_menu` VALUES (138, 1554783273178226689, 1552559576316911617);
INSERT INTO `sys_role_menu` VALUES (139, 1554783273178226689, 63);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
                                        `id` bigint NOT NULL AUTO_INCREMENT,
                                        `role_id` bigint NOT NULL COMMENT '角色id',
                                        `permission_id` bigint NOT NULL COMMENT '权限id',
                                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色权限关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (27, 1554783273178226689, 1554785315196100609);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT ' ',
                             `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                             `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
                             `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                             `head` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
                             `login_time` datetime NULL DEFAULT NULL COMMENT '登陆时间',
                             `status` tinyint NULL DEFAULT 1 COMMENT '状态，0：禁用；1：正常',
                             `role_id` bigint NULL DEFAULT 2 COMMENT '角色id',
                             PRIMARY KEY (`id`) USING BTREE,
                             UNIQUE INDEX `username_index`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1559015624192049155 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '系统用户1', 'EC15D79E36E14DD258CFFF3D48B73D35', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', '2022-08-15 17:03:13', 1, 1);
INSERT INTO `sys_user` VALUES (1557298203110486018, 'test_001', '测试角色001', 'B5099F4AFAF15413DF29A36CA20A1801', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', '2022-08-12 18:11:13', 1, 1554783273178226689);
INSERT INTO `sys_user` VALUES (1559015354485719041, 'test_002', '测试角色002', 'A22A32CB2D4C9B04B7A8361CDBB29DB5', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', NULL, 1, 1554783273178226689);
INSERT INTO `sys_user` VALUES (1559015525365858305, 'test_003', '测试角色003', '093674578D106F84C5B4CD0662F574FF', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', NULL, 1, 1554783273178226689);
INSERT INTO `sys_user` VALUES (1559015624192049154, 'test_004', '测试角色004', '822E065042A0C0EB57E4876549D29045', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', NULL, 1, 1554783273178226689);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
                                  `id` bigint NOT NULL,
                                  `user_id` bigint NOT NULL COMMENT '用户id',
                                  `role_id` bigint NOT NULL COMMENT '角色id',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1557256724337938434 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1557256724337938433, '1', '2', 'https://prince-dev.nos-eastchina1.126.net/upload/da77dfbffe840190c4100e6a35f171a1.png', 'https://prince-dev.nos-eastchina1.126.net/upload/da77dfbffe840190c4100e6a35f171a1.png', '3', '2022-08-10 14:45:10', NULL);

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
-- Records of activity_publication
-- ----------------------------
INSERT INTO `activity_publication` VALUES (1557256793967579137, 1557256724337938433, 1, '2022-08-10 14:45:27', '2022-08-10 00:00:00', '2022-08-10 14:46:38', NULL, '????1', 0, NULL, '1', 0);
INSERT INTO `activity_publication` VALUES (1557257147966836737, 1557256724337938433, 1, '2022-08-10 14:46:51', '2022-08-19 00:00:00', '2022-09-14 23:59:59', NULL, '????1', 1, '2022-08-10 14:46:54', '1', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1557287754402910211 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1557287754402910210, '1', 1, 0, '1', 'https://prince-dev.nos-eastchina1.126.net/upload/da77dfbffe840190c4100e6a35f171a1.png', '2022-08-10 16:48:28', '2022-08-11 18:03:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '屏蔽关键词' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES (11, 'QQ', 1, 1);
INSERT INTO `keyword` VALUES (12, 'qq', 1, 1);
INSERT INTO `keyword` VALUES (13, 'WX', 1, 1);
INSERT INTO `keyword` VALUES (14, 'wx', 1, 1);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名字',
                        `action_scope` int NOT NULL DEFAULT 1 COMMENT '作用范围。1：全部；2：用户；3：内容',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (20, '测试标签', 1);
INSERT INTO `tag` VALUES (21, '1111', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户标签' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_tag
-- ----------------------------
INSERT INTO `user_tag` VALUES (8, 12, 1);
INSERT INTO `user_tag` VALUES (9, 12, 1);

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

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES (1557984538582335490, '0.0.6', '更新1\n更新2\n更新3', 1, '/apk/v0026.apk', 0, 1, '系统用户1', 0, '2022-08-12 14:57:15', '2022-08-12 17:41:15');
INSERT INTO `version` VALUES (1558003822767390721, 'v0026', '1111', 2, '/', 0, 1, '系统用户1', 0, '2022-08-12 16:13:52', NULL);
INSERT INTO `version` VALUES (1558013803247976450, '0.0.26', '测试上传', 1, '/v0026.apk', 0, 1, '系统用户1', 0, '2022-08-12 16:53:32', NULL);

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
-- Records of comment
-- ----------------------------

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
-- Records of favorite
-- ----------------------------

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
                           `status` int NULL DEFAULT NULL COMMENT '状态。1：正常；-1：下架',
                           `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
                           `type` int NULL DEFAULT NULL COMMENT '类型。1：视频；2：文章；3：音频；4：图文',
                           `longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
                           `latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
                           `is_display` tinyint NULL DEFAULT 1 COMMENT '是否展示',
                           `topic_id` bigint NULL DEFAULT NULL COMMENT '话题id',
                           `portfolio_id` bigint NULL DEFAULT NULL COMMENT '作品集id',
                           `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
                           `is_accept_present` tinyint NULL DEFAULT NULL COMMENT '是否接受礼物',
                           `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
                           `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
                           `category_id` bigint NULL DEFAULT NULL COMMENT '分类id',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '动态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moment
-- ----------------------------
INSERT INTO `moment` VALUES (1, '1', 1, 2, 0, 0, 0, 0, 1, 1, '2022-08-10 11:48:34', 1, 1.0000000, 1.0000000, 1, 1, 1, '1', 1, NULL, NULL, NULL);
INSERT INTO `moment` VALUES (2, '2', 1, 1, 0, 0, 0, 0, 2, 2, '2022-08-10 15:14:37', 1, 1.0000000, 1.0000000, 1, 1, 1, '1', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for moment_category
-- ----------------------------
DROP TABLE IF EXISTS `moment_category`;
CREATE TABLE `moment_category`  (
                                    `id` bigint NOT NULL,
                                    `type` int NOT NULL COMMENT '所属类型。1：视频；2：文章；3：音频；4：图文',
                                    `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moment_category
-- ----------------------------

-- ----------------------------
-- Table structure for moment_detail
-- ----------------------------
DROP TABLE IF EXISTS `moment_detail`;
CREATE TABLE `moment_detail`  (
                                  `id` bigint NOT NULL,
                                  `moment_id` bigint NOT NULL COMMENT '动态id',
                                  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
                                  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
                                  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
                                  `longitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
                                  `latitude` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moment_detail
-- ----------------------------
INSERT INTO `moment_detail` VALUES (1, 1, '1', '阿斯顿很纠结ask好的', '撒大苏打撒旦', NULL, NULL);

-- ----------------------------
-- Table structure for ocean_like
-- ----------------------------
DROP TABLE IF EXISTS `ocean_like`;
CREATE TABLE `ocean_like`  (
                               `id` bigint NOT NULL,
                               `user_id` bigint NOT NULL COMMENT '点赞者id',
                               `author` bigint NOT NULL COMMENT '目标对象拥有者id',
                               `target_id` bigint NOT NULL COMMENT '目标对象id',
                               `like_time` datetime NOT NULL COMMENT '点赞时间',
                               `type` int NOT NULL COMMENT '目标对象类型。1：动态；2：评论',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ocean_like
-- ----------------------------
INSERT INTO `ocean_like` VALUES (1557264823039856641, 12, 1, 1, '2022-08-10 15:17:21', 1);
INSERT INTO `ocean_like` VALUES (1557264841004060673, 12, 1, 2, '2022-08-10 15:17:25', 1);

-- ----------------------------
-- Table structure for portfolio
-- ----------------------------
DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE `portfolio`  (
                              `id` bigint NOT NULL,
                              `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
                              `user_id` bigint NOT NULL COMMENT '作者',
                              `type` bigint NOT NULL COMMENT '类型',
                              `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
                              `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
                              `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                              `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                              `at_top` tinyint NULL DEFAULT NULL COMMENT '置顶',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '作品集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of portfolio
-- ----------------------------

-- ----------------------------
-- Table structure for portfolio_catalog
-- ----------------------------
DROP TABLE IF EXISTS `portfolio_catalog`;
CREATE TABLE `portfolio_catalog`  (
                                      `id` bigint NOT NULL,
                                      `portfolio_id` bigint NOT NULL,
                                      `moment_id` bigint NOT NULL,
                                      `sort` double NOT NULL,
                                      PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '作品集目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of portfolio_catalog
-- ----------------------------

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
-- Records of reply
-- ----------------------------

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
-- Records of share
-- ----------------------------
