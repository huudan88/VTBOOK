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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'VN0001','Nguyễn Du',NULL,'VN',NULL,NULL,NULL,NULL),(2,'VN0002','Dương Thụ',NULL,'VN',NULL,NULL,NULL,NULL),(3,'FOR0003','Elon Musk',NULL,'FOR',NULL,NULL,NULL,NULL),(4,'VN0004','Lao động',NULL,'VN',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_categories`
--

LOCK TABLES `book_categories` WRITE;
/*!40000 ALTER TABLE `book_categories` DISABLE KEYS */;
INSERT INTO `book_categories` VALUES (1,'CAT_SH','Self-Help',NULL,NULL,NULL,NULL,NULL),(2,'CAT_LF','Literature-and-fiction',NULL,NULL,NULL,NULL,NULL),(3,'CAT_HFD','Health, Fitness & Dieting',NULL,NULL,NULL,NULL,NULL),(4,'CAT_KID','Kids',NULL,NULL,NULL,NULL,NULL),(5,'CAT_SM','Science & Math',NULL,NULL,NULL,NULL,NULL),(6,'CAT_H','History',NULL,NULL,NULL,NULL,NULL),(7,'CAT_SS','Social Science',NULL,NULL,NULL,NULL,NULL),(8,'CAT_O','Other',NULL,NULL,NULL,NULL,NULL),(9,'CAT_TL','Technical & language',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_status`
--

LOCK TABLES `book_status` WRITE;
/*!40000 ALTER TABLE `book_status` DISABLE KEYS */;
INSERT INTO `book_status` VALUES (1,'AVAI','Available',''),(2,'BOR','Borrow',NULL);
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
  `donater_id` varchar(25) DEFAULT NULL,
  `b_status_id` varchar(25) DEFAULT NULL,
  `pub_id` varchar(25) DEFAULT NULL,
  `creater` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`book_id`),
  KEY `bookStatusFK_idx` (`b_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'VTBOOK0001','Truyện Kiều','Đoạn trường tân thanh (chữ Hán: 斷腸新聲), thường được biết đến với cái tên đơn giản là Truyện Kiều (chữ Nôm: 傳翹), là một truyện thơ của đại thi hào Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm theo thể lục bát, gồm 3254 câu.','CAT_LF','VN0001','Y','VH003510','AVAI','NXB0019',NULL,NULL,NULL,NULL),(2,'VTBOOK0002','Effortless English - Luyện nói tiếng anh như người bản ngữ',NULL,'CAT_TL',NULL,'Y','VH001111','AVAI','NXB0021',NULL,NULL,NULL,NULL),(3,'VTBOOK0003','Mr.Cà vạt',NULL,'CAT_LF',NULL,'Y','VH001112','AVAI','NXB0020',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'NXB0001','Thanh niên',NULL,NULL,NULL,NULL,NULL),(2,'NXB0002','Dân Trí',NULL,NULL,NULL,NULL,NULL),(3,'NXB0003','Lao động',NULL,NULL,NULL,NULL,NULL),(4,'NXB0004','Văn học',NULL,NULL,NULL,NULL,NULL),(5,'NXB0005','Thế giới',NULL,NULL,NULL,NULL,NULL),(6,'NXB0006','Lao động xã hội',NULL,NULL,NULL,NULL,NULL),(7,'NXB0007','Phụ nữ',NULL,NULL,NULL,NULL,NULL),(8,'NXB0008','Tổng hợp TP HCM',NULL,NULL,NULL,NULL,NULL),(9,'NXB0009','Trẻ',NULL,NULL,NULL,NULL,NULL),(10,'NXB0010','Lao động xã hội',NULL,NULL,NULL,NULL,NULL),(11,'NXB0011','Công thương',NULL,NULL,NULL,NULL,NULL),(12,'NXB0012','Nhã Nam',NULL,NULL,NULL,NULL,NULL),(13,'NXB0013','Văn nghệ',NULL,NULL,NULL,NULL,NULL),(14,'NXB0014','CAND',NULL,NULL,NULL,NULL,NULL),(15,'NXB0015','Tri thức',NULL,NULL,NULL,NULL,NULL),(16,'NXB0016','Oxford Univesity Press',NULL,NULL,NULL,NULL,NULL),(17,'NXB0017','Văn Hóa Sài Gòn',NULL,NULL,NULL,NULL,NULL),(18,'NXB0018','Thế giới',NULL,NULL,NULL,NULL,NULL),(19,'NXB0019','Văn hóa thông tin',NULL,NULL,NULL,NULL,NULL),(20,'NXB0020','Kim đồng',NULL,NULL,NULL,NULL,NULL),(21,'NXB0021','Đại học quốc gia HN',NULL,NULL,NULL,NULL,NULL),(22,'NXB0022','Đại học sư phạm TPHCM',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `users` VALUES (1,'VH003080','dan.nguyen','dan.nguyen@lge.com','VT1',NULL,NULL,NULL,NULL),(2,'VH005534','thanh2.hoang','thanh2.hoang@lge.com','VT2',NULL,NULL,NULL,NULL),(3,'VH003510','ngoc.dao','ngoc.dao@lge.com','QPM',NULL,NULL,NULL,NULL),(4,'VH001111','hien.dinh','hien.dinh@lge.com','VT2',NULL,NULL,NULL,NULL),(5,'VH001112','canh.ngo','canh.ngo@lge.com','FT2',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 17:17:24
