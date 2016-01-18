/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : ophion_db

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-01-18 03:11:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `company_db`
-- ----------------------------
DROP TABLE IF EXISTS `company_db`;
CREATE TABLE `company_db` (
  `company_id` varchar(20) NOT NULL DEFAULT '',
  `db_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`company_id`,`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_db
-- ----------------------------
INSERT INTO `company_db` VALUES ('00454', 'store454_dsgn');
