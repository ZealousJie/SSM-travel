/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : userdemo

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/09/2022 10:37:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dorder
-- ----------------------------
DROP TABLE IF EXISTS `dorder`;
CREATE TABLE `dorder`  (
  `did` int(11) NOT NULL,
  `oid` int(11) NULL DEFAULT NULL,
  `dprice` decimal(10, 2) NULL DEFAULT NULL,
  `dpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  CONSTRAINT `dorder_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `orderlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorder
-- ----------------------------
INSERT INTO `dorder` VALUES (1, 1, 1000.00, 'img/ban1.jpg');
INSERT INTO `dorder` VALUES (2, 4, 4000.00, 'img/ban2.jpg');
INSERT INTO `dorder` VALUES (3, 8, 999.00, 'img/ban3.jpg');
INSERT INTO `dorder` VALUES (4, 9, 3000.00, 'img/ban4.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `nid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `travelId` int(11) NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `pnum` int(5) NULL DEFAULT NULL COMMENT '????????????',
  `uid` int(11) NOT NULL COMMENT '????????????????????????Id',
  `odate` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '????????????',
  `ttime` datetime(6) NULL DEFAULT NULL COMMENT '??????????????????',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_travel`(`travelId`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `order_travel` FOREIGN KEY (`travelId`) REFERENCES `travel` (`travelid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES (1, 1, 1230.00, 3, 1, '2022-03-06 00:00:00.000000', '2022-06-14 00:20:20.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (2, 1, 1230.00, 3, 2, '2022-03-06 00:00:00.000000', '2022-06-09 22:20:20.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (3, 1, 1230.00, 3, 3, '2022-03-06 00:00:00.000000', '2022-06-09 22:20:20.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (4, 2, 5200.00, 4, 4, '2022-03-06 00:00:00.000000', '2022-04-07 13:04:01.593911', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (5, 2, 5200.00, 4, 5, '2022-03-06 00:00:00.000000', '2022-04-07 13:04:01.593911', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (6, 2, 5200.00, 4, 6, '2022-03-06 00:00:00.000000', '2022-04-07 13:04:01.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (7, 2, 5200.00, 4, 7, '2022-03-06 00:00:00.000000', '2022-04-07 13:04:01.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (8, 3, 1111.00, 1, 1, '2022-03-06 00:00:00.000000', '2022-06-07 13:04:01.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (9, 4, 3333.00, 2, 2, '2022-03-06 00:00:00.000000', '2022-06-07 13:04:01.000000', '?????????????????????', '???????????????');
INSERT INTO `orderlist` VALUES (10, 4, 3333.00, 2, 3, '2022-03-06 00:00:00.000000', '2022-05-19 11:29:19.864878', '?????????????????????', '???????????????');
INSERT INTO `orderlist` VALUES (11, 4, 6666.00, 2, 4, '2022-03-06 00:00:00.000000', '2022-06-19 11:29:19.864878', '???????????????????????????', '???????????????');
INSERT INTO `orderlist` VALUES (12, 2, 4000.00, 1, 1, '2022-03-06 00:00:00.000000', '2022-06-19 11:29:19.864878', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (13, 2, 4000.00, 1, 2, '2022-06-11 19:09:31.000000', '2022-06-19 11:29:19.864000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (14, 1, 1230.00, 3, 2, '2022-06-11 19:11:11.000000', '2022-06-14 00:20:20.000000', '???????????????', '???????????????');
INSERT INTO `orderlist` VALUES (15, 4, 6666.00, 2, 2, '2022-06-12 20:22:14.000000', '2022-06-19 11:29:19.864000', '???????????????????????????', '???????????????');
INSERT INTO `orderlist` VALUES (16, 4, 6666.00, 2, 2, '2022-06-12 20:33:50.000000', '2022-06-19 11:29:19.864000', '???????????????????????????', '???????????????');
INSERT INTO `orderlist` VALUES (17, 2, 4000.00, 1, 1, '2022-06-13 11:27:52.000000', '2022-06-19 11:29:19.864000', '???????????????', '???????????????');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roledes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '???????????????', '140910@qq.com', '????????????????????????');
INSERT INTO `role` VALUES (2, '?????????', '141948@qq.com', '????????????????????????');
INSERT INTO `role` VALUES (3, '?????????', '1413152@qq.com', '??????????????????');
INSERT INTO `role` VALUES (4, '????????????', '???', '??????');
INSERT INTO `role` VALUES (5, '??????', '???', '??????????????????');

-- ----------------------------
-- Table structure for scen
-- ----------------------------
DROP TABLE IF EXISTS `scen`;
CREATE TABLE `scen`  (
  `sid` int(11) NOT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `hid`(`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scen
-- ----------------------------
INSERT INTO `scen` VALUES (1, 4, '?????????', 'img/main1.png');
INSERT INTO `scen` VALUES (2, 4, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (3, 4, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (4, 3, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (5, 3, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (6, 3, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (7, 2, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (8, 2, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (9, 2, '????????????', 'img/main1.png');
INSERT INTO `scen` VALUES (10, 1, '????????????', 'img/main1.png');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '2022-06-11 17:10:04');

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
CREATE TABLE `travel`  (
  `travelId` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tdescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`travelId`) USING BTREE,
  INDEX `travelId`(`travelId`) USING BTREE,
  INDEX `travelId_2`(`travelId`) USING BTREE,
  INDEX `travelId_3`(`travelId`) USING BTREE,
  INDEX `travelId_4`(`travelId`) USING BTREE,
  INDEX `travelId_5`(`travelId`) USING BTREE,
  INDEX `travelId_6`(`travelId`) USING BTREE,
  INDEX `travelId_7`(`travelId`) USING BTREE,
  INDEX `travelId_8`(`travelId`) USING BTREE,
  INDEX `travelId_9`(`travelId`) USING BTREE,
  INDEX `travelId_10`(`travelId`) USING BTREE,
  INDEX `travelId_11`(`travelId`) USING BTREE,
  INDEX `travelId_12`(`travelId`) USING BTREE,
  INDEX `travelId_13`(`travelId`) USING BTREE,
  INDEX `travelId_14`(`travelId`) USING BTREE,
  INDEX `travelId_15`(`travelId`) USING BTREE,
  INDEX `travelId_16`(`travelId`) USING BTREE,
  INDEX `travelId_17`(`travelId`) USING BTREE,
  INDEX `travelId_18`(`travelId`) USING BTREE,
  INDEX `travelId_19`(`travelId`) USING BTREE,
  INDEX `travelId_20`(`travelId`) USING BTREE,
  INDEX `travelId_21`(`travelId`) USING BTREE,
  INDEX `travelId_22`(`travelId`) USING BTREE,
  INDEX `travelId_23`(`travelId`) USING BTREE,
  INDEX `travelId_24`(`travelId`) USING BTREE,
  INDEX `travelId_25`(`travelId`) USING BTREE,
  INDEX `travelId_26`(`travelId`) USING BTREE,
  INDEX `travelId_27`(`travelId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travel
-- ----------------------------
INSERT INTO `travel` VALUES (1, '??????', '?????????', '              ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????', '????????????????????????????????????', 'img/yhzc.png');
INSERT INTO `travel` VALUES (2, '??????', '???????????????', '#??????????????????\r\n\r\n?????????????????????????????????????????????????????????????????????????????????????????????\r\n\r\n????????????????????????????????????????????????????????????????????????????????? #?????????\r\n\r\n??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? #??????\r\n\r\n???????????????????????????????????????\r\n\r\n??????????????????????????????????????????????????????????????????', '????????????????????????????????????', 'img/jdjsxx.png');
INSERT INTO `travel` VALUES (3, '??????', '?????????', '???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????', '????????????????????????????????????', 'img/yhzc.png');
INSERT INTO `travel` VALUES (4, '????????????', '?????????????????????', '????????????????????????118,000 ???????????????????????????300????????????????????????????????????????????????1192?????????(?????????????????????199 ???) ?????????20????????? ??????????????????????????????????????????3:2?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????[1]<br>\r\n\r\n???????????????????????????????????????????????????????????????????????????????????????1.2?????????????????????????????????????????????????????????????????????50?????????????????????', '????????????????????????????????????????????????', 'img/jdjsxx.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  `upic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `User_name_uindex`(`email`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'aaa@qq.com', 'aaa', '??????', '123456', 1, 'upload/345c264158e942d081579a9a4fb07710.png');
INSERT INTO `user` VALUES (2, 'ht@qq.com', '123', '??????', '13567', 2, 'upload/b84581163d514636971d32207a5cc8d3.png');
INSERT INTO `user` VALUES (3, '123@qq.com', '123', '??????', '12435', 3, 'upload/692e2bda461d4fd48b97eed21817ee5a.png');
INSERT INTO `user` VALUES (4, 'Bolvvv@qq.com', '123', '?????????', '21324', 1, 'upload/5ee36f34055c430ba4bde3aa31824c73.png');
INSERT INTO `user` VALUES (5, '111@qq.com', '111', '?????????', '13224461', 4, 'upload/0c5221442894477ab432dd51be5b748e.png');
INSERT INTO `user` VALUES (6, 'test@qq.com', 'test', '?????????', '123245', 4, 'upload/b4ed21e8f22a490fb7e82cba37a97362.png');
INSERT INTO `user` VALUES (7, 'abc@qq.com', '123456', '12??????', '123245', 4, 'upload/273e849b2cf345caaa0dfa350ce3e01b.png');
INSERT INTO `user` VALUES (8, '12345@qq.com', '12345', '??????', '1243435', 4, 'upload/273e849b2cf345caaa0dfa350ce3e01b.png');
INSERT INTO `user` VALUES (9, '12@qq.com', '12', '??????', '12435', 4, 'upload/273e849b2cf345caaa0dfa350ce3e01b.png');
INSERT INTO `user` VALUES (47, '1409100@qq.com', '14091097', '?????????', '12131415', 4, 'upload/273e849b2cf345caaa0dfa350ce3e01b.png');
INSERT INTO `user` VALUES (48, '1213123@qq.com', '123123123', 'zjj', '13243098', 2, 'upload/02f419da3cf843df9a4725c2aa280294.png');

SET FOREIGN_KEY_CHECKS = 1;
