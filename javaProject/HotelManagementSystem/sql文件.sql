/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : hoteltest

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/10/2022 13:46:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discussjiudianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussjiudianxinxi`;
CREATE TABLE `discussjiudianxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `discussjiudianxinxi_refid`(`refid`) USING BTREE,
  INDEX `discussjiudianxinxi_userid`(`userid`) USING BTREE,
  CONSTRAINT `discussjiudianxinxi_refid` FOREIGN KEY (`refid`) REFERENCES `jiudianxinxi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `discussjiudianxinxi_userid` FOREIGN KEY (`userid`) REFERENCES `yonghu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discusskefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusskefangxinxi`;
CREATE TABLE `discusskefangxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `discusskefangxinxi_refid`(`refid`) USING BTREE,
  INDEX `discusskefangxinxi_userid`(`userid`) USING BTREE,
  CONSTRAINT `discusskefangxinxi_refid` FOREIGN KEY (`refid`) REFERENCES `kefangxinxi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `discusskefangxinxi_userid` FOREIGN KEY (`userid`) REFERENCES `yonghu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jiudianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jiudianxinxi`;
CREATE TABLE `jiudianxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `jiudianmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '酒店名称',
  `leibie` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别',
  `xingji` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星级',
  `jiudiantupian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店图片',
  `jiudiandiqu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店地区',
  `jiudiandizhi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `jiudianjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '酒店介绍',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jiudianmingcheng`(`jiudianmingcheng`) USING BTREE,
  INDEX `leibie`(`leibie`) USING BTREE,
  INDEX `xingji`(`xingji`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kefangxinxi`;
CREATE TABLE `kefangxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kefangmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房图片',
  `kefangsheshi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房设施',
  `kefangjiage` int(0) NOT NULL COMMENT '客房价格',
  `kefangzhuangtai` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房状态',
  `jiudianmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `leibie` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `xingji` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星级',
  `jiudiandizhi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `kefangjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客房介绍',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kefangmingcheng`(`kefangmingcheng`) USING BTREE,
  INDEX `kefangxinxi_jiudianmingcheng`(`jiudianmingcheng`) USING BTREE,
  INDEX `kefangleixing`(`kefangleixing`) USING BTREE,
  INDEX `kefangxinxi_leibie`(`leibie`) USING BTREE,
  INDEX `kefangxinxi_xingji`(`xingji`) USING BTREE,
  CONSTRAINT `kefangxinxi_jiudianmingcheng` FOREIGN KEY (`jiudianmingcheng`) REFERENCES `jiudianxinxi` (`jiudianmingcheng`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangxinxi_leibie` FOREIGN KEY (`leibie`) REFERENCES `jiudianxinxi` (`leibie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangxinxi_xingji` FOREIGN KEY (`xingji`) REFERENCES `jiudianxinxi` (`xingji`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kefangyuding
-- ----------------------------
DROP TABLE IF EXISTS `kefangyuding`;
CREATE TABLE `kefangyuding`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `kefangmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `kefangtupian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房图片',
  `kefangzhuangtai` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房状态',
  `jiudianmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `kefangjiage` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房价格',
  `ruzhutianshu` int(0) NOT NULL COMMENT '入住天数',
  `zongjiage` int(0) NULL DEFAULT NULL COMMENT '总价格',
  `ruzhurenshu` int(0) NOT NULL COMMENT '入住人数',
  `xiadanshijian` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `ruzhushijian` datetime(0) NULL DEFAULT NULL COMMENT '入住时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kefangyuding_yonghuming`(`yonghuming`) USING BTREE,
  INDEX `kefangyuding_kefangmingcheng`(`kefangmingcheng`) USING BTREE,
  INDEX `kefangyuding_shouji`(`shouji`) USING BTREE,
  INDEX `kefangyuding_shenfenzheng`(`shenfenzheng`) USING BTREE,
  INDEX `kefangyuding_kefangleixing`(`kefangleixing`) USING BTREE,
  CONSTRAINT `kefangyuding_kefangleixing` FOREIGN KEY (`kefangleixing`) REFERENCES `kefangxinxi` (`kefangleixing`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangyuding_kefangmingcheng` FOREIGN KEY (`kefangmingcheng`) REFERENCES `kefangxinxi` (`kefangmingcheng`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangyuding_shenfenzheng` FOREIGN KEY (`shenfenzheng`) REFERENCES `yonghu` (`shenfenzheng`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangyuding_shouji` FOREIGN KEY (`shouji`) REFERENCES `yonghu` (`shouji`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kefangyuding_yonghuming` FOREIGN KEY (`yonghuming`) REFERENCES `yonghu` (`yonghuming`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1664775011122 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房预订' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '留言人id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `messages_userid`(`userid`) USING BTREE,
  CONSTRAINT `messages_userid` FOREIGN KEY (`userid`) REFERENCES `yonghu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `storeup_userid`(`userid`) USING BTREE,
  CONSTRAINT `storeup_userid` FOREIGN KEY (`userid`) REFERENCES `yonghu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1662193297124 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid2`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yonghuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shouji` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE,
  INDEX `shouji`(`shouji`) USING BTREE,
  INDEX `shenfenzheng`(`shenfenzheng`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1664774960963 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
