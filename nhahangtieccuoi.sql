-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: nhahangtieccuoi
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catochuc`
--

LOCK TABLES `catochuc` WRITE;
/*!40000 ALTER TABLE `catochuc` DISABLE KEYS */;
/*!40000 ALTER TABLE `catochuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `idDichVu` int NOT NULL,
  `tenDichVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiTiet` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaDichVu` float NOT NULL,
  `loaiDichVu` int NOT NULL,
  PRIMARY KEY (`idDichVu`),
  KEY `fk_dichvu_loaidichvu_idx` (`loaiDichVu`),
  CONSTRAINT `fk_dichvu_loaidichvu` FOREIGN KEY (`loaiDichVu`) REFERENCES `loaidichvu` (`idloaidichvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondattiec`
--

DROP TABLE IF EXISTS `dondattiec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dondattiec` (
  `idDonDatTiec` int NOT NULL,
  `chitTiet` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idKhachHang` int NOT NULL,
  `idSanh` int NOT NULL,
  `idCaToChuc` int NOT NULL,
  `ngayToChuc` date NOT NULL,
  PRIMARY KEY (`idDonDatTiec`),
  KEY `KhachHangDatTiec_idx` (`idKhachHang`),
  KEY `ChonSanhCuoi_idx` (`idSanh`),
  KEY `fk_dondattiec_catochuc_idx` (`idCaToChuc`),
  CONSTRAINT `ChonSanhCuoi` FOREIGN KEY (`idSanh`) REFERENCES `sanhcuoi` (`idSanhCuoi`),
  CONSTRAINT `fk_dondattiec_catochuc` FOREIGN KEY (`idCaToChuc`) REFERENCES `catochuc` (`id`),
  CONSTRAINT `KhachHangDatTiec` FOREIGN KEY (`idKhachHang`) REFERENCES `khachhang` (`idKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondattiec`
--

LOCK TABLES `dondattiec` WRITE;
/*!40000 ALTER TABLE `dondattiec` DISABLE KEYS */;
/*!40000 ALTER TABLE `dondattiec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `idhoadon` int NOT NULL,
  `tongGia` decimal(10,0) NOT NULL,
  `idTiecCuoi` int NOT NULL,
  PRIMARY KEY (`idhoadon`),
  UNIQUE KEY `idTiecCuoi_UNIQUE` (`idTiecCuoi`),
  KEY `fk_hoadon_tieccuoi_idx` (`idTiecCuoi`),
  CONSTRAINT `fk_hoadon_tieccuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `idKhachHang` int NOT NULL,
  `tenKH` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidichvu`
--

DROP TABLE IF EXISTS `loaidichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidichvu` (
  `idloaidichvu` int NOT NULL,
  `tenLoaiDichVu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idloaidichvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidichvu`
--

LOCK TABLES `loaidichvu` WRITE;
/*!40000 ALTER TABLE `loaidichvu` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `loaimon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanh`
--

DROP TABLE IF EXISTS `loaisanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisanh` (
  `idloai_sanh` int NOT NULL AUTO_INCREMENT,
  `tenLoaiSanh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idloai_sanh`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanh`
--

LOCK TABLES `loaisanh` WRITE;
/*!40000 ALTER TABLE `loaisanh` DISABLE KEYS */;
INSERT INTO `loaisanh` VALUES (1,'White'),(2,'Black'),(3,'Blue');
/*!40000 ALTER TABLE `loaisanh` ENABLE KEYS */;
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
  `gia` float NOT NULL,
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
/*!40000 ALTER TABLE `monan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `idNhanVien` int NOT NULL,
  `hoTen` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` int NOT NULL,
  PRIMARY KEY (`idNhanVien`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
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
-- Table structure for table `phieudatdichvu`
--

DROP TABLE IF EXISTS `phieudatdichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatdichvu` (
  `id` int NOT NULL,
  `idDichVu` int NOT NULL,
  `idTiecCuoi` int NOT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieudichvu_tieccuoi_idx` (`idTiecCuoi`),
  KEY `fk_phieudichvu_dichvu_idx` (`idDichVu`),
  CONSTRAINT `fk_phieudichvu_dichvu` FOREIGN KEY (`idDichVu`) REFERENCES `dichvu` (`idDichVu`),
  CONSTRAINT `fk_phieudichvu_tieccuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int NOT NULL,
  `idMonAn` int NOT NULL,
  `idTiecCuoi` int NOT NULL,
  `soLuong` int NOT NULL,
  `gia` decimal(10,0) NOT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieuDatMon_monAn_idx` (`idMonAn`),
  KEY `fk_phieuDatMon_tiecCuoi_idx` (`idTiecCuoi`),
  CONSTRAINT `fk_phieuDatMon_monAn` FOREIGN KEY (`idMonAn`) REFERENCES `monan` (`id`),
  CONSTRAINT `fk_phieuDatMon_tiecCuoi` FOREIGN KEY (`idTiecCuoi`) REFERENCES `dondattiec` (`idDonDatTiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatmon`
--

LOCK TABLES `phieudatmon` WRITE;
/*!40000 ALTER TABLE `phieudatmon` DISABLE KEYS */;
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
  `giaToiThieu` float NOT NULL,
  `moTa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiSanhID` int NOT NULL,
  `tìnhTrangSanh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idSanhCuoi`),
  KEY `fk_sanh_loaiSanh_idx` (`loaiSanhID`),
  CONSTRAINT `fk_sanh_loaiSanh` FOREIGN KEY (`loaiSanhID`) REFERENCES `loaisanh` (`idloai_sanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanhcuoi`
--

LOCK TABLES `sanhcuoi` WRITE;
/*!40000 ALTER TABLE `sanhcuoi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanhcuoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `hoTen` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userRole` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_user_userRole_idx` (`userRole`),
  CONSTRAINT `fk_user_userRole` FOREIGN KEY (`userRole`) REFERENCES `userrole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenChucVu_UNIQUE` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-18 14:45:53
