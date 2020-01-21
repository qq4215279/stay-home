/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : stayhome

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2019-09-28 10:11:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123456', '123456');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `adult_number` int(11) DEFAULT NULL,
  `children_number` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('90d575e7-7e90-428d-9386-0f8ee457596e', '2019-09-21 19:17:27', '9', '2019-09-01', '2019-10-07', '1', '0', '4', '很棒的房间！', null, null);
INSERT INTO `order` VALUES ('55a33928-98a6-4e42-9e9c-320aecb6acff', '2019-09-21 19:20:44', '9', '2019-09-01', '2019-10-07', '1', '0', '1', '很好的体验！', null, null);
INSERT INTO `order` VALUES ('3559bbd2-804a-4d44-8ac2-49d8e53d56ff', '2019-09-22 15:47:59', '9', '2019-09-01', '2019-10-07', '1', '1', '3', null, null, null);
INSERT INTO `order` VALUES ('b449e2e0-6bcf-4fab-b6d3-e50396df6ce2', '2019-09-22 16:39:42', '9', '2019-09-01', '2019-10-07', '1', '0', '1', null, '2019-09-26 13:48:37', '2019-09-26 15:45:38');
INSERT INTO `order` VALUES ('afcc9e15-a077-434a-ae57-a119f28ca41a', '2019-09-22 18:14:43', '9', '2019-09-01', '2019-10-07', '1', '1', '4', '房间很好！', '2019-09-27 13:39:34', '2019-09-27 13:40:07');
INSERT INTO `order` VALUES ('4231426b-9133-401c-8d77-d44921f6d18f', '2019-09-22 18:37:36', '9', '2019-09-01', '2019-10-07', '1', '0', '3', null, '2019-09-26 15:41:22', '2019-09-26 15:45:57');
INSERT INTO `order` VALUES ('f1dd7988-5bd9-4f6b-9171-cf7569fcd10b', '2019-09-24 12:36:59', '9', '2019-09-09', '2019-10-07', '1', '0', '4', null, null, null);
INSERT INTO `order` VALUES ('ab012486-3a66-4cfa-9ef2-a1a186a03e28', '2019-09-26 17:33:00', '12', '2019-09-26', '2019-10-07', '2', '0', '13', null, '2019-09-26 17:33:24', '2019-09-26 17:33:38');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '旅客');
INSERT INTO `role` VALUES ('2', '房东');

-- ----------------------------
-- Table structure for room_detail
-- ----------------------------
DROP TABLE IF EXISTS `room_detail`;
CREATE TABLE `room_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `size` double DEFAULT NULL,
  `arrival_time` time NOT NULL DEFAULT '14:00:00',
  `departure_time` time NOT NULL DEFAULT '12:00:00',
  `type` int(11) DEFAULT NULL COMMENT '房间类型',
  `picture` varchar(255) DEFAULT NULL,
  `visiting_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of room_detail
-- ----------------------------
INSERT INTO `room_detail` VALUES ('1', '8', '房源地理位置非常优越,毗邻太古里五星级酒店-博舍酒店(The Temple House),下楼就是成都最时尚的地段太古里商圈,您可以随时感受城市最繁华的心脏…', '278', '6', '60', '15:00:00', '12:00:00', '2', '/upload/944124f7-c5a5-4821-9729-2c221a9733a5.jpg', '6');
INSERT INTO `room_detail` VALUES ('3', '8', '是一套配有马歇尔蓝牙音响与坚果投影仪,可以和私人影院媲美的观影体验,同时地段绝佳,兼具美貌与舒适度的房子｡', '268', '4', '50', '14:00:00', '12:00:00', '2', '/upload/4a196e6c-424b-4574-b3a9-265443bb5685.jpg', '12');
INSERT INTO `room_detail` VALUES ('4', '10', '精致少女的房间 楼下就是地铁三号线､四号线､温馨北欧风 走路10分钟可到达太古里 春熙路 房间内设有独立的卫生间 厨房 床品 生活用品都是一客一换 希望你像爱护你的家一样爱护它', '278', '5', '60', '14:00:00', '12:00:00', '1', '/upload/98caa2ad-daaf-4ed3-8898-331d02c0b921.jpg', '33');
INSERT INTO `room_detail` VALUES ('5', '8', '欢迎来到北尧民宿旗下#樱の屋#,这是一个榻榻米结构纯日式小屋｡樱の屋紧邻太古里､春熙路,地铁2\\3号线｡走路至太古里､春熙路3分钟,窗外亦可看见太古里景色｡', '308', '6', '70', '14:00:00', '12:00:00', '3', '/upload/a5c23674-1a19-4e79-8e39-d3a39beb7b86.jpg', '23');
INSERT INTO `room_detail` VALUES ('8', '11', '都市简约现代化装修,房屋面积45平,配合温馨的装饰,屋内全套品牌家电,海尔冰箱洗衣机热水器,智能电视,WiFi｡如果你出门太急忘带生活用品,本店配有卸妆水,水乳霜,粉底,眼影,腮红,口红,男士发蜡发胶等化妆用品,隐形眼镜护理液,充电器,洗漱用品一应俱全｡', '130', '3', '50', '14:00:00', '12:00:00', '2', '/upload/64f01de8-81df-495a-b108-c9ef1bd4cf69.jpg', '23');
INSERT INTO `room_detail` VALUES ('12', '11', '我家有十几套房源,均为一线江景房,都在同一栋楼里,如果该房源您需要的时间已被预订,点击我的头像可以查看其它房源,也可以联系我们给您发送其他房源的连接｡可以几间房各住几天,换房时有工作人员负责把行李给您送到另一间房去｡', '238', '4', '50', '14:00:00', '12:00:00', '1', '/upload/a5c23674-1a19-4e79-8e39-d3a39beb7b86.jpg', '23');
INSERT INTO `room_detail` VALUES ('13', '12', '同区同配置的房源均价都在400+,附近的经济酒店地下室都要400+,核心地段超高性价比,勿错过!', '299', '4', '60', '14:00:00', '14:00:00', '3', '/upload/3279a7f2-ef91-4bd3-bab6-d51d897b6b53.jpg', '34');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('1', '空调房');
INSERT INTO `room_type` VALUES ('2', '大床房');
INSERT INTO `room_type` VALUES ('3', '影音房');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_USER_CHARACTER` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', '43243424', '13912121212', '1273@qq.com', '123456', '2', '2019-09-14 16:39:51');
INSERT INTO `user` VALUES ('9', '123456', '13916161616', '231231@qq.com', '123456', '1', '2019-09-17 18:35:39');
INSERT INTO `user` VALUES ('10', '1283748', '13911111111', '123@qq.com', '123456', '2', '2019-09-18 19:51:01');
INSERT INTO `user` VALUES ('11', '1231231231', '13927272727', '2312312@qq.com', '123456', '2', '2019-09-24 09:47:11');
INSERT INTO `user` VALUES ('12', '2343241234123412', '13422322222', '234234@qq.com', '123456', '2', '2019-09-26 17:29:24');
INSERT INTO `user` VALUES ('15', '34234234', '13927272727', 'rtwer@qq.com', '123456', '2', '2019-09-27 13:49:31');
INSERT INTO `user` VALUES ('16', '234231', '13927272727', 'fgwerg@qq.com', '123123', '1', '2019-09-27 13:50:14');
