/*
 Navicat MySQL Data Transfer

 Source Server         : sqfw
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : sq

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 05/05/2021 12:48:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `orderId` int NOT NULL,
  `service_ID` int NOT NULL,
  `resident_ID` int UNSIGNED NOT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1001, 1, 1);
INSERT INTO `order` VALUES (1002, 1, 2);
INSERT INTO `order` VALUES (1003, 2, 1);
INSERT INTO `order` VALUES (1004, 3, 3);

-- ----------------------------
-- Table structure for resident
-- ----------------------------
DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident`  (
  `residentId` int NOT NULL,
  `phone number` int NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of resident
-- ----------------------------
INSERT INTO `resident` VALUES (1, 123456, '101');
INSERT INTO `resident` VALUES (2, 254367, '102');
INSERT INTO `resident` VALUES (3, 312566, '103');
INSERT INTO `resident` VALUES (4, 446722, '104');
INSERT INTO `resident` VALUES (5, 545773, '105');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `serviceId` int NOT NULL,
  `name` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `work` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `evaluate` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fee` int NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`serviceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 'aa', 'clean', 'good', 60, 1200);
INSERT INTO `service` VALUES (2, 'bb', 'clean', 'bad', 50, 1000);
INSERT INTO `service` VALUES (3, 'cc', 'fix', 'good', 60, 1800);
INSERT INTO `service` VALUES (4, 'dd', 'fix', 'bad', 70, 1400);
INSERT INTO `service` VALUES (5, 'ee', 'teach', 'good', 60, 1200);

-- ----------------------------
-- View structure for cx
-- ----------------------------
DROP VIEW IF EXISTS `cx`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cx` AS select `order`.`orderId` AS `orderId`,`service`.`serviceId` AS `serviceId`,`service`.`name` AS `name`,`service`.`work` AS `work`,`service`.`evaluate` AS `evaluate`,`service`.`fee` AS `fee`,`service`.`salary` AS `salary`,`resident`.`residentId` AS `residentId`,`resident`.`phone number` AS `phone number`,`resident`.`address` AS `address` from ((`order` join `service` on((`order`.`service_ID` = `service`.`serviceId`))) join `resident` on((`order`.`resident_ID` = `resident`.`residentId`)));

SET FOREIGN_KEY_CHECKS = 1;
