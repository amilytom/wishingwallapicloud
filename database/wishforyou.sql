/*
 Navicat Premium Data Transfer

 Source Server         : 本地MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : wishforyou

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 05/09/2020 12:22:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `role` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色',
  `last_login_at` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '111', '张三', 1, '2020-09-05 10:55:38', '2020-09-04 08:36:40', '2020-09-05 10:55:38');
INSERT INTO `admin` VALUES (2, 'lihai', '222', '李四', 1, NULL, '2020-09-04 21:38:06', '2020-09-04 21:38:51');
INSERT INTO `admin` VALUES (3, 'tom', '333', '汤姆', 2, NULL, '2020-09-04 21:38:43', NULL);
INSERT INTO `admin` VALUES (4, 'wang', '444', '王五', 1, NULL, '2020-09-04 09:39:25', NULL);
INSERT INTO `admin` VALUES (5, 'linda', '555', '李达', 2, '2020-09-05 11:18:37', '2020-09-04 21:40:17', '2020-09-05 11:18:37');

-- ----------------------------
-- Table structure for wish
-- ----------------------------
DROP TABLE IF EXISTS `wish`;
CREATE TABLE `wish`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '许愿姓名',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '许愿内容',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '许愿表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wish
-- ----------------------------
INSERT INTO `wish` VALUES (1, '小王', '希望明天天晴', '2020-09-02 20:12:28', NULL);
INSERT INTO `wish` VALUES (2, '小华', '向天再借五百年', '2020-09-01 20:13:04', NULL);
INSERT INTO `wish` VALUES (3, '小张', '希望今晚能够中福彩头等奖', '2020-09-02 20:13:49', NULL);
INSERT INTO `wish` VALUES (4, '小李', '开心快乐每一天', '2020-09-01 20:14:16', NULL);
INSERT INTO `wish` VALUES (5, '小明', '明天就要开学了，希望学校拆迁', '2020-09-01 09:15:01', NULL);
INSERT INTO `wish` VALUES (6, '呵呵', '陌生的城市陌生的人都要好', '2020-09-01 12:15:47', NULL);
INSERT INTO `wish` VALUES (7, '罗阳', '明天实现财富自由', '2020-09-01 20:16:47', NULL);
INSERT INTO `wish` VALUES (8, '测试', '祝福程序无bug', '2020-09-02 20:17:21', NULL);
INSERT INTO `wish` VALUES (9, '明天', '祝福明天会更好！', '2020-09-04 20:17:54', NULL);
INSERT INTO `wish` VALUES (10, '你好', '你好！程序！', '2020-09-03 08:18:24', NULL);
INSERT INTO `wish` VALUES (11, '小飞', '中年失业的困境快点gun', '2020-09-01 20:19:20', '2020-09-02 20:19:42');
INSERT INTO `wish` VALUES (12, '好累', '明天会更好！', '2020-09-02 23:03:43', '2020-09-02 23:03:43');
INSERT INTO `wish` VALUES (13, '钱大', '明天财富自由', '2020-09-02 23:08:10', '2020-09-02 23:08:10');
INSERT INTO `wish` VALUES (14, '大宝', '明天考一百分', '2020-09-03 20:50:43', '2020-09-03 20:50:43');
INSERT INTO `wish` VALUES (15, '汤宝宝', '明天考试门门一百', '2020-09-03 20:53:35', '2020-09-03 20:53:35');
INSERT INTO `wish` VALUES (16, '浩浩', '明天乖乖的', '2020-09-03 21:18:00', '2020-09-03 21:18:00');
INSERT INTO `wish` VALUES (17, '小宝', '身体健康', '2020-09-03 21:25:33', '2020-09-03 21:25:33');

SET FOREIGN_KEY_CHECKS = 1;
