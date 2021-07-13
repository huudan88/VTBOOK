-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vtbooks
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `aut_id` varchar(25) NOT NULL,
  `aut_name` varchar(45) DEFAULT NULL,
  `aut_note` varchar(1000) DEFAULT NULL,
  `aut_country` enum('VN','FOR') DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`aut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'VN00001','Nguyễn Du','','VN','','0000-00-00','','0000-00-00'),(2,'FOR00002','SEAN COVEY','','FOR','','0000-00-00','','0000-00-00'),(3,'VN00003','Tony Buổi Sáng','','VN','','0000-00-00','','0000-00-00'),(4,'VN00004','Y Ban','','VN','','0000-00-00','','0000-00-00'),(5,'VN00005','Diệp Lạc Vô Tâm','','VN','','0000-00-00','','0000-00-00'),(6,'FOR00006','Elon Musk','','FOR','','0000-00-00','','0000-00-00'),(7,'VN00007','Tâm Phạm','','VN','','0000-00-00','','0000-00-00'),(8,'VN00008','Dương Thụ','','VN','','0000-00-00','','0000-00-00'),(9,'FOR00009','Pierre lemaitre','','FOR','','0000-00-00','','0000-00-00'),(10,'FOR00010','An Minjung','','FOR','','0000-00-00','','0000-00-00'),(11,'FOR00011','Dale carnegie','','FOR','','0000-00-00','','0000-00-00'),(12,'FOR00012','Tamara Bach','','FOR','','0000-00-00','','0000-00-00'),(13,'VN00013','Trác Nhã','','VN','','0000-00-00','','0000-00-00'),(14,'FOR00014','HIROMI SHINYA','','FOR','','0000-00-00','','0000-00-00'),(15,'FOR00015','Willam J.Rothwell','','FOR','','0000-00-00','','0000-00-00'),(16,'FOR00016','Richard Templar','','FOR','','0000-00-00','','0000-00-00'),(17,'VN00017','Sơn Tùng','','VN','','0000-00-00','','0000-00-00'),(18,'FOR00018','Mark Manson','','FOR','','0000-00-00','','0000-00-00'),(19,'FOR00019','Alex Rovira','','FOR','','0000-00-00','','0000-00-00'),(20,'FOR00020','Brian Tracy','','FOR','','0000-00-00','','0000-00-00'),(21,'FOR00021','Welby Altidor','','FOR','','0000-00-00','','0000-00-00'),(22,'VN00022','Thảo Thảo','','VN','','0000-00-00','','0000-00-00'),(23,'VN00023','Nguyễn Nhật Ánh','','VN','','0000-00-00','','0000-00-00'),(24,'VN00024','Thạch Lam','','VN','','0000-00-00','','0000-00-00'),(25,'VN00025','Dương Văn','','VN','','0000-00-00','','0000-00-00'),(26,'VN00026','Lê Bích','','VN','','0000-00-00','','0000-00-00'),(27,'VN00027','Hà Kin','','VN','','0000-00-00','','0000-00-00'),(28,'FOR00028','Jim Benton','','FOR','','0000-00-00','','0000-00-00'),(29,'FOR00029','Andrew Matthews','','FOR','','0000-00-00','','0000-00-00'),(30,'FOR00030','Erich Segal','','FOR','','0000-00-00','','0000-00-00'),(31,'FOR00031','Marie Kondo','','FOR','','0000-00-00','','0000-00-00'),(32,'FOR00032','Tom Sullivan','','FOR','','0000-00-00','','0000-00-00');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(25) NOT NULL,
  `cat_name` varchar(45) DEFAULT NULL COMMENT 'Category name',
  `cat_note` varchar(1000) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_categories`
--

LOCK TABLES `book_categories` WRITE;
/*!40000 ALTER TABLE `book_categories` DISABLE KEYS */;
INSERT INTO `book_categories` VALUES (1,'CAT_0001','Self-Help','','','0000-00-00','',''),(2,'CAT_0002','Literature-and-fiction','','','0000-00-00','',''),(3,'CAT_0003','Health',' Fitness & Dieting','','0000-00-00','',''),(4,'CAT_0004','Kids','','','0000-00-00','',''),(5,'CAT_0005','Science & Math','','','0000-00-00','',''),(6,'CAT_0006','History','','','0000-00-00','',''),(7,'CAT_0007','Social Science','','','0000-00-00','',''),(8,'CAT_0008','Other','','','0000-00-00','',''),(9,'CAT_0009','Techinical & language','','','0000-00-00','',''),(10,'CAT_0010','Novel','','','0000-00-00','',''),(11,'CAT_0011','Soft Skill','','','0000-00-00','','');
/*!40000 ALTER TABLE `book_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_status`
--

DROP TABLE IF EXISTS `book_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `b_status_id` varchar(10) NOT NULL,
  `b_status` varchar(45) DEFAULT NULL COMMENT 'Status for book table',
  `b_status_note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`,`b_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_status`
--

LOCK TABLES `book_status` WRITE;
/*!40000 ALTER TABLE `book_status` DISABLE KEYS */;
INSERT INTO `book_status` VALUES (1,'AVAI','Available',NULL),(2,'BOR','Borrowed',NULL);
/*!40000 ALTER TABLE `book_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(25) NOT NULL,
  `book_name` varchar(300) DEFAULT NULL,
  `book_description` varchar(3000) DEFAULT NULL,
  `cat_id` varchar(25) DEFAULT NULL COMMENT 'Category ID',
  `aut_id` varchar(25) DEFAULT NULL COMMENT 'Author ID',
  `Isdonate` enum('Y','N') DEFAULT NULL,
  `donator_id` varchar(25) DEFAULT NULL,
  `b_status_id` varchar(25) DEFAULT NULL,
  `pub_id` varchar(25) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`book_id`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `bookStatusFK_idx` (`b_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (25,'VT_Book0001','đtest2 sadasd','dsadadsad','CAT_0003','FOR00019','Y','VH003080','BOR','PUB_0014','Admin','2021-05-19','Admin','2021-06-07'),(26,'VT_Book0002','đtest dd da','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(27,'VT_Book0003','ahuhuu','dsadadsad','CAT_0003','FOR00019','N','VH000002','BOR','PUB_0020','Admin','2021-05-19','Admin','2021-06-07'),(29,'VT_Book0004','đtestdd hgjghj','dsadadsad','CAT_0003','FOR00019','Y','VH003080','BOR','PUB_0020','Admin','2021-05-19','Admin','2021-05-25'),(30,'VT_Book0005','đtest 5555 da 2 33 555555','dsadadsad ưewqewqe','CAT_0006','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-25'),(31,'VT_Book0006','đtest êwqeqwewqe','dsadadsad','CAT_0003','FOR00019','Y','VH000002','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-25'),(32,'VT_Book0007','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-21'),(33,'VT_Book0008','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000002','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-24'),(38,'VT_Book0009','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(39,'VT_Book0010','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(40,'VT_Book0011','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(43,'VT_Book0012','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(44,'','','','','','','','','','Admin','2021-05-19','','0000-00-00'),(68,'VT_Book0013','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-19','Admin','2021-05-20'),(69,'VT_Book0014','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(71,'VT_Book0015','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(72,'VT_Book0016','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(85,'VT_Book0017','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(86,'VT_Book0018','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(87,'VT_Book0019','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(88,'VT_Book0020','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(89,'VT_Book0021','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(90,'VT_Book0022','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(91,'VT_Book0023','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(92,'VT_Book0024','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(93,'VT_Book0025','đtest','dsadadsad','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-20','Admin','2021-05-20'),(94,'VT_Book0026','nguyen hữu đàn','dấdasdasdada','CAT_0003','FOR00019','Y','VH003080','AVAI','PUB_0020','Admin','2021-05-21','Admin','2021-05-21'),(96,'VT_Book0096','test book 96','','CAT_0003','FOR00019','Y','VH000003','AVAI','PUB_0020','Admin','2021-05-24','Admin','2021-05-24'),(97,'VT_Bookhuhuu','huuhuhuu','','CAT_0003','FOR00019','Y','VH000002','AVAI','PUB_0020','Admin','2021-05-24','Admin','2021-05-24');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_id` varchar(25) NOT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  `book_id` varchar(25) DEFAULT NULL,
  `b_status_id` varchar(25) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `borrow_note` varchar(1000) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_note` varchar(1000) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`borrow_id`),
  KEY `borrowStatusFK_idx` (`b_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,'BRR_0001','VH001112','VT_Book0005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'BRR_0002','VH001112','VT_Book0006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'BRR_0003','VH001112','VT_Book0006','BOR','2021-05-25','test mượn sách',NULL,NULL,'Admin','2021-05-25',NULL,NULL),(4,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(5,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(6,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(7,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(8,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(9,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(10,'','','','','0000-00-00','',NULL,NULL,'','0000-00-00',NULL,NULL),(11,'BRR_0098','VH003080','VT_Book0002','BOR','2021-06-18','test',NULL,NULL,'Admin','2021-06-18',NULL,NULL),(12,'BRR_0098','VH003080','VT_Book0005','BOR','2021-06-18','mượn sách đợt 2',NULL,NULL,'Admin','2021-06-18',NULL,NULL),(13,'BRR_0013','VH000002','VT_Book0002','BOR','2021-06-18','s',NULL,NULL,'Admin','2021-06-18',NULL,NULL),(14,'BRR_0014','','VT_Book0001','BOR','0000-00-00','',NULL,NULL,'Admin','2021-07-13',NULL,NULL),(15,'BRR_0015','VH000002','VT_Book0006','BOR','2021-07-13','jhkjkhkj',NULL,NULL,'Admin','2021-07-13',NULL,NULL);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pub_id` varchar(25) NOT NULL,
  `pub_name` varchar(45) DEFAULT NULL,
  `pub_note` varchar(1000) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'PUB_0001','Văn Hóa Thông Tin','','','0000-00-00','','0000-00-00'),(2,'PUB_0002','Đại học Quốc gia HN','','','0000-00-00','','0000-00-00'),(3,'PUB_0003','Kim Đồng','','','0000-00-00','','0000-00-00'),(4,'PUB_0004','trẻ','','','0000-00-00','','0000-00-00'),(5,'PUB_0005','Đại học Sư phạm TPHCM','','','0000-00-00','','0000-00-00'),(6,'PUB_0006','Dân Trí','','','0000-00-00','','0000-00-00'),(7,'PUB_0007','Văn hóa Sài Gòn','','','0000-00-00','','0000-00-00'),(8,'PUB_0008','Lao Động','','','0000-00-00','','0000-00-00'),(9,'PUB_0009','Thời Đại','','','0000-00-00','','0000-00-00'),(10,'PUB_0010','Thanh Niên','','','0000-00-00','','0000-00-00'),(11,'PUB_0011','Văn học','','','0000-00-00','','0000-00-00'),(12,'PUB_0012','Thế giới','','','0000-00-00','','0000-00-00'),(13,'PUB_0013','Nhã Nam','','','0000-00-00','','0000-00-00'),(14,'PUB_0014','Phụ nữ','','','0000-00-00','','0000-00-00'),(15,'PUB_0015','Tổng hợp TP HCM','','','0000-00-00','','0000-00-00'),(16,'PUB_0016','Lao Động Xã Hội','','','0000-00-00','','0000-00-00'),(17,'PUB_0017','Công thương','','','0000-00-00','','0000-00-00'),(18,'PUB_0018','Lao động - xã hội','','','0000-00-00','','0000-00-00'),(19,'PUB_0019','Văn Nghệ','','','0000-00-00','','0000-00-00'),(20,'PUB_0020','CAND','','','0000-00-00','','0000-00-00'),(21,'PUB_0021','Tri Thức','','','0000-00-00','','0000-00-00'),(22,'PUB_0022','Oxford Univesity Press','','','0000-00-00','','0000-00-00'),(23,'PUB_0023','Other','','','0000-00-00','','0000-00-00'),(24,'PUB_0024','TP HCM','','','0000-00-00','','0000-00-00'),(25,'PUB_0025','Hồng Đức','','','0000-00-00','','0000-00-00'),(26,'PUB_0026','Phương Đông','','','0000-00-00','','0000-00-00'),(27,'PUB_0027','Riverheart Books','','','0000-00-00','','0000-00-00'),(28,'PUB_0028','Thế giới Publishers','','','0000-00-00','','0000-00-00'),(29,'PUB_0029','Nhã Nam Books','','','0000-00-00','','0000-00-00'),(30,'PUB_0030','Đại học Kinh tế Quốc Dân','','','0000-00-00','','0000-00-00'),(31,'PUB_0031','Hà Nội','','','0000-00-00','','0000-00-00'),(32,'PUB_0032','Hội nhà văn','','','0000-00-00','','0000-00-00'),(33,'PUB_0033','Đông Á','','','0000-00-00','','0000-00-00'),(34,'PUB_0034','Tôn giáo','','','0000-00-00','','0000-00-00');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(25) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'VH003080','dan.nguyen','dan.nguyen@lge.com','VT1',NULL,NULL,NULL,NULL),(2,'VH000001','thanh2.hoang','thanh2.hoang@lge.com','VT2',NULL,NULL,NULL,NULL),(3,'VH000002','ngoc.dao','ngoc.dao@lge.com','QPM',NULL,NULL,NULL,NULL),(4,'VH000003','canh.ngo','canh.ngo@lge.com','FT2',NULL,NULL,NULL,NULL),(5,'VH000004','hien.dinh','hien.dinh@lge.com','VT2',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vtbooks'
--
/*!50003 DROP FUNCTION IF EXISTS `getNextId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getNextId`(prefix VARCHAR(15),
        tblname VARCHAR(15)
) RETURNS varchar(25) CHARSET utf8
BEGIN
	DECLARE nextIndex INT;
    DECLARE nextId VARCHAR(20);
    
    SELECT AUTO_INCREMENT
    INTO nextIndex
    FROM information_schema.TABLES 
    WHERE TABLE_SCHEMA = "vtbooks" 
    AND TABLE_NAME = tblname;

	SET nextId = CONCAT(prefix,RIGHT(CONCAT("0000",nextIndex),4));
    
	RETURN (nextId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBooks`()
BEGIN
	select b.book_id,
		b.book_name,
        cat.cat_name,
        stt.b_status,
        a.aut_name,
        pub.pub_name,
        b.Isdonate,
        u.user_name
    from books as b
    left join book_categories as cat
    on b.cat_id = cat.cat_id
    left join book_status as stt
    on b.b_status_id = stt.b_status_id
    left join publishers as pub
    on b.pub_id = pub.pub_id
    left join users as u
    on b.donator_id = u.user_id
    left join authors as a
    on b.aut_id = a.aut_id
    order by b.book_id
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAuthor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAuthor`()
BEGIN
	select 	aut.aut_id,
			aut.aut_name,
            aut.aut_country
    from authors aut
    order by aut.aut_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBookCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookCategory`()
BEGIN
	select 	cat.cat_id,
			cat.cat_name
    from book_categories cat
    order by cat.cat_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBookStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookStatus`()
BEGIN
	select 	stt.b_status_id,
			stt.b_status
    from book_status stt
    order by stt.b_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBorrowBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBorrowBooks`()
BEGIN
	select br.borrow_id,
		b.book_id,
		b.book_name,
        stt.b_status,
        u.user_name,
        br.borrow_date,
        br.borrow_note,
        br.return_date,
        br.return_note
    from borrow as br
    left join books as b
    on br.book_id = b.book_id
    left join users as u
    on br.user_id = u.user_id
    left join book_status as stt
    on br.b_status_id = stt.b_status_id
    order by stt.b_status
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInfoBaseBookID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInfoBaseBookID`(IN book_id	varchar(25))
BEGIN
	select b.book_id,
		b.book_name,
        b.cat_id,
        b.b_status_id,
        b.pub_id,
        b.donator_id,
        b.aut_id,
        b.book_description,
        cat.cat_name,
        stt.b_status,
        a.aut_name,
        pub.pub_name,
        b.Isdonate,
        u.user_name
    from books as b
    left join book_categories as cat
    on b.cat_id = cat.cat_id
    left join book_status as stt
    on b.b_status_id = stt.b_status_id
    left join publishers as pub
    on b.pub_id = pub.pub_id
    left join users as u
    on b.donator_id = u.user_id
    left join authors as a
    on b.aut_id = a.aut_id
    where b.book_id = book_id
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPublisher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPublisher`()
BEGIN
	select 	pub.pub_id,
			pub.pub_name
    from publishers pub
    order by pub.pub_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUsers`()
BEGIN
	select 	u.user_id,
			u.user_name,
            u.user_mail,
            u.department
    from users u
    order by u.user_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBooks`(
								IN book_id	varchar(25),
								IN book_name	varchar(300),
								IN book_description	varchar(3000),
								IN cat_id	varchar(25),
								IN aut_id	varchar(25),
								IN Isdonate	enum('Y','N'),
								IN donator_id	varchar(25),
								IN b_status_id	varchar(25),
								IN pub_id	varchar(25),
								IN creater	varchar(45),
								IN create_date	date
								)
BEGIN
	insert into books(
					book_id,
					book_name,
					book_description,
					cat_id,
					aut_id,
					Isdonate,
					donator_id,
					b_status_id,
					pub_id,
					creater,
					create_date
					)
	values (
					book_id,
					book_name,
					book_description,
					cat_id,
					aut_id,
					Isdonate,
					donator_id,
					b_status_id,
					pub_id,
					creater,
					create_date
			);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBorrowBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBorrowBooks`(
				IN borrow_id	varchar(25),
				IN user_id	varchar(25),
				IN book_id	varchar(25),
				IN b_status_id	varchar(25),
				IN borrow_date	date,
				IN borrow_note	varchar(1000),
				IN creater	varchar(45),
				IN create_date	date	
)
BEGIN
		INSERT INTO borrow(
						borrow_id,
						user_id,
						book_id,
						b_status_id,
						borrow_date,
						borrow_note,
						creater,
						create_date
					)
		VALUES (
						borrow_id,
						user_id,
						book_id,
						b_status_id,
						borrow_date,
						borrow_note,
						creater,
						create_date
				);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooks`(
								IN pbook_id	varchar(25),
								IN pbook_name	varchar(300),
								IN pbook_description	varchar(3000),
								IN pcat_id	varchar(25),
								IN paut_id	varchar(25),
								IN pIsdonate	enum('Y','N'),
								IN pdonator_id	varchar(25),
								IN pb_status_id	varchar(25),
								IN ppub_id	varchar(25),
								IN pupdater	varchar(45),
								IN pupdate_date	date
                                )
BEGIN
	UPDATE books
	SET book_name = pbook_name,
		book_description = pbook_description,
		cat_id = pcat_id,
		aut_id = paut_id,
		Isdonate = pIsdonate,
		donator_id = pdonator_id,
		b_status_id = pb_status_id,
		pub_id = ppub_id,
		updater = pupdater,
		update_date = pupdate_date
	WHERE book_id = pbook_id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-13 12:00:13
