/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : authority-control

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-06-16 17:51:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` int(11) NOT NULL COMMENT '父级菜单id',
  `parent_name` varchar(50) DEFAULT NULL COMMENT '父级菜单名称',
  `type` tinyint(4) NOT NULL COMMENT '菜单类型 1:目录 2：菜单 2：按钮',
  `url` varchar(50) DEFAULT NULL COMMENT '菜单url',
  `code` varchar(50) DEFAULT NULL COMMENT '授权编码',
  `color` varchar(32) DEFAULT NULL COMMENT '颜色',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `sort` tinyint(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '系统管理', '0', null, '1', null, null, null, null, '1');
INSERT INTO `t_permission` VALUES ('2', '用户管理', '1', '系统管理', '2', 'user/listUI', 'user:listUI', null, null, '1');
INSERT INTO `t_permission` VALUES ('3', '新增', '2', '用户管理', '3', null, 'user:add', 'btn-primary', 'icon-ok', '2');
INSERT INTO `t_permission` VALUES ('4', '编辑', '2', '用户管理', '3', null, 'user:update', 'btn-warning', 'icon-edit', '3');
INSERT INTO `t_permission` VALUES ('5', '删除', '2', '用户管理', '3', null, 'user:delete', 'btn-danger', 'icon-trash', '4');
INSERT INTO `t_permission` VALUES ('6', '角色管理', '1', '系统管理', '2', 'role/listUI', 'role:listUI', null, null, '2');
INSERT INTO `t_permission` VALUES ('7', '新增', '6', '角色管理', '3', null, 'role:add', 'btn-primary', 'icon-ok', '2');
INSERT INTO `t_permission` VALUES ('8', '编辑', '6', '角色管理', '3', null, 'role:update', 'btn-warning', 'icon-edit', '3');
INSERT INTO `t_permission` VALUES ('9', '删除', '6', '角色管理', '3', null, 'role:delete', 'btn-danger', 'icon-trash', '4');
INSERT INTO `t_permission` VALUES ('10', '权限管理', '1', '系统管理', '2', 'permission/listUI', 'permission:listUI', null, null, '3');
INSERT INTO `t_permission` VALUES ('11', '新增', '10', '权限管理', '3', null, 'permission:add', 'btn-primary', 'icon-ok', '1');
INSERT INTO `t_permission` VALUES ('12', '编辑', '10', '权限管理', '3', null, 'permission:update', 'btn-warning', 'icon-edit', '2');
INSERT INTO `t_permission` VALUES ('13', '删除', '10', '权限管理', '3', null, 'permission:delete', 'btn-danger', 'icon-trash', '3');
INSERT INTO `t_permission` VALUES ('14', '设置角色', '2', '用户管理', '3', null, 'user:setRole', 'btn-success', 'icon-cog', '1');
INSERT INTO `t_permission` VALUES ('15', '设置权限', '6', '角色管理', '3', null, 'role:setPermission', 'btn-success', 'icon-cog', '1');
INSERT INTO `t_permission` VALUES ('16', '订单管理', '0', null, '1', null, null, null, null, '2');
INSERT INTO `t_permission` VALUES ('17', '配送管理', '16', '订单管理', '2', 'delivery/listUI', 'delivery:listUI', null, null, '1');
INSERT INTO `t_permission` VALUES ('18', '售后管理', '16', '订单管理', '2', 'cs/listUI', 'cs:listUI', null, null, '2');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `descr` varchar(255) DEFAULT NULL COMMENT '角色说明',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员', '最高权限');
INSERT INTO `t_role` VALUES ('2', '订单管理员', '只能操作订单管理目录及其菜单');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('16', '2', '16');
INSERT INTO `t_role_permission` VALUES ('17', '2', '17');
INSERT INTO `t_role_permission` VALUES ('18', '2', '18');
INSERT INTO `t_role_permission` VALUES ('19', '1', '1');
INSERT INTO `t_role_permission` VALUES ('20', '1', '2');
INSERT INTO `t_role_permission` VALUES ('21', '1', '3');
INSERT INTO `t_role_permission` VALUES ('22', '1', '4');
INSERT INTO `t_role_permission` VALUES ('23', '1', '5');
INSERT INTO `t_role_permission` VALUES ('24', '1', '14');
INSERT INTO `t_role_permission` VALUES ('25', '1', '6');
INSERT INTO `t_role_permission` VALUES ('26', '1', '7');
INSERT INTO `t_role_permission` VALUES ('27', '1', '8');
INSERT INTO `t_role_permission` VALUES ('28', '1', '9');
INSERT INTO `t_role_permission` VALUES ('29', '1', '15');
INSERT INTO `t_role_permission` VALUES ('30', '1', '10');
INSERT INTO `t_role_permission` VALUES ('31', '1', '11');
INSERT INTO `t_role_permission` VALUES ('32', '1', '12');
INSERT INTO `t_role_permission` VALUES ('33', '1', '13');
INSERT INTO `t_role_permission` VALUES ('34', '1', '16');
INSERT INTO `t_role_permission` VALUES ('35', '1', '17');
INSERT INTO `t_role_permission` VALUES ('36', '1', '18');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `email` varchar(64) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `salt` varchar(10) DEFAULT NULL COMMENT '盐',
  `status` tinyint(1) NOT NULL COMMENT '状态1:启用 0：禁用',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '900150983cd24fb0d6963f7d28e17f72', 'admin@163.com', null, 'abc', '1', '2017-12-12 12:42:20', '2017-12-12 12:42:22');
INSERT INTO `t_user` VALUES ('2', 'order', '900150983cd24fb0d6963f7d28e17f72', 'order@163.com', null, 'abc', '1', '2017-12-12 12:42:20', '2017-12-12 12:42:22');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2', '2');
