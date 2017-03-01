/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : 127.0.0.1:3306
Source Database       : express

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-07-09 13:21:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(30) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('1', '上海', '2');
INSERT INTO `t_address` VALUES ('2', '天津', '2');
INSERT INTO `t_address` VALUES ('3', '沈阳', '2');
INSERT INTO `t_address` VALUES ('4', '道里区中转', '1');
INSERT INTO `t_address` VALUES ('5', '哈尔滨', '3');
INSERT INTO `t_address` VALUES ('6', '上海', '3');
INSERT INTO `t_address` VALUES ('7', '天津', '3');
INSERT INTO `t_address` VALUES ('8', '沈阳', '3');
INSERT INTO `t_address` VALUES ('9', '北京', '4');
INSERT INTO `t_address` VALUES ('10', '沈阳', '4');
INSERT INTO `t_address` VALUES ('11', '鹤岗', '3');
INSERT INTO `t_address` VALUES ('12', '牡丹江', '5');

-- ----------------------------
-- Table structure for t_complain
-- ----------------------------
DROP TABLE IF EXISTS `t_complain`;
CREATE TABLE `t_complain` (
  `complain_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `usertel` varchar(30) DEFAULT NULL,
  `product_price` varchar(30) DEFAULT NULL,
  `complain_content` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`complain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_complain
-- ----------------------------
INSERT INTO `t_complain` VALUES ('1', '2', '2015-08-25', '张三', '13215498923', '20', '运送速度太慢了，快递服务不好！！！！', '1');

-- ----------------------------
-- Table structure for t_courier
-- ----------------------------
DROP TABLE IF EXISTS `t_courier`;
CREATE TABLE `t_courier` (
  `courier_id` int(11) NOT NULL AUTO_INCREMENT,
  `courier_name` varchar(30) DEFAULT NULL,
  `courier_tel` varchar(30) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_courier
-- ----------------------------
INSERT INTO `t_courier` VALUES ('1', '小松', '13215456659', '1');
INSERT INTO `t_courier` VALUES ('2', '小李', '15236587459', '2');
INSERT INTO `t_courier` VALUES ('3', '小王', '15678954263', '3');
INSERT INTO `t_courier` VALUES ('4', '小明', '15544677264', '4');
INSERT INTO `t_courier` VALUES ('5', '小明', '15544677264', '5');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `send_address` varchar(30) DEFAULT NULL,
  `receive_address` varchar(30) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_weight` double(30,0) DEFAULT NULL,
  `product_price` varchar(30) DEFAULT NULL,
  `product_kind` varchar(30) DEFAULT NULL,
  `send_name` varchar(30) DEFAULT NULL,
  `send_tel` varchar(30) DEFAULT NULL,
  `receive_name` varchar(30) DEFAULT NULL,
  `receive_tel` varchar(30) DEFAULT NULL,
  `order_state` int(11) DEFAULT '0',
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '2', '黑龙江省哈尔滨市香坊区', '黑龙江省哈尔滨市道外区', '衣服', '3', '20', '常规', '宫春成', '15161651514', '雷博生', '13214214225', '0', '2016-03-22 08:25:42');
INSERT INTO `t_order` VALUES ('2', '2', '北京省北京市朝阳区23号', '黑龙江省哈尔滨市三大动力路23号', '食品', '10', '55', '常规', '张三', '13214455667', '李四', '15411225567', '2', '2016-03-22 08:37:02');
INSERT INTO `t_order` VALUES ('3', '2', '北京省北京市海淀区213号', '黑龙江省哈尔滨市南岗区455号', '鞋', '2', '15', '常规', '方瑞', '134555122364', '刘德华', '13344455667', '2', '2016-03-12 11:01:51');
INSERT INTO `t_order` VALUES ('4', '2', '吉林省四平市市依安县', '黑龙江省哈尔滨市道里区422号', '衣服', '5', '30', '常规', '代强', '18545633256', '李聪聪', '18244756132', '3', '2016-03-11 20:52:12');
INSERT INTO `t_order` VALUES ('5', '2', '黑龙江省鹤岗市绥滨县', '黑龙江省哈尔滨市黑大', '衣服', '1', '10', '常规', '侯鸿宇', '18666666666', '张', '18699999999', '2', '2016-03-22 08:37:21');
INSERT INTO `t_order` VALUES ('6', '2', '黑龙江省哈尔滨市请填写详细地址（例如XX路，XX号）', '黑龙江省哈尔滨市请填写详细地址（例如XX路，XX号）', '物品名称', '0', '10', '常规', '姓名', '手机号码', '姓名', '手机号码', '0', '2016-03-30 17:54:38');
INSERT INTO `t_order` VALUES ('7', '2', '黑龙江省哈尔滨市请填写详细地址（例如XX路，XX号）', '黑龙江省哈尔滨市请填写详细地址（例如XX路，XX号）', '物品名称', '0', '10', '常规', '姓名', '手机号码', '姓名', '手机号码', '0', '2016-03-30 18:39:52');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `is_admin` int(2) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', '1');
INSERT INTO `t_user` VALUES ('2', 'zhangsan', '123456', '0');
INSERT INTO `t_user` VALUES ('3', 'hou', '123', '0');
