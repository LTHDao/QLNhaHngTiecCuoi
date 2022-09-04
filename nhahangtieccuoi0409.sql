-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: nhahangtieccuoi2508
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `catochuc`
--

DROP TABLE IF EXISTS `catochuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catochuc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thoiGian` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaTang` decimal(10,0) DEFAULT NULL,
  `loai_ngay` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catochuc`
--

LOCK TABLES `catochuc` WRITE;
/*!40000 ALTER TABLE `catochuc` DISABLE KEYS */;
INSERT INTO `catochuc` VALUES (1,'Sáng',0,'THUONG'),(2,'Sáng',100000,'CUOI TUAN'),(3,'Tối',500000,'THUONG'),(4,'Tối',1500000,'CUOI TUAN');
/*!40000 ALTER TABLE `catochuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `idDichVu` int NOT NULL AUTO_INCREMENT,
  `tenDichVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiTiet` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaDichVu` decimal(10,0) NOT NULL,
  `hinhAnh` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaiDichVu` int NOT NULL,
  PRIMARY KEY (`idDichVu`),
  KEY `fk_loaidichvu_idx` (`idDichVu`,`loaiDichVu`),
  KEY `fk_loaidichvu_idx1` (`loaiDichVu`),
  CONSTRAINT `fk_loaidichvu` FOREIGN KEY (`loaiDichVu`) REFERENCES `loaidichvu` (`idloaidichvu`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES (1,'Hoa tươi bàn tiệc','Việc bày biện hoa tươi trên bàn đám cưới giúp tăng thêm phần tao nhã và lịch lãm cho không gian tiệc cưới.',6000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426822/QLNhaHangTiecCuoi/dichvu/trangtri2_pmr8vu.png',1),(2,'Trang trí lối đi sân khấu','Hiện nay, các cô dâu chú rể và wedding planner đều chú trọng trang trí lối đi trung tâm này, để nghi thức thành hôn của đôi uyên ương thêm đẹp và đặc biệt.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426837/QLNhaHangTiecCuoi/dichvu/trangtri1_krrhgg.png',1),(3,'Thùng tiền mừng','Nó không chỉ đơn giản là một chiếc hộp, nơi khách mời trao gửi yêu thương với ngày vui của đôi vợ chồng trẻ mà còn là vật dụng trang trí xinh xắn.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661441145/QLNhaHangTiecCuoi/dichvu/trangtri6_cspnns.jpg',1),(4,'2 chai rượu Champagne + đá khói','Việc sử dụng rượu sâm banh trong ngày cưới khiến cho tiệc cưới trở nên trang trọng và tốt đẹp hơn. Mọi người sẽ cùng nhau nâng ly chúc phúc, dành những lời tốt đẹp nhất cho cặp đôi.',350000,'https://res.cloudinary.com/btlde1/image/upload/v1661426808/QLNhaHangTiecCuoi/dichvu/trangtri5_wsdzs9.png',1),(5,'Hoa tươi bàn tháp rượu','Trang trí tháp rượu champagne ngày cưới với hoa tươi để trang trí lễ cưới',450000,'https://res.cloudinary.com/btlde1/image/upload/v1661426832/QLNhaHangTiecCuoi/dichvu/trangtri4_cvgtvd.png',1),(6,'Trang trí sân khấu','Một sân khấu đám cưới hoàn hảo sẽ giúp tiệc cưới của bạn thêm phần nổi bật và ấn tượng.',6000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426839/QLNhaHangTiecCuoi/dichvu/trangtri7_hqgvj3.png',1),(7,'Bánh cưới 5 tầng','Đám cưới là thời khắc quan trọng trong cuộc đời mỗi con người, và dĩ nhiên chiếc bánh cưới là không thể thiếu trong bữa tiệc.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426829/QLNhaHangTiecCuoi/dichvu/trangtri3_zmitzm.png',1),(8,'Trang trí phông chữ sân khấu','Phông sân khấu đám cưới luôn là tâm điểm và là khu vực quan trọng nhất trong buổi lễ thành hôn. Vì đây là nơi mà MC, cô dâu chú rể và những người quan trọng trong hôn lễ sẽ đứng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426804/QLNhaHangTiecCuoi/dichvu/trangtri8_sjxfyi.jpg',1),(9,'Liễn và viết ký tên','Sổ ký tên đám cưới từ xưa đến nay được biết đến là nơi lưu giữ những kỷ niệm của khách đến tham gia hôn lễ và cô dâu – chú rể.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661426806/QLNhaHangTiecCuoi/dichvu/trangtri9_mef9an.jpg',1),(10,'Màn hình máy chiếu','Máy chiếu đám cưới để chiếu album ảnh hay video phim, hình cưới, sân khấu..',2300000,'https://res.cloudinary.com/btlde1/image/upload/v1661426800/QLNhaHangTiecCuoi/dichvu/trangtri10_mglxkv.jpg',1),(11,'Violin + Piano sảnh chính','Còn gì tuyệt vời hơn khi màn khai tiệc diễn ra với tiếng dương cầm du dương. Chiếc đàn piano cất lên những giai điệu mừng hạnh phúc đôi bạn trẻ, và cả hai cũng nhau rót rượu, cắt bánh, trao cho nhau ly rượu phu thê trong không gian lắn đọng ấy.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661428557/QLNhaHangTiecCuoi/dichvu/khaitiec1_hyopsb.jpg',2),(12,'Violin đón dâu khai mạc','Âm nhạc trong đám cưới có chức năng tạo không khí vui tươi, sôi động cho lễ cưới của bạn. Vì thế, chọn nhạc đám cưới cũng là điều khá quan trọng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/cho-thue-nhac-cong-violin-tai-ha-noi_ph7x6u.jpg',2),(13,'Pháo kim tuyến','Đây là loại pháo nén bằng hơi, khi bắn hơi sẽ đẩy kim tuyến lên rất đẹp, đây là loại pháo rất an toàn và được bán rộng rãi phục vụ cho lễ hội, sự kiện, đám cưới…',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/Jemma_and_Rob_Photo_The_Crawleys_j7flkx.jpg',2),(14,'MC dẫn chương trình','Ngày nay, nhu cầu làm MC dẫn chương trình đám cưới ngày càng gia tăng nhưng không phải ai cũng dễ dàng làm được điều này.',1500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441248/QLNhaHangTiecCuoi/dichvu/khaitiec4_rodg6h.jpg',2),(15,'Nhạc nhẹ trong tiệc','Âm nhạc trong đám cưới nên sử dụng các bản nhạc, các ca khúc, các giai điệu có âm hưởng êm dịu, trữ tình. Các bài nhạc này nên có ca từ lành mạnh, ca ngợi tình yêu lứa đôi, tình yêu quê hương đất nước.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec5_xkskqy.jpg',2),(16,'Tranh cát','Khoảng thời gian gần đây, nhiều đôi uyên ương chuộng mốt biểu diễn tranh cát trong ngày cưới để thay cho việc chiuế video kể về câu chuyện tình yêu của mình.',300000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec6_vlzkry.jpg',3),(17,'Bàn lễ tân đặc biệt','Bàn lễ tân tiệc đám cưới đẹp chính là nơi đầu tiên tạo ấn tượng với tất cả các vị khách mời. Đó cũng là nơi để khách mời gửi tặng phần quà ý nghĩa vào hòm tiền mừng và xem ảnh cưới.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/khaitiec7_zf2omm.jpg',3),(18,'Backdrop & Background đặc biệt','Background tiệc cưới là yếu tố quan trọng mà bạn không thể bỏ qua hay qua loa được, bởi nó là nơi sẽ ghi lại những khoảnh khắc đẹp nhất của hai bạn cũng như khách mời.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/khaitiec8_s4djxp.jpg',3),(19,'Màn hoa tươi','Hoa tươi không chỉ mang lại vẻ đẹp trang trọng, lộng lẫy cho tấm backdrop đám cưới mà còn có mùi hương lan tỏa. So với những loại backdrop làm từ hoa lụa, hoa giả thì backdrop làm từ hoa tươi trông sang trọng hơn rất nhiều.',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/18-371_ngsmiv.jpg',3),(20,'Cổng hoa tươi','Cổng hoa đám cưới là ấn tượng đầu tiên của khách mời khi bước vào một không gian phòng cưới . Cổng hoa trong các đám cưới thường được kết bằng hoa tươi, hoặc hoa lụa hoặc hoa giấy,...',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441812/QLNhaHangTiecCuoi/dichvu/hoacuoi20_c1hnw5.jpg',3),(21,'Thiệp cưới','Ý nghĩa của thiệp cưới như là một sự thông báo trịnh trọng, nghiêm túc, là cách báo hỷ của gia đình cô dâu và chú rể đối với khách mời. Dựa vào thiệp cưới, khách mời sẽ biết được đám cưới này là của ai.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/thiep-cuoi-diamond-1_wu3ppf.jpg',3),(22,'Qùa đáp lễ','Hiện nay, rất nhiều cô dâu chú rể đã thêm phần trao quà đáp lễ trong ngày cưới của mình. Quà đáp lễ được xem là lời cảm ơn của đôi vợ chồng đến các khách mời tham dự.',8000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/3-mon-qua-dap-le-ngay-cuoi-that-xinh-va-y-nghia_kn6vuq.jpg',3);
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondattiec`
--

DROP TABLE IF EXISTS `dondattiec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dondattiec` (
  `idDonDatTiec` int NOT NULL AUTO_INCREMENT,
  `chitTiet` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idKhachHang` int NOT NULL,
  `idSanh` int NOT NULL,
  `idCaToChuc` int NOT NULL,
  `ngayToChuc` datetime NOT NULL,
  `soBan` int NOT NULL,
  PRIMARY KEY (`idDonDatTiec`),
  KEY `ChonSanhCuoi_idx` (`idSanh`),
  KEY `fk_dondattiec_catochuc_idx` (`idCaToChuc`),
  KEY `KhachHangDatTiec_idx` (`idKhachHang`),
  CONSTRAINT `ChonSanhCuoi` FOREIGN KEY (`idSanh`) REFERENCES `sanhcuoi` (`idSanhCuoi`),
  CONSTRAINT `fk_dondattiec_catochuc` FOREIGN KEY (`idCaToChuc`) REFERENCES `catochuc` (`id`),
  CONSTRAINT `KhachHangDatTiec` FOREIGN KEY (`idKhachHang`) REFERENCES `khachhang` (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondattiec`
--

LOCK TABLES `dondattiec` WRITE;
/*!40000 ALTER TABLE `dondattiec` DISABLE KEYS */;
INSERT INTO `dondattiec` VALUES (1,NULL,1,1,2,'2020-02-23 00:00:00',0),(2,NULL,2,2,1,'2020-04-23 00:00:00',0),(3,NULL,2,1,3,'2020-10-23 00:00:00',0),(4,NULL,2,3,1,'2021-02-23 00:00:00',0),(5,NULL,1,4,1,'2021-02-05 00:00:00',0),(6,NULL,2,3,2,'2021-12-23 00:00:00',0),(7,NULL,1,6,4,'2021-10-23 00:00:00',0),(8,NULL,1,4,4,'2021-04-23 00:00:00',0),(9,NULL,2,5,2,'2021-05-23 00:00:00',0),(10,NULL,1,2,1,'2022-02-23 00:00:00',0),(11,NULL,1,1,3,'2022-08-23 00:00:00',0),(12,NULL,3,3,2,'2022-09-22 11:00:00',0),(13,NULL,4,3,2,'2022-09-22 11:00:00',0),(14,NULL,5,3,2,'2022-09-22 11:00:00',0),(15,NULL,6,3,2,'2022-09-22 11:00:00',0),(16,'mo',7,3,2,'2022-09-22 11:00:00',0),(17,'1',8,1,2,'2022-09-02 11:00:00',0),(18,NULL,2,2,2,'2022-09-02 11:30:00',0),(19,'1',9,1,2,'2022-09-13 23:29:00',0),(20,'',10,1,2,'2022-09-19 23:36:00',0),(21,'3',11,3,2,'2022-08-30 23:39:00',0),(22,'3',12,2,2,'2022-09-06 23:50:00',0),(23,'3',13,5,2,'2022-09-22 14:52:00',0),(24,'3',14,6,2,'2022-09-20 23:56:00',0),(25,'3',15,4,2,'2022-08-29 23:57:00',0),(26,'1',16,4,2,'2022-09-05 00:18:00',0),(27,'5',17,2,2,'2022-09-13 00:23:00',0),(28,'',18,6,2,'2022-09-06 19:38:00',0),(29,'',19,6,2,'2022-09-06 19:38:00',0),(30,'22',20,2,2,'2022-09-28 17:48:00',0),(31,'12345678',21,1,2,'2022-08-31 19:28:00',0),(32,'',22,2,2,'2022-09-06 19:33:00',0),(33,'132',23,2,2,'2022-09-06 19:39:00',0),(34,'',24,3,2,'2022-09-13 19:42:00',0),(35,'',25,4,2,'2022-09-07 19:47:00',0),(36,'hello',26,6,2,'2022-09-08 19:50:00',0),(37,'ssda',27,6,2,'2022-09-01 20:21:00',0),(38,'12',28,2,2,'2022-09-07 20:22:00',0),(39,'',29,3,2,'2022-09-07 20:24:00',0),(40,'123',30,4,2,'2022-09-15 20:25:00',0),(41,'12',31,2,2,'2022-09-08 23:20:00',0),(42,'12',32,2,2,'2022-09-08 23:20:00',0),(43,'',33,1,2,'2022-09-13 23:25:00',0),(44,'',34,2,2,'2022-09-14 23:26:00',0),(45,'',35,2,2,'2022-09-14 23:28:00',0),(46,'3',36,3,2,'2022-09-06 23:29:00',0),(47,'3',37,6,2,'2022-09-14 23:31:00',0),(48,'mo',38,3,2,'2022-09-22 11:00:00',0),(49,'mo',39,3,2,'2022-09-22 11:00:00',2),(50,'',40,3,2,'2022-09-06 23:38:00',2),(51,'231',41,6,2,'2022-08-30 23:40:00',2),(52,'',42,4,2,'2022-08-29 23:41:00',2),(53,'',43,3,2,'2022-09-13 23:53:00',1),(54,'',44,3,2,'2022-09-15 23:55:00',3),(55,'',45,1,2,'2022-09-20 23:59:00',4),(56,'',46,3,2,'2022-09-02 00:01:00',5),(57,'',47,6,2,'2022-09-01 00:02:00',1),(58,'dfs',48,4,2,'2022-09-14 00:06:00',3),(59,'',49,3,2,'2022-09-02 00:16:00',3),(60,'',50,2,2,'2022-09-01 00:20:00',3),(61,'',51,2,2,'2022-09-20 00:21:00',3),(62,'',52,1,2,'2022-08-30 00:22:00',3),(63,'',53,2,2,'2022-09-07 00:23:00',3),(64,'',54,2,2,'2022-09-20 00:34:00',2),(65,'',55,1,2,'2022-09-15 00:39:00',2),(66,'',56,2,2,'2022-08-31 00:40:00',2),(67,'',57,4,2,'2022-08-30 00:44:00',2),(68,'',58,2,2,'2022-09-15 01:03:00',2),(69,'',59,4,2,'2022-09-07 01:04:00',2),(70,'',60,4,2,'2022-09-06 01:12:00',2),(71,'',61,2,2,'2022-09-14 01:13:00',1),(72,'1',62,2,2,'2022-08-31 01:15:00',1),(73,'',63,2,2,'2022-09-30 01:23:00',2),(74,'',64,2,2,'2022-08-30 01:24:00',1),(75,'',65,3,2,'2022-09-08 01:25:00',2),(76,'12',66,4,2,'2022-09-22 01:28:00',12),(77,'',67,3,2,'2022-09-22 14:43:00',2),(78,'',68,4,2,'2022-10-05 14:47:00',3),(79,'123',69,5,2,'2022-09-22 14:49:00',123),(80,'',70,5,2,'2022-09-07 15:01:00',2),(81,'',71,1,2,'2022-09-08 15:02:00',1),(82,'no',72,2,2,'2022-09-29 15:07:00',4),(83,'',73,2,2,'2022-09-13 15:28:00',2),(84,'',74,4,2,'2022-09-07 15:33:00',1),(85,'nana',75,2,2,'2022-09-28 15:38:00',2),(86,'dgs',76,2,2,'2022-09-21 15:43:00',15),(87,'llll',77,4,2,'2022-09-21 15:44:00',5),(88,'k',78,4,2,'2022-09-21 15:47:00',10),(89,'không',79,5,2,'2022-09-08 15:50:00',3),(90,'',80,1,2,'2022-08-30 16:05:00',2),(91,'',81,3,2,'2022-09-07 16:07:00',2),(92,'',82,2,2,'2022-09-29 16:08:00',1),(93,'',83,2,2,'2022-09-07 16:21:00',12),(94,'',84,2,2,'2022-09-08 16:35:00',2),(95,'',85,2,2,'2022-09-14 16:36:00',2),(96,'',86,3,2,'2022-09-20 16:41:00',123),(97,'',87,2,2,'2022-09-19 16:42:00',1),(98,'',88,4,2,'2022-09-15 16:58:00',2),(99,'',89,4,2,'2022-09-29 17:02:00',2),(100,'',90,3,2,'2022-09-22 17:04:00',2),(101,'',91,3,3,'2022-09-21 19:12:00',2),(102,'',92,4,3,'2022-09-15 19:17:00',2),(103,'',93,1,2,'2022-09-03 07:18:00',1),(104,'',94,2,4,'2022-09-04 19:19:00',1),(105,'',95,2,3,'2022-09-06 20:21:00',2);
/*!40000 ALTER TABLE `dondattiec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `idhoadon` int NOT NULL AUTO_INCREMENT,
  `tongGia` decimal(10,0) NOT NULL,
  `idTiecCuoi` int NOT NULL,
  PRIMARY KEY (`idhoadon`),
  KEY `fk_hoadon_tieccuoi_idx` (`idTiecCuoi`),
  CONSTRAINT `fk_hoadon_tieccuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,20000000,2),(2,32000000,1),(3,65000000,3),(4,120000000,5),(5,200000000,6),(6,50000000,8),(7,45000000,4),(8,120000000,9),(9,63000000,10),(10,300000000,11),(11,12000000,7),(12,15760000,55),(13,15950000,56),(14,4150000,57),(15,20100000,58),(16,4000000,59),(17,7200000,60),(18,2350000,61),(19,5200000,62),(20,2900000,63),(21,7200000,66),(22,4300000,67),(23,6300000,69),(24,7910000,73),(25,5000000,75),(26,10250000,79),(27,2100000,84),(28,1900000,85),(29,1900000,86),(30,2100000,87),(31,2100000,88),(32,1600000,89),(33,1900000,90),(34,1800000,91),(35,1900000,93),(36,1900000,94),(37,1900000,95),(38,1800000,96),(39,1900000,97),(40,7600000,98),(41,18140000,99),(42,15900000,100),(43,32970000,101),(44,14740000,102),(45,6300000,103),(46,11600000,104),(47,11080000,105);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `idKhachHang` int NOT NULL AUTO_INCREMENT,
  `tenKH` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Hồng Đào','0123456789','12345@gmail.com'),(2,'Vân Lan','0121312313','123456@gmail.com'),(3,'jjj','0123123123','123@gmail.com'),(4,'jjj','0123123123','123@gmail.com'),(5,'jjj','0123123123','123@gmail.com'),(6,'jjj','0123123123','123@gmail.com'),(7,'jjj','0123123123','123@gmail.com'),(8,'a','1','hdao2309@gmail.com'),(9,'1','1','1951052033dao@ou.edu.vn'),(10,'2','2','hdao2309@gmail.com'),(11,'a','3','3'),(12,'s','3','lthdao1509@gmail.com'),(13,'s','3','lthdao1509@gmail.com'),(14,'s','2','3'),(15,'s','3','3'),(16,'v','2','1'),(17,'s','5','5'),(18,'h','65','23'),(19,'h','65','23'),(20,'s','2333','hdao2309@gmail.com'),(21,'s','1234','12354'),(22,'s','3','k1796dao@gmail.com'),(23,'s','1','lthdao1509@gmail.com'),(24,'s','2','k1796dao@gmail.com'),(25,'s','1','lthdao1509@gmail.com'),(26,'s','0123','k1796dao@gmail.com'),(27,'s','3','lthdao1509@gmail.com'),(28,'s','12','12'),(29,'s','2','k1796dao@gmail.com'),(30,'s','123','hdao2309@gmail.com'),(31,'s','213','k1796dao@gmail.com'),(32,'s','213','k1796dao@gmail.com'),(33,'s','1','lthdao1509@gmail.com'),(34,'d','12','k1796dao@gmail.com'),(35,'d','2','lthdao1509@gmail.com'),(36,'s','1','1'),(37,'s','2','lthdao1509@gmail.com'),(38,'jjj','0123123123','123@gmail.com'),(39,'jjj','0123123123','123@gmail.com'),(40,'s','12345','1951052033dao@ou.edu.vn'),(41,'df','123','hdao2309@gmail.com'),(42,'s','1','hdao2309@gmail.com'),(43,'s','123','hdao2309@gmail.com'),(44,'s','1','hdao2309@gmail.com'),(45,'s','2','lthdao1509@gmail.com'),(46,'s','1','hdao2309@gmail.com'),(47,'s','4','hdao2309@gmail.com'),(48,'s','0123456','1951052033dao@ou.edu.vn'),(49,'s','2','lthdao1509@gmail.com'),(50,'s','2','k1796dao@gmail.com'),(51,'s','2','1951052033dao@ou.edu.vn'),(52,'s','1','hdao2309@gmail.com'),(53,'s','1','1951052033dao@ou.edu.vn'),(54,'sad','12','lthdao1509@gmail.com'),(55,'s','2','hdao2309@gmail.com'),(56,'s','23','hdao2309@gmail.com'),(57,'s','1','hdao2309@gmail.com'),(58,'s','1','hdao2309@gmail.com'),(59,'s','2','1951052033dao@ou.edu.vn'),(60,'s','2','hdao2309@gmail.com'),(61,'s','1','lthdao1509@gmail.com'),(62,'a','1','1'),(63,'s','2','lthdao1509@gmail.com'),(64,'s','1','1951052033dao@ou.edu.vn'),(65,'s','2','hdao2309@gmail.com'),(66,'ưe','1','1'),(67,'s','23','lthdao1509@gmail.com'),(68,'s','2','k1796dao@gmail.com'),(69,'a','123','lthdao1509@gmail.com'),(70,'a','1','hdao2309@gmail.com'),(71,'s','2','hdao2309@gmail.com'),(72,'a','12132132','hdao2309@gmail.com'),(73,'s','2','hdao2309@gmail.com'),(74,'s','1','hdao2309@gmail.com'),(75,'a','2','lthdao1509@gmail.com'),(76,'s','2','k1796dao@gmail.com'),(77,'a','2','k1796dao@gmail.com'),(78,'s','0111111','k1796dao@gmail.com'),(79,'a','0123123123','hdao2309@gmail.com'),(80,'s','1','hdao2309@gmail.com'),(81,'a','1','hdao2309@gmail.com'),(82,'a','1','k1796dao@gmail.com'),(83,'a','3','hdao2309@gmail.com'),(84,'a','2','hdao2309@gmail.com'),(85,'a','2','1951052033dao@ou.edu.vn'),(86,'a23','23','1'),(87,'s','1','12'),(88,'a','2','k1796dao@gmail.com'),(89,'a','2','lthdao1509@gmail.com'),(90,'s','3','lthdao1509@gmail.com'),(91,'s','2','hdao2309@gmail.com'),(92,'a','1','hdao2309@gmail.com'),(93,'s','3','hdao2309@gmail.com'),(94,'s','2','hdao2309@gmail.com'),(95,'s','2','lthdao1509@gmail.com');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidichvu`
--

DROP TABLE IF EXISTS `loaidichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidichvu` (
  `idloaidichvu` int NOT NULL AUTO_INCREMENT,
  `tenLoaiDichVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idloaidichvu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidichvu`
--

LOCK TABLES `loaidichvu` WRITE;
/*!40000 ALTER TABLE `loaidichvu` DISABLE KEYS */;
INSERT INTO `loaidichvu` VALUES (1,'Trang trí'),(2,'Nghi thức khai tiệc'),(3,'Dịch vụ khác');
/*!40000 ALTER TABLE `loaidichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaimon`
--

DROP TABLE IF EXISTS `loaimon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaimon` (
  `idThucDon` int NOT NULL,
  `tenLoaiMon` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idThucDon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaimon`
--

LOCK TABLES `loaimon` WRITE;
/*!40000 ALTER TABLE `loaimon` DISABLE KEYS */;
INSERT INTO `loaimon` VALUES (1,'Khai Vị'),(2,'Súp'),(3,'Chính'),(4,'Tráng Miệng');
/*!40000 ALTER TABLE `loaimon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monan`
--

DROP TABLE IF EXISTS `monan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monan` (
  `id` int NOT NULL,
  `ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` decimal(10,0) NOT NULL,
  `moTa` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhAnh` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idThucDon` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LoaiMonAn_idx` (`idThucDon`),
  CONSTRAINT `LoaiMonAn` FOREIGN KEY (`idThucDon`) REFERENCES `loaimon` (`idThucDon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monan`
--

LOCK TABLES `monan` WRITE;
/*!40000 ALTER TABLE `monan` DISABLE KEYS */;
INSERT INTO `monan` VALUES (1,'Gỏi tôm thái',300000,'Tôm sốt Thái chua cay trông thật đẹp và hấp dẫn. Tôm tươi, có vị ngọt tự nhiên, kết hợp với vị cay, chua, mặn ngọt từ nước sốt me đem đến vị tê tê đầu lưỡi, thơm lừng từ hành lá, ngò rí, ngò gai. Đầu tôm thì giòn rụm. Đây là món ăn đặc biệt thích hợp làm món khai vị.','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan3_itxmky.jpg',1),(2,'Mực chiên sốt bơ trứng muối',320000,'Món mực chiên giòn sốt bơ trứng muối sau khi hoàn thành có màu vàng ươm đẹp mắt. Mực chiên có lớp vỏ bên ngoài giòn rụm, phần mực bên trong ngọt thịt, dai dai hòa quyện cùng nước sốt bơ trứng muối béo bùi đậm đà.','https://res.cloudinary.com/btlde1/image/upload/v1661066172/QLNhaHangTiecCuoi/mon%20an/monan4_ihuwdi.jpg',1),(3,'Tôm giòn sốt chanh dây',330000,'Món tôm sốt bơ chanh dây thơm lừng hương bơ và chanh dây, màu đỏ đỏ, vàng vàng cực đẹp mắt. Thịt tôm thơm ngon, đẫm nước sốt chua ngọt đậm đà.','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan5_lld5pa.jpg',1),(4,'Cá hồi tẩm bột chiên xù',340000,'Cá hồi chiên xù với lớp vỏ giòn tan chấm với nước sốt ngò, thì là thơm lừng, béo ngậy cực kì ngon. Phù hợp cho làm món khai vị.','https://res.cloudinary.com/btlde1/image/upload/v1661066174/QLNhaHangTiecCuoi/mon%20an/monan6_ftk1pe.jpg',1),(5,'Gỏi củ hủ dừa tôm thịt',300000,'Gỏi củ hủ dừa tôm thịt đầy màu sắc và hương vị thu hút tất cả mọi người. Khi ăn bạn sẽ cảm nhận được độ giòn của rau củ được thấm đều nước trộn gỏi chua chua ngọt ngọt kết hợp cùng với tôm và thịt thơm ngon.','https://res.cloudinary.com/btlde1/image/upload/v1661066172/QLNhaHangTiecCuoi/mon%20an/monan1_gdrojn.webp',1),(6,'Cơm chiên bào ngư',500000,'Món cơm bào ngư vừa thơm ngon, đậm vị lại bổ dưỡng. Bào ngư ngon ngọt, cơm nếp dẻo thơm hòa quyện tạo nên một món ăn tuyệt vời.','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan2_grz7dd.png',3),(7,'Lẩu tôm Thái Tomyum',520000,'Lẩu tom yum thập cẩm với nước dùng ngọt ngon từ xương gà, chua chua của bột tom yum và thơm lừng của các loại hương liệu kết hợp với hải sản tươi ngon, rau ăn kèm giòn giòn vô cùng hấp dẫn','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan7_fc5hg7.jpg',3),(8,'Lẩu sa tế hải sản',520000,'Nồi lẩu sa tế vừa hoàn thành với sắc cam bắt mắt cùng hương thơm nồng nàn của sả và hành phi. Khi thưởng thức, chúng ta sẽ cảm nhận được ngay vị chua chua của me, sự đậm đà đến từ sườn heo cùng hương vị ngọt ngào của đường phèn, củ cần.','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan8_m7mz1r.jpg',3),(9,'Bò hầm rượu vang',650000,'Bò hầm rượu vang có mùi thơm đặc trưng của rượu vang, vị thơm ngọt, béo mềm của thịt bò hầm thật hấp dẫn đúng không nào.','https://res.cloudinary.com/btlde1/image/upload/v1661066174/QLNhaHangTiecCuoi/mon%20an/monan9_vtxequ.jpg',3),(10,'Cua lột sốt chanh dây',680000,'Cua lột rang sốt chanh vừa ngọt béo lại vừa chua chua kích thích vị giác. Với món ăn này, bạn vừa có thể làm món ăn kèm cơm.','https://res.cloudinary.com/btlde1/image/upload/v1661066175/QLNhaHangTiecCuoi/mon%20an/monan10_psponb.jpg',3),(11,'Bồ câu rán tẩm mật ong',620000,'Món chim bồ câu rán tẩm mật ong lá chanh với thịt chim tẩm mật ong đem đến một vị ngọt tự nhiên, mùi hương thơm phức và da thì lại cực giòn.','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan11_nfezun.webp',3),(12,'Bánh mousse chanh dây',350000,'Bánh mousse chanh dây có màu sắc vô cùng bắt mắt, gồm 1 lớp cốt bánh, 1 lớp mousse chanh dây và 1 lớp thạch dây. Khi thưởng thức, bạn sẽ cảm nhận được sự mềm mịn, béo ngậy, ngọt ngọt chua chua vô cùng lôi cuốn.','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan12_kqnkdd.jpg',4),(13,'Lemon tart',350000,'Bánh tart chanh thơm ngon với lớp vỏ giòn xốp, phần nhân chanh chua chua ngọt ngọt, béo béo thật hấp dẫn đúng không nào?','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan13_wotojx.jpg',4),(14,'Pudding xoài',280000,'Pudding xoài với vị xoài tươi ngọt mát quyện vị kem sữa béo ngậy tạo thành món tráng miệng thật hấp dẫn','https://res.cloudinary.com/btlde1/image/upload/v1661066168/QLNhaHangTiecCuoi/mon%20an/monan14_pkeews.jpg',4),(15,'Súp tuyết nhĩ thịt cua',450000,'Thịt cua của món súp tuyết nhĩ thịt cua được lựa chọn từ loài cua ngon. Thành phần chính thứ 2 của món súp này chính là tuyết nhĩ. Chính loại nguyên liệu này đã đóng vai trò trọng yếu tạo nên món súp độc đáo này.','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan15_bq4gui.jpg',2),(16,'Súp bắp thịt cua',430000,'Có thể nói thịt cua chính là nguyên liệu chính của nhiều món súp. Súp bắp thịt cua cũng không phải là ngoại lệ. Khác với những món súp khác đều có màu trắng đục và sền sệt. Súp bắp thịt của lại có màu vàng nhạt từ các hạt bắp chín mùi.','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan16_qnoqrh.jpg',2),(17,'Súp hải sản tóc tiên',460000,'Khác với nhiều loại súp, món súp hải sản tóc tiên sử dụng rất nhiều loại hải sản khác nhau. Chúng được cắt nhỏ như hạt lựu để tạo nên loại súp quyến rũ này. Trong các loại hải sản thì thường dùng nhất để nấu súp chính là tôm, mực và thịt cua. Loại nguyên liệu chính thứ 2 chính là tóc tiên.','https://res.cloudinary.com/btlde1/image/upload/v1661066170/QLNhaHangTiecCuoi/mon%20an/monan17_ucldwg.jpg',2);
/*!40000 ALTER TABLE `monan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `idNhanVien` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` int NOT NULL,
  PRIMARY KEY (`idNhanVien`),
  KEY `fk_nhanvien_user_idx` (`userID`),
  CONSTRAINT `fk_nhanvien_user` FOREIGN KEY (`userID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan_hoi`
--

DROP TABLE IF EXISTS `phan_hoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan_hoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noi_dung` varchar(300) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ngay_phan_hoi` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phanhoi_user_idx` (`user_id`),
  CONSTRAINT `fk_phanhoi_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_hoi`
--

LOCK TABLES `phan_hoi` WRITE;
/*!40000 ALTER TABLE `phan_hoi` DISABLE KEYS */;
INSERT INTO `phan_hoi` VALUES (1,'good','2022-08-31 00:00:00',2),(2,'good','2022-08-31 00:00:00',2),(3,'tốt','2022-08-31 21:22:52',2),(4,'thích lắm','2022-09-02 00:18:26',2),(5,'hahaha','2022-09-02 21:00:29',2);
/*!40000 ALTER TABLE `phan_hoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatdichvu`
--

DROP TABLE IF EXISTS `phieudatdichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatdichvu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idDichVu` int NOT NULL,
  `idTiecCuoi` int NOT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieudichvu_dichvu_idx` (`idDichVu`),
  KEY `fk_phieudichvu_tieccuoi_idx` (`idTiecCuoi`),
  CONSTRAINT `fk_phieudichvu_dichvu` FOREIGN KEY (`idDichVu`) REFERENCES `dichvu` (`idDichVu`),
  CONSTRAINT `fk_phieudichvu_tieccuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatdichvu`
--

LOCK TABLES `phieudatdichvu` WRITE;
/*!40000 ALTER TABLE `phieudatdichvu` DISABLE KEYS */;
INSERT INTO `phieudatdichvu` VALUES (1,2,1,NULL),(2,2,2,NULL),(3,6,1,NULL),(4,10,5,NULL),(5,9,1,NULL),(6,2,1,NULL),(7,9,36,NULL),(8,6,36,NULL),(9,12,36,NULL),(10,22,36,NULL),(11,18,36,NULL),(12,10,39,NULL),(13,12,39,NULL),(14,10,39,NULL),(15,12,39,NULL),(16,10,39,NULL),(17,12,39,NULL),(18,21,40,NULL),(19,17,40,NULL),(20,11,40,NULL),(21,12,41,NULL),(22,5,41,NULL),(23,11,41,NULL),(24,11,42,NULL),(25,12,42,NULL),(26,5,42,NULL),(27,13,42,NULL),(28,21,43,NULL),(29,15,43,NULL),(30,22,43,NULL),(31,15,44,NULL),(32,12,44,NULL),(33,1,50,NULL),(34,12,50,NULL),(35,17,50,NULL),(36,12,51,NULL),(37,11,52,NULL),(38,9,53,NULL),(39,10,53,NULL),(40,12,53,NULL),(41,1,53,NULL),(42,21,53,NULL),(43,17,53,NULL),(44,9,54,NULL),(45,11,54,NULL),(46,15,55,NULL),(47,16,55,NULL),(48,17,55,NULL),(49,12,56,NULL),(50,10,56,NULL),(51,6,56,NULL),(52,11,57,NULL),(53,5,57,NULL),(54,1,58,NULL),(55,2,58,NULL),(56,6,58,NULL),(57,12,58,NULL),(58,20,58,NULL),(59,12,59,NULL),(60,9,59,NULL),(61,17,59,NULL),(62,10,60,NULL),(63,17,60,NULL),(64,11,60,NULL),(65,5,61,NULL),(66,15,62,NULL),(67,16,62,NULL),(68,17,63,NULL),(69,6,64,NULL),(70,12,64,NULL),(71,17,64,NULL),(72,10,64,NULL),(73,9,65,NULL),(74,11,65,NULL),(75,21,66,NULL),(76,9,67,NULL),(77,11,67,NULL),(78,16,68,NULL),(79,20,68,NULL),(80,11,69,NULL),(81,9,69,NULL),(82,20,69,NULL),(83,11,70,NULL),(84,9,70,NULL),(85,12,71,NULL),(86,17,71,NULL),(87,20,72,NULL),(88,16,72,NULL),(89,5,73,NULL),(90,9,73,NULL),(91,16,73,NULL),(92,20,73,NULL),(93,16,74,NULL),(94,20,74,NULL),(95,9,75,NULL),(96,20,75,NULL),(97,12,75,NULL),(98,12,76,NULL),(99,17,76,NULL),(100,1,77,NULL),(101,6,77,NULL),(102,10,77,NULL),(103,12,77,NULL),(104,17,77,NULL),(105,6,78,NULL),(106,1,78,NULL),(107,15,78,NULL),(108,16,78,NULL),(109,9,79,NULL),(110,5,79,NULL),(111,1,79,NULL),(112,12,79,NULL),(113,17,79,NULL),(114,11,81,NULL),(115,16,81,NULL),(116,5,81,NULL),(117,1,81,NULL),(118,10,84,NULL),(119,1,84,NULL),(120,5,84,NULL),(121,12,84,NULL),(122,15,85,NULL),(123,17,85,NULL),(124,5,85,NULL),(125,1,86,NULL),(126,20,86,NULL),(127,5,86,NULL),(128,15,86,NULL),(129,12,87,NULL),(130,1,87,NULL),(131,9,87,NULL),(132,17,87,NULL),(133,21,87,NULL),(134,6,88,NULL),(135,9,88,NULL),(136,5,88,NULL),(137,10,88,NULL),(138,12,88,NULL),(139,1,88,NULL),(140,17,88,NULL),(141,21,88,NULL),(142,1,89,NULL),(143,10,89,NULL),(144,5,89,NULL),(145,6,89,NULL),(146,12,89,NULL),(147,9,89,NULL),(148,13,89,NULL),(149,19,89,NULL),(150,10,90,NULL),(151,1,90,NULL),(152,12,90,NULL),(153,12,91,NULL),(154,20,91,NULL),(155,1,92,NULL),(156,20,92,NULL),(157,1,93,NULL),(158,16,93,NULL),(159,5,93,NULL),(160,16,94,NULL),(161,1,94,NULL),(162,1,95,NULL),(163,5,96,NULL),(164,16,96,NULL),(165,5,97,NULL),(166,2,98,NULL),(167,12,98,NULL),(168,6,99,NULL),(169,9,99,NULL),(170,2,99,NULL),(171,11,99,NULL),(172,17,99,NULL),(173,6,100,NULL),(174,10,100,NULL),(175,12,100,NULL),(176,17,100,NULL),(177,5,101,NULL),(178,10,101,NULL),(179,18,101,NULL),(180,1,101,NULL),(181,6,101,NULL),(182,13,101,NULL),(183,22,101,NULL),(184,11,102,NULL),(185,17,102,NULL),(186,1,102,NULL),(187,5,103,NULL),(188,15,103,NULL),(189,1,104,NULL),(190,11,104,NULL),(191,10,105,NULL),(192,17,105,NULL),(193,12,105,NULL);
/*!40000 ALTER TABLE `phieudatdichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatmon`
--

DROP TABLE IF EXISTS `phieudatmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatmon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idMonAn` int NOT NULL,
  `idTiecCuoi` int NOT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieuDatMon_monAn_idx` (`idMonAn`),
  KEY `fk_phieuDatMon_tiecCuoi_idx` (`idTiecCuoi`),
  CONSTRAINT `fk_phieuDatMon_monAn` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`id`),
  CONSTRAINT `fk_phieuDatMon_tiecCuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatmon`
--

LOCK TABLES `phieudatmon` WRITE;
/*!40000 ALTER TABLE `phieudatmon` DISABLE KEYS */;
INSERT INTO `phieudatmon` VALUES (1,2,5,NULL),(2,3,5,NULL),(3,3,40,NULL),(4,13,40,NULL),(5,6,40,NULL),(6,2,40,NULL),(7,16,40,NULL),(8,2,43,NULL),(9,16,43,NULL),(10,6,43,NULL),(11,12,43,NULL),(12,10,44,NULL),(13,12,44,NULL),(14,13,50,NULL),(15,7,50,NULL),(16,11,50,NULL),(17,7,50,NULL),(18,13,50,NULL),(19,11,50,NULL),(20,11,50,NULL),(21,7,50,NULL),(22,13,50,NULL),(23,5,51,NULL),(24,16,51,NULL),(25,10,51,NULL),(26,13,51,NULL),(27,1,52,NULL),(28,15,52,NULL),(29,6,52,NULL),(30,12,52,NULL),(31,13,53,NULL),(32,1,53,NULL),(33,11,53,NULL),(34,15,53,NULL),(35,16,53,NULL),(36,6,53,NULL),(37,5,54,NULL),(38,10,54,NULL),(39,13,54,NULL),(40,15,54,NULL),(41,15,55,NULL),(42,7,55,NULL),(43,5,55,NULL),(44,6,55,NULL),(45,11,55,NULL),(46,11,56,NULL),(47,13,56,NULL),(48,16,57,NULL),(49,11,57,NULL),(50,7,57,NULL),(51,7,58,NULL),(52,13,58,NULL),(53,16,58,NULL),(54,5,58,NULL),(55,5,59,NULL),(56,15,59,NULL),(57,11,59,NULL),(58,13,59,NULL),(59,7,59,NULL),(60,6,60,NULL),(61,5,60,NULL),(62,15,60,NULL),(63,15,61,NULL),(64,7,61,NULL),(65,11,61,NULL),(66,13,61,NULL),(67,5,62,NULL),(68,15,62,NULL),(69,6,62,NULL),(70,12,62,NULL),(71,15,63,NULL),(72,7,63,NULL),(73,11,63,NULL),(74,1,63,NULL),(75,13,63,NULL),(76,2,64,NULL),(77,13,64,NULL),(78,7,64,NULL),(79,16,64,NULL),(80,10,65,NULL),(81,6,65,NULL),(82,12,65,NULL),(83,13,66,NULL),(84,11,66,NULL),(85,10,66,NULL),(86,11,67,NULL),(87,13,67,NULL),(88,2,68,NULL),(89,15,68,NULL),(90,6,68,NULL),(91,15,68,NULL),(92,13,68,NULL),(93,2,68,NULL),(94,17,68,NULL),(95,17,68,NULL),(96,6,68,NULL),(97,13,68,NULL),(98,11,69,NULL),(99,13,69,NULL),(100,7,69,NULL),(101,16,70,NULL),(102,10,70,NULL),(103,11,70,NULL),(104,12,70,NULL),(105,12,71,NULL),(106,6,71,NULL),(107,10,71,NULL),(108,11,72,NULL),(109,10,72,NULL),(110,13,72,NULL),(111,12,73,NULL),(112,6,73,NULL),(113,10,73,NULL),(114,12,74,NULL),(115,10,74,NULL),(116,6,75,NULL),(117,13,75,NULL),(118,15,75,NULL),(119,15,77,NULL),(120,1,77,NULL),(121,7,77,NULL),(122,13,77,NULL),(123,12,77,NULL),(124,10,77,NULL),(125,11,77,NULL),(126,1,78,NULL),(127,2,78,NULL),(128,16,78,NULL),(129,5,78,NULL),(130,11,78,NULL),(131,7,78,NULL),(132,13,78,NULL),(133,14,78,NULL),(134,2,79,NULL),(135,1,79,NULL),(136,5,79,NULL),(137,7,79,NULL),(138,16,79,NULL),(139,12,79,NULL),(140,15,81,NULL),(141,1,81,NULL),(142,10,81,NULL),(143,16,81,NULL),(144,12,81,NULL),(145,1,84,NULL),(146,5,84,NULL),(147,11,84,NULL),(148,7,84,NULL),(149,12,84,NULL),(150,2,85,NULL),(151,16,85,NULL),(152,7,85,NULL),(153,8,85,NULL),(154,13,85,NULL),(155,15,86,NULL),(156,5,86,NULL),(157,1,86,NULL),(158,10,86,NULL),(159,13,86,NULL),(160,2,87,NULL),(161,15,87,NULL),(162,11,87,NULL),(163,7,87,NULL),(164,13,87,NULL),(165,6,88,NULL),(166,2,88,NULL),(167,16,88,NULL),(168,10,88,NULL),(169,13,88,NULL),(170,3,89,NULL),(171,17,89,NULL),(172,2,89,NULL),(173,7,89,NULL),(174,9,89,NULL),(175,13,89,NULL),(176,1,90,NULL),(177,16,90,NULL),(178,7,90,NULL),(179,13,91,NULL),(180,1,91,NULL),(181,7,91,NULL),(182,1,92,NULL),(183,16,92,NULL),(184,2,93,NULL),(185,16,93,NULL),(186,1,94,NULL),(187,1,95,NULL),(188,5,96,NULL),(189,1,97,NULL),(190,1,98,NULL),(191,15,98,NULL),(192,1,99,NULL),(193,2,99,NULL),(194,6,99,NULL),(195,15,99,NULL),(196,12,99,NULL),(197,1,100,NULL),(198,5,100,NULL),(199,16,100,NULL),(200,7,100,NULL),(201,12,100,NULL),(202,7,101,NULL),(203,2,101,NULL),(204,11,101,NULL),(205,15,101,NULL),(206,13,101,NULL),(207,16,102,NULL),(208,7,102,NULL),(209,2,102,NULL),(210,13,102,NULL),(211,5,103,NULL),(212,1,103,NULL),(213,12,103,NULL),(214,1,104,NULL),(215,2,105,NULL),(216,16,105,NULL),(217,7,105,NULL),(218,13,105,NULL),(219,11,105,NULL);
/*!40000 ALTER TABLE `phieudatmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanhcuoi`
--

DROP TABLE IF EXISTS `sanhcuoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanhcuoi` (
  `idSanhCuoi` int NOT NULL,
  `tenSanh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaToiThieu` decimal(10,0) NOT NULL,
  `moTa` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienTich` double NOT NULL,
  `soLuongBan` int NOT NULL,
  `hinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idSanhCuoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanhcuoi`
--

LOCK TABLES `sanhcuoi` WRITE;
/*!40000 ALTER TABLE `sanhcuoi` DISABLE KEYS */;
INSERT INTO `sanhcuoi` VALUES (1,'PLATIN',1800000,'Sảnh Platin với kích thước 386 m2 được bày trí theo phong cách Châu Âu sang trọng sẽ thật sự phù hợp cho một hôn lễ ấm cúng với số lượng khách mời trong khoảng 20 đến 26 bàn tiệc. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',386,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh4_cthihq.jpg'),(2,'VENUS',1800000,'Sảnh Venus với kích thước sảnh 544 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền vàng ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1800 khách (180 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',544,180,'https://res.cloudinary.com/btlde1/image/upload/v1660922232/QLNhaHangTiecCuoi/sanh6_tihxui.jpg'),(3,'ELITE',1700000,'Sảnh Elite với kích thước sảnh 520 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng xanh lá  ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',520,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh5_bbh0xh.jpg'),(4,'MERCURY',2000000,'Sảnh Mercury với kích thước sảnh 582 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng đỏ ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 2000 khách (200 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',582,200,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh2_ifkbyx.jpg'),(5,'PAVILON',1500000,'Sảnh Pavilon với kích thước sảnh 356 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền hồng độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1200 khách (120 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',356,120,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh1_ny7oe5.jpg'),(6,'FONTANA',1600000,'Sảnh Fontana với kích thước sảnh 472 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền tím độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',472,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh3_aqyqzp.jpg');
/*!40000 ALTER TABLE `sanhcuoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userRole` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Thu Minh','minh1','$2a$10$3OhhPnSXV0PvE/HJ22vcous3T6V65ofuYGlpVcSNO2c4bAM1Agj.a','0987654345','minh11@gmail.com','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan13_wotojx.jpg','ROLE_ADMIN'),(2,'HDao','dao1','$2a$10$3FwiKNGsWE00arfc0IfZGeqFr1aqjWG5KiSe6q9a57ZncPCEgIaze','0987654323','dao1@gmail.com','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan2_grz7dd.png','ROLE_USER'),(3,'Hong','dao2','$2a$10$btMMA6ZUeU5hxu5rCMD/9OvktAYyHnCQHHNBRF8Py9BVGd9sbOSUu','0123456789','hdao2309@gmail.com','https://res.cloudinary.com/btlde1/image/upload/v1661066174/QLNhaHangTiecCuoi/mon%20an/monan6_ftk1pe.jpg','ROLE_USER');
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

-- Dump completed on 2022-09-04 23:05:23
