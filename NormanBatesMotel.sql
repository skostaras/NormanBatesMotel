CREATE DATABASE  IF NOT EXISTS `NormanBatesMotel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `NormanBatesMotel`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: NormanBatesMotel
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `Guestbook`
--

DROP TABLE IF EXISTS `Guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Guestbook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `comments` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guestbook`
--

LOCK TABLES `Guestbook` WRITE;
/*!40000 ALTER TABLE `Guestbook` DISABLE KEYS */;
INSERT INTO `Guestbook` VALUES (3,'cowboy77','cowboy77@gmail.com','Texas','fovero jenodoxeio, ola kala, to ntouz mono eixe kokkines daxtylies'),(4,'kostasfiatpunto','kostasfiatpunto@gmail.com','Λάρισα','τι το θελα, δεν καθομουν σπιτι μου, χαλια υπνος, ασε που ο ιδιοκτητης με κοιταζε περιεργα'),(12,'geraki','geraki@gmail.com','Τορόντο','aytoi oi amerikanoi oute ena motel tis prokopis den mporoyn na ftiajoyn'),(13,'born2bwaild','born2bwaild@gmail.com','Route 66','δικε μου, όλα καλά, παίζει και λιμνουλα κοντα με αξιοθεατο ενα βουλιαγμενο αυτοκινητο... tripppyyyy');
/*!40000 ALTER TABLE `Guestbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-15 18:39:29
