/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : servlet_blog

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2021-08-05 17:48:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` mediumtext NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '快速排序', '快牌', '2021-04-28 14:36:24', '0', '1');
INSERT INTO `article` VALUES ('2', '冒泡排序', '<p>public ...<img src=\"http://localhost:8080/upload//img/20210506/1620311149238058673.png\" title=\"1620311149238058673.png\" alt=\"gem1.png\"/><img src=\"http://localhost:8080/upload//img/20210506/1620311155235000529.png\" title=\"1620311155235000529.png\" alt=\"gem2.png\"/><img src=\"http://localhost:8080/upload//img/20210506/1620311173511088666.jpg\" title=\"1620311173511088666.jpg\" alt=\"null-20be5160bf1efd5.jpg\"/></p>', '2021-04-28 14:36:24', '0', '2');
INSERT INTO `article` VALUES ('3', '选择排序', 'public ... ', '2021-04-28 14:36:24', '0', '2');
INSERT INTO `article` VALUES ('5', '插入排序', 'public ... ', '2021-04-28 14:36:24', '0', '3');
INSERT INTO `article` VALUES ('6', '归并排序', '<p>德玛西亚</p>', '2021-05-02 16:22:18', '0', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `head` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', null, null, '2000-08-08', null);
INSERT INTO `user` VALUES ('2', 'abc', '123', null, null, '1999-01-01', null);
INSERT INTO `user` VALUES ('3', 'a', '1', null, null, '1999-01-02', null);
INSERT INTO `user` VALUES ('4', 'b', '2', null, null, '1999-01-03', null);
INSERT INTO `user` VALUES ('5', 'c', '3', null, null, '1999-01-04', null);
