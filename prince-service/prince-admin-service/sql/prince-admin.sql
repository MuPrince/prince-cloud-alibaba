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
) ENGINE = InnoDB AUTO_INCREMENT = 1552961957114490882 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '系统管理员', '系统管理员', 1, NULL);
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 99, NULL);

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
                             `id` bigint NOT NULL COMMENT ' ',
                             `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                             `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
                             `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                             `head` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
                             `login_time` datetime NULL DEFAULT NULL COMMENT '登陆时间',
                             `status` tinyint NULL DEFAULT 1 COMMENT '状态，0：禁用；1：正常',
                             `role_id` bigint NULL DEFAULT 2 COMMENT '角色id',
                             PRIMARY KEY (`id`) USING BTREE,
                             UNIQUE INDEX `username_index`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '系统管理员', 'EC15D79E36E14DD258CFFF3D48B73D35', 'https://prince-dev.nos-eastchina1.126.net/upload/8cf4674e-55e3-488c-9243-927720abc5fd1639560176638_head.jpg', NOW(), 1, 1);

SET FOREIGN_KEY_CHECKS = 1;

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1554279070181621762 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `role_id` bigint NOT NULL COMMENT '角色id',
                                  `menu_id` bigint NOT NULL COMMENT '菜单id',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
                                        `id` bigint NOT NULL AUTO_INCREMENT,
                                        `role_id` bigint NOT NULL COMMENT '角色id',
                                        `permission_id` bigint NOT NULL COMMENT '权限id',
                                        PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色权限关联表' ROW_FORMAT = DYNAMIC;

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

SET FOREIGN_KEY_CHECKS = 1;