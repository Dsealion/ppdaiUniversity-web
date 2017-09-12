/*
Target Server Type    : MYSQL
Source Database       : ppdaiUniversity
Author                : zhangshibo

Date: 2017-09-01 10:57:19
*/
DROP DATABASE if exists ppdaiUniversity;
create database ppdaiUniversity; 
use ppdaiUniversity;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `intro` varchar(8192) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `categoryId` int(5) DEFAULT NULL,
  `providerName` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `oriUrl` varchar(255) DEFAULT NULL,
  `thumbnailUrl` varchar(255) DEFAULT NULL,
  `videoStateId` int(5) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `playCount` int(5) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_CATEGORY` (`categoryId`),
  KEY `FK_VIDEOSTATE` (`videoStateId`),
  CONSTRAINT `FK_CATEGORY` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_VIDEOSTATE` FOREIGN KEY (`videoStateId`) REFERENCES `videostate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '拍拍贷进化论', '影片讲述了拍拍贷进化论', '2017-09-10 13:13:35', '2017-09-10 13:13:35','1', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('2', '拍拍贷兵器谱', '影片讲述了拍拍贷兵器谱', '2017-09-10 13:13:35', '2017-09-10 13:13:35','1', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('3', '十年一剑说风控', '影片讲述了十年一剑说风控', '2017-09-10 13:13:35', '2017-09-10 13:13:35','1', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('4', '江湖前规则', '影片讲述了江湖前规则', '2017-09-10 13:13:35', '2017-09-10 13:13:35','1', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('5', '金融科技', '影片讲述了金融科技', '2017-09-10 13:13:35', '2017-09-10 13:13:35','1', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('6', '时间管理', '影片讲述了时间管理', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('7', '压力管理', '影片讲述了压力管理', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('8', '结构化思维', '影片讲述了结构化思维', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('9', 'PPT制作基础', '影片讲述了PPT制作基础', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('10', 'EXCEL基础', '影片讲述了EXCEL基础', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('11', '邮件礼仪', '影片讲述了邮件礼仪', '2017-09-10 13:13:35', '2017-09-10 13:13:35','2', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('12', '心态转变', '影片讲述了心态转变', '2017-09-10 13:13:35', '2017-09-10 13:13:35','3', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('13', '目标与执行', '影片讲述了目标与执行', '2017-09-10 13:13:35', '2017-09-10 13:13:35','3', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('14', '绩效辅导沟通', '影片讲述了绩效辅导沟通', '2017-09-10 13:13:35', '2017-09-10 13:13:35','3', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('15', '有效激励', '影片讲述了有效激励', '2017-09-10 13:13:35', '2017-09-10 13:13:35','3', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('16', '待开发', '影片讲述了待开发', '2017-09-10 13:13:35', '2017-09-10 13:13:35','4', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');
INSERT INTO `video` VALUES ('17', '待开发', '影片讲述了待开发', '2017-09-10 13:13:35', '2017-09-10 13:13:35','5', '借入', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/ted02', 'http://ovhznawlr.bkt.clouddn.com/cat.jpg', '4', null,'0');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `menuId` int(5) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,  
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '新人培训类', '5', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `category` VALUES ('2', '通用技能类', '5', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `category` VALUES ('3', '初级管理者', '5', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `category` VALUES ('4', '中层管理者', '5', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `category` VALUES ('5', '高层管理者', '5', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);

-- ----------------------------
-- Table structure for `videostate`
-- ----------------------------
DROP TABLE IF EXISTS `videostate`;
CREATE TABLE `videostate` (
  `id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `orderNum` int(5) DEFAULT NULL,
  `cssstyle` varchar(255) DEFAULT NULL, 
  `creationDate` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videostate
-- ----------------------------
INSERT INTO `videostate` VALUES ('1', '等待上传', '1', 'background:#CCFFFF', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `videostate` VALUES ('2', '等待截图', '2', 'background:#00FF99', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `videostate` VALUES ('3', '等待转码', '3', 'background:#00FF00', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);
INSERT INTO `videostate` VALUES ('4', '完成'    , '4', 'background:#FFFFFF', '2017-09-10 13:13:35', '2017-09-10 13:13:35', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `parentId` int(5) COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) COMMENT '菜单名称',
  `url` varchar(200) COMMENT '菜单URL',
  `perms` varchar(500) COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) COMMENT '菜单图标',
  `orderNum` int COMMENT '排序',
  `creationDate` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('1', '0', '系统管理', NULL, NULL, '0', 'fa fa-cog', '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('2', '1', '管理员列表', '', NULL, '1', 'fa fa-user', '1');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('3', '1', '角色管理', 'modules/sys/role.html', NULL, '1', 'fa fa-user-secret', '2');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', NULL, '1', 'fa fa-th-list', '3');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('5', '4', '新人培训类(青米粒&麦芽糖)', 'content/content', NULL, '1', 'fa fa-bug', '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('6', '4', '通用技能类(通用技能)', 'druid/sql.html', NULL, '1', 'fa fa-bug', '1');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('7', '4', '初级管理者(油菜花)', 'druid/sql.html', NULL, '1', 'fa fa-bug', '2');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('8', '4', '中级管理者(玉米粒)', 'druid/sql.html', NULL, '1', 'fa fa-bug', '3');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('9', '4', '高层管理者(红高粱)', 'druid/sql.html', NULL, '1', 'fa fa-bug', '4');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('10', '5', '精选好课', 'druid/sql.html', NULL, '1', 'fa fa-bug', '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('11', '5', '编程语言', 'druid/sql.html', NULL, '1', 'fa fa-bug', '1');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('12', '5', '前端开发', 'druid/sql.html', NULL, '1', 'fa fa-bug', '2');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('13', '5', '后端开发', 'druid/sql.html', NULL, '1', 'fa fa-bug', '3');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('14', '5', '移动开发', 'druid/sql.html', NULL, '1', 'fa fa-bug', '4');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('15', '2', '查看', NULL, 'sys:user:list,sys:user:info', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('16', '2', '新增', NULL, 'sys:user:save,sys:role:select', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('17', '2', '修改', NULL, 'sys:user:update,sys:role:select', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('18', '2', '删除', NULL, 'sys:user:delete', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('19', '3', '查看', NULL, 'sys:role:list,sys:role:info', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('20', '3', '新增', NULL, 'sys:role:save,sys:menu:list', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('21', '3', '修改', NULL, 'sys:role:update,sys:menu:list', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('22', '3', '删除', NULL, 'sys:role:delete', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('23', '4', '查看', NULL, 'sys:menu:list,sys:menu:info', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('24', '4', '新增', NULL, 'sys:menu:save,sys:menu:select', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('25', '4', '修改', NULL, 'sys:menu:update,sys:menu:select', '2', NULL, '0');
INSERT INTO `menu` (`id`, `parentId`, `name`, `url`, `perms`, `type`, `icon`, `orderNum`) VALUES ('26', '4', '删除', NULL, 'sys:menu:delete', '2', NULL, '0');
