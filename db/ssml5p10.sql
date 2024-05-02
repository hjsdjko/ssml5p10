/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssml5p10
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssml5p10` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssml5p10`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssml5p10/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssml5p10/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssml5p10/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fangjianxinxi` */

DROP TABLE IF EXISTS `fangjianxinxi`;

CREATE TABLE `fangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `fangjianbianhao` varchar(200) NOT NULL COMMENT '房间编号',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `chuangwei` int(11) NOT NULL COMMENT '床位',
  `zhusufei` int(11) NOT NULL COMMENT '住宿费',
  `fangjianxinxi` longtext COMMENT '房间信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianbianhao` (`fangjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='房间信息';

/*Data for the table `fangjianxinxi` */

insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (51,'2021-05-11 10:17:44','公寓编号1','公寓名称1','公寓楼号1','公寓类别1','公寓位置1','房间编号1','房间楼层1',1,1,'房间信息1');
insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (52,'2021-05-11 10:17:44','公寓编号2','公寓名称2','公寓楼号2','公寓类别2','公寓位置2','房间编号2','房间楼层2',2,2,'房间信息2');
insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (53,'2021-05-11 10:17:44','公寓编号3','公寓名称3','公寓楼号3','公寓类别3','公寓位置3','房间编号3','房间楼层3',3,3,'房间信息3');
insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (54,'2021-05-11 10:17:44','公寓编号4','公寓名称4','公寓楼号4','公寓类别4','公寓位置4','房间编号4','房间楼层4',4,4,'房间信息4');
insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (55,'2021-05-11 10:17:44','公寓编号5','公寓名称5','公寓楼号5','公寓类别5','公寓位置5','房间编号5','房间楼层5',5,5,'房间信息5');
insert  into `fangjianxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianbianhao`,`fangjianlouceng`,`chuangwei`,`zhusufei`,`fangjianxinxi`) values (56,'2021-05-11 10:17:44','公寓编号6','公寓名称6','公寓楼号6','公寓类别6','公寓位置6','房间编号6','房间楼层6',6,6,'房间信息6');

/*Table structure for table `fangkejilu` */

DROP TABLE IF EXISTS `fangkejilu`;

CREATE TABLE `fangkejilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangkebeizhu` varchar(200) DEFAULT NULL COMMENT '访客备注',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `laifangriqi` date DEFAULT NULL COMMENT '来访日期',
  `fangkexingming` varchar(200) NOT NULL COMMENT '访客姓名',
  `fangkeshouji` varchar(200) NOT NULL COMMENT '访客手机',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='访客记录';

/*Data for the table `fangkejilu` */

insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (111,'2021-05-11 10:17:44','公寓编号1','公寓名称1','公寓楼号1','公寓类别1','公寓位置1','房间楼层1','房间编号1','访客备注1','老人编号1','老人姓名1','性别1',1,'13823888881','2021-05-11','访客姓名1','13823888881','员工工号1','员工姓名1');
insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (112,'2021-05-11 10:17:44','公寓编号2','公寓名称2','公寓楼号2','公寓类别2','公寓位置2','房间楼层2','房间编号2','访客备注2','老人编号2','老人姓名2','性别2',2,'13823888882','2021-05-11','访客姓名2','13823888882','员工工号2','员工姓名2');
insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (113,'2021-05-11 10:17:44','公寓编号3','公寓名称3','公寓楼号3','公寓类别3','公寓位置3','房间楼层3','房间编号3','访客备注3','老人编号3','老人姓名3','性别3',3,'13823888883','2021-05-11','访客姓名3','13823888883','员工工号3','员工姓名3');
insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (114,'2021-05-11 10:17:44','公寓编号4','公寓名称4','公寓楼号4','公寓类别4','公寓位置4','房间楼层4','房间编号4','访客备注4','老人编号4','老人姓名4','性别4',4,'13823888884','2021-05-11','访客姓名4','13823888884','员工工号4','员工姓名4');
insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (115,'2021-05-11 10:17:44','公寓编号5','公寓名称5','公寓楼号5','公寓类别5','公寓位置5','房间楼层5','房间编号5','访客备注5','老人编号5','老人姓名5','性别5',5,'13823888885','2021-05-11','访客姓名5','13823888885','员工工号5','员工姓名5');
insert  into `fangkejilu`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangkebeizhu`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`laifangriqi`,`fangkexingming`,`fangkeshouji`,`yuangonggonghao`,`yuangongxingming`) values (116,'2021-05-11 10:17:44','公寓编号6','公寓名称6','公寓楼号6','公寓类别6','公寓位置6','房间楼层6','房间编号6','访客备注6','老人编号6','老人姓名6','性别6',6,'13823888886','2021-05-11','访客姓名6','13823888886','员工工号6','员工姓名6');

/*Table structure for table `gongyuxinxi` */

DROP TABLE IF EXISTS `gongyuxinxi`;

CREATE TABLE `gongyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyuleibie` varchar(200) NOT NULL COMMENT '公寓类别',
  `gongyutupian` varchar(200) DEFAULT NULL COMMENT '公寓图片',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyulouguan` varchar(200) DEFAULT NULL COMMENT '公寓楼管',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `beizhushuoming` varchar(200) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyubianhao` (`gongyubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='公寓信息';

/*Data for the table `gongyuxinxi` */

insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (41,'2021-05-11 10:17:44','公寓编号1','公寓名称1','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian1.jpg','公寓楼号1','公寓楼管1','公寓位置1','备注说明1');
insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (42,'2021-05-11 10:17:44','公寓编号2','公寓名称2','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian2.jpg','公寓楼号2','公寓楼管2','公寓位置2','备注说明2');
insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (43,'2021-05-11 10:17:44','公寓编号3','公寓名称3','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian3.jpg','公寓楼号3','公寓楼管3','公寓位置3','备注说明3');
insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (44,'2021-05-11 10:17:44','公寓编号4','公寓名称4','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian4.jpg','公寓楼号4','公寓楼管4','公寓位置4','备注说明4');
insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (45,'2021-05-11 10:17:44','公寓编号5','公寓名称5','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian5.jpg','公寓楼号5','公寓楼管5','公寓位置5','备注说明5');
insert  into `gongyuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyuleibie`,`gongyutupian`,`gongyulouhao`,`gongyulouguan`,`gongyuweizhi`,`beizhushuoming`) values (46,'2021-05-11 10:17:44','公寓编号6','公寓名称6','男性公寓','http://localhost:8080/ssml5p10/upload/gongyuxinxi_gongyutupian6.jpg','公寓楼号6','公寓楼管6','公寓位置6','备注说明6');

/*Table structure for table `jiankangxinxi` */

DROP TABLE IF EXISTS `jiankangxinxi`;

CREATE TABLE `jiankangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `binglixinxi` longtext COMMENT '病例信息',
  `fuyaoxinxi` varchar(200) DEFAULT NULL COMMENT '服药信息',
  `yichangchuli` varchar(200) DEFAULT NULL COMMENT '异常处理',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='健康信息';

/*Data for the table `jiankangxinxi` */

insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (81,'2021-05-11 10:17:44','公寓名称1','公寓楼号1','公寓类别1','房间楼层1','房间编号1','老人编号1','老人姓名1','性别1',1,'13823888881','病例信息1','服药信息1','异常处理1','2021-05-11','员工工号1','员工姓名1');
insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (82,'2021-05-11 10:17:44','公寓名称2','公寓楼号2','公寓类别2','房间楼层2','房间编号2','老人编号2','老人姓名2','性别2',2,'13823888882','病例信息2','服药信息2','异常处理2','2021-05-11','员工工号2','员工姓名2');
insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (83,'2021-05-11 10:17:44','公寓名称3','公寓楼号3','公寓类别3','房间楼层3','房间编号3','老人编号3','老人姓名3','性别3',3,'13823888883','病例信息3','服药信息3','异常处理3','2021-05-11','员工工号3','员工姓名3');
insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (84,'2021-05-11 10:17:44','公寓名称4','公寓楼号4','公寓类别4','房间楼层4','房间编号4','老人编号4','老人姓名4','性别4',4,'13823888884','病例信息4','服药信息4','异常处理4','2021-05-11','员工工号4','员工姓名4');
insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (85,'2021-05-11 10:17:44','公寓名称5','公寓楼号5','公寓类别5','房间楼层5','房间编号5','老人编号5','老人姓名5','性别5',5,'13823888885','病例信息5','服药信息5','异常处理5','2021-05-11','员工工号5','员工姓名5');
insert  into `jiankangxinxi`(`id`,`addtime`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`fangjianlouceng`,`fangjianbianhao`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`binglixinxi`,`fuyaoxinxi`,`yichangchuli`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (86,'2021-05-11 10:17:44','公寓名称6','公寓楼号6','公寓类别6','房间楼层6','房间编号6','老人编号6','老人姓名6','性别6',6,'13823888886','病例信息6','服药信息6','异常处理6','2021-05-11','员工工号6','员工姓名6');

/*Table structure for table `jiaofeixinxi` */

DROP TABLE IF EXISTS `jiaofeixinxi`;

CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeidanhao` varchar(200) DEFAULT NULL COMMENT '缴费单号',
  `jiaofeiyuefen` varchar(200) DEFAULT NULL COMMENT '缴费月份',
  `jiaofeimingcheng` varchar(200) DEFAULT NULL COMMENT '缴费名称',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jiaofeineirong` longtext COMMENT '缴费内容',
  `jiaofeijine` int(11) NOT NULL COMMENT '缴费金额',
  `jiaofeibeizhu` varchar(200) DEFAULT NULL COMMENT '缴费备注',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaofeizhuangtai` varchar(200) NOT NULL COMMENT '缴费状态',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaofeidanhao` (`jiaofeidanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='缴费信息';

/*Data for the table `jiaofeixinxi` */

insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (71,'2021-05-11 10:17:44','缴费单号1','缴费月份1','缴费名称1','住宿费','缴费内容1',1,'缴费备注1','老人编号1','老人姓名1','13823888881','缴费','员工工号1','员工姓名1','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (72,'2021-05-11 10:17:44','缴费单号2','缴费月份2','缴费名称2','住宿费','缴费内容2',2,'缴费备注2','老人编号2','老人姓名2','13823888882','缴费','员工工号2','员工姓名2','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (73,'2021-05-11 10:17:44','缴费单号3','缴费月份3','缴费名称3','住宿费','缴费内容3',3,'缴费备注3','老人编号3','老人姓名3','13823888883','缴费','员工工号3','员工姓名3','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (74,'2021-05-11 10:17:44','缴费单号4','缴费月份4','缴费名称4','住宿费','缴费内容4',4,'缴费备注4','老人编号4','老人姓名4','13823888884','缴费','员工工号4','员工姓名4','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (75,'2021-05-11 10:17:44','缴费单号5','缴费月份5','缴费名称5','住宿费','缴费内容5',5,'缴费备注5','老人编号5','老人姓名5','13823888885','缴费','员工工号5','员工姓名5','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`jiaofeidanhao`,`jiaofeiyuefen`,`jiaofeimingcheng`,`jiaofeileixing`,`jiaofeineirong`,`jiaofeijine`,`jiaofeibeizhu`,`laorenbianhao`,`laorenxingming`,`lianxidianhua`,`jiaofeizhuangtai`,`yuangonggonghao`,`yuangongxingming`,`ispay`) values (76,'2021-05-11 10:17:44','缴费单号6','缴费月份6','缴费名称6','住宿费','缴费内容6',6,'缴费备注6','老人编号6','老人姓名6','13823888886','缴费','员工工号6','员工姓名6','未支付');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) NOT NULL COMMENT '老人编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laorenxingming` varchar(200) NOT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `huanbingshi` varchar(200) DEFAULT NULL COMMENT '患病史',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyoujian` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laorenbianhao` (`laorenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (21,'2021-05-11 10:17:44','老人1','e10adc3949ba59abbe56e057f20f883e','老人姓名1','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian1.jpg',1,'患病史1','440300199101010001','13823888881','773890001@qq.com','家庭住址1','备注1',1);
insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (22,'2021-05-11 10:17:44','老人2','e10adc3949ba59abbe56e057f20f883e','老人姓名2','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian2.jpg',2,'患病史2','440300199202020002','13823888882','773890002@qq.com','家庭住址2','备注2',2);
insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (23,'2021-05-11 10:17:44','老人3','e10adc3949ba59abbe56e057f20f883e','老人姓名3','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian3.jpg',3,'患病史3','440300199303030003','13823888883','773890003@qq.com','家庭住址3','备注3',3);
insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (24,'2021-05-11 10:17:44','老人4','e10adc3949ba59abbe56e057f20f883e','老人姓名4','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian4.jpg',4,'患病史4','440300199404040004','13823888884','773890004@qq.com','家庭住址4','备注4',4);
insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (25,'2021-05-11 10:17:44','老人5','e10adc3949ba59abbe56e057f20f883e','老人姓名5','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian5.jpg',5,'患病史5','440300199505050005','13823888885','773890005@qq.com','家庭住址5','备注5',5);
insert  into `laoren`(`id`,`addtime`,`laorenbianhao`,`mima`,`laorenxingming`,`xingbie`,`zhaopian`,`nianling`,`huanbingshi`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`beizhu`,`userid`) values (26,'2021-05-11 10:17:44','老人6','e10adc3949ba59abbe56e057f20f883e','老人姓名6','男','http://localhost:8080/ssml5p10/upload/laoren_zhaopian6.jpg',6,'患病史6','440300199606060006','13823888886','773890006@qq.com','家庭住址6','备注6',6);

/*Table structure for table `lianluoren` */

DROP TABLE IF EXISTS `lianluoren`;

CREATE TABLE `lianluoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) NOT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) NOT NULL COMMENT '老人姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyoujian` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `dianhua` varchar(200) NOT NULL COMMENT '电话',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `lianxidizhi` varchar(200) NOT NULL COMMENT '联系地址',
  `beizhushuoming` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laorenbianhao` (`laorenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='联络人';

/*Data for the table `lianluoren` */

insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (31,'2021-05-11 10:17:44','老人编号1','老人姓名1','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian1.jpg',1,'440300199101010001','13823888881','773890001@qq.com','家庭住址1','姓名1','13823888881','男','联系地址1','备注说明1',1);
insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (32,'2021-05-11 10:17:44','老人编号2','老人姓名2','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian2.jpg',2,'440300199202020002','13823888882','773890002@qq.com','家庭住址2','姓名2','13823888882','男','联系地址2','备注说明2',2);
insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (33,'2021-05-11 10:17:44','老人编号3','老人姓名3','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian3.jpg',3,'440300199303030003','13823888883','773890003@qq.com','家庭住址3','姓名3','13823888883','男','联系地址3','备注说明3',3);
insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (34,'2021-05-11 10:17:44','老人编号4','老人姓名4','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian4.jpg',4,'440300199404040004','13823888884','773890004@qq.com','家庭住址4','姓名4','13823888884','男','联系地址4','备注说明4',4);
insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (35,'2021-05-11 10:17:44','老人编号5','老人姓名5','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian5.jpg',5,'440300199505050005','13823888885','773890005@qq.com','家庭住址5','姓名5','13823888885','男','联系地址5','备注说明5',5);
insert  into `lianluoren`(`id`,`addtime`,`laorenbianhao`,`laorenxingming`,`zhaopian`,`nianling`,`shenfenzheng`,`lianxidianhua`,`dianziyoujian`,`jiatingzhuzhi`,`xingming`,`dianhua`,`xingbie`,`lianxidizhi`,`beizhushuoming`,`userid`) values (36,'2021-05-11 10:17:44','老人编号6','老人姓名6','http://localhost:8080/ssml5p10/upload/lianluoren_zhaopian6.jpg',6,'440300199606060006','13823888886','773890006@qq.com','家庭住址6','姓名6','13823888886','男','联系地址6','备注说明6',6);

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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (141,'2021-05-11 10:17:44',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (142,'2021-05-11 10:17:44',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (143,'2021-05-11 10:17:44',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (144,'2021-05-11 10:17:44',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (145,'2021-05-11 10:17:44',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (146,'2021-05-11 10:17:44',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-05-11 10:17:44','标题1','简介1','http://localhost:8080/ssml5p10/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (132,'2021-05-11 10:17:44','标题2','简介2','http://localhost:8080/ssml5p10/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (133,'2021-05-11 10:17:44','标题3','简介3','http://localhost:8080/ssml5p10/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (134,'2021-05-11 10:17:44','标题4','简介4','http://localhost:8080/ssml5p10/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (135,'2021-05-11 10:17:44','标题5','简介5','http://localhost:8080/ssml5p10/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (136,'2021-05-11 10:17:44','标题6','简介6','http://localhost:8080/ssml5p10/upload/news_picture6.jpg','内容6');

/*Table structure for table `qingjiaxinxi` */

DROP TABLE IF EXISTS `qingjiaxinxi`;

CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianxinxi` longtext COMMENT '房间信息',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qingjianeirong` longtext NOT NULL COMMENT '请假内容',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` int(11) NOT NULL COMMENT '请假天数',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='请假信息';

/*Data for the table `qingjiaxinxi` */

insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (91,'2021-05-11 10:17:44','公寓编号1','公寓名称1','公寓楼号1','公寓类别1','公寓位置1','房间楼层1','房间编号1','房间信息1','性别1','老人姓名1','老人编号1',1,'13823888881','请假内容1','2021-05-11',1,'是','');
insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (92,'2021-05-11 10:17:44','公寓编号2','公寓名称2','公寓楼号2','公寓类别2','公寓位置2','房间楼层2','房间编号2','房间信息2','性别2','老人姓名2','老人编号2',2,'13823888882','请假内容2','2021-05-11',2,'是','');
insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (93,'2021-05-11 10:17:44','公寓编号3','公寓名称3','公寓楼号3','公寓类别3','公寓位置3','房间楼层3','房间编号3','房间信息3','性别3','老人姓名3','老人编号3',3,'13823888883','请假内容3','2021-05-11',3,'是','');
insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (94,'2021-05-11 10:17:44','公寓编号4','公寓名称4','公寓楼号4','公寓类别4','公寓位置4','房间楼层4','房间编号4','房间信息4','性别4','老人姓名4','老人编号4',4,'13823888884','请假内容4','2021-05-11',4,'是','');
insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (95,'2021-05-11 10:17:44','公寓编号5','公寓名称5','公寓楼号5','公寓类别5','公寓位置5','房间楼层5','房间编号5','房间信息5','性别5','老人姓名5','老人编号5',5,'13823888885','请假内容5','2021-05-11',5,'是','');
insert  into `qingjiaxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`fangjianxinxi`,`xingbie`,`laorenxingming`,`laorenbianhao`,`nianling`,`lianxidianhua`,`qingjianeirong`,`qingjiariqi`,`qingjiatianshu`,`sfsh`,`shhf`) values (96,'2021-05-11 10:17:44','公寓编号6','公寓名称6','公寓楼号6','公寓类别6','公寓位置6','房间楼层6','房间编号6','房间信息6','性别6','老人姓名6','老人编号6',6,'13823888886','请假内容6','2021-05-11',6,'是','');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'员工1','yuangong','管理员','a1lux08vjm5yr0s3gzeo0v0c3rgeb2sw','2021-05-11 10:19:00','2021-05-11 11:19:01');

/*Table structure for table `tuizhuxinxi` */

DROP TABLE IF EXISTS `tuizhuxinxi`;

CREATE TABLE `tuizhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `chuangwei` int(11) DEFAULT NULL COMMENT '床位',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `banliriqi` date DEFAULT NULL COMMENT '办理日期',
  `tuizhushuoming` varchar(200) DEFAULT NULL COMMENT '退住说明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='退住信息';

/*Data for the table `tuizhuxinxi` */

insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (101,'2021-05-11 10:17:44','公寓编号1','公寓名称1','公寓楼号1','公寓类别1','公寓位置1','房间楼层1','房间编号1',1,'老人编号1','老人姓名1','性别1',1,'13823888881','2021-05-11','退住说明1','是','');
insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (102,'2021-05-11 10:17:44','公寓编号2','公寓名称2','公寓楼号2','公寓类别2','公寓位置2','房间楼层2','房间编号2',1,'老人编号2','老人姓名2','性别2',2,'13823888882','2021-05-11','退住说明2','是','');
insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (103,'2021-05-11 10:17:44','公寓编号3','公寓名称3','公寓楼号3','公寓类别3','公寓位置3','房间楼层3','房间编号3',1,'老人编号3','老人姓名3','性别3',3,'13823888883','2021-05-11','退住说明3','是','');
insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (104,'2021-05-11 10:17:44','公寓编号4','公寓名称4','公寓楼号4','公寓类别4','公寓位置4','房间楼层4','房间编号4',1,'老人编号4','老人姓名4','性别4',4,'13823888884','2021-05-11','退住说明4','是','');
insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (105,'2021-05-11 10:17:44','公寓编号5','公寓名称5','公寓楼号5','公寓类别5','公寓位置5','房间楼层5','房间编号5',1,'老人编号5','老人姓名5','性别5',5,'13823888885','2021-05-11','退住说明5','是','');
insert  into `tuizhuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`banliriqi`,`tuizhushuoming`,`sfsh`,`shhf`) values (106,'2021-05-11 10:17:44','公寓编号6','公寓名称6','公寓楼号6','公寓类别6','公寓位置6','房间楼层6','房间编号6',1,'老人编号6','老人姓名6','性别6',6,'13823888886','2021-05-11','退住说明6','是','');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-11 10:17:44');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `dianziyoujian` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (11,'2021-05-11 10:17:44','员工1','e10adc3949ba59abbe56e057f20f883e','员工姓名1','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang1.jpg','13823888881','家庭住址1','773890001@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (12,'2021-05-11 10:17:44','员工2','e10adc3949ba59abbe56e057f20f883e','员工姓名2','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang2.jpg','13823888882','家庭住址2','773890002@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (13,'2021-05-11 10:17:44','员工3','e10adc3949ba59abbe56e057f20f883e','员工姓名3','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang3.jpg','13823888883','家庭住址3','773890003@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (14,'2021-05-11 10:17:44','员工4','e10adc3949ba59abbe56e057f20f883e','员工姓名4','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang4.jpg','13823888884','家庭住址4','773890004@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (15,'2021-05-11 10:17:44','员工5','e10adc3949ba59abbe56e057f20f883e','员工姓名5','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang5.jpg','13823888885','家庭住址5','773890005@qq.com');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`lianxidianhua`,`jiatingzhuzhi`,`dianziyoujian`) values (16,'2021-05-11 10:17:44','员工6','e10adc3949ba59abbe56e057f20f883e','员工姓名6','男','http://localhost:8080/ssml5p10/upload/yuangong_touxiang6.jpg','13823888886','家庭住址6','773890006@qq.com');

/*Table structure for table `zhusuxinxi` */

DROP TABLE IF EXISTS `zhusuxinxi`;

CREATE TABLE `zhusuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyubianhao` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `gongyumingcheng` varchar(200) DEFAULT NULL COMMENT '公寓名称',
  `gongyulouhao` varchar(200) DEFAULT NULL COMMENT '公寓楼号',
  `gongyuleibie` varchar(200) DEFAULT NULL COMMENT '公寓类别',
  `gongyuweizhi` varchar(200) DEFAULT NULL COMMENT '公寓位置',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `chuangwei` int(11) NOT NULL COMMENT '床位',
  `zhusufei` int(11) DEFAULT NULL COMMENT '住宿费',
  `fangjianxinxi` longtext COMMENT '房间信息',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhushuoming` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='住宿信息';

/*Data for the table `zhusuxinxi` */

insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (61,'2021-05-11 10:17:44','公寓编号1','公寓名称1','公寓楼号1','公寓类别1','公寓位置1','房间楼层1','房间编号1',1,1,'房间信息1','老人编号1','老人姓名1','性别1',1,'13823888881','备注说明1','员工工号1','员工姓名1');
insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (62,'2021-05-11 10:17:44','公寓编号2','公寓名称2','公寓楼号2','公寓类别2','公寓位置2','房间楼层2','房间编号2',1,2,'房间信息2','老人编号2','老人姓名2','性别2',2,'13823888882','备注说明2','员工工号2','员工姓名2');
insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (63,'2021-05-11 10:17:44','公寓编号3','公寓名称3','公寓楼号3','公寓类别3','公寓位置3','房间楼层3','房间编号3',1,3,'房间信息3','老人编号3','老人姓名3','性别3',3,'13823888883','备注说明3','员工工号3','员工姓名3');
insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (64,'2021-05-11 10:17:44','公寓编号4','公寓名称4','公寓楼号4','公寓类别4','公寓位置4','房间楼层4','房间编号4',1,4,'房间信息4','老人编号4','老人姓名4','性别4',4,'13823888884','备注说明4','员工工号4','员工姓名4');
insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (65,'2021-05-11 10:17:44','公寓编号5','公寓名称5','公寓楼号5','公寓类别5','公寓位置5','房间楼层5','房间编号5',1,5,'房间信息5','老人编号5','老人姓名5','性别5',5,'13823888885','备注说明5','员工工号5','员工姓名5');
insert  into `zhusuxinxi`(`id`,`addtime`,`gongyubianhao`,`gongyumingcheng`,`gongyulouhao`,`gongyuleibie`,`gongyuweizhi`,`fangjianlouceng`,`fangjianbianhao`,`chuangwei`,`zhusufei`,`fangjianxinxi`,`laorenbianhao`,`laorenxingming`,`xingbie`,`nianling`,`lianxidianhua`,`beizhushuoming`,`yuangonggonghao`,`yuangongxingming`) values (66,'2021-05-11 10:17:44','公寓编号6','公寓名称6','公寓楼号6','公寓类别6','公寓位置6','房间楼层6','房间编号6',1,6,'房间信息6','老人编号6','老人姓名6','性别6',6,'13823888886','备注说明6','员工工号6','员工姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
