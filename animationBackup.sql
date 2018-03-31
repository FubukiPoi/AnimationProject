-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: animation
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animation`
--

DROP TABLE IF EXISTS `animation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animation` (
  `animation_id` int(5) NOT NULL AUTO_INCREMENT,
  `animation_name` varchar(30) NOT NULL,
  `number` int(3) NOT NULL,
  `year` int(4) NOT NULL,
  `season` varchar(5) NOT NULL,
  `status` int(1) NOT NULL COMMENT '追番/追番/完结/弃番',
  PRIMARY KEY (`animation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animation`
--

LOCK TABLES `animation` WRITE;
/*!40000 ALTER TABLE `animation` DISABLE KEYS */;
INSERT INTO `animation` VALUES (1,'小魔女学院',25,2017,'冬',3),(2,'Bang Dream！',13,2017,'冬',3),(3,'Fate/Grand Order',1,2017,'冬',3),(4,'Urara迷路贴',3,2017,'冬',2),(5,'幼女战记',12,2017,'冬',3),(6,'秋叶原之旅',0,2017,'冬',2),(7,'热诚传说第二季',26,2017,'冬',3),(8,'锁链战记',12,2017,'冬',3),(9,'加百璃的堕落',12,2017,'冬',3),(10,'风夏',12,2017,'冬',3),(11,'清恋SEIREN',0,2017,'冬',2),(12,'人渣的本愿',12,2017,'冬',3),(13,'One Room',12,2017,'冬',3),(14,'青之驱魔师第二季',0,2017,'冬',2),(15,'为美好世界献上祝福第二季',0,2017,'冬',2),(16,'小林家的妹抖龙',12,2017,'冬',3),(17,'进击的巨人第二季',12,2017,'春',3),(18,'路人女主的养成方法b',11,2017,'春',3),(19,'RE:CREATORS',3,2017,'春',4),(20,'工口漫画老师',12,2017,'春',3),(21,'巴哈母特之怒VIRGIN SOUL',0,2017,'春',2),(22,'碧蓝幻想',0,2017,'春',2),(23,'时钟机关之星',0,2017,'夏',2),(24,'重启咲田良',0,2017,'夏',2),(25,'从零开始的魔法书',12,2017,'春',3),(26,'正确的卡多',0,2017,'春',2),(27,'末日的时候在做什么？有没有空可以来拯救吗？',0,2017,'春',2),(28,'恋爱暴君',0,2017,'春',2),(29,'月色真美',12,2017,'春',3),(30,'SIN七大罪',0,2017,'春',2),(31,'不正经的魔术讲师',8,2017,'春',4),(32,'与僧侣交合之夜',0,2017,'春',2),(33,'第一次的辣妹',6,2017,'夏',4),(34,'捏造陷阱-NTR',4,2017,'夏',1),(35,'狂赌之渊',12,2017,'夏',3),(36,'带着智能手机闯荡异世界',0,2017,'夏',2),(37,'Fate/Apocrypha',25,2017,'夏',3),(38,'梵蒂冈奇迹调查官',0,2017,'夏',2),(39,'洁癖男子！青山君',0,2017,'秋',4),(40,'gamers电玩咖',12,2017,'夏',3),(41,'princess principal',12,2017,'夏',3),(42,'异世界食堂',6,2017,'夏',4),(43,'New Game第二季',12,2017,'夏',3),(44,'活击!刀剑乱舞',0,2017,'夏',2),(45,'骑士&魔法',13,2017,'夏',3),(46,'欢迎来到实力至上主义的教室',12,2017,'夏',3),(48,'星期一的丰满',0,2016,'秋',2),(49,'吹响!上低音号第二季',0,2016,'秋',2),(50,'为美好世界献上祝福第一季',0,2016,'冬',2),(51,'白箱',0,2014,'秋',2),(52,'ReLife',0,2016,'夏',2),(53,'无头骑士异闻录第二季',0,2015,'冬',2),(54,'只有我不在的街道',0,2016,'冬',2),(55,'91Days',0,2016,'夏',2),(56,'魔法少女育成计划',0,2016,'秋',2),(57,'永生之酒',0,2007,'夏',2),(58,'命运石之门',0,2011,'夏',2),(59,'龙的牙医',0,2017,'冬',2),(60,'仙境传说',24,2004,'春',3),(61,'神无月的巫女',24,2004,'春',3),(62,' Fate/stay night',24,2005,'冬',3),(63,'凉宫春日的忧郁',14,2006,'春',3),(64,'零之使魔',12,2006,'夏',3),(65,'零之使魔-双月的骑士',12,2007,'夏',3),(66,'零之使魔-三美姬轮舞',12,2008,'夏',3),(67,'零之使魔F',12,2012,'冬',3),(68,'sola',0,2007,'春',2),(69,'风之圣痕',24,2007,'春',3),(70,'光明之泪X风',12,2007,'春',3),(71,'日在校园',12,2007,'夏',3),(72,'新世纪福音战士新剧场版:序',1,2007,'夏',3),(73,'灼眼的夏娜第二季',24,2007,'秋',3),(74,'狼与香辛料',0,2008,'冬',2),(75,'超时空要塞F',25,2008,'春',3),(76,' 吸血鬼骑士Guilty',24,2008,'秋',3),(77,'轻音少女',12,2009,'春',3),(78,'轻音少女第二季',24,2010,'春',3),(79,'战国BASARA',12,2009,'春',3),(80,' 新世纪福音战士新剧场版:破 ',1,2009,'春',3),(81,'化物语',15,2009,'夏',3),(82,'狼与香辛料第二季',0,2009,'夏',2),(83,'犬夜叉-完结篇',26,2009,'秋',3),(84,'犬夜叉',167,2000,'秋',3),(85,'犬夜叉-超越时代的思念',1,2001,'秋',3),(86,'犬夜叉-镜中的梦幻城',1,2002,'秋',3),(87,'犬夜叉-天下霸道之剑',1,2003,'秋',3),(88,'犬夜叉 红莲的蓬莱岛',1,2004,'秋',3),(89,'某科学的超电磁炮',25,2009,'秋',3),(90,'好想告诉你',26,2009,'秋',3),(91,'好想告诉你第二季',13,2011,'冬',3),(92,'笨蛋，测验，召唤兽',13,2010,'冬',3),(93,'凉宫春日的消失',1,2010,'冬',3),(94,' 无头骑士异闻录',25,2017,'冬',3),(95,'Angel Beats!',13,2010,'春',3),(96,' 会长是女仆大人',27,2010,'春',3),(97,'学园默示录',12,2010,'夏',3),(98,'Black★rock shooter OVA',1,2010,'夏',3),(99,'我的妹妹哪有这么可爱',15,2011,'秋',3),(100,'缘之空',12,2010,'秋',3),(101,'魔法少女小圆',12,2011,'冬',3),(102,' 这个是僵尸吗? ',13,2011,'秋',3),(103,'绯弹的亚里亚',13,2011,'春',3),(104,'花开伊吕波',26,2011,'春',3),(105,'青之驱魔师',25,2011,'春',3),(106,' 迷茫管家与懦弱的我',13,2011,'夏',3),(107,'笨蛋,测验,召唤兽',13,2011,'夏',3),(108,'罪恶王冠',22,2011,'秋',3),(109,'我的朋友很少',13,2011,'秋',3),(110,'Fate/Zero',25,2011,'秋',3),(111,'未来日记',26,2011,'秋',3),(112,'伪物语 ',11,2012,'冬',3),(113,'黑岩射手',8,2011,'冬',3),(114,'恶魔高校(High School DxD)',14,2013,'冬',3),(115,'Another ',13,2012,'冬',3),(116,'妖狐×仆SS',12,2012,'冬',3),(117,'散华礼弥',12,2012,'春',3),(118,'潜行吧!奈亚子',12,2012,'春',3),(119,'军火女王',13,2012,'春',3),(120,'刀剑神域',25,2012,'夏',3),(121,'TARI TARI',13,2015,'夏',3),(122,'织田信奈的野望',13,2012,'夏',3),(123,'中二病也要谈恋爱',13,2012,'秋',3),(124,'樱花庄的宠物女孩',24,2012,'秋',3),(125,'邻座的怪同学',13,2012,'秋',3),(126,'K',13,2012,'秋',3),(127,'只要你说你爱我',12,2012,'秋',3),(128,'少女与战车',12,2012,'秋',3),(129,'心理测量者',22,2012,'秋',3),(130,'玉子市场',12,2013,'冬',3),(131,' 我的朋友很少NEXT',12,2013,'冬',3),(132,'我女友与青梅竹马的惨烈修罗场',13,2013,'冬',3),(133,'加速世界',24,2012,'春',3),(134,'我的妹妹哪有这么可爱第二季)',16,2013,'春',3),(135,'进击的巨人',25,2013,'春',3),(136,'潜行吧！奈亚子W',12,2013,'春',3),(137,'言叶之庭',1,2013,'春',3),(138,'苍蓝钢铁的琶音',12,2013,'秋',3),(139,'白色相簿2',13,2013,'秋',3),(140,'Pupa',12,2014,'冬',3),(141,'最近，妹妹的样子有点怪？',12,2014,'冬',3),(142,'斩·赤红之瞳！',24,2014,'夏',3),(143,'寄生兽',24,2014,'秋',3),(144,'甘城光辉游乐园',14,2014,'秋',3),(145,'心理测量者第二季',11,2014,'秋',3),(146,'四月是你的谎言',22,2014,'秋',3),(147,'舰队Collection',12,2015,'冬',3),(148,'路人女主的养成方法',12,2015,'冬',3),(149,'食戟之灵',24,2015,'春',3),(150,'终结的炽天使',12,2015,'春',3),(151,'OVERLORD',13,2015,'夏',3),(152,'学园孤岛',2,2015,'夏',4),(153,'六花的勇者',12,2015,'夏',3),(154,'终结的炽天使名古屋决战',12,2015,'秋',3),(155,'小桃小栗 Love Love物语',12,2016,'冬',3),(156,'黑之宣告',12,2016,'冬',3),(157,'超时空要塞Δ',26,2016,'春',3),(158,' 监狱学园',12,2015,'秋',3),(159,'在下坂本，有何贵干',13,2016,'春',3),(160,'线上游戏的老婆不可能是女生?',12,2016,'春',3),(161,'Re:从零开始的异世界生活',25,2016,'春',3),(162,'魔法少女☆伊莉雅 3rei!!',12,2016,'夏',3),(163,' 食戟之灵第二季',13,2016,'夏',3),(164,'LoveLive!Sunshine!!',13,2016,'秋',3),(165,'情热传说',25,2017,'冬',3),(166,'舰队Collection剧场版',1,2016,'秋',3),(167,'龙与虎',25,2008,'秋',3),(168,'幻灵镇魂曲',26,2009,'夏',3),(169,'新世纪福音战士新剧场版:Q',1,2012,'秋',3),(170,'NEW GAME!',13,2016,'秋',3),(171,'粗点心战争',12,2016,'冬',3),(172,'噬神者',12,2016,'冬',3),(173,'高校舰队',12,2016,'春',3),(174,'这个美术社大有问题! ',13,2016,'夏',3),(175,'少女编号 ',12,2016,'秋',3),(176,'终末的伊泽塔',13,2016,'秋',3),(177,'我太受欢迎了该怎么办',12,2016,'秋',3),(178,'甲铁城的卡巴内瑞',12,2016,'春',3),(179,'Charlotte',13,2015,'冬',3),(180,'魔法科高校的劣等生',26,2014,'春',3),(181,'迷家',12,2016,'春',3),(182,'魔王勇者',12,2013,'冬',3),(184,'我的女友是个一本正经的处女bitch',0,2017,'秋',4),(185,'食戟之灵第三季',12,2017,'秋',3),(186,'十二大战',12,2017,'秋',3),(187,'黑色五叶草',23,2017,'秋',1),(188,'国王游戏',0,2017,'秋',4),(189,'此花亭奇谭',0,2017,'秋',2),(190,'创世的姬君',0,2017,'秋',4),(191,'vanishing line',0,2017,'秋',1),(192,'Just Because!',12,2017,'秋',3),(193,'infini-t force',0,2017,'秋',1),(194,'Dies irae',0,2017,'秋',1),(195,'dia horizon',0,2017,'秋',1),(196,'罪人与龙共舞',0,2017,'秋',1),(197,'如果有妹妹就好了',12,2017,'秋',3),(198,'魔法使的新娘',0,2017,'秋',1),(199,'泥鲸之子们在沙地上歌唱',0,2017,'秋',1),(205,'宝石之国',2,2017,'秋',1),(206,'25岁的女高中生',0,2018,'冬',1),(207,'粗点心战争第二季',4,2018,'冬',1),(208,'伊藤润二collection',0,2018,'冬',4),(209,'OVERLORD第二季',6,2018,'冬',1),(210,'citrus柑橘味香气',0,2018,'冬',1),(211,'刀使巫女',1,2018,'冬',1),(212,'比宇宙更远的地方',0,2018,'冬',1),(213,'紫罗兰永恒花园',6,2018,'冬',1),(214,'杀戮重生犬屋敷',11,2017,'秋',3),(215,'库洛魔法使 透明卡篇',1,2018,'冬',1),(216,'爆肝工程师的异世界狂想曲',4,2018,'冬',1),(217,'BEATLESS-没有心跳的少女',0,2018,'冬',1),(218,'DARLING in the FRANKXX',10,2018,'冬',1);
/*!40000 ALTER TABLE `animation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-24 15:33:03
