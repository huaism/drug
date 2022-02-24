/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : drug

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 24/02/2022 14:00:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer_type
-- ----------------------------
DROP TABLE IF EXISTS `customer_type`;
CREATE TABLE `customer_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of customer_type
-- ----------------------------
INSERT INTO `customer_type` VALUES (1, '住院病人');
INSERT INTO `customer_type` VALUES (2, '门诊病人');
INSERT INTO `customer_type` VALUES (3, '其他');

-- ----------------------------
-- Table structure for db_back_log
-- ----------------------------
DROP TABLE IF EXISTS `db_back_log`;
CREATE TABLE `db_back_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BACK_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of db_back_log
-- ----------------------------
INSERT INTO `db_back_log` VALUES (1, 'admin', '2020-12-23 17:31:38');
INSERT INTO `db_back_log` VALUES (2, 'admin', '2020-12-23 17:31:46');
INSERT INTO `db_back_log` VALUES (3, 'admin', '2020-12-23 17:31:58');
INSERT INTO `db_back_log` VALUES (4, 'admin', '2020-12-23 17:32:48');
INSERT INTO `db_back_log` VALUES (5, 'admin', '2020-12-23 17:32:50');
INSERT INTO `db_back_log` VALUES (6, 'admin', '2020-12-23 17:33:24');
INSERT INTO `db_back_log` VALUES (7, 'admin', '2020-12-23 17:33:31');
INSERT INTO `db_back_log` VALUES (8, 'admin', '2020-12-23 17:33:34');
INSERT INTO `db_back_log` VALUES (9, 'admin', '2020-12-23 17:33:35');
INSERT INTO `db_back_log` VALUES (10, 'admin', '2020-12-23 17:35:10');
INSERT INTO `db_back_log` VALUES (11, 'admin', '2020-12-23 17:35:51');
INSERT INTO `db_back_log` VALUES (12, 'admin', '2020-12-23 17:35:56');
INSERT INTO `db_back_log` VALUES (13, 'admin', '2020-12-23 17:36:05');
INSERT INTO `db_back_log` VALUES (14, 'admin', '2020-12-23 17:36:52');
INSERT INTO `db_back_log` VALUES (15, 'admin', '2020-12-23 17:36:56');
INSERT INTO `db_back_log` VALUES (16, 'admin', '2020-12-23 17:36:59');
INSERT INTO `db_back_log` VALUES (17, 'admin', '2020-12-23 17:37:33');
INSERT INTO `db_back_log` VALUES (18, 'admin', '2020-12-23 17:37:42');
INSERT INTO `db_back_log` VALUES (19, 'admin', '2020-12-23 17:38:16');
INSERT INTO `db_back_log` VALUES (20, 'admin', '2020-12-23 17:38:50');
INSERT INTO `db_back_log` VALUES (21, 'admin', '2020-12-23 17:39:07');
INSERT INTO `db_back_log` VALUES (22, 'admin', '2020-12-23 17:39:45');
INSERT INTO `db_back_log` VALUES (23, 'admin', '2020-12-23 17:39:50');
INSERT INTO `db_back_log` VALUES (24, 'admin', '2020-12-23 17:39:52');
INSERT INTO `db_back_log` VALUES (25, 'admin', '2020-12-23 19:14:01');
INSERT INTO `db_back_log` VALUES (26, 'admin', '2020-12-28 15:28:58');
INSERT INTO `db_back_log` VALUES (27, 'admin', '2022-02-23 22:00:13');

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BUY_DATE` datetime NULL DEFAULT NULL,
  `TYPE_ID` int(11) NULL DEFAULT NULL,
  `prescription_type` int(11) NULL DEFAULT NULL,
  `COMPANY` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specifications` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `price` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES (1, '药品1', '2020-12-08 00:00:00', 2, 2, 'rr', 'rr', NULL, NULL, 222.00);
INSERT INTO `drug` VALUES (2, '药品2', '2020-12-16 00:00:00', 2, 2, '企业', '规格', NULL, NULL, 11.00);
INSERT INTO `drug` VALUES (3, '药品3', '2020-12-08 00:00:00', 2, NULL, 'df', 'dfd', NULL, NULL, 4.00);
INSERT INTO `drug` VALUES (4, '药品4', '2020-12-23 00:00:00', 2, NULL, '99', '99', 1, '2020-12-24 18:40:42', 999.00);
INSERT INTO `drug` VALUES (5, '药品5', '2020-12-08 00:00:00', 2, 1, 'q', 'q', 1, '2020-12-28 17:37:55', 1.00);
INSERT INTO `drug` VALUES (6, '药品6', '2020-12-08 00:00:00', 2, NULL, '2', '2', 1, '2020-12-28 17:49:35', 3.00);

-- ----------------------------
-- Table structure for drug_storage
-- ----------------------------
DROP TABLE IF EXISTS `drug_storage`;
CREATE TABLE `drug_storage`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRUG_ID` int(11) NULL DEFAULT NULL,
  `validity_End_Time` date NULL DEFAULT NULL,
  `stock_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of drug_storage
-- ----------------------------
INSERT INTO `drug_storage` VALUES (3, 2, '2020-12-09', 9);
INSERT INTO `drug_storage` VALUES (4, 1, '2020-12-16', 10);
INSERT INTO `drug_storage` VALUES (5, 4, '2020-12-09', 15);
INSERT INTO `drug_storage` VALUES (6, 3, '2020-12-16', 1);

-- ----------------------------
-- Table structure for drug_storage_log
-- ----------------------------
DROP TABLE IF EXISTS `drug_storage_log`;
CREATE TABLE `drug_storage_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRUG_ID` int(11) NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `OPERATOR_TYPE` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `operator_end_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of drug_storage_log
-- ----------------------------
INSERT INTO `drug_storage_log` VALUES (9, 2, 1, '2020-12-25 15:42:43', 1, 10, 10);
INSERT INTO `drug_storage_log` VALUES (10, 1, 1, '2020-12-25 15:43:13', 1, 10, 10);
INSERT INTO `drug_storage_log` VALUES (11, 2, 1, '2020-12-25 15:43:24', 2, 1, 11);
INSERT INTO `drug_storage_log` VALUES (12, 2, 1, '2020-12-25 15:43:38', 6, -2, 9);
INSERT INTO `drug_storage_log` VALUES (13, 4, 1, '2020-12-25 17:17:40', 1, 10, 10);
INSERT INTO `drug_storage_log` VALUES (14, 4, 1, '2020-12-25 17:18:02', 3, 5, 15);
INSERT INTO `drug_storage_log` VALUES (15, 3, 1, '2020-12-28 17:01:31', 1, 1, 1);

-- ----------------------------
-- Table structure for drug_type
-- ----------------------------
DROP TABLE IF EXISTS `drug_type`;
CREATE TABLE `drug_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of drug_type
-- ----------------------------
INSERT INTO `drug_type` VALUES (1, 'aayy');
INSERT INTO `drug_type` VALUES (2, 'sssss');
INSERT INTO `drug_type` VALUES (3, 'sss');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '物资5', 1, '2020-12-26 16:03:26');
INSERT INTO `goods` VALUES (2, '物资2', 1, '2020-12-26 16:03:34');
INSERT INTO `goods` VALUES (3, '物资7', 1, '2020-12-26 16:33:14');

-- ----------------------------
-- Table structure for goods_storage
-- ----------------------------
DROP TABLE IF EXISTS `goods_storage`;
CREATE TABLE `goods_storage`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NULL DEFAULT NULL,
  `stock_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of goods_storage
-- ----------------------------
INSERT INTO `goods_storage` VALUES (1, 1, 8);
INSERT INTO `goods_storage` VALUES (2, 2, 12);

-- ----------------------------
-- Table structure for goods_storage_log
-- ----------------------------
DROP TABLE IF EXISTS `goods_storage_log`;
CREATE TABLE `goods_storage_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `operator_type` int(11) NULL DEFAULT NULL,
  `operator_end_num` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of goods_storage_log
-- ----------------------------
INSERT INTO `goods_storage_log` VALUES (1, '2020-12-26 16:09:28', 1, 1, 1, 10, 10);
INSERT INTO `goods_storage_log` VALUES (2, '2020-12-26 16:09:45', 2, 1, 1, 10, 10);
INSERT INTO `goods_storage_log` VALUES (3, '2020-12-26 16:09:52', 1, 1, 4, 8, -2);
INSERT INTO `goods_storage_log` VALUES (4, '2020-12-28 17:01:51', 2, 1, 2, 11, 1);
INSERT INTO `goods_storage_log` VALUES (5, '2020-12-31 17:25:57', 2, 2, 1, 12, 1);

-- ----------------------------
-- Table structure for hospital_department
-- ----------------------------
DROP TABLE IF EXISTS `hospital_department`;
CREATE TABLE `hospital_department`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of hospital_department
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_ID` int(11) NULL DEFAULT NULL,
  `TYPE` int(1) NULL DEFAULT NULL,
  `URL` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'USER_LIST', '账号管理', 21, 1, '/user/**/*');
INSERT INTO `permission` VALUES (2, 'GOODS_STORAGE_LOG_LIST', '物资操作列表', 26, 1, '/goodsStorageLog/**/*');
INSERT INTO `permission` VALUES (13, 'STORAGE_LIST', '药库库存', 20, NULL, '/storage/**/*');
INSERT INTO `permission` VALUES (14, 'ROOM_STORAGE_LIST', '药房管理', 23, NULL, '/roomStorage/**/*');
INSERT INTO `permission` VALUES (15, 'GOODS_LIST', '物资列表', 26, NULL, '/goods/**/*');
INSERT INTO `permission` VALUES (16, 'GOODS_STORAGE_LIST', '物资库存列表', 26, NULL, '/goodsStorage/**/*');
INSERT INTO `permission` VALUES (17, 'DB_BACK_LOG_LIST', '数据库管理', 21, NULL, '/db/**/*');
INSERT INTO `permission` VALUES (19, 'REGISTER_LIST', '挂号列表', 27, NULL, '/register/**/*');
INSERT INTO `permission` VALUES (20, 'DRUG_STORAGE', '药库管理', NULL, NULL, '');
INSERT INTO `permission` VALUES (21, 'ACCOUNT', '系统管理', NULL, NULL, '');
INSERT INTO `permission` VALUES (22, 'STORAGE_LOG_LIST', '药库操作', 20, NULL, '/storageLog/list/**/*###/storageLog/typeList**/*');
INSERT INTO `permission` VALUES (23, 'DRUG_ROOM', '药房管理', NULL, NULL, '');
INSERT INTO `permission` VALUES (24, 'ROOM_STORAGE_LOG_LIST', '药房操作', 23, NULL, '/roomStorageLog/list/**/*###/roomStorageLog/typeList**/*');
INSERT INTO `permission` VALUES (25, 'ROOM_SEND_LIST', '发药操作', 23, NULL, '/roomSend/list/**/*');
INSERT INTO `permission` VALUES (26, 'GOODS', '物资管理', NULL, NULL, '');
INSERT INTO `permission` VALUES (27, 'REGISTER', '挂号管理', NULL, NULL, '');
INSERT INTO `permission` VALUES (28, 'ROLE_LIST', '角色设置', 21, NULL, '/role/**/*');
INSERT INTO `permission` VALUES (29, 'PERMISSION_LIST', '权限列表', 21, NULL, '/permission/**/*');
INSERT INTO `permission` VALUES (30, 'LOGIN_LOG_LIST', '登录日志', 21, NULL, '/user/loginLog/page');
INSERT INTO `permission` VALUES (31, 'SETTING', '基础设置', NULL, NULL, '');
INSERT INTO `permission` VALUES (32, 'DRUG_LIST', '药品管理', 31, NULL, '/drug/**/*');
INSERT INTO `permission` VALUES (33, 'DRUG_TYPE_LIST', '药品类型管理', 31, NULL, '/drugType/**/*');
INSERT INTO `permission` VALUES (34, 'CUSTOMER_TYPE_LIST', '客人类型管理', 31, NULL, '/customerType/**/*');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CUSTOMER_NO` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `CUSTOMER_TYPE` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES (1, 'test', '211111111', 1, '2020-12-29 11:38:24', 2);
INSERT INTO `register` VALUES (2, 'aa', 'aa', 1, '2020-12-29 11:42:22', 1);
INSERT INTO `register` VALUES (3, '22', '22', 1, '2020-12-29 11:43:34', 2);
INSERT INTO `register` VALUES (4, '33', '333', 1, '2020-12-29 12:02:48', 2);
INSERT INTO `register` VALUES (5, 'aaa', 'aaa', 1, '2020-12-29 12:04:35', 2);
INSERT INTO `register` VALUES (6, 'test1', '111', 2, '2020-12-31 17:25:23', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '管理员');
INSERT INTO `role` VALUES (14, '销售', '销售人员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `ROLE_ID` int(11) NOT NULL,
  `PERMISSION_ID` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (14, 20);
INSERT INTO `role_permission` VALUES (14, 20);
INSERT INTO `role_permission` VALUES (14, 13);
INSERT INTO `role_permission` VALUES (14, 20);
INSERT INTO `role_permission` VALUES (14, 22);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 1);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 17);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 28);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 29);
INSERT INTO `role_permission` VALUES (14, 21);
INSERT INTO `role_permission` VALUES (14, 30);
INSERT INTO `role_permission` VALUES (14, 23);
INSERT INTO `role_permission` VALUES (14, 23);
INSERT INTO `role_permission` VALUES (14, 14);
INSERT INTO `role_permission` VALUES (14, 23);
INSERT INTO `role_permission` VALUES (14, 24);
INSERT INTO `role_permission` VALUES (14, 23);
INSERT INTO `role_permission` VALUES (14, 25);
INSERT INTO `role_permission` VALUES (14, 26);
INSERT INTO `role_permission` VALUES (14, 26);
INSERT INTO `role_permission` VALUES (14, 2);
INSERT INTO `role_permission` VALUES (14, 26);
INSERT INTO `role_permission` VALUES (14, 15);
INSERT INTO `role_permission` VALUES (14, 26);
INSERT INTO `role_permission` VALUES (14, 16);
INSERT INTO `role_permission` VALUES (14, 27);
INSERT INTO `role_permission` VALUES (14, 27);
INSERT INTO `role_permission` VALUES (14, 19);
INSERT INTO `role_permission` VALUES (14, 31);
INSERT INTO `role_permission` VALUES (14, 31);
INSERT INTO `role_permission` VALUES (14, 32);
INSERT INTO `role_permission` VALUES (14, 31);
INSERT INTO `role_permission` VALUES (14, 33);
INSERT INTO `role_permission` VALUES (14, 31);
INSERT INTO `role_permission` VALUES (14, 34);

-- ----------------------------
-- Table structure for room_send
-- ----------------------------
DROP TABLE IF EXISTS `room_send`;
CREATE TABLE `room_send`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `register_id` int(11) NULL DEFAULT NULL,
  `drug_id` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `operator_end_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of room_send
-- ----------------------------
INSERT INTO `room_send` VALUES (1, '2020-12-29 18:45:27', 1, 3, 2, 1, 9);
INSERT INTO `room_send` VALUES (2, '2020-12-29 18:53:14', 1, 2, 2, 1, 10);
INSERT INTO `room_send` VALUES (3, '2020-12-29 18:53:15', 1, 2, 2, 1, 11);
INSERT INTO `room_send` VALUES (4, '2020-12-29 18:53:49', 1, 2, 3, 1, 12);
INSERT INTO `room_send` VALUES (5, '2020-12-30 13:44:08', 1, 1, 2, -1, 10);
INSERT INTO `room_send` VALUES (6, '2020-12-30 13:44:50', 1, 2, 2, -1, 9);
INSERT INTO `room_send` VALUES (7, '2020-12-30 13:44:50', 1, 2, 2, -1, 8);
INSERT INTO `room_send` VALUES (8, '2020-12-30 15:26:06', 1, 2, 3, -1, 11);
INSERT INTO `room_send` VALUES (9, '2020-12-30 15:49:02', 1, 1, 3, -1, 10);
INSERT INTO `room_send` VALUES (10, '2020-12-30 15:49:02', 1, 1, 2, -1, 7);
INSERT INTO `room_send` VALUES (11, '2020-12-30 18:40:40', 1, 2, 3, -1, 9);
INSERT INTO `room_send` VALUES (12, '2020-12-30 18:40:40', 1, 2, 2, -1, 6);

-- ----------------------------
-- Table structure for room_storage
-- ----------------------------
DROP TABLE IF EXISTS `room_storage`;
CREATE TABLE `room_storage`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRUG_ID` int(11) NULL DEFAULT NULL,
  `stock_num` int(11) NULL DEFAULT NULL,
  `validity_end_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of room_storage
-- ----------------------------
INSERT INTO `room_storage` VALUES (1, 2, 6, '2020-12-18');
INSERT INTO `room_storage` VALUES (2, 3, 9, '2020-12-16');

-- ----------------------------
-- Table structure for room_storage_log
-- ----------------------------
DROP TABLE IF EXISTS `room_storage_log`;
CREATE TABLE `room_storage_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRUG_ID` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `validity_end_time` date NULL DEFAULT NULL,
  `OPERATOR_TYPE` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `operator_end_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of room_storage_log
-- ----------------------------
INSERT INTO `room_storage_log` VALUES (1, 2, '2020-12-28 00:00:00', NULL, 1, 10, 1, 10);
INSERT INTO `room_storage_log` VALUES (2, 3, '2020-12-28 00:00:00', NULL, 1, 10, 1, 10);
INSERT INTO `room_storage_log` VALUES (3, 2, '2020-12-28 00:00:00', NULL, 4, -1, 1, 9);
INSERT INTO `room_storage_log` VALUES (4, 3, '2020-12-28 00:00:00', NULL, 1, 1, 1, 11);
INSERT INTO `room_storage_log` VALUES (5, 2, '2020-12-28 17:04:01', NULL, 4, -1, 1, 8);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMP_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `IS_ENABLE` int(1) NULL DEFAULT NULL,
  `THEME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$/jx0iwcYqY8Cjbt00C4bQ.iKSwBKU995hX2pvkFSiwBZ5o7a3cDAO', 'admin', '2020-12-28 19:12:53', 1, 'rgba(15, 40, 77, 1)');
INSERT INTO `user` VALUES (2, 'test', '$2a$10$AClHDfsWiYcUpJASmXR0hu7dUL38ACFi/1xiyxSFnEj2qrLFVh7E6', 'test', '2020-12-31 15:20:02', 1, NULL);

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGIN_TIME` datetime NULL DEFAULT NULL,
  `des` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------
INSERT INTO `user_login_log` VALUES (1, 'admin', '2020-12-23 16:28:38', '登陆');
INSERT INTO `user_login_log` VALUES (2, 'admin', '2020-12-23 19:13:50', '登陆');
INSERT INTO `user_login_log` VALUES (3, 'admin', '2020-12-24 11:15:23', '登陆');
INSERT INTO `user_login_log` VALUES (4, 'admin', '2020-12-24 12:25:37', '登陆');
INSERT INTO `user_login_log` VALUES (5, 'admin', '2020-12-24 12:29:22', '登陆');
INSERT INTO `user_login_log` VALUES (6, 'admin', '2020-12-24 12:29:53', '登陆');
INSERT INTO `user_login_log` VALUES (7, 'admin', '2020-12-24 12:30:29', '登陆');
INSERT INTO `user_login_log` VALUES (8, 'admin', '2020-12-24 12:43:11', '登陆');
INSERT INTO `user_login_log` VALUES (9, 'admin', '2020-12-24 13:09:49', '登陆');
INSERT INTO `user_login_log` VALUES (10, 'admin', '2020-12-24 13:16:42', '登陆');
INSERT INTO `user_login_log` VALUES (11, 'admin', '2020-12-24 13:17:58', '登陆');
INSERT INTO `user_login_log` VALUES (12, 'admin', '2020-12-24 13:31:15', '登陆');
INSERT INTO `user_login_log` VALUES (13, 'admin', '2020-12-24 14:41:40', '登陆');
INSERT INTO `user_login_log` VALUES (14, 'admin', '2020-12-24 17:11:26', '登陆');
INSERT INTO `user_login_log` VALUES (15, 'admin', '2020-12-24 17:25:18', '登陆');
INSERT INTO `user_login_log` VALUES (16, 'admin', '2020-12-24 18:29:05', '登陆');
INSERT INTO `user_login_log` VALUES (17, 'admin', '2020-12-25 12:26:33', '登陆');
INSERT INTO `user_login_log` VALUES (18, 'admin', '2020-12-25 13:06:36', '登陆');
INSERT INTO `user_login_log` VALUES (19, 'admin', '2020-12-25 13:46:31', '登陆');
INSERT INTO `user_login_log` VALUES (20, 'admin', '2020-12-25 16:32:22', '登陆');
INSERT INTO `user_login_log` VALUES (21, 'admin', '2020-12-26 14:54:22', '登陆');
INSERT INTO `user_login_log` VALUES (22, 'admin', '2020-12-26 16:02:00', '登陆');
INSERT INTO `user_login_log` VALUES (23, 'admin', '2020-12-26 17:22:11', '登陆');
INSERT INTO `user_login_log` VALUES (24, 'admin', '2020-12-28 15:27:19', '登陆');
INSERT INTO `user_login_log` VALUES (25, 'admin', '2020-12-28 16:58:04', '登陆');
INSERT INTO `user_login_log` VALUES (26, 'admin', '2020-12-28 18:51:42', '登陆');
INSERT INTO `user_login_log` VALUES (27, 'admin', '2020-12-28 19:13:08', '登陆');
INSERT INTO `user_login_log` VALUES (28, 'admin', '2020-12-29 11:00:22', '登陆');
INSERT INTO `user_login_log` VALUES (29, 'admin', '2020-12-29 11:31:40', '登陆');
INSERT INTO `user_login_log` VALUES (30, 'admin', '2020-12-29 11:52:24', '登陆');
INSERT INTO `user_login_log` VALUES (31, 'admin', '2020-12-29 12:07:25', '登陆');
INSERT INTO `user_login_log` VALUES (32, 'admin', '2020-12-29 17:15:07', '登陆');
INSERT INTO `user_login_log` VALUES (33, 'admin', '2020-12-29 18:15:25', '登陆');
INSERT INTO `user_login_log` VALUES (34, 'admin', '2020-12-30 12:41:18', '登陆');
INSERT INTO `user_login_log` VALUES (35, 'admin', '2020-12-30 13:10:13', '登陆');
INSERT INTO `user_login_log` VALUES (36, 'admin', '2020-12-30 15:25:48', '登陆');
INSERT INTO `user_login_log` VALUES (37, 'admin', '2020-12-30 15:43:03', '登陆');
INSERT INTO `user_login_log` VALUES (38, 'admin', '2020-12-30 15:48:23', '登陆');
INSERT INTO `user_login_log` VALUES (39, 'admin', '2020-12-30 17:14:05', '登陆');
INSERT INTO `user_login_log` VALUES (40, 'admin', '2020-12-30 17:35:10', '登陆');
INSERT INTO `user_login_log` VALUES (41, 'admin', '2020-12-31 10:46:27', '登陆');
INSERT INTO `user_login_log` VALUES (42, 'admin', '2020-12-31 11:30:19', '登陆');
INSERT INTO `user_login_log` VALUES (43, 'admin', '2020-12-31 14:34:36', '登陆');
INSERT INTO `user_login_log` VALUES (44, 'admin', '2020-12-31 15:20:57', '登陆');
INSERT INTO `user_login_log` VALUES (45, 'test', '2020-12-31 15:21:25', '登陆');
INSERT INTO `user_login_log` VALUES (46, 'test', '2020-12-31 15:24:00', '登陆');
INSERT INTO `user_login_log` VALUES (47, 'test', '2020-12-31 15:24:49', '登陆');
INSERT INTO `user_login_log` VALUES (48, 'test', '2020-12-31 15:25:59', '登陆');
INSERT INTO `user_login_log` VALUES (49, 'test', '2020-12-31 15:27:22', '登陆');
INSERT INTO `user_login_log` VALUES (50, 'test', '2020-12-31 15:28:22', '登陆');
INSERT INTO `user_login_log` VALUES (51, 'admin', '2020-12-31 15:28:40', '登陆');
INSERT INTO `user_login_log` VALUES (52, 'test', '2020-12-31 15:29:19', '登陆');
INSERT INTO `user_login_log` VALUES (53, 'test', '2020-12-31 15:29:39', '登陆');
INSERT INTO `user_login_log` VALUES (54, 'test', '2020-12-31 15:47:01', '登陆');
INSERT INTO `user_login_log` VALUES (55, 'test', '2020-12-31 15:49:14', '登陆');
INSERT INTO `user_login_log` VALUES (56, 'test', '2020-12-31 16:06:02', '登陆');
INSERT INTO `user_login_log` VALUES (57, 'test', '2020-12-31 16:07:29', '登陆');
INSERT INTO `user_login_log` VALUES (58, 'test', '2020-12-31 16:09:14', '登陆');
INSERT INTO `user_login_log` VALUES (59, 'admin', '2020-12-31 16:09:50', '登陆');
INSERT INTO `user_login_log` VALUES (60, 'test', '2020-12-31 16:09:57', '登陆');
INSERT INTO `user_login_log` VALUES (61, 'test', '2020-12-31 16:11:40', '登陆');
INSERT INTO `user_login_log` VALUES (62, 'test', '2020-12-31 16:12:14', '登陆');
INSERT INTO `user_login_log` VALUES (63, 'test', '2020-12-31 16:12:51', '登陆');
INSERT INTO `user_login_log` VALUES (64, 'test', '2020-12-31 16:13:29', '登陆');
INSERT INTO `user_login_log` VALUES (65, 'test', '2020-12-31 16:42:38', '登陆');
INSERT INTO `user_login_log` VALUES (66, 'test', '2020-12-31 16:46:11', '登陆');
INSERT INTO `user_login_log` VALUES (67, 'test', '2020-12-31 16:46:37', '登陆');
INSERT INTO `user_login_log` VALUES (68, 'test', '2020-12-31 16:46:51', '登陆');
INSERT INTO `user_login_log` VALUES (69, 'admin', '2020-12-31 16:48:17', '登陆');
INSERT INTO `user_login_log` VALUES (70, 'test', '2020-12-31 16:48:24', '登陆');
INSERT INTO `user_login_log` VALUES (71, 'test', '2020-12-31 16:48:49', '登陆');
INSERT INTO `user_login_log` VALUES (72, 'test', '2020-12-31 17:01:38', '登陆');
INSERT INTO `user_login_log` VALUES (73, 'admin', '2020-12-31 17:02:02', '登陆');
INSERT INTO `user_login_log` VALUES (74, 'admin', '2020-12-31 17:02:48', '登陆');
INSERT INTO `user_login_log` VALUES (75, 'test', '2020-12-31 17:07:03', '登陆');
INSERT INTO `user_login_log` VALUES (76, 'test', '2020-12-31 17:07:26', '登陆');
INSERT INTO `user_login_log` VALUES (77, 'test', '2020-12-31 17:10:14', '登陆');
INSERT INTO `user_login_log` VALUES (78, 'test', '2020-12-31 17:19:28', '登陆');
INSERT INTO `user_login_log` VALUES (79, 'admin', '2020-12-31 17:19:41', '登陆');
INSERT INTO `user_login_log` VALUES (80, 'test', '2020-12-31 17:20:04', '登陆');
INSERT INTO `user_login_log` VALUES (81, 'test', '2020-12-31 17:22:16', '登陆');
INSERT INTO `user_login_log` VALUES (82, 'test', '2020-12-31 17:23:26', '登陆');
INSERT INTO `user_login_log` VALUES (83, 'test', '2020-12-31 17:24:55', '登陆');
INSERT INTO `user_login_log` VALUES (84, 'admin', '2020-12-31 17:31:14', '登陆');
INSERT INTO `user_login_log` VALUES (85, 'admin', '2020-12-31 17:34:16', '登陆');
INSERT INTO `user_login_log` VALUES (86, 'admin', '2020-12-31 18:13:01', '登陆');
INSERT INTO `user_login_log` VALUES (87, 'admin', '2021-01-01 20:40:01', '登陆');
INSERT INTO `user_login_log` VALUES (88, 'admin', '2022-02-23 21:59:48', '登陆');
INSERT INTO `user_login_log` VALUES (89, 'admin', '2022-02-23 23:02:35', '登陆');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (2, 14);

SET FOREIGN_KEY_CHECKS = 1;
