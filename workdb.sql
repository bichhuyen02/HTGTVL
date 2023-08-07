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
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifi_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notif_idx` (`notifi_id`),
  CONSTRAINT `notif` FOREIGN KEY (`notifi_id`) REFERENCES `notifi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_job`
--

DROP TABLE IF EXISTS `category_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `category_ib` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_idx` (`category_ib`),
  KEY `job` (`job_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_ib`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_job`
--

LOCK TABLES `category_job` WRITE;
/*!40000 ALTER TABLE `category_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifi_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `notifi_id_idx` (`notifi_id`),
  CONSTRAINT `notifi_id` FOREIGN KEY (`notifi_id`) REFERENCES `notifi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
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
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idcompany_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'TẬP ĐOÀN CÔNG NGHIỆP - VIỄN THÔNG QUÂN ĐỘI','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690350832/Viettel_orsvwp.webp','https://www.topcv.vn/brand/congnghiepvienthongquandoi'),(2,'VNPT TECHNOLOGY - CÔNG TY CỔ PHẦN CÔNG NGHỆ CÔNG NGHIỆP BƯU CHÍNH VIỄN THÔNG','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690350808/VNPT_yduww6.webp','https://www.topcv.vn/brand/vnpttechnology'),(3,'Ngân Hàng TMCP Sài Gòn SCB','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690350940/SCB_ainkcz.webp','https://www.topcv.vn/brand/scbbank'),(4,'CÔNG TY TNHH BOSCH GLOBAL SOFTWARE TECHNOLOGIES','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690351045/Bosch_fdw1hn.webp','https://www.topcv.vn/brand/boschglobalsoftwaretechnologies'),(5,'CÔNG TY CỔ PHẦN GIÁO DỤC & ĐÀO TẠO IMAP VIỆT NAM','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690351117/Imap_tl44rx.webp','https://www.topcv.vn/brand/imap'),(6,'FPT Software','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690351425/fpt-software_q0yglq.webp','https://www.topcv.vn/cong-ty/fpt-software/3.html'),(7,'Công ty cổ phần Hạ tầng Viễn thông CMC Telecom','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690351568/cmc-telecom_nhuzsh.webp','https://www.topcv.vn/cong-ty/cong-ty-co-phan-ha-tang-vien-thong-cmc-telecom/9827.html'),(8,'CHICKEN PLUS','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690351760/CHICKEN_PLUS_q8qgmr.png','https://chickenplus.com.vn/'),(9,'Hệ thống siêu thị CoopMart','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690352024/coopmart_ydkapu.png','http://www.co-opmart.com.vn/print/thong-tin-tuyen-dung_5039_0_1.html'),(10,'HỆ THỐNG CIRCLE K','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690352261/ckclub_omjvki.png','https://www.circlek.com.vn/vi/co-hoi-nghe-nghiep/'),(11,'The Coffee House','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690355538/coffeeHouse_dvlo4u.webp','https://tuyendung.thecoffeehouse.com/'),(12,'HighLand Coffee','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1690355607/highlands_f9hjdt.png','https://careers.highlandscoffee.com.vn/vi/trang-chu/');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
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
  `requirement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_nature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `out_off_time` datetime DEFAULT NULL,
  `location_id` int NOT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `location_idx` (`location_id`),
  KEY `company_idx` (`company_id`),
  CONSTRAINT `company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Highlands Coffee tuyển dụng THU NGÂN','Thu nhập ổn định lâu dài, cạnh tranh nhất thị trường đồ uống. Chính sách thưởng hấp dẫn. Được đào tạo kỹ năng chuyên môn thường xuyên.','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time or Full-time','58E Bạch Đằng, P2, Tân Bình',NULL,NULL,NULL,1,12),(2,'Highlands Coffee tuyển dụng PHỤC VỤ ','Thu nhập ổn định lâu dài, cạnh tranh nhất thị trường đồ uống. Chính sách thưởng hấp dẫn. Được đào tạo kỹ năng chuyên môn thường xuyên.','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time or Full-time','QL51, Long Bình Tân, TP. Biên Hòa',NULL,NULL,NULL,7,12),(3,'Highlands Coffee tuyển dụng PHA CHẾ ','Thu nhập ổn định lâu dài, cạnh tranh nhất thị trường đồ uống. Chính sách thưởng hấp dẫn. Được đào tạo kỹ năng chuyên môn thường xuyên.','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time or Full-time','5 P. Đinh Tiên Hoàng, Hàng Trống, Hoàn Kiếm',NULL,NULL,NULL,3,12),(4,'Highlands Coffee tuyển dụng BẢO VỆ','Thu nhập ổn định lâu dài, cạnh tranh nhất thị trường đồ uống. Chính sách thưởng hấp dẫn. Được đào tạo kỹ năng chuyên môn thường xuyên.','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time or Full-time','325 Đại lộ Bình Dương, Phú Thọ, Thủ Dầu Một',NULL,NULL,NULL,5,12),(5,'The Coffee House tuyển dụng BẢO VỆ','Hơn 76% nhân viên của Nhà hài lòng với cơ hội thăng tiến, mức lương và sếp trực tiếp của họ. Bạn có sẵn sàng tham gia vào đội ngũ gần 2000 thành viên năng động, tích cực và sáng tạo của Nhà không?','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time ','223 Võ Văn Tần, Phường 5, Quận 3',NULL,NULL,NULL,1,11),(6,'The Coffee House tuyển dụng PHA CHẾ ','Hơn 76% nhân viên của Nhà hài lòng với cơ hội thăng tiến, mức lương và sếp trực tiếp của họ. Bạn có sẵn sàng tham gia vào đội ngũ gần 2000 thành viên năng động, tích cực và sáng tạo của Nhà không?','Tuổi từ 18 trở lên. Đã tốt nghiệp PTTH. Ưu tiên làm được các ngày lễ và Tết. Tinh thần trách nhiệm cao, sức khoẻ tốt.','Part-time ','23M P. Hai Bà Trưng, Hàng Bài, Hoàn Kiếm',NULL,NULL,NULL,3,11);
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
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idlocation_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Hồ Chí Minh',NULL),(2,'Hải Phòng',NULL),(3,'Hà Nội',NULL),(5,'Bình Dương',NULL),(6,'Long An',NULL),(7,'Đồng Nai',NULL),(8,'Tiền Giang',NULL),(9,'Đà Nẵng',NULL);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifi`
--

DROP TABLE IF EXISTS `notifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `job_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_idx` (`user_id`),
  KEY `job_idx` (`job_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifi`
--

LOCK TABLES `notifi` WRITE;
/*!40000 ALTER TABLE `notifi` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifi_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `noti_id_idx` (`notifi_id`),
  CONSTRAINT `noti_id` FOREIGN KEY (`notifi_id`) REFERENCES `notifi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `user_role` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2023-08-07 23:29:53
