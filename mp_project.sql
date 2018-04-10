/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : t_project

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-10 19:01:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mp_api
-- ----------------------------
DROP TABLE IF EXISTS `mp_api`;
CREATE TABLE `mp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT 'url地址',
  `mothed` int(2) NOT NULL COMMENT '请求方法',
  `params` text COMMENT '发送参数(json包含键值键名描述等)',
  `project_id` int(11) NOT NULL COMMENT '项目ID',
  `headers` text COMMENT '请求参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='api表';

-- ----------------------------
-- Table structure for mp_column
-- ----------------------------
DROP TABLE IF EXISTS `mp_column`;
CREATE TABLE `mp_column` (
  `id` int(6) NOT NULL AUTO_INCREMENT COMMENT '栏位id',
  `table_id` int(11) NOT NULL COMMENT '表ID',
  `Field` char(255) NOT NULL COMMENT '字段名',
  `Comment` char(255) DEFAULT NULL COMMENT '注释',
  `Type` char(255) DEFAULT NULL COMMENT '类型',
  `Key` char(255) DEFAULT NULL COMMENT '主键',
  `introduce` text COMMENT '介绍字段',
  `Null` char(255) DEFAULT NULL COMMENT '能否为空',
  `Default` char(255) DEFAULT NULL COMMENT '默认值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2889 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mp_db
-- ----------------------------
DROP TABLE IF EXISTS `mp_db`;
CREATE TABLE `mp_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据库id',
  `driver` char(255) NOT NULL DEFAULT 'mysql' COMMENT '数据库类型',
  `dsn` char(255) DEFAULT NULL COMMENT 'dsn',
  `database` char(40) NOT NULL DEFAULT 'manp' COMMENT '数据库',
  `host` char(40) NOT NULL DEFAULT 'localhost' COMMENT '主机名',
  `username` char(40) NOT NULL DEFAULT 'root' COMMENT '用户名',
  `password` char(40) NOT NULL DEFAULT '123456' COMMENT '密码',
  `prefix` char(255) DEFAULT NULL COMMENT '表前缀',
  `charset` char(255) DEFAULT 'utf8' COMMENT '字符集',
  `port` int(6) DEFAULT '3306' COMMENT '端口号',
  `params` char(255) DEFAULT NULL COMMENT '额外参数',
  `collation` varchar(40) DEFAULT NULL COMMENT '字符集',
  `comment` varchar(40) DEFAULT NULL COMMENT '注释',
  `introduce` text COMMENT '介绍',
  `user_id` int(6) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mp_respond
-- ----------------------------
DROP TABLE IF EXISTS `mp_respond`;
CREATE TABLE `mp_respond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `field` varchar(30) DEFAULT NULL COMMENT '字段名',
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '关于字段的详细描述',
  `value` varchar(255) DEFAULT NULL COMMENT '键值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='api响应表';

-- ----------------------------
-- Table structure for mp_table
-- ----------------------------
DROP TABLE IF EXISTS `mp_table`;
CREATE TABLE `mp_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '表名',
  `comment` varchar(255) DEFAULT NULL COMMENT '表的注释',
  `introduce` text COMMENT '表介绍',
  `db_id` int(11) NOT NULL COMMENT '数据库ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mp_user
-- ----------------------------
DROP TABLE IF EXISTS `mp_user`;
CREATE TABLE `mp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(20) NOT NULL COMMENT '昵称',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `password` varchar(60) NOT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `phone` int(12) DEFAULT NULL COMMENT '手机号',
  `type` tinyint(2) NOT NULL COMMENT '用户类型:',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';
SET FOREIGN_KEY_CHECKS=1;