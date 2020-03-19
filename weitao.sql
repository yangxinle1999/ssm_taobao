/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : weitao

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-01-08 11:53:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `d_id` int(100) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) NOT NULL,
  `d_password` varchar(255) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('5', 'admin1', '12345');
INSERT INTO `administrators` VALUES ('6', 'admin2', '123456');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `c_id` int(100) NOT NULL,
  `c_uid` int(100) NOT NULL,
  `c_gid` int(100) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_uid` (`c_uid`),
  KEY `c_gid` (`c_gid`),
  CONSTRAINT `c_gid` FOREIGN KEY (`c_gid`) REFERENCES `goods` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_uid` FOREIGN KEY (`c_uid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `d_id` int(50) NOT NULL AUTO_INCREMENT,
  `d_uid` int(50) NOT NULL,
  `d_gid` int(50) NOT NULL,
  `d_dingdanhao` varchar(255) NOT NULL,
  `d_appraise` varchar(255) DEFAULT NULL,
  `d_time` datetime DEFAULT NULL,
  PRIMARY KEY (`d_id`),
  KEY `d_uid` (`d_uid`),
  KEY `d_gid` (`d_gid`),
  CONSTRAINT `d_gid` FOREIGN KEY (`d_gid`) REFERENCES `goods` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `d_uid` FOREIGN KEY (`d_uid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('2', '34', '10', '1199241904424800129363bc54b5199c05875810b51d9', null, '2019-09-24 19:00:47');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `g_id` int(100) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) NOT NULL,
  `g_price` double(100,0) NOT NULL,
  `g_store` varchar(255) NOT NULL,
  `g_pageView` int(255) DEFAULT NULL,
  `g_image` varchar(255) NOT NULL,
  `g_category` varchar(255) DEFAULT NULL,
  `g_attribute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', '相机1', '1111', '奥神旗舰店', null, 'http://localhost:8080/goodsImage/27d80b66d3e1439987ee37d48fa07ab3img1.jpg', '相机', '数码');
INSERT INTO `goods` VALUES ('4', '相机2', '122', '奥神旗舰店', null, 'http://localhost:8080/goodsImage/9407f9e6e8564da1a2fa15b6da116a42img2.jpg', '相机', '数码');
INSERT INTO `goods` VALUES ('5', '相机3', '122', '奥神旗舰店', null, 'http://localhost:8080/goodsImage/5f74bd68ab5b478ba4ffa44c4bce6931img3.jpg', '相机', '数码');
INSERT INTO `goods` VALUES ('7', '沙发1', '456', '奥神旗舰店', null, 'http://localhost:8080/goodsImage/9cc8447c36e54da38f4be6916dfb89ceimg4.jpg', '沙发', '家具');
INSERT INTO `goods` VALUES ('8', '婴儿推车1', '1111', '奥神旗舰店', null, 'http://localhost:8080/goodsImage/ceaed6a8084e4607991333b848d9ea64img7.jpg', '婴儿推车', '母婴');
INSERT INTO `goods` VALUES ('9', '卫衣1', '131', '洛克旗舰店', null, 'http://localhost:8080/goodsImage/03da055dce2a4d5796ed0c16c7accef4img10.jpg', '卫衣', '女装');
INSERT INTO `goods` VALUES ('10', '矿泉水1', '57', '洛克旗舰店', null, 'http://localhost:8080/goodsImage/3ce0c20dbe5542f0a430eed24215093cimg14.jpg', '矿泉水', '美食');
INSERT INTO `goods` VALUES ('11', '婴儿推车2', '111', '洛克旗舰店', null, 'http://localhost:8080/goodsImage/1ac52fdbc9d34ab2baf5808ce22dadcbimg8.jpg', '婴儿推车', '母婴');
INSERT INTO `goods` VALUES ('12', '卫衣2', '475', '罗乃旗舰店', null, 'http://localhost:8080/goodsImage/54adc83ed23f4751904cc48d1b8342beimg11.jpg', '卫衣', '女装');
INSERT INTO `goods` VALUES ('13', '牛奶1', '11', '罗乃旗舰店', null, 'http://localhost:8080/goodsImage/b7b225b3950a489a8a36b3248da051b0img17.jpg', '牛奶', '美食');
INSERT INTO `goods` VALUES ('16', '帽子1', '155', '罗乃旗舰店', null, 'http://localhost:8080/goodsImage/29b504d44ca74cb69213e2e12e280d70img20.jpg', '帽子', '男装');
INSERT INTO `goods` VALUES ('17', '裤子1', '12', '软件协会', null, 'http://localhost:8080/goodsImage/6be02811e9994ffc8e613fdf30897e07img23.jpg', '裤子', '男装');
INSERT INTO `goods` VALUES ('18', '裤子2', '123', '软件协会', null, 'http://localhost:8080/goodsImage/c3e282ff54a0457cbacde81754d60d4fimg26.jpg', '裤子', '男装');
INSERT INTO `goods` VALUES ('19', '上衣1', '11', '软件协会', null, 'http://localhost:8080/goodsImage/20e81e9cdf8c4dd3922c2a71eb2d2351img29.jpg', '上衣', '男装');
INSERT INTO `goods` VALUES ('20', '裤子3', '123', '软件协会', null, 'http://localhost:8080/goodsImage/24ee5dd012ed4b91822b8ec7a8b80457img25.jpg', '裤子', '男装');
INSERT INTO `goods` VALUES ('21', '卫衣3', '111', '软件协会', null, 'http://localhost:8080/goodsImage/21f965ff20a24d26a59f56e681dc5a8eimg12.jpg', '卫衣', '女装');
INSERT INTO `goods` VALUES ('22', '上衣2', '0', '软件协会', null, 'http://localhost:8080/goodsImage/4784f932ad63485296904f488f689be0img27.jpg', '上衣', '男装');
INSERT INTO `goods` VALUES ('23', '裤子4', '111', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/0b382f4db97c434e8152ec481d4da708img24.jpg', '裤子', '男装');
INSERT INTO `goods` VALUES ('24', '上衣2', '66', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/00f7f9b66fd24373ab6e2ce12a84ee40img28.jpg', '上衣', '男装');
INSERT INTO `goods` VALUES ('25', '上衣3', '111', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/7d01bda68b5a4b47a9a26528f17c82acimg27.jpg', '上衣', '男装');
INSERT INTO `goods` VALUES ('26', '裤子5', '112', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/f7f974cf71434fc59e8078f1a2ac91e9img26.jpg', '裤子', '男装');
INSERT INTO `goods` VALUES ('27', '卫衣4', '14', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/f5300a7b7cf042589f1f9a37e5250075img11.jpg', '卫衣', '女装');
INSERT INTO `goods` VALUES ('28', '手机1', '1234', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/8eda59892f274026888cc212fcd49ba6img30.jpg', '手机', '数码');
INSERT INTO `goods` VALUES ('29', '相机4', '78', '卡瓦度旗舰店', null, 'http://localhost:8080/goodsImage/59a4d33b3d92433296a364f7c559baaeimg1.jpg', '相机', '数码');
INSERT INTO `goods` VALUES ('30', '沙发2', '544', '南极人旗舰店', null, 'http://localhost:8080/goodsImage/1c9fe457175a4899bbfdf85951753a0cimg5.jpg', '沙发', '家具');
INSERT INTO `goods` VALUES ('31', '婴儿床1', '90', '南极人旗舰店', null, 'http://localhost:8080/goodsImage/3b3040633b734b1da82a89fe830dc476img34.jpg', '婴儿床', '母婴');
INSERT INTO `goods` VALUES ('32', '牛奶2', '54', '南极人旗舰店', null, 'http://localhost:8080/goodsImage/6fc33f6784014f4bb6d9f6eb237ce46dimg17.jpg', '牛奶', '美食');
INSERT INTO `goods` VALUES ('33', '书桌1', '322', '南极人旗舰店', null, 'http://localhost:8080/goodsImage/f901cff65e114a099d6d08534ace6d0cimg32.jpg', '书桌', '家具');
INSERT INTO `goods` VALUES ('34', '电脑1', '3455', '南极人旗舰店', null, 'http://localhost:8080/goodsImage/375bea2f86374abeb2900e4b55054b7aimg36.jpg', '电脑', '数码');
INSERT INTO `goods` VALUES ('35', '婴儿推车3', '234', '宇科旗舰店', null, 'http://localhost:8080/goodsImage/138753b6d0804c67aaa1ff1c87d77a22img9.jpg', '婴儿推车', '母婴');
INSERT INTO `goods` VALUES ('36', '湿巾1', '123', '宇科旗舰店', null, 'http://localhost:8080/goodsImage/a2faa323d0484edca95ffbf2d1983e80img38.jpg', '湿巾', '母婴');
INSERT INTO `goods` VALUES ('37', '香肠1', '3', '宇科旗舰店', null, 'http://localhost:8080/goodsImage/814228159d184bc282e38b9689eab464img40.jpg', '香肠', '美食');
INSERT INTO `goods` VALUES ('39', 'T恤1', '211', '宇科旗舰店', null, 'http://localhost:8080/goodsImage/675c2803d99741658846a281a5e2fdfdimg44.jpg', 'T恤', '女装');
INSERT INTO `goods` VALUES ('40', '矿泉水2', '5', '斯蒂隆旗舰店', null, 'http://localhost:8080/goodsImage/6b5ade51a8504181b40c7559dc5a82c9img15.jpg', '矿泉水', '美食');
INSERT INTO `goods` VALUES ('41', 'T恤2', '22', '斯蒂隆旗舰店', null, 'http://localhost:8080/goodsImage/b16e438607f54fd6872869f06fff9e77img45.jpg', 'T恤', '女装');
INSERT INTO `goods` VALUES ('42', '鞋子1', '112', '斯蒂隆旗舰店', null, 'http://localhost:8080/goodsImage/599d151ccfb84d00abd3deb5c6db03c6img48.jpg', '鞋子', '男装');
INSERT INTO `goods` VALUES ('43', '蜂蜜1', '11', '斯蒂隆旗舰店', null, 'http://localhost:8080/goodsImage/cb9da16bd22842939600ebf112ebf575img46.jpg', '蜂蜜', '美食');
INSERT INTO `goods` VALUES ('44', '裙子2', '1000', '艾晗旗舰店', null, 'http://localhost:8080/goodsImage/a12387f81ab642ee93df4a299b51bb31img43.jpg', '裙子', '女装');
INSERT INTO `goods` VALUES ('45', '衣柜1', '1233', '艾晗旗舰店', null, 'http://localhost:8080/goodsImage/75cbc19073df4c538db9e7b2d5494aa4img51.jpg', '衣柜', '家具');
INSERT INTO `goods` VALUES ('46', '卫衣', '100', '软件协会', null, 'http://localhost:8080/goodsImage/a42f2a971f764ef4bc32f7ebf2a3276aimg10.jpg', '卫衣', '女装');

-- ----------------------------
-- Table structure for shoppingcat
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcat`;
CREATE TABLE `shoppingcat` (
  `s_id` int(50) NOT NULL AUTO_INCREMENT,
  `s_uid` int(50) NOT NULL,
  `s_gid` int(50) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `s_uid` (`s_uid`),
  KEY `s_gid` (`s_gid`),
  CONSTRAINT `s_gid` FOREIGN KEY (`s_gid`) REFERENCES `goods` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `s_uid` FOREIGN KEY (`s_uid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcat
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(100) NOT NULL AUTO_INCREMENT,
  `u_niCheng` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_sex` char(2) NOT NULL,
  `u_qq` varchar(15) NOT NULL,
  `u_image` varchar(255) DEFAULT NULL,
  `u_realName` varchar(255) DEFAULT NULL,
  `u_postcode` char(6) DEFAULT NULL COMMENT '邮编',
  `u_address` varchar(255) DEFAULT NULL,
  `u_tel` char(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('34', 'bgg', '111', '男', 'www', null, '111', 'www', '保定', '111');
INSERT INTO `user` VALUES ('38', 'hfg', '333', '男', '1111', null, 'wqf', null, null, null);
INSERT INTO `user` VALUES ('39', 'sdhbfg', '111', '男', 'dsgv', null, 'hgf', 'fgn', 'mg', '12132');
INSERT INTO `user` VALUES ('40', 'ejmnrkt', '121', '女', 'sgvbdf', null, 'yjg', 'mhk', 'ykiu', '1111113');
INSERT INTO `user` VALUES ('41', '杨新乐', '123', '男', '11111', null, '11111', '11111', '11111', '11111');
