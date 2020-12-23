-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: shopmaytinh
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint NOT NULL,
  `bill_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` bigint NOT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Apple'),(2,'MSI'),(3,'Dell'),(4,'Asus'),(5,'Acer'),(6,'LG'),(7,'SAMSUNG'),(8,'HP'),(9,'Intel');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Laptop & Macbook'),(2,'PC - Máy tính đồng bộ'),(3,'Màn hình máy tính'),(4,'Linh kiện máy tính'),(5,'Thiết bị ngoại vị'),(6,'Thiết bị âm thanh');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` bigint NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_web` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `contact_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `newsletter_id` bigint NOT NULL,
  `newsletter_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_forward` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_back` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1608370494986,1,'APPLE MacBook Pro 2020',1,'images/APPLE MacBook Pro 2020.jpg','images/APPLE MacBook Pro 2020 fr.jpg','images/APPLE MacBook Pro 2020 bk.jpg',53990000,'13.3\" Quad HD (2K)/Intel Core i5/16GB/1TB SSD/macOS/1.4kg'),(1608370854692,1,'APPLE MacBook Pro 2019',1,'images/APPLE MacBook Pro 2019.jpg','images/APPLE MacBook Pro 2019 fr.jpg','images/APPLE MacBook Pro 2019 bk.jpg',59990000,'16\" Intel Core i7/16GB/AMD Radeon Pro 5300M/macOS/2kg'),(1608371137738,1,'Apple MacBook Pro 16\" 2019',1,'images/Apple MacBook Pro 16 2019.jpg','images/Apple MacBook Pro 16 2019 fr.jpg','images/Apple MacBook Pro 16 2019 bk.jpg',69990000,'Core i5/8GB/128GB SSD/Iris Plus Graphics 645/macOS/1.4 kg'),(1608384196643,1,'Apple MacBook Pro 2019 13\"',1,'images/Apple MacBook Pro 2019 13.jpg','images/Apple MacBook Pro 2019 13 fr.jpg','images/Apple MacBook Pro 2019 13 bk.jpg',34990000,'Core i5/8GB/128GB SSD/Iris Plus Graphics 645/macOS/1.4 kg'),(1608384370821,1,'MSI Modern 14 B11SB 075VN',2,'images/MSI Modern 14 B11SB 075VN.jpg','images/MSI Modern 14 B11SB 075VN fr.jpg','images/MSI Modern 14 B11SB 075VN bk.jpg',22990000,'14\" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/NVIDIA GeForce MX450/Windows 10 Home SL 64-bit/1.3kg'),(1608384501254,1,'MSI Thin GF63 10SCXR 1218VN',2,'images/MSI Thin GF63 10SCXR 1218VN.jpg','images/MSI Thin GF63 10SCXR 1218VN fr.jpg','images/MSI Thin GF63 10SCXR 1218VN bk.jpg',20990000,'5.6\" Full HD/ 144Hz/Intel Core i5-10300H/8GB/512GB SSD/NVIDIA GeForce GTX 1650/Windows 10 Home 64-bit/1.9kg'),(1608384660998,1,'MSI Modern 14 B10MW 214VN',2,'images/MSI Modern 14 B10MW 214VN.jpg','images/MSI Modern 14 B10MW 214VN fr.jpg','images/MSI Modern 14 B10MW 214VN bk.jpg',21490000,'15.6\" Full HD/ 240Hz/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Windows 10 Home 64-bit/2.1kg'),(1608384781211,1,'MSI Alpha 15 A3DDK-212VN',2,'images/MSI Alpha 15 A3DDK-212VN.jpg','images/MSI Alpha 15 A3DDK-212VN fr.jpg','images/MSI Alpha 15 A3DDK-212VN bk.jpg',23990000,'15.6\" Full HD/ 240Hz/Intel Core i7-10750H/16GB/512GB SSD/NVIDIA GeForce RTX 2060/Windows 10 Home 64-bit/2.1kg'),(1608384915964,1,'MSI GE66 Raider 10SFS 474VN',2,'images/MSI GE66 Raider 10SFS 474VN.jpg','images/MSI GE66 Raider 10SFS 474VN fr.jpg','images/MSI Modern 14 B10MW 214VN bk.jpg',59990000,'15.6\" Full HD/ 300Hz/Intel Core i7-10875H/32GB/1TB SSD/NVIDIA GeForce RTX 2070 Super/Windows 10 Home 64-bit/2.4kg'),(1608385074103,1,'Dell Vostro 15 5502 V502A',3,'images/Dell Vostro 15 5502 V5502A.jpg','images/Dell Vostro 15 5502 V5502A fr.jpg','images/Dell Vostro 15 5502 V5502A bk.jpg',25990000,'15.6\" Full HD/Intel Core i7-1165G7/16GB/512GB SSD/NVIDIA GeForce MX330/Windows 10 Home SL 64-bit/1.7kg'),(1608385629955,1,'Dell Inspiron 7306 N7306A',3,'images/Dell Inspiron 7306 N7306A.jpg','images/Dell Inspiron 7306 N7306A fr.jpg','images/Dell Inspiron 7306 N7306A bk.jpg',34990000,'13.3\" Ultra HD (4K)/Intel Core i7-1165G7/16GB/512GB SSD/Windows 10 Home SL 64-bit/1.4kg'),(1608385844746,1,'Dell Vostro 14 3405',3,'images/Dell Vostro 14 3405 V4R53500U003W.jpg','images/Dell Vostro 14 3405 V4R53500U003W.jpg','images/Dell Vostro 14 3405 V4R53500U003W.jpg',14990000,'14\" Full HD/AMD Ryzen 5 3500U/8GB/512GB SSD/Windows 10 Home SL 64-bit/1.7kg'),(1608385946292,1,'ASUS Zenbook UX425EA BM069T',4,'images/ASUS Zenbook UX425EA BM069T.jpg','images/ASUS Zenbook UX425EA BM069T fr.jpg','images/ASUS Zenbook UX425EA BM069T bk.jpg',22990000,'14\" Full HD/Intel Core i5-1135G7/8GB/512GB SSD/Windows 10 Home 64-bit/1.2kg'),(1608386106581,1,'ASUS Vivobook A515EA BQ489T',4,'images/ASUS Vivobook A515EA BQ489T.jpg','images/ASUS Vivobook A515EA BQ489T fr.jpg','images/ASUS Vivobook A515EA BQ489T bk.jpg',13890000,'15.6\" Full HD/Intel Core i3-1115G4/4GB/512GB SSD/Windows 10 Home 64-bit/1.8kg'),(1608386256633,1,'ACER Aspire 7 A715-41G-R282 NH.Q8SSV.005',5,'images/ACER Aspire 7 A715-41G-R282 NH.Q8SSV.005.jpg','images/ACER Aspire 7 A715-41G-R282 NH.Q8SSV.005 fr.jpg','images/ACER Aspire 7 A715-41G-R282 NH.Q8SSV.005 bk.jpg',19990000,'15.6\" Full HD/AMD Ryzen 5 3550H/8GB/512GB SSD/NVIDIA GeForce GTX 1650Ti/Windows 10 Home 64-bit/2.1kg'),(1608386324664,1,'ACER Swift 3 SF314-510G-5742 NX.A10SV.003',5,'images/ACER Swift 3 SF314-510G-5742 NX.A10SV.003.jpg','images/ACER Swift 3 SF314-510G-5742 NX.A10SV.003 fr.jpg','images/ACER Swift 3 SF314-510G-5742 NX.A10SV.003 bk.jpg',26990000,'ACER Swift 3 SF314-510G-5742 NX.A10SV.003'),(1608386431074,1,'LG Gram 15Z90N-V.AR55A5',6,'images/LG Gram 15Z90N-V.AR55A5.jpg','images/LG Gram 15Z90N-V.AR55A5 fr.jpg','images/LG Gram 15Z90N-V.AR55A5 bk.jpg',37000000,'5\" FHD/i5-1035G7/8GB/512GB SSD/Intel Iris Plus/Win10/1.1kg'),(1608386584036,1,'LG Gram 14Z980-G.AH52A5',6,'images/LG Gram 14Z980-G.AH52A5.jpg','images/LG Gram 14Z980-G.AH52A5 fr.jpg','images/LG Gram 14Z980-G.AH52A5 bk.jpg',31500000,'14\" FHD/i5-8250U/8GB/UHD 620/Win10/1 kg'),(1608386704934,2,'PC Dell Vostro 3670 MT V3670L',3,'images/PC Dell Vostro 3670 MT V3670L.jpg','images/PC Dell Vostro 3670 MT V3670L fr.jpg','images/PC Dell Vostro 3670 MT V3670L bk.jpg',15990000,'i5-9400/8GB/1TB HDD/GT 710/Win10'),(1608393448620,2,'PC Intel NUC Kit NUC8i3BEH',9,'images/PC Intel NUC Kit NUC8i3BEH.jpg','images/PC Intel NUC Kit NUC8i3BEH fr.jpg','images/PC Intel NUC Kit NUC8i3BEH bk.jpg',7790000,'i3-8109U'),(1608394460983,2,'PC Acer Aspire XC-885',5,'images/PC Acer Aspire XC-885.jpg','images/PC Acer Aspire XC-885 fr.jpg','images/PC Acer Aspire XC-885 bk.jpg',13090000,'i5-9400/4GB/1TB HDD/GeForce GT 730/Endless'),(1608430039089,2,'PC HP ProDesk 400 G6 MT 7YH46PA',8,'images/PC HP ProDesk 400 G6 MT 7YH46PA.jpg','images/PC HP ProDesk 400 G6 MT 7YH46PA fr.jpg','images/PC HP ProDesk 400 G6 MT 7YH46PA bk.jpg',10190000,'i3-9100/4GB/256GB SSD/UHD 630/Free DOS'),(1608430203582,3,'LCD ASUS VA27EHE',4,'images/LCD ASUS VA27EHE.jpg','images/LCD ASUS VA27EHE fr.jpg','images/LCD ASUS VA27EHE bk.jpg',4390000,'1920 x 1080/IPS/75Hz'),(1608430353571,3,'Samsung 27\" LC27R500FHEXXV',7,'images/Samsung 27 LC27R500FHEXXV.jpg','images/Samsung 27 LC27R500FHEXXV fr.jpg','images/Samsung 27 LC27R500FHEXXV bk.jpg',4590000,'1920x1080/VA/60Hz/4ms'),(1608430488971,3,'LCD Dell U2419HC',3,'images/LCD Dell U2419HC.jpg','images/LCD Dell U2419HC fr.jpg','images/LCD Dell U2419HC bk.jpg',6090000,'1920 x 1080/IPS/60Hz/5 ms'),(1608431258792,4,'CPU INTEL i9-10900X',9,'images/CPU INTEL i9-10900X.jpg','images/CPU INTEL i9-10900X.jpg','images/CPU INTEL i9-10900X.jpg',17390000,'10C/20T, 3.70 GHz - 4.50 GHz, 19.25MB'),(1608431451510,4,'SSD Samsung 860 EVO 2TB 2.5\"',7,'images/SSD Samsung 860 EVO 2TB 2.5.jpg','images/SSD Samsung 860 EVO 2TB 2. fr.jpg','images/SSD Samsung 860 EVO 2TB 2.5 bk.jpg',9290000,'Samsung 860 EVO 2TB 2.5\" (Mz-76E2T0BW'),(1608431750622,5,'ASUS ROG Pugio',4,'images/ASUS ROG Pugio.jpg','images/ASUS ROG Pugio fr.jpg','images/ASUS ROG Pugio bk.jpg',1590000,'Black'),(1608432019655,6,'Powerbeats Pro Totally Wireless Earphones - Navy',1,'images/Powerbeats Pro Totally Wireless Earphones - Navy.jpg','images/Powerbeats Pro Totally Wireless Earphones - Navy fr.jpg','images/Powerbeats Pro Totally Wireless Earphones - Navy bk.jpg',6390000,''),(1608432188877,6,'Beats Studio3 Wireless Headphones',1,'images/Beats Studio3 Wireless Headphones.jpg','images/Beats Studio3 Wireless Headphones fr.jpg','images/Beats Studio3 Wireless Headphones bk.jpg',7290000,'Beats Camo Collection - Forest Green');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `review_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_star` int DEFAULT NULL,
  `review_message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useradmin` (
  `user_ad_id` bigint NOT NULL,
  `user_ad_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ad_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ad_role` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin`
--

LOCK TABLES `useradmin` WRITE;
/*!40000 ALTER TABLE `useradmin` DISABLE KEYS */;
INSERT INTO `useradmin` VALUES (1,'admin','123',_binary '');
/*!40000 ALTER TABLE `useradmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1608367706517,'tien','tien@gmail.com','tien',_binary '\0','12345'),(1608369023897,'tien','tien@gmail.com','tien',_binary '\0','12345');
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

-- Dump completed on 2020-12-20  9:46:10
