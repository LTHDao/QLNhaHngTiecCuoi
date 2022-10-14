-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: nhahangtieccuoi0210
-- ------------------------------------------------------
-- Server version	8.0.28

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
  `loai_ngay` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `dich_vu_store`
--

DROP TABLE IF EXISTS `dich_vu_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenDichVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiTiet` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaDichVu` decimal(10,0) NOT NULL,
  `hinhAnh` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaiDichVu` int NOT NULL,
  `id_dich_vu_chinh` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dichvu_store_idx` (`id_dich_vu_chinh`),
  CONSTRAINT `fk_dichvu_store` FOREIGN KEY (`id_dich_vu_chinh`) REFERENCES `dichvu` (`idDichVu`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu_store`
--

LOCK TABLES `dich_vu_store` WRITE;
/*!40000 ALTER TABLE `dich_vu_store` DISABLE KEYS */;
INSERT INTO `dich_vu_store` VALUES (1,'Hoa tươi bàn tiệc','Việc bày biện hoa tươi trên bàn đám cưới giúp tăng thêm phần tao nhã và lịch lãm cho không gian tiệc cưới.',6000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426822/QLNhaHangTiecCuoi/dichvu/trangtri2_pmr8vu.png',1,1),(2,'Trang trí lối đi sân khấu','Hiện nay, các cô dâu chú rể và wedding planner đều chú trọng trang trí lối đi trung tâm này, để nghi thức thành hôn của đôi uyên ương thêm đẹp và đặc biệt.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426837/QLNhaHangTiecCuoi/dichvu/trangtri1_krrhgg.png',1,2),(3,'Thùng tiền mừng','Nó không chỉ đơn giản là một chiếc hộp, nơi khách mời trao gửi yêu thương với ngày vui của đôi vợ chồng trẻ mà còn là vật dụng trang trí xinh xắn.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661441145/QLNhaHangTiecCuoi/dichvu/trangtri6_cspnns.jpg',1,3),(4,'2 chai rượu Champagne + đá khói','Việc sử dụng rượu sâm banh trong ngày cưới khiến cho tiệc cưới trở nên trang trọng và tốt đẹp hơn. Mọi người sẽ cùng nhau nâng ly chúc phúc, dành những lời tốt đẹp nhất cho cặp đôi.',350000,'https://res.cloudinary.com/btlde1/image/upload/v1661426808/QLNhaHangTiecCuoi/dichvu/trangtri5_wsdzs9.png',1,4),(5,'Hoa tươi bàn tháp rượu','Trang trí tháp rượu champagne ngày cưới với hoa tươi để trang trí lễ cưới',450000,'https://res.cloudinary.com/btlde1/image/upload/v1661426832/QLNhaHangTiecCuoi/dichvu/trangtri4_cvgtvd.png',1,5),(6,'Trang trí sân khấu','Một sân khấu đám cưới hoàn hảo sẽ giúp tiệc cưới của bạn thêm phần nổi bật và ấn tượng.',6000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426839/QLNhaHangTiecCuoi/dichvu/trangtri7_hqgvj3.png',1,6),(7,'Bánh cưới 5 tầng','Đám cưới là thời khắc quan trọng trong cuộc đời mỗi con người, và dĩ nhiên chiếc bánh cưới là không thể thiếu trong bữa tiệc.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426829/QLNhaHangTiecCuoi/dichvu/trangtri3_zmitzm.png',1,7),(8,'Trang trí phông chữ sân khấu','Phông sân khấu đám cưới luôn là tâm điểm và là khu vực quan trọng nhất trong buổi lễ thành hôn. Vì đây là nơi mà MC, cô dâu chú rể và những người quan trọng trong hôn lễ sẽ đứng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426804/QLNhaHangTiecCuoi/dichvu/trangtri8_sjxfyi.jpg',1,8),(9,'Liễn và viết ký tên','Sổ ký tên đám cưới từ xưa đến nay được biết đến là nơi lưu giữ những kỷ niệm của khách đến tham gia hôn lễ và cô dâu – chú rể.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661426806/QLNhaHangTiecCuoi/dichvu/trangtri9_mef9an.jpg',1,9),(10,'Màn hình máy chiếu','Máy chiếu đám cưới để chiếu album ảnh hay video phim, hình cưới, sân khấu..',2300000,'https://res.cloudinary.com/btlde1/image/upload/v1661426800/QLNhaHangTiecCuoi/dichvu/trangtri10_mglxkv.jpg',1,10),(11,'Violin + Piano sảnh chính','Còn gì tuyệt vời hơn khi màn khai tiệc diễn ra với tiếng dương cầm du dương. Chiếc đàn piano cất lên những giai điệu mừng hạnh phúc đôi bạn trẻ, và cả hai cũng nhau rót rượu, cắt bánh, trao cho nhau ly rượu phu thê trong không gian lắn đọng ấy.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661428557/QLNhaHangTiecCuoi/dichvu/khaitiec1_hyopsb.jpg',2,11),(12,'Violin đón dâu khai mạc','Âm nhạc trong đám cưới có chức năng tạo không khí vui tươi, sôi động cho lễ cưới của bạn. Vì thế, chọn nhạc đám cưới cũng là điều khá quan trọng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/cho-thue-nhac-cong-violin-tai-ha-noi_ph7x6u.jpg',2,12),(13,'Pháo kim tuyến','Đây là loại pháo nén bằng hơi, khi bắn hơi sẽ đẩy kim tuyến lên rất đẹp, đây là loại pháo rất an toàn và được bán rộng rãi phục vụ cho lễ hội, sự kiện, đám cưới…',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/Jemma_and_Rob_Photo_The_Crawleys_j7flkx.jpg',2,13),(14,'MC dẫn chương trình','Ngày nay, nhu cầu làm MC dẫn chương trình đám cưới ngày càng gia tăng nhưng không phải ai cũng dễ dàng làm được điều này.',1500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441248/QLNhaHangTiecCuoi/dichvu/khaitiec4_rodg6h.jpg',2,14),(15,'Nhạc nhẹ trong tiệc','Âm nhạc trong đám cưới nên sử dụng các bản nhạc, các ca khúc, các giai điệu có âm hưởng êm dịu, trữ tình. Các bài nhạc này nên có ca từ lành mạnh, ca ngợi tình yêu lứa đôi, tình yêu quê hương đất nước.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec5_xkskqy.jpg',2,15),(16,'Tranh cát','Khoảng thời gian gần đây, nhiều đôi uyên ương chuộng mốt biểu diễn tranh cát trong ngày cưới để thay cho việc chiuế video kể về câu chuyện tình yêu của mình.',300000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec6_vlzkry.jpg',3,16),(17,'Bàn lễ tân đặc biệt','Bàn lễ tân tiệc đám cưới đẹp chính là nơi đầu tiên tạo ấn tượng với tất cả các vị khách mời. Đó cũng là nơi để khách mời gửi tặng phần quà ý nghĩa vào hòm tiền mừng và xem ảnh cưới.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/khaitiec7_zf2omm.jpg',3,17),(18,'Backdrop & Background đặc biệt','Background tiệc cưới là yếu tố quan trọng mà bạn không thể bỏ qua hay qua loa được, bởi nó là nơi sẽ ghi lại những khoảnh khắc đẹp nhất của hai bạn cũng như khách mời.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/khaitiec8_s4djxp.jpg',3,18),(19,'Màn hoa tươi','Hoa tươi không chỉ mang lại vẻ đẹp trang trọng, lộng lẫy cho tấm backdrop đám cưới mà còn có mùi hương lan tỏa. So với những loại backdrop làm từ hoa lụa, hoa giả thì backdrop làm từ hoa tươi trông sang trọng hơn rất nhiều.',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/18-371_ngsmiv.jpg',3,19),(20,'Cổng hoa tươi','Cổng hoa đám cưới là ấn tượng đầu tiên của khách mời khi bước vào một không gian phòng cưới . Cổng hoa trong các đám cưới thường được kết bằng hoa tươi, hoặc hoa lụa hoặc hoa giấy,...',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441812/QLNhaHangTiecCuoi/dichvu/hoacuoi20_c1hnw5.jpg',3,20),(21,'Thiệp cưới','Ý nghĩa của thiệp cưới như là một sự thông báo trịnh trọng, nghiêm túc, là cách báo hỷ của gia đình cô dâu và chú rể đối với khách mời. Dựa vào thiệp cưới, khách mời sẽ biết được đám cưới này là của ai.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/thiep-cuoi-diamond-1_wu3ppf.jpg',3,21),(22,'Qùa đáp lễ','Hiện nay, rất nhiều cô dâu chú rể đã thêm phần trao quà đáp lễ trong ngày cưới của mình. Quà đáp lễ được xem là lời cảm ơn của đôi vợ chồng đến các khách mời tham dự.',8000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/3-mon-qua-dap-le-ngay-cuoi-that-xinh-va-y-nghia_kn6vuq.jpg',3,22),(23,'Thùng tiền','Nó không chỉ đơn giản là một chiếc hộp, nơi khách mời trao gửi yêu thương với ngày vui của đôi vợ chồng trẻ mà còn là vật dụng trang trí xinh xắn.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661441145/QLNhaHangTiecCuoi/dichvu/trangtri6_cspnns.jpg',1,3),(24,'Demo03','qwertyukilk;kjhygtfrdfs',12345,'https://res.cloudinary.com/drnm5kirb/image/upload/v1665673923/gaohsugd7mb3vjsc3rlj.jpg',3,28);
/*!40000 ALTER TABLE `dich_vu_store` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES (1,'Hoa tươi bàn tiệc','Việc bày biện hoa tươi trên bàn đám cưới giúp tăng thêm phần tao nhã và lịch lãm cho không gian tiệc cưới.',7000000,NULL,1),(2,'Trang trí lối đi sân khấu','Hiện nay, các cô dâu chú rể và wedding planner đều chú trọng trang trí lối đi trung tâm này, để nghi thức thành hôn của đôi uyên ương thêm đẹp và đặc biệt.',4000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426837/QLNhaHangTiecCuoi/dichvu/trangtri1_krrhgg.png',1),(3,'Thùng tiền mừng','Nó không chỉ đơn giản là một chiếc hộp, nơi khách mời trao gửi yêu thương với ngày vui của đôi vợ chồng trẻ mà còn là vật dụng trang trí xinh xắn.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661441145/QLNhaHangTiecCuoi/dichvu/trangtri6_cspnns.jpg',1),(4,'2 chai rượu Champagne + đá khói','Việc sử dụng rượu sâm banh trong ngày cưới khiến cho tiệc cưới trở nên trang trọng và tốt đẹp hơn. Mọi người sẽ cùng nhau nâng ly chúc phúc, dành những lời tốt đẹp nhất cho cặp đôi.',350000,'https://res.cloudinary.com/btlde1/image/upload/v1661426808/QLNhaHangTiecCuoi/dichvu/trangtri5_wsdzs9.png',1),(5,'Hoa tươi bàn tháp rượu','Trang trí tháp rượu champagne ngày cưới với hoa tươi để trang trí lễ cưới',450000,'https://res.cloudinary.com/btlde1/image/upload/v1661426832/QLNhaHangTiecCuoi/dichvu/trangtri4_cvgtvd.png',1),(6,'Trang trí sân khấu','Một sân khấu đám cưới hoàn hảo sẽ giúp tiệc cưới của bạn thêm phần nổi bật và ấn tượng.',6000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426839/QLNhaHangTiecCuoi/dichvu/trangtri7_hqgvj3.png',1),(7,'Bánh cưới 5 tầng','Đám cưới là thời khắc quan trọng trong cuộc đời mỗi con người, và dĩ nhiên chiếc bánh cưới là không thể thiếu trong bữa tiệc.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426829/QLNhaHangTiecCuoi/dichvu/trangtri3_zmitzm.png',1),(8,'Trang trí phông chữ sân khấu','Phông sân khấu đám cưới luôn là tâm điểm và là khu vực quan trọng nhất trong buổi lễ thành hôn. Vì đây là nơi mà MC, cô dâu chú rể và những người quan trọng trong hôn lễ sẽ đứng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661426804/QLNhaHangTiecCuoi/dichvu/trangtri8_sjxfyi.jpg',1),(9,'Liễn và viết ký tên','Sổ ký tên đám cưới từ xưa đến nay được biết đến là nơi lưu giữ những kỷ niệm của khách đến tham gia hôn lễ và cô dâu – chú rể.',200000,'https://res.cloudinary.com/btlde1/image/upload/v1661426806/QLNhaHangTiecCuoi/dichvu/trangtri9_mef9an.jpg',1),(10,'Màn hình máy chiếu','Máy chiếu đám cưới để chiếu album ảnh hay video phim, hình cưới, sân khấu..',2300000,'https://res.cloudinary.com/btlde1/image/upload/v1661426800/QLNhaHangTiecCuoi/dichvu/trangtri10_mglxkv.jpg',1),(11,'Violin + Piano sảnh chính','Còn gì tuyệt vời hơn khi màn khai tiệc diễn ra với tiếng dương cầm du dương. Chiếc đàn piano cất lên những giai điệu mừng hạnh phúc đôi bạn trẻ, và cả hai cũng nhau rót rượu, cắt bánh, trao cho nhau ly rượu phu thê trong không gian lắn đọng ấy.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661428557/QLNhaHangTiecCuoi/dichvu/khaitiec1_hyopsb.jpg',2),(12,'Violin đón dâu khai mạc','Âm nhạc trong đám cưới có chức năng tạo không khí vui tươi, sôi động cho lễ cưới của bạn. Vì thế, chọn nhạc đám cưới cũng là điều khá quan trọng.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/cho-thue-nhac-cong-violin-tai-ha-noi_ph7x6u.jpg',2),(13,'Pháo kim tuyến','Đây là loại pháo nén bằng hơi, khi bắn hơi sẽ đẩy kim tuyến lên rất đẹp, đây là loại pháo rất an toàn và được bán rộng rãi phục vụ cho lễ hội, sự kiện, đám cưới…',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/Jemma_and_Rob_Photo_The_Crawleys_j7flkx.jpg',2),(14,'MC dẫn chương trình','Ngày nay, nhu cầu làm MC dẫn chương trình đám cưới ngày càng gia tăng nhưng không phải ai cũng dễ dàng làm được điều này.',1500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441248/QLNhaHangTiecCuoi/dichvu/khaitiec4_rodg6h.jpg',2),(15,'Nhạc nhẹ trong tiệc','Âm nhạc trong đám cưới nên sử dụng các bản nhạc, các ca khúc, các giai điệu có âm hưởng êm dịu, trữ tình. Các bài nhạc này nên có ca từ lành mạnh, ca ngợi tình yêu lứa đôi, tình yêu quê hương đất nước.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec5_xkskqy.jpg',2),(16,'Tranh cát','Khoảng thời gian gần đây, nhiều đôi uyên ương chuộng mốt biểu diễn tranh cát trong ngày cưới để thay cho việc chiuế video kể về câu chuyện tình yêu của mình.',300000,'https://res.cloudinary.com/btlde1/image/upload/v1661441249/QLNhaHangTiecCuoi/dichvu/khaitiec6_vlzkry.jpg',3),(17,'Bàn lễ tân đặc biệt','Bàn lễ tân tiệc đám cưới đẹp chính là nơi đầu tiên tạo ấn tượng với tất cả các vị khách mời. Đó cũng là nơi để khách mời gửi tặng phần quà ý nghĩa vào hòm tiền mừng và xem ảnh cưới.',1000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441380/QLNhaHangTiecCuoi/dichvu/khaitiec7_zf2omm.jpg',3),(18,'Backdrop & Background đặc biệt','Background tiệc cưới là yếu tố quan trọng mà bạn không thể bỏ qua hay qua loa được, bởi nó là nơi sẽ ghi lại những khoảnh khắc đẹp nhất của hai bạn cũng như khách mời.',3000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/khaitiec8_s4djxp.jpg',3),(19,'Màn hoa tươi','Hoa tươi không chỉ mang lại vẻ đẹp trang trọng, lộng lẫy cho tấm backdrop đám cưới mà còn có mùi hương lan tỏa. So với những loại backdrop làm từ hoa lụa, hoa giả thì backdrop làm từ hoa tươi trông sang trọng hơn rất nhiều.',500000,'https://res.cloudinary.com/btlde1/image/upload/v1661441810/QLNhaHangTiecCuoi/dichvu/18-371_ngsmiv.jpg',3),(20,'Cổng hoa tươi','Cổng hoa đám cưới là ấn tượng đầu tiên của khách mời khi bước vào một không gian phòng cưới . Cổng hoa trong các đám cưới thường được kết bằng hoa tươi, hoặc hoa lụa hoặc hoa giấy,...',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441812/QLNhaHangTiecCuoi/dichvu/hoacuoi20_c1hnw5.jpg',3),(21,'Thiệp cưới','Ý nghĩa của thiệp cưới như là một sự thông báo trịnh trọng, nghiêm túc, là cách báo hỷ của gia đình cô dâu và chú rể đối với khách mời. Dựa vào thiệp cưới, khách mời sẽ biết được đám cưới này là của ai.',2000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/thiep-cuoi-diamond-1_wu3ppf.jpg',3),(22,'Qùa đáp lễ','Hiện nay, rất nhiều cô dâu chú rể đã thêm phần trao quà đáp lễ trong ngày cưới của mình. Quà đáp lễ được xem là lời cảm ơn của đôi vợ chồng đến các khách mời tham dự.',8000000,'https://res.cloudinary.com/btlde1/image/upload/v1661441737/QLNhaHangTiecCuoi/dichvu/3-mon-qua-dap-le-ngay-cuoi-that-xinh-va-y-nghia_kn6vuq.jpg',3),(27,'Demo0222','qewrfrgdtfhgyjhkjlk;kjhgfdsadfghjmkl',123459000,'https://res.cloudinary.com/drnm5kirb/image/upload/v1665671624/kh4qmi53xlar2yixauww.jpg',2),(28,'Demo03','qwertyukilk;kjhygtfrdfs',12345000,'https://res.cloudinary.com/drnm5kirb/image/upload/v1665673923/gaohsugd7mb3vjsc3rlj.jpg',3);
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
  KEY `fk_dondattiec_catochuc_idx` (`idCaToChuc`),
  KEY `KhachHangDatTiec_idx` (`idKhachHang`),
  KEY `fk_dondattiec_sanhcuoi_idx` (`idSanh`),
  CONSTRAINT `fk_dondattiec_catochuc` FOREIGN KEY (`idCaToChuc`) REFERENCES `catochuc` (`id`),
  CONSTRAINT `fk_dondattiec_sanh` FOREIGN KEY (`idSanh`) REFERENCES `sanh_cuoi_store` (`id`),
  CONSTRAINT `KhachHangDatTiec` FOREIGN KEY (`idKhachHang`) REFERENCES `khachhang` (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondattiec`
--

LOCK TABLES `dondattiec` WRITE;
/*!40000 ALTER TABLE `dondattiec` DISABLE KEYS */;
INSERT INTO `dondattiec` VALUES (118,'',108,2,1,'2022-09-30 12:19:00',1),(119,'',109,3,2,'2022-09-24 14:10:00',5),(120,'',110,1,1,'2022-09-14 14:20:00',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
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
  `sdt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (98,'Hồng Đào','0123123123','lthdao1509@gmail.com'),(99,'Thu Minh','0222333444','k1796dao@gmail.com'),(100,'Diễm Lộc','0111234567','lthdao1509@gmail.com'),(101,'Duy An','0111222333','hdao2309@gmail.com'),(102,'Văn Phúc','0779223115','lthdao1509@gmail.com'),(103,'Duy Tân','0231236325','hdao2309@gmail.com'),(104,'Nam Cao','0556223445','k1796dao@gmail.com'),(105,'Tuấn Kiệt','0325614235','lthdao1509@gmail.com'),(106,'Thu Hiền','0325614856','lthdao1509@gmail.com'),(107,'Bích Hồng','0123123123','lthdao1509@gmail.com'),(108,'Hồng Đào','1','lthdao1509@gmail.com'),(109,'s','1','1951052033dao@ou.edu.vn'),(110,'a','4','lthdao1509@gmail.com');
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
-- Table structure for table `phan_hoi`
--

DROP TABLE IF EXISTS `phan_hoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan_hoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noi_dung` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `ngay_phan_hoi` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phanhoi_user_idx` (`user_id`),
  CONSTRAINT `fk_phanhoi_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_hoi`
--

LOCK TABLES `phan_hoi` WRITE;
/*!40000 ALTER TABLE `phan_hoi` DISABLE KEYS */;
INSERT INTO `phan_hoi` VALUES (1,'good','2022-08-31 00:00:00',2),(2,'good','2022-08-31 00:00:00',2),(3,'tốt','2022-08-31 21:22:52',2),(4,'thích lắm','2022-09-02 00:18:26',2),(5,'hahaha','2022-09-02 21:00:29',2),(6,'thức ăn ngon','2022-09-05 00:26:29',2),(7,'1','2022-09-16 21:28:46',2),(8,'2','2022-09-16 22:19:34',2),(9,'3','2022-09-16 22:27:10',1),(10,'4','2022-09-24 15:51:48',1),(11,'4','2022-09-24 15:52:10',1),(12,'5','2022-09-24 16:35:12',1),(13,'6','2022-09-24 16:48:40',1),(14,'hay\n','2022-10-04 22:33:12',2),(15,'hay\n','2022-10-04 22:33:18',2),(16,'lkkg','2022-10-09 15:26:28',2);
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
  CONSTRAINT `fk_phieudichvu_dichvu` FOREIGN KEY (`idDichVu`) REFERENCES `dich_vu_store` (`id`),
  CONSTRAINT `fk_phieudichvu_tieccuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatdichvu`
--

LOCK TABLES `phieudatdichvu` WRITE;
/*!40000 ALTER TABLE `phieudatdichvu` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatmon`
--

LOCK TABLES `phieudatmon` WRITE;
/*!40000 ALTER TABLE `phieudatmon` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieudatmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanh_cuoi_store`
--

DROP TABLE IF EXISTS `sanh_cuoi_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanh_cuoi_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenSanh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `giaToiThieu` decimal(10,0) NOT NULL,
  `moTa` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dienTich` double NOT NULL,
  `soLuongBan` int NOT NULL,
  `hinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_sanh_chinh` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_store_sanh_idx` (`id_sanh_chinh`),
  CONSTRAINT `fk_store_sanh` FOREIGN KEY (`id_sanh_chinh`) REFERENCES `sanhcuoi` (`idSanhCuoi`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanh_cuoi_store`
--

LOCK TABLES `sanh_cuoi_store` WRITE;
/*!40000 ALTER TABLE `sanh_cuoi_store` DISABLE KEYS */;
INSERT INTO `sanh_cuoi_store` VALUES (1,'PLATIN',1800000,'Sảnh Platin với kích thước 386 m2 được bày trí theo phong cách Châu Âu sang trọng sẽ thật sự phù hợp cho một hôn lễ ấm cúng với số lượng khách mời trong khoảng 20 đến 26 bàn tiệc. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',386,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh4_cthihq.jpg',1),(2,'VENUS',1800000,'Sảnh Venus với kích thước sảnh 544 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền vàng ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1800 khách (180 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',544,180,'https://res.cloudinary.com/btlde1/image/upload/v1660922232/QLNhaHangTiecCuoi/sanh6_tihxui.jpg',2),(3,'ELITE',1700000,'Sảnh Elite với kích thước sảnh 520 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng xanh lá  ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',520,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh5_bbh0xh.jpg',3),(4,'MERCURY',2000000,'Sảnh Mercury với kích thước sảnh 582 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng đỏ ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 2000 khách (200 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',582,200,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh2_ifkbyx.jpg',4),(5,'PAVILON',1500000,'Sảnh Pavilon với kích thước sảnh 356 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền hồng độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1200 khách (120 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',356,120,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh1_ny7oe5.jpg',5),(6,'FONTANA',1600000,'Sảnh Fontana với kích thước sảnh 472 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền tím độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',472,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh3_aqyqzp.jpg',6),(7,'ưqrerdf',1234,'ưqsdvxc',1232,231,'https://res.cloudinary.com/drnm5kirb/image/upload/v1665589789/asnelpy1alvjabywyftb.jpg',NULL),(8,'FONTANA',1700000,'Sảnh Fontana với kích thước sảnh 472 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền tím độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',472,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh3_aqyqzp.jpg',6);
/*!40000 ALTER TABLE `sanh_cuoi_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanhcuoi`
--

DROP TABLE IF EXISTS `sanhcuoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanhcuoi` (
  `idSanhCuoi` int NOT NULL AUTO_INCREMENT,
  `tenSanh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaToiThieu` decimal(10,0) NOT NULL,
  `moTa` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienTich` double NOT NULL,
  `soLuongBan` int NOT NULL,
  `hinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idSanhCuoi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanhcuoi`
--

LOCK TABLES `sanhcuoi` WRITE;
/*!40000 ALTER TABLE `sanhcuoi` DISABLE KEYS */;
INSERT INTO `sanhcuoi` VALUES (1,'PLATIN',1800000,'Sảnh Platin với kích thước 386 m2 được bày trí theo phong cách Châu Âu sang trọng sẽ thật sự phù hợp cho một hôn lễ ấm cúng với số lượng khách mời trong khoảng 20 đến 26 bàn tiệc. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',386,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh4_cthihq.jpg'),(2,'VENUS',1800000,'Sảnh Venus với kích thước sảnh 544 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền vàng ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1800 khách (180 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',544,180,'https://res.cloudinary.com/btlde1/image/upload/v1660922232/QLNhaHangTiecCuoi/sanh6_tihxui.jpg'),(3,'ELITE',1700000,'Sảnh Elite với kích thước sảnh 520 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng xanh lá  ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',520,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh5_bbh0xh.jpg'),(4,'MERCURY',2000000,'Sảnh Mercury với kích thước sảnh 582 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền trắng đỏ ấn tượng. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 2000 khách (200 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',582,200,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh2_ifkbyx.jpg'),(5,'PAVILON',1500000,'Sảnh Pavilon với kích thước sảnh 356 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền hồng độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1200 khách (120 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',356,120,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh1_ny7oe5.jpg'),(6,'FONTANA',1700000,'Sảnh Fontana với kích thước sảnh 472 m2 được bày trí theo phong cách Châu Âu sang trọng có sức chứa từ 30 đến 40 bàn tiệc trên nền tím độc đáo. Diện tích sảnh có thể mở rộng linh hoạt với sức chứa lên đến 1500 khách (150 bàn) nhằm đáp ứng cho nhiều hình thức và nhu cầu đặt tiệc khác nhau.',472,150,'https://res.cloudinary.com/btlde1/image/upload/v1660922230/QLNhaHangTiecCuoi/sanh3_aqyqzp.jpg');
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
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diaChi` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userRole` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Thu Minh',NULL,NULL,NULL,'minh1','$2a$10$3OhhPnSXV0PvE/HJ22vcous3T6V65ofuYGlpVcSNO2c4bAM1Agj.a','0987654345','minh11@gmail.com','https://res.cloudinary.com/btlde1/image/upload/v1661066169/QLNhaHangTiecCuoi/mon%20an/monan13_wotojx.jpg','ROLE_ADMIN'),(2,'HDao',NULL,NULL,NULL,'dao1','$2a$10$3FwiKNGsWE00arfc0IfZGeqFr1aqjWG5KiSe6q9a57ZncPCEgIaze','0987654323','dao1@gmail.com','https://res.cloudinary.com/btlde1/image/upload/v1661066173/QLNhaHangTiecCuoi/mon%20an/monan2_grz7dd.png','ROLE_USER'),(4,'Minh Võ','2022-01-29','Nu','Sài Gòn','minh11','$2a$10$Wv6ThLm1lLLmUmNnOAPLSuGhemGja.tZZip/zesdNipVSBhXyWNhG','0938728476','minh1@gmail.com','https://res.cloudinary.com/drnm5kirb/image/upload/v1664894931/jddpfgtoc1kdgv1jojwj.jpg','ROLE_EMPLOYEE'),(5,'demo','2022-09-29','Nu','Sài Gòn','minh2','$2a$10$hoZ1H7pdi8y0bspHzHx32.sRfZusnmcXJdmfOSAIo9nmTGdF0Ahsu','0987654321','minh11@gmail.com','https://res.cloudinary.com/drnm5kirb/image/upload/v1665219409/fx8x4ijdbj4svgl3mpcg.jpg','ROLE_USER'),(6,'demo nv','2022-09-26','Nam','Ninh Thuan','minh12','$2a$10$Cc0z757cbqDQVns8vOc.WeZacdT7eR2Xl5NOiigZ9OkytXjCdrdpG','0938728476','demo1@gmail.com','https://res.cloudinary.com/drnm5kirb/image/upload/v1665219443/kud2igwsgcnmltzhrjze.jpg','ROLE_EMPLOYEE'),(7,'Võ Thu Minh','2022-09-05','Nu','Phan Rang, Ninh Thuận.','nv1','$2a$10$c0apJf9.Dicm6LCQLoQXquPagg5Cu2QE.CVkCv8USdADaf2W5Ur7W','0987654345','minhya@gmail.com',NULL,'ROLE_EMPLOYEE');
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

-- Dump completed on 2022-10-14 12:44:11
