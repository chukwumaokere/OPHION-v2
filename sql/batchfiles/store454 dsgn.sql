/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : store454 dsgn

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-01-15 02:49:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `availability`
-- ----------------------------
DROP TABLE IF EXISTS `availability`;
CREATE TABLE `availability` (
  `employee_id` varchar(7) NOT NULL,
  `day_of_week` varchar(9) NOT NULL,
  `available_from` time DEFAULT NULL,
  `available_to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of availability
-- ----------------------------

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('0', '');
INSERT INTO `department` VALUES ('1', '');
INSERT INTO `department` VALUES ('2', '');
INSERT INTO `department` VALUES ('3', '');
INSERT INTO `department` VALUES ('4', '');
INSERT INTO `department` VALUES ('5', '');
INSERT INTO `department` VALUES ('6', '');
INSERT INTO `department` VALUES ('7', '');
INSERT INTO `department` VALUES ('8', '');
INSERT INTO `department` VALUES ('9', '');
INSERT INTO `department` VALUES ('10', '');
INSERT INTO `department` VALUES ('11', '');
INSERT INTO `department` VALUES ('12', '');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` varchar(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(24) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(5) NOT NULL,
  `main_phone` bigint(10) unsigned DEFAULT NULL,
  `alt_phone` bigint(10) unsigned DEFAULT NULL,
  `is_full_time` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for `employee_department`
-- ----------------------------
DROP TABLE IF EXISTS `employee_department`;
CREATE TABLE `employee_department` (
  `employee_id` varchar(7) NOT NULL,
  `employee_department_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_id`,`employee_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee_department
-- ----------------------------

-- ----------------------------
-- Table structure for `employee_job_title`
-- ----------------------------
DROP TABLE IF EXISTS `employee_job_title`;
CREATE TABLE `employee_job_title` (
  `employee_id` varchar(7) NOT NULL,
  `job_title_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_id`,`job_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee_job_title
-- ----------------------------

-- ----------------------------
-- Table structure for `job_title`
-- ----------------------------
DROP TABLE IF EXISTS `job_title`;
CREATE TABLE `job_title` (
  `job_title_id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of job_title
-- ----------------------------
INSERT INTO `job_title` VALUES ('0', '');
INSERT INTO `job_title` VALUES ('1', '');
INSERT INTO `job_title` VALUES ('2', '');
INSERT INTO `job_title` VALUES ('3', '');
INSERT INTO `job_title` VALUES ('4', '');
INSERT INTO `job_title` VALUES ('5', '');
INSERT INTO `job_title` VALUES ('6', '');
INSERT INTO `job_title` VALUES ('7', '');
INSERT INTO `job_title` VALUES ('8', '');
INSERT INTO `job_title` VALUES ('9', '');
INSERT INTO `job_title` VALUES ('10', '');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `employee_id` varchar(7) NOT NULL,
  `day_of_week` varchar(9) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_type` bit(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_id` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `main_phone` bigint(11) NOT NULL,
  `alt_phone` bigint(11) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `address_line_1` varchar(200) NOT NULL,
  `address_line_2` varchar(200) DEFAULT NULL,
  `state_province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  PRIMARY KEY (`email`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
