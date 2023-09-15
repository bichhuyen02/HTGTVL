-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: workdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'huyen','$2a$10$zWcnDj4aw6PVvFJK99EB3uRmsrXXyfC9PNzDDoNQIR7/j7XKFSXzC','ROLE_ADMIN',_binary ''),(2,'tran','$2a$10$zWcnDj4aw6PVvFJK99EB3uRmsrXXyfC9PNzDDoNQIR7/j7XKFSXzC','ROLE_ADMIN',_binary ''),(3,'bhuyen','$2a$10$2tt099cLg5NKTJ62dtc8EuvLzIz2Dk0U3uRYVOrt44N/.fhpR02jm','ROLE_USER',_binary ''),(5,'staff','$2a$10$MnBRJFRcDdBKH7tw3boynu8Jxyy6uO4oWgWXcZh2g8ja2NmbaLyOG','ROLE_EMP',_binary ''),(6,'hhh','$2a$10$aKdYLGoA673d6VaqTOBHg.LJw2xq8uR48yHrGMupiDt2YblCbp2SC','ROLE_EMP',_binary ''),(7,'1234','$2a$10$nZxkLLyAQ1XybcyR44jf.OUSNX2En0yCi1pVfBaVWJlwcee2ScQHu','ROLE_EMP',_binary '\0'),(8,'user','$2a$10$BRtNZMQTjd8iodLraB0k2.qd6UX8lJlv/Ks1mbQ4N8gAZzgB.wcgq','ROLE_USER',_binary ''),(9,'thanh','$2a$10$rJ6kVfy9MtTmhxMXlBiTf.0fgcxaNjA.qleHN4vhrhyYtkLKik2wW','ROLE_EMP',_binary '\0'),(10,'tttt','$2a$10$0LBbS7JuLZhV2rRvVAarBuk0n9nboAGFUmAk7JZhJlmfhVv7zpcs.','ROLE_EMP',_binary '\0'),(11,'tt','$2a$10$jDYnNIZ8pBlcciMc1l6iLumBD/99Gj6ExErxocyl3gHBhvYgEaxlm','ROLE_USER',_binary ''),(14,'qq','$2a$10$cD1pYD0/59IlLTGVbD0KkeKT/atVrIdkZdep2ZPRAJvhgj0FemCFO','ROLE_USER',_binary '');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'IT phần mềm',NULL),(2,'Kinh doanh / Bán hàng',NULL),(3,'Hành chính / Văn phòng',NULL),(4,'Giáo dục / Đào tạo',NULL),(5,'Tư vấn',NULL),(6,'Marketing / Truyền thông / Quảng cáo',NULL),(7,'Kế toán / Kiểm toán',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` date DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `u_idx` (`user_id`),
  KEY `j_idx` (`company_id`),
  CONSTRAINT `j` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'2565858','2023-09-06',1,1),(2,'adsadsa','2023-09-06',1,1),(3,'hygyh','2023-09-06',1,1),(4,'èdaefd','2023-09-06',1,1),(5,'tee','2023-09-06',2,1),(6,'tee','2023-09-06',2,1),(7,'oki','2023-09-06',1,1),(8,'oki','2023-09-06',1,1),(9,'oki','2023-09-06',1,1),(10,'oki','2023-09-06',1,1),(11,'sxdsq','2023-09-06',2,1),(12,'fe','2023-09-06',1,1),(13,'hihi','2023-09-07',1,1),(14,'hihi','2023-09-07',1,1),(15,'trân xinh ','2023-09-07',1,1),(16,'trân xinh ','2023-09-07',1,1),(17,'hihi','2023-09-07',1,1),(18,'kkkk','2023-09-07',1,1),(19,'kkkk','2023-09-07',1,1),(20,'ttt','2023-09-07',1,1),(21,'555','2023-09-07',1,1),(22,'hhh','2023-09-07',1,1),(23,'1','2023-09-09',1,1),(24,'1','2023-09-09',1,1),(25,'1','2023-09-09',1,1),(26,'1','2023-09-09',1,1),(27,'1','2023-09-09',1,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_incorporation` date NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `a_idx` (`account_id`),
  CONSTRAINT `a` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Huyền','272863599','2023-08-27','huyền huyền huyền','gjgfgjgfjdtjtdgjtgdjdtgg','fvdsvss','2051050172huyen@ou.edu.vn','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693719280/vsgqn8hseo4nghumssxq.jpg','0386858149',5),(2,'Tsần Thị Bích Huyền','272863599','2023-08-28','dfdfsasa','dfdsf','dsfdsfds','fvgfsdfvsdfds2@đvdfsfd','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693841690/nsjmhbx6fhcztuy5gbcr.jpg','0386858149',6),(3,'dèư','272863599','2023-09-20','đeưed','dcfdsfvsdvs','ewd','2051050172huyen@ou.edu.vn','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693841782/havkrre2t9jgv0jnpwp5.jpg','0386858149',7),(4,'tttttt','272863599','2023-09-27','dsfsdf','gjgfgjgfjdtjtdgjtgdjdtgg','ewd','fdsds@jkhfvf','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694169644/arlfuvpbx3uxl3kywo0z.jpg','0386858149',9),(5,'Tsần Thị Bích Huyền','272863599','2023-09-14','ccxvv\r\nfdffd','fvsddsfd','555','fvgfsdfvsdfds2@cvdfsfd','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694255433/iy5jafacmrfw4h10eiix.jpg','0386858149',10);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `day_create` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `us_idx` (`user_id`),
  KEY `jo_idx` (`job_id`),
  CONSTRAINT `jo` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `us` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
INSERT INTO `cv` VALUES (8,'https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693935540/eonedzpttbkwpehhjhl2.jpg','','2022-03-23',1,1,_binary ''),(9,'https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693935891/jv3kky7iafvlxkjhuhkt.jpg','','2023-06-23',1,1,_binary ''),(10,'https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693935983/ktlwvmvaixj8ufrppykl.jpg','','2023-06-23',3,1,_binary ''),(11,'https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694154891/b5drfvwkt6mn9kcju30n.jpg','ứdws','2023-06-23',1,3,_binary ''),(12,'https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694402221/yrrit9wycwx94szwj4nj.jpg','tttttt','2023-09-11',1,5,_binary '');
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` bit(1) NOT NULL DEFAULT b'1',
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `use_i_idx` (`user_id`),
  KEY `company_i_idx` (`company_id`),
  CONSTRAINT `company_i` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `use_i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_nature` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` date DEFAULT NULL,
  `out_off_time` date NOT NULL,
  `quantity` int NOT NULL,
  `experience` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `loca_idx` (`location_id`),
  KEY `com_idx` (`company_id`),
  KEY `posi_idx` (`position_id`),
  KEY `cate_idx` (`category_id`),
  CONSTRAINT `cate` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `com` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `loca` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posi` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'fdgfdgfd','fgfsdsf','fsdfdsfvds','Full-time','100000-3000000','fsvsdfsdf','2023-09-04','2023-09-07',10,'không có','fvdsdsf\r\nfdsfsdf','fsdfdsfds\r\ndsfvdsfds',1,7,1,1),(2,'123','253.51243','123123312','Full-time','1221','1232231','2023-09-08','2023-09-20',1,'212321','213123','1312312',2,3,1,2),(3,'152412','2122','12121','Part-time','4','775','2023-09-08','2023-09-20',2,'122','12','21212',2,4,2,4),(4,'445646','65464564','54564','Part-time','56546','54546654','2023-09-08','2023-04-12',2,'56546546','4564565465','54656564',1,10,1,1),(5,'gfgsfg','fgvfdsgfdg','huyền huyền huyền','Full-time','fgfsgfdgf','dfgfdgvfdgvfd','2023-09-08','2023-09-13',9,'fdgfdgfdgfd','fdgdfgdf','gdfgdgdfg',1,12,1,1);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'TP Hồ Chí Minh',NULL),(2,'Đồng Nai',NULL),(3,'Hà Nội',NULL),(4,'Long An',NULL),(5,'Tiền Giang',NULL),(6,'Huế',NULL),(7,'Cần Thơ',NULL),(8,'Đà Nẵng',NULL),(9,'Nha Trang',NULL),(10,'Vũng Tàu',NULL),(11,'Hiện Đại','123'),(12,'Nguyễn Ngọc Huyền Trân','3');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Thực Tập Sinh',NULL),(2,'Nhân Viên',NULL),(3,'Trưởng Phòng',NULL),(4,'Quản Lý',NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `majors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `acc_idx` (`account_id`),
  CONSTRAINT `acc` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tsần Thị Bích Huyền','20510501huyen@ou.edu.vn','2002-09-20','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693714765/nhje5pb7x6jarprng8ft.jpg','IT','mới ra','nữ',3),(3,'Huyền','fvgfsdfvsdfds2@cvdfsfd','2002-09-20','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693935963/bx8mkwqpi8f8tehf0nxv.jpg','IT','không có','nữ',8),(4,'Tsần Thị Bích Huyền','2051050172huyen@ou.edu.vn','2023-09-13','0386858149','','IT phần mềm','Không yêu cầu kinh nghiệm','Nam',11),(5,'Tsần Thị Bích Huyền','2051050172huyen@ou.edu.vn','2023-09-19','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694319734/ohbgnscuajgvwqr6bpvp.jpg','IT phần mềm','Không yêu cầu kinh nghiệm','Nam',14);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-15 13:57:12
