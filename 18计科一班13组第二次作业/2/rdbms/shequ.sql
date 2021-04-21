use shequ;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` int(11) NOT NULL,
  `name` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `work` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `evaluate` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fee` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;


INSERT INTO `service` VALUES (00001, 'aa', 'clean' , 'good' , 60 , 1200);
INSERT INTO `service` VALUES (00002, 'bb', 'clean' , 'bad' , 50 , 1000);
INSERT INTO `service` VALUES (00003, 'cc', 'fix' , 'good' , 60 , 1800);
INSERT INTO `service` VALUES (00004, 'dd', 'fix' , 'bad' , 70 , 1400);
INSERT INTO `service` VALUES (00005, 'ee', 'teach' , 'good' , 60 , 1200);

-- ----------------------------

DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident`  (
  `id`  int(11) NOT NULL,
   `phone number` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;


INSERT INTO `resident` VALUES (001, '123456', '101');
INSERT INTO `resident` VALUES (002, '254367', '102');
INSERT INTO `resident` VALUES (003, '312566', '103');
INSERT INTO `resident` VALUES (004, '446722', '104');
INSERT INTO `resident` VALUES (005, '545773', '105');

-- ----------------------------

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL,
  `service_ID` int(11) NOT NULL,
  `resident_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;


INSERT INTO `order` VALUES (1001, 00001, 001);
INSERT INTO `order` VALUES (1002, 00001, 002);
INSERT INTO `order` VALUES (1003, 00002, 001);
INSERT INTO `order` VALUES (1004, 00003, 003);

SET FOREIGN_KEY_CHECKS = 1;



