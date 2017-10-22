-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: infoweb
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `User_id` varchar(128) DEFAULT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  KEY `User_id` (`User_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('prash1987@gmail.com','8761d26a9842f4bff35f97c33103b6ef0ac8194c836f9aae36317f9c533c99d821a81b1f1e8c682fc17c65da732b8a26375e42596aa8c77cf8571c81c1e286c2','b181d782ee22623a47b8c3729ee30a216e1c12b187bb7b1d913d79037f3468102c6131214e0efb84f93dc95333cae94fa87d374c0a622f9c6d0cb92acffe7c89','prash1987@gmail.com','967068'),('pradeep@gmail.com','c59b7b70b5fa2276dea0475c942c89283904ad304733898e583565a9a7bd2d4077497316d60dfc9bdb7d59282d9888f82d495a14f3bd1b67d0fc9c2c32123c40','2eebe77c38573d9be763a0fa58af132ed019a0c8718bc00e3b65033007698ed32e2da2301afbf8ee5c605e74df40b15ca3f35012c7160a831ba3895e191af4fb','pradeep@gmail.com',''),('prakash@gmail.com','f6e6566b55dd85ee1ff2c1fd4197e0505ff44bc2514bc05eab7f93041528d550dc21523b6cbd62a5045b31cb1e213efc387f4952889ab2c56154836e7741258d','3c680ef4dbf476e1547883b84dd44dc81497523c11e87dbb9f39e59496b21c83697a2cd09d0cf3929be220dbc932e9bd14804c2e45805e245fd99082dee405c4','prakash@gmail.com','384545'),('prbhat@indiana.edu','85c4e758fb2351bc929a58ca24c23a1d8590f131d8edebb3b187da277241e0156b4d04abea85aa3ce17cc50ac311a93cbd778c2a250bca6c0f2dd22883486471','85b1bd02cdf40cd17e13c22634f02bcf34912d4a62e21416bf870595f9c61334dd40d14b549a0be816b88c0db7b1563c83007140a4cb8f8f1c76c2c25b9f2b61','prbhat@indiana.edu','680764'),('prash.kumta@gmail.com','c278890e9551c6923fcb28606da350d3ad203c65631eb65200d73313389c03eebeb7c9a0f22d1cda71cec23343672d4b035474b898f0a23798ba76e04de9fd8c','e7b8602f12984a6e56367aad76a700cc787207ad040c23566e82d197648c32657fd943230d89f05237fac0520eaedd21eeb4d471e67f02acfc01f1fa28ac4c8f','prash.kumta@gmail.com','');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-01 23:52:59