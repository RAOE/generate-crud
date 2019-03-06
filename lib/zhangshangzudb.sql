/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : zhangshangzudb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-03-06 21:34:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_adminlogs`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminlogs`;
CREATE TABLE `t_adminlogs` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AdminUserId` bigint(20) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `Message` mediumtext NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AdminUserId` (`AdminUserId`),
  CONSTRAINT `t_adminlogs_ibfk_1` FOREIGN KEY (`AdminUserId`) REFERENCES `t_adminusers` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adminlogs
-- ----------------------------
INSERT INTO `t_adminlogs` VALUES ('1', '1', '2016-08-25 21:18:01', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('2', '1', '2016-08-25 21:27:06', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('3', '1', '2016-08-25 22:03:51', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('4', '1', '2016-08-25 23:30:57', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('5', '14', '2016-08-25 23:34:15', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('6', '14', '2016-08-26 00:02:23', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('7', '14', '2016-08-26 00:02:45', '修改角色，id=7');
INSERT INTO `t_adminlogs` VALUES ('8', '14', '2016-08-26 00:02:50', '删除角色，id=7');
INSERT INTO `t_adminlogs` VALUES ('9', '14', '2016-08-26 00:06:21', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('10', '1', '2016-08-26 11:28:38', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('11', '1', '2016-08-26 12:06:06', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('12', '1', '2016-08-26 12:23:28', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('13', '1', '2016-08-26 12:35:13', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('14', '1', '2016-08-26 14:22:00', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('15', '1', '2016-08-26 14:56:02', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('16', '1', '2016-08-26 16:07:16', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('17', '1', '2016-08-26 18:06:07', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('18', '1', '2016-08-26 18:06:08', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('19', '1', '2016-08-26 18:12:34', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('20', '1', '2016-08-26 18:16:30', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('21', '1', '2016-08-26 18:18:16', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('22', '1', '2016-08-26 18:30:23', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('23', '1', '2016-08-26 23:56:57', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('24', '14', '2016-08-26 23:57:44', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('25', '14', '2016-08-26 23:59:12', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('26', '14', '2016-08-27 00:06:38', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('27', '14', '2016-08-27 00:46:54', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('28', '14', '2016-08-27 00:50:02', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('29', '14', '2016-08-27 01:04:25', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('30', '14', '2016-08-27 01:32:27', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('31', '14', '2016-08-27 01:52:40', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('32', '14', '2016-08-27 02:06:50', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('33', '1', '2016-08-27 02:07:40', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('34', '8', '2016-08-27 02:07:56', '手机号18910275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('35', '14', '2016-08-27 09:30:04', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('36', '1', '2016-08-27 09:50:07', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('37', '14', '2016-08-27 09:51:12', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('38', '14', '2016-08-27 10:06:53', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('39', '14', '2016-08-27 10:38:19', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('40', '14', '2016-08-27 10:57:38', '新建房源，房源id=1');
INSERT INTO `t_adminlogs` VALUES ('41', '14', '2016-08-27 11:03:08', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('42', '14', '2016-08-27 11:11:58', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('43', '14', '2016-08-27 12:06:39', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('44', '14', '2016-08-27 12:11:07', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('45', '14', '2016-08-27 12:18:19', '修改角色，id=2');
INSERT INTO `t_adminlogs` VALUES ('46', '14', '2016-08-27 12:38:14', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('47', '14', '2016-08-27 13:02:42', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('48', '14', '2016-08-27 13:05:09', '修改房源，id=1');
INSERT INTO `t_adminlogs` VALUES ('49', '14', '2016-08-27 13:05:28', '修改房源，id=1');
INSERT INTO `t_adminlogs` VALUES ('50', '14', '2016-08-27 15:03:08', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('51', '14', '2016-08-27 15:04:14', '修改房源，id=1');
INSERT INTO `t_adminlogs` VALUES ('52', '14', '2016-08-27 16:27:30', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('53', '14', '2016-08-27 16:44:05', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('54', '14', '2016-08-27 17:07:25', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('55', '14', '2016-08-27 17:21:33', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('56', '14', '2016-08-27 17:55:40', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('57', '14', '2016-08-27 20:07:45', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('58', '14', '2016-08-27 21:11:49', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('59', '14', '2016-08-27 21:23:07', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('60', '1', '2016-08-27 21:52:17', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('61', '14', '2016-08-27 21:52:31', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('62', '14', '2016-08-30 09:19:13', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('63', '14', '2016-08-30 11:18:15', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('64', '14', '2016-08-30 21:02:31', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('65', '14', '2016-08-30 21:04:58', '新建房源，房源id=3');
INSERT INTO `t_adminlogs` VALUES ('66', '14', '2016-08-30 21:07:17', '新建房源，房源id=4');
INSERT INTO `t_adminlogs` VALUES ('67', '1', '2016-08-30 21:26:52', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('68', '8', '2016-08-30 21:27:18', '手机号18910275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('69', '8', '2016-08-30 21:30:48', '新建房源，房源id=5');
INSERT INTO `t_adminlogs` VALUES ('70', '14', '2016-08-31 15:06:36', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('71', '14', '2016-08-31 16:08:30', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('72', '14', '2016-08-31 16:11:46', '修改角色，id=1');
INSERT INTO `t_adminlogs` VALUES ('73', '14', '2016-08-31 16:11:56', '修改管理员，管理员id=14');
INSERT INTO `t_adminlogs` VALUES ('74', '14', '2016-08-31 16:18:11', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('75', '14', '2016-08-31 16:26:53', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('76', '14', '2016-08-31 16:31:07', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('77', '14', '2016-08-31 16:33:50', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('78', '14', '2016-08-31 16:35:46', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('79', '14', '2016-08-31 16:37:28', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('80', '14', '2016-08-31 16:45:49', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('81', '14', '2016-08-31 16:49:41', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('82', '14', '2016-09-05 12:17:28', '手机号18911111111登录成功');
INSERT INTO `t_adminlogs` VALUES ('83', '1', '2016-09-13 12:46:21', '手机号18911275827登录成功');
INSERT INTO `t_adminlogs` VALUES ('84', '14', '2016-09-13 12:47:05', '手机号18911111111登录成功');

-- ----------------------------
-- Table structure for `t_adminuserroles`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminuserroles`;
CREATE TABLE `t_adminuserroles` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AdminUserId` bigint(20) NOT NULL,
  `RoleId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AdminUserId` (`AdminUserId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `t_adminuserroles_ibfk_1` FOREIGN KEY (`AdminUserId`) REFERENCES `t_adminusers` (`Id`),
  CONSTRAINT `t_adminuserroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `t_roles` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adminuserroles
-- ----------------------------
INSERT INTO `t_adminuserroles` VALUES ('12', '8', '1');
INSERT INTO `t_adminuserroles` VALUES ('13', '8', '2');
INSERT INTO `t_adminuserroles` VALUES ('18', '9', '1');
INSERT INTO `t_adminuserroles` VALUES ('19', '9', '2');
INSERT INTO `t_adminuserroles` VALUES ('24', '10', '2');
INSERT INTO `t_adminuserroles` VALUES ('36', '13', '1');
INSERT INTO `t_adminuserroles` VALUES ('37', '13', '2');
INSERT INTO `t_adminuserroles` VALUES ('40', '1', '1');
INSERT INTO `t_adminuserroles` VALUES ('41', '1', '2');
INSERT INTO `t_adminuserroles` VALUES ('42', '1', '7');
INSERT INTO `t_adminuserroles` VALUES ('43', '11', '1');
INSERT INTO `t_adminuserroles` VALUES ('44', '12', '2');
INSERT INTO `t_adminuserroles` VALUES ('45', '12', '1');
INSERT INTO `t_adminuserroles` VALUES ('52', '15', '2');
INSERT INTO `t_adminuserroles` VALUES ('53', '15', '3');
INSERT INTO `t_adminuserroles` VALUES ('54', '14', '2');
INSERT INTO `t_adminuserroles` VALUES ('55', '14', '3');
INSERT INTO `t_adminuserroles` VALUES ('56', '14', '1');

-- ----------------------------
-- Table structure for `t_adminusers`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminusers`;
CREATE TABLE `t_adminusers` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `PhoneNum` varchar(20) NOT NULL,
  `PasswordHash` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CityId` bigint(20) DEFAULT NULL,
  `LoginErrorTimes` int(11) NOT NULL DEFAULT '0',
  `LastLoginErrorDateTime` datetime DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `CreateDateTime` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  CONSTRAINT `t_adminusers_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `t_cities` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adminusers
-- ----------------------------
INSERT INTO `t_adminusers` VALUES ('1', '官吏员', '18911275827', 'E10ADC3949BA59ABBE56E057F20F883E', 'yzk@rupeng.com', null, '0', null, '', '2016-08-22 23:54:54');
INSERT INTO `t_adminusers` VALUES ('8', '张亮', '18910275827', 'E10ADC3949BA59ABBE56E057F20F883E', 'a@rupeng.com', '1', '0', null, '', '2016-08-24 00:59:45');
INSERT INTO `t_adminusers` VALUES ('9', '杨国富', '13401087865', 'E10ADC3949BA59ABBE56E057F20F883E', 'abc@rupa.com', '2', '0', null, '', '2016-08-24 01:02:03');
INSERT INTO `t_adminusers` VALUES ('10', '李丹', '18801087866', 'E10ADC3949BA59ABBE56E057F20F883E', 'a@rupeng.com', '1', '0', null, '', '2016-08-24 01:04:06');
INSERT INTO `t_adminusers` VALUES ('11', '张马学', '18911272827', 'E10ADC3949BA59ABBE56E057F20F883E', 'a@z.com', null, '0', null, '', '2016-08-24 01:04:38');
INSERT INTO `t_adminusers` VALUES ('12', '张老大', '18911275821', 'E10ADC3949BA59ABBE56E057F20F883E', '189@163.com', '3', '0', null, '', '2016-08-24 11:55:06');
INSERT INTO `t_adminusers` VALUES ('13', '王大力', '18918912858', 'E10ADC3949BA59ABBE56E057F20F883E', 'jms1@rupeng.com', '2', '0', null, '', '2016-08-24 17:47:49');
INSERT INTO `t_adminusers` VALUES ('14', '老深圳', '18911111111', 'E10ADC3949BA59ABBE56E057F20F883E', 'sz@rupeng.com', '3', '0', null, '', '2016-08-25 23:33:30');
INSERT INTO `t_adminusers` VALUES ('15', 'aaa', '18911275826', 'E10ADC3949BA59ABBE56E057F20F883E', 'aa@a.com', '3', '0', null, '', '2016-08-25 23:51:22');
INSERT INTO `t_adminusers` VALUES ('16', 'XYF', '15008121886', 'E10ADC3949BA59ABBE56E057F20F883E', '986771570@qq.cm', null, '0', null, '', '2017-11-07 16:56:32');

-- ----------------------------
-- Table structure for `t_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `t_attachments`;
CREATE TABLE `t_attachments` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `IconName` varchar(200) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachments
-- ----------------------------
INSERT INTO `t_attachments` VALUES ('1', '床', 'icon-chuangdian', '');
INSERT INTO `t_attachments` VALUES ('2', '衣柜', 'icon-dpc', '');
INSERT INTO `t_attachments` VALUES ('3', '沙发', 'icon-shafa', '');
INSERT INTO `t_attachments` VALUES ('4', '燃气', 'icon-7', '');
INSERT INTO `t_attachments` VALUES ('5', '洗衣机', 'icon-xiyiji', '');
INSERT INTO `t_attachments` VALUES ('6', '网络', 'icon-wifi', '');
INSERT INTO `t_attachments` VALUES ('7', '冰箱', 'icon-bingxiang', '');
INSERT INTO `t_attachments` VALUES ('8', '书桌', 'icon-bangongzhuo', '');
INSERT INTO `t_attachments` VALUES ('9', '空调', 'icon-kongdiao', '');
INSERT INTO `t_attachments` VALUES ('10', '餐桌', 'icon-zhuozi', '');
INSERT INTO `t_attachments` VALUES ('11', '椅子', 'icon-yizi', '');
INSERT INTO `t_attachments` VALUES ('12', '微波炉', 'icon-weibolu', '');
INSERT INTO `t_attachments` VALUES ('13', '电视', 'icon-dianshi', '');
INSERT INTO `t_attachments` VALUES ('14', '热水器', 'icon-reshui', '');
INSERT INTO `t_attachments` VALUES ('15', '橱柜', 'icon-chugui', '');
INSERT INTO `t_attachments` VALUES ('16', '油烟机', 'icon-xiyouyanji', '');
INSERT INTO `t_attachments` VALUES ('17', '电梯', 'icon-gsdt', '');
INSERT INTO `t_attachments` VALUES ('18', '供暖', 'icon-nuanqi', '');
INSERT INTO `t_attachments` VALUES ('19', '车位', 'icon-tingchewei', '');
INSERT INTO `t_attachments` VALUES ('20', '门禁', 'icon-menjin', '');

-- ----------------------------
-- Table structure for `t_cities`
-- ----------------------------
DROP TABLE IF EXISTS `t_cities`;
CREATE TABLE `t_cities` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cities
-- ----------------------------
INSERT INTO `t_cities` VALUES ('1', '北京', '');
INSERT INTO `t_cities` VALUES ('2', '上海', '');
INSERT INTO `t_cities` VALUES ('3', '深圳', '');

-- ----------------------------
-- Table structure for `t_communities`
-- ----------------------------
DROP TABLE IF EXISTS `t_communities`;
CREATE TABLE `t_communities` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `RegionId` bigint(20) NOT NULL,
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `Location` varchar(200) DEFAULT NULL COMMENT '地段',
  `Traffic` mediumtext COMMENT '交通状况',
  `BuiltYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `RegionId` (`RegionId`),
  CONSTRAINT `t_communities_ibfk_1` FOREIGN KEY (`RegionId`) REFERENCES `t_regions` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_communities
-- ----------------------------
INSERT INTO `t_communities` VALUES ('1', '逸成东苑', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2008');
INSERT INTO `t_communities` VALUES ('2', '华清嘉园', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2006');
INSERT INTO `t_communities` VALUES ('3', '静淑东里', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2006');
INSERT INTO `t_communities` VALUES ('4', '志新小区', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2002');
INSERT INTO `t_communities` VALUES ('5', '文成杰座', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2010');
INSERT INTO `t_communities` VALUES ('6', '建清园', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2008');
INSERT INTO `t_communities` VALUES ('7', '宝盛北里', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2005');
INSERT INTO `t_communities` VALUES ('8', '菊园', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1999');
INSERT INTO `t_communities` VALUES ('9', '领秀新硅谷', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2014');
INSERT INTO `t_communities` VALUES ('10', '上林溪', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2013');
INSERT INTO `t_communities` VALUES ('11', '电科院小区', '3', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1995');
INSERT INTO `t_communities` VALUES ('12', '东半壁店', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1985');
INSERT INTO `t_communities` VALUES ('13', '西半壁店', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1985');
INSERT INTO `t_communities` VALUES ('14', '天通中苑', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2001');
INSERT INTO `t_communities` VALUES ('15', '北京人家', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('16', '保利罗兰香谷', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2013');
INSERT INTO `t_communities` VALUES ('17', '绿城雅居', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2009');
INSERT INTO `t_communities` VALUES ('18', '白各庄新村', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('19', '宏福苑小区', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('20', '龙腾苑', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('22', '龙锦苑', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('23', '龙跃苑', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');
INSERT INTO `t_communities` VALUES ('24', '北街家园', '8', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2013');
INSERT INTO `t_communities` VALUES ('25', '桃源村', '24', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2000');
INSERT INTO `t_communities` VALUES ('26', '珠光村', '24', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1998');
INSERT INTO `t_communities` VALUES ('27', '白石洲', '24', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '1995');
INSERT INTO `t_communities` VALUES ('28', '南国丽城', '24', '', '学院路和月泉路交口', '1、自驾车路线：三环、四环、五环走机场高速，从东苇路（苇沟）出口处红绿灯右转前行三百米左转即进入蟹岛。2、自东直门乘坐688路到蟹岛东门（终点站）下车即到。自东直门乘坐418路、909路至蟹岛站下车，沿指示牌往北直走600米进入蟹岛。', '2011');

-- ----------------------------
-- Table structure for `t_houseappointments`
-- ----------------------------
DROP TABLE IF EXISTS `t_houseappointments`;
CREATE TABLE `t_houseappointments` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `PhoneNum` varchar(100) NOT NULL,
  `VisitDate` datetime NOT NULL,
  `HouseId` bigint(20) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `Status` varchar(255) NOT NULL,
  `FollowAdminUserId` bigint(20) DEFAULT NULL,
  `FollowDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `HouseId` (`HouseId`),
  KEY `FollowAdminUserId` (`FollowAdminUserId`),
  CONSTRAINT `t_houseappointments_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_users` (`Id`),
  CONSTRAINT `t_houseappointments_ibfk_2` FOREIGN KEY (`HouseId`) REFERENCES `t_houses` (`Id`),
  CONSTRAINT `t_houseappointments_ibfk_3` FOREIGN KEY (`FollowAdminUserId`) REFERENCES `t_adminusers` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_houseappointments
-- ----------------------------
INSERT INTO `t_houseappointments` VALUES ('1', '1', '杨', '18911275827', '2016-09-02 00:00:00', '4', '2016-08-31 15:15:26', '跟进中', '14', '2016-08-31 16:50:15');
INSERT INTO `t_houseappointments` VALUES ('2', '1', '杨', '18911275827', '2016-09-02 00:00:00', '4', '2016-08-31 15:23:35', '跟进中', '14', '2016-08-31 16:50:17');

-- ----------------------------
-- Table structure for `t_houseattachments`
-- ----------------------------
DROP TABLE IF EXISTS `t_houseattachments`;
CREATE TABLE `t_houseattachments` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `HouseId` bigint(20) NOT NULL,
  `AttachmentId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `HouseId` (`HouseId`),
  KEY `AttachmentId` (`AttachmentId`),
  CONSTRAINT `t_houseattachments_ibfk_1` FOREIGN KEY (`HouseId`) REFERENCES `t_houses` (`Id`),
  CONSTRAINT `t_houseattachments_ibfk_2` FOREIGN KEY (`AttachmentId`) REFERENCES `t_attachments` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_houseattachments
-- ----------------------------
INSERT INTO `t_houseattachments` VALUES ('14', '1', '1');
INSERT INTO `t_houseattachments` VALUES ('15', '1', '2');
INSERT INTO `t_houseattachments` VALUES ('16', '1', '3');
INSERT INTO `t_houseattachments` VALUES ('17', '1', '4');
INSERT INTO `t_houseattachments` VALUES ('18', '1', '20');
INSERT INTO `t_houseattachments` VALUES ('19', '3', '1');
INSERT INTO `t_houseattachments` VALUES ('20', '3', '2');
INSERT INTO `t_houseattachments` VALUES ('21', '3', '3');
INSERT INTO `t_houseattachments` VALUES ('22', '3', '4');
INSERT INTO `t_houseattachments` VALUES ('23', '3', '5');
INSERT INTO `t_houseattachments` VALUES ('24', '3', '6');
INSERT INTO `t_houseattachments` VALUES ('25', '3', '8');
INSERT INTO `t_houseattachments` VALUES ('26', '3', '9');
INSERT INTO `t_houseattachments` VALUES ('27', '3', '14');
INSERT INTO `t_houseattachments` VALUES ('28', '3', '17');
INSERT INTO `t_houseattachments` VALUES ('29', '3', '18');
INSERT INTO `t_houseattachments` VALUES ('30', '3', '20');
INSERT INTO `t_houseattachments` VALUES ('31', '4', '1');
INSERT INTO `t_houseattachments` VALUES ('32', '4', '2');
INSERT INTO `t_houseattachments` VALUES ('33', '4', '5');
INSERT INTO `t_houseattachments` VALUES ('34', '4', '6');
INSERT INTO `t_houseattachments` VALUES ('35', '4', '14');
INSERT INTO `t_houseattachments` VALUES ('36', '4', '17');
INSERT INTO `t_houseattachments` VALUES ('37', '4', '20');
INSERT INTO `t_houseattachments` VALUES ('38', '5', '1');
INSERT INTO `t_houseattachments` VALUES ('39', '5', '2');
INSERT INTO `t_houseattachments` VALUES ('40', '5', '4');
INSERT INTO `t_houseattachments` VALUES ('41', '5', '5');
INSERT INTO `t_houseattachments` VALUES ('42', '5', '6');
INSERT INTO `t_houseattachments` VALUES ('43', '5', '7');
INSERT INTO `t_houseattachments` VALUES ('44', '5', '9');
INSERT INTO `t_houseattachments` VALUES ('45', '5', '10');
INSERT INTO `t_houseattachments` VALUES ('46', '5', '11');
INSERT INTO `t_houseattachments` VALUES ('47', '5', '13');
INSERT INTO `t_houseattachments` VALUES ('48', '5', '14');
INSERT INTO `t_houseattachments` VALUES ('49', '5', '17');
INSERT INTO `t_houseattachments` VALUES ('50', '5', '18');
INSERT INTO `t_houseattachments` VALUES ('51', '5', '19');
INSERT INTO `t_houseattachments` VALUES ('52', '5', '20');
INSERT INTO `t_houseattachments` VALUES ('53', '10', '1');
INSERT INTO `t_houseattachments` VALUES ('54', '10', '2');
INSERT INTO `t_houseattachments` VALUES ('55', '10', '3');
INSERT INTO `t_houseattachments` VALUES ('56', '10', '4');
INSERT INTO `t_houseattachments` VALUES ('57', '10', '20');
INSERT INTO `t_houseattachments` VALUES ('58', '11', '1');
INSERT INTO `t_houseattachments` VALUES ('59', '11', '2');
INSERT INTO `t_houseattachments` VALUES ('60', '11', '3');
INSERT INTO `t_houseattachments` VALUES ('61', '11', '4');
INSERT INTO `t_houseattachments` VALUES ('62', '11', '20');
INSERT INTO `t_houseattachments` VALUES ('63', '12', '1');
INSERT INTO `t_houseattachments` VALUES ('64', '12', '2');
INSERT INTO `t_houseattachments` VALUES ('65', '12', '3');
INSERT INTO `t_houseattachments` VALUES ('66', '12', '4');
INSERT INTO `t_houseattachments` VALUES ('67', '12', '20');
INSERT INTO `t_houseattachments` VALUES ('68', '13', '1');
INSERT INTO `t_houseattachments` VALUES ('69', '13', '2');
INSERT INTO `t_houseattachments` VALUES ('70', '13', '3');
INSERT INTO `t_houseattachments` VALUES ('71', '13', '4');
INSERT INTO `t_houseattachments` VALUES ('72', '13', '20');
INSERT INTO `t_houseattachments` VALUES ('73', '14', '1');
INSERT INTO `t_houseattachments` VALUES ('74', '14', '2');
INSERT INTO `t_houseattachments` VALUES ('75', '14', '3');
INSERT INTO `t_houseattachments` VALUES ('76', '14', '4');
INSERT INTO `t_houseattachments` VALUES ('77', '14', '20');
INSERT INTO `t_houseattachments` VALUES ('78', '15', '1');
INSERT INTO `t_houseattachments` VALUES ('79', '15', '2');
INSERT INTO `t_houseattachments` VALUES ('80', '15', '3');
INSERT INTO `t_houseattachments` VALUES ('81', '15', '4');
INSERT INTO `t_houseattachments` VALUES ('82', '15', '20');
INSERT INTO `t_houseattachments` VALUES ('83', '16', '1');
INSERT INTO `t_houseattachments` VALUES ('84', '16', '2');
INSERT INTO `t_houseattachments` VALUES ('85', '16', '3');
INSERT INTO `t_houseattachments` VALUES ('86', '16', '4');
INSERT INTO `t_houseattachments` VALUES ('87', '16', '20');
INSERT INTO `t_houseattachments` VALUES ('88', '17', '1');
INSERT INTO `t_houseattachments` VALUES ('89', '17', '2');
INSERT INTO `t_houseattachments` VALUES ('90', '17', '3');
INSERT INTO `t_houseattachments` VALUES ('91', '17', '4');
INSERT INTO `t_houseattachments` VALUES ('92', '17', '20');
INSERT INTO `t_houseattachments` VALUES ('93', '18', '1');
INSERT INTO `t_houseattachments` VALUES ('94', '18', '2');
INSERT INTO `t_houseattachments` VALUES ('95', '18', '3');
INSERT INTO `t_houseattachments` VALUES ('96', '18', '4');
INSERT INTO `t_houseattachments` VALUES ('97', '18', '20');
INSERT INTO `t_houseattachments` VALUES ('98', '19', '1');
INSERT INTO `t_houseattachments` VALUES ('99', '19', '2');
INSERT INTO `t_houseattachments` VALUES ('100', '19', '3');
INSERT INTO `t_houseattachments` VALUES ('101', '19', '4');
INSERT INTO `t_houseattachments` VALUES ('102', '19', '20');
INSERT INTO `t_houseattachments` VALUES ('103', '20', '1');
INSERT INTO `t_houseattachments` VALUES ('104', '20', '2');
INSERT INTO `t_houseattachments` VALUES ('105', '20', '3');
INSERT INTO `t_houseattachments` VALUES ('106', '20', '4');
INSERT INTO `t_houseattachments` VALUES ('107', '20', '20');
INSERT INTO `t_houseattachments` VALUES ('108', '21', '1');
INSERT INTO `t_houseattachments` VALUES ('109', '21', '2');
INSERT INTO `t_houseattachments` VALUES ('110', '21', '3');
INSERT INTO `t_houseattachments` VALUES ('111', '21', '4');
INSERT INTO `t_houseattachments` VALUES ('112', '21', '20');
INSERT INTO `t_houseattachments` VALUES ('113', '22', '1');
INSERT INTO `t_houseattachments` VALUES ('114', '22', '2');
INSERT INTO `t_houseattachments` VALUES ('115', '22', '3');
INSERT INTO `t_houseattachments` VALUES ('116', '22', '4');
INSERT INTO `t_houseattachments` VALUES ('117', '22', '20');
INSERT INTO `t_houseattachments` VALUES ('118', '23', '1');
INSERT INTO `t_houseattachments` VALUES ('119', '23', '2');
INSERT INTO `t_houseattachments` VALUES ('120', '23', '3');
INSERT INTO `t_houseattachments` VALUES ('121', '23', '4');
INSERT INTO `t_houseattachments` VALUES ('122', '23', '20');
INSERT INTO `t_houseattachments` VALUES ('123', '24', '1');
INSERT INTO `t_houseattachments` VALUES ('124', '24', '2');
INSERT INTO `t_houseattachments` VALUES ('125', '24', '3');
INSERT INTO `t_houseattachments` VALUES ('126', '24', '4');
INSERT INTO `t_houseattachments` VALUES ('127', '24', '20');
INSERT INTO `t_houseattachments` VALUES ('128', '25', '1');
INSERT INTO `t_houseattachments` VALUES ('129', '25', '2');
INSERT INTO `t_houseattachments` VALUES ('130', '25', '3');
INSERT INTO `t_houseattachments` VALUES ('131', '25', '4');
INSERT INTO `t_houseattachments` VALUES ('132', '25', '20');

-- ----------------------------
-- Table structure for `t_housepics`
-- ----------------------------
DROP TABLE IF EXISTS `t_housepics`;
CREATE TABLE `t_housepics` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `HouseId` bigint(20) NOT NULL,
  `Url` mediumtext NOT NULL,
  `ThumbUrl` mediumtext NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `CreateDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `HouseId` (`HouseId`),
  CONSTRAINT `t_housepics_ibfk_1` FOREIGN KEY (`HouseId`) REFERENCES `t_houses` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_housepics
-- ----------------------------
INSERT INTO `t_housepics` VALUES ('10', '1', '/2016/7/30/38e17683ae317e18758ec5a64ec6a270.jpg', '/2016/7/30/38e17683ae317e18758ec5a64ec6a270.thumb.jpg', '500', '500', '2016-08-30 11:26:39', '');
INSERT INTO `t_housepics` VALUES ('11', '1', '/2016/7/30/90fb60312b3544165de10f72dbf2f71e.jpg', '/2016/7/30/90fb60312b3544165de10f72dbf2f71e.thumb.jpg', '500', '500', '2016-08-30 21:09:50', '');
INSERT INTO `t_housepics` VALUES ('12', '1', '/2016/7/30/2deead51667b059bc10ae1c43532c4c7.jpg', '/2016/7/30/2deead51667b059bc10ae1c43532c4c7.thumb.jpg', '500', '500', '2016-08-30 21:09:50', '');
INSERT INTO `t_housepics` VALUES ('13', '2', '/2016/7/30/38e17683ae317e18758ec5a64ec6a270.jpg', '/2016/7/30/38e17683ae317e18758ec5a64ec6a270.thumb.jpg', '500', '500', '2016-08-30 21:10:30', '');
INSERT INTO `t_housepics` VALUES ('14', '3', '/2016/7/30/ffb3991064329654c0072d0b3198480f.jpg', '/2016/7/30/ffb3991064329654c0072d0b3198480f.thumb.jpg', '500', '500', '2016-08-30 21:08:21', '');
INSERT INTO `t_housepics` VALUES ('15', '3', '/2016/7/30/b394606bd3d9a282bf48a2bc16cc3566.jpg', '/2016/7/30/b394606bd3d9a282bf48a2bc16cc3566.thumb.jpg', '500', '500', '2016-08-30 21:08:21', '');
INSERT INTO `t_housepics` VALUES ('16', '3', '/2016/7/30/f0bda58caf2f4db019b3602a9710df55.jpg', '/2016/7/30/f0bda58caf2f4db019b3602a9710df55.thumb.jpg', '500', '500', '2016-08-30 21:08:21', '');
INSERT INTO `t_housepics` VALUES ('17', '3', '/2016/7/30/ef19e69e1dd93f27486cb9d3619780e.jpg', '/2016/7/30/ef19e69e1dd93f27486cb9d3619780e.thumb.jpg', '500', '500', '2016-08-30 21:08:22', '');
INSERT INTO `t_housepics` VALUES ('18', '3', '/2016/7/30/25d138fea0345eea5c51be3af029cc47.jpg', '/2016/7/30/25d138fea0345eea5c51be3af029cc47.thumb.jpg', '500', '500', '2016-08-30 21:08:22', '');
INSERT INTO `t_housepics` VALUES ('19', '3', '/2016/7/30/689d737a754c7f0ef875e49a2488d7e4.jpg', '/2016/7/30/689d737a754c7f0ef875e49a2488d7e4.thumb.jpg', '500', '500', '2016-08-30 21:08:22', '');
INSERT INTO `t_housepics` VALUES ('20', '4', '/2016/7/30/294f68b5ac0468548bfa5ed8634cbb02.jpg', '/2016/7/30/294f68b5ac0468548bfa5ed8634cbb02.thumb.jpg', '500', '500', '2016-08-30 21:09:12', '');
INSERT INTO `t_housepics` VALUES ('21', '4', '/2016/7/30/bad2785371cdd6f4593ee7766020bf07.jpg', '/2016/7/30/bad2785371cdd6f4593ee7766020bf07.thumb.jpg', '500', '500', '2016-08-30 21:09:12', '');
INSERT INTO `t_housepics` VALUES ('22', '4', '/2016/7/30/42ac6a878d18a3d6849d2f12e3464154.jpg', '/2016/7/30/42ac6a878d18a3d6849d2f12e3464154.thumb.jpg', '500', '500', '2016-08-30 21:09:12', '');
INSERT INTO `t_housepics` VALUES ('23', '4', '/2016/7/30/f3644261a4c89db093e30514c7601be9.jpg', '/2016/7/30/f3644261a4c89db093e30514c7601be9.thumb.jpg', '500', '500', '2016-08-30 21:09:13', '');
INSERT INTO `t_housepics` VALUES ('24', '4', '/2016/7/30/6026c6546225ea26efed8b81e14c142c.jpg', '/2016/7/30/6026c6546225ea26efed8b81e14c142c.thumb.jpg', '500', '500', '2016-08-30 21:09:13', '');
INSERT INTO `t_housepics` VALUES ('25', '4', '/2016/7/30/3f95a1e1d6e62a84597d21e89eb99b67.jpg', '/2016/7/30/3f95a1e1d6e62a84597d21e89eb99b67.thumb.jpg', '500', '500', '2016-08-30 21:09:13', '');
INSERT INTO `t_housepics` VALUES ('26', '1', '/2016/7/30/abdb5c5aba3eced3ca2a6ed020f2ccf4.jpg', '/2016/7/30/abdb5c5aba3eced3ca2a6ed020f2ccf4.thumb.jpg', '500', '500', '2016-08-30 21:10:21', '');
INSERT INTO `t_housepics` VALUES ('27', '1', '/2016/7/30/928f78db17125a247d66d087021074f9.jpg', '/2016/7/30/928f78db17125a247d66d087021074f9.thumb.jpg', '500', '500', '2016-08-30 21:10:21', '');
INSERT INTO `t_housepics` VALUES ('28', '1', '/2016/7/30/3229f7902122a8bc8863f2685446f49.jpg', '/2016/7/30/3229f7902122a8bc8863f2685446f49.thumb.jpg', '500', '500', '2016-08-30 21:10:22', '');
INSERT INTO `t_housepics` VALUES ('29', '1', '/2016/7/30/fa7aca1d78b288771966598acd3a98de.jpg', '/2016/7/30/fa7aca1d78b288771966598acd3a98de.thumb.jpg', '500', '500', '2016-08-30 21:10:22', '');
INSERT INTO `t_housepics` VALUES ('30', '1', '/2016/7/30/1648beaadc51389a8329fb8d409c1cb8.jpg', '/2016/7/30/1648beaadc51389a8329fb8d409c1cb8.thumb.jpg', '500', '500', '2016-08-30 21:10:22', '');
INSERT INTO `t_housepics` VALUES ('31', '1', '/2016/7/30/2003075aac9931552a0349f17ee95fee.jpg', '/2016/7/30/2003075aac9931552a0349f17ee95fee.thumb.jpg', '500', '500', '2016-08-30 21:10:22', '');
INSERT INTO `t_housepics` VALUES ('32', '2', '/2016/7/30/24297ee86391cae444ddd38a565bd14c.jpg', '/2016/7/30/24297ee86391cae444ddd38a565bd14c.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('33', '2', '/2016/7/30/e2331821bbf093f56820af9eeb9f2897.jpg', '/2016/7/30/e2331821bbf093f56820af9eeb9f2897.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('34', '2', '/2016/7/30/108ebf6cb05daf2dc6b1fc9a8692d2d3.jpg', '/2016/7/30/108ebf6cb05daf2dc6b1fc9a8692d2d3.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('35', '2', '/2016/7/30/8ee93817ea843ecac74e9b96f740bbd9.jpg', '/2016/7/30/8ee93817ea843ecac74e9b96f740bbd9.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('36', '2', '/2016/7/30/dd624ff7c09b37adf9cf4c665d3cd001.jpg', '/2016/7/30/dd624ff7c09b37adf9cf4c665d3cd001.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('37', '2', '/2016/7/30/d4f3389e7303a1f6a54924f5b5b459c3.jpg', '/2016/7/30/d4f3389e7303a1f6a54924f5b5b459c3.thumb.jpg', '500', '500', '2016-08-30 21:11:17', '');
INSERT INTO `t_housepics` VALUES ('38', '2', '/2016/7/30/e43267b74ed4648e40a8fc5568e7b704.jpg', '/2016/7/30/e43267b74ed4648e40a8fc5568e7b704.thumb.jpg', '500', '500', '2016-08-30 21:11:18', '');
INSERT INTO `t_housepics` VALUES ('39', '2', '/2016/7/30/ef6e133586b23f88d1607b43ac16c4ef.jpg', '/2016/7/30/ef6e133586b23f88d1607b43ac16c4ef.thumb.jpg', '500', '500', '2016-08-30 21:11:18', '');
INSERT INTO `t_housepics` VALUES ('40', '2', '/2016/7/30/7591a27952a2363e80d7c00c49494a98.jpg', '/2016/7/30/7591a27952a2363e80d7c00c49494a98.thumb.jpg', '500', '500', '2016-08-30 21:11:18', '');
INSERT INTO `t_housepics` VALUES ('41', '2', '/2016/7/30/4e572b35ed80a5d94562cf4b4bea2263.jpg', '/2016/7/30/4e572b35ed80a5d94562cf4b4bea2263.thumb.jpg', '500', '500', '2016-08-30 21:11:18', '');
INSERT INTO `t_housepics` VALUES ('42', '5', '/2016/7/30/9df06905be011f5374a89132421074b7.jpg', '/2016/7/30/9df06905be011f5374a89132421074b7.thumb.jpg', '500', '500', '2016-08-30 21:31:58', '');
INSERT INTO `t_housepics` VALUES ('43', '5', '/2016/7/30/548e7da5edd56ed247a0bce6a71aeb43.jpg', '/2016/7/30/548e7da5edd56ed247a0bce6a71aeb43.thumb.jpg', '500', '500', '2016-08-30 21:31:58', '');
INSERT INTO `t_housepics` VALUES ('44', '5', '/2016/7/30/6145e3d74c44bddec5a843f6de2e2733.jpg', '/2016/7/30/6145e3d74c44bddec5a843f6de2e2733.thumb.jpg', '500', '500', '2016-08-30 21:31:58', '');
INSERT INTO `t_housepics` VALUES ('45', '5', '/2016/7/30/3b04d61eeeb8260231e0423628ca99fa.jpg', '/2016/7/30/3b04d61eeeb8260231e0423628ca99fa.thumb.jpg', '500', '500', '2016-08-30 21:31:59', '');
INSERT INTO `t_housepics` VALUES ('46', '5', '/2016/7/30/be7a87eaa9043c0ed563e6597b02f866.jpg', '/2016/7/30/be7a87eaa9043c0ed563e6597b02f866.thumb.jpg', '500', '500', '2016-08-30 21:31:59', '');

-- ----------------------------
-- Table structure for `t_houses`
-- ----------------------------
DROP TABLE IF EXISTS `t_houses`;
CREATE TABLE `t_houses` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RegionId` bigint(20) NOT NULL,
  `CommunityId` bigint(20) NOT NULL,
  `RoomTypeId` bigint(20) NOT NULL COMMENT '户型（三室一厅等）',
  `Address` varchar(200) DEFAULT NULL,
  `MonthRent` int(11) NOT NULL COMMENT '月租金',
  `StatusId` bigint(20) NOT NULL COMMENT '状态(租房中，已出租,锁定中)',
  `Area` double(11,0) NOT NULL COMMENT '面积',
  `DecorateStatusId` bigint(1) NOT NULL COMMENT '装修状态',
  `TotalFloorCount` int(11) NOT NULL,
  `FloorIndex` int(11) NOT NULL,
  `TypeId` bigint(20) NOT NULL COMMENT '房屋类别： 短租 写字楼 合租 整租',
  `Direction` varchar(10) NOT NULL,
  `LookableDateTime` datetime NOT NULL,
  `CheckInDateTime` datetime NOT NULL,
  `OwnerName` varchar(20) NOT NULL,
  `OwnerPhoneNum` varchar(20) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `Description` mediumtext,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `t_houses_ibfk_1` (`RegionId`),
  KEY `CommunityId` (`CommunityId`),
  KEY `RoomTypeId` (`RoomTypeId`),
  KEY `StatusId` (`StatusId`),
  KEY `t_houses_ibfk_5` (`TypeId`),
  KEY `DecorateStatusId` (`DecorateStatusId`),
  CONSTRAINT `t_houses_ibfk_1` FOREIGN KEY (`RegionId`) REFERENCES `t_regions` (`Id`),
  CONSTRAINT `t_houses_ibfk_2` FOREIGN KEY (`CommunityId`) REFERENCES `t_communities` (`Id`),
  CONSTRAINT `t_houses_ibfk_3` FOREIGN KEY (`RoomTypeId`) REFERENCES `t_idnames` (`Id`),
  CONSTRAINT `t_houses_ibfk_4` FOREIGN KEY (`StatusId`) REFERENCES `t_idnames` (`Id`),
  CONSTRAINT `t_houses_ibfk_5` FOREIGN KEY (`TypeId`) REFERENCES `t_idnames` (`Id`),
  CONSTRAINT `t_houses_ibfk_6` FOREIGN KEY (`DecorateStatusId`) REFERENCES `t_idnames` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_houses
-- ----------------------------
INSERT INTO `t_houses` VALUES ('1', '24', '25', '3', '1-305', '3000', '8', '30', '15', '6', '3', '14', '南', '2016-08-31 00:00:00', '2016-09-13 00:00:00', '王哥', '18911111112', '2016-08-27 10:57:38', '房东不错，好说话', '');
INSERT INTO `t_houses` VALUES ('2', '24', '25', '3', '6-702', '2900', '8', '28', '15', '8', '6', '14', '东', '2016-08-24 12:53:49', '2016-08-30 12:53:53', '李姐', '18918911111', '2016-08-24 12:54:06', '房子好', '');
INSERT INTO `t_houses` VALUES ('3', '24', '26', '3', '南山西丽龙珠二路3号楼3-905', '6800', '8', '95', '16', '18', '9', '14', '南', '2016-09-03 00:00:00', '2016-09-17 00:00:00', '李先生', '18918911111', '2016-08-30 21:04:57', '房东是深大的教授，希望是一家人住', '');
INSERT INTO `t_houses` VALUES ('4', '24', '28', '1', '塘朗雅苑回迁楼九号楼1-701', '9500', '8', '105', '15', '13', '7', '14', '南', '2016-09-03 00:00:00', '2016-09-10 00:00:00', '马哥', '18918933333', '2016-08-30 21:07:17', '可以打隔断，目前没有空调，房东说可以配', '');
INSERT INTO `t_houses` VALUES ('5', '8', '16', '4', '1号楼8-305', '2500', '8', '82', '15', '19', '3', '13', '东', '2016-09-10 00:00:00', '2016-09-23 00:00:00', '李老师', '13813813338', '2016-08-30 21:30:48', '房屋是第一次出租，交通位置很好', '');
INSERT INTO `t_houses` VALUES ('10', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 17:56:06', '2017-10-28 17:56:06', '杨老师', '1891891444', '2017-10-28 17:56:06', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('11', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 17:56:34', '2017-10-28 17:56:34', '杨老师', '1891891444', '2017-10-28 17:56:34', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('12', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 17:56:44', '2017-10-28 17:56:44', '杨老师', '1891891444', '2017-10-28 17:56:44', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('13', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 18:01:07', '2017-10-28 18:01:07', '杨老师', '1891891444', '2017-10-28 18:01:07', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('14', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:03:26', '2017-10-28 19:03:26', '杨老师', '1891891444', '2017-10-28 19:03:26', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('15', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:05:53', '2017-10-28 19:05:53', '杨老师', '1891891444', '2017-10-28 19:05:53', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('16', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:08:55', '2017-10-28 19:08:55', '杨老师', '1891891444', '2017-10-28 19:08:55', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('17', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:09:36', '2017-10-28 19:09:36', '杨老师', '1891891444', '2017-10-28 19:09:36', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('18', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:11:37', '2017-10-28 19:11:37', '杨老师', '1891891444', '2017-10-28 19:11:37', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('19', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:11:52', '2017-10-28 19:11:52', '杨老师', '1891891444', '2017-10-28 19:11:52', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('20', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:14:58', '2017-10-28 19:14:58', '杨老师', '1891891444', '2017-10-28 19:14:58', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('21', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:15:09', '2017-10-28 19:15:09', '杨老师', '1891891444', '2017-10-28 19:15:09', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('22', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:15:16', '2017-10-28 19:15:16', '杨老师', '1891891444', '2017-10-28 19:15:16', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('23', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:17:13', '2017-10-28 19:17:13', '杨老师', '1891891444', '2017-10-28 19:17:13', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('24', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:17:18', '2017-10-28 19:17:18', '杨老师', '1891891444', '2017-10-28 19:17:18', '房东是一个天才', '');
INSERT INTO `t_houses` VALUES ('25', '24', '28', '4', '自贡市自流井区', '3555', '8', '1110', '16', '18', '7', '14', '南边', '2017-10-28 19:17:31', '2017-10-28 19:17:31', '杨老师', '1891891444', '2017-10-28 19:17:31', '房东是一个天才', '');

-- ----------------------------
-- Table structure for `t_idname`
-- ----------------------------
DROP TABLE IF EXISTS `t_idname`;
CREATE TABLE `t_idname` (
  `TypeName` varchar(22) DEFAULT NULL,
  `Name` varchar(22) DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_idname
-- ----------------------------
INSERT INTO `t_idname` VALUES ('test1', 'name1', '', '1');
INSERT INTO `t_idname` VALUES ('test1', 'name1', '', '2');
INSERT INTO `t_idname` VALUES ('test1', 'name1', '', '3');
INSERT INTO `t_idname` VALUES ('test1', 'name1', '', '4');
INSERT INTO `t_idname` VALUES ('test1', 'name1', '', '5');

-- ----------------------------
-- Table structure for `t_idnames`
-- ----------------------------
DROP TABLE IF EXISTS `t_idnames`;
CREATE TABLE `t_idnames` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_idnames
-- ----------------------------
INSERT INTO `t_idnames` VALUES ('1', '户型', '开间', '');
INSERT INTO `t_idnames` VALUES ('2', '户型', '一室一厅', '');
INSERT INTO `t_idnames` VALUES ('3', '户型', '两室一厅', '');
INSERT INTO `t_idnames` VALUES ('4', '户型', '三室一厅', '');
INSERT INTO `t_idnames` VALUES ('5', '户型', '三室两厅', '');
INSERT INTO `t_idnames` VALUES ('6', '户型', '别墅', '');
INSERT INTO `t_idnames` VALUES ('7', '户型', '其他', '');
INSERT INTO `t_idnames` VALUES ('8', '房屋状态', '租房中', '');
INSERT INTO `t_idnames` VALUES ('9', '房屋状态', '已出租', '');
INSERT INTO `t_idnames` VALUES ('10', '房屋状态', '锁定中', '');
INSERT INTO `t_idnames` VALUES ('11', '房屋类别', '短租', '');
INSERT INTO `t_idnames` VALUES ('12', '房屋类别', '写字楼', '');
INSERT INTO `t_idnames` VALUES ('13', '房屋类别', '合租', '');
INSERT INTO `t_idnames` VALUES ('14', '房屋类别', '整租', '');
INSERT INTO `t_idnames` VALUES ('15', '装修状态', '精装修', '');
INSERT INTO `t_idnames` VALUES ('16', '装修状态', '简装', '');
INSERT INTO `t_idnames` VALUES ('17', '装修状态', '毛坯', '');

-- ----------------------------
-- Table structure for `t_ownerdelegates`
-- ----------------------------
DROP TABLE IF EXISTS `t_ownerdelegates`;
CREATE TABLE `t_ownerdelegates` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `TelphoneNum` varchar(20) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `RentDateTime` datetime NOT NULL,
  `RoomTypeId` bigint(20) NOT NULL,
  `CommunityName` varchar(100) NOT NULL,
  `TypeId` bigint(20) NOT NULL,
  `FollowAdminUserId` bigint(20) DEFAULT NULL,
  `FollowDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `FollowAdminUserId` (`FollowAdminUserId`),
  CONSTRAINT `t_ownerdelegates_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_users` (`Id`),
  CONSTRAINT `t_ownerdelegates_ibfk_2` FOREIGN KEY (`FollowAdminUserId`) REFERENCES `t_adminusers` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ownerdelegates
-- ----------------------------

-- ----------------------------
-- Table structure for `t_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `t_permissions`;
CREATE TABLE `t_permissions` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Description` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permissions
-- ----------------------------
INSERT INTO `t_permissions` VALUES ('1', '查询管理员', 'AdminUser.Query', '');
INSERT INTO `t_permissions` VALUES ('2', '删除管理员', 'AdminUser.Delete', '');
INSERT INTO `t_permissions` VALUES ('3', '新增管理员', 'AdminUser.AddNew', '');
INSERT INTO `t_permissions` VALUES ('4', '修改管理员', 'AdminUser.Edit', '');
INSERT INTO `t_permissions` VALUES ('5', '查询城市', 'City.Query', '');
INSERT INTO `t_permissions` VALUES ('6', '新增房源', 'House.AddNew', '');
INSERT INTO `t_permissions` VALUES ('7', '修改房源', 'House.Edit', '');
INSERT INTO `t_permissions` VALUES ('8', '删除房源', 'House.Delete', '');
INSERT INTO `t_permissions` VALUES ('9', '查询房源', 'House.Query', '');
INSERT INTO `t_permissions` VALUES ('10', '查看管理员', 'AdminUser.View', '');
INSERT INTO `t_permissions` VALUES ('11', '查询角色', 'Role.Query', '');
INSERT INTO `t_permissions` VALUES ('12', '删除角色', 'Role.Delete', '');
INSERT INTO `t_permissions` VALUES ('13', '新增角色', 'Role.AddNew', '');
INSERT INTO `t_permissions` VALUES ('14', '编辑角色', 'Role.Edit', '');
INSERT INTO `t_permissions` VALUES ('15', '查看角色', 'Role.View', '');
INSERT INTO `t_permissions` VALUES ('16', '查询房源', 'House.View', '');
INSERT INTO `t_permissions` VALUES ('17', '看房预约抢单', 'HouseAppointment.Follow', '');
INSERT INTO `t_permissions` VALUES ('18', '看房预约列表', 'HouseAppointment.Query', '');

-- ----------------------------
-- Table structure for `t_regions`
-- ----------------------------
DROP TABLE IF EXISTS `t_regions`;
CREATE TABLE `t_regions` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `CityId` bigint(20) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  CONSTRAINT `t_regions_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `t_cities` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_regions
-- ----------------------------
INSERT INTO `t_regions` VALUES ('1', '东城区', '1', '');
INSERT INTO `t_regions` VALUES ('2', '西城区', '1', '');
INSERT INTO `t_regions` VALUES ('3', '海淀区', '1', '');
INSERT INTO `t_regions` VALUES ('4', '朝阳区', '1', '');
INSERT INTO `t_regions` VALUES ('5', '丰台区', '1', '');
INSERT INTO `t_regions` VALUES ('6', '石景山区', '1', '');
INSERT INTO `t_regions` VALUES ('7', '房山区', '1', '');
INSERT INTO `t_regions` VALUES ('8', '昌平区', '1', '');
INSERT INTO `t_regions` VALUES ('9', '大兴区', '1', '');
INSERT INTO `t_regions` VALUES ('10', '黄浦区', '2', '');
INSERT INTO `t_regions` VALUES ('11', '徐汇区', '2', '');
INSERT INTO `t_regions` VALUES ('12', '长宁区', '2', '');
INSERT INTO `t_regions` VALUES ('13', '静安区', '2', '');
INSERT INTO `t_regions` VALUES ('14', '普陀区', '2', '');
INSERT INTO `t_regions` VALUES ('15', '闸北区', '2', '');
INSERT INTO `t_regions` VALUES ('16', '虹口区', '2', '');
INSERT INTO `t_regions` VALUES ('17', '杨浦区', '2', '');
INSERT INTO `t_regions` VALUES ('18', '闵行区', '2', '');
INSERT INTO `t_regions` VALUES ('19', '宝山区', '2', '');
INSERT INTO `t_regions` VALUES ('20', '嘉定区', '2', '');
INSERT INTO `t_regions` VALUES ('21', '浦东新区', '2', '');
INSERT INTO `t_regions` VALUES ('22', '罗湖区', '3', '');
INSERT INTO `t_regions` VALUES ('23', '福田区', '3', '');
INSERT INTO `t_regions` VALUES ('24', '南山区', '3', '');
INSERT INTO `t_regions` VALUES ('25', '宝安区', '3', '');
INSERT INTO `t_regions` VALUES ('26', '龙岗区\r\n', '3', '');
INSERT INTO `t_regions` VALUES ('27', '盐田区', '3', '');

-- ----------------------------
-- Table structure for `t_rolepermissions`
-- ----------------------------
DROP TABLE IF EXISTS `t_rolepermissions`;
CREATE TABLE `t_rolepermissions` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RoleId` bigint(20) NOT NULL,
  `PermissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `RoleId` (`RoleId`),
  KEY `PermissionId` (`PermissionId`),
  CONSTRAINT `t_rolepermissions_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `t_roles` (`Id`),
  CONSTRAINT `t_rolepermissions_ibfk_2` FOREIGN KEY (`PermissionId`) REFERENCES `t_permissions` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rolepermissions
-- ----------------------------
INSERT INTO `t_rolepermissions` VALUES ('10', '6', '1');
INSERT INTO `t_rolepermissions` VALUES ('11', '6', '2');
INSERT INTO `t_rolepermissions` VALUES ('12', '6', '3');
INSERT INTO `t_rolepermissions` VALUES ('13', '6', '4');
INSERT INTO `t_rolepermissions` VALUES ('37', '7', '1');
INSERT INTO `t_rolepermissions` VALUES ('38', '7', '3');
INSERT INTO `t_rolepermissions` VALUES ('39', '7', '4');
INSERT INTO `t_rolepermissions` VALUES ('40', '7', '5');
INSERT INTO `t_rolepermissions` VALUES ('41', '2', '1');
INSERT INTO `t_rolepermissions` VALUES ('42', '2', '2');
INSERT INTO `t_rolepermissions` VALUES ('43', '2', '3');
INSERT INTO `t_rolepermissions` VALUES ('44', '2', '4');
INSERT INTO `t_rolepermissions` VALUES ('45', '2', '5');
INSERT INTO `t_rolepermissions` VALUES ('46', '2', '6');
INSERT INTO `t_rolepermissions` VALUES ('47', '2', '7');
INSERT INTO `t_rolepermissions` VALUES ('48', '2', '8');
INSERT INTO `t_rolepermissions` VALUES ('49', '2', '9');
INSERT INTO `t_rolepermissions` VALUES ('50', '2', '10');
INSERT INTO `t_rolepermissions` VALUES ('51', '2', '11');
INSERT INTO `t_rolepermissions` VALUES ('52', '2', '12');
INSERT INTO `t_rolepermissions` VALUES ('53', '2', '13');
INSERT INTO `t_rolepermissions` VALUES ('54', '2', '14');
INSERT INTO `t_rolepermissions` VALUES ('55', '2', '15');
INSERT INTO `t_rolepermissions` VALUES ('56', '2', '16');
INSERT INTO `t_rolepermissions` VALUES ('57', '1', '6');
INSERT INTO `t_rolepermissions` VALUES ('58', '1', '7');
INSERT INTO `t_rolepermissions` VALUES ('59', '1', '8');
INSERT INTO `t_rolepermissions` VALUES ('60', '1', '9');
INSERT INTO `t_rolepermissions` VALUES ('61', '1', '12');
INSERT INTO `t_rolepermissions` VALUES ('62', '1', '13');
INSERT INTO `t_rolepermissions` VALUES ('63', '1', '15');
INSERT INTO `t_rolepermissions` VALUES ('64', '1', '16');
INSERT INTO `t_rolepermissions` VALUES ('65', '1', '17');
INSERT INTO `t_rolepermissions` VALUES ('66', '1', '18');
INSERT INTO `t_rolepermissions` VALUES ('67', '13', '3');
INSERT INTO `t_rolepermissions` VALUES ('68', '13', '9');
INSERT INTO `t_rolepermissions` VALUES ('69', '14', '2');
INSERT INTO `t_rolepermissions` VALUES ('70', '14', '8');
INSERT INTO `t_rolepermissions` VALUES ('71', '15', '10');
INSERT INTO `t_rolepermissions` VALUES ('72', '15', '11');
INSERT INTO `t_rolepermissions` VALUES ('73', '15', '15');
INSERT INTO `t_rolepermissions` VALUES ('74', '16', '15');
INSERT INTO `t_rolepermissions` VALUES ('75', '16', '16');

-- ----------------------------
-- Table structure for `t_roles`
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles` VALUES ('1', '房源管理员', '');
INSERT INTO `t_roles` VALUES ('2', '后台管理员', '');
INSERT INTO `t_roles` VALUES ('3', '实习编辑', '');
INSERT INTO `t_roles` VALUES ('4', 'test', '');
INSERT INTO `t_roles` VALUES ('5', 'test', '');
INSERT INTO `t_roles` VALUES ('6', 'test', '');
INSERT INTO `t_roles` VALUES ('7', 'test', '');
INSERT INTO `t_roles` VALUES ('8', '啊啊', '');
INSERT INTO `t_roles` VALUES ('9', '啊啊', '');
INSERT INTO `t_roles` VALUES ('10', '啊啊', '');
INSERT INTO `t_roles` VALUES ('11', '啊啊', '');
INSERT INTO `t_roles` VALUES ('12', '徐媛峰', '');
INSERT INTO `t_roles` VALUES ('13', '试试', '');
INSERT INTO `t_roles` VALUES ('14', '啊啊', '');
INSERT INTO `t_roles` VALUES ('15', '徐元', '');
INSERT INTO `t_roles` VALUES ('16', '这种', '');
INSERT INTO `t_roles` VALUES ('17', '123', '');

-- ----------------------------
-- Table structure for `t_settings`
-- ----------------------------
DROP TABLE IF EXISTS `t_settings`;
CREATE TABLE `t_settings` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_settings
-- ----------------------------
INSERT INTO `t_settings` VALUES ('1', 'RuPengSMS.UserName', 'abc');
INSERT INTO `t_settings` VALUES ('2', 'RuPengSMS.AppKey', '3043e1ac822ebe2f91cfca');
INSERT INTO `t_settings` VALUES ('3', 'RuPengSMS.TemplateId', '9');
INSERT INTO `t_settings` VALUES ('5', 'FileServer.RootUrl', 'http://127.0.0.1:8000/');
INSERT INTO `t_settings` VALUES ('6', 'FileServer.RootDir', 'D:/greeninstall/miniweb/htdocs/');
INSERT INTO `t_settings` VALUES ('7', 'HouseStaticPagesDir', 'E:/Users/yzk/git/FangSao/WebContent/houses/');
INSERT INTO `t_settings` VALUES ('8', 'FrontRootUrl', 'http://localhost:8080/FangSao/');
INSERT INTO `t_settings` VALUES ('9', 'AdminReportToEmail', 'yzk@rupeng.com');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `PhoneNum` varchar(20) NOT NULL,
  `PasswordHash` varchar(100) NOT NULL,
  `PasswordSalt` varchar(100) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `LoginErrorTimes` int(11) NOT NULL,
  `LastLoginErrorDateTime` datetime DEFAULT NULL,
  `CityId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `t_cities` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', '18911275827', 'CE6830FED8E0CC984D2DEA5DE87ABD6F', 'TDANBA', '2016-08-30 01:40:01', '0', null, '3');
INSERT INTO `t_users` VALUES ('2', '18911275827', '999E035A7C8A39C41007FA397D6F3A39', '2YPCR8', '2016-08-30 01:41:21', '0', null, null);
INSERT INTO `t_users` VALUES ('18', '110', '123', '$c$', '2017-10-28 20:39:00', '0', null, null);
INSERT INTO `t_users` VALUES ('19', '110', '123', '1b5', '2017-10-28 20:39:39', '0', null, null);
INSERT INTO `t_users` VALUES ('20', '110', '123', 'b!4', '2017-10-28 20:41:06', '0', null, null);
