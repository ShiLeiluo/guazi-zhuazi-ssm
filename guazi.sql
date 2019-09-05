/*
 Navicat MySQL Data Transfer

 Source Server         : SHILEI
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : guazi

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 05/09/2019 10:11:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('15797874652');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cartime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nowprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cityname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(50) DEFAULT NULL,
  `mile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `demage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cspeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 'file/qn18051718435418808dac917b57b05074d1973d1fc46b.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (2, 'file/qn18051718435418808dac917b57b05074d1973d1fc46b.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (3, 'file/4.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (4, 'file/5.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (5, 'file/6.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (6, 'file/7.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (7, 'file/8.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (8, 'file/9.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (9, 'file/6.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (10, 'file/3.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (11, 'file/4.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (12, 'file/5.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (13, 'file/6.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (14, 'file/7.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (15, 'file/8.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (16, 'file/9.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (17, 'file/4.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (18, 'file/3.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (19, 'file/6.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (20, 'file/6.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (21, 'file/4.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (22, 'file/3.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (23, 'file/4.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '深圳', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (24, 'file/3.jpg', '大众速腾 2009款 1.6L 自动时...', '2009年 丨 5.9万公里', '9.90', '12.7', '南昌', '15797874652', 3, '3', '10%', '3', '已核实');
INSERT INTO `car` VALUES (25, 'file/29makeFriend.jpg', '1', '1', '1', '1', '深圳', '15797874652', 1, '1', '70%', '1', '未核实');
INSERT INTO `car` VALUES (26, 'file/29makeFriend.jpg', '1', '1', '1', '1', '深圳', '15797874652', 1, '1', '55%', '1', '未核实');
INSERT INTO `car` VALUES (27, 'file/29makeFriend.jpg', '2', '2', '2', '2', '深圳', '15797874652', 2, '2', '75%', '2', '未核实');
INSERT INTO `car` VALUES (28, 'file/29makeFriend.jpg', '1', '1', '1', '1', '深圳', '15797874652', 1, '1', '60%', '1', '未核实');
INSERT INTO `car` VALUES (29, 'file/29makeFriend.jpg', '3', '3', '3', '3', '3', '3', 3, '3', '75%', '3', '未核实');

-- ----------------------------
-- Table structure for car_chassis_brake_info
-- ----------------------------
DROP TABLE IF EXISTS `car_chassis_brake_info`;
CREATE TABLE `car_chassis_brake_info`  (
  `id` int(255) NOT NULL,
  `drive_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '驱动方式（选填）',
  `auto_power_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '助力类型',
  `front_suspension_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前悬挂类型',
  `rear_suspension_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后悬挂类型',
  `front_brake_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前制动类型',
  `rear_brake_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后制动类型',
  `parking_brake_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '驻车制动类型（选填）',
  `front_wheel_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前轮胎规格',
  `rear_wheel_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后轮胎规格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_chassis_brake_info
-- ----------------------------
INSERT INTO `car_chassis_brake_info` VALUES (1, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (2, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (3, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (4, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (5, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (6, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (7, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (8, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (9, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (10, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (11, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (12, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (13, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (14, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (15, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (16, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (17, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (18, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (19, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (20, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (21, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (22, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (23, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');
INSERT INTO `car_chassis_brake_info` VALUES (24, '前置前驱', '电动助力', '麦弗逊式独立悬挂', '四连杆式独立悬挂', '通风盘式', '盘式', '手刹', '205/55 R16', '205/55 R16');

-- ----------------------------
-- Table structure for car_collect
-- ----------------------------
DROP TABLE IF EXISTS `car_collect`;
CREATE TABLE `car_collect`  (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `collectid` int(50) DEFAULT NULL,
  `collectedid` int(50) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_collect
-- ----------------------------
INSERT INTO `car_collect` VALUES (1, 1, 15);
INSERT INTO `car_collect` VALUES (9, 1, 4);
INSERT INTO `car_collect` VALUES (10, 1, 22);

-- ----------------------------
-- Table structure for car_engine_info
-- ----------------------------
DROP TABLE IF EXISTS `car_engine_info`;
CREATE TABLE `car_engine_info`  (
  `id` int(255) NOT NULL,
  `displacement` double(5, 1) DEFAULT NULL COMMENT '排量（ml） 不为空',
  `intake_form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '进气形式（不为空）',
  `cylinder_arrangement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '汽缸排列方式（不为空）',
  `cylinders` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '汽缸数（不为空）',
  `maximum_horsepower` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最大马力',
  `fuel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '燃料类型（不为空）',
  `fuel_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '燃油标号（不为空）',
  `oilsupply_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供油方式',
  `enviroment_standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排放标准（不为空）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_engine_info
-- ----------------------------
INSERT INTO `car_engine_info` VALUES (1, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (2, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (3, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (4, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (5, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (6, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (7, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (8, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (9, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (10, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (11, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (12, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (13, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (14, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (15, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (16, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (17, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (18, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (19, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (20, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (21, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (22, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (23, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');
INSERT INTO `car_engine_info` VALUES (24, 1598.0, '自然吸气', '直列（L型）', '4', '105', '汽油', '93号（京92号）', '多点电喷', '国IV/国V');

-- ----------------------------
-- Table structure for car_external_info
-- ----------------------------
DROP TABLE IF EXISTS `car_external_info`;
CREATE TABLE `car_external_info`  (
  `id` int(255) NOT NULL,
  `electronic_sunroof` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电动天窗',
  `panoramic_sunroof` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '全景天窗',
  `electronic_door_pull` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电动吸合门',
  `electronic_trunk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电动后备箱',
  `rain_sensing_wipers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '雨量感应雨刷',
  `rear_wiper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后雨刷',
  `power_window` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前/后电动车窗',
  `electronic_rearview_mirror` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电动后视镜',
  `rearview_mirror_heating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后视镜加热',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_external_info
-- ----------------------------
INSERT INTO `car_external_info` VALUES (1, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (2, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (3, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (4, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (5, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (6, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (8, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (9, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (10, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (11, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (12, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (13, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (14, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (15, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (16, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (17, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (18, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (19, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (20, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (21, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (22, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (23, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');
INSERT INTO `car_external_info` VALUES (24, 'y', 'n', 'n', 'n', 'n', 'n', '前 y / 后 y', 'y', 'y');

-- ----------------------------
-- Table structure for car_internal_info
-- ----------------------------
DROP TABLE IF EXISTS `car_internal_info`;
CREATE TABLE `car_internal_info`  (
  `id` int(255) NOT NULL,
  `mf_steering_wheel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '多功能方向盘',
  `dlcc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '定速巡航',
  `automatic_air_con` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自动空调',
  `manual_air_con` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手动空调',
  `gps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'GPS导航',
  `parking_redar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '倒车雷达',
  `reverse_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '倒车影像',
  `leather_seat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真皮座椅',
  `seat_heating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前后排座椅加热',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_internal_info
-- ----------------------------
INSERT INTO `car_internal_info` VALUES (1, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (2, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (3, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (4, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (5, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (6, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (7, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (8, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (9, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (10, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (11, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (12, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (13, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (14, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (15, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (16, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (17, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (18, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (19, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (20, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (21, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (22, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (23, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');
INSERT INTO `car_internal_info` VALUES (24, 'n', 'y', 'n', 'y', 'n', '前 n / 后 ○', 'n', 'n', 'n');

-- ----------------------------
-- Table structure for car_order
-- ----------------------------
DROP TABLE IF EXISTS `car_order`;
CREATE TABLE `car_order`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `orderedid` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_order
-- ----------------------------
INSERT INTO `car_order` VALUES (2, 1, 19, '未交易');
INSERT INTO `car_order` VALUES (6, 1, 7, '未交易');
INSERT INTO `car_order` VALUES (10, 1, 4, '未交易');
INSERT INTO `car_order` VALUES (11, 1, 22, '已交易');

-- ----------------------------
-- Table structure for car_safety_info
-- ----------------------------
DROP TABLE IF EXISTS `car_safety_info`;
CREATE TABLE `car_safety_info`  (
  `id` int(255) NOT NULL COMMENT '汽车编号',
  `front_airbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主/副驾驶安全气囊',
  `head_airbag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前/后排头部气囊',
  `child_seat_int` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '儿童座椅接口',
  `tpms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '胎压检测',
  `car_lock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车内中控锁',
  `abs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' ABS防抱死系统',
  `usc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车身稳定控制',
  `pss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '无钥匙启动',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_safety_info
-- ----------------------------
INSERT INTO `car_safety_info` VALUES (1, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (2, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (3, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (4, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (5, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (6, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (7, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (8, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (9, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (10, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (11, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (12, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (13, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (14, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (15, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (16, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (17, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (18, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (19, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (20, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (21, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (22, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (23, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');
INSERT INTO `car_safety_info` VALUES (24, '主 y / 副 y', 'n', 'y', '○', 'y', 'y', 'y', 'n');

-- ----------------------------
-- Table structure for carinfo
-- ----------------------------
DROP TABLE IF EXISTS `carinfo`;
CREATE TABLE `carinfo`  (
  `id` int(50) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `engine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gearbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bodyStructure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `maximumspeed` int(10) DEFAULT NULL,
  `cargoVolume` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carinfo
-- ----------------------------
INSERT INTO `carinfo` VALUES (1, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (2, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (3, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (4, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (5, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (6, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (7, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (8, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (9, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (10, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (11, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (12, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (13, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (14, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (15, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (16, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (17, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (18, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (19, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (20, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (21, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (22, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (23, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');
INSERT INTO `carinfo` VALUES (24, '\r\n大众', 'A', '77kW<br>(1.6L自然吸气)', '5挡MT', '4门 5座 三厢轿车', '4644×1778×1482', 185, '510');

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title`  (
  `adcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('440300', '【深圳二手车】深圳二手车市场_个人二手车转让-瓜子二手车直卖网', '深圳');
INSERT INTO `title` VALUES ('360100', '【南昌二手车】南昌二手车市场_个人二手车转让-瓜子二手车直卖网', '南昌');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(50) DEFAULT NULL,
  `phonenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `registertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '瓜甜吗', '瓜真甜', '男', 22, '15797874652', '11111111111@qq.com', '2019-08-28 20:10:47');
INSERT INTO `user` VALUES (2, '卖瓜', '瓜保甜', '男', 22, '15797863227', '22222222222@qq.com', '2019-08-28 20:10:47');

SET FOREIGN_KEY_CHECKS = 1;
