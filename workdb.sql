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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'huyen','$2a$10$zWcnDj4aw6PVvFJK99EB3uRmsrXXyfC9PNzDDoNQIR7/j7XKFSXzC','ROLE_ADMIN',_binary ''),(2,'tran','$2a$10$zWcnDj4aw6PVvFJK99EB3uRmsrXXyfC9PNzDDoNQIR7/j7XKFSXzC','ROLE_ADMIN',_binary ''),(3,'bhuyen','$2a$10$2tt099cLg5NKTJ62dtc8EuvLzIz2Dk0U3uRYVOrt44N/.fhpR02jm','ROLE_USER',_binary ''),(4,'user','$2a$10$BRtNZMQTjd8iodLraB0k2.qd6UX8lJlv/Ks1mbQ4N8gAZzgB.wcgq','ROLE_USER',_binary ''),(5,'tt','$2a$10$jDYnNIZ8pBlcciMc1l6iLumBD/99Gj6ExErxocyl3gHBhvYgEaxlm','ROLE_USER',_binary ''),(6,'qq','$2a$10$cD1pYD0/59IlLTGVbD0KkeKT/atVrIdkZdep2ZPRAJvhgj0FemCFO','ROLE_USER',_binary ''),(7,'dotea','$2a$10$yezxaamDDwPil71b3Q6EfOnhebZgjJiNxCn9xDyVyIFO85vSPvNBK','ROLE_EMP',_binary ''),(8,'medbolide','$2a$10$wCWGtOCxAoOe0P5W.eHF3urP/qeypfFkl6mL30nI6Rb2M6Jn4zr0C','ROLE_EMP',_binary ''),(9,'sti','$2a$10$hOZHj3MRykksTa55lSZFAO3XwnhPB.0cdoeciOJGiryVsIfda7P1K','ROLE_EMP',_binary ''),(10,'danco','$2a$10$V.8/HnyzfF8ESR41C7SUhezTEKufr4F2l46y8UMZhrSVoyedKN4Uy','ROLE_EMP',_binary ''),(11,'nabati','$2a$10$c2qPp6bOTFQ.ZLRXQ1wNBOmhQMvCjyjBtR70e9toT4q4hYpqnf3rC','ROLE_EMP',_binary ''),(12,'era','$2a$10$viA4jgnoWysu7yhhLy29Sued/4sZ04rac.1ZOxZvZoMebWsNygI7m','ROLE_EMP',_binary ''),(13,'fulin','$2a$10$6sW/gyEWjCEy0XHsE4XTYu0viGhT9AtqhQ4Ey3hWsnIBR/vdemoo.','ROLE_EMP',_binary ''),(14,'daiduong','$2a$10$SMKVf/fsQ1DFPUCJOb/7we6HfoHejx7IQyBdJvv6puJXPSdCLGNri','ROLE_EMP',_binary ''),(15,'tma','$2a$10$gNRkDyxMRWADkj/Q/XEH6ORLiHTTUoYvVlw1XqDMgeIuuKE2LgGmK','ROLE_EMP',_binary ''),(16,'tamviet','$2a$10$yezxaamDDwPil71b3Q6EfOnhebZgjJiNxCn9xDyVyIFO85vSPvNBK','ROLE_EMP',_binary ''),(17,'thuvienphapluat','$2a$10$yezxaamDDwPil71b3Q6EfOnhebZgjJiNxCn9xDyVyIFO85vSPvNBK','ROLE_EMP',_binary ''),(18,'shinhan1','$2a$10$yezxaamDDwPil71b3Q6EfOnhebZgjJiNxCn9xDyVyIFO85vSPvNBK','ROLE_EMP',_binary ''),(19,'fpt','$2a$10$rTNYV52m9aDGYYL5OLyQrOzaUg55q62fN4pBsDMbmG6nBe5V55Mgu','ROLE_EMP',_binary ''),(20,'fit','$2a$10$rer9pIbjaK8WyGDH7yKQP.ipxyQdooTH9zFIijYk9Usmq/13oQCY.','ROLE_EMP',_binary ''),(21,'fecredit','$2a$10$yezxaamDDwPil71b3Q6EfOnhebZgjJiNxCn9xDyVyIFO85vSPvNBK','ROLE_EMP',_binary ''),(22,'gumac','$2a$10$KfNGe5e.qYBf0BwQM3k.uuzxOQIHbUCNarcm9t0OFwmvnwnRzYlXO','ROLE_EMP',_binary ''),(23,'apollo','$2a$10$7aMdIldLz5rBArFf9PI2c.YkXdmeV9t.6e42dqVVTOgNog0fKWXI6','ROLE_EMP',_binary ''),(24,'adfly','$2a$10$LknjMx5yVgRWS4zuqzB/aeIlnI4.9ENrIWCXBcF.kPyLKCr3eEfTm','ROLE_EMP',_binary ''),(25,'htran','$2a$10$TOAvSphrPw4dZJGicXiYZOKy72EcRjuSHP94vob6WKyWF0f4IDU4m','ROLE_USER',_binary ''),(26,'staff','$2a$10$7l1KsDbodUMIdMgTHev.FeBg6Lin3n3zPxSmGYG2zypLaLlT.bHTy','ROLE_EMP',_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Công ty TNHH DOTEA','Số 22 Đường 37, KDC Vạn Phúc, Hiệp Bình Chánh, TP. Thủ Đức','2015-02-06','Từ lâu, uống trà, thưởng trà đã trở thành một phần không thể thiếu trong đời sống của người dân Việt. Trà có thể sử dụng nhất ẩm – uống trà một mình, hoặc cùng bạn tâm giao đàm đạo thơ văn, chính sự, nhân sinh nuôi dưỡng tầm hồn.','https://dotea.vn/','10 - 150 người','Dotea564@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694787133/o4rejlt9srqgpzzbr8um.webp','0337639042',7),(2,'Công Ty Cổ Phần Dược Phẩm MEDBOLIDE','Phòng 09, Lầu 10, Tòa Nhà The Everrich 1, Số 968 Đường Ba Tháng Hai, Phường 15, Quận 11','2013-08-13','Công ty Cổ Phần Dược Phẩm MEDBOLIDE là công ty chuyên phát triển và phân phối các dược phẩm đặc trị như ung thư, viên gan, tim mạch, v.v... Với sứ mệnh tạo ra những viên thuốc có chất lượng tốt nhất nhằm góp phần vào việc chăm sóc sức khỏe người dân Việt Nam, Công ty Cổ Phần Dược Phẩm MEDBOLIDE lấy phương châm “Tiên phong trong chất lượng” ','https://medbolide.com/','10 - 150 người','medbolide@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694787924/ozfvxx3gtvzhnd5ak80b.webp','0338639442',8),(3,'CÔNG TY TNHH QUỐC TẾ SONG THANH ','Số 8, ngõ 96, phố Võ Thị Sáu, Phường Thanh Nhàn, Quận Hai Bà Trưng, Thành phố Hà Nội, Việt Nam','2011-03-20','Công ty TNHH Quốc tế Song Thanh là nhà cung cấp chuyên nghiệp các sản phẩm máy Bơm, Van công nghiệp và các thiết bị ngành nước tại Việt Nam','http://stigroup.vn/','10 - 150 người','sti@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694789281/wwjuyfym5rljmgu5kvcj.webp','0347639042',9),(4,'Công ty Danco Holdings','Tầng 10, số 434 Trần Khát Chân, Phường Phố Huế, Quận Hai Bà Trưng, Thành phố Hà Nội, Việt Nam','2008-03-18','Danco Holdings được khởi dựng từ một khát vọng về một tập đoàn đầu tư chuyên nghiệp, thận trọng, với mục tiêu khẳng định vị thế và thương hiệu bền vững trên thị trường đầu tư xây dựng công nghiệp, năng lượng, bất động sản, du lịch nghỉ dưỡng.','https://dancoholding.vn/','Trên 300 người','danco@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694789834/cagauwnywhuzfz45pbbx.webp','0338656042',10),(5,'Công Ty NABATI Việt Nam','Lầu 2, Tòa nhà Phượng Long - Số 16, Đường Nguyễn Trường Tộ, Phường 13, Quận 4','2008-08-18','Nabati Indonesia khởi nghiệp và thành lập vào năm 1985, là thương hiệu bánh kẹo hàng đầu tại Indonesia với nhiều dòng sản phẩm tiện ích, giá cả phù hợp với nhiều nhóm đối tượng khác nhau, đặc biệt là giới trẻ, là nhà sản xuất đầu tiên về Bánh xốp Phô mai ở Indonesia, là thành viên của hiệp hội thực phẩm Snack của Hoa kỳ.','http://www.nabatisnack.co.id','300-1000','nabati11@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694790425/jst8hgxaueahvduksu3y.webp','0338639112',11),(6,'CÔNG TY CỔ PHẦN BĐS ERA VIỆT NAM',' 14 Thái Thị Nhạn, Phường 10, Quận Tân Bình','2017-02-13','Thương hiệu ERA Real Estate là thương hiệu có mặt tại 31 Quốc Gia, với hơn 2,339 Chi Nhánh Sàn Giao Dịch và hơn 36,279 nhân viên kinh doanh trên toàn Thế Giới. Tại ERA, chúng tôi cam kết đem lại dịch vụ tốt nhất, kết quả tốt nhất, và hướng đến sự hài lòng cao nhất từ khách hàng',' https://www.era.com.vn/','10 - 150 người','era@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694790988/tayahgzpago9mytutah3.webp','0338790042',12),(7,'CN CÔNG TY CP NHỰA PHÚ LÂM','Lô 109, KCN Amata, P long Bình, Biên Hòa','2009-08-18','Công ty cổ phần công nghiệp Nhựa Phú Lâm là công ty 100% vốn Đài Loan, chuyên sản xuất và cung cấp những sản phẩm như giả da, giả da xốp, giả da mềm, màng nhựa và da PU thích hợp làm nội thất, túi xách, giày dép, bóng, may mặc, áo mưa, băng keo, văn phòng phẩm, băng rôn quảng cáo',' http://www.fulinvn.com/','Trên 300 người','nhua@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694792416/di70d3t8l4atrnix2arn.webp','0338636782',13),(8,'CÔNG TY TNHH TƯ VẤN & ĐÀO TẠO ĐẠI DƯƠNG','Số 25 Đường số 23, Phường Linh Chiểu, Quận Thủ Đức','2011-01-09','Công Ty TNHH Tư Vấn & Đào Tạo Đại Dương có hệ thống đào tạo tin học với hàng ngàn máy tính, hàng chục ngàn học viên mỗi năm và nhiều chi nhánh trên toàn Tp.HCM.','https://tinhocdaiduong.vn/','100-499 người','daiduong@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694793051/bwkwlzwr8nam6pr9afvw.webp','0338909042',14),(9,'Công ty TMA Solutions','111, Đường Nguyễn Đình Chính, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam','2009-01-04','TMA tự hào nhận được sự tin tưởng của khách hàng là những tập đoàn lớn đến từ 30 quốc gia trên thế giới. TMA nhiều năm liền vinh dự được bình chọn trong top doanh nghiệp CNTT Việt Nam, liên tục được vinh danh trong top 10 doanh nghiệp xuất khẩu phần mềm, Top 10 doanh nghiệp Fintech, Top 10 doanh nghiệp AI – IoT',' https://www.tma.vn/','1000+người','tma@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694793770/ckuwtu6ajnwjzgxjdd2n.webp','0338639556',15),(10,'CÔNG TY CỔ PHẦN GIÁO DỤC TÂM VIỆT','399 Lũy Bán Bích, phường Hiệp Tân, quận Tân Phú, Tp. Hồ Chí Minh','2007-08-13','chúng tôi theo đuổi phương châm Học Nhật – Hiểu Bản với ý nghĩa: “Học tiếng Nhật không chỉ dừng lại ở việc học hiểu và giao tiếp thành thạo mà thông qua ngôn ngữ mới này, các bạn sẽ được tiếp cận với bản sắc văn hóa, phong tục tập quán, xã hội Nhật Bản. Từ đó, quay lại tìm đúng bản ngã của chính mình.”\r\n\r\nNhật Ngữ Tâm Việt – Giải pháp toàn diện cho người học tiếng Nhật.\r\n\r\n','tvg.edu.vn','25-99 người','tamviet@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694795223/gjvf8gkxoqjclqybfuqr.webp','0355739042',16),(11,'CÔNG TY TNHH THƯ VIỆN PHÁP LUẬT','SỐ 17 NGUYỄN GIA THIỀU - PHƯỜNG VÕ THỊ SÁU - QUẬN 3 - TP HỒ CHÍ MINH','2011-01-02','THƯ VIỆN PHÁP LUẬT  là giải pháp toàn diện trên nền công nghệ cao, nhằm giúp công chúng “…loại rủi ro pháp lý, nắm cơ hội làm giàu…” uy tín và lớn nhất hiện nay;\r\n\r\nTHƯ VIỆN PHÁP LUẬT giúp công chúng “…loại rủi ro pháp lý, nắm cơ hội làm giàu…” thông qua cung ứng sản phẩm, dịch vụ','http://www.ThuVienPhapLuat.vn','100-499 người','phapluat@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694836116/mikv5llhmkoncrvgnzwt.webp','0338552245',17),(12,'CÔNG TY TÀI CHÍNH MTV SHINHAN VIỆT NAM',' Tầng 12A, tòa nhà Pico Plaza, 20 Cộng Hòa, Quận Tân Bình, TP. HCM, Tân Bình','2009-01-05','Tập đoàn Tài chính Shinhan được xem như tập đoàn tiên phong về việc nắm giữ tài chính tại Hàn Quốc. Tập đoàn được thành lập trên nền tảng của Ngân hàng Shinhan, Quỹ Đầu tư Shinhan và Công ty Quản lý Đầu tư Shinhan.','https://shinhan.com.vn/vi','100-499 người','shinhan@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694836450/nmvml4s6tmo1lqzjp6ta.webp','0338634477',18),(13,'FPT Software','Khu Công nghệ cao, Quận 9, TP HCM','2008-12-03','FPT Software là công ty thành viên thuộc Tập đoàn FPT. Được thành lập từ năm 1999, FPT Software hiện là công ty chuyên cung cấp các dịch vụ và giải pháp phần mềm cho các khách hàng quốc tế, với hơn 28000 nhân viên, hiện diện tại 27 quốc gia trên toàn cầu. ','https://www.fpt-software.com/','10000+ người','fpt@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694836792/um8exxw6u2hz7u75hcbj.webp','0338441780',19),(14,'Công ty CP Tập đoàn F.I.T','Tầng 5, Tòa Times Tower, Số 35 Lê Văn Lương, Phường Nhân Chính, Q. Thanh Xuân, Hà Nội','2006-04-19','Trải qua hơn 15 năm xây dựng và phát triển, F.I.T đã lớn mạnh trở thành một tập đoàn đầu tư uy tín, có trên 3.000 cán bộ công nhân viên, hơn mười công ty con và công ty liên kết trải khắp các vùng kinh tế trọng điểm của cả nước','http://fitgroup.com.vn',' 1000+ người','fit@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694837798/mipfpicmo520yho7qho2.webp','0338998812',20),(15,'CÔNG TY TÀI CHÍNH VIỆT NAM THỊNH VƯỢNG SMBC','Tòa nhà FE, Lầu 7, Số 144 Cộng Hoà, Phường 12, Q. Tân Bình, Hồ Chí Minh','2003-06-21','FE CREDIT đã thiết lập một nền tảng vững chắc để trở thành công ty dẫn đầu thị trường tài chính tiêu dùng với mạng lưới trải dài trên toàn quốc tại hơn 13,000 điểm bán hàng cùng hơn 17,500 nhân viên, FE CREDIT kết hợp với hơn 9,000 đối tác','https://fecredit.com.vn/','10000+ nguời','fecredit@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694841550/o4rcs5zk5jy1p1tlmb0k.webp','0338639113',21),(16,'Công ty Cổ phần GUMAC','313/15 Phan Huy Ích, Phường 14, Gò Vấp, Hồ Chí Minh','2016-04-14','Với mô hình kinh doanh: Siêu thị thời trang hạnh phúc dành cho mọi người, mọi nhà, GUMAC mong muốn người tiêu dùng không chỉ được trải nghiệm sản phẩm chất lượng, không gian mua sắm ấm áp như ở nhà mà họ còn cảm thấy tự hào và hạnh phúc với sản phẩm thời trang đến từ một thương hiệu thuần Việt.\r\n\r\nTầm nhìn Đến 2030 Gumac sẽ trở thành thương hiệu Thời trang Hạnh phúc Tiên phong dẫn dắt Thế giới bằng triết lý “Giá trị thật và Hạnh phúc đích thực”.\r\n\r\nLà một thương hiệu thời trang hạnh phúc dành cho tất cả mọi người, GUMAC luôn tập trung đẩy mạnh về thiết kế và chất lượng sản phẩm, bắt đầu hoàn thiện mô hình siêu thị \"thời trang hạnh phúc\" để nhân bản mạnh mẽ. Năm 2023, trên hành trình ra toàn cầu, GUMAC bắt đầu có mặt trên sàn thương mại điện tử lớn nhất thế giới Amazon và đặt những bước chân đầu tiên đến thị trường Đông Nam Á.\r\n\r\nTrải qua 5 năm nỗ lực không ngừng nghỉ, GUMAC đã định hình nên hệ giá trị của riêng mình. Đó là triết lý về Thời Trang Hạnh Phúc. GUMAC đã gửi gắm tình yêu thương vào từng sản phẩm. Để thời trang không chỉ mang vẻ đẹp thẩm mỹ đơn thuần, hay những trải nghiệm mua sắm tuyệt vời, mà còn là sự kết tinh từ sức mạnh của niềm tin, khát khao cống hiến và sự hy sinh thầm lặng của mỗi con người trong đội ngũ với một mục tiêu duy nhất: Đem đến giá trị thật và hạnh phúc đích thực đến tận tay khách hàng.','https://gumac.vn/','100-499 người','mac@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694842374/cjhvkdbmwcph6lyst89q.webp','0338448812',22),(17,'Tổ chức Giáo dục và Đào tạo Apollo Việt Nam','Số 181 Phố Huế, Hai Bà Trưng, Hà Nội','2008-12-18','Với chúng tôi, phần thưởng lớn nhất là được nhìn thấy cuộc sống của mọi người tốt đẹp hơn nhờ sự nỗ lực và nhiệt huyết của đội ngũ giáo viên tài năng tại Apollo.\r\n\r\nChúng tôi hi vọng có thể giúp nhiều học viên hơn nữa và sẽ luôn là “Nơi những giá trị tốt nhất trở nên tốt hơn”.','http://apollo.edu.vn/','1000+người','apollo@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694846504/qqesseunhadquucelvud.webp','0338634678',23),(18,'CÔNG TY TNHH TMDV ADFLY VIỆT NAM','1F, E.Town Central Building, No. 11 Doan Van Bo, Ward 13, District 4, HCMC','2012-12-10','we has expanded its business to 6 SEA markets and has an ecosystem of more than 20 million users per day. \r\nWe started in the marketing tech industry and is expanded our business into influencer marketing, e-commerce solutions, publisher monetization, application and game mobile development.','https://adfly.vn/','100-499 người','adfly@gmail.com','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694847822/tuhv7obfdqhoxhsotasv.webp','0388939042',24);
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
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Nhân Viên Kinh Doanh','Tìm kiếm khách hàng trên tất cả các kênh: online và offline, xây dựng nguồn data và phát triển thị trường khách hàng\r\nTư vấn về sản phẩm, test mẫu và gửi mẫu cho KH.\r\nCSKH và giải đáp các thắc mắc của khách hàng.','Số 22 Đường số 37 KĐT Vạn Phúc City, P.Hiệp Bình Phước, TP. Thủ Đức','Full-time','10 - 15 triệu','Cao đẳng','2023-01-15','2023-09-22',2,'Từ 2-5 năm','Thử việc (2 tháng): 85% x Lương cơ bản.\r\nLễ, tết dương lịch: 3-500.000.\r\nTeambuilding hàng năm\r\nCác chế độ khác theo nội quy Công ty và Bộ luật lao động 2019: phép năm, BHXH, BHYT, BHTN...','Ưu tiên có kinh nghiệm 06 tháng trở lên ở vị trí tương đương: CSKH, Telesales...\r\nTừng làm qua pha chế hoặc các công việc khác trong ngành F&B, pha chế là lợi thế.\r\nBằng tốt nghiệp từ THPT, trung cấp, cao đẳng trở lên và sử dụng được tin học văn phòng.',2,1,1,2),(2,'Sales Executive','Xây dựng mục tiêu và kế hoạch kinh doanh theo yêu cầu\r\nTriển khai tiếp cận, đưa sản phẩm vào các Thương hiệu giày, Hệ thống cửa hàng làm đẹp, Trung tâm chăm sóc sắc đẹp…\r\n Xúc tiến hoạt động bán hàng & tổ chức các hoạt động giới thiệu sản phẩm','Phòng 09, Lầu 10, Tòa Nhà The Everrich 1, Số 968 Đường Ba Tháng Hai, Phường 15, Quận 11','Full-time','10 - 12 triệu','Đại học','2023-02-15','2023-09-29',3,'Từ 2-5 năm','Chế độ bảo hiểm\r\nDu Lịch\r\nChế độ thưởng\r\nChăm sóc sức khỏe','Kỹ năng thuyết phục + bán hàng.\r\nNhạy bén, năng động, hướng tới mục tiêu, tư duy giải quyết vấn đề.',2,1,2,5),(3,'Nhân Viên Kinh Doanh','Thu thập và tổng hợp thông tin thị trường, đối thủ cạnh tranh, các sản phẩm theo phân khúc thị trường ngành bơm, van, đồng hồ nước.\r\nTìm kiếm khách hàng, dự án sau đó giới thiệu xúc tiến bán hàng\r\nTìm kiếm thông tin mời thầu, chuẩn bị hồ sơ thầu','Số 8, ngõ 96, phố Võ Thị Sáu, Phường Thanh Nhàn, Quận Hai Bà Trưng, Thành phố Hà Nội, Việt Nam','Full-time','20- 30 triệu','Đại học','2023-03-15','2023-09-21',5,'Trên 5 năm','Lương cứng : Up to 15 triệu + thưởng + % doanh thu hấp dẫn\r\nĐược đào tạo bài bản về sản phẩm, về kỹ năng kinh doanh\r\nThưởng doanh số hấp dẫn dựa trên năng lực và kinh nghiệm','Có khả năng giao tiếp và đàm phán tốt\r\nCó khả năng làm việc độc lập và làm việc nhóm hiệu quả\r\nCó kinh nghiệm đấu thầu là một lợi thế ưu tiên.',2,3,3,2),(4,'Chuyên Viên Phân Tích Đầu Tư','- Chuẩn bị hồ sơ đề xuất đầu tư và phối hợp với Phòng Phát triển dự án để thực hiện thủ tục xin cấp phép/ điều chỉnh chủ trương đầu tư dự án\r\n- Nhận diện và phân tích các rủi ro có thể ảnh hưởng đến Dự án đầu tư;\r\n- Thực hiện kiểm soát hợp đồng xây dựng và các hợp đồng khác trong quá trình đầu tư dự án','Tầng 10, số 434 Trần Khát Chân, Phường Phố Huế, Quận Hai Bà Trưng, Thành phố Hà Nội, Việt Nam','Full-time','10 - 15 triệu','Đại học','2023-02-15','2023-09-30',4,'Dưới 1 năm','Được làm việc trong môi trường chuyên nghiệp và năng động.\r\nThu nhập cạnh tranh tương xứng với năng lực.\r\nCơ hội thăng tiến phát triển theo năng lực.','Có kỹ năng giao tiếp, đám phán tốt, kỹ năng giải quyết tình huống, sử dụng thành thạo tin học văn phòng và biết soạn thảo các văn bản, báo cáo nghiệp vụ.\r\nTrung thực, cẩn thận, mong muốn gắn bó lâu dài',2,3,4,6),(5,'Giám Sát Bán Hàng','Hướng dẫn, kèm cặp, huấn luyện, đánh giá đội ngũ các nhân viên/chuyên viên kinh doanh để đảm bảo thành tích luôn ở mức độ cao.\r\nTuyển dụng và lựa chọn nhân viên để đảm bảo đội ngũ luôn có khả năng đáp ứng các mục tiêu bán hàng/kinh doanh trong hiện tại và tương lai.\r\nThực hiện chấm công hàng tháng cho nhân viên/chuyên viên kinh doanh; chịu trách nhiệm đảm bảo chính xác và trung tḥưc trong việc chấm công.','Lầu 2, Tòa nhà Phượng Long - Số 16, Đường Nguyễn Trường Tộ, Phường 13, Quận 4','Full-time','12- 15 triệu','Đại học','2023-03-15','2023-09-29',4,'Từ 2-5 năm','Chế độ bảo hiểm\r\nDu Lịch\r\nĐồng phục\r\nChế độ thưởng\r\nChăm sóc sức khỏe\r\nĐào tạo\r\nTăng lương','Kỹ năng vi tính: sử dụng tốt các phần mềm MS. Office (word, excel)\r\nKỹ năng trình bày và giao tiếp',2,1,5,2),(6,'Marketing Executive','Xây dựng kế hoạch hoặc tiếp nhận kế hoạch marketing do Giám đốc đề ra\r\nNghiên cứu thị trường, khách hàng, đối thủ cạnh tranh để xây dựng chiến dịch, chiến lược marketing phù hợp\r\nLên ý tưởng và triển khai các hoạt động marketing dựa theo kế hoạch để ra','Pearl Plaza, 561A Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Hồ Chí Minh','Full-time','cạnh tranh','Đại học','2023-04-15','2023-09-29',7,'Từ 2-5 năm','Thưởng lương tháng 13.\r\nĐóng BHXH','Làm việc nhóm\r\nThuyết trình\r\nSáng tạo\r\nGiao tiếp',2,1,6,6),(7,'Trợ lý văn phòng','Phiên dịch tiếng Hoa.\r\nDịch tài liệu, văn bản phòng ban khi cần.\r\nLàm báo cáo.','Lô 109, KCN Amata, P long Bình, Biên Hòa','Full-time','10 - 15 triệu','Trung cấp nghề','2023-05-15','2023-09-20',2,'Dưới 1 năm','Chế độ bảo hiểm\r\nDu Lịch\r\nPhụ cấp\r\nDu lịch nước ngoài\r\nĐồng phục\r\nChế độ thưởng\r\nChăm sóc sức khỏe\r\n\r\n','Tốt nghiệp Trung cấp trỏ lên.\r\nVi tính văn phòng.\r\nTiếng Hoa lưu loát.',2,2,7,3),(8,'Nhân Viên Hệ Thống Mạng','Thiết kế mạng và hệ thống phù hợp\r\nTriển khai hệ thống mạng và máy tính theo kế hoạch\r\nGiải quyết các vấn đề kỹ thuật, cung cấp hướng dẫn sử dụng, và thực hiện việc khắc phục sự cố.','Số 25 Đường số 23, Phường Linh Chiểu, Quận Thủ Đức','Full-time','7 - 10 triệu','Cao đẳng','2023-06-15','2023-09-29',3,'Dưới 1 năm','- Tham gia BHXH, BHYT\r\n\r\n- Chế độ thưởng cuối năm\r\n- Nghỉ mát hàng năm\r\n- Xét tăng lương định kỳ theo năng lực làm việc','- Có kiến thức về phần cứng mạng.\r\n- Có kiến thức về phần mềm và cài đặt phần mềm',2,1,8,1),(9,'Nhân Viên Kỹ Thuật Phần Mềm ','- Phân tích yêu cầu phần mềm\r\n- Thiết kế phần mềm, xác định cấu trúc dữ liệu, giao diện người dùng, và quy trình làm việc.\r\n- Trao đổi chi tiết khi phỏng vấn','Số 25 Đường số 23, Phường Linh Chiểu, Quận Thủ Đức','Full-time','7-10 triệu','Cao đẳng','2023-01-15','2023-09-19',5,'Dưới 1 năm','- Phân tích yêu cầu phần mềm\r\n- Thiết kế phần mềm, xác định cấu trúc dữ liệu, giao diện người dùng, và quy trình làm việc.\r\n- Trao đổi chi tiết khi phỏng vấn','- Tốt nghiệp Cao Đẳng, Đại Học ngành Công nghệ thông tin hoặc ngành liên quan.\r\n- Có kiến thức về phần mềm và cài đặt phần mềm.\r\n- Lưu ý: Ứng viên vui lòng nộp CV ngôn ngữ tiếng việt.',2,1,8,1),(10,'QA/QC Tech Lead','• Reviewing software requirements and preparing test scenarios.\r\n• Executing tests on software usability.\r\n• Analyzing test results on database impacts, errors or bugs, and usability.\r\n• Preparing reports on all aspects related to the software testing carried out and reporting to the design team.','111, Đường Nguyễn Đình Chính, Quận Phú Nhuận','Full-time','Thỏa thuận','Đại học','2023-07-15','2023-09-27',4,'Từ 2-5 năm','Having opportunities of being trained oversea and working directly with oversea customer\r\nA stable and rewarding position where your long-term commitment will be highly valued.\r\nTechnical & Soft skills internal training courses','• API knowledge\r\n• Automation testing is a plus.',2,1,9,1),(11,'UX/ UI Designer','Work closely with supervisor to deliver excellent user experiences.\r\nCreate wireframes and mockups or prototypes to articulate the desired experience to wide audiences.\r\n Translate high-level requirements into beautiful, intuitive, and functional user interfaces.','111, Đường Nguyễn Đình Chính, Quận Phú Nhuận','Full-time','Thoả thuận','Đại học','2023-08-15','2023-09-24',3,'Từ 2-5 năm','Working in an international, dynamic and professional environment with many opportunities to develop career.\r\nHaving opportunities of being trained oversea and working directly with oversea customer\r\nA stable and rewarding position where your long-term commitment will be highly valued.',' Extensive experience in UX/UI design including customer interview, user story/flow, wireframe, visual design, and design validation.\r\n Knowledge of design software/tools (Adobe Photoshop, Adobe Illustrator, Adobe After Effects, Figma, Invision).',2,1,9,1),(12,'Project Manager','Providing technical coaching and career mentoring for the team\r\n Actively participating in the engineering process and anticipating future needs\r\n Managing advancement and deployment of specific disciplines and technologies','111, Đường Nguyễn Đình Chính, Quận Phú Nhuận','Full-time','Thỏa thuận','Đại học','2023-03-15','2023-09-30',5,'Trên 5 năm','Working in an international, dynamic and professional environment with many opportunities to develop career.\r\nHaving opportunities of being trained oversea and working directly with oversea customer\r\nA stable and rewarding position where your long-term commitment will be highly valued.',' Experienced in software development.\r\n Strong understanding of software lifecycle, processes.\r\n Strong understanding of architecture and data management.\r\nExperience building and consuming API’s.  ',3,1,9,1),(13,'Quản Lý Trung Tâm','- Tổ chức thực hiện các nhiệm vụ và quyền hạn của quản lý Trung tâm/ Cơ sở được quy định: Chịu trách nhiệm trước Giám đốc vận hành về việc quản lý, điều hành mọi hoạt động của Trung tâm/ Chi nhánh.\r\n- Lập kế hoạch phát triển chuỗi trung tâm theo kế hoạch tổng được thống nhất cùng lãnh đạo trực tiếp.\r\n- Bám sát thực hiện mục tiêu chiến lược - phát triển, cải thiện và nâng cao vị thế của Trung tâm.','399 Lũy Bán Bích, phường Hiệp Tân, quận Tân Phú','Full-time','20- 30 triệu','Đại học','2023-04-15','2023-09-30',6,'Trên 5 năm','- Thu nhập: Lương 20 Triệu + % hoa hồng;\r\n- Thưởng quý, năm và các ngày Lễ Tết theo quy định của Công ty;\r\n\r\n- Đóng BHXH sau thời gian thử việc;\r\n- Các chế độ khác: Theo Luật Lao động Việt Nam, theo Nội quy lao động và Quy định công ty;','- Đam mê ngành giáo dục. Ưu tiên ứng viên có kinh nghiệm Quản lý Trung tâm ngoại ngữ.\r\n- Có kinh nghiệm sử dụng phần mềm CRM.\r\n\r\n- Có kiến thức và hiểu biết rộng về hệ thống kinh doanh tích hợp.\r\n- Có kỹ năng lập kế hoạch, triển khai thực hiện, kiểm tra, theo dõi và đánh giá.',4,1,10,4),(14,'Nữ Tư Vấn - Chăm Sóc Khách Hàng','+ Hướng dẫn khách hàng là thành Viên của ThuVienPhapLuat sử dụng. (Họ là các chuyên viên pháp lý, luật sư, viên chức, doanh nhân, quản lý phòng ban, kế toán ...);\r\n\r\n+ Nếu khách hàng có nhu cầu sử dụng các Dịch Vụ trả phí thì bạn tư vấn đăng ký gói phí phù hợp, kích hoạt, hướng dẫn để khách hàng sử dụng 1 cách hiệu quả.','SỐ 17 NGUYỄN GIA THIỀU - PHƯỜNG VÕ THỊ SÁU - QUẬN 3 - TP HỒ CHÍ MINH','Full-time','7 - 10 triệu','Đại học','2023-07-16','2023-09-30',7,'Dưới 1 năm','- Cơ hội vào vị trí Quản lý Cấp Cơ sở hoặc Cấp Trung, sau một thời gian thể hiện năng lực\r\n- Được đào tạo những kỹ năng cần thiết để phát triển đúng định hướng nghề nghiệp\r\n- Được làm việc trong một môi trường hiện đại, chuyên nghiệp BHXH, BHYT theo Luật quy định','- Giọng nói chuẩn, không ngọng lắp, quá địa phương.\r\n- Tốt nghiệp các chuyên ngành: Kinh tế, QTKD, Marketing, Luật, CNTT,… ;',2,1,11,5),(15,'Nhân Viên Tư Vấn','Hỗ trợ, chăm sóc khách hàng qua Điện Thoại công ty.\r\nHướng dẫn , tiếp nhận và quản lý hồ sơ khách hàng trước và sau khi giải ngân.\r\nSẽ được đào tạo thêm trong quá trình làm việc.','Tầng 12A, tòa nhà Pico Plaza, 20 Cộng Hòa, Quận Tân Bình, TP. HCM, Tân Bình','Full-time','10 - 15 triệu','Trung cấp nghề','2023-06-16','2023-09-27',8,'Không yêu cầu kinh nghiệm','Được ký hợp đồng lao động, các chế độ, BHYT,BHXH... theo quy định\r\nThưởng thi đua hàng thángvà các ngày lễ tết theo luật lao động\r\nÐược đào tạo về nghiệp vụ tài chính khi đi làm.\r\nDu lịch công ty hàng năm.','Độ tuổi : 18-30 tuổi\r\nGiọng nói dễ nghe, siêng năng trong công việc.',2,1,12,5),(16,'Fresher Java','FPT Software Cần Thơ đang tìm kiếm các bạn sinh viên sắp ra trường/ đã tốt nghiệp để\r\ntham gia vào dự án phát triển phần mềm. Có cơ hội học tập và làm việc trong các dự án thực \r\ntế với các khách hàng lớn của công ty.\r\nTham gia khóa đào tạo chuyên sâu về lập trình Java từ 3-6 tháng;','FPT Software Cần Thơ, Quận Ninh Kiều, TP. Cần Thơ, Ninh Kiều','Full-time','7 - 10 triệu','Cao đẳng','2023-04-16','2023-09-30',7,'Dưới 1 năm','Tham gia khóa training trước khi làm việc tại đơn vị với mức hỗ trợ đào tạo lên đến \r\n20.000.000 VNĐ/khóa. \r\nSau khi kết thúc đào tạo tham gia làm việc tại các dự án với mức thu nhập hấp dẫn tương \r\nxứng với kỹ năng và kinh nghiệm từ 8.000.000 VNĐ – 15.000.000 VNĐ/tháng. \r\nHưởng các chính sách như: Hỗ trợ thi các chứng chỉ chuyên nghiệp quốc tế, hỗ trợ mua ','Nắm vững kiến thức Lập trình hướng đối tượng (OOP), SQL, Java Core, spring boot, MVC,…\r\nTiếng anh tương đương 550 Toeic/Ielts 5.0 trở lên',2,7,13,1),(17,'Android Developer','We are hiring engineers to work in the Android Automotive department of our specialized Vehicle Infotainment Software Development unit.\r\nDesigning and developing applications for the Head Unit devices of leading automotive brands in Japan','FPT Building, 17 Duy Tân Str., Cầu Giấy District, Hanoi, Cầu Giấy','Full-time','Thỏa thuận','Đại học','2023-02-16','2023-09-30',5,'Từ 2-5 năm','Attractive income: Negotiation.\r\n• Allowances for responsibilities, project allowances, 13th-month salary, and project-based bonuses.\r\n• Opportunities to learn and operate in-car entertainment devices and work with leading automotive experts from Japan and Vietnam.','Experience in Java/Android programming.\r\n• Knowledge of OOP (Object-Oriented Programming) and Design Patterns.\r\n• Experience in Software design (Architecture design, detail design, …).',2,3,13,1),(18,'Front-End Engineer ( ReactJS )','• Develop and enhance function for web service.\r\n• Working & communicating with onsite team.\r\n• Have change to improve knowledge on investment and finance domain.','Lô T2, Đường D1, khu Công nghệ cao, TP. Thủ Đức, TP. Hồ Chí Minh, Thủ Đức','Full-time','Thỏa thuận','Đại học','2023-07-16','2023-09-29',2,'Từ 2-5 năm','• “FPT care” health insurance provided by AON and is exclusive for FPT employees.\r\n• Annual Summer Vacation: follows company’s policy and starts from May every year\r\n• Salary review 2 times/year or on excellent performance','• “FPT care” health insurance provided by AON and is exclusive for FPT employees.\r\n• Annual Summer Vacation: follows company’s policy and starts from May every year\r\n• Salary review 2 times/year or on excellent performance',2,1,13,1),(19,'Nhân Viên IT Helpdesk','Cài đặt, chuẩn đoán, khắc phục, bảo trì bảo dưỡng lỗi phần cứng, phần mềm máy tính, máy photocopy, máy in, camera, máy chấm công, voice ip, mạng,…\r\nCấu hình, xử lý sự cố, hướng dẫn người dùng về Email, ứng dụng văn phòng, các phần mềm CNTT,… đảm bảo hoạt động công việc thông suốt;','35 Lê Văn Lương, Nhân Chính, Thanh Xuân','Full-time','20- 30 triệu','Đại học','2023-03-16','2023-09-27',6,'Từ 2-5 năm','Thu nhập tương xứng với năng lực;\r\nTham gia gói Bảo hiểm sức khỏe của BH Bảo Việt; tham gia đầy đủ chế độ BHXH và hưởng 12 ngày phép/năm theo quy định;\r\nĂn trưa tại nhà ăn Công ty;','Có kỹ năng, kinh nghiệm xử lý sự cố kỹ thuật hệ thống, thiết bị CNTT, hệ điều hành, phần mềm ứng dụng, email, hướng dẫn người dùng,…;\r\nThành thạo ứng dụng văn phòng, am hiểu quy trình nội bộ;',2,3,14,1),(20,' Nhân Viên Tư Vấn Dinh Dưỡng','- Nắm rõ kiến thức sản phẩm, kiến thức dinh dưỡng, cách thức hoạt động của nhân viên tư vấn dinh dưỡng;\r\n- Tiếp cận và tư vấn khách hàng hiểu rõ về lợi ích, thế mạnh và điểm khác biệt của sản phẩm\r\n- Trả lời các thắc mắc của khách hàng, theo dõi khách hàng, thuyết phục khách hàng, chăm sóc khách hàng;','35 Lê Văn Lương, Thanh Xuân','Full-time','10 - 15 triệu','Đại học','2023-04-16','2023-09-30',5,'Từ 2-5 năm','- Thu nhập cạnh tranh, tương xứng với năng lực;\r\n- Phụ cấp điện thoại, công tác phí;\r\n- Xém xét điều chỉnh lương định kỳ dựa trên kết quả công việc, năng lực làm việc;\r\n- Thưởng năm theo kết quả kinh doanh;','- Kỹ năng thuyết phục khách hàng;\r\n- Khả năng kiên trì theo đuổi hách hàng;\r\n- Biết sử dụng phần mềm tin học cơ bản (words, excel…);',2,3,14,5),(21,'Tư Vấn Telesales Theo Data Có Sẵn ','- Data KH có sẵn, có lịch sử vay tốt do ngân hàng cung cấp\r\n- Gọi điện tư vấn gói vay phù hợp và chốt gói vay theo nhu cầu KH\r\n- Làm hồ sơ cho KH trên hệ thống (Được đào tạo)','Tòa nhà FE, Lầu 5, Số 144 Cộng Hoà, Phường 12, Tân Bình','Full-time','10 - 15 triệu','Cao đẳng','2023-09-16','2023-09-24',6,'Từ 2-5 năm','- Hưởng đầy đủ các chế độ bảo hiểm theo quy định PL\r\n- Được đào tạo nghiệp vụ từ cơ bản đến nâng cao trước khi làm việc\r\n- Được cung cấp máy tính, điện thoại hỗ trợ cho công việc','- Không yêu cầu kinh nghiệm\r\n- Có đam mê kiếm tiền, chịu được áp lực công việc.',2,1,15,5),(22,'Trưởng Nhóm Telesales Tài Chính','Thúc đẩy doanh số bán hàng, cải thiện hiệu suất nhóm bán hàng qua điện thoại\r\nNghe các cuộc tư vấn bán hàng của nhân viên bán hàng qua điện thoại hàng ngày\r\nĐảm bảo các hoạt động của nhóm tuân thủ các chính sách, quy định và tiêu chuẩn của hoạt động cung cấp dịch vụ',' Tòa Nhà FE CREDIT, Số 144 Cộng Hòa, Phường 12, Tân Bình','Full-time','Thỏa thuận','Đại học','2023-09-16','2023-09-19',4,'Trên 5 năm','Lương cứng: Thỏa thuận theo năng lực.\r\nLương tháng 13 và các khoản thưởng, hoa hồng hàng tháng.\r\nPhụ cấp cơm trưa 40,000 VND/Ngày\r\nHỗ trợ Laptop','Tốt nghiệp Cao đẳng trở lên chuyên ngành tài chính ngân hàng hoặc các lĩnh vực liên quan\r\nÍt nhất 06 tháng kinh nghiệm làm việc ở vị trí quản lý',3,1,15,5),(23,'Nhân Viên Kế Toán','Xuất hóa đơn các chi nhánh và ký phát hành hóa đơn điện tử.\r\nXuất hóa đơn sàn TMĐT, ví điện tử …\r\nThực hiện tập hợp hạch toán hóa đơn các chi nhánh lên phần mềm, hạch toán chi phí phát sinh, kết chuyển doanh thu, chi phí tại các chi nhánh và gửi báo cáo cho Leader.','313/15A Phan Huy Ích, Phường 14, Quận Gò Vấp, Hồ Chí Minh, Gò Vấp','Full-time','10 - 15 triệu','Cao đẳng','2023-09-16','2023-09-19',3,'Từ 2-5 năm','Làm việc trong môi trường sáng tạo, năng động và có nhiều cơ hội phát triển.\r\nTham gia nhiều khóa đào tạo để nâng cao trí tuệ của bản thân.\r\nThưởng lễ tết, sinh nhật, lương tháng 13, thưởng theo hiệu quả kinh doanh,…','Tối thiểu 1 năm kinh nghiệm ở các vị trí tương đương.\r\nTốt nghiệp Trung cấp trở lên chuyên ngành Kế toán, Tài chính kế toán,...\r\nAm hiểu về thuế và có mong muốn phát triển theo mảng thuế.',2,1,16,3),(24,'Cửa Hàng Trưởng ','- Giám sát, đốc thúc, đào tạo nhân viên bán hàng\r\n- Hướng dẫn và kiểm tra việc trưng bày, vệ sinh tại cửa hàng\r\n- Đề xuất các quyền đối với quản lý nhân sự như nâng lương, kỷ luật, khen thưởng, nghỉ phép.\r\n- Tham gia tuyển dụng nhân viên bán hàng','Số 181-183 Nguyễn Thị Thập, Phường Tân Phú, Quận 7, Hồ Chí Minh, Quận 7','Full-time','Thỏa thuận','Đại học','2023-09-16','2023-09-29',4,'Trên 5 năm','- Tiền thưởng lễ tết, lương tháng 13 + Thưởng theo kết quả kinh doanh, tăng lương định kỳ.\r\n- Thưởng sinh nhật, sinh nhật GUMAC, 8/3, 20/10,...\r\n- Làm việc trong môi trường chuyên nghiệp, năng động và có khả năng phát triển\r\n- Du lịch, team building hàng năm','- Đã từng có kinh nghiệm quản lý cửa hàng tối thiểu 1 năm, ưu tiên về lĩnh vực thời trang.\r\n- Có năng lực quản lý con người, tài sản, khách hàng.\r\n- Khả năng tư vấn sản phẩm, chốt sale.',3,1,16,3),(25,'Learning Experience Officer','Supervise Teaching Assistants on weekends to ensure Teaching Assistants come to work on time and support them to handle difficult problems\r\nScheduling Teaching Assistants’ schedules and checking their timesheets exactly.',' V5-A03-A04 The Terra An Hưng, La Khê, Hà Đông, Hà Nội, Hà Đông','Full-time','Thỏa thuận','Đại học','2023-06-16','2023-09-23',5,'Từ 2-5 năm','Review annual salary and get 13th-month salary\r\nJoin a training program from senior experts\r\nCareer progression path obviously\r\nDevelop yourself in a workspace respecting individual identity','Review annual salary and get 13th-month salary\r\nJoin a training program from senior experts\r\nCareer progression path obviously\r\nDevelop yourself in a workspace respecting individual identity',1,3,17,4),(26,'Nhân Viên Quản Lý Học Vụ','Full-time teaching staff.\r\nPart-time teaching staff\r\nArrange teachers for classes and activities when requested\r\nRecord / update all daily changes of classes/teacher’s situation and update to Educational Consultants with solution','Shophouse NT06 - 144 - 146, Vinhomes Ocean Park, Gia Lâm, Hà Nội, Gia Lâm','Full-time','Thỏa thuận','Đại học','2023-09-16','2023-09-29',6,'Từ 2-5 năm','oin a training program from senior experts\r\nCareer progression path obviously\r\nDevelop yourself in a workspace respecting individual identity','Good communication skills in English\r\nProactive, result-driven, organized and detail-oriented\r\nAbility to work independently as well as in a team environment\r\nComputer literacy – MS Office applications (Word, Excel, PowerPoint, Outlook)',2,3,17,4),(27,' Sales Consultant ','Nhân viên Tư vấn là đại diện và là cầu nối của Apollo English với phụ huynh, học sinh đang có nhu cầu tìm kiếm trung tâm tiếng Anh chất lượng và chuyên nghiệp. Vị trí này thực hiện nhiệm vụ truyền tải các giá trị của Apollo English đến khách hàng, đồng thời tư vấn các khóa học phù hợp với trình độ và khả năng của học sinh','233 đường 30/4 , phường Xuân Khánh, quận Ninh Kiều, Cần Thơ, Ninh Kiều','Full-time','Thỏa thuận','Cao đẳng','2023-09-16','2023-09-25',7,'Không yêu cầu kinh nghiệm','Hưởng thu nhập hấp dẫn\r\nReview lương hằng năm và hưởng tháng lương thứ 13\r\nTham gia chương trình đào tạo bài bản từ các chuyên gia cấp cao\r\nLộ trình thăng tiến rõ ràng trong công việc\r\nPhát triển bản thân trong môi trường tôn trọng bản sắc cá nhân','Nam hoặc nữ đã tốt nghiệp Đại học, Cao đẳng tuổi từ 21 – 30 tuổi.\r\nGiao tiếp tốt và có khả năng tư vấn khách hàng qua điện thoại và trực tiếp.',2,7,17,5),(28,'Junior / Senior Business Development','- Tìm kiếm khách hàng tiềm năng (B2B), trao đổi và tìm hiểu về kế hoạch marketing của khách hàng;\r\n\r\n- Xây dựng phương án quảng cáo tối ưu nhất dựa trên mục tiêu của khách hàng;\r\n\r\n- Duy trì mối quan hệ tốt với khách hàng (dịch vụ và thái độ phục vụ chuyên nghiệp) nhằm khai thác cơ hội hợp tác kinh doanh lâu dài;','Tầng 1, E.Town Central, 11 Đoàn Văn Bơ, Phường 13, Q.4, TP.HCM, Quận 4','Full-time','Thỏa thuận','Đại học','2023-09-16','2023-09-29',5,'Từ 2-5 năm','- Trợ cấp cơm trưa, gửi xe, điện thoại, tiếp khách, hỗ trợ khác (tùy vị trí và nhu cầu công việc);\r\n- Cơ hội điều chỉnh tăng lương hàng năm;\r\n- Chế độ khám sức khỏe hàng năm, đầy đủ chế độ bảo hiểm, phúc lợi theo quy định pháp luật;','- Tốt nghiệp Cao đẳng, Đại học chuyên ngành Quản trị kinh doanh, Kinh tế, Marketing,... và có mong muốn chuyển hướng sang công việc Business Development.',3,1,18,2),(29,'Chuyên Viên Quản Lý KOL','Tìm kiếm, nghiên cứu và phát triển danh sách Influencer (KOLs) phù hợp\r\nChịu trách nhiệm phát triển bản thân và liên hệ với các KOL chất lượng cao để tìm kiếm sự hợp tác thông qua YouTube, Instagram, Tiktok, FaceBook và các kênh khác để thúc đẩy tiêu thụ sản phẩm\r\nLiên hệ hợp tác, xử lý hợp đồng và phối hợp với KOLs trong quá trình triển khai','Tòa nhà Etown Central, 11 Đoàn Văn Bơ, P13, Q4, Quận 4','Full-time','Thỏa thuận','Cao đẳng','2023-05-16','2023-09-30',4,'Trên 5 năm','- Môi trường làm việc thoải mái, năng động, linh hoạt. Chưa có kinh nghiệm nhiều về ngành BD sẽ được đào tạo thêm.\r\n- Trợ cấp cơm trưa, gửi xe, điện thoại, tiếp khách, hỗ trợ khác (tùy vị trí và nhu cầu công việc);\r\n- Cơ hội điều chỉnh tăng lương hàng năm;','Tốt nghiệp Đại học/Cao đẳng chuyên ngành Marketing, Quản trị Kinh Doanh hoặc tương đương\r\nCó kinh nghiệm ít nhất 6 tháng ở vị trí tương tự, hoặc có kinh nghiệm làm ở các agency, adnetwork, content MKT',4,1,18,3);
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
INSERT INTO `location` VALUES (1,'TP Hồ Chí Minh',NULL),(2,'Đồng Nai',NULL),(3,'Hà Nội',NULL),(4,'Long An',NULL),(5,'Tiền Giang',NULL),(6,'Huế',NULL),(7,'Cần Thơ',NULL),(8,'Đà Nẵng',NULL),(9,'Nha Trang',NULL),(10,'Vũng Tàu',NULL);
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
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rate` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_i_idx` (`user_id`),
  KEY `compa_idx` (`company_id`),
  CONSTRAINT `compa` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `save`
--

DROP TABLE IF EXISTS `save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `us_idx` (`user_id`),
  KEY `ob_idx` (`job_id`),
  CONSTRAINT `aa` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usea` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save`
--

LOCK TABLES `save` WRITE;
/*!40000 ALTER TABLE `save` DISABLE KEYS */;
/*!40000 ALTER TABLE `save` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tsần Thị Bích Huyền','20510501huyen@ou.edu.vn','2002-09-20','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693714765/nhje5pb7x6jarprng8ft.jpg','IT','Không có','nữ',3),(2,'Huyền','fvgfsdfvsdfds2@cvdfsfd','2002-09-20','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1693935963/bx8mkwqpi8f8tehf0nxv.jpg','IT','không có','nữ',4),(3,'Tsần Thị Bích Huyền','2051050172huyen@ou.edu.vn','2023-09-13','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694319734/ohbgnscuajgvwqr6bpvp.jpg','IT phần mềm','Không có','Nam',5),(4,'Tsần Thị Bích Huyền','2051050172huyen@ou.edu.vn','2023-09-19','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694319734/ohbgnscuajgvwqr6bpvp.jpg','IT phần mềm','Không có','Nam',6),(5,'Nguyễn Ngọc Huyền Trân','2051050172huyen@ou.edu.vn','2019-01-16','0386858149','https://res.cloudinary.com/dtoc5lqfe/image/upload/v1694319734/ohbgnscuajgvwqr6bpvp.jpg','IT phần mềm','Không có','Nữ',25);
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

-- Dump completed on 2023-09-26 10:30:59
