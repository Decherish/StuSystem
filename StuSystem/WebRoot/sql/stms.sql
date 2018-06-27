/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : stms

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-27 16:20:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classid` varchar(6) NOT NULL,
  `professionname` varchar(255) NOT NULL,
  `subjectid` int(5) NOT NULL,
  `classsumpeople` int(100) NOT NULL,
  PRIMARY KEY (`classid`),
  KEY `subject` (`subjectid`),
  KEY `name` (`professionname`),
  CONSTRAINT `name` FOREIGN KEY (`professionname`) REFERENCES `profession` (`pname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`xid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('111602', '软件工程', '11', '63');
INSERT INTO `class` VALUES ('111605', '计算机科学', '11', '60');
INSERT INTO `class` VALUES ('111702', '软件工程', '11', '50');
INSERT INTO `class` VALUES ('111705', '软件工程', '11', '55');
INSERT INTO `class` VALUES ('121602', '小学教育', '12', '45');
INSERT INTO `class` VALUES ('131601', '网络通信', '13', '53');
INSERT INTO `class` VALUES ('131602', '信息工程', '13', '55');

-- ----------------------------
-- Table structure for classplace
-- ----------------------------
DROP TABLE IF EXISTS `classplace`;
CREATE TABLE `classplace` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cteacher` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`,`cname`,`cteacher`),
  KEY `teacher` (`cteacher`),
  KEY `course` (`cname`),
  CONSTRAINT `course` FOREIGN KEY (`cname`) REFERENCES `course` (`cname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacher` FOREIGN KEY (`cteacher`) REFERENCES `teacher` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of classplace
-- ----------------------------
INSERT INTO `classplace` VALUES ('10001', '张秀凤', '2017-09', '网上', '书法史');
INSERT INTO `classplace` VALUES ('10002', '于立宏', '2017-09', '公楼', '数字通信');
INSERT INTO `classplace` VALUES ('10003', '于立宏', '2017-09', '田师', '数字电子技术');
INSERT INTO `classplace` VALUES ('10004', '徐立群', '2017-09', '田师', '高数');
INSERT INTO `classplace` VALUES ('10005', '万岩峰', '2017-09', '西科', '需求');
INSERT INTO `classplace` VALUES ('10006', '赵裕丽', '2017-09', '田师', '英语');
INSERT INTO `classplace` VALUES ('10007', '郭平', '2017-09', '西科', '数据逻辑');
INSERT INTO `classplace` VALUES ('10008', '张秀凤', '2017-09', '田师', '教育学');
INSERT INTO `classplace` VALUES ('10008', '赵裕丽', '2017-09', '田师', '普通心理学');
INSERT INTO `classplace` VALUES ('10009', '张秀凤', '2017-09', '网上', '中国教育史');
INSERT INTO `classplace` VALUES ('10010', '桑成宇', '2017-09', '西科', '数据库');
INSERT INTO `classplace` VALUES ('10011', '郭平', '2017-09', '田师', '计算机原理');
INSERT INTO `classplace` VALUES ('10012', '桑成宇', '2017-09', '田师', '计算机网络');
INSERT INTO `classplace` VALUES ('10013', '徐立群', '2017-09', '田师', '线性代数');
INSERT INTO `classplace` VALUES ('10014', '关龙', '2017-09', '宪梓', '羽毛球');
INSERT INTO `classplace` VALUES ('10015', '张秀凤', '2017-09', '网上', '移动通信');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '需求', '0');
INSERT INTO `course` VALUES ('2', '数据库', '0');
INSERT INTO `course` VALUES ('3', '英语', '0');
INSERT INTO `course` VALUES ('4', '线性代数', '0');
INSERT INTO `course` VALUES ('5', '高数', '0');
INSERT INTO `course` VALUES ('6', '数据逻辑', '0');
INSERT INTO `course` VALUES ('7', '数据结构', '0');
INSERT INTO `course` VALUES ('8', '羽毛球', '1');
INSERT INTO `course` VALUES ('9', '书法史', '1');
INSERT INTO `course` VALUES ('10', '电路理论', '0');
INSERT INTO `course` VALUES ('11', '数字电子技术', '0');
INSERT INTO `course` VALUES ('12', '数字信号处理', '0');
INSERT INTO `course` VALUES ('13', '通信原理', '0');
INSERT INTO `course` VALUES ('14', '教育学', '1');
INSERT INTO `course` VALUES ('15', '普通心理学', '1');
INSERT INTO `course` VALUES ('16', '中国教育史', '1');
INSERT INTO `course` VALUES ('17', '计算机原理', '0');
INSERT INTO `course` VALUES ('18', '计算机网络', '0');
INSERT INTO `course` VALUES ('19', '模拟电路', '0');
INSERT INTO `course` VALUES ('20', '数字通信', '0');
INSERT INTO `course` VALUES ('21', '移动通信', '1');

-- ----------------------------
-- Table structure for elective
-- ----------------------------
DROP TABLE IF EXISTS `elective`;
CREATE TABLE `elective` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(9) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`sid`,`cname`),
  KEY `e-cname` (`cname`),
  KEY `e-sid` (`sid`),
  CONSTRAINT `e-cname` FOREIGN KEY (`cname`) REFERENCES `course` (`cname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e-sid` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of elective
-- ----------------------------
INSERT INTO `elective` VALUES ('1001', '16111001', '书法史', '80');
INSERT INTO `elective` VALUES ('1002', '16111001', '羽毛球', '80');
INSERT INTO `elective` VALUES ('1003', '16111002', '中国教育史', '66');
INSERT INTO `elective` VALUES ('1004', '16111011', '中国教育史', '77');
INSERT INTO `elective` VALUES ('1005', '16111021', '书法史', '88');
INSERT INTO `elective` VALUES ('1006', '16111031', '书法史', '87');
INSERT INTO `elective` VALUES ('1007', '17111001', '羽毛球', '86');
INSERT INTO `elective` VALUES ('1008', '17111011', '羽毛球', '65');
INSERT INTO `elective` VALUES ('1010', '16111001', '普通心理学', '0');
INSERT INTO `elective` VALUES ('1011', '16111001', '移动通信', '0');

-- ----------------------------
-- Table structure for obligatory
-- ----------------------------
DROP TABLE IF EXISTS `obligatory`;
CREATE TABLE `obligatory` (
  `id` int(11) NOT NULL,
  `sid` int(9) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`sid`,`cname`),
  KEY `o-sid` (`sid`),
  KEY `o-cname` (`cname`),
  CONSTRAINT `o-cname` FOREIGN KEY (`cname`) REFERENCES `course` (`cname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `o-sid` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of obligatory
-- ----------------------------
INSERT INTO `obligatory` VALUES ('2001', '16111001', '数字通信', '66');
INSERT INTO `obligatory` VALUES ('2002', '16111001', '数字电子技术', '77');
INSERT INTO `obligatory` VALUES ('2003', '16111001', '线性代数', '76');
INSERT INTO `obligatory` VALUES ('2004', '16111001', '高数', '87');
INSERT INTO `obligatory` VALUES ('2005', '16111001', '英语', '72');
INSERT INTO `obligatory` VALUES ('2005', '16111011', '需求', '77');
INSERT INTO `obligatory` VALUES ('2006', '16111011', '数据库', '78');
INSERT INTO `obligatory` VALUES ('2007', '16111021', '计算机原理', '67');
INSERT INTO `obligatory` VALUES ('2008', '16111021', '计算机网络', '87');
INSERT INTO `obligatory` VALUES ('2009', '16111031', '教育学', '78');
INSERT INTO `obligatory` VALUES ('2010', '16111031', '普通心理学', '87');
INSERT INTO `obligatory` VALUES ('2011', '17111001', '数据逻辑', '78');
INSERT INTO `obligatory` VALUES ('2012', '17111011', '数据逻辑', '66');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `pname` varchar(255) NOT NULL,
  PRIMARY KEY (`pname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('信息工程');
INSERT INTO `profession` VALUES ('小学教育');
INSERT INTO `profession` VALUES ('网络通信');
INSERT INTO `profession` VALUES ('计算机科学');
INSERT INTO `profession` VALUES ('软件工程');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(9) NOT NULL,
  `name` varchar(5) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` int(2) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `ldormitory` varchar(10) NOT NULL,
  `classz` varchar(6) NOT NULL,
  `birthday` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`password`),
  KEY `id_2` (`id`,`password`,`type`),
  KEY `class` (`classz`),
  CONSTRAINT `class` FOREIGN KEY (`classz`) REFERENCES `class` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('16111001', '张三', '123456', '1', '男', '中四101', '131601', '1999-10-10');
INSERT INTO `student` VALUES ('16111002', '李四', '123456', '1', '男', '中四102', '131601', '1999-01-01');
INSERT INTO `student` VALUES ('16111003', '王五', '123456', '1', '男', '中四101', '131601', '1998-08-08');
INSERT INTO `student` VALUES ('16111004', '肖丽', '123456', '1', '女', '中二202', '131601', '1999-09-09');
INSERT INTO `student` VALUES ('16111011', '李旻', '123456', '1', '男', '中三501', '111602', '1999-11-19');
INSERT INTO `student` VALUES ('16111012', '王敏', '123456', '1', '女', '中二301', '111605', '1998-10-21');
INSERT INTO `student` VALUES ('16111021', '章树', '123456', '1', '男', '南一101', '131602', '1997-10-28');
INSERT INTO `student` VALUES ('16111031', '庄晓', '123456', '1', '女', '南二202', '121602', '1998-05-06');
INSERT INTO `student` VALUES ('17111001', '小明', '123456', '1', '男', '南一301', '111702', '2000-10-23');
INSERT INTO `student` VALUES ('17111011', '小王', '123456', '1', '男', '南四401', '111705', '2000-12-12');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `xid` int(5) NOT NULL,
  `xname` varchar(255) NOT NULL,
  `xoffice` varchar(255) NOT NULL,
  `xsumpeople` varchar(255) NOT NULL,
  PRIMARY KEY (`xid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('11', '计算机', '西科', '56');
INSERT INTO `subject` VALUES ('12', '教科', '田师', '50');
INSERT INTO `subject` VALUES ('13', '电信', '公楼', '52');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(9) NOT NULL,
  `name` varchar(5) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` int(2) NOT NULL,
  `sex` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`name`,`type`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('11101', '张秀凤', '123456', '0', '女');
INSERT INTO `teacher` VALUES ('11102', '于立宏', '123456', '0', '男');
INSERT INTO `teacher` VALUES ('11103', '徐立群', '123456', '0', '男');
INSERT INTO `teacher` VALUES ('11104', '万岩峰', '123456', '0', '男');
INSERT INTO `teacher` VALUES ('11105', '赵裕丽', '123456', '0', '女');
INSERT INTO `teacher` VALUES ('11106', '郭平', '123456', '0', '男');
INSERT INTO `teacher` VALUES ('11107', '桑成宇', '123456', '0', '男');
INSERT INTO `teacher` VALUES ('11108', '关龙', '123456', '0', '男');

-- ----------------------------