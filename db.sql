/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmnuo9w
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmnuo9w` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmnuo9w`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmnuo9w/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/jspmnuo9w/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/jspmnuo9w/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussweiboxinxi` */

DROP TABLE IF EXISTS `discussweiboxinxi`;

CREATE TABLE `discussweiboxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='微博信息评论表';

/*Data for the table `discussweiboxinxi` */

insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-05-02 11:54:49',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (52,'2021-05-02 11:54:49',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (53,'2021-05-02 11:54:49',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (54,'2021-05-02 11:54:49',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (55,'2021-05-02 11:54:49',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (56,'2021-05-02 11:54:49',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (41,'2021-05-02 11:54:49',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (42,'2021-05-02 11:54:49',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (43,'2021-05-02 11:54:49',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (44,'2021-05-02 11:54:49',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (45,'2021-05-02 11:54:49',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (46,'2021-05-02 11:54:49',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-02 11:54:49');

/*Table structure for table `weiboxinxi` */

DROP TABLE IF EXISTS `weiboxinxi`;

CREATE TABLE `weiboxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weiboneirong` longtext COMMENT '微博内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='微博信息';

/*Data for the table `weiboxinxi` */

insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (31,'2021-05-02 11:54:49','标题1','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian1.jpg','微博内容1','2021-05-02','用户名1','用户姓名1',1,1);
insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (32,'2021-05-02 11:54:49','标题2','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian2.jpg','微博内容2','2021-05-02','用户名2','用户姓名2',2,2);
insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (33,'2021-05-02 11:54:49','标题3','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian3.jpg','微博内容3','2021-05-02','用户名3','用户姓名3',3,3);
insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (34,'2021-05-02 11:54:49','标题4','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian4.jpg','微博内容4','2021-05-02','用户名4','用户姓名4',4,4);
insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (35,'2021-05-02 11:54:49','标题5','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian5.jpg','微博内容5','2021-05-02','用户名5','用户姓名5',5,5);
insert  into `weiboxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`thumbsupnum`,`crazilynum`) values (36,'2021-05-02 11:54:49','标题6','http://localhost:8080/jspmnuo9w/upload/weiboxinxi_tupian6.jpg','微博内容6','2021-05-02','用户名6','用户姓名6',6,6);

/*Table structure for table `xinwenxinxi` */

DROP TABLE IF EXISTS `xinwenxinxi`;

CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwenxinxi` */

insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (21,'2021-05-02 11:54:49','标题1','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian1.jpg','新闻内容1','2021-05-02');
insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (22,'2021-05-02 11:54:49','标题2','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian2.jpg','新闻内容2','2021-05-02');
insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (23,'2021-05-02 11:54:49','标题3','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian3.jpg','新闻内容3','2021-05-02');
insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (24,'2021-05-02 11:54:49','标题4','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian4.jpg','新闻内容4','2021-05-02');
insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (25,'2021-05-02 11:54:49','标题5','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian5.jpg','新闻内容5','2021-05-02');
insert  into `xinwenxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`xinwenneirong`,`faburiqi`) values (26,'2021-05-02 11:54:49','标题6','http://localhost:8080/jspmnuo9w/upload/xinwenxinxi_tupian6.jpg','新闻内容6','2021-05-02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (11,'2021-05-02 11:54:49','用户1','123456','用户姓名1','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (12,'2021-05-02 11:54:49','用户2','123456','用户姓名2','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (13,'2021-05-02 11:54:49','用户3','123456','用户姓名3','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (14,'2021-05-02 11:54:49','用户4','123456','用户姓名4','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (15,'2021-05-02 11:54:49','用户5','123456','用户姓名5','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`) values (16,'2021-05-02 11:54:49','用户6','123456','用户姓名6','http://localhost:8080/jspmnuo9w/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
