/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : shop_goods

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 29/08/2021 22:18:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_items
-- ----------------------------
DROP TABLE IF EXISTS `ad_items`;
CREATE TABLE `ad_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(3) NULL DEFAULT NULL COMMENT '分类，1首页推广,2列表页推广',
  `sku_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示的产品',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ad_items
-- ----------------------------
INSERT INTO `ad_items` VALUES (4, 'ww', 1, '1319051488282112002', 5);
INSERT INTO `ad_items` VALUES (5, '33', 1, '1319051488298889217', 6);
INSERT INTO `ad_items` VALUES (6, '33', 1, '1318596430398562305', 7);
INSERT INTO `ad_items` VALUES (7, '11', 1, '1318596430360813570', 7);
INSERT INTO `ad_items` VALUES (11, '2324', 1, '1318594982227025922', 8);
INSERT INTO `ad_items` VALUES (122, '123', 1, '1318594982227025922', 11);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `provinceid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `cityid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `areaid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '县/区',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `is_default` int(1) NULL DEFAULT NULL COMMENT '是否是默认 1默认 0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌名称',
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌图片地址',
  `initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌的首字母',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (11, '华为', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/eed72cc4-a9c1-4010-949a-03cef5b933d6.jpg', '', NULL);
INSERT INTO `brand` VALUES (12, '中兴', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/4fedb361-5ab3-4ad0-a667-580c1f37dff0.jpg', '', NULL);
INSERT INTO `brand` VALUES (13, '大疆', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/e8382c48-0487-4a9b-8fd0-a3716c3eea19.jpg', '', NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `parent_id` int(20) NULL DEFAULT NULL COMMENT '上级ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11182 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1081, '速干衣裤', 1, 1079);
INSERT INTO `category` VALUES (1082, '滑雪服', 1, 1079);
INSERT INTO `category` VALUES (1083, '羽绒服/棉服', 1, 1079);
INSERT INTO `category` VALUES (1084, '休闲衣裤', 1, 1079);
INSERT INTO `category` VALUES (1085, '抓绒衣裤', 1, 1079);
INSERT INTO `category` VALUES (1086, '软壳衣裤', 1, 1079);
INSERT INTO `category` VALUES (1087, 'T恤', 1, 1079);
INSERT INTO `category` VALUES (1088, '户外风衣', 1, 1079);
INSERT INTO `category` VALUES (1089, '功能内衣', 1, 1079);
INSERT INTO `category` VALUES (1090, '军迷服饰', 1, 1079);
INSERT INTO `category` VALUES (1091, '登山鞋', 1, 1079);
INSERT INTO `category` VALUES (1092, '雪地靴', 1, 1079);
INSERT INTO `category` VALUES (1093, '徒步鞋', 1, 1079);
INSERT INTO `category` VALUES (1094, '越野跑鞋', 1, 1079);
INSERT INTO `category` VALUES (1095, '休闲鞋', 1, 1079);
INSERT INTO `category` VALUES (1096, '工装鞋', 1, 1079);
INSERT INTO `category` VALUES (1097, '溯溪鞋', 1, 1079);
INSERT INTO `category` VALUES (1098, '沙滩/凉拖', 1, 1079);
INSERT INTO `category` VALUES (1099, '户外袜', 1, 1079);
INSERT INTO `category` VALUES (1100, '户外装备', 1, 1031);
INSERT INTO `category` VALUES (1101, '帐篷/垫子', 1, 1100);
INSERT INTO `category` VALUES (1102, '睡袋/吊床', 1, 1100);
INSERT INTO `category` VALUES (1103, '登山攀岩', 1, 1100);
INSERT INTO `category` VALUES (1104, '背包', 1, 1100);
INSERT INTO `category` VALUES (1105, '户外配饰', 1, 1100);
INSERT INTO `category` VALUES (1106, '户外照明', 1, 1100);
INSERT INTO `category` VALUES (1107, '户外仪表', 1, 1100);
INSERT INTO `category` VALUES (1108, '户外工具', 1, 1100);
INSERT INTO `category` VALUES (1109, '望远镜', 1, 1100);
INSERT INTO `category` VALUES (1110, '旅游用品', 1, 1100);
INSERT INTO `category` VALUES (1111, '便携桌椅床', 1, 1100);
INSERT INTO `category` VALUES (1112, '野餐烧烤', 1, 1100);
INSERT INTO `category` VALUES (1113, '军迷用品', 1, 1100);
INSERT INTO `category` VALUES (1114, '救援装备', 1, 1100);
INSERT INTO `category` VALUES (1115, '滑雪装备', 1, 1100);
INSERT INTO `category` VALUES (1116, '极限户外', 1, 1100);
INSERT INTO `category` VALUES (1117, '冲浪潜水', 1, 1100);
INSERT INTO `category` VALUES (1118, '健身训练', 1, 1031);
INSERT INTO `category` VALUES (1119, '综合训练器', 1, 1118);
INSERT INTO `category` VALUES (1120, '其他大型器械', 1, 1118);
INSERT INTO `category` VALUES (1121, '哑铃', 1, 1118);
INSERT INTO `category` VALUES (1122, '仰卧板/收腹机', 1, 1118);
INSERT INTO `category` VALUES (1123, '其他中小型器材', 1, 1118);
INSERT INTO `category` VALUES (1124, '瑜伽舞蹈', 1, 1118);
INSERT INTO `category` VALUES (1125, '武术搏击', 1, 1118);
INSERT INTO `category` VALUES (1126, '健身车/动感单车', 1, 1118);
INSERT INTO `category` VALUES (1127, '跑步机', 1, 1118);
INSERT INTO `category` VALUES (1128, '运动护具', 1, 1118);
INSERT INTO `category` VALUES (1129, '纤体瑜伽', 1, 1031);
INSERT INTO `category` VALUES (1130, '瑜伽垫', 1, 1129);
INSERT INTO `category` VALUES (1131, '瑜伽服', 1, 1129);
INSERT INTO `category` VALUES (1132, '瑜伽配件', 1, 1129);
INSERT INTO `category` VALUES (1133, '瑜伽套装', 1, 1129);
INSERT INTO `category` VALUES (1134, '舞蹈鞋服', 1, 1129);
INSERT INTO `category` VALUES (1135, '体育用品', 1, 1031);
INSERT INTO `category` VALUES (1136, '羽毛球', 1, 1135);
INSERT INTO `category` VALUES (1137, '乒乓球', 1, 1135);
INSERT INTO `category` VALUES (1138, '篮球', 1, 1135);
INSERT INTO `category` VALUES (1139, '足球', 1, 1135);
INSERT INTO `category` VALUES (1140, '网球', 1, 1135);
INSERT INTO `category` VALUES (1141, '排球', 1, 1135);
INSERT INTO `category` VALUES (1142, '高尔夫', 1, 1135);
INSERT INTO `category` VALUES (1143, '台球', 1, 1135);
INSERT INTO `category` VALUES (1144, '棋牌麻将', 1, 1135);
INSERT INTO `category` VALUES (1145, '轮滑滑板', 1, 1135);
INSERT INTO `category` VALUES (1146, '其他', 1, 1135);
INSERT INTO `category` VALUES (1148, '彩票', 1, 1147);
INSERT INTO `category` VALUES (1149, '双色球', 1, 1148);
INSERT INTO `category` VALUES (1150, '大乐透', 1, 1148);
INSERT INTO `category` VALUES (1151, '福彩3D', 1, 1148);
INSERT INTO `category` VALUES (1152, '排列三', 1, 1148);
INSERT INTO `category` VALUES (1153, '排列五', 1, 1148);
INSERT INTO `category` VALUES (1154, '七星彩', 1, 1148);
INSERT INTO `category` VALUES (1155, '七乐彩', 1, 1148);
INSERT INTO `category` VALUES (1156, '竞彩足球', 1, 1148);
INSERT INTO `category` VALUES (1157, '竞彩篮球', 1, 1148);
INSERT INTO `category` VALUES (1158, '新时时彩', 1, 1148);
INSERT INTO `category` VALUES (1159, '机票', 1, 1147);
INSERT INTO `category` VALUES (1160, '国内机票', 1, 1159);
INSERT INTO `category` VALUES (1161, '酒店', 1, 1147);
INSERT INTO `category` VALUES (1162, '国内酒店', 1, 1161);
INSERT INTO `category` VALUES (1163, '酒店团购', 1, 1161);
INSERT INTO `category` VALUES (1164, '旅行', 1, 1147);
INSERT INTO `category` VALUES (1165, '度假', 1, 1164);
INSERT INTO `category` VALUES (1166, '景点', 1, 1164);
INSERT INTO `category` VALUES (1167, '租车', 1, 1164);
INSERT INTO `category` VALUES (1168, '火车票', 1, 1164);
INSERT INTO `category` VALUES (1169, '旅游团购', 1, 1164);
INSERT INTO `category` VALUES (1170, '充值', 1, 1147);
INSERT INTO `category` VALUES (1171, '手机充值', 1, 1170);
INSERT INTO `category` VALUES (1172, '游戏', 1, 1147);
INSERT INTO `category` VALUES (1173, '游戏点卡', 1, 1172);
INSERT INTO `category` VALUES (1174, 'QQ充值', 1, 1172);
INSERT INTO `category` VALUES (1175, '票务', 1, 1147);
INSERT INTO `category` VALUES (1176, '电影票', 1, 1175);
INSERT INTO `category` VALUES (1177, '演唱会', 1, 1175);
INSERT INTO `category` VALUES (1178, '话剧歌剧', 1, 1175);
INSERT INTO `category` VALUES (1179, '音乐会', 1, 1175);
INSERT INTO `category` VALUES (1180, '体育赛事', 1, 1175);
INSERT INTO `category` VALUES (1181, '舞蹈芭蕾', 1, 1175);
INSERT INTO `category` VALUES (1182, '戏曲综艺', 1, 1175);
INSERT INTO `category` VALUES (1193, '英文小说', 1, 11);
INSERT INTO `category` VALUES (1194, '火锅涮锅', 1, 718);
INSERT INTO `category` VALUES (1195, '手电筒', 1, 1192);
INSERT INTO `category` VALUES (1196, '照妖镜', 1, 1192);
INSERT INTO `category` VALUES (1198, '蓝宝石', 1, 987);
INSERT INTO `category` VALUES (1199, '电子小说', 1, 2);
INSERT INTO `category` VALUES (1200, '上网本', 1, 162);
INSERT INTO `category` VALUES (1201, '婴儿礼服', 1, 341);
INSERT INTO `category` VALUES (1202, '电子漫画书', 1, 2);
INSERT INTO `category` VALUES (1203, '不移动软盘', 1, 186);
INSERT INTO `category` VALUES (1204, '购机送流量', 1, 562);
INSERT INTO `category` VALUES (1207, '电子教科书', 1, 2);
INSERT INTO `category` VALUES (1208, '儿童电脑', 1, 625);
INSERT INTO `category` VALUES (1213, '测试餐具', 1, 733);
INSERT INTO `category` VALUES (1215, '电子文学', 1, 2);
INSERT INTO `category` VALUES (1216, '电子画报', 101, 2);
INSERT INTO `category` VALUES (11156, '手机配件', 1, 1000);
INSERT INTO `category` VALUES (11157, '教育、培训', 1, 0);
INSERT INTO `category` VALUES (11158, '计算机培训', 1, 11157);
INSERT INTO `category` VALUES (11159, '软件研发', 1, 11158);
INSERT INTO `category` VALUES (11160, '小吃培训', 1, 11157);
INSERT INTO `category` VALUES (11161, '面食/小吃', 1, 11160);
INSERT INTO `category` VALUES (11162, '重庆特色小吃', 1, 11161);
INSERT INTO `category` VALUES (11163, '董秘培训', 1, 11157);
INSERT INTO `category` VALUES (11164, '金融董秘培训', 1, 11163);
INSERT INTO `category` VALUES (11165, '新三板方向', 1, 11163);
INSERT INTO `category` VALUES (11166, '公司融资方向', 1, 11163);
INSERT INTO `category` VALUES (11167, '人工智能', 1, 11158);
INSERT INTO `category` VALUES (11168, '物联网', 1, 11158);
INSERT INTO `category` VALUES (11169, 'Java就业班', 1, 11158);
INSERT INTO `category` VALUES (11170, '大数据', 1, 11158);
INSERT INTO `category` VALUES (11171, 'PHP', 1, 11158);
INSERT INTO `category` VALUES (11172, '嵌入式开发', 1, 11158);
INSERT INTO `category` VALUES (11173, '新媒体', 1, 11158);
INSERT INTO `category` VALUES (11174, '产品经理', 1, 11158);
INSERT INTO `category` VALUES (11175, 'DBA', 1, 11158);
INSERT INTO `category` VALUES (11176, '手机', 1, 559);
INSERT INTO `category` VALUES (11177, '家电', NULL, 0);
INSERT INTO `category` VALUES (11178, 'ces', NULL, NULL);
INSERT INTO `category` VALUES (11179, 'ces', NULL, 0);
INSERT INTO `category` VALUES (11180, 'rr', NULL, NULL);
INSERT INTO `category` VALUES (11181, 'fdf', NULL, NULL);

-- ----------------------------
-- Table structure for category_attribute
-- ----------------------------
DROP TABLE IF EXISTS `category_attribute`;
CREATE TABLE `category_attribute`  (
  `category_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL COMMENT '属性分类表',
  PRIMARY KEY (`category_id`, `attr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_attribute
-- ----------------------------
INSERT INTO `category_attribute` VALUES (11159, 7);
INSERT INTO `category_attribute` VALUES (11159, 10);
INSERT INTO `category_attribute` VALUES (11159, 11);
INSERT INTO `category_attribute` VALUES (11159, 12);
INSERT INTO `category_attribute` VALUES (11161, 6);
INSERT INTO `category_attribute` VALUES (11164, 6);
INSERT INTO `category_attribute` VALUES (11164, 7);
INSERT INTO `category_attribute` VALUES (11164, 8);
INSERT INTO `category_attribute` VALUES (11164, 9);
INSERT INTO `category_attribute` VALUES (11165, 7);
INSERT INTO `category_attribute` VALUES (11165, 8);
INSERT INTO `category_attribute` VALUES (11165, 9);
INSERT INTO `category_attribute` VALUES (11166, 7);
INSERT INTO `category_attribute` VALUES (11166, 8);
INSERT INTO `category_attribute` VALUES (11166, 9);
INSERT INTO `category_attribute` VALUES (11167, 10);
INSERT INTO `category_attribute` VALUES (11167, 11);
INSERT INTO `category_attribute` VALUES (11167, 12);
INSERT INTO `category_attribute` VALUES (11168, 10);
INSERT INTO `category_attribute` VALUES (11168, 11);
INSERT INTO `category_attribute` VALUES (11168, 12);
INSERT INTO `category_attribute` VALUES (11169, 10);
INSERT INTO `category_attribute` VALUES (11169, 12);
INSERT INTO `category_attribute` VALUES (11170, 10);
INSERT INTO `category_attribute` VALUES (11171, 10);
INSERT INTO `category_attribute` VALUES (11172, 10);
INSERT INTO `category_attribute` VALUES (11172, 12);
INSERT INTO `category_attribute` VALUES (11173, 10);
INSERT INTO `category_attribute` VALUES (11173, 12);
INSERT INTO `category_attribute` VALUES (11174, 10);
INSERT INTO `category_attribute` VALUES (11174, 12);
INSERT INTO `category_attribute` VALUES (11175, 10);
INSERT INTO `category_attribute` VALUES (11175, 12);

-- ----------------------------
-- Table structure for category_brand
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand`  (
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `brand_id` int(11) NOT NULL COMMENT '品牌ID',
  PRIMARY KEY (`brand_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand` VALUES (11159, 11);
INSERT INTO `category_brand` VALUES (11167, 11);
INSERT INTO `category_brand` VALUES (11159, 12);
INSERT INTO `category_brand` VALUES (11167, 12);
INSERT INTO `category_brand` VALUES (11159, 13);
INSERT INTO `category_brand` VALUES (11167, 13);
INSERT INTO `category_brand` VALUES (11168, 13);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单id',
  `total_num` int(11) NULL DEFAULT NULL COMMENT '数量合计',
  `moneys` int(11) NULL DEFAULT NULL COMMENT '金额合计',
  `pay_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '支付类型，1、在线支付、0 货到付款',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '订单更新时间',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '交易完成时间',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名称',
  `recipients` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收货人',
  `recipients_mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收货人手机',
  `recipients_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收货人地址',
  `transaction_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '交易流水号',
  `order_status` int(1) NULL DEFAULT NULL COMMENT '订单状态,0:未完成,1:已完成，2：已退货',
  `pay_status` int(1) NULL DEFAULT NULL COMMENT '支付状态,0:未支付，1：已支付，2：支付失败',
  `is_delete` int(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE,
  INDEX `status`(`order_status`) USING BTREE,
  INDEX `payment_type`(`pay_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('No1225871040786337792', 1, 1, '1', '2020-02-07 19:56:46', '2020-02-07 19:56:46', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1226524616630079488', 1, 1, '1', '2020-02-09 15:13:52', '2020-02-09 15:13:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1227116984735502336', 2, 948, '1', '2020-02-11 06:27:44', '2020-02-11 06:27:44', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1230751191722496000', 1, 11, '1', '2020-02-21 07:08:45', '2020-02-21 07:08:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1230751379224662016', 2, 917, '1', '2020-02-21 07:09:30', '2020-02-21 07:09:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1231932798722510848', 1, 11, '1', '2020-02-24 13:24:02', '2020-02-24 13:24:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1232323232770691072', 1, 906, '1', '2020-02-25 15:15:29', '2020-02-25 15:15:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1232580707180744704', 1, 922, '1', '2020-02-26 08:18:36', '2020-02-26 08:18:36', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234357353516765184', 2, 1528, '1', '2020-03-02 05:58:21', '2020-03-02 05:58:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234381150873587712', 1, 906, '1', '2020-03-02 07:32:55', '2020-03-02 07:32:55', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234382397416542208', 1, 1, '1', '2020-03-02 07:37:52', '2020-03-02 07:37:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234486616458924032', 3, 1494, '1', '2020-03-02 14:32:00', '2020-03-02 14:32:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234554958104367104', 1, 1000, '1', '2020-03-02 19:03:34', '2020-03-02 19:03:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234647749690003456', 1, 906, '1', '2020-03-03 01:12:17', '2020-03-03 01:12:17', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1234673528779968512', 1, 906, '1', '2020-03-03 02:54:43', '2020-03-03 02:54:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1235109382916804608', 1, 556, '1', '2020-03-04 07:46:39', '2020-03-04 07:46:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1235913759604740096', 1, 1305, '1', '2020-03-06 13:02:58', '2020-03-06 13:02:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1235917905560997888', 1, 6699, '1', '2020-03-06 13:19:26', '2020-03-06 13:19:26', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1235950721803882496', 3, 3135, '1', '2020-03-06 15:29:50', '2020-03-06 15:29:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1235951783940067328', 1, 2370, '1', '2020-03-06 15:34:03', '2020-03-06 15:34:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236076522545221632', 9, 21330, '1', '2020-03-06 23:49:43', '2020-03-06 23:49:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236078558024175616', 2, 7587, '1', '2020-03-06 23:57:48', '2020-03-06 23:57:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236078953026949120', 1, 3999, '1', '2020-03-06 23:59:22', '2020-03-06 23:59:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236079432649805824', 1, 4199, '1', '2020-03-07 00:01:17', '2020-03-07 00:01:17', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236079487851040768', 1, 636, '1', '2020-03-07 00:01:30', '2020-03-07 00:01:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236080813318213632', 1, 840, '2', '2020-03-07 00:06:46', '2020-03-07 00:06:46', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236109842201055232', 0, 0, '1', '2020-03-07 02:02:07', '2020-03-07 02:02:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236111227990708224', 11, 2145, '2', '2020-03-07 02:07:37', '2020-03-07 02:07:37', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236118433570099200', 3, 11397, '1', '2020-03-07 02:36:15', '2020-03-07 02:36:15', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236121538382663680', 2, 395, '1', '2020-03-07 02:48:35', '2020-03-07 02:48:35', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1236130315035086848', 1, 1049, '1', '2020-03-07 03:23:29', '2020-03-07 03:23:29', '2020-03-07 03:24:46', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000517202003076653805582', 0, 1, 0);
INSERT INTO `order` VALUES ('No1237589061858889728', 1, 299, '1', '2020-03-11 04:00:01', '2020-03-11 04:00:01', '2020-03-11 06:43:05', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000512202003111685024724', 0, 1, 0);
INSERT INTO `order` VALUES ('No1237592895909924864', 1, 2188, '1', '2020-03-11 04:15:14', '2020-03-11 04:15:14', '2020-03-11 06:43:06', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000519202003117359016204', 0, 1, 0);
INSERT INTO `order` VALUES ('No1239438706285350912', 8, 51472, '1', '2020-03-16 06:29:51', '2020-03-16 06:29:51', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1239451190631206912', 1, 2199, '1', '2020-03-16 07:19:26', '2020-03-16 07:19:26', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1239808809833205760', 1, 2699, '1', '2020-03-17 07:00:30', '2020-03-17 07:00:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1239873615625850880', 1, 2699, '1', '2020-03-17 11:18:00', '2020-03-17 11:18:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1240164782942851072', 1, 559, '1', '2020-03-18 06:35:00', '2020-03-18 06:35:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1240190541002575872', 1, 799, '1', '2020-03-18 08:17:21', '2020-03-18 08:17:21', '2020-03-18 08:17:47', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000514202003186341233918', 0, 1, 0);
INSERT INTO `order` VALUES ('No1241998912068390912', 5, 5526, '1', '2020-03-23 08:03:11', '2020-03-23 08:03:11', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1242437956799696896', 1, 559, '1', '2020-03-24 13:07:47', '2020-03-24 13:07:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245155268866740224', 2, 10298, '1', '2020-04-01 01:05:25', '2020-04-01 01:05:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245269039178190848', 4, 11996, '1', '2020-04-01 08:37:30', '2020-04-01 08:37:30', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245904288035770368', 1, 1899, '1', '2020-04-03 02:41:45', '2020-04-03 02:41:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245905285911023616', 1, 1, '1', '2020-04-03 02:45:43', '2020-04-03 02:45:43', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245906684363280384', 2, 2234, '1', '2020-04-03 02:51:16', '2020-04-03 02:51:16', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245917762354810880', 1, 559, '1', '2020-04-03 03:35:17', '2020-04-03 03:35:17', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245918082652835840', 1, 1699, '1', '2020-04-03 03:36:34', '2020-04-03 03:36:34', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245919445331873792', 1, 1349, '1', '2020-04-03 03:41:58', '2020-04-03 03:41:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245921753570611200', 1, 299, '1', '2020-04-03 03:51:09', '2020-04-03 03:51:09', '2020-04-03 03:51:43', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000561202004032143579626', 0, 1, 0);
INSERT INTO `order` VALUES ('No1245934153791311872', 1, 21800, '1', '2020-04-03 04:40:25', '2020-04-03 04:40:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245936294308220928', 1, 3099, '1', '2020-04-03 04:48:56', '2020-04-03 04:48:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245939953007988736', 1, 59, '1', '2020-04-03 05:03:28', '2020-04-03 05:03:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245941892374466560', 1, 549, '2', '2020-04-03 05:11:10', '2020-04-03 05:11:10', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245942041381310464', 4, 15996, '1', '2020-04-03 05:11:46', '2020-04-03 05:11:46', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245942750000582656', 1, 1699, '1', '2020-04-03 05:14:35', '2020-04-03 05:14:35', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245947634028515328', 1, 6988, '1', '2020-04-03 05:33:59', '2020-04-03 05:33:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245948554124595200', 2, 10548, '1', '2020-04-03 05:37:39', '2020-04-03 05:37:39', '2020-04-03 05:38:16', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000567202004031996716221', 0, 1, 0);
INSERT INTO `order` VALUES ('No1245951943206113280', 3, 16243, '2', '2020-04-03 05:51:07', '2020-04-03 05:51:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1245955137923584000', 6, 11994, '2', '2020-04-03 06:03:48', '2020-04-03 06:03:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246004427656138752', 1, 4499, '1', '2020-04-03 09:19:40', '2020-04-03 09:19:40', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246007452672069632', 1, 4849, '1', '2020-04-03 09:31:41', '2020-04-03 09:31:41', '2020-04-03 09:32:08', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000561202004033243688558', 0, 1, 0);
INSERT INTO `order` VALUES ('No1246017338889867264', 1, 4849, '1', '2020-04-03 10:10:58', '2020-04-03 10:10:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246021119635492864', 1, 559, '1', '2020-04-03 10:26:00', '2020-04-03 10:26:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246027409564766208', 1, 195, '1', '2020-04-03 10:50:59', '2020-04-03 10:50:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246034111508910080', 1, 1399, '2', '2020-04-03 11:17:37', '2020-04-03 11:17:37', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246036119942991872', 1, 559, '1', '2020-04-03 11:25:36', '2020-04-03 11:25:36', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246040496401420288', 1, 1998, '1', '2020-04-03 11:42:59', '2020-04-03 11:42:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246042637488754688', 1, 1998, '1', '2020-04-03 11:51:30', '2020-04-03 11:51:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246043795666112512', 2, 1553, '1', '2020-04-03 11:56:06', '2020-04-03 11:56:06', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246044221740290048', 2, 1118, '1', '2020-04-03 11:57:48', '2020-04-03 11:57:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246044233085882368', 1, 1049, '1', '2020-04-03 11:57:50', '2020-04-03 11:57:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246044451428765696', 1, 2698, '1', '2020-04-03 11:58:42', '2020-04-03 11:58:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246059359256055808', 1, 1199, '1', '2020-04-03 12:57:57', '2020-04-03 12:57:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246059636122062848', 2, 10000, '1', '2020-04-03 12:59:03', '2020-04-03 12:59:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246076381570404352', 1, 1899, '1', '2020-04-03 14:05:35', '2020-04-03 14:05:35', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246088025524539392', 1, 4849, '1', '2020-04-03 14:51:51', '2020-04-03 14:51:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246262629828268032', 2, 10548, '1', '2020-04-04 02:25:40', '2020-04-04 02:25:40', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246272755188502528', 1, 329, '1', '2020-04-04 03:05:54', '2020-04-04 03:05:54', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246345586681188352', 3, 14547, '1', '2020-04-04 07:55:19', '2020-04-04 07:55:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246345788276215808', 1, 4849, '1', '2020-04-04 07:56:07', '2020-04-04 07:56:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246352543349608448', 1, 1899, '1', '2020-04-04 08:22:57', '2020-04-04 08:22:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246404188330659840', 2, 9348, '1', '2020-04-04 11:48:10', '2020-04-04 11:48:10', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246737041362915328', 1, 1998, '1', '2020-04-05 09:50:49', '2020-04-05 09:50:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1246993034487402496', 2, 2108, '1', '2020-04-06 02:48:02', '2020-04-06 02:48:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247084652263510016', 1, 1199, '1', '2020-04-06 08:52:06', '2020-04-06 08:52:06', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247123861019955200', 1, 2799, '1', '2020-04-06 11:27:54', '2020-04-06 11:27:54', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247163688901808128', 1, 200, '1', '2020-04-06 14:06:09', '2020-04-06 14:06:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247404184635052032', 1, 5849, '2', '2020-04-07 06:01:48', '2020-04-07 06:01:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247404252687634432', 1, 2699, '1', '2020-04-07 06:02:04', '2020-04-07 06:02:04', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247428601343774720', 2, 2850, '1', '2020-04-07 07:38:49', '2020-04-07 07:38:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247824125720924160', 4, 13839, '1', '2020-04-08 09:50:30', '2020-04-08 09:50:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1247896968840220672', 1, 3490, '1', '2020-04-08 14:39:57', '2020-04-08 14:39:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248059883845193728', 1, 0, '1', '2020-04-09 01:27:19', '2020-04-09 01:27:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248078166371733504', 1, 3099, '1', '2020-04-09 02:39:58', '2020-04-09 02:39:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248146990697680896', 1, 2650, '1', '2020-04-09 07:13:27', '2020-04-09 07:13:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248232049970647040', 1, 1305, '1', '2020-04-09 12:51:26', '2020-04-09 12:51:26', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248427130556125184', 1, 559, '1', '2020-04-10 01:46:37', '2020-04-10 01:46:37', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248427368637403136', 2, 2448, '1', '2020-04-10 01:47:34', '2020-04-10 01:47:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248427369090387968', 0, 0, '1', '2020-04-10 01:47:34', '2020-04-10 01:47:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248428271037714432', 1, 3799, '1', '2020-04-10 01:51:09', '2020-04-10 01:51:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248428474541150208', 1, 3799, '2', '2020-04-10 01:51:58', '2020-04-10 01:51:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248428827235979264', 2, 998, '1', '2020-04-10 01:53:22', '2020-04-10 01:53:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248429090395000832', 1, 2299, '1', '2020-04-10 01:54:25', '2020-04-10 01:54:25', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248429374433267712', 1, 1899, '1', '2020-04-10 01:55:32', '2020-04-10 01:55:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248469878923464704', 1, 2370, '1', '2020-04-10 04:36:29', '2020-04-10 04:36:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248472415114235904', 1, 1998, '1', '2020-04-10 04:46:34', '2020-04-10 04:46:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248509013084213248', 1, 749, '1', '2020-04-10 07:12:00', '2020-04-10 07:12:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248582235297288192', 1, 3799, '1', '2020-04-10 12:02:57', '2020-04-10 12:02:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248621671351455744', 1, 1, '1', '2020-04-10 14:39:39', '2020-04-10 14:39:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248630027436822528', 1, 1699, '1', '2020-04-10 15:12:52', '2020-04-10 15:12:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248648011475718144', 1, 1699, '1', '2020-04-10 16:24:19', '2020-04-10 16:24:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248654864016347136', 1, 2199, '1', '2020-04-10 16:51:33', '2020-04-10 16:51:33', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248817384312147968', 1, 799, '1', '2020-04-11 03:37:21', '2020-04-11 03:37:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248859032811343872', 1, 299, '1', '2020-04-11 06:22:51', '2020-04-11 06:22:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248924827742507008', 1, 2650, '1', '2020-04-11 10:44:18', '2020-04-11 10:44:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248986838698430464', 1, 1699, '1', '2020-04-11 14:50:42', '2020-04-11 14:50:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1248988267454533632', 1, 1998, '1', '2020-04-11 14:56:23', '2020-04-11 14:56:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249218948541583360', 1, 1258, '1', '2020-04-12 06:13:01', '2020-04-12 06:13:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249300797481684992', 1, 2299, '1', '2020-04-12 11:38:16', '2020-04-12 11:38:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249343374448791552', 1, 1909, '1', '2020-04-12 14:27:27', '2020-04-12 14:27:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249378718678388736', 1, 67800, '1', '2020-04-12 16:47:54', '2020-04-12 16:47:54', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249614649045946368', 2, 6598, '1', '2020-04-13 08:25:24', '2020-04-13 08:25:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249644202808184832', 1, 799, '1', '2020-04-13 10:22:50', '2020-04-13 10:22:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1249700664578281472', 1, 364, '1', '2020-04-13 14:07:11', '2020-04-13 14:07:11', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250307913323515904', 1, 799, '1', '2020-04-15 06:20:11', '2020-04-15 06:20:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250330727652921344', 1, 3099, '1', '2020-04-15 07:50:50', '2020-04-15 07:50:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250343897658429440', 1, 799, '1', '2020-04-15 08:43:10', '2020-04-15 08:43:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250346723910488064', 1, 45, '1', '2020-04-15 08:54:24', '2020-04-15 08:54:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250346998394130432', 1, 19888, '1', '2020-04-15 08:55:29', '2020-04-15 08:55:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250400684566777856', 1, 1899, '1', '2020-04-15 12:28:49', '2020-04-15 12:28:49', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250401214043131904', 1, 3839, '2', '2020-04-15 12:30:55', '2020-04-15 12:30:55', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250420842106589184', 1, 4499, '1', '2020-04-15 13:48:55', '2020-04-15 13:48:55', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250666508883988480', 1, 2650, '1', '2020-04-16 06:05:07', '2020-04-16 06:05:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250783254609530880', 1, 18, '1', '2020-04-16 13:49:01', '2020-04-16 13:49:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1250984589527224320', 6, 9880, '1', '2020-04-17 03:09:03', '2020-04-17 03:09:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251047662380257280', 1, 3099, '1', '2020-04-17 07:19:41', '2020-04-17 07:19:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251088343660367872', 15, 32375, '1', '2020-04-17 10:01:20', '2020-04-17 10:01:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251402585596891136', 2, 5897, '2', '2020-04-18 06:50:01', '2020-04-18 06:50:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251423679183720448', 1, 2999, '1', '2020-04-18 08:13:50', '2020-04-18 08:13:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251423901888679936', 1, 13702, '1', '2020-04-18 08:14:43', '2020-04-18 08:14:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251812023474458624', 12, 9016, '1', '2020-04-19 09:56:59', '2020-04-19 09:56:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1251861176640475136', 1, 2188, '2', '2020-04-19 13:12:18', '2020-04-19 13:12:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252070222739935232', 1, 335, '1', '2020-04-20 03:02:58', '2020-04-20 03:02:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252142623393714176', 1, 899, '1', '2020-04-20 07:50:40', '2020-04-20 07:50:40', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252146799930642432', 1, 1, '1', '2020-04-20 08:07:16', '2020-04-20 08:07:16', '2020-04-20 08:07:32', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000563202004209541976283', 0, 1, 0);
INSERT INTO `order` VALUES ('No1252148828241530880', 1, 1, '2', '2020-04-20 08:15:19', '2020-04-20 08:15:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252151651180089344', 13, 1661, '1', '2020-04-20 08:26:32', '2020-04-20 08:26:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252226545909633024', 1, 799, '1', '2020-04-20 13:24:08', '2020-04-20 13:24:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252234422950957056', 1, 1, '1', '2020-04-20 13:55:27', '2020-04-20 13:55:27', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252237956278784000', 2, 1232, '1', '2020-04-20 14:09:29', '2020-04-20 14:09:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252279660448976896', 1, 200, '1', '2020-04-20 16:55:12', '2020-04-20 16:55:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252444551499616256', 1, 799, '1', '2020-04-21 03:50:25', '2020-04-21 03:50:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252547973167058944', 1, 2650, '1', '2020-04-21 10:41:23', '2020-04-21 10:41:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252624445676326912', 1, 3499, '1', '2020-04-21 15:45:15', '2020-04-21 15:45:15', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252684144710914048', 1, 200, '1', '2020-04-21 19:42:29', '2020-04-21 19:42:29', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252745450977628160', 1, 1790, '2', '2020-04-21 23:46:05', '2020-04-21 23:46:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252745683425955840', 1, 4699, '1', '2020-04-21 23:47:00', '2020-04-21 23:47:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252750999085518848', 1, 2650, '1', '2020-04-22 00:08:08', '2020-04-22 00:08:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1252771721753268224', 7, 47593, '1', '2020-04-22 01:30:29', '2020-04-22 01:30:29', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265139089850634240', 3, 27000, '1', '2020-05-26 04:33:59', '2020-05-26 04:33:59', '2020-05-26 04:34:22', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000610202005269174161435', 0, 1, 0);
INSERT INTO `order` VALUES ('No1265141282892812288', 2, 32000, '1', '2020-05-26 04:42:42', '2020-05-26 04:42:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265142539455959040', 2, 20000, '1', '2020-05-26 04:47:41', '2020-05-26 04:47:41', '2020-05-26 04:48:00', NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', '4200000605202005267181887963', 0, 1, 0);
INSERT INTO `order` VALUES ('No1265233382338596864', 1, 1398, '1', '2020-05-26 10:48:40', '2020-05-26 10:48:40', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265282487966371840', 3, 30000, '1', '2020-05-26 14:03:48', '2020-05-26 14:03:48', '2020-05-26 14:04:15', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000607202005261514530529', 0, 1, 0);
INSERT INTO `order` VALUES ('No1265468723624546304', 1, 1398, '1', '2020-05-27 02:23:50', '2020-05-27 02:23:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265574251335913472', 1, 3678, '1', '2020-05-27 09:23:09', '2020-05-27 09:23:09', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265650867978244096', 1, 3999, '1', '2020-05-27 14:27:36', '2020-05-27 14:27:36', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265859092619071488', 1, 2650, '1', '2020-05-28 04:15:01', '2020-05-28 04:15:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265859544538550272', 1, 559, '1', '2020-05-28 04:16:49', '2020-05-28 04:16:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1265940248173613056', 1, 3099, '1', '2020-05-28 09:37:30', '2020-05-28 09:37:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266369388265738240', 4, 10195, '2', '2020-05-29 14:02:45', '2020-05-29 14:02:45', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266369454464438272', 1, 1398, '1', '2020-05-29 14:03:01', '2020-05-29 14:03:01', '2020-05-29 14:03:21', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000610202005295516122697', 0, 1, 0);
INSERT INTO `order` VALUES ('No1266573795003600896', 1, 3099, '1', '2020-05-30 03:34:59', '2020-05-30 03:34:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266665698931904512', 1, 155, '1', '2020-05-30 09:40:11', '2020-05-30 09:40:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266732164075098112', 1, 364, '1', '2020-05-30 14:04:17', '2020-05-30 14:04:17', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266737084719304704', 1, 3199, '1', '2020-05-30 14:23:51', '2020-05-30 14:23:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266771589362487296', 2, 2258, '1', '2020-05-30 16:40:57', '2020-05-30 16:40:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266771701677559808', 0, 0, '1', '2020-05-30 16:41:24', '2020-05-30 16:41:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266909802706112512', 1, 1909, '1', '2020-05-31 01:50:10', '2020-05-31 01:50:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1266924196907323392', 7, 15953, '1', '2020-05-31 02:47:22', '2020-05-31 02:47:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1267000169312948224', 1, 4999, '2', '2020-05-31 07:49:15', '2020-05-31 07:49:15', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1267123014798020608', 1, 2099, '1', '2020-05-31 15:57:23', '2020-05-31 15:57:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1267851876053946368', 1, 1258, '1', '2020-06-02 16:13:38', '2020-06-02 16:13:38', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1268132517333045248', 1, 4499, '1', '2020-06-03 10:48:48', '2020-06-03 10:48:48', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1268517893474226176', 3, 6456, '1', '2020-06-04 12:20:08', '2020-06-04 12:20:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1268518372707012608', 1, 499, '1', '2020-06-04 12:22:03', '2020-06-04 12:22:03', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269447933791703040', 2, 4498, '2', '2020-06-07 01:55:47', '2020-06-07 01:55:47', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269880047607615488', 5, 7015, '1', '2020-06-08 06:32:51', '2020-06-08 06:32:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269880667324420096', 1, 9000, '1', '2020-06-08 06:35:19', '2020-06-08 06:35:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269960125372829696', 2, 1375, '1', '2020-06-08 11:51:03', '2020-06-08 11:51:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269974371762573312', 1, 1699, '2', '2020-06-08 12:47:40', '2020-06-08 12:47:40', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269974488972398592', 3, 9570, '1', '2020-06-08 12:48:08', '2020-06-08 12:48:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269987245021073408', 1, 1998, '2', '2020-06-08 13:38:49', '2020-06-08 13:38:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1269987437858394112', 1, 335, '1', '2020-06-08 13:39:35', '2020-06-08 13:39:35', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1270254567807913984', 2, 5048, '1', '2020-06-09 07:21:04', '2020-06-09 07:21:04', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1270635889244114944', 1, 299, '1', '2020-06-10 08:36:18', '2020-06-10 08:36:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1271637189498900480', 1, 1998, '1', '2020-06-13 02:55:07', '2020-06-13 02:55:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1271720760158851072', 1, 6299, '1', '2020-06-13 08:27:11', '2020-06-13 08:27:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1272011045094952960', 15, 32898, '1', '2020-06-14 03:40:41', '2020-06-14 03:40:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1272068120814686208', 1, 1398, '1', '2020-06-14 07:27:29', '2020-06-14 07:27:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1273193435108610048', 2, 4898, '1', '2020-06-17 09:59:04', '2020-06-17 09:59:04', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1273439992483549184', 1, 11, '1', '2020-06-18 02:18:48', '2020-06-18 02:18:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1273462991127449600', 1, 1398, '1', '2020-06-18 03:50:12', '2020-06-18 03:50:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1273877474857586688', 1, 10000, '1', '2020-06-19 07:17:12', '2020-06-19 07:17:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1273988743652577280', 1, 2650, '1', '2020-06-19 14:39:21', '2020-06-19 14:39:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1274332827416137728', 2, 8498, '1', '2020-06-20 13:26:37', '2020-06-20 13:26:37', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1274524381128822784', 1, 5799, '1', '2020-06-21 02:07:47', '2020-06-21 02:07:47', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1274938552714661888', 1, 1689, '1', '2020-06-22 05:33:33', '2020-06-22 05:33:33', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1275230752698667008', 1, 3999, '1', '2020-06-23 00:54:39', '2020-06-23 00:54:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1275324029242314752', 1, 1899, '1', '2020-06-23 07:05:18', '2020-06-23 07:05:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1275718179049574400', 4, 7574, '1', '2020-06-24 09:11:30', '2020-06-24 09:11:30', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1275783095425044480', 1, 3899, '1', '2020-06-24 13:29:28', '2020-06-24 13:29:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276057002266726400', 2, 280, '1', '2020-06-25 07:37:52', '2020-06-25 07:37:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276143223621947392', 1, 3999, '2', '2020-06-25 13:20:29', '2020-06-25 13:20:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276153091347058688', 1, 1998, '1', '2020-06-25 13:59:41', '2020-06-25 13:59:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276163710490120192', 1, 2299, '1', '2020-06-25 14:41:53', '2020-06-25 14:41:53', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276187555376795648', 4, 8458, '1', '2020-06-25 16:16:38', '2020-06-25 16:16:38', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1276203684031762432', 1, 329, '2', '2020-06-25 17:20:44', '2020-06-25 17:20:44', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1277032203037052928', 1, 299, '1', '2020-06-28 00:12:58', '2020-06-28 00:12:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1277204099921743872', 1, 2099, '1', '2020-06-28 11:36:01', '2020-06-28 11:36:01', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1277608790405025792', 1, 899, '1', '2020-06-29 14:24:07', '2020-06-29 14:24:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1277878238697361408', 1, 3099, '1', '2020-06-30 08:14:49', '2020-06-30 08:14:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1277963954781556736', 7, 7013, '1', '2020-06-30 13:55:25', '2020-06-30 13:55:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278151034178506752', 1, 17, '1', '2020-07-01 02:18:48', '2020-07-01 02:18:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278154089712193536', 1, 5699, '1', '2020-07-01 02:30:57', '2020-07-01 02:30:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278154789192077312', 1, 24, '1', '2020-07-01 02:33:43', '2020-07-01 02:33:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278346906124292096', 3, 7927, '1', '2020-07-01 15:17:08', '2020-07-01 15:17:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278587810256916480', 1, 729, '1', '2020-07-02 07:14:24', '2020-07-02 07:14:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278595583535353856', 4, 19196, '1', '2020-07-02 07:45:17', '2020-07-02 07:45:17', '2020-07-02 07:45:39', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000613202007020518942711', 0, 1, 0);
INSERT INTO `order` VALUES ('No1278595740322631680', 1, 2370, '2', '2020-07-02 07:45:54', '2020-07-02 07:45:54', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1278858197305790464', 1, 19998, '1', '2020-07-03 01:08:49', '2020-07-03 01:08:49', '2020-07-03 01:09:09', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000602202007037410804565', 0, 1, 0);
INSERT INTO `order` VALUES ('No1278861730230964224', 1, 10000, '1', '2020-07-03 01:22:51', '2020-07-03 01:22:51', '2020-07-03 01:23:08', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000611202007038079527787', 0, 1, 0);
INSERT INTO `order` VALUES ('No1279576778389721088', 1, 24, '1', '2020-07-05 00:44:12', '2020-07-05 00:44:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1279588617022476288', 1, 799, '1', '2020-07-05 01:31:15', '2020-07-05 01:31:15', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1279590917443031040', 4, 10796, '1', '2020-07-05 01:40:23', '2020-07-05 01:40:23', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1279786539911614464', 2, 1118, '2', '2020-07-05 14:37:43', '2020-07-05 14:37:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1279786609591586816', 5, 28495, '1', '2020-07-05 14:38:00', '2020-07-05 14:38:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1279970424242966528', 1, 799, '1', '2020-07-06 02:48:25', '2020-07-06 02:48:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1280718196445417472', 2, 27998, '1', '2020-07-08 04:19:47', '2020-07-08 04:19:47', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1280750770563715072', 1, 2699, '1', '2020-07-08 06:29:14', '2020-07-08 06:29:14', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1280752148711346176', 5, 9196, '1', '2020-07-08 06:34:42', '2020-07-08 06:34:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1280755246880133120', 2, 7498, '2', '2020-07-08 06:47:01', '2020-07-08 06:47:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1280755798921842688', 1, 799, '1', '2020-07-08 06:49:12', '2020-07-08 06:49:12', '2020-07-08 06:49:23', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000604202007088869964678', 0, 1, 0);
INSERT INTO `order` VALUES ('No1281056017454600192', 0, 0, '1', '2020-07-09 02:42:10', '2020-07-09 02:42:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281056068138569728', 1, 1, '2', '2020-07-09 02:42:22', '2020-07-09 02:42:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281112631670870016', 3, 9297, '1', '2020-07-09 06:27:08', '2020-07-09 06:27:08', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281138511839367168', 1, 6699, '1', '2020-07-09 08:09:58', '2020-07-09 08:09:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281139621954195456', 1, 3399, '1', '2020-07-09 08:14:23', '2020-07-09 08:14:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281144747691479040', 1, 6699, '1', '2020-07-09 08:34:45', '2020-07-09 08:34:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281493856159928320', 3, 6658, '1', '2020-07-10 07:41:59', '2020-07-10 07:41:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281517894471127040', 1, 2539, '1', '2020-07-10 09:17:30', '2020-07-10 09:17:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1281941360835956736', 1, 2699, '2', '2020-07-11 13:20:13', '2020-07-11 13:20:13', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282117091557773312', 1, 799, '1', '2020-07-12 00:58:30', '2020-07-12 00:58:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282140972951670784', 1, 1862, '1', '2020-07-12 02:33:24', '2020-07-12 02:33:24', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282506539860627456', 2, 1133, '1', '2020-07-13 02:46:02', '2020-07-13 02:46:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282595673484693504', 1, 1, '1', '2020-07-13 08:40:13', '2020-07-13 08:40:13', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282960763392233472', 35, 202965, '2', '2020-07-14 08:50:57', '2020-07-14 08:50:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1282977741662195712', 1, 3199, '2', '2020-07-14 09:58:25', '2020-07-14 09:58:25', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283007509258440704', 1, 1258, '1', '2020-07-14 11:56:42', '2020-07-14 11:56:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283011568820424704', 1, 6699, '1', '2020-07-14 12:12:50', '2020-07-14 12:12:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283322401505021952', 1, 6699, '2', '2020-07-15 08:47:58', '2020-07-15 08:47:58', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283603801118478336', 1, 2699, '1', '2020-07-16 03:26:09', '2020-07-16 03:26:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283948073126596608', 1, 6699, '1', '2020-07-17 02:14:10', '2020-07-17 02:14:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1283998020207251456', 1, 2188, '1', '2020-07-17 05:32:38', '2020-07-17 05:32:38', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1284329628030341120', 1, 6699, '1', '2020-07-18 03:30:20', '2020-07-18 03:30:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1284678323305320448', 3, 600, '1', '2020-07-19 02:35:55', '2020-07-19 02:35:55', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1284679204662808576', 4, 10396, '2', '2020-07-19 02:39:25', '2020-07-19 02:39:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1284796756911067136', 2, 4697, '1', '2020-07-19 10:26:32', '2020-07-19 10:26:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285085865185513472', 1, 3490, '1', '2020-07-20 05:35:21', '2020-07-20 05:35:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285520570351489024', 1, 1998, '1', '2020-07-21 10:22:43', '2020-07-21 10:22:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285739788221157376', 1, 799, '1', '2020-07-22 00:53:48', '2020-07-22 00:53:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285803870567665664', 2, 36, '1', '2020-07-22 05:08:27', '2020-07-22 05:08:27', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285876358601379840', 4, 8396, '1', '2020-07-22 09:56:29', '2020-07-22 09:56:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1285942383367819264', 1, 1049, '1', '2020-07-22 14:18:51', '2020-07-22 14:18:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1286133463262564352', 1, 2188, '1', '2020-07-23 02:58:08', '2020-07-23 02:58:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1286172965783867392', 1, 3099, '1', '2020-07-23 05:35:06', '2020-07-23 05:35:06', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1286192657848209408', 1, 67800, '1', '2020-07-23 06:53:21', '2020-07-23 06:53:21', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1286192723564564480', 0, 0, '1', '2020-07-23 06:53:36', '2020-07-23 06:53:36', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1287586814290432000', 1, 1699, '1', '2020-07-27 03:13:14', '2020-07-27 03:13:14', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1287841315362574336', 1, 548, '1', '2020-07-27 20:04:31', '2020-07-27 20:04:31', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1287989143032434688', 2, 4398, '1', '2020-07-28 05:51:56', '2020-07-28 05:51:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288039479965257728', 2, 12999, '1', '2020-07-28 09:11:57', '2020-07-28 09:11:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288132376106504192', 2, 2128, '1', '2020-07-28 15:21:06', '2020-07-28 15:21:06', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288319603625299968', 2, 6187, '1', '2020-07-29 03:45:04', '2020-07-29 03:45:04', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288366675044995072', 1, 3399, '1', '2020-07-29 06:52:07', '2020-07-29 06:52:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288396797257060352', 1, 17, '1', '2020-07-29 08:51:48', '2020-07-29 08:51:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288436326328307712', 1, 335, '1', '2020-07-29 11:28:53', '2020-07-29 11:28:53', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288484977201254400', 24, 95256, '1', '2020-07-29 14:42:12', '2020-07-29 14:42:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288507028444155904', 1, 799, '1', '2020-07-29 16:09:50', '2020-07-29 16:09:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288643324110049280', 1, 2370, '1', '2020-07-30 01:11:25', '2020-07-30 01:11:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288746008469180416', 1, 799, '1', '2020-07-30 07:59:27', '2020-07-30 07:59:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288760352552652800', 1, 3099, '1', '2020-07-30 08:56:27', '2020-07-30 08:56:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1288774454238908416', 1, 799, '1', '2020-07-30 09:52:29', '2020-07-30 09:52:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1289087511863365632', 1, 3099, '1', '2020-07-31 06:36:28', '2020-07-31 06:36:28', '2020-07-31 06:36:54', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000706202007314161113206', 0, 1, 0);
INSERT INTO `order` VALUES ('No1289582757747494912', 2, 1118, '1', '2020-08-01 15:24:24', '2020-08-01 15:24:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290172630606942208', 1, 5200, '1', '2020-08-03 06:28:20', '2020-08-03 06:28:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290286623904370688', 1, 24, '1', '2020-08-03 14:01:18', '2020-08-03 14:01:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290488350792355840', 1, 8050, '1', '2020-08-04 03:22:54', '2020-08-04 03:22:54', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290536319486922752', 1, 3999, '1', '2020-08-04 06:33:30', '2020-08-04 06:33:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290541706197995520', 2, 3996, '1', '2020-08-04 06:54:55', '2020-08-04 06:54:55', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290584687722500096', 6, 21594, '1', '2020-08-04 09:45:42', '2020-08-04 09:45:42', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290591250864541696', 2, 3868, '1', '2020-08-04 10:11:47', '2020-08-04 10:11:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290657714443259904', 2, 2907, '2', '2020-08-04 14:35:53', '2020-08-04 14:35:53', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290840310854848512', 1, 2699, '1', '2020-08-05 02:41:27', '2020-08-05 02:41:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290909490673225728', 1, 2188, '1', '2020-08-05 07:16:21', '2020-08-05 07:16:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290913210819547136', 1, 1, '2', '2020-08-05 07:31:08', '2020-08-05 07:31:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290921226541338624', 1, 799, '1', '2020-08-05 08:02:59', '2020-08-05 08:02:59', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290921821675327488', 1, 6699, '1', '2020-08-05 08:05:21', '2020-08-05 08:05:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1290922083743830016', 1, 14, '1', '2020-08-05 08:06:24', '2020-08-05 08:06:24', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291165526046937088', 1, 3099, '1', '2020-08-06 00:13:45', '2020-08-06 00:13:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291260628685688832', 3, 10797, '1', '2020-08-06 06:31:39', '2020-08-06 06:31:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291266649533583360', 2, 4158, '1', '2020-08-06 06:55:34', '2020-08-06 06:55:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291627943348539392', 2, 2104, '1', '2020-08-07 06:51:14', '2020-08-07 06:51:14', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291758650452480000', 1, 2699, '1', '2020-08-07 15:30:37', '2020-08-07 15:30:37', '2020-08-07 15:31:01', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000716202008074875769604', 0, 1, 0);
INSERT INTO `order` VALUES ('No1291942945896927232', 1, 2370, '1', '2020-08-08 03:42:56', '2020-08-08 03:42:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291977704236781568', 1, 840, '1', '2020-08-08 06:01:03', '2020-08-08 06:01:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1291985086429925376', 1, 21800, '1', '2020-08-08 06:30:23', '2020-08-08 06:30:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1292026763689463808', 3, 7397, '1', '2020-08-08 09:16:00', '2020-08-08 09:16:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1292028089517346816', 1, 2188, '1', '2020-08-08 09:21:16', '2020-08-08 09:21:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1292753323832774656', 5, 2895, '1', '2020-08-10 09:23:05', '2020-08-10 09:23:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1292772975703101440', 1, 989, '1', '2020-08-10 10:41:11', '2020-08-10 10:41:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293048964987359232', 1, 1699, '1', '2020-08-11 04:57:52', '2020-08-11 04:57:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293091665065676800', 1, 3588, '1', '2020-08-11 07:47:32', '2020-08-11 07:47:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293156743139954688', 1, 799, '1', '2020-08-11 12:06:08', '2020-08-11 12:06:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293368639109599232', 1, 1998, '1', '2020-08-12 02:08:08', '2020-08-12 02:08:08', '2020-08-12 02:08:39', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000709202008127971154298', 0, 1, 0);
INSERT INTO `order` VALUES ('No1293395618571620352', 1, 2188, '1', '2020-08-12 03:55:20', '2020-08-12 03:55:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293429548599349248', 1, 840, '1', '2020-08-12 06:10:10', '2020-08-12 06:10:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1293715647200628736', 3, 3862, '1', '2020-08-13 01:07:01', '2020-08-13 01:07:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294179960793206784', 1, 840, '1', '2020-08-14 07:52:02', '2020-08-14 07:52:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294193713475620864', 1, 2099, '1', '2020-08-14 08:46:41', '2020-08-14 08:46:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294255849824456704', 1, 329, '1', '2020-08-14 12:53:35', '2020-08-14 12:53:35', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294256450884997120', 1, 329, '1', '2020-08-14 12:55:59', '2020-08-14 12:55:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294854800382496768', 1, 2099, '1', '2020-08-16 04:33:36', '2020-08-16 04:33:36', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294912163995062272', 1, 840, '1', '2020-08-16 08:21:33', '2020-08-16 08:21:33', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1294924787352735744', 1, 3588, '1', '2020-08-16 09:11:43', '2020-08-16 09:11:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295241011076927488', 2, 6369, '1', '2020-08-17 06:08:16', '2020-08-17 06:08:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295321076812877824', 2, 4129, '1', '2020-08-17 11:26:25', '2020-08-17 11:26:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295633260486987776', 1, 1699, '1', '2020-08-18 08:06:56', '2020-08-18 08:06:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295658138124554240', 1, 3099, '1', '2020-08-18 09:45:47', '2020-08-18 09:45:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295923603770052608', 1, 799, '1', '2020-08-19 03:20:39', '2020-08-19 03:20:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1295947890769924096', 1, 799, '1', '2020-08-19 04:57:09', '2020-08-19 04:57:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296017734555013120', 1, 799, '1', '2020-08-19 09:34:41', '2020-08-19 09:34:41', '2020-08-19 09:35:09', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000720202008198677565083', 0, 1, 0);
INSERT INTO `order` VALUES ('No1296022186506719232', 1, 329, '1', '2020-08-19 09:52:23', '2020-08-19 09:52:23', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296038967602450432', 1, 3999, '2', '2020-08-19 10:59:04', '2020-08-19 10:59:04', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296059591934742528', 1, 3799, '1', '2020-08-19 12:21:01', '2020-08-19 12:21:01', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296060662660861952', 1, 1, '1', '2020-08-19 12:25:16', '2020-08-19 12:25:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296091913061011456', 9, 4981, '1', '2020-08-19 14:29:27', '2020-08-19 14:29:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296136262830395392', 1, 1862, '1', '2020-08-19 17:25:41', '2020-08-19 17:25:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296450174742302720', 1, 840, '1', '2020-08-20 14:13:03', '2020-08-20 14:13:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296640956736606208', 1, 1699, '1', '2020-08-21 02:51:09', '2020-08-21 02:51:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296700928107352064', 1, 1699, '1', '2020-08-21 06:49:27', '2020-08-21 06:49:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296725692263829504', 1, 3588, '1', '2020-08-21 08:27:52', '2020-08-21 08:27:52', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296813490467639296', 1, 3999, '1', '2020-08-21 14:16:44', '2020-08-21 14:16:44', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296814858825764864', 2, 5798, '1', '2020-08-21 14:22:11', '2020-08-21 14:22:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296816410890211328', 1, 24, '2', '2020-08-21 14:28:21', '2020-08-21 14:28:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296816512820187136', 1, 200, '1', '2020-08-21 14:28:45', '2020-08-21 14:28:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296817998463635456', 1, 1699, '1', '2020-08-21 14:34:39', '2020-08-21 14:34:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296818241737461760', 1, 2799, '1', '2020-08-21 14:35:37', '2020-08-21 14:35:37', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296820438671953920', 1, 499, '1', '2020-08-21 14:44:21', '2020-08-21 14:44:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296820922677858304', 1, 1800, '1', '2020-08-21 14:46:16', '2020-08-21 14:46:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296822234106695680', 1, 799, '1', '2020-08-21 14:51:29', '2020-08-21 14:51:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1296829363869847552', 3, 6277, '1', '2020-08-21 15:19:49', '2020-08-21 15:19:49', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297005081144725504', 1, 3099, '1', '2020-08-22 02:58:03', '2020-08-22 02:58:03', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297059065704353792', 1, 1699, '1', '2020-08-22 06:32:34', '2020-08-22 06:32:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297081229795004416', 1, 3678, '1', '2020-08-22 08:00:38', '2020-08-22 08:00:38', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297093680271855616', 1, 67800, '1', '2020-08-22 08:50:07', '2020-08-22 08:50:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297351598850314240', 1, 2699, '2', '2020-08-23 01:54:59', '2020-08-23 01:54:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297745945768890368', 3, 11297, '1', '2020-08-24 04:01:59', '2020-08-24 04:01:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297745972327223296', 0, 0, '1', '2020-08-24 04:02:05', '2020-08-24 04:02:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297752923140395008', 0, 0, '1', '2020-08-24 04:29:43', '2020-08-24 04:29:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297798555448250368', 1, 1998, '1', '2020-08-24 07:31:02', '2020-08-24 07:31:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1297860596208898048', 1, 4499, '1', '2020-08-24 11:37:34', '2020-08-24 11:37:34', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298164958441377792', 1, 1049, '1', '2020-08-25 07:47:00', '2020-08-25 07:47:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298169581378080768', 1, 2699, '1', '2020-08-25 08:05:22', '2020-08-25 08:05:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298175703459696640', 1, 3799, '1', '2020-08-25 08:29:41', '2020-08-25 08:29:41', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298415106811629568', 1, 2199, '1', '2020-08-26 00:21:00', '2020-08-26 00:21:00', '2020-08-26 00:21:30', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000717202008267830514921', 0, 1, 0);
INSERT INTO `order` VALUES ('No1298456952124346368', 1, 1699, '1', '2020-08-26 03:07:16', '2020-08-26 03:07:16', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298468437739311104', 1, 599, '1', '2020-08-26 03:52:55', '2020-08-26 03:52:55', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298565133957730304', 2, 3697, '1', '2020-08-26 10:17:09', '2020-08-26 10:17:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298796804661448704', 1, 4999, '1', '2020-08-27 01:37:43', '2020-08-27 01:37:43', '2020-08-27 01:39:02', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000715202008279655099442', 0, 1, 0);
INSERT INTO `order` VALUES ('No1298815951810203648', 61, 243939, '2', '2020-08-27 02:53:48', '2020-08-27 02:53:48', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298816088448045056', 22, 264, '2', '2020-08-27 02:54:21', '2020-08-27 02:54:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1298988436170084352', 1, 799, '1', '2020-08-27 14:19:12', '2020-08-27 14:19:12', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299146332996505600', 1, 3099, '1', '2020-08-28 00:46:38', '2020-08-28 00:46:38', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299204994481917952', 1, 1689, '2', '2020-08-28 04:39:43', '2020-08-28 04:39:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299205064816201728', 1, 6799, '1', '2020-08-28 04:40:00', '2020-08-28 04:40:00', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299205206168440832', 0, 0, '1', '2020-08-28 04:40:34', '2020-08-28 04:40:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299205387056189440', 1, 840, '1', '2020-08-28 04:41:17', '2020-08-28 04:41:17', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299281706683076608', 2, 10287, '1', '2020-08-28 09:44:33', '2020-08-28 09:44:33', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299331589452468224', 1, 144, '1', '2020-08-28 13:02:46', '2020-08-28 13:02:46', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299422753547489280', 1, 2499, '1', '2020-08-28 19:05:01', '2020-08-28 19:05:01', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299523526490984448', 1, 1699, '1', '2020-08-29 01:45:27', '2020-08-29 01:45:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299569491390369792', 2, 1710, '1', '2020-08-29 04:48:06', '2020-08-29 04:48:06', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299654644439584768', 1, 1699, '1', '2020-08-29 10:26:28', '2020-08-29 10:26:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299739956339675136', 1, 599, '1', '2020-08-29 16:05:28', '2020-08-29 16:05:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1299934126639550464', 1, 2699, '1', '2020-08-30 04:57:02', '2020-08-30 04:57:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300447973821517824', 1, 8050, '1', '2020-08-31 14:58:53', '2020-08-31 14:58:53', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300592214283522048', 1, 1899, '1', '2020-09-01 00:32:03', '2020-09-01 00:32:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300636945411608576', 1, 799, '2', '2020-09-01 03:29:47', '2020-09-01 03:29:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300648518402314240', 1, 1699, '1', '2020-09-01 04:15:46', '2020-09-01 04:15:46', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300669994241232896', 1, 95, '1', '2020-09-01 05:41:07', '2020-09-01 05:41:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300681826666418176', 1, 3099, '1', '2020-09-01 06:28:08', '2020-09-01 06:28:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300697789667348480', 1, 499, '1', '2020-09-01 07:31:34', '2020-09-01 07:31:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300705073214656512', 1, 2370, '1', '2020-09-01 08:00:30', '2020-09-01 08:00:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300763199406215168', 4, 8, '1', '2020-09-01 11:51:28', '2020-09-01 11:51:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300778810182078464', 1, 2370, '2', '2020-09-01 12:53:30', '2020-09-01 12:53:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1300825124571844608', 1, 799, '1', '2020-09-01 15:57:33', '2020-09-01 15:57:33', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301042134593441792', 2, 34, '1', '2020-09-02 06:19:52', '2020-09-02 06:19:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301076246096121856', 1, 1699, '1', '2020-09-02 08:35:25', '2020-09-02 08:35:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301446487628189696', 4, 7992, '2', '2020-09-03 09:06:37', '2020-09-03 09:06:37', NULL, NULL, NULL, 'szitheima ', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301758758858395648', 2, 68359, '1', '2020-09-04 05:47:28', '2020-09-04 05:47:28', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301759095740698624', 1, 5299, '1', '2020-09-04 05:48:49', '2020-09-04 05:48:49', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301772516569780224', 1, 799, '1', '2020-09-04 06:42:08', '2020-09-04 06:42:08', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301802182257020928', 1, 27, '1', '2020-09-04 08:40:01', '2020-09-04 08:40:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301802197088079872', 1, 1899, '1', '2020-09-04 08:40:05', '2020-09-04 08:40:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301802271381786624', 0, 0, '2', '2020-09-04 08:40:22', '2020-09-04 08:40:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301802438961008640', 1, 2699, '1', '2020-09-04 08:41:02', '2020-09-04 08:41:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301865814110113792', 1, 3099, '1', '2020-09-04 12:52:52', '2020-09-04 12:52:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1301938219973218304', 1, 499, '1', '2020-09-04 17:40:35', '2020-09-04 17:40:35', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302120822252638208', 1, 3099, '1', '2020-09-05 05:46:11', '2020-09-05 05:46:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302161995495247872', 4, 5446, '1', '2020-09-05 08:29:47', '2020-09-05 08:29:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302483055721713664', 2, 4298, '2', '2020-09-06 05:45:34', '2020-09-06 05:45:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302483159245524992', 1, 6699, '2', '2020-09-06 05:45:59', '2020-09-06 05:45:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302514410744582144', 1, 799, '1', '2020-09-06 07:50:10', '2020-09-06 07:50:10', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302562278708744192', 1, 2370, '1', '2020-09-06 11:00:22', '2020-09-06 11:00:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302891257101684736', 3, 6847, '1', '2020-09-07 08:47:37', '2020-09-07 08:47:37', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302939351835086848', 1, 3099, '1', '2020-09-07 11:58:44', '2020-09-07 11:58:44', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1302962299862126592', 1, 3099, '1', '2020-09-07 13:29:55', '2020-09-07 13:29:55', '2020-09-07 13:30:20', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000771202009077280365980', 0, 1, 0);
INSERT INTO `order` VALUES ('No1303157053518385152', 1, 1, '1', '2020-09-08 02:23:48', '2020-09-08 02:23:48', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303225979321323520', 2, 2894, '2', '2020-09-08 06:57:41', '2020-09-08 06:57:41', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303234043000786944', 0, 0, '1', '2020-09-08 07:29:43', '2020-09-08 07:29:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303266207016816640', 3, 4697, '1', '2020-09-08 09:37:32', '2020-09-08 09:37:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303522462364995584', 1, 1699, '2', '2020-09-09 02:35:48', '2020-09-09 02:35:48', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303653768184860672', 5, 24995, '1', '2020-09-09 11:17:34', '2020-09-09 11:17:34', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303654602276737024', 2, 8598, '1', '2020-09-09 11:20:53', '2020-09-09 11:20:53', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303697037287624704', 1, 6066, '1', '2020-09-09 14:09:30', '2020-09-09 14:09:30', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303698586831294464', 0, 0, '1', '2020-09-09 14:15:39', '2020-09-09 14:15:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303698722353451008', 0, 0, '1', '2020-09-09 14:16:12', '2020-09-09 14:16:12', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303698762442608640', 0, 0, '1', '2020-09-09 14:16:21', '2020-09-09 14:16:21', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1303905628942635008', 1, 6699, '1', '2020-09-10 03:58:22', '2020-09-10 03:58:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1304229267609096192', 1, 559, '1', '2020-09-11 01:24:24', '2020-09-11 01:24:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1304231385271242752', 1, 2199, '1', '2020-09-11 01:32:48', '2020-09-11 01:32:48', NULL, NULL, NULL, 'szitheima', NULL, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1304340073147404288', 1, 155, '1', '2020-09-11 08:44:42', '2020-09-11 08:44:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1304945826283524096', 1, 3099, '1', '2020-09-13 00:51:45', '2020-09-13 00:51:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1304991140646359040', 1, 3999, '1', '2020-09-13 03:51:48', '2020-09-13 03:51:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305012481411911680', 1, 799, '1', '2020-09-13 05:16:36', '2020-09-13 05:16:36', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305059100341702656', 1, 799, '1', '2020-09-13 08:21:51', '2020-09-13 08:21:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305068801473253376', 5, 13495, '2', '2020-09-13 09:00:24', '2020-09-13 09:00:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305079451587055616', 2, 2310, '1', '2020-09-13 09:42:43', '2020-09-13 09:42:43', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305301953055690752', 1, 199, '1', '2020-09-14 00:26:52', '2020-09-14 00:26:52', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305313073770401792', 1, 5299, '1', '2020-09-14 01:11:03', '2020-09-14 01:11:03', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305375821984305152', 1, 2999, '1', '2020-09-14 05:20:23', '2020-09-14 05:20:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305376052671025152', 1, 3599, '1', '2020-09-14 05:21:18', '2020-09-14 05:21:18', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305376219004538880', 0, 0, '2', '2020-09-14 05:21:58', '2020-09-14 05:21:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305426186171715584', 1, 1799, '1', '2020-09-14 08:40:31', '2020-09-14 08:40:31', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305436569573920768', 4, 15196, '2', '2020-09-14 09:21:47', '2020-09-14 09:21:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305471422528884736', 1, 6598, '1', '2020-09-14 11:40:16', '2020-09-14 11:40:16', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305472604987068416', 1, 5988, '1', '2020-09-14 11:44:58', '2020-09-14 11:44:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305659052545675264', 1, 2399, '1', '2020-09-15 00:05:51', '2020-09-15 00:05:51', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305797740697096192', 1, 6699, '1', '2020-09-15 09:16:57', '2020-09-15 09:16:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305807144855146496', 1, 6699, '2', '2020-09-15 09:54:19', '2020-09-15 09:54:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1305814157999869952', 1, 199, '1', '2020-09-15 10:22:11', '2020-09-15 10:22:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306009230712639488', 1, 200, '1', '2020-09-15 23:17:20', '2020-09-15 23:17:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306314520741941248', 1, 2370, '1', '2020-09-16 19:30:27', '2020-09-16 19:30:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306410406981537792', 1, 549, '1', '2020-09-17 01:51:28', '2020-09-17 01:51:28', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306522885568991232', 1, 399, '1', '2020-09-17 09:18:25', '2020-09-17 09:18:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306528090075303936', 1, 1099, '2', '2020-09-17 09:39:05', '2020-09-17 09:39:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306547902973349888', 1, 1699, '1', '2020-09-17 10:57:49', '2020-09-17 10:57:49', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306566715169181696', 2, 4798, '1', '2020-09-17 12:12:34', '2020-09-17 12:12:34', '2020-09-17 12:13:41', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000773202009171174818264', 0, 1, 0);
INSERT INTO `order` VALUES ('No1306789947042304000', 1, 9800, '1', '2020-09-18 02:59:37', '2020-09-18 02:59:37', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306814491220119552', 1, 3799, '1', '2020-09-18 04:37:09', '2020-09-18 04:37:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306823614380773376', 1, 1899, '1', '2020-09-18 05:13:24', '2020-09-18 05:13:24', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1306931935188226048', 1, 5200, '1', '2020-09-18 12:23:50', '2020-09-18 12:23:50', '2020-09-18 12:24:33', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000765202009184749822761', 0, 1, 0);
INSERT INTO `order` VALUES ('No1307195092456574976', 1, 799, '1', '2020-09-19 05:49:31', '2020-09-19 05:49:31', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307202995951374336', 1, 1699, '1', '2020-09-19 06:20:56', '2020-09-19 06:20:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307208499662557184', 1, 299, '1', '2020-09-19 06:42:48', '2020-09-19 06:42:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307234902147731456', 1, 2699, '1', '2020-09-19 08:27:43', '2020-09-19 08:27:43', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307244052898516992', 1, 24, '2', '2020-09-19 09:04:04', '2020-09-19 09:04:04', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307612314526158848', 1, 52, '2', '2020-09-20 09:27:25', '2020-09-20 09:27:25', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307612632139829248', 1, 2850, '1', '2020-09-20 09:28:40', '2020-09-20 09:28:40', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307721883919192064', 1, 3799, '1', '2020-09-20 16:42:48', '2020-09-20 16:42:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307896291547811840', 1, 21800, '1', '2020-09-21 04:15:50', '2020-09-21 04:15:50', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307909754449956864', 1, 1998, '2', '2020-09-21 05:09:20', '2020-09-21 05:09:20', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1307984526475137024', 1, 2370, '1', '2020-09-21 10:06:27', '2020-09-21 10:06:27', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308237561344430080', 1, 1699, '1', '2020-09-22 02:51:55', '2020-09-22 02:51:55', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308310799168704512', 1, 3999, '1', '2020-09-22 07:42:56', '2020-09-22 07:42:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308311678659727360', 1, 3099, '1', '2020-09-22 07:46:26', '2020-09-22 07:46:26', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308582435990147072', 1, 699, '1', '2020-09-23 01:42:20', '2020-09-23 01:42:20', '2020-09-23 01:42:38', NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', '4200000770202009232279413316', 0, 1, 0);
INSERT INTO `order` VALUES ('No1308596532114755584', 2, 9398, '2', '2020-09-23 02:38:21', '2020-09-23 02:38:21', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308596745936179200', 1, 3799, '1', '2020-09-23 02:39:11', '2020-09-23 02:39:11', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308698892656840704', 1, 200, '1', '2020-09-23 09:25:05', '2020-09-23 09:25:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308707414631124992', 1, 2370, '1', '2020-09-23 09:58:57', '2020-09-23 09:58:57', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1308967661463539712', 1, 3999, '1', '2020-09-24 03:13:05', '2020-09-24 03:13:05', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309138626432602112', 4, 2726, '1', '2020-09-24 14:32:26', '2020-09-24 14:32:26', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309301071214153728', 2, 3604, '1', '2020-09-25 01:17:56', '2020-09-25 01:17:56', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309337799895420928', 1, 3799, '1', '2020-09-25 03:43:53', '2020-09-25 03:43:53', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309346380694818816', 1, 1699, '1', '2020-09-25 04:17:58', '2020-09-25 04:17:58', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309362564160950272', 1, 1258, '2', '2020-09-25 05:22:17', '2020-09-25 05:22:17', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309362641860431872', 1, 6699, '1', '2020-09-25 05:22:35', '2020-09-25 05:22:35', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309388337529884672', 1, 1699, '1', '2020-09-25 07:04:42', '2020-09-25 07:04:42', '2020-09-25 07:05:28', NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', '4200000764202009257808127902', 0, 1, 0);
INSERT INTO `order` VALUES ('No1309395098647269376', 1, 6699, '1', '2020-09-25 07:31:34', '2020-09-25 07:31:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309464278339817472', 1, 1899, '1', '2020-09-25 12:06:27', '2020-09-25 12:06:27', '2020-09-25 12:08:23', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000754202009252419781602', 0, 1, 0);
INSERT INTO `order` VALUES ('No1309464361596751872', 2, 5398, '1', '2020-09-25 12:06:47', '2020-09-25 12:06:47', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309464617839366144', 1, 1305, '1', '2020-09-25 12:07:48', '2020-09-25 12:07:48', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309468089225711616', 1, 1699, '1', '2020-09-25 12:21:36', '2020-09-25 12:21:36', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309689847920857088', 1, 3099, '1', '2020-09-26 03:02:47', '2020-09-26 03:02:47', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309783016784138240', 1, 1699, '1', '2020-09-26 09:13:00', '2020-09-26 09:13:00', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309825312061788160', 1, 1998, '2', '2020-09-26 12:01:04', '2020-09-26 12:01:04', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1309843667573411840', 1, 799, '1', '2020-09-26 13:14:01', '2020-09-26 13:14:01', '2020-09-26 13:14:47', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000773202009265687847008', 0, 1, 0);
INSERT INTO `order` VALUES ('No1310056850342940672', 12, 80388, '1', '2020-09-27 03:21:08', '2020-09-27 03:21:08', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310168533921042432', 2, 3826, '1', '2020-09-27 10:44:55', '2020-09-27 10:44:55', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310170963261919232', 1, 799, '1', '2020-09-27 10:54:34', '2020-09-27 10:54:34', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310193991895093248', 1, 12222, '1', '2020-09-27 12:26:05', '2020-09-27 12:26:05', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310433086974070784', 1, 299, '1', '2020-09-28 04:16:09', '2020-09-28 04:16:09', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310490003423498240', 1, 7699, '1', '2020-09-28 08:02:19', '2020-09-28 08:02:19', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310494713824022528', 1, 2999, '2', '2020-09-28 08:21:02', '2020-09-28 08:21:02', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310534217402290176', 3, 7403, '1', '2020-09-28 10:58:01', '2020-09-28 10:58:01', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310534629052256256', 1, 2599, '1', '2020-09-28 10:59:39', '2020-09-28 10:59:39', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310743839803314176', 1, 1899, '2', '2020-09-29 00:50:59', '2020-09-29 00:50:59', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1310769273689477120', 1, 3490, '1', '2020-09-29 02:32:02', '2020-09-29 02:32:02', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1311088900130869248', 1, 6699, '1', '2020-09-29 23:42:07', '2020-09-29 23:42:07', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1311128564866879488', 1, 24, '1', '2020-09-30 02:19:44', '2020-09-30 02:19:44', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1311165528710189056', 1, 369, '1', '2020-09-30 04:46:37', '2020-09-30 04:46:37', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1311237034219802624', 1, 799, '1', '2020-09-30 09:30:45', '2020-09-30 09:30:45', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1311242979440201728', 1, 999, '1', '2020-09-30 09:54:23', '2020-09-30 09:54:23', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312189997310414848', 2, 4697, '1', '2020-10-03 00:37:30', '2020-10-03 00:37:30', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312190321706274816', 1, 1049, '2', '2020-10-03 00:38:47', '2020-10-03 00:38:47', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312385533598633984', 2, 3157, '1', '2020-10-03 13:34:29', '2020-10-03 13:34:29', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312654358890024960', 1, 1699, '1', '2020-10-04 07:22:42', '2020-10-04 07:22:42', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312712122660163584', 1, 13, '1', '2020-10-04 11:12:14', '2020-10-04 11:12:14', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1312930414184239104', 1, 6699, '1', '2020-10-05 01:39:39', '2020-10-05 01:39:39', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1313137973864304640', 1, 499, '2', '2020-10-05 15:24:25', '2020-10-05 15:24:25', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1313138216899055616', 1, 1899, '2', '2020-10-05 15:25:23', '2020-10-05 15:25:23', NULL, NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1313281406855680000', 1, 2699, '1', '2020-10-06 00:54:22', '2020-10-06 00:54:22', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1313441731865350144', 50, 179400, '1', '2020-10-06 11:31:26', '2020-10-06 11:31:26', '2020-10-06 11:31:53', NULL, NULL, 'szitheima', '李嘉诚', '13900112222', '深圳中粮', '4200000772202010067180338736', 0, 1, 0);
INSERT INTO `order` VALUES ('No1313463254349123584', 1, 1999, '1', '2020-10-06 12:56:58', '2020-10-06 12:56:58', NULL, NULL, NULL, 'szitheima', '李佳红', '13700221122', '深圳庭威', NULL, 0, 0, 0);
INSERT INTO `order` VALUES ('No1313466168929030144', 1, 799, '1', '2020-10-06 13:08:32', '2020-10-06 13:08:32', NULL, NULL, NULL, 'szitheima', '李佳星', '13301212233', '中腾大厦', NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for order_sku
-- ----------------------------
DROP TABLE IF EXISTS `order_sku`;
CREATE TABLE `order_sku`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `category_one_id` int(11) NULL DEFAULT NULL COMMENT '1级分类',
  `category_two_id` int(11) NULL DEFAULT NULL COMMENT '2级分类',
  `category_three_id` int(11) NULL DEFAULT NULL COMMENT '3级分类',
  `spu_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'SPU_ID',
  `sku_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'SKU_ID',
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单ID',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名称',
  `price` int(20) NULL DEFAULT NULL COMMENT '单价',
  `num` int(10) NULL DEFAULT NULL COMMENT '数量',
  `money` int(20) NULL DEFAULT NULL COMMENT '总金额',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_id`(`sku_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_sku
-- ----------------------------
INSERT INTO `order_sku` VALUES ('No1225871040790532096', 11157, 11158, 11167, 'No1210166544772890624', 'No1210166545448173568', 'No1225871040786337792', 'OpenCV 5G未来市场  框架学习  项目经理  资料', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/wKjThF4EnvOATH-HAAKNVH2qTwU563.jpg');
INSERT INTO `order_sku` VALUES ('No1226524616676216832', 11157, 11158, 11167, 'No1210166544772890624', 'No1210166545448173568', 'No1226524616630079488', 'OpenCV 5G未来市场  框架学习  项目经理  资料', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/wKjThF4EnvOATH-HAAKNVH2qTwU563.jpg');
INSERT INTO `order_sku` VALUES ('No1227116984739696640', 963, 1000, 11156, '1148478020420378624', '1148478020533624832', 'No1227116984735502336', '小米 编牵慢健  5寸  联通2G  红  实施  16G  16G  300万像素', 936, 1, 936, 'http://images-changgou-java.itheima.net/group1/M00/00/00/wKjThF39yUGACN0cAAnAAJuzIB4426.jpg');
INSERT INTO `order_sku` VALUES ('No1227116989030469632', 11157, 11158, 11167, 'No1210166544772890624', 'No1210166545477533696', 'No1227116984735502336', 'OpenCV 5G未来市场  项目实战  项目经理  视频', 12, 1, 12, 'http://images-changgou-java.itheima.net/group1/M00/00/00/wKjThF4EnvOATH-HAAKNVH2qTwU563.jpg');
INSERT INTO `order_sku` VALUES ('No1230751191730884608', 74, 75, 76, '1148477873158365184', '1148477873208696832', 'No1230751191722496000', 'TCL 测试掀暮涩  小影院  20英寸  165', 11, 1, 11, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1230751379228856320', 74, 75, 76, '1148477873158365184', '1148477873208696832', 'No1230751379224662016', 'TCL 测试掀暮涩  小影院  20英寸  165', 11, 1, 11, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1230751379295965184', 74, 75, 76, '1148477873158365184', '1148477873288388608', 'No1230751379224662016', 'TCL 测试掀暮涩  立体声  20英寸  170', 906, 1, 906, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1231932798730899456', 74, 75, 76, '1148477873158365184', '1148477873208696832', 'No1231932798722510848', 'TCL 测试掀暮涩  小影院  20英寸  165', 11, 1, 11, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1232323232774885376', 74, 75, 76, '1148477873158365184', '1148477873288388608', 'No1232323232770691072', 'TCL 测试掀暮涩  立体声  20英寸  170', 906, 1, 906, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1232580707184939008', 161, 162, 163, '1148477874278244352', '1148477881031073792', 'No1232580707180744704', '华为 胀奸  5.5寸  联通2G  紫  学习  16G  16G  300万像素', 922, 1, 922, 'http://img14.360buyimg.com/n0/jfs/t1/90513/39/9039/93114/5e0ab97fE35286917/9502a44635270fac.jpg');
INSERT INTO `order_sku` VALUES ('No1234357353525153792', 74, 75, 76, '1148477873158365184', '1148477873196113920', 'No1234357353516765184', 'TCL 测试掀暮涩  环绕  20英寸  165', 528, 1, 528, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1234357355416784896', 1, 59, 64, '1166560948001964032', '1166565757174153216', 'No1234357353516765184', '华为高档手机全球第一  红色  移动3G', 1000, 1, 1000, 'http://img14.360buyimg.com/n0/jfs/t1/74230/2/2256/259322/5d091dd1Ec77a19b8/b51079da9fdc4a50.jpg');
INSERT INTO `order_sku` VALUES ('No1234381150877782016', 74, 75, 76, '1148477873158365184', '1148477873288388608', 'No1234381150873587712', 'TCL 测试掀暮涩  立体声  20英寸  170', 906, 1, 906, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1234382397433319424', 1031, 1100, 1108, '1148477943362625536', '1148477949691830272', 'No1234382397416542208', '守护宝 窑浦绢  5.5寸  联通2G  白  显示  16G  16G  300万像素', 1, 1, 1, 'http://img14.360buyimg.com/n0/jfs/t3313/76/2055772257/196716/7224aba3/583ff5daN1e5f55ea.jpg');
INSERT INTO `order_sku` VALUES ('No1234486616463118336', 161, 162, 163, '1148477874278244352', '1148477874773172224', 'No1234486616458924032', '华为 胀奸  5寸  联通2G  黑  实施  16G  16G  300万像素', 498, 3, 1494, 'http://img14.360buyimg.com/n0/jfs/t1/90513/39/9039/93114/5e0ab97fE35286917/9502a44635270fac.jpg');
INSERT INTO `order_sku` VALUES ('No1234554958108561408', 1, 59, 64, '1166560948001964032', '1166565757174153216', 'No1234554958104367104', '华为高档手机全球第一  红色  移动3G', 1000, 1, 1000, 'http://img14.360buyimg.com/n0/jfs/t1/74230/2/2256/259322/5d091dd1Ec77a19b8/b51079da9fdc4a50.jpg');
INSERT INTO `order_sku` VALUES ('No1234647749694197760', 74, 75, 76, '1148477873158365184', '1148477873288388608', 'No1234647749690003456', 'TCL 测试掀暮涩  立体声  20英寸  170', 906, 1, 906, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1234673528784162816', 74, 75, 76, '1148477873158365184', '1148477873288388608', 'No1234673528779968512', 'TCL 测试掀暮涩  立体声  20英寸  170', 906, 1, 906, 'http://img14.360buyimg.com/n0/jfs/t1/78982/10/10695/219565/5d81e5a5E193ec3e6/58c5b2e789de5cfa.jpg');
INSERT INTO `order_sku` VALUES ('No1235109382925193216', 74, 75, 76, '1148477873514881024', '1148477873598767104', 'No1235109382916804608', '海尔 涉龟幻  小影院  20英寸  165', 556, 1, 556, 'http://img14.360buyimg.com/n0/jfs/t1/90513/39/9039/93114/5e0ab97fE35286917/9502a44635270fac.jpg');
INSERT INTO `order_sku` VALUES ('No1235913759638294528', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1235913759604740096', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1235917905569386496', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1235917905560997888', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1235950721854214144', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1235950721803882496', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1235950724492431360', 74, 75, 76, 'P1235433012594864128', 'S1235433013303701504', 'No1235950721803882496', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  55英寸  人工智能', 618, 2, 1236, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1235951783944261632', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1235951783940067328', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1236076522561998848', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1236076522545221632', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 9, 21330, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1236078558032564224', 558, 559, 11176, 'P1235513850825031680', 'S1235513851701641216', 'No1236078558024175616', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  4800万', 3588, 1, 3588, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1236078558141616128', 161, 162, 163, 'P1235473556977012736', 'S1235473566456139776', 'No1236078558024175616', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  16英寸  红色  1T机械硬盘  I3  16G  Mac', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1236078953035337728', 161, 162, 163, 'P1235473556977012736', 'S1235473557618741248', 'No1236078953026949120', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  14英寸  红色  260GSSD  I7  8G  Mac', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1236079432654000128', 161, 162, 168, 'P1235479422568587264', 'S1235479423143206912', 'No1236079432649805824', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  红色  260GSSD  I7  8G  Mac', 4199, 1, 4199, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1236079487859429376', 296, 297, 298, 'P1235492494360207360', 'S1235492494670585856', 'No1236079487851040768', '伊利 金领冠系列婴幼儿配方奶粉 金领冠珍护段g  1岁以内  珍珠护3段', 636, 1, 636, 'https://img11.360buyimg.com/n7/jfs/t1/37687/34/9060/199312/5cd12a80E0717e5ab/e8a8288970bcbd0a.jpg');
INSERT INTO `order_sku` VALUES ('No1236080813322407936', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1236080813318213632', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1236111227994902528', 558, 559, 561, 'P1235509464694566912', 'S1235509464870727680', 'No1236111227990708224', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  白色新品  4G信号', 195, 11, 2145, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1236118433704316928', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1236118433570099200', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 3, 11397, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1236121538386857984', 296, 297, 298, 'P1235492494360207360', 'S1235492494976770048', 'No1236121538382663680', '伊利 金领冠系列婴幼儿配方奶粉 金领冠珍护段g  3岁以内  珍珠护2段', 195, 1, 195, 'https://img11.360buyimg.com/n7/jfs/t1/37687/34/9060/199312/5cd12a80E0717e5ab/e8a8288970bcbd0a.jpg');
INSERT INTO `order_sku` VALUES ('No1236121538487521280', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1236121538382663680', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1236130315035086849', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1236130315035086848', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1237589061871472640', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1237589061858889728', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1237592895918313472', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1237592895909924864', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1239438706293739520', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1239438706285350912', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708583829504', 74, 75, 76, 'P1235433012594864128', 'S1235433013584719872', 'No1239438706285350912', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  75英寸  人工智能', 492, 1, 492, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708722241536', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1239438706285350912', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708776767488', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1239438706285350912', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708831293440', 74, 75, 77, 'P1235437257624715264', 'S1235437257930899456', 'No1239438706285350912', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  变频空调  2匹', 19888, 1, 19888, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708894208000', 74, 75, 77, 'P1235437257624715264', 'S1235437257750544384', 'No1239438706285350912', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  高频速冷暖  1匹', 13702, 1, 13702, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1239438708952928256', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1239438706285350912', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1239438709024231424', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1239438706285350912', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1239451190635401216', 558, 559, 11176, 'P1235513850825031680', 'S1235513851974270976', 'No1239451190631206912', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  Android  64G  3600万', 2199, 1, 2199, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1239808809837400064', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1239808809833205760', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1239873615630045184', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1239873615625850880', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1240164782951239680', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1240164782942851072', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1240190541006770176', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1240190541002575872', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1241998912072585216', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1241998912068390912', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1241998912307466240', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1241998912068390912', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1241998912349409280', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1241998912068390912', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1241998912387158016', 74, 89, 93, 'P1235458980021534720', 'S1235458981640536064', 'No1241998912068390912', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  绿色  22L  手动净水', 999, 1, 999, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1241998912441683968', 161, 162, 166, 'P1235477886220128256', 'S1235477892381560832', 'No1241998912068390912', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  1TSSD  I5  16G  Mac', 1299, 1, 1299, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1242437956808085504', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1242437956799696896', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1245155268870934528', 74, 75, 77, 'P1235437257624715264', 'S1235437257805070336', 'No1245155268866740224', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  无氟空调  1匹', 7299, 1, 7299, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1245155269130981376', 161, 162, 163, 'P1235475007161860096', 'S1235475008344653824', 'No1245155268866740224', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1TSSD  I7  8G  Windows', 2999, 1, 2999, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1245269039182385152', 161, 162, 166, 'P1235477886220128256', 'S1235477887310647296', 'No1245269039178190848', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  1TSSD  I7  8G  Mac', 2999, 4, 11996, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1245904288039964672', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1245904288035770368', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1245905285915217920', 1, 18, 20, 'No1242703209699033088', 'SkuNo1242703209715810304', 'No1245905285911023616', '111  抒情  日文  青年', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV56_SaAGqmKAASDeIba6xs432.jpg');
INSERT INTO `order_sku` VALUES ('No1245906684363280385', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1245906684363280384', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1245906684463943680', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1245906684363280384', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1245917762359005184', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1245917762354810880', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1245918082657030144', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1245918082652835840', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1245919445336068096', 558, 559, 11176, 'P1235513850825031680', 'S1235513923134832640', 'No1245919445331873792', '华为Mate 版手机 全网通 亮黑色(+)  全网通  紫色  麒麟820  鸿蒙  64G  3600万', 1349, 1, 1349, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1245921753574805504', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1245921753570611200', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1245934153791311873', 161, 171, 172, 'P1235482128657940480', 'S1235482128917987328', 'No1245934153791311872', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  4核  AMD', 21800, 1, 21800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1245936294308220929', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1245936294308220928', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1245939953012183040', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721686167552', 'No1245939953007988736', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  零基础  网络营销', 59, 1, 59, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1245941892378660864', 558, 559, 11176, 'P1235515015503667200', 'S1235515016095064064', 'No1245941892374466560', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  IOS  64G  4800万', 549, 1, 549, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1245942041385504768', 558, 559, 11176, 'P1235516870275158016', 'S1235516871948685312', 'No1245942041381310464', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  联通3G  红色  麒麟820  IOS  128G  4800万', 3999, 4, 15996, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1245942750004776960', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1245942750000582656', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1245947634028515329', 161, 162, 165, 'P1235475840901414912', 'S1235475842033876992', 'No1245947634028515328', '荣耀笔记本电脑MagicBook Pro 第三方Linux版.全面屏轻薄本（标压锐龙R H G G %sRGB）银  14英寸  红色  260GSSD  I7  32G  Windows', 6988, 1, 6988, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1245948554124595201', 161, 162, 168, 'P1235479422568587264', 'S1235479448678129664', 'No1245948554124595200', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  紫色  1T机械硬盘  I6  16G  Windows', 5699, 1, 5699, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1245948554170732544', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1245948554124595200', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1245951943210307584', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1245951943206113280', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1245951943273222144', 161, 162, 168, 'P1235479422568587264', 'S1235479448086732800', 'No1245951943206113280', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  紫色  1T机械硬盘  I6  8G  Windows', 9099, 1, 9099, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1245951943315165184', 161, 162, 168, 'P1235479422568587264', 'S1235479448908816384', 'No1245951943206113280', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  1TSSD  I6  16G  Windows', 6944, 1, 6944, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1245955137927778304', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1245955137923584000', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 3, 5097, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1245955137973915648', 74, 75, 84, 'P1235451588714201088', 'S1235451589284626432', 'No1245955137923584000', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  60升', 2299, 3, 6897, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1246004427660333056', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1246004427656138752', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246007452676263936', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246007452672069632', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246017338894061568', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246017338889867264', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246021119639687168', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1246021119635492864', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246027409568960512', 558, 559, 561, 'P1235509464694566912', 'S1235509464786841600', 'No1246027409564766208', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  二代黑色  4G信号', 195, 1, 195, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1246034111513104384', 558, 559, 11176, 'P1235515015503667200', 'S1235515062177882112', 'No1246034111508910080', '小米CC手机 仙女渐变色(美图定制版) 全网通+  电信3G  紫色  麒麟820  鸿蒙  64G  5200万', 1399, 1, 1399, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1246036119947186176', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1246036119942991872', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246040496405614592', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1246040496401420288', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1246042637492948992', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1246042637488754688', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1246043795670306816', 749, 750, 757, 'P1235520814560894976', 'S1235520814611226624', 'No1246043795666112512', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  女  少儿  10岁以下', 354, 1, 354, 'https://img13.360buyimg.com/n7/jfs/t1/110023/3/7287/146418/5e58d8fbE5ae44b22/7555cc5a17792ff9.jpg');
INSERT INTO `order_sku` VALUES ('No1246043795716444160', 558, 559, 11176, 'P1235516870275158016', 'S1235516871302762496', 'No1246043795666112512', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  联通3G  蓝色  麒麟820  鸿蒙  64G  4800万', 1199, 1, 1199, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1246044221744484352', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1246044221740290048', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 2, 1118, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246044233085882369', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1246044233085882368', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246044451432960000', 161, 162, 168, 'P1235479422568587264', 'S1235479473013481472', 'No1246044451428765696', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  32G  Windows', 2698, 1, 2698, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246059359260250112', 558, 559, 11176, 'P1235516870275158016', 'S1235516871827050496', 'No1246059359256055808', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  联通3G  素皮色  麒麟820  IOS  64G  3600万', 1199, 1, 1199, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1246059636126257152', 558, 559, 11176, 'No1235630730216288256', 'SkuNo1235630731617185792', 'No1246059636122062848', '荣耀V30 突破性相机矩阵 李现同款  联通5G  素皮色  麒麟990  鸿蒙  512G  5200万', 5000, 2, 10000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV5oj1KAEFALAAzUl92ym78741.png');
INSERT INTO `order_sku` VALUES ('No1246076381574598656', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1246076381570404352', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246088025537122304', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246088025524539392', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246262629832462336', 161, 162, 168, 'P1235479422568587264', 'S1235479448657158144', 'No1246262629828268032', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  紫色  260GSSD  I6  16G  Linux', 5699, 1, 5699, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246262630033788928', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246262629828268032', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246272755188502529', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1246272755188502528', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1246345586702159872', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246345586681188352', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 3, 14547, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246345788280410112', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246345788276215808', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246352543353802752', 161, 162, 166, 'P1235477886220128256', 'S1235477886744416256', 'No1246352543349608448', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Mac', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1246404188334854144', 161, 162, 168, 'P1235479422568587264', 'S1235479448002846720', 'No1246404188330659840', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  紫色  260GSSD  I6  8G  Mac', 4849, 1, 4849, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1246404188557152256', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1246404188330659840', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1246737041367109632', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1246737041362915328', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1246993034491596800', 558, 559, 561, 'P1235509464694566912', 'S1235509464958808064', 'No1246993034487402496', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  1S蓝色  5G信号', 199, 1, 199, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1246993034688729088', 438, 439, 448, 'P1235506636274040832', 'S1235506636743802880', 'No1246993034487402496', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  跨悦CROSSCLIMATE', 1909, 1, 1909, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1247084652267704320', 558, 559, 11176, 'P1235516870275158016', 'S1235516871302762496', 'No1247084652263510016', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  联通3G  蓝色  麒麟820  鸿蒙  64G  4800万', 1199, 1, 1199, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1247123861024149504', 74, 75, 84, 'P1235451588714201088', 'S1235451589175574528', 'No1247123861019955200', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  2500W功耗  光电混用  50升', 2799, 1, 2799, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1247163688906002432', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1247163688901808128', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1247404184672800768', 558, 559, 11176, 'P1235515015503667200', 'S1235515038685585408', 'No1247404184635052032', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通5G  紫色  高通865  IOS  128G  5200万', 5849, 1, 5849, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1247404252716994560', 161, 162, 168, 'P1235479422568587264', 'S1235479447918960640', 'No1247404252687634432', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  紫色  1TSSD  I7  64G  Linux', 2699, 1, 2699, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1247428601347969024', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1247428601343774720', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1247428601545101312', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1247428601343774720', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1247824125720924161', 74, 75, 76, 'P1235433012594864128', 'S1235433013672800256', 'No1247824125720924160', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  75英寸  教育电视', 1842, 1, 1842, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1247824125951610880', 161, 162, 163, 'P1235473556977012736', 'S1235473557807484928', 'No1247824125720924160', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  1T机械硬盘  I7  8G  Linux', 3999, 3, 11997, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1247896968840220673', 74, 75, 77, 'P1235437257624715264', 'S1235437257859596288', 'No1247896968840220672', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  高频速冷暖  1.5匹', 3490, 1, 3490, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1248059883849388032', 1, 2, 3, 'P1235464735172911104', 'S1235464735638478848', 'No1248059883845193728', '新诗“精魂”的追寻：穆旦研究新探  抒情  英文  少儿', 0, 1, 0, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1248078166375927808', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1248078166371733504', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1248146990701875200', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1248146990697680896', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1248232049974841344', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1248232049970647040', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248427130556125185', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1248427130556125184', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1248427368641597440', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1248427368637403136', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1248427368675151872', 558, 559, 11176, 'P1235515015503667200', 'S1235515016095064064', 'No1248427368637403136', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  IOS  64G  4800万', 549, 1, 549, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1248428271037714433', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1248428271037714432', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248428474545344512', 74, 75, 76, 'P1235433012594864128', 'S1235433012947185664', 'No1248428474541150208', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  立体声  65英寸  人工智能', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248428827240173568', 290, 291, 292, 'P1235490123680862208', 'S1235490123785719808', 'No1248428827235979264', '华为（HUAWEI） 华为智能手表 运动蓝牙通话手表 防水长续航播放音乐健康检测男士商务手表 尊享版-钛银灰【稀缺】  攀爬  少儿  支持接听电话', 699, 1, 699, 'https://img13.360buyimg.com/n7/jfs/t1/22776/35/5033/275026/5c38691dE46b3bb7e/b698b3928abb6680.jpg');
INSERT INTO `order_sku` VALUES ('No1248428827290505216', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1248428827235979264', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1248429090399195136', 74, 75, 84, 'P1235451588714201088', 'S1235451590685523968', 'No1248429090395000832', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  25KG  3000W功耗  光电混用  70升', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1248429374437462016', 161, 162, 166, 'P1235477886220128256', 'S1235477886744416256', 'No1248429374433267712', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Mac', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1248469878923464705', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1248469878923464704', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248472415114235905', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1248472415114235904', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1248509013084213249', 558, 559, 11176, 'P1235513850825031680', 'S1235513922866397184', 'No1248509013084213248', '华为Mate 版手机 全网通 亮黑色(+)  全网通  红色  麒麟820  Android  64G  3600万', 749, 1, 749, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1248582235297288193', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1248582235297288192', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248621671355650048', 1, 2, 3, 'No1246082854658064384', 'SkuNo1246082854674841600', 'No1248621671351455744', '手机  散文  青少年', 1, 1, 1, '');
INSERT INTO `order_sku` VALUES ('No1248630027441016832', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1248630027436822528', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1248648011479912448', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1248648011475718144', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1248654864020541440', 558, 559, 11176, 'P1235513850825031680', 'S1235513860849418240', 'No1248654864016347136', '华为Mate 版手机 全网通 亮黑色(+)  联通4G  蓝色  麒麟820  鸿蒙  64G  5200万', 2199, 1, 2199, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1248817384316342272', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1248817384312147968', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1248859032815538176', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1248859032811343872', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1248924827742507009', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1248924827742507008', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1248986838711013376', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1248986838698430464', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1248988267458727936', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1248988267454533632', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1249218948541583361', 161, 162, 166, 'P1235477886220128256', 'S1235477890368294912', 'No1249218948541583360', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  32G  Windows', 1258, 1, 1258, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1249300797481684993', 74, 75, 84, 'P1235451588714201088', 'S1235451589284626432', 'No1249300797481684992', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  60升', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1249343374448791553', 438, 439, 448, 'P1235506636274040832', 'S1235506636743802880', 'No1249343374448791552', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  跨悦CROSSCLIMATE', 1909, 1, 1909, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1249378718682583040', 161, 171, 172, 'P1235482128657940480', 'S1235482128888627200', 'No1249378718678388736', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  4核  Intel', 67800, 1, 67800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1249614649050140672', 161, 162, 168, 'P1235480520834506752', 'S1235480521342017536', 'No1249614649045946368', '惠普（HP）战 商用办公台式电脑主机（九代i- G TB Win Office WiFi蓝牙 四年上门）  17英寸  红色  1TSSD  I7  8G  Mac', 4199, 1, 4199, 'https://img11.360buyimg.com/n7/jfs/t1/99550/18/2024/96355/5dc9429dEe7c4dc99/3ad3e389baea43a3.jpg');
INSERT INTO `order_sku` VALUES ('No1249614649247272960', 74, 75, 79, 'P1235446862337564672', 'S1235446862631165952', 'No1249614649045946368', '【新品】小米（MI） 滚筒洗衣机 全自动公斤大容量变频节能空气互联网洗烘一体机家用迷你脱水机 米家互联网洗烘一体机  自带烘干  1L', 2399, 1, 2399, 'https://img12.360buyimg.com/n7/jfs/t1/61944/9/28/97615/5cd28a7eEf52695d2/1b3391a695e80bb1.jpg');
INSERT INTO `order_sku` VALUES ('No1249644202808184833', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1249644202808184832', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1249700664578281473', 749, 750, 757, 'P1235520814560894976', 'S1235520814590255104', 'No1249700664578281472', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  男  少儿  10岁以下', 364, 1, 364, 'https://img13.360buyimg.com/n7/jfs/t1/110023/3/7287/146418/5e58d8fbE5ae44b22/7555cc5a17792ff9.jpg');
INSERT INTO `order_sku` VALUES ('No1250307913327710208', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1250307913323515904', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1250330727657115648', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1250330727652921344', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1250343897662623744', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1250343897658429440', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1250346723914682368', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721644224512', 'No1250346723910488064', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  零基础  软件编程', 45, 1, 45, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1250346998398324736', 74, 75, 77, 'P1235437257624715264', 'S1235437257930899456', 'No1250346998394130432', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  变频空调  2匹', 19888, 1, 19888, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1250400684570972160', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1250400684566777856', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1250401214043131905', 438, 439, 448, 'P1235506636274040832', 'S1235506636882214912', 'No1250401214043131904', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  SUV越野型  255-45R17  浩悦PRIMACY', 3839, 1, 3839, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1250420842106589185', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1250420842106589184', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1250666508888182784', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1250666508883988480', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1250783254613725184', 1, 2, 3, 'P1235464735172911104', 'S1235464735877554176', 'No1250783254609530880', '新诗“精魂”的追寻：穆旦研究新探  诗歌  中文  少儿', 18, 1, 18, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1250984589527224321', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1250984589527224320', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1250984589745328128', 438, 439, 448, 'P1235506636274040832', 'S1235506636743802880', 'No1250984589527224320', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  跨悦CROSSCLIMATE', 1909, 5, 9545, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1251047662384451584', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1251047662380257280', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1251088343664562176', 558, 559, 11176, 'P1235516870275158016', 'S1235516871168544768', 'No1251088343660367872', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  联通3G  红色  麒麟820  IOS  64G  5200万', 3699, 8, 29592, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1251088343924609024', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1251088343660367872', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 5, 1675, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1251088343958163456', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1251088343660367872', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1251088343995912192', 558, 559, 11176, 'P1235515015503667200', 'S1235515016095064064', 'No1251088343660367872', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  IOS  64G  4800万', 549, 1, 549, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1251402585596891137', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1251402585596891136', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1251402585789829120', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1251402585596891136', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1251423679196303360', 74, 75, 77, 'P1235437257624715264', 'S1235437257884762112', 'No1251423679183720448', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  单冷  1.5匹', 2999, 1, 2999, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1251423901888679937', 74, 75, 77, 'P1235437257624715264', 'S1235437257750544384', 'No1251423901888679936', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  高频速冷暖  1匹', 13702, 1, 13702, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1251812023478652928', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1251812023474458624', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1251812023692562432', 74, 75, 76, 'P1235433012594864128', 'S1235433013945430016', 'No1251812023474458624', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  小影院  65英寸  教育电视', 747, 11, 8217, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1251861176640475137', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1251861176640475136', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1252070222760906752', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1252070222739935232', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1252142623397908480', 558, 559, 11176, 'P1235516870275158016', 'S1235516911660355584', 'No1252142623393714176', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  移动4G  红色  麒麟810  IOS  512G  4800万', 899, 1, 899, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1252146799930642433', 558, 559, 11176, 'No1252144152994988032', 'SkuNo1252144153049513984', 'No1252146799930642432', '小米10pro  全网通', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV6dVbaAbKG-AAAbKIiiDN0608.jpg');
INSERT INTO `order_sku` VALUES ('No1252148828241530881', 558, 559, 11176, 'No1252144152994988032', 'SkuNo1252144153049513984', 'No1252148828241530880', '小米10pro  全网通', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV6dVbaAbKG-AAAbKIiiDN0608.jpg');
INSERT INTO `order_sku` VALUES ('No1252151651184283648', 558, 559, 11176, 'P1235515015503667200', 'S1235515025322532864', 'No1252151651180089344', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通4G  蓝色  麒麟820  Android  64G  3600万', 1649, 1, 1649, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1252151651251392512', 161, 162, 166, 'No1247066500143595520', 'SkuNo1247066500193927168', 'No1252151651180089344', '拼版电脑  15英寸  银白色  1TSSD  I7  64G  Mac', 1, 12, 12, '');
INSERT INTO `order_sku` VALUES ('No1252226545909633025', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1252226545909633024', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1252234422955151360', 11157, 11160, 11161, 'No1247367017939943424', 'SkuNo1247367018007052288', 'No1252234422950957056', '是的发送到  有一定java基础的人  软件编程', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV6L9KqAVGiFAABPBp0alQk916.jpg');
INSERT INTO `order_sku` VALUES ('No1252237956278784001', 438, 439, 448, 'P1235506636274040832', 'S1235506637523943424', 'No1252237956278784000', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  经济耐用型  235-50R18  旅悦PRIMACY', 616, 2, 1232, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1252279660453171200', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1252279660448976896', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1252444551499616257', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1252444551499616256', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1252547973171253248', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1252547973167058944', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1252624445680521216', 558, 559, 11176, 'P1235513850825031680', 'S1235513853295476736', 'No1252624445676326912', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  Android  264G  4800万', 3499, 1, 3499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1252684144715108352', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1252684144710914048', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1252745450981822464', 438, 439, 448, 'P1235506636274040832', 'S1235506636940935168', 'No1252745450977628160', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  SUV越野型  255-45R17  竞驰PILOT', 1790, 1, 1790, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1252745683430150144', 558, 559, 11176, 'P1235513850825031680', 'S1235513926439944192', 'No1252745683425955840', '华为Mate 版手机 全网通 亮黑色(+)  全网通  红色  麒麟990  IOS  512G  5200万', 4699, 1, 4699, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1252750999085518849', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1252750999085518848', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1252771721753268225', 558, 559, 11176, 'P1235515015503667200', 'S1235515025054097408', 'No1252771721753268224', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  素皮色  高通865  鸿蒙  512G  4800万', 6799, 7, 47593, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1265139089854828544', 161, 162, 163, 'No1265137759515394048', 'SkuNo1265137759565725696', 'No1265139089850634240', '华为MateBookPro  红色  I7', 9000, 3, 27000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MmtWATAGnAALRNP_yk0Y979.png');
INSERT INTO `order_sku` VALUES ('No1265141282897006592', 161, 162, 163, 'No1265140799689539584', 'SkuNo1265140799815368704', 'No1265141282892812288', '华为MatePro  蓝色  I5', 16000, 2, 32000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MnbyATPsYAACjkpDBruc333.png');
INSERT INTO `order_sku` VALUES ('No1265142539460153344', 161, 162, 163, 'No1265142197839806464', 'SkuNo1265142197885943808', 'No1265142539455959040', 'ProBook华为  蓝色  I7', 10000, 2, 20000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MnwmACgvzAALRNP_yk0Y868.png');
INSERT INTO `order_sku` VALUES ('No1265233382338596865', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1265233382338596864', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1265282487966371841', 161, 162, 163, 'No1265281961515630592', 'SkuNo1265281961561767936', 'No1265282487966371840', '华为Honor  蓝色  I7', 10000, 3, 30000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7NIS2AXERIAALRNP_yk0Y433.png');
INSERT INTO `order_sku` VALUES ('No1265468723624546305', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1265468723624546304', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1265574251335913473', 558, 559, 11176, 'P1235513850825031680', 'S1235513852288843776', 'No1265574251335913472', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  128G  4800万', 3678, 1, 3678, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1265650867978244097', 558, 559, 11176, 'P1235516870275158016', 'S1235516950507999232', 'No1265650867978244096', '【期免息+碎屏险】OPPO Reno Pro手机新品opporenopro游戏拍照全网通 Reno Pro日出印象(B+B) 全网通【官方标配】  全网通  红色  麒麟820  鸿蒙  512G  5200万', 3999, 1, 3999, 'https://img11.360buyimg.com/n7/jfs/t1/100179/1/13843/97149/5e5f8337Eca047058/15c13a8c007a84de.jpg');
INSERT INTO `order_sku` VALUES ('No1265859092627460096', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1265859092619071488', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1265859544542744576', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1265859544538550272', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1265940248173613057', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1265940248173613056', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1266369388269932544', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1266369388265738240', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1266369388475453440', 558, 559, 11176, 'P1235515015503667200', 'S1235515016967479296', 'No1266369388265738240', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  Android  128G  3600万', 2548, 1, 2548, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1266369388517396480', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1266369388265738240', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1266369388567728128', 558, 559, 11176, 'P1235515015503667200', 'S1235515016095064064', 'No1266369388265738240', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  IOS  64G  4800万', 549, 1, 549, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1266369454468632576', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1266369454464438272', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1266573795007795200', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1266573795003600896', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1266665698936098816', 558, 559, 561, 'P1235509464694566912', 'S1235509464895893504', 'No1266665698931904512', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  白色新品  5G信号', 155, 1, 155, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1266732164075098113', 749, 750, 757, 'P1235520814560894976', 'S1235520814590255104', 'No1266732164075098112', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  男  少儿  10岁以下', 364, 1, 364, 'https://img13.360buyimg.com/n7/jfs/t1/110023/3/7287/146418/5e58d8fbE5ae44b22/7555cc5a17792ff9.jpg');
INSERT INTO `order_sku` VALUES ('No1266737084719304705', 161, 162, 163, 'P1235475007161860096', 'S1235475018348068864', 'No1266737084719304704', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  15英寸  蓝色  260GSSD  I7  8G  Linux', 3199, 1, 3199, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1266771589366681600', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1266771589362487296', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1266771589647699968', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1266771589362487296', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1266909802706112513', 438, 439, 448, 'P1235506636274040832', 'S1235506636743802880', 'No1266909802706112512', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  跨悦CROSSCLIMATE', 1909, 1, 1909, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1266924196911517696', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1266924196907323392', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1266924197129621504', 438, 439, 448, 'P1235506636274040832', 'S1235506636743802880', 'No1266924196907323392', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  跨悦CROSSCLIMATE', 1909, 6, 11454, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1267000169317142528', 161, 162, 163, 'P1235473556977012736', 'S1235473557522272256', 'No1267000169312948224', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  260GSSD  I7  8G  Mac', 4999, 1, 4999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1267123014802214912', 74, 75, 84, 'P1235451588714201088', 'S1235451588844224512', 'No1267123014798020608', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  20KG  2500W功耗  太阳能  50升', 2099, 1, 2099, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1267851876058140672', 161, 162, 166, 'P1235477886220128256', 'S1235477886664724480', 'No1267851876053946368', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Windows', 1258, 1, 1258, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1268132517333045249', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1268132517333045248', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1268517893478420480', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1268517893474226176', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1268517893700718592', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1268517893474226176', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1268517893742661632', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1268517893474226176', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1268518372711206912', 558, 559, 11176, 'P1235513850825031680', 'S1235513880499732480', 'No1268518372707012608', '华为Mate 版手机 全网通 亮黑色(+)  移动3G  蓝色  麒麟810  鸿蒙  64G  4800万', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1269447933791703041', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1269447933791703040', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1269447934064332800', 558, 559, 11176, 'P1235513850825031680', 'S1235513856537673728', 'No1269447933791703040', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟810  IOS  64G  3600万', 1399, 1, 1399, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1269880047611809792', 558, 559, 11176, 'P1235513850825031680', 'S1235513870894776320', 'No1269880047607615488', '华为Mate 版手机 全网通 亮黑色(+)  联通5G  蓝色  麒麟990  鸿蒙  64G  3600万', 1329, 4, 5316, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1269880047829913600', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1269880047607615488', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1269880667324420097', 161, 162, 163, 'No1265137759515394048', 'SkuNo1265137759582502912', 'No1269880667324420096', '华为MateBookPro  紫色  I5', 9000, 1, 9000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MmtWATAGnAALRNP_yk0Y979.png');
INSERT INTO `order_sku` VALUES ('No1269960125377024000', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721623252992', 'No1269960125372829696', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  有一定java基础的人  软件编程', 27, 1, 27, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1269960125582544896', 558, 559, 11176, 'P1235515015503667200', 'S1235515016740986880', 'No1269960125372829696', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  素皮色  麒麟820  IOS  64G  4800万', 1348, 1, 1348, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1269974371762573313', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1269974371762573312', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1269974488972398593', 74, 75, 77, 'P1235437257624715264', 'S1235437257977036800', 'No1269974488972398592', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  单冷  2匹', 3190, 3, 9570, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1269987245025267712', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1269987245021073408', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1269987437858394113', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1269987437858394112', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1270254567807913985', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1270254567807913984', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1270254568017629184', 161, 162, 163, 'P1235473556977012736', 'S1235473557807484928', 'No1270254567807913984', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  1T机械硬盘  I7  8G  Linux', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1270635889244114945', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1270635889244114944', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1271637189503094784', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1271637189498900480', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1271720760158851073', 161, 162, 163, 'P1235473556977012736', 'S1235473603043053568', 'No1271720760158851072', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  黑色  260GSSD  I7  8G  Linux', 6299, 1, 6299, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1272011045099147264', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1272011045094952960', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1272011045317251072', 438, 439, 448, 'P1235506636274040832', 'S1235506637389725696', 'No1272011045094952960', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  经济耐用型  235-50R18  竞驰PILOT', 2250, 14, 31500, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1272068120814686209', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1272068120814686208', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1273193435108610049', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1273193435108610048', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1273193435318325248', 74, 75, 77, 'P1235437257624715264', 'S1235437257884762112', 'No1273193435108610048', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  单冷  1.5匹', 2999, 1, 2999, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1273439992487743488', 1, 2, 3, 'P1235464735172911104', 'S1235464735617507328', 'No1273439992483549184', '新诗“精魂”的追寻：穆旦研究新探  抒情  中文  少儿', 11, 1, 11, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1273462991131643904', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1273462991127449600', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1273877474861780992', 161, 162, 163, 'No1265142197839806464', 'SkuNo1265142197906915328', 'No1273877474857586688', 'ProBook华为  蓝色  I5', 10000, 1, 10000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MnwmACgvzAALRNP_yk0Y868.png');
INSERT INTO `order_sku` VALUES ('No1273988743652577281', 438, 439, 448, 'P1235506636274040832', 'S1235506636508921856', 'No1273988743652577280', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  255-45R17  浩悦PRIMACY', 2650, 1, 2650, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1274332827420332032', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1274332827416137728', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1274332827613270016', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1274332827416137728', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1274524381133017088', 161, 162, 163, 'P1235475007161860096', 'S1235475013042274304', 'No1274524381128822784', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  1T机械硬盘  I5  16G  Windows', 5799, 1, 5799, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1274938552714661889', 558, 559, 11176, 'P1235513850825031680', 'S1235513923159998464', 'No1274938552714661888', '华为Mate 版手机 全网通 亮黑色(+)  全网通  紫色  麒麟820  IOS  64G  5200万', 1689, 1, 1689, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1275230752715444224', 161, 162, 163, 'P1235475007161860096', 'S1235475008466288640', 'No1275230752698667008', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  14英寸  红色  260GSSD  I7  16G  Windows', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1275324029242314753', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1275324029242314752', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1275718179057963008', 749, 750, 757, 'P1235520814560894976', 'S1235520814766415872', 'No1275718179049574400', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  女  青少年  10-30岁之间', 209, 1, 209, 'https://img13.360buyimg.com/n7/jfs/t1/110023/3/7287/146418/5e58d8fbE5ae44b22/7555cc5a17792ff9.jpg');
INSERT INTO `order_sku` VALUES ('No1275718179276066816', 558, 559, 11176, 'P1235513850825031680', 'S1235513852288843776', 'No1275718179049574400', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  128G  4800万', 3678, 1, 3678, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1275718179305426944', 438, 439, 448, 'P1235506636274040832', 'S1235506636714442752', 'No1275718179049574400', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  静音舒适型  235-50R18  跨悦CROSSCLIMATE', 1398, 1, 1398, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1275718179330592768', 438, 439, 448, 'P1235506636274040832', 'S1235506637003849728', 'No1275718179049574400', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  SUV越野型  255-45R17  跨悦CROSSCLIMATE', 2289, 1, 2289, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1275783095429238784', 161, 171, 172, 'P1235482128657940480', 'S1235482129014456320', 'No1275783095425044480', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  16核  Intel', 3899, 1, 3899, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1276057002266726401', 1, 2, 3, 'P1235464735172911104', 'S1235464735617507328', 'No1276057002266726400', '新诗“精魂”的追寻：穆旦研究新探  抒情  中文  少儿', 11, 1, 11, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1276057002476441600', 74, 89, 90, 'P1235454955565899776', 'S1235454956186656768', 'No1276057002266726400', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  冷风  白色  手控', 269, 1, 269, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1276143223626141696', 161, 162, 163, 'P1235473556977012736', 'S1235473557807484928', 'No1276143223621947392', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  1T机械硬盘  I7  8G  Linux', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1276153091347058689', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1276153091347058688', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1276163710490120193', 161, 162, 168, 'P1235480520834506752', 'S1235480521081970688', 'No1276163710490120192', '惠普（HP）战 商用办公台式电脑主机（九代i- G TB Win Office WiFi蓝牙 四年上门）  17英寸  红色  260GSSD  I7  8G  Mac', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/99550/18/2024/96355/5dc9429dEe7c4dc99/3ad3e389baea43a3.jpg');
INSERT INTO `order_sku` VALUES ('No1276187555380989952', 1, 2, 4, 'P1235470486645792768', 'S1235470488575172608', 'No1276187555376795648', '麦肯锡教我的思考武器：从逻辑思考到真正解决问题  生活  西班牙语  老年', 10, 1, 10, 'https://img13.360buyimg.com/n7/jfs/t19186/359/1715107852/327496/f6913cfb/5ad5c18eNe1d37d17.jpg');
INSERT INTO `order_sku` VALUES ('No1276187555620065280', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1276187555376795648', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1276187555649425408', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1276187555376795648', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1276187555682979840', 438, 439, 448, 'P1235506636274040832', 'S1235506637389725696', 'No1276187555376795648', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  经济耐用型  235-50R18  竞驰PILOT', 2250, 1, 2250, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1276203684040151040', 74, 89, 90, 'P1235454955565899776', 'S1235454956132130816', 'No1276203684031762432', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  白色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1277032203041247232', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1277032203037052928', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1277204099921743873', 74, 75, 84, 'P1235451588714201088', 'S1235451590639386624', 'No1277204099921743872', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  光电混用  70升', 2099, 1, 2099, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1277608790409220096', 558, 559, 11176, 'P1235513850825031680', 'S1235513870546649088', 'No1277608790405025792', '华为Mate 版手机 全网通 亮黑色(+)  联通5G  紫色  麒麟820  IOS  512G  5200万', 899, 1, 899, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1277878238705750016', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1277878238697361408', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1277963954785751040', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1277963954781556736', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 3, 5697, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1277963954970300416', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1277963954781556736', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 4, 1316, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1278151034178506753', 1, 2, 4, 'P1235470486645792768', 'S1235470488361263104', 'No1278151034178506752', '麦肯锡教我的思考武器：从逻辑思考到真正解决问题  文言文  英文  青年', 17, 1, 17, 'https://img13.360buyimg.com/n7/jfs/t19186/359/1715107852/327496/f6913cfb/5ad5c18eNe1d37d17.jpg');
INSERT INTO `order_sku` VALUES ('No1278154089712193537', 161, 162, 168, 'P1235479422568587264', 'S1235479439199002624', 'No1278154089712193536', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  15英寸  蓝色  1T机械硬盘  I6  64G  Windows', 5699, 1, 5699, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1278154789196271616', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1278154789192077312', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1278346906128486400', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1278346906124292096', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1278346906317230080', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1278346906124292096', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1278346906346590208', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1278346906124292096', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1278587810256916481', 558, 559, 11176, 'P1235513850825031680', 'S1235513903933308928', 'No1278587810256916480', '华为Mate 版手机 全网通 亮黑色(+)  电信3G  蓝色  麒麟810  IOS  128G  3600万', 729, 1, 729, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1278595583535353857', 161, 162, 168, 'P1235479422568587264', 'S1235479438846681088', 'No1278595583535353856', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  蓝色  1TSSD  I6  32G  Windows', 6299, 1, 6299, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1278595583774429184', 161, 162, 168, 'P1235479422568587264', 'S1235479472027820032', 'No1278595583535353856', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  黑色  1TSSD  I5  64G  Mac', 3899, 1, 3899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1278595583812177920', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1278595583535353856', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1278595583837343744', 161, 162, 168, 'P1235479422568587264', 'S1235479476079517696', 'No1278595583535353856', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  黑色  1TSSD  AMD  64G  Mac', 7099, 1, 7099, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1278595740322631681', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1278595740322631680', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1278858197305790465', 161, 162, 163, 'No1278857905710907392', 'SkuNo1278857905727684608', 'No1278858197305790464', '华为笔记本  红色  I6', 19998, 1, 19998, 'http://images-changgou-java.itheima.net/group1/M00/00/01/rBABRV7-hMqAYTaFAAJIS8BIHnw030.png');
INSERT INTO `order_sku` VALUES ('No1278861730235158528', 161, 162, 163, 'No1278861168191553536', 'SkuNo1278861168204136448', 'No1278861730230964224', '华为笔记本  红色  I5', 10000, 1, 10000, 'http://images-changgou-java.itheima.net/group1/M00/00/01/rBABRV7-h9KAdLXtAAHj9Tg7HIc262.png');
INSERT INTO `order_sku` VALUES ('No1279576778393915392', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1279576778389721088', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1279588617026670592', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1279588617022476288', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1279590917443031041', 161, 162, 168, 'P1235479422568587264', 'S1235479439001870336', 'No1279590917443031040', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  15英寸  蓝色  260GSSD  I6  64G  Windows', 2699, 4, 10796, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1279786539915808768', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1279786539911614464', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 2, 1118, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1279786609595781120', 161, 162, 168, 'P1235479422568587264', 'S1235479439199002624', 'No1279786609591586816', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  15英寸  蓝色  1T机械硬盘  I6  64G  Windows', 5699, 5, 28495, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1279970424247160832', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1279970424242966528', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280718196445417473', 161, 162, 163, 'P1235473556977012736', 'S1235473565483061248', 'No1280718196445417472', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  16英寸  红色  1TSSD  I5  64G  Mac', 13999, 2, 27998, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1280750770567909376', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1280750770563715072', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280752148715540480', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1280752148711346176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280752148757483520', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1280752148711346176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280752148791037952', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1280752148711346176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280752148828786688', 74, 75, 79, 'P1235446862337564672', 'S1235446862509531136', 'No1280752148711346176', '【新品】小米（MI） 滚筒洗衣机 全自动公斤大容量变频节能空气互联网洗烘一体机家用迷你脱水机 米家互联网洗烘一体机  全自动  10L', 1699, 1, 1699, 'https://img12.360buyimg.com/n7/jfs/t1/61944/9/28/97615/5cd28a7eEf52695d2/1b3391a695e80bb1.jpg');
INSERT INTO `order_sku` VALUES ('No1280752148849758208', 74, 75, 76, 'P1235433012594864128', 'S1235433013609885696', 'No1280752148711346176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  75英寸  人工智能', 2982, 1, 2982, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280755246884327424', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1280755246880133120', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280755246938853376', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1280755246880133120', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1280755798921842689', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1280755798921842688', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1281056068146958336', 1, 2, 3, 'No1281055629269020672', 'SkuNo1281055629294186496', 'No1281056068138569728', 'java讲义test  科技  中文  青少年', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/01/rBABRV8Gg4SAC0PBAAimilUapv8560.png');
INSERT INTO `order_sku` VALUES ('No1281112631670870017', 161, 162, 163, 'P1235475007161860096', 'S1235475013914689536', 'No1281112631670870016', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1TSSD  I5  32G  Windows', 3099, 3, 9297, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1281138511843561472', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1281138511839367168', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1281139621954195457', 161, 162, 168, 'P1235479422568587264', 'S1235479423428419584', 'No1281139621954195456', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  红色  1T机械硬盘  I7  8G  Mac', 3399, 1, 3399, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1281144747691479041', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1281144747691479040', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1281493856164122624', 558, 559, 11176, 'No1235630730216288256', 'SkuNo1235630735106846720', 'No1281493856159928320', '荣耀V30 突破性相机矩阵 李现同款  移动5G  素皮色  麒麟990  鸿蒙  512G  5200万', 5200, 1, 5200, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV5oj1KAEFALAAzUl92ym78741.png');
INSERT INTO `order_sku` VALUES ('No1281493856352866304', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1281493856159928320', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1281493856394809344', 558, 559, 11176, 'P1235513850825031680', 'S1235513854264360960', 'No1281493856159928320', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟990  鸿蒙  64G  4800万', 899, 1, 899, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1281517894471127041', 558, 559, 11176, 'P1235515015503667200', 'S1235515087138185216', 'No1281517894471127040', '小米CC手机 仙女渐变色(美图定制版) 全网通+  全网通  素皮色  麒麟990  鸿蒙  264G  4800万', 2539, 1, 2539, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1281941360835956737', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1281941360835956736', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1282117091557773313', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1282117091557773312', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1282140972960059392', 74, 75, 76, 'P1235433012594864128', 'S1235433013551165440', 'No1282140972951670784', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  75英寸  人工智能', 1862, 1, 1862, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1282506539860627457', 558, 559, 11176, 'P1235515015503667200', 'S1235515016619352064', 'No1282506539860627456', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  紫色  麒麟820  IOS  64G  3600万', 938, 1, 938, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1282506540179394560', 558, 559, 561, 'P1235509464694566912', 'S1235509464786841600', 'No1282506539860627456', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  二代黑色  4G信号', 195, 1, 195, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1282595673488887808', 290, 291, 292, 'No1276177373176872960', 'SkuNo1276177373223010304', 'No1282595673484693504', '奢侈名表  男  10-30岁之间', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV70xFeALpFWAAA2M5KUQoQ680.png');
INSERT INTO `order_sku` VALUES ('No1282960763396427776', 161, 162, 163, 'P1235475007161860096', 'S1235475048953905152', 'No1282960763392233472', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  黑色  1TSSD  I7  64G  Mac', 5799, 35, 202965, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1282977741662195713', 161, 162, 168, 'P1235479422568587264', 'S1235479429166227456', 'No1282977741662195712', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  红色  1T机械硬盘  I5  16G  Windows', 3199, 1, 3199, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1283007509258440705', 161, 162, 166, 'P1235477886220128256', 'S1235477890368294912', 'No1283007509258440704', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  32G  Windows', 1258, 1, 1258, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1283011568824619008', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1283011568820424704', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1283322401505021953', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1283322401505021952', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1283603801118478337', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1283603801118478336', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1283948073126596609', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1283948073126596608', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1283998020211445760', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1283998020207251456', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1284329628030341121', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1284329628030341120', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1284678323309514752', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1284678323305320448', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 3, 600, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1284679204662808577', 161, 162, 166, 'P1235477886220128256', 'S1235477909079085056', 'No1284679204662808576', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  紫色  1TSSD  I7  8G  Mac', 2599, 4, 10396, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1284796756915261440', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1284796756911067136', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1284796757200474112', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1284796756911067136', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1285085865189707776', 74, 75, 77, 'P1235437257624715264', 'S1235437257859596288', 'No1285085865185513472', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  高频速冷暖  1.5匹', 3490, 1, 3490, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1285520570351489025', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1285520570351489024', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1285739788221157377', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1285739788221157376', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1285803870567665665', 1, 2, 3, 'P1235464735172911104', 'S1235464737161011200', 'No1285803870567665664', '新诗“精魂”的追寻：穆旦研究新探  散文  日文  青年', 18, 2, 36, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1285876358605574144', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1285876358601379840', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 3, 8097, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1285876358802706432', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1285876358601379840', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1285942383367819265', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1285942383367819264', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1286133463266758656', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1286133463262564352', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1286172965783867393', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1286172965783867392', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1286192657852403712', 161, 171, 172, 'P1235482128657940480', 'S1235482128754409472', 'No1286192657848209408', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  双核  Intel', 67800, 1, 67800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1287586814298820608', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1287586814290432000', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1287841315366768640', 558, 559, 11176, 'P1235515015503667200', 'S1235515090762063872', 'No1287841315362574336', '小米CC手机 仙女渐变色(美图定制版) 全网通+  全网通  蓝色  高通865  IOS  264G  3600万', 548, 1, 548, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1287989143032434689', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1287989143032434688', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1287989143275704320', 74, 75, 79, 'P1235446862337564672', 'S1235446862509531136', 'No1287989143032434688', '【新品】小米（MI） 滚筒洗衣机 全自动公斤大容量变频节能空气互联网洗烘一体机家用迷你脱水机 米家互联网洗烘一体机  全自动  10L', 1699, 1, 1699, 'https://img12.360buyimg.com/n7/jfs/t1/61944/9/28/97615/5cd28a7eEf52695d2/1b3391a695e80bb1.jpg');
INSERT INTO `order_sku` VALUES ('No1288039479973646336', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1288039479965257728', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1288039480162390016', 161, 162, 163, 'No1265137759515394048', 'SkuNo1265137759565725696', 'No1288039479965257728', '华为MateBookPro  红色  I7', 9000, 1, 9000, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7MmtWATAGnAALRNP_yk0Y979.png');
INSERT INTO `order_sku` VALUES ('No1288132376106504193', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1288132376106504192', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288132376312025088', 558, 559, 11176, 'P1235513850825031680', 'S1235513851399651328', 'No1288132376106504192', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  Android  64G  4800万', 1329, 1, 1329, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1288319603625299969', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1288319603625299968', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1288319603809849344', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1288319603625299968', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1288366675049189376', 161, 162, 168, 'P1235479422568587264', 'S1235479423428419584', 'No1288366675044995072', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  14英寸  红色  1T机械硬盘  I7  8G  Mac', 3399, 1, 3399, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1288396797261254656', 1, 2, 4, 'P1235470486645792768', 'S1235470488361263104', 'No1288396797257060352', '麦肯锡教我的思考武器：从逻辑思考到真正解决问题  文言文  英文  青年', 17, 1, 17, 'https://img13.360buyimg.com/n7/jfs/t19186/359/1715107852/327496/f6913cfb/5ad5c18eNe1d37d17.jpg');
INSERT INTO `order_sku` VALUES ('No1288436326328307713', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1288436326328307712', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1288484977201254401', 74, 75, 76, 'P1235433012594864128', 'S1235433013484056576', 'No1288484977201254400', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  65英寸  教育电视', 1239, 12, 14868, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288484977385803776', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1288484977201254400', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 12, 80388, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288507028448350208', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1288507028444155904', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288643324110049281', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1288643324110049280', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288746008469180417', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1288746008469180416', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1288760352556847104', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1288760352552652800', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1288774454238908417', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1288774454238908416', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1289087511863365633', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1289087511863365632', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1289582757747494913', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1289582757747494912', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 2, 1118, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1290172630611136512', 558, 559, 11176, 'No1235630730216288256', 'SkuNo1235630735106846720', 'No1290172630606942208', '荣耀V30 突破性相机矩阵 李现同款  移动5G  素皮色  麒麟990  鸿蒙  512G  5200万', 5200, 1, 5200, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV5oj1KAEFALAAzUl92ym78741.png');
INSERT INTO `order_sku` VALUES ('No1290286623908564992', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1290286623904370688', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1290488350796550144', 161, 162, 163, 'No1265128852306870272', 'SkuNo1265128852353007616', 'No1290488350792355840', '华为MateBook  蓝色  I7', 8050, 1, 8050, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7Mko2APyuFAAL3y5V_FdE434.png');
INSERT INTO `order_sku` VALUES ('No1290536319491117056', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1290536319486922752', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1290541706197995521', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1290541706197995520', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 2, 3996, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1290584687726694400', 161, 162, 163, 'P1235475007161860096', 'S1235475008113967104', 'No1290584687722500096', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1T机械硬盘  I7  8G  Windows', 3599, 6, 21594, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1290591250864541697', 161, 162, 163, 'P1235475007161860096', 'S1235475008113967104', 'No1290591250864541696', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1T机械硬盘  I7  8G  Windows', 3599, 1, 3599, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1290591250919067648', 74, 89, 90, 'P1235454955565899776', 'S1235454956186656768', 'No1290591250864541696', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  冷风  白色  手控', 269, 1, 269, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1290657714443259905', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1290657714443259904', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1290657714623614976', 749, 750, 757, 'P1235520814560894976', 'S1235520814925799424', 'No1290657714443259904', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  女  青年  30岁以上', 208, 1, 208, 'https://img12.360buyimg.com/n7/jfs/t1/97819/25/13417/180594/5e5a21ecE00c28ffd/6a633663baa4a537.jpg');
INSERT INTO `order_sku` VALUES ('No1290840310859042816', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1290840310854848512', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1290909490677420032', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1290909490673225728', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1290913210819547137', 558, 559, 11176, 'No1290912309465071616', 'SkuNo1290912309502820352', 'No1290913210819547136', 'test  移动5G  紫色  麒麟990  鸿蒙  512G  4800万', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/01/rBABRV8qXymAOXS6AAPd3EBHARk520.jpg');
INSERT INTO `order_sku` VALUES ('No1290921226541338625', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1290921226541338624', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1290921821675327489', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1290921821675327488', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1290922083743830017', 1, 2, 3, 'P1235464735172911104', 'S1235464737613996032', 'No1290922083743830016', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  老年', 14, 1, 14, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1291165526051131392', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1291165526046937088', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1291260628689883136', 161, 162, 163, 'P1235475007161860096', 'S1235475008113967104', 'No1291260628685688832', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1T机械硬盘  I7  8G  Windows', 3599, 3, 10797, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1291266649533583361', 161, 162, 163, 'P1235475007161860096', 'S1235475008113967104', 'No1291266649533583360', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1T机械硬盘  I7  8G  Windows', 3599, 1, 3599, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1291266649583915008', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1291266649533583360', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1291627943348539393', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1291627943348539392', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1291627943554060288', 74, 75, 76, 'P1235433012594864128', 'S1235433013874126848', 'No1291627943348539392', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1291758650452480001', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1291758650452480000', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1291942945901121536', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1291942945896927232', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1291977704240975872', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1291977704236781568', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1291985086438313984', 161, 171, 172, 'P1235482128657940480', 'S1235482128917987328', 'No1291985086429925376', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  4核  AMD', 21800, 1, 21800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1292026763689463809', 161, 162, 163, 'P1235473556977012736', 'S1235473557522272256', 'No1292026763689463808', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  260GSSD  I7  8G  Mac', 4999, 1, 4999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1292026763874013184', 74, 75, 84, 'P1235451588714201088', 'S1235451588844224512', 'No1292026763689463808', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  20KG  2500W功耗  太阳能  50升', 2099, 1, 2099, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1292026763907567616', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1292026763689463808', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1292028089517346817', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1292028089517346816', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1292753323836968960', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1292753323832774656', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1292753324071849984', 749, 750, 757, 'P1235520814560894976', 'S1235520814909022208', 'No1292753323832774656', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  男  青年  30岁以上', 299, 4, 1196, 'https://img12.360buyimg.com/n7/jfs/t1/97819/25/13417/180594/5e5a21ecE00c28ffd/6a633663baa4a537.jpg');
INSERT INTO `order_sku` VALUES ('No1292772975703101441', 74, 75, 84, 'P1235451588714201088', 'S1235451589477564416', 'No1292772975703101440', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  20KG  3000W功耗  电热水器  60升', 989, 1, 989, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1293048964987359233', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1293048964987359232', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1293091665065676801', 558, 559, 11176, 'P1235513850825031680', 'S1235513851701641216', 'No1293091665065676800', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  4800万', 3588, 1, 3588, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1293156743144148992', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1293156743139954688', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1293368639109599233', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1293368639109599232', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1293395618571620353', 558, 559, 11176, 'P1235513850825031680', 'S1235513854037868544', 'No1293395618571620352', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  紫色  麒麟820  IOS  512G  5200万', 2188, 1, 2188, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1293429548603543552', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1293429548599349248', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1293715647204823040', 749, 750, 757, 'P1235520814560894976', 'S1235520814590255104', 'No1293715647200628736', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  男  少儿  10岁以下', 364, 1, 364, 'https://img12.360buyimg.com/n7/jfs/t1/97819/25/13417/180594/5e5a21ecE00c28ffd/6a633663baa4a537.jpg');
INSERT INTO `order_sku` VALUES ('No1293715647645224960', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1293715647200628736', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1293715647678779392', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1293715647200628736', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1294179960793206785', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1294179960793206784', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1294193713475620865', 74, 75, 84, 'P1235451588714201088', 'S1235451588844224512', 'No1294193713475620864', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  20KG  2500W功耗  太阳能  50升', 2099, 1, 2099, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1294255849824456705', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1294255849824456704', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1294256450889191424', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1294256450884997120', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1294854800382496769', 74, 75, 84, 'P1235451588714201088', 'S1235451588844224512', 'No1294854800382496768', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  20KG  2500W功耗  太阳能  50升', 2099, 1, 2099, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1294912163995062273', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1294912163995062272', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1294924787352735745', 558, 559, 11176, 'P1235513850825031680', 'S1235513851701641216', 'No1294924787352735744', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  4800万', 3588, 1, 3588, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1295241011081121792', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1295241011076927488', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1295241011412471808', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1295241011076927488', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1295321076812877825', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1295321076812877824', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1295321076997427200', 74, 75, 79, 'P1235446862337564672', 'S1235446862480171008', 'No1295321076812877824', '【新品】小米（MI） 滚筒洗衣机 全自动公斤大容量变频节能空气互联网洗烘一体机家用迷你脱水机 米家互联网洗烘一体机  全自动  5L', 3289, 1, 3289, 'https://img12.360buyimg.com/n7/jfs/t1/61944/9/28/97615/5cd28a7eEf52695d2/1b3391a695e80bb1.jpg');
INSERT INTO `order_sku` VALUES ('No1295633260491182080', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1295633260486987776', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1295658138128748544', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1295658138124554240', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1295923603774246912', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1295923603770052608', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1295947890774118400', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1295947890769924096', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296017734559207424', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1296017734555013120', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296022186506719233', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1296022186506719232', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1296038967602450433', 161, 162, 163, 'P1235473556977012736', 'S1235473557807484928', 'No1296038967602450432', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  1T机械硬盘  I7  8G  Linux', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1296059591938936832', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1296059591934742528', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296060662660861953', 1, 2, 3, 'No1277229838232010752', 'SkuNo1277229838278148096', 'No1296060662660861952', '文学书籍  中文  青少年', 1, 1, 1, '');
INSERT INTO `order_sku` VALUES ('No1296091913065205760', 1, 2, 3, 'P1235464735172911104', 'S1235464736104046592', 'No1296091913061011456', '新诗“精魂”的追寻：穆旦研究新探  科技  中文  青少年', 11, 1, 11, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913253949440', 1, 2, 3, 'P1235464735172911104', 'S1235464736460562432', 'No1296091913061011456', '新诗“精魂”的追寻：穆旦研究新探  散文  中文  青少年', 17, 1, 17, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913283309568', 74, 126, 130, 'P1235462219177697280', 'S1235462219517435904', 'No1296091913061011456', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级暖风  150W', 335, 1, 335, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913304281088', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1296091913061011456', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913333641216', 1, 2, 3, 'P1235464735172911104', 'S1235464736334733312', 'No1296091913061011456', '新诗“精魂”的追寻：穆旦研究新探  抒情  中文  青少年', 9, 1, 9, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913354612736', 1, 2, 3, 'P1235464735172911104', 'S1235464736594780160', 'No1296091913061011456', '新诗“精魂”的追寻：穆旦研究新探  诗歌  中文  青少年', 0, 1, 0, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913438498816', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1296091913061011456', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296091913463664640', 1, 2, 3, 'No1277229838232010752', 'SkuNo1277229838278148096', 'No1296091913061011456', '文学书籍  中文  青少年', 1, 1, 1, '');
INSERT INTO `order_sku` VALUES ('No1296091913484636160', 1, 2, 3, 'P1235464735172911104', 'S1235464736699637760', 'No1296091913061011456', '新诗“精魂”的追寻：穆旦研究新探  文言文  中文  青少年', 10, 1, 10, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296136262830395393', 74, 75, 76, 'P1235433012594864128', 'S1235433013551165440', 'No1296136262830395392', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  75英寸  人工智能', 1862, 1, 1862, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296450174742302721', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1296450174742302720', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296640956740800512', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1296640956736606208', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1296700928107352065', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1296700928107352064', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1296725692263829505', 558, 559, 11176, 'P1235513850825031680', 'S1235513851701641216', 'No1296725692263829504', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  4800万', 3588, 1, 3588, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1296813490467639297', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791543373824', 'No1296813490467639296', '华为智慧屏 V65（星际黑）升降式AI摄像头  宽带  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1296814858829959168', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1296814858825764864', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296814858867707904', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1296814858825764864', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1296816410890211329', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1296816410890211328', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296816512824381440', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1296816512820187136', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1296817998463635457', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1296817998463635456', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1296818241741656064', 161, 162, 166, 'P1235477886220128256', 'S1235477887461642240', 'No1296818241737461760', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  16G  Windows', 2799, 1, 2799, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1296820438671953921', 74, 89, 93, 'P1235458980021534720', 'S1235458981023973376', 'No1296820438671953920', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  银白色  5L  抑菌装置净水', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1296820922682052608', 74, 75, 76, 'P1235433012594864128', 'S1235433013421142016', 'No1296820922677858304', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  65英寸  人工智能', 1800, 1, 1800, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296822234106695681', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1296822234106695680', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296829363869847553', 74, 75, 76, 'P1235433012594864128', 'S1235433013354033152', 'No1296829363869847552', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  55英寸  教育电视', 1989, 2, 3978, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1296829363924373504', 74, 75, 84, 'P1235451588714201088', 'S1235451589284626432', 'No1296829363869847552', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  60升', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1297005081144725505', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1297005081144725504', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1297059065704353793', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1297059065704353792', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1297081229795004417', 558, 559, 11176, 'P1235513850825031680', 'S1235513852288843776', 'No1297081229795004416', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  128G  4800万', 3678, 1, 3678, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1297093680276049920', 161, 171, 172, 'P1235482128657940480', 'S1235482128754409472', 'No1297093680271855616', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  双核  Intel', 67800, 1, 67800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1297351598854508544', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1297351598850314240', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1297745945768890369', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1297745945768890368', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1297745946628722688', 74, 75, 76, 'P1235433012594864128', 'S1235433012947185664', 'No1297745945768890368', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  立体声  65英寸  人工智能', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1297745946658082816', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1297745945768890368', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1297798555452444672', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1297798555448250368', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1297860596221480960', 558, 559, 11176, 'P1235513850825031680', 'S1235513851651309568', 'No1297860596208898048', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 4499, 1, 4499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1298164958441377793', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1298164958441377792', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1298169581378080769', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1298169581378080768', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1298175703463890944', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1298175703459696640', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1298415106815823872', 558, 559, 11176, 'P1235513850825031680', 'S1235513858844540928', 'No1298415106811629568', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  高通865  鸿蒙  64G  4800万', 2199, 1, 2199, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1298456952124346369', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1298456952124346368', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1298468437743505408', 558, 559, 11176, 'P1235515015503667200', 'S1235515016288002048', 'No1298468437739311104', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 599, 1, 599, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1298565133957730305', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1298565133957730304', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1298565134406520832', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1298565133957730304', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1298796804661448705', 161, 162, 166, 'P1235477886220128256', 'S1235477930931408896', 'No1298796804661448704', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  黑色  1T机械硬盘  I7  16G  Windows', 4999, 1, 4999, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1298815951810203649', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693792789082112', 'No1298815951810203648', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  环绕  55英寸  人工智能', 3999, 61, 243939, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1298816088448045057', 378, 397, 399, 'P1235497996368494592', 'S1235497996674678784', 'No1298816088448045056', '良品铺子 爆浆麻薯 红豆味小吃 蛋糕点心 零食特产g  去火  煮粥服用', 12, 22, 264, 'https://img11.360buyimg.com/n7/jfs/t1/109562/16/6832/272623/5e53d5d9E096d3ad4/404d03db9a498a88.jpg');
INSERT INTO `order_sku` VALUES ('No1298988436174278656', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1298988436170084352', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1299146332996505601', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1299146332996505600', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1299204994481917953', 558, 559, 11176, 'P1235513850825031680', 'S1235513923172581376', 'No1299204994481917952', '华为Mate 版手机 全网通 亮黑色(+)  全网通  紫色  麒麟820  鸿蒙  64G  5200万', 1689, 1, 1689, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1299205064820396032', 161, 162, 163, 'P1235473556977012736', 'S1235473558495350784', 'No1299205064816201728', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  15英寸  红色  260GSSD  I7  16G  Linux', 6799, 1, 6799, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1299205387056189441', 74, 75, 76, 'P1235433012594864128', 'S1235433013182066688', 'No1299205387056189440', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  75英寸  人工智能', 840, 1, 840, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1299281706683076609', 161, 162, 166, 'P1235477886220128256', 'S1235477887025434624', 'No1299281706683076608', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  1T机械硬盘  I7  8G  Mac', 3588, 1, 3588, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1299281706955706368', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1299281706683076608', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1299331589452468225', 1, 2, 4, 'P1235470486645792768', 'S1235470487602094080', 'No1299331589452468224', '麦肯锡教我的思考武器：从逻辑思考到真正解决问题  生活  英文  青少年', 144, 1, 144, 'https://img13.360buyimg.com/n7/jfs/t19186/359/1715107852/327496/f6913cfb/5ad5c18eNe1d37d17.jpg');
INSERT INTO `order_sku` VALUES ('No1299422753551683584', 558, 559, 11176, 'P1235513850825031680', 'S1235513852330786816', 'No1299422753547489280', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  Android  128G  3600万', 2499, 1, 2499, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1299523526490984449', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1299523526490984448', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1299569491394564096', 1, 2, 3, 'P1235464735172911104', 'S1235464735617507328', 'No1299569491390369792', '新诗“精魂”的追寻：穆旦研究新探  抒情  中文  少儿', 11, 1, 11, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1299569491570724864', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1299569491390369792', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1299654644443779072', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1299654644439584768', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1299739956339675137', 558, 559, 11176, 'P1235515015503667200', 'S1235515016288002048', 'No1299739956339675136', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  鸿蒙  64G  5200万', 599, 1, 599, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1299934126643744768', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1299934126639550464', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1300447973825712128', 161, 162, 163, 'No1265128852306870272', 'SkuNo1265128852353007616', 'No1300447973821517824', '华为MateBook  蓝色  I7', 8050, 1, 8050, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7Mko2APyuFAAL3y5V_FdE434.png');
INSERT INTO `order_sku` VALUES ('No1300592214287716352', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1300592214283522048', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1300636945411608577', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1300636945411608576', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1300648518402314241', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1300648518402314240', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1300669994241232897', 903, 904, 907, 'P1235523897101668352', 'S1235523897340743680', 'No1300669994241232896', '【新品】啄木鸟包包女包大容量新款韩版手提简约单肩包时尚百搭斜挎托特包 黄色  高频速冷暖  1.5匹', 95, 1, 95, 'https://img11.360buyimg.com/n7/jfs/t1/91605/34/13302/223215/5e54d5dfE7467c345/5d8c4be3939704b8.jpg');
INSERT INTO `order_sku` VALUES ('No1300681826670612480', 161, 162, 163, 'P1235475007161860096', 'S1235475044180787200', 'No1300681826666418176', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  15英寸  银白色  1T机械硬盘  I3  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1300697789671542784', 74, 89, 93, 'P1235458980021534720', 'S1235458981023973376', 'No1300697789667348480', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  银白色  5L  抑菌装置净水', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1300705073231433728', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1300705073214656512', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1300763199410409472', 1, 2, 3, 'P1235464735172911104', 'S1235464735944663040', 'No1300763199406215168', '新诗“精魂”的追寻：穆旦研究新探  诗歌  韩文  少儿', 2, 4, 8, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1300778810182078465', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1300778810182078464', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1300825124571844609', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1300825124571844608', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1301042134597636096', 1, 2, 4, 'P1235470486645792768', 'S1235470488097021952', 'No1301042134593441792', '麦肯锡教我的思考武器：从逻辑思考到真正解决问题  生活  日文  青年', 10, 1, 10, 'https://img13.360buyimg.com/n7/jfs/t19186/359/1715107852/327496/f6913cfb/5ad5c18eNe1d37d17.jpg');
INSERT INTO `order_sku` VALUES ('No1301042134790574080', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1301042134593441792', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1301076246096121857', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1301076246096121856', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1301446487628189697', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1301446487628189696', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 4, 7992, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1301758758858395649', 161, 171, 172, 'P1235482128657940480', 'S1235482128754409472', 'No1301758758858395648', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  双核  Intel', 67800, 1, 67800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1301758759034556416', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1301758758858395648', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1301759095740698625', 161, 162, 163, 'P1235475007161860096', 'S1235475021531545600', 'No1301759095740698624', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  蓝色  260GSSD  I6  64G  Windows', 5299, 1, 5299, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1301772516573974528', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1301772516569780224', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1301802182257020929', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721623252992', 'No1301802182257020928', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  有一定java基础的人  软件编程', 27, 1, 27, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1301802197092274176', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1301802197088079872', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1301802438961008641', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1301802438961008640', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1301865814110113793', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1301865814110113792', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1301938219973218305', 74, 89, 93, 'P1235458980021534720', 'S1235458981023973376', 'No1301938219973218304', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  银白色  5L  抑菌装置净水', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1302120822252638209', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1302120822252638208', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1302161995495247873', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1302161995495247872', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 2, 5398, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1302161995742711808', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1302161995495247872', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 2, 48, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1302483055721713665', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1302483055721713664', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1302483056527020032', 74, 89, 93, 'P1235458980021534720', 'S1235458981023973376', 'No1302483055721713664', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  银白色  5L  抑菌装置净水', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1302483159249719296', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1302483159245524992', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1302514410748776448', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1302514410744582144', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1302562278712938496', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1302562278708744192', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1302891257105879040', 161, 162, 166, 'P1235477886220128256', 'S1235477887621025792', 'No1302891257101684736', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  15英寸  红色  260GSSD  I7  16G  Linux', 1449, 1, 1449, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1302891257449811968', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1302891257101684736', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1302891257584029696', 74, 75, 84, 'P1235451588714201088', 'S1235451589284626432', 'No1302891257101684736', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  60升', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1302939351835086849', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1302939351835086848', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1302962299866320896', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1302962299862126592', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1303157053518385153', 558, 559, 11176, 'No1252144152994988032', 'SkuNo1252144153020153856', 'No1303157053518385152', '小米10pro  联通5G', 1, 1, 1, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV6dVbaAbKG-AAAbKIiiDN0608.jpg');
INSERT INTO `order_sku` VALUES ('No1303225979325517824', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1303225979321323520', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1303225979531038720', 558, 559, 561, 'P1235509464694566912', 'S1235509464786841600', 'No1303225979321323520', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  二代黑色  4G信号', 195, 1, 195, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1303266207016816641', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1303266207016816640', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1303266207213948928', 74, 75, 76, 'P1235433012594864128', 'S1235433013282729984', 'No1303266207016816640', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  机顶盒  环绕  55英寸  人工智能', 699, 1, 699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1303266207243309056', 74, 75, 78, 'P1235442060136407040', 'S1235442060262236160', 'No1303266207016816640', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  红色  单层冷藏', 3199, 1, 3199, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1303522462364995585', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1303522462364995584', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1303653768189054976', 161, 162, 163, 'P1235473556977012736', 'S1235473594696388608', 'No1303653768184860672', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  银白色  260GSSD  I6  16G  Mac', 4999, 5, 24995, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1303654602280931328', 161, 162, 163, 'P1235475007161860096', 'S1235475018272571392', 'No1303654602276737024', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  蓝色  260GSSD  I7  8G  Windows', 4999, 1, 4999, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1303654602314485760', 161, 162, 163, 'P1235475007161860096', 'S1235475037830610944', 'No1303654602276737024', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  银白色  260GSSD  I7  8G  Linux', 3599, 1, 3599, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1303697037287624705', 161, 162, 163, 'P1235473556977012736', 'S1235473558038171648', 'No1303697037287624704', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  16英寸  红色  1T机械硬盘  I7  8G  Mac', 6066, 1, 6066, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1303905628946829312', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1303905628942635008', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1304229267609096193', 558, 559, 11176, 'P1235513850825031680', 'S1235513851538063360', 'No1304229267609096192', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  红色  麒麟820  IOS  64G  3600万', 559, 1, 559, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1304231385271242753', 558, 559, 11176, 'P1235513850825031680', 'S1235513860849418240', 'No1304231385271242752', '华为Mate 版手机 全网通 亮黑色(+)  联通4G  蓝色  麒麟820  鸿蒙  64G  5200万', 2199, 1, 2199, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1304340073151598592', 558, 559, 561, 'P1235509464694566912', 'S1235509464895893504', 'No1304340073147404288', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  白色新品  5G信号', 155, 1, 155, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1304945826287718400', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1304945826283524096', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1304991140646359041', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1304991140646359040', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1305012481411911681', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1305012481411911680', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305059100345896960', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1305059100341702656', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305068801477447680', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1305068801473253376', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 5, 13495, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305079451587055617', 1, 2, 3, 'P1235464735172911104', 'S1235464735617507328', 'No1305079451587055616', '新诗“精魂”的追寻：穆旦研究新探  抒情  中文  少儿', 11, 1, 11, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1305079451763216384', 74, 75, 84, 'P1235451588714201088', 'S1235451589284626432', 'No1305079451587055616', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  60升', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1305301953055690753', 558, 559, 561, 'P1235509464694566912', 'S1235509464958808064', 'No1305301953055690752', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  1S蓝色  5G信号', 199, 1, 199, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1305313073774596096', 161, 162, 163, 'P1235475007161860096', 'S1235475008713752576', 'No1305313073770401792', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  14英寸  红色  1T机械硬盘  I7  16G  Linux', 5299, 1, 5299, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1305375821988499456', 161, 162, 163, 'P1235475007161860096', 'S1235475008344653824', 'No1305375821984305152', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1TSSD  I7  8G  Windows', 2999, 1, 2999, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1305376052671025153', 161, 162, 163, 'P1235475007161860096', 'S1235475008113967104', 'No1305376052671025152', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  16英寸  红色  1T机械硬盘  I7  8G  Windows', 3599, 1, 3599, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1305426186171715585', 161, 162, 166, 'P1235477886220128256', 'S1235477913562796032', 'No1305426186171715584', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  15英寸  紫色  260GSSD  I5  16G  Linux', 1799, 1, 1799, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1305436569573920769', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1305436569573920768', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 4, 15196, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305471422528884737', 161, 162, 166, 'P1235477886220128256', 'S1235477889948864512', 'No1305471422528884736', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  16英寸  红色  260GSSD  I6  16G  Windows', 6598, 1, 6598, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1305472604987068417', 161, 162, 163, 'P1235475007161860096', 'S1235475019174346752', 'No1305472604987068416', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  14英寸  蓝色  260GSSD  I7  32G  Windows', 5988, 1, 5988, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1305659052549869568', 558, 559, 11176, 'P1235513850825031680', 'S1235513925949210624', 'No1305659052545675264', '华为Mate 版手机 全网通 亮黑色(+)  全网通  红色  麒麟990  IOS  264G  3600万', 2399, 1, 2399, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1305797740697096193', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1305797740697096192', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305807144859340800', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1305807144855146496', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1305814158004064256', 558, 559, 561, 'P1235509464694566912', 'S1235509464958808064', 'No1305814157999869952', '小米（MI） 小米对讲机s民用迷你户外自驾游无线专业对讲机FM收音机 小米对讲机S 白色  1S蓝色  5G信号', 199, 1, 199, 'https://img10.360buyimg.com/n7/jfs/t1/72643/1/8020/75767/5d5e11fbEbc571a7f/36a23989c728f228.jpg');
INSERT INTO `order_sku` VALUES ('No1306009230712639489', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1306009230712639488', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1306314520741941249', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1306314520741941248', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1306410406985732096', 558, 559, 11176, 'P1235515015503667200', 'S1235515016095064064', 'No1306410406981537792', '小米CC手机 仙女渐变色(美图定制版) 全网通+  联通3G  红色  麒麟820  IOS  64G  4800万', 549, 1, 549, 'https://img11.360buyimg.com/n7/jfs/t1/109029/34/7786/132926/5e60a180E97c6dc57/bf46736ced597353.jpg');
INSERT INTO `order_sku` VALUES ('No1306522885573185536', 74, 126, 130, 'P1235462219177697280', 'S1235462219420966912', 'No1306522885568991232', '【春节不打烊】飞利浦（PHILIPS）电吹风机家用大功率SPA柔护宽广气流发廊理发店护发冷热吹风筒 润养秀发 红白  3级冷暖风  220W', 399, 1, 399, 'https://img11.360buyimg.com/n7/jfs/t1/97613/17/10871/85788/5e353f1cE07ee413f/2c9bfefbe1b4e4ac.jpg');
INSERT INTO `order_sku` VALUES ('No1306528090075303937', 161, 162, 166, 'P1235477886220128256', 'S1235477892436086784', 'No1306528090075303936', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  15英寸  红色  1TSSD  I5  16G  Windows', 1099, 1, 1099, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1306547902977544192', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1306547902973349888', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1306566715169181697', 161, 162, 166, 'P1235477886220128256', 'S1235477916050018304', 'No1306566715169181696', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  15英寸  紫色  260GSSD  I3  32G  Windows', 2399, 2, 4798, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1306789947042304001', 161, 171, 172, 'P1235482128657940480', 'S1235482128951541760', 'No1306789947042304000', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  8核  Intel', 9800, 1, 9800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1306814491224313856', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1306814491220119552', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1306823614384967680', 161, 162, 168, 'P1235479422568587264', 'S1235479472535330816', 'No1306823614380773376', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  17英寸  黑色  260GSSD  I3  16G  Windows', 1899, 1, 1899, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1306931935188226049', 558, 559, 11176, 'No1235630730216288256', 'SkuNo1235630735106846720', 'No1306931935188226048', '荣耀V30 突破性相机矩阵 李现同款  移动5G  素皮色  麒麟990  鸿蒙  512G  5200万', 5200, 1, 5200, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV5oj1KAEFALAAzUl92ym78741.png');
INSERT INTO `order_sku` VALUES ('No1307195092456574977', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1307195092456574976', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1307202995951374337', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1307202995951374336', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1307208499666751488', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1307208499662557184', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1307234902151925760', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1307234902147731456', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1307244052898516993', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1307244052898516992', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1307612314530353152', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721602281472', 'No1307612314526158848', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  零基础  科技', 52, 1, 52, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1307612632139829249', 438, 439, 448, 'P1235506636274040832', 'S1235506637146456064', 'No1307612632139829248', '米其林汽车轮胎 PRIMACY  ZP 防爆胎 R W 适配宝马系  运动操控型  235-50R18  竞驰PILOT', 2850, 1, 2850, 'https://img12.360buyimg.com/n7/jfs/t22507/191/634026260/260745/5fc6a08/5b39cea9N69e09b39.jpg');
INSERT INTO `order_sku` VALUES ('No1307721883923386368', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1307721883919192064', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1307896291547811841', 161, 171, 172, 'P1235482128657940480', 'S1235482128917987328', 'No1307896291547811840', '服务器CPU处理器 英特尔 至强E-V系列 针接口 不含散热片 E-V 核线程M .G  4核  AMD', 21800, 1, 21800, 'https://img13.360buyimg.com/n7/jfs/t1/101800/8/11277/41701/5e30f3d1E5b36dbaa/70868fc120f1abc1.jpg');
INSERT INTO `order_sku` VALUES ('No1307909754449956865', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1307909754449956864', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1307984526479331328', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1307984526475137024', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308237561344430081', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1308237561344430080', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1308310799168704513', 74, 75, 76, 'No1235693790385745920', 'SkuNo1235693791665008640', 'No1308310799168704512', '华为智慧屏 V65（星际黑）升降式AI摄像头  无限Wifi  立体声  75英寸  人工智能', 3999, 1, 3999, 'http://images-changgou-java.itheima.net/group1/M00/00/02/rBABRV5hfH6Acs5HAA-_oPNqbkM569.png');
INSERT INTO `order_sku` VALUES ('No1308311678659727361', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1308311678659727360', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1308582435994341376', 74, 75, 76, 'P1235433012594864128', 'S1235433013505028096', 'No1308582435990147072', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  教育电视', 699, 1, 699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308596532118949888', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1308596532114755584', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308596532295110656', 74, 75, 76, 'P1235433012594864128', 'S1235433013702160384', 'No1308596532114755584', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  75英寸  教育电视', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308596745940373504', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1308596745936179200', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308698892656840705', 1, 2, 3, 'P1235464735172911104', 'S1235464735588147200', 'No1308698892656840704', '新诗“精魂”的追寻：穆旦研究新探  生活  西班牙语  少儿', 200, 1, 200, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1308707414631124993', 74, 75, 76, 'P1235433012594864128', 'S1235433013463085056', 'No1308707414631124992', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  人工智能', 2370, 1, 2370, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1308967661467734016', 161, 162, 163, 'P1235473556977012736', 'S1235473557807484928', 'No1308967661463539712', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  17英寸  红色  1T机械硬盘  I7  8G  Linux', 3999, 1, 3999, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1309138626432602113', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1309138626432602112', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 3, 2397, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309138626814283776', 74, 89, 90, 'P1235454955565899776', 'S1235454955737866240', 'No1309138626432602112', '美的（Midea） 壁扇挂壁式电风扇家用牛角扇墙壁挂扇牛角扇工业车间餐厅商用餐厅仓库FWAYA 五叶机械壁扇  低风  红色  遥控器', 329, 1, 329, 'https://img11.360buyimg.com/n7/jfs/t1/61192/4/2596/273927/5d0d981bE17023e1c/594c6c03589089c0.jpg');
INSERT INTO `order_sku` VALUES ('No1309301071218348032', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1309301071214153728', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309301071402897408', 161, 162, 168, 'P1235480520834506752', 'S1235480521081970688', 'No1309301071214153728', '惠普（HP）战 商用办公台式电脑主机（九代i- G TB Win Office WiFi蓝牙 四年上门）  17英寸  红色  260GSSD  I7  8G  Mac', 2299, 1, 2299, 'https://img11.360buyimg.com/n7/jfs/t1/99550/18/2024/96355/5dc9429dEe7c4dc99/3ad3e389baea43a3.jpg');
INSERT INTO `order_sku` VALUES ('No1309337799899615232', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1309337799895420928', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309346380694818817', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1309346380694818816', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1309362564160950273', 161, 162, 166, 'P1235477886220128256', 'S1235477886664724480', 'No1309362564160950272', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Windows', 1258, 1, 1258, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1309362641864626176', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1309362641860431872', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309388337534078976', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1309388337529884672', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1309395098647269377', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1309395098647269376', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309464278344011776', 161, 162, 166, 'P1235477886220128256', 'S1235477886744416256', 'No1309464278339817472', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Mac', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1309464361600946176', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1309464361596751872', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 2, 5398, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309464617839366145', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1309464617839366144', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1309468089229905920', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1309468089225711616', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1309689847925051392', 161, 162, 163, 'P1235475007161860096', 'S1235475008403374080', 'No1309689847920857088', '荣耀MagicBook Pro Win .全面屏轻薄性能笔记本电脑（标压锐龙R H G G %sRGB）冰河银  17英寸  红色  260GSSD  I7  16G  Windows', 3099, 1, 3099, 'https://img14.360buyimg.com/n7/jfs/t1/108658/35/3724/372162/5e142069Ebef75f0f/802d9d4f5f770b35.jpg');
INSERT INTO `order_sku` VALUES ('No1309783016784138241', 74, 75, 84, 'P1235451588714201088', 'S1235451588760338432', 'No1309783016784138240', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  10KG  3000W功耗  太阳能  50升', 1699, 1, 1699, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1309825312065982464', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1309825312061788160', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1309843667573411841', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1309843667573411840', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310056850347134976', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1310056850342940672', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 12, 80388, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310168533921042433', 74, 75, 76, 'P1235433012594864128', 'S1235433013525999616', 'No1310168533921042432', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  环绕  65英寸  教育电视', 3799, 1, 3799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310168534457913344', 11157, 11158, 11167, 'P1235527721530978304', 'S1235527721623252992', 'No1310168533921042432', '数据结构与算法——C语言和Java语言描述（高职高专计算机任务驱动模式教材）  有一定java基础的人  软件编程', 27, 1, 27, 'https://img14.360buyimg.com/n7/jfs/t907/292/796798366/545337/fc891657/5548a305Nc5f6c031.jpg');
INSERT INTO `order_sku` VALUES ('No1310170963261919233', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1310170963261919232', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310193991899287552', 161, 162, 163, 'No1265134681923862528', 'SkuNo1265134681957416960', 'No1310193991895093248', '华为Book  红色  I7', 12222, 1, 12222, 'http://images-changgou-java.itheima.net/group1/M00/00/00/rBABRV7Ml-WAVul7AAJSU0JCfZQ438.png');
INSERT INTO `order_sku` VALUES ('No1310433086974070785', 161, 171, 175, 'P1235484802736570368', 'S1235484803143417856', 'No1310433086974070784', '联想（Lenovo）笔记本 台式机 机械硬盘    笔记本硬盘 ()  软盘  120G  台式机', 299, 1, 299, 'https://img13.360buyimg.com/n7/jfs/t21394/79/2110355088/161795/85db60d3/5b46fe4cN5da20c71.jpg');
INSERT INTO `order_sku` VALUES ('No1310490003436081152', 161, 162, 163, 'P1235473556977012736', 'S1235473572604989440', 'No1310490003423498240', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  16英寸  蓝色  1T机械硬盘  I6  8G  Mac', 7699, 1, 7699, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1310494713824022529', 74, 75, 77, 'P1235437257624715264', 'S1235437257884762112', 'No1310494713824022528', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  单冷  1.5匹', 2999, 1, 2999, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1310534217406484480', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1310534217402290176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310534217603616768', 74, 75, 76, 'P1235433012594864128', 'S1235433013437919232', 'No1310534217402290176', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  环绕  65英寸  人工智能', 1305, 1, 1305, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1310534217637171200', 161, 162, 163, 'P1235473556977012736', 'S1235473603269545984', 'No1310534217402290176', '联想（Lenovo）小新Air. 英特尔酷睿 超轻薄笔记本电脑 i-U G TSS高效办公套装  14英寸  黑色  1T机械硬盘  I7  8G  Mac', 5299, 1, 5299, 'https://img14.360buyimg.com/n7/jfs/t1/15260/11/7355/214716/5c6a7ff9E90ce1f20/7cac84a37195a129.jpg');
INSERT INTO `order_sku` VALUES ('No1310534629052256257', 161, 162, 168, 'P1235479422568587264', 'S1235479423252258816', 'No1310534629052256256', '联想(Lenovo)天逸 Pro台式机电脑整机（i- G G SS+T GT G 独显 三年上门 ）  16英寸  红色  260GSSD  I7  8G  Windows', 2599, 1, 2599, 'https://img10.360buyimg.com/n7/jfs/t1/5615/14/6621/213750/5ba31a65E07eb0e35/43e2234ed37b2b8f.jpg');
INSERT INTO `order_sku` VALUES ('No1310743839807508480', 161, 162, 166, 'P1235477886220128256', 'S1235477886744416256', 'No1310743839803314176', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Mac', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1310769273693671424', 74, 75, 77, 'P1235437257624715264', 'S1235437257859596288', 'No1310769273689477120', '格力（GREE） 空调挂机冷静王Ⅲ 蒸发器自洁 智能WIFI变频冷暖壁挂式空调 大匹FR-GWFNhAa-A  高频速冷暖  1.5匹', 3490, 1, 3490, 'https://img13.360buyimg.com/n7/jfs/t1/87067/33/13682/101737/5e5cb721Ef467131e/1c3b447d3bfa60df.jpg');
INSERT INTO `order_sku` VALUES ('No1311088900143452160', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1311088900130869248', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1311128564871073792', 1, 2, 3, 'P1235464735172911104', 'S1235464735562981376', 'No1311128564866879488', '新诗“精魂”的追寻：穆旦研究新探  生活  韩文  少儿', 24, 1, 24, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1311165528710189057', 749, 750, 757, 'P1235520814560894976', 'S1235520814632198144', 'No1311165528710189056', '阿迪达斯（Adidas）官方同款女童春装套装新款儿童中大童时尚时髦牛仔卫衣网红两件套洋气 粉红色(动漫人物套装) cm  男  少儿  10-30岁之间', 369, 1, 369, 'https://img12.360buyimg.com/n7/jfs/t1/97819/25/13417/180594/5e5a21ecE00c28ffd/6a633663baa4a537.jpg');
INSERT INTO `order_sku` VALUES ('No1311237034228191232', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1311237034219802624', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1311242979440201729', 74, 75, 84, 'P1235451588714201088', 'S1235451589301403648', 'No1311242979440201728', 'Haier海尔 EC-MG(U)热水器电家用升速热卫生间储水洗澡电热水器 EC-MG(U)  15KG  3000W功耗  太阳能  60升', 999, 1, 999, 'https://img11.360buyimg.com/n7/jfs/t1/97796/29/13276/233822/5e539597E37c643e8/c84e0ac778d9089a.jpg');
INSERT INTO `order_sku` VALUES ('No1312189997310414849', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1312189997310414848', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1312189998346407936', 161, 162, 166, 'P1235477886220128256', 'S1235477889827229696', 'No1312189997310414848', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I6  16G  Windows', 1998, 1, 1998, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1312190321706274817', 558, 559, 11176, 'P1235513850825031680', 'S1235513851848441856', 'No1312190321706274816', '华为Mate 版手机 全网通 亮黑色(+)  联通3G  蓝色  麒麟820  IOS  64G  5200万', 1049, 1, 1049, 'https://img11.360buyimg.com/n7/jfs/t1/85481/33/14011/114965/5e5f7969E15af3408/7afc85bc530d550d.jpg');
INSERT INTO `order_sku` VALUES ('No1312385533598633985', 161, 162, 166, 'P1235477886220128256', 'S1235477886664724480', 'No1312385533598633984', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  17英寸  红色  260GSSD  I7  8G  Windows', 1258, 1, 1258, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1312385534089367552', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1312385533598633984', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1312654358894219264', 161, 162, 166, 'P1235477886220128256', 'S1235477894734565376', 'No1312654358890024960', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  14英寸  红色  260GSSD  I3  32G  Windows', 1699, 1, 1699, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1312712122660163585', 1, 2, 3, 'P1235464735172911104', 'S1235464735827222528', 'No1312712122660163584', '新诗“精魂”的追寻：穆旦研究新探  散文  韩文  少儿', 13, 1, 13, 'https://img10.360buyimg.com/n7/jfs/t1/26726/33/15408/237421/5cb081f4E1da4979a/8583ee357ff986d1.jpg');
INSERT INTO `order_sku` VALUES ('No1312930414188433408', 74, 75, 76, 'P1235433012594864128', 'S1235433013073014784', 'No1312930414184239104', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  立体声  65英寸  教育电视', 6699, 1, 6699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1313137973868498944', 74, 89, 93, 'P1235458980021534720', 'S1235458980252221440', 'No1313137973864304640', '美的（Midea）饮水机迷你小型台式家用温热型桌面饮水器 白色  红色  5L  抑菌装置净水', 499, 1, 499, 'https://img11.360buyimg.com/n7/jfs/t1/98208/30/12447/196985/5e4690a9E370a3adb/6aa26a49e32f7d4b.png');
INSERT INTO `order_sku` VALUES ('No1313138216899055617', 74, 75, 78, 'P1235442060136407040', 'S1235442060425814016', 'No1313138216899055616', '海尔（Haier） 升 小型三门冰箱 中门软冷冻 节能静音 时尚外观 BC-STPA  灰色  单层冷藏', 1899, 1, 1899, 'https://img13.360buyimg.com/n7/jfs/t1/97053/30/13638/101850/5e5cded0E04fd8aff/d4266b8264922b5e.jpg');
INSERT INTO `order_sku` VALUES ('No1313281406859874304', 74, 75, 76, 'P1235433012594864128', 'S1235433013005905920', 'No1313281406855680000', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  宽带  立体声  65英寸  人工智能', 2699, 1, 2699, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');
INSERT INTO `order_sku` VALUES ('No1313441731865350145', 161, 162, 166, 'P1235477886220128256', 'S1235477925755637760', 'No1313441731865350144', '华为畅享 平板电脑 . 商城ipad爆款 麒麟八核可选通话大屏手机平板AGS AL【G+G 全网G通话】香槟金 标配【正品全新 全国联保 可开专票】  16英寸  银白色  1TSSD  I5  64G  Linux', 3588, 50, 179400, 'https://img13.360buyimg.com/n7/jfs/t1/97372/15/12849/209332/5e4f73deE952f507a/73d59dbc8c6e2d83.jpg');
INSERT INTO `order_sku` VALUES ('No1313463254353317888', 161, 162, 168, 'P1235480520834506752', 'S1235480550739894272', 'No1313463254349123584', '惠普（HP）战 商用办公台式电脑主机（九代i- G TB Win Office WiFi蓝牙 四年上门）  15英寸  银白色  1TSSD  I6  8G  Windows', 1999, 1, 1999, 'https://img11.360buyimg.com/n7/jfs/t1/99550/18/2024/96355/5dc9429dEe7c4dc99/3ad3e389baea43a3.jpg');
INSERT INTO `order_sku` VALUES ('No1313466168933224448', 74, 75, 76, 'P1235433012594864128', 'S1235433013903486976', 'No1313466168929030144', '液晶电视机高清网络wifi智能平板彩电 【影院级屏幕AI智能】（顶配） 全国联保  无限Wifi  小影院  65英寸  人工智能', 799, 1, 799, 'https://img12.360buyimg.com/n7/jfs/t1/99762/7/12943/101515/5e53a45dE3dfb9d96/dd297b1bb675a3bc.jpg');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `provinceid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份ID',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('110000', '北京市');
INSERT INTO `provinces` VALUES ('120000', '天津市');
INSERT INTO `provinces` VALUES ('130000', '河北省');
INSERT INTO `provinces` VALUES ('140000', '山西省');
INSERT INTO `provinces` VALUES ('150000', '内蒙古自治区');
INSERT INTO `provinces` VALUES ('210000', '辽宁省');
INSERT INTO `provinces` VALUES ('220000', '吉林省');
INSERT INTO `provinces` VALUES ('230000', '黑龙江省');
INSERT INTO `provinces` VALUES ('310000', '上海市');
INSERT INTO `provinces` VALUES ('320000', '江苏省');
INSERT INTO `provinces` VALUES ('330000', '浙江省');
INSERT INTO `provinces` VALUES ('340000', '安徽省');
INSERT INTO `provinces` VALUES ('350000', '福建省');
INSERT INTO `provinces` VALUES ('360000', '江西省');
INSERT INTO `provinces` VALUES ('370000', '山东省');
INSERT INTO `provinces` VALUES ('410000', '河南省');
INSERT INTO `provinces` VALUES ('420000', '湖北省');
INSERT INTO `provinces` VALUES ('430000', '湖南省');
INSERT INTO `provinces` VALUES ('440000', '广东省');
INSERT INTO `provinces` VALUES ('450000', '广西壮族自治区');
INSERT INTO `provinces` VALUES ('460000', '海南省');
INSERT INTO `provinces` VALUES ('500000', '重庆市');
INSERT INTO `provinces` VALUES ('510000', '四川省');
INSERT INTO `provinces` VALUES ('520000', '贵州省');
INSERT INTO `provinces` VALUES ('530000', '云南省');
INSERT INTO `provinces` VALUES ('540000', '西藏自治区');
INSERT INTO `provinces` VALUES ('610000', '陕西省');
INSERT INTO `provinces` VALUES ('620000', '甘肃省');
INSERT INTO `provinces` VALUES ('630000', '青海省');
INSERT INTO `provinces` VALUES ('640000', '宁夏回族自治区');
INSERT INTO `provinces` VALUES ('650000', '新疆维吾尔自治区');
INSERT INTO `provinces` VALUES ('710000', '台湾省');
INSERT INTO `provinces` VALUES ('810000', '香港特别行政区');
INSERT INTO `provinces` VALUES ('820000', '澳门特别行');

-- ----------------------------
-- Table structure for seckill_goods
-- ----------------------------
DROP TABLE IF EXISTS `seckill_goods`;
CREATE TABLE `seckill_goods`  (
  `id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'spu ID',
  `sku_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sku ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `images` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `price` int(20) NULL DEFAULT NULL COMMENT '原价格',
  `seckill_price` double(20, 0) NULL DEFAULT NULL COMMENT '秒杀价格',
  `create_time` datetime NULL DEFAULT NULL COMMENT '添加日期',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `num` int(11) NULL DEFAULT NULL COMMENT '秒杀商品数',
  `store_count` int(11) NULL DEFAULT NULL COMMENT '剩余库存数',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for seckill_order
-- ----------------------------
DROP TABLE IF EXISTS `seckill_order`;
CREATE TABLE `seckill_order`  (
  `id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `seckill_goods_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '秒杀商品ID',
  `money` int(10) NULL DEFAULT NULL COMMENT '支付金额',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态，0未支付，1已支付',
  `weixin_transaction_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易流水',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_order
-- ----------------------------
INSERT INTO `seckill_order` VALUES ('No1236089118400839680', '100004542252', 149, 'szitheima', '2020-03-07 00:39:46', '2020-03-07 00:40:12', 1, '4200000507202003073083207250');
INSERT INTO `seckill_order` VALUES ('No1236089399939301376', '100004619589', 1599, 'szitheima', '2020-03-07 00:40:53', '2020-03-07 00:41:19', 1, '4200000512202003075509447257');
INSERT INTO `seckill_order` VALUES ('No1236089565324902400', '100004705339', 2549, 'szitheima', '2020-03-07 00:41:32', '2020-03-07 00:47:00', 1, '4200000508202003070524230650');
INSERT INTO `seckill_order` VALUES ('No1237630491490910208', '11094495243', 308, 'szitheima', '2020-03-11 06:44:38', '2020-03-11 06:48:47', 1, '4200000518202003115944274808');
INSERT INTO `seckill_order` VALUES ('No1237631704747868160', '11094495243', 308, 'szitheima', '2020-03-11 06:49:26', '2020-03-11 06:49:28', 1, '4200000502202003110467359377');
INSERT INTO `seckill_order` VALUES ('No1237632433805983744', '11081860275', 78, 'szitheima', '2020-03-11 06:52:21', '2020-03-11 06:52:21', 1, '4200000519202003114588402324');
INSERT INTO `seckill_order` VALUES ('No1237632588613550080', '11081860275', 78, 'szitheima', '2020-03-11 06:52:58', '2020-03-11 06:52:58', 1, '4200000507202003116447096636');
INSERT INTO `seckill_order` VALUES ('No1237632940989612032', '11101606395', 68, 'szitheima', '2020-03-11 06:54:22', '2020-03-11 06:54:38', 1, '4200000516202003114597209570');
INSERT INTO `seckill_order` VALUES ('No1261201327074181120', '2676238', 2349, 'szitheima', '2020-05-15 07:46:43', '2020-05-15 07:46:43', 1, '4200000563202005152330833335');
INSERT INTO `seckill_order` VALUES ('No1261201485350436864', '2676238', 2349, 'szitheima', '2020-05-15 07:47:21', '2020-05-15 07:48:54', 1, '4200000555202005154857037460');
INSERT INTO `seckill_order` VALUES ('No1265139405790773248', '55533606828', 5049, 'szitheima', '2020-05-26 04:35:14', '2020-05-26 04:35:34', 1, '4200000613202005268085105563');
INSERT INTO `seckill_order` VALUES ('No1265142671710748672', '55512269095', 118, 'szitheima', '2020-05-26 04:48:13', '2020-05-26 04:48:32', 1, '4200000619202005264098372144');
INSERT INTO `seckill_order` VALUES ('No1265282680573001728', '55989735361', 22, 'szitheima', '2020-05-26 14:04:34', '2020-05-26 14:04:50', 1, '4200000609202005266111197684');
INSERT INTO `seckill_order` VALUES ('No1278858365744840704', '62144451152', 8049, 'szitheima', '2020-07-03 01:09:29', '2020-07-03 01:09:47', 1, '4200000614202007034255432616');
INSERT INTO `seckill_order` VALUES ('No1278861882308034560', '62144451152', 8049, 'szitheima', '2020-07-03 01:23:28', '2020-07-03 01:23:43', 1, '4200000615202007035217258638');
INSERT INTO `seckill_order` VALUES ('No1290812908762169344', '62147394264', 5149, 'szitheima', '2020-08-05 00:52:34', '2020-08-05 00:53:02', 1, '4200000721202008052188756488');

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku`  (
  `id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SKU名称',
  `price` int(20) NOT NULL DEFAULT 1 COMMENT '价格（分）',
  `inventory` int(10) NULL DEFAULT 100 COMMENT '库存数量',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `description_images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片列表',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `spu_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SPUID',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '类目ID',
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类目名称',
  `brand_id` int(11) NULL DEFAULT NULL COMMENT '品牌id',
  `brand_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `sku_attribute` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `status` int(1) NULL DEFAULT 1 COMMENT '商品状态 1-正常，2-下架，3-删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`category_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `updated`(`update_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku
-- ----------------------------
INSERT INTO `sku` VALUES ('1318594982227025922', '华为Mate40 Pro 32G', 114, 1228, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/af1faf56-b10a-4700-9896-3143a2d1c40f.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', '2020-10-20 16:48:37', '2020-10-20 16:48:37', '1318594982147334146', 11159, '软件研发', 11, '华为', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1318596430360813570', '华为Mate40 Pro 32G 1800万像素', 112, 1227, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/9247d041-e940-426c-8e50-06084b631063.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/5f5b7435-6cf2-4797-8f65-d4abff181390.jpg', '2020-10-20 16:54:22', '2020-10-20 16:54:22', '1318596430293704706', 11159, '软件研发', 11, '华为', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1318596430398562305', '华为Mate40 Pro 128G', 111, 1226, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/900a3618-9884-4778-bad9-c6c31eaf3eab.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/5f5b7435-6cf2-4797-8f65-d4abff181390.jpg', '2020-10-20 16:54:22', '2020-10-20 16:54:22', '1318596430293704706', 11159, '软件研发', 11, '华为', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1318599511605563394', '格力手机 5G手机', 100, 1225, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/2b233c6a-5acc-449e-ba3a-70a506100948.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/ffc66a17-edfc-43bb-8f66-431b1e9bf606.jpg', '2020-10-20 17:06:37', '2020-10-20 17:06:37', '1318599511492317185', 11159, '软件研发', 11, '华为', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1318599511647506433', '格力手机 5G手机 红色', 789, 1224, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/1c1fbfea-af9f-49e7-b89b-35e751874399.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/ffc66a17-edfc-43bb-8f66-431b1e9bf606.jpg', '2020-10-20 17:06:37', '2020-10-20 17:06:37', '1318599511492317185', 11159, '软件研发', 11, '华为', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1319051488240168961', '小米10促销活培训课  1万  6K起', 155, 1223, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/65da862e-6c75-4786-9eff-ab92e79661f6.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', '2020-10-21 23:02:36', '2020-10-21 23:02:36', '1319051488177254401', 11159, '软件研发', 12, '中兴', '{\"就业薪资\":\"6K起\",\"学习费用\":\"1万\"}', 1);
INSERT INTO `sku` VALUES ('1319051488265334786', '小米10促销活培训课  2万  6K起', 1666, 1222, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/9c7a73df-dc02-42ac-b2f8-11a6ef63d18b.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', '2020-10-21 23:02:36', '2020-10-21 23:02:36', '1319051488177254401', 11159, '软件研发', 12, '中兴', '{\"就业薪资\":\"6K起\",\"学习费用\":\"2万\"}', 1);
INSERT INTO `sku` VALUES ('1319051488282112002', '小米10促销活培训课  1万  10K起', 123, 12221, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/1cb38c3f-93b6-4fae-bb1f-5129d01c6eb3.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', '2020-10-21 23:02:36', '2020-10-21 23:02:36', '1319051488177254401', 11159, '软件研发', 12, '中兴', '{\"就业薪资\":\"10K起\",\"学习费用\":\"1万\"}', 1);
INSERT INTO `sku` VALUES ('1319051488298889217', '小米10促销活培训课  2万  10K起', 22222, 12231, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/38421f8f-c20d-40ec-9616-1ad90fff5d74.jpg', 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', '2020-10-21 23:02:36', '2020-10-21 23:02:36', '1319051488177254401', 11159, '软件研发', 12, '中兴', '{\"就业薪资\":\"10K起\",\"学习费用\":\"2万\"}', 1);

-- ----------------------------
-- Table structure for sku_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sku_attribute`;
CREATE TABLE `sku_attribute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性名称',
  `options` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性选项',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_attribute
-- ----------------------------
INSERT INTO `sku_attribute` VALUES (1, '电器', '立体声,环绕,小影院', 1);
INSERT INTO `sku_attribute` VALUES (6, '适合人群', '少年,大学生,职场人士,金融专家', NULL);
INSERT INTO `sku_attribute` VALUES (7, '类型', '金融,培训,市场管理', NULL);
INSERT INTO `sku_attribute` VALUES (8, '时长', '10小时视频,26小时视频,22小时视频', NULL);
INSERT INTO `sku_attribute` VALUES (9, '学习周期', '1个月,2个月,6个月,1年', NULL);
INSERT INTO `sku_attribute` VALUES (10, '就业薪资', '6K起,10K起,30K以上', NULL);
INSERT INTO `sku_attribute` VALUES (11, '学习费用', '1万,2万,9988', NULL);
INSERT INTO `sku_attribute` VALUES (12, '应用场景', '机器制造,软件研发,UI设计', NULL);

-- ----------------------------
-- Table structure for spu
-- ----------------------------
DROP TABLE IF EXISTS `spu`;
CREATE TABLE `spu`  (
  `id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SPU名',
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `brand_id` int(11) NULL DEFAULT NULL COMMENT '品牌ID',
  `category_one_id` int(20) NULL DEFAULT NULL COMMENT '一级分类',
  `category_two_id` int(10) NULL DEFAULT NULL COMMENT '二级分类',
  `category_three_id` int(10) NULL DEFAULT NULL COMMENT '三级分类',
  `images` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片列表',
--   `after_sales_service` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '售后服务',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `attribute_list` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格列表',
  `is_marketable` int(1) NULL DEFAULT 0 COMMENT '是否上架,0已下架，1已上架',
  `is_delete` int(1) NULL DEFAULT 0 COMMENT '是否删除,0:未删除，1：已删除',
  `status` int(1) NULL DEFAULT 0 COMMENT '审核状态，0：未审核，1：已审核，2：审核不通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu
-- ----------------------------
INSERT INTO `spu` VALUES ('1318594982147334146', 'ces', 's', 11, 11157, 11158, 11159, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', NULL, '', '{\"ds\":[\"d\"],\"fd\":[\"ff\"],\"大小\":[\"中\"]}', 1, 0, 1);
INSERT INTO `spu` VALUES ('1318596430293704706', 'ee', 'e', 11, 11157, 11158, 11159, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', NULL, '<p>ces</p>', '{\"fd\":[\"ff\"],\"大小\":[\"大\",\"中\"]}', 1, 0, 1);
INSERT INTO `spu` VALUES ('1318599511492317185', 'ces2', 'ddes', 11, 11157, 11158, 11159, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', NULL, '<p>gdfg</p>', '{\"ds\":[\"d\"],\"fd\":[\"ff\"],\"大小\":[\"大\",\"中\"]}', 1, 0, 1);
INSERT INTO `spu` VALUES ('1319051488177254401', '小米10促销活培训课', '双十一电销小米10大促销！最后三天！', 12, 11157, 11158, 11159, 'https://sklll.oss-cn-beijing.aliyuncs.com/secby/a65bfbe4-21b7-42b2-b5cf-47a9730e0a16.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/fa52ef66-7724-4d6e-bece-15eba0f8f903.jpg,https://sklll.oss-cn-beijing.aliyuncs.com/secby/734f0f17-ac73-45d3-a6bf-83e1569ce887.jpg', NULL, '<p>促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！促销课程！</p>', '{\"就业薪资\":[\"6K起\",\"10K起\"],\"学习费用\":[\"1万\",\"2万\"]}', 1, 0, 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册邮箱',
  `created` datetime NOT NULL COMMENT '创建时间',
  `updated` datetime NOT NULL COMMENT '修改时间',
  `source_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员来源：1:PC，2：H5，3：Android，4：IOS',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用状态（1正常 0非正常）',
  `head_pic` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ号码',
  `is_mobile_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '手机是否验证 （0否  1是）',
  `is_email_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '邮箱是否检测（0否  1是）',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '性别，1男，0女',
  `user_level` int(11) NULL DEFAULT NULL COMMENT '会员等级',
  `points` int(11) NULL DEFAULT NULL COMMENT '积分',
  `experience_value` int(11) NULL DEFAULT NULL COMMENT '经验值',
  `birthday` datetime NULL DEFAULT NULL COMMENT '出生年月日',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `provinceid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份ID',
  `cityid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市ID',
  `areaid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区ID',
  PRIMARY KEY (`username`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
