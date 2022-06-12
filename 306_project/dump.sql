-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alcholic_beverages`
--

DROP TABLE IF EXISTS `alcholic_beverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alcholic_beverages` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcholic_beverages`
--

LOCK TABLES `alcholic_beverages` WRITE;
/*!40000 ALTER TABLE `alcholic_beverages` DISABLE KEYS */;
INSERT INTO `alcholic_beverages` VALUES ('ab_00001',' \"Margarita\"',11.5),('ab_00002',' \"Mojito\"',12.75),('ab_00003',' \"Cosmopolitan\"',12.45),('ab_00004',' \"Porn Star Martini\"',10.1),('ab_00005',' \"Lime Gin Tonic\"',11.25),('ab_00006',' \"Bud\"',6.75),('ab_00007',' \"Miller\"',5.95),('ab_00008',' \"Corona\"',5.65),('ab_00009',' \"Allure Sauvignon Blanc\"',12.55),('ab_00010',' \"Terra Shiraz\"',11.55),('ab_00011',' \"Terra Narince\"',10.65),('ab_00012',' \"Allure Sauvignon Blanc\"',10.55);
/*!40000 ALTER TABLE `alcholic_beverages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beverages`
--

DROP TABLE IF EXISTS `beverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beverages` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverages`
--

LOCK TABLES `beverages` WRITE;
/*!40000 ALTER TABLE `beverages` DISABLE KEYS */;
INSERT INTO `beverages` VALUES ('ab_00001',' \"Margarita\"',11.5),('ab_00002',' \"Mojito\"',12.75),('ab_00003',' \"Cosmopolitan\"',12.45),('ab_00004',' \"Porn Star Martini\"',10.1),('ab_00005',' \"Lime Gin Tonic\"',11.25),('ab_00006',' \"Bud\"',6.75),('ab_00007',' \"Miller\"',5.95),('ab_00008',' \"Corona\"',5.65),('ab_00009',' \"Allure Sauvignon Blanc\"',12.55),('ab_00010',' \"Terra Shiraz\"',11.55),('ab_00011',' \"Terra Narince\"',10.65),('ab_00012',' \"Allure Sauvignon Blanc\"',10.55),('cf_00001',' \"Coffee Latte\"',3.65),('cf_00002',' \"Coffee Mocha\"',4.15),('cf_00003',' \"White Chocolate Mocha\"',4.45),('cf_00004',' \"Freshly Brewed Coffee\"',2.1),('cf_00005',' \"Caramel Macchiato\"',4.45),('cf_00006',' \"Flat White\"',3.75),('cf_00007',' \"Caramel Frappuccino\"',3.95),('cf_00008',' \"Iced Coffee\"',2.65),('cf_00009',' \"Caramel Flan Latte\"',4.55),('sd_00001',' \"Coke\"',3),('sd_00002',' \"Diet Coke\"',3),('sd_00003',' \"Sprite\"',3),('sd_00004',' \"Ginger Ale\"',3),('sd_00005',' \"Cranberry\"',3),('sd_00006',' \"Orange Juice\"',4),('sd_00007',' \"Club Soda\"',3),('sd_00008',' \"Iced Tea\"',3),('sd_00009',' \"Energy Drink\"',5),('sd_00010',' \"Water\"',2.5),('sd_00011',' \"Milk\"',3);
/*!40000 ALTER TABLE `beverages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breakfast`
--

DROP TABLE IF EXISTS `breakfast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breakfast` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakfast`
--

LOCK TABLES `breakfast` WRITE;
/*!40000 ALTER TABLE `breakfast` DISABLE KEYS */;
INSERT INTO `breakfast` VALUES ('br_00001',' \"Mr. Presley French Toast\"',13.75),('br_00002',' \"Strawberry and Mascarpone French Toast\"',12.75),('br_00003',' \"S\'mores French Toast\"',12),('br_00004',' \"Banana Split French Toast\"',13),('br_00005',' \"Gluten-Free Cinnamon Raisin French Toast\"',11),('br_00006',' \"Brioche French Toast\"',9.5),('br_00007',' \"French Toast Sampler\"',19),('br_00008',' \"Buttermilk Pancake\"',9),('br_00009',' \"Oreo Cookie Pancake\"',11),('br_00010',' \"Bacon Pancake\"',12.5),('br_00011',' \"Churro Pancake\"',9.5),('br_00012',' \"Cinnamon Roll Pancake\"',11),('br_00013',' \"Strawberry Cheesecake Pancake\"',10),('br_00014',' \"Lemon Coconut Pancake\"',10),('br_00015',' \"Pineapple Upside Down Pancake\"',10),('br_00016',' \"Flight of 3 Pancake\"',15.5),('br_00017',' \"Shrimp and Ricotta Frittata Omelets\"',15.75),('br_00018',' \"Chicken Fennel Sausage Omelets\"',14),('br_00019',' \"Crab and Crawfish Cake Benedict\"',20),('br_00020',' \"Mushroom\'n\'Pesto Benedict\"',13);
/*!40000 ALTER TABLE `breakfast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger`
--

DROP TABLE IF EXISTS `burger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `burger` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger`
--

LOCK TABLES `burger` WRITE;
/*!40000 ALTER TABLE `burger` DISABLE KEYS */;
INSERT INTO `burger` VALUES ('bg_00001',' \"Bang Bang Burger\"',17.95),('bg_00002',' \"Breakfast Burger\"',16.95),('bg_00003',' \"Buffalo Burger\"',15.95),('bg_00004',' \"Rodeo Burger\"',16.95),('bg_00005',' \"Shep\'s Classic\"',14.95),('bg_00006',' \"Southwest Burger\"',15.95),('bg_00007',' \"Veggie Burger\"',13.95);
/*!40000 ALTER TABLE `burger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffee`
--

DROP TABLE IF EXISTS `coffee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffee` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffee`
--

LOCK TABLES `coffee` WRITE;
/*!40000 ALTER TABLE `coffee` DISABLE KEYS */;
INSERT INTO `coffee` VALUES ('cf_00001',' \"Coffee Latte\"',3.65),('cf_00002',' \"Coffee Mocha\"',4.15),('cf_00003',' \"White Chocolate Mocha\"',4.45),('cf_00004',' \"Freshly Brewed Coffee\"',2.1),('cf_00005',' \"Caramel Macchiato\"',4.45),('cf_00006',' \"Flat White\"',3.75),('cf_00007',' \"Caramel Frappuccino\"',3.95),('cf_00008',' \"Iced Coffee\"',2.65),('cf_00009',' \"Caramel Flan Latte\"',4.55);
/*!40000 ALTER TABLE `coffee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','\"Burak Yildirim\"',20,' \"05002345454\"'),('10','\"Gigi Hadid\"',27,' \"+12342342354\"'),('11','\"Bella Hadid\"',25,' \"+13234234232\"'),('12','\"Brooke Perry\"',30,' \"+1234234242\"'),('13','\"Candice Swanepoel\"',33,' \"+12342343242\"'),('14','\"Barbara Palvin\"',28,' \"+123423423452\"'),('15','\"Taylor Hill\"',26,' \"+123423423523\"'),('2','\"Mete Uz\"',21,' \"05059994343\"'),('3','\"İsmail Hakkı Yesil\"',20,' \"05324354343\"'),('4','\"Yusuf Erdemirler\"',20,' \"05555465465\"'),('5','\"Alkan Akisu\"',20,' \"04444549595\"'),('6','\"Adriana Lima\"',40,' \"+14345558675\"'),('7','\"Megan Fox\"',36,' \"+1234325234\"'),('8','\"Miranda Kerr\"',39,' \"+1342342353\"'),('9','\"Angelina Jolie\"',47,' \"+12342332523\"');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dessert`
--

DROP TABLE IF EXISTS `dessert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dessert` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dessert`
--

LOCK TABLES `dessert` WRITE;
/*!40000 ALTER TABLE `dessert` DISABLE KEYS */;
INSERT INTO `dessert` VALUES ('ds_00001',' \"Classic Cheesecake\"',8.95),('ds_00002',' \"Cookies and Cream\"',8.95),('ds_00003',' \"Chocolate Peanut Butter Cheesecake\"',9.95),('ds_00004',' \"Fudge Brownie\"',6.95);
/*!40000 ALTER TABLE `dessert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES ('bg_00001',' \"Bang Bang Burger\"',17.95),('bg_00002',' \"Breakfast Burger\"',16.95),('bg_00003',' \"Buffalo Burger\"',15.95),('bg_00004',' \"Rodeo Burger\"',16.95),('bg_00005',' \"Shep\'s Classic\"',14.95),('bg_00006',' \"Southwest Burger\"',15.95),('bg_00007',' \"Veggie Burger\"',13.95),('br_00001',' \"Mr. Presley French Toast\"',13.75),('br_00002',' \"Strawberry and Mascarpone French Toast\"',12.75),('br_00003',' \"S\'mores French Toast\"',12),('br_00004',' \"Banana Split French Toast\"',13),('br_00005',' \"Gluten-Free Cinnamon Raisin French Toast\"',11),('br_00006',' \"Brioche French Toast\"',9.5),('br_00007',' \"French Toast Sampler\"',19),('br_00008',' \"Buttermilk Pancake\"',9),('br_00009',' \"Oreo Cookie Pancake\"',11),('br_00010',' \"Bacon Pancake\"',12.5),('br_00011',' \"Churro Pancake\"',9.5),('br_00012',' \"Cinnamon Roll Pancake\"',11),('br_00013',' \"Strawberry Cheesecake Pancake\"',10),('br_00014',' \"Lemon Coconut Pancake\"',10),('br_00015',' \"Pineapple Upside Down Pancake\"',10),('br_00016',' \"Flight of 3 Pancake\"',15.5),('br_00017',' \"Shrimp and Ricotta Frittata Omelets\"',15.75),('br_00018',' \"Chicken Fennel Sausage Omelets\"',14),('br_00019',' \"Crab and Crawfish Cake Benedict\"',20),('br_00020',' \"Mushroom\'n\'Pesto Benedict\"',13),('ds_00001',' \"Classic Cheesecake\"',8.95),('ds_00002',' \"Cookies and Cream\"',8.95),('ds_00003',' \"Chocolate Peanut Butter Cheesecake\"',9.95),('ds_00004',' \"Fudge Brownie\"',6.95),('md_00001',' \"24oz Porterhouse\"',34.95),('md_000010',' \"Garlic Parmesan Wings\"',12.95),('md_00002',' \"12oz Boneless Ribeye\"',29.95),('md_00003',' \"8oz Skirt Steak\"',22.95),('md_00004',' \"12oz NY Strip\"',30.95),('md_00005',' \"8oz Filet Mignon\"',24.95),('md_00006',' \"Beef Quesedilla\"',12.95),('md_00007',' \"Grilled Chicken Quesedilla\"',12.95),('md_00008',' \"Our Famous Poutine\"',15.95),('md_00009',' \"Fiesta Spring Rolls\"',12.95),('pt_00001',' \"Fettuccine Primavera\"',14),('pt_00002',' \"Lasagna\"',15),('pt_00003',' \"Cajun Penne\"',20),('pt_00004',' \"Mac and Cheese\"',13),('pt_00005',' \"Parmigiana\"',17),('pt_00006',' \"Salsiccia\"',17),('pt_00007',' \"South Beach\"',20.5),('pt_00008',' \"Tortellini Alfredo\"',14),('pt_00009',' \"Spaghetti Bolognese\"',16),('pt_00010',' \"Wild Mushroom Ravioli\"',17),('pt_00011',' \"Linguine Rustica\"',20),('pz_00001',' \"Hand-Tossed Medium\"',11.99),('pz_00002',' \"Skinny Slice Large\"',14.99),('pz_00003',' \"Pan Pizza Personal\"',4.79),('pz_00004',' \"Stuffed Crust Large\"',16.99),('pz_00005',' \"Thin N Crispy Large\"',14.99),('pz_00006',' \"Veggie Lover\'s Pizza Medium\"',11.99),('pz_00007',' \"Pepperoni Lover\'s Pizza Medium\"',11.99),('pz_00008',' \"Supreme Pizza Large\"',14.99),('pz_00009',' \"Chicken Supreme Pizza Large\"',15.99),('pz_00010',' \"Super Supreme Pizza Large\"',17.99),('sc_00001',' \"Baked Potato\"',6.95),('sc_00002',' \"Fries\"',6.95),('sc_00003',' \"Market Veg\"',6.95),('sc_00004',' \"Onion Rings\"',6.95),('sc_00005',' \"Saffron Rice\"',6.95),('sc_00006',' \"Sweet Potato Fries\"',8.95),('sc_00007',' \"Smashed Potato\"',6.95),('sc_00008',' \"Ciabatta Garlic Bread\"',5.95),('sl_00001',' \"House Salad\"',11.99),('sl_00002',' \"Chicken Caesar\"',14.95),('sl_00003',' \"House Salad with Shrimp\"',11.95),('sl_00004',' \"Mediterranean\"',12.95);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_dish`
--

DROP TABLE IF EXISTS `main_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_dish` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_dish`
--

LOCK TABLES `main_dish` WRITE;
/*!40000 ALTER TABLE `main_dish` DISABLE KEYS */;
INSERT INTO `main_dish` VALUES ('md_00001',' \"24oz Porterhouse\"',34.95),('md_000010',' \"Garlic Parmesan Wings\"',12.95),('md_00002',' \"12oz Boneless Ribeye\"',29.95),('md_00003',' \"8oz Skirt Steak\"',22.95),('md_00004',' \"12oz NY Strip\"',30.95),('md_00005',' \"8oz Filet Mignon\"',24.95),('md_00006',' \"Beef Quesedilla\"',12.95),('md_00007',' \"Grilled Chicken Quesedilla\"',12.95),('md_00008',' \"Our Famous Poutine\"',15.95),('md_00009',' \"Fiesta Spring Rolls\"',12.95);
/*!40000 ALTER TABLE `main_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasta`
--

DROP TABLE IF EXISTS `pasta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasta` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasta`
--

LOCK TABLES `pasta` WRITE;
/*!40000 ALTER TABLE `pasta` DISABLE KEYS */;
INSERT INTO `pasta` VALUES ('pt_00001',' \"Fettuccine Primavera\"',14),('pt_00002',' \"Lasagna\"',15),('pt_00003',' \"Cajun Penne\"',20),('pt_00004',' \"Mac and Cheese\"',13),('pt_00005',' \"Parmigiana\"',17),('pt_00006',' \"Salsiccia\"',17),('pt_00007',' \"South Beach\"',20.5),('pt_00008',' \"Tortellini Alfredo\"',14),('pt_00009',' \"Spaghetti Bolognese\"',16),('pt_00010',' \"Wild Mushroom Ravioli\"',17),('pt_00011',' \"Linguine Rustica\"',20);
/*!40000 ALTER TABLE `pasta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES ('pz_00001',' \"Hand-Tossed Medium\"',11.99),('pz_00002',' \"Skinny Slice Large\"',14.99),('pz_00003',' \"Pan Pizza Personal\"',4.79),('pz_00004',' \"Stuffed Crust Large\"',16.99),('pz_00005',' \"Thin N Crispy Large\"',14.99),('pz_00006',' \"Veggie Lover\'s Pizza Medium\"',11.99),('pz_00007',' \"Pepperoni Lover\'s Pizza Medium\"',11.99),('pz_00008',' \"Supreme Pizza Large\"',14.99),('pz_00009',' \"Chicken Supreme Pizza Large\"',15.99),('pz_00010',' \"Super Supreme Pizza Large\"',17.99);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('ab_00001',' \"Margarita\"',11.5),('ab_00002',' \"Mojito\"',12.75),('ab_00003',' \"Cosmopolitan\"',12.45),('ab_00004',' \"Porn Star Martini\"',10.1),('ab_00005',' \"Lime Gin Tonic\"',11.25),('ab_00006',' \"Bud\"',6.75),('ab_00007',' \"Miller\"',5.95),('ab_00008',' \"Corona\"',5.65),('ab_00009',' \"Allure Sauvignon Blanc\"',12.55),('ab_00010',' \"Terra Shiraz\"',11.55),('ab_00011',' \"Terra Narince\"',10.65),('ab_00012',' \"Allure Sauvignon Blanc\"',10.55),('bg_00001',' \"Bang Bang Burger\"',17.95),('bg_00002',' \"Breakfast Burger\"',16.95),('bg_00003',' \"Buffalo Burger\"',15.95),('bg_00004',' \"Rodeo Burger\"',16.95),('bg_00005',' \"Shep\'s Classic\"',14.95),('bg_00006',' \"Southwest Burger\"',15.95),('bg_00007',' \"Veggie Burger\"',13.95),('br_00001',' \"Mr. Presley French Toast\"',13.75),('br_00002',' \"Strawberry and Mascarpone French Toast\"',12.75),('br_00003',' \"S\'mores French Toast\"',12),('br_00004',' \"Banana Split French Toast\"',13),('br_00005',' \"Gluten-Free Cinnamon Raisin French Toast\"',11),('br_00006',' \"Brioche French Toast\"',9.5),('br_00007',' \"French Toast Sampler\"',19),('br_00008',' \"Buttermilk Pancake\"',9),('br_00009',' \"Oreo Cookie Pancake\"',11),('br_00010',' \"Bacon Pancake\"',12.5),('br_00011',' \"Churro Pancake\"',9.5),('br_00012',' \"Cinnamon Roll Pancake\"',11),('br_00013',' \"Strawberry Cheesecake Pancake\"',10),('br_00014',' \"Lemon Coconut Pancake\"',10),('br_00015',' \"Pineapple Upside Down Pancake\"',10),('br_00016',' \"Flight of 3 Pancake\"',15.5),('br_00017',' \"Shrimp and Ricotta Frittata Omelets\"',15.75),('br_00018',' \"Chicken Fennel Sausage Omelets\"',14),('br_00019',' \"Crab and Crawfish Cake Benedict\"',20),('br_00020',' \"Mushroom\'n\'Pesto Benedict\"',13),('ds_00001',' \"Classic Cheesecake\"',8.95),('ds_00002',' \"Cookies and Cream\"',8.95),('ds_00003',' \"Chocolate Peanut Butter Cheesecake\"',9.95),('ds_00004',' \"Fudge Brownie\"',6.95),('md_00001',' \"24oz Porterhouse\"',34.95),('md_000010',' \"Garlic Parmesan Wings\"',12.95),('md_00002',' \"12oz Boneless Ribeye\"',29.95),('md_00003',' \"8oz Skirt Steak\"',22.95),('md_00004',' \"12oz NY Strip\"',30.95),('md_00005',' \"8oz Filet Mignon\"',24.95),('md_00006',' \"Beef Quesedilla\"',12.95),('md_00007',' \"Grilled Chicken Quesedilla\"',12.95),('md_00008',' \"Our Famous Poutine\"',15.95),('md_00009',' \"Fiesta Spring Rolls\"',12.95),('pt_00001',' \"Fettuccine Primavera\"',14),('pt_00002',' \"Lasagna\"',15),('pt_00003',' \"Cajun Penne\"',20),('pt_00004',' \"Mac and Cheese\"',13),('pt_00005',' \"Parmigiana\"',17),('pt_00006',' \"Salsiccia\"',17),('pt_00007',' \"South Beach\"',20.5),('pt_00008',' \"Tortellini Alfredo\"',14),('pt_00009',' \"Spaghetti Bolognese\"',16),('pt_00010',' \"Wild Mushroom Ravioli\"',17),('pt_00011',' \"Linguine Rustica\"',20),('pz_00001',' \"Hand-Tossed Medium\"',11.99),('pz_00002',' \"Skinny Slice Large\"',14.99),('pz_00003',' \"Pan Pizza Personal\"',4.79),('pz_00004',' \"Stuffed Crust Large\"',16.99),('pz_00005',' \"Thin N Crispy Large\"',14.99),('pz_00006',' \"Veggie Lover\'s Pizza Medium\"',11.99),('pz_00007',' \"Pepperoni Lover\'s Pizza Medium\"',11.99),('pz_00008',' \"Supreme Pizza Large\"',14.99),('pz_00009',' \"Chicken Supreme Pizza Large\"',15.99),('pz_00010',' \"Super Supreme Pizza Large\"',17.99),('sc_00001',' \"Baked Potato\"',6.95),('sc_00002',' \"Fries\"',6.95),('sc_00003',' \"Market Veg\"',6.95),('sc_00004',' \"Onion Rings\"',6.95),('sc_00005',' \"Saffron Rice\"',6.95),('sc_00006',' \"Sweet Potato Fries\"',8.95),('sc_00007',' \"Smashed Potato\"',6.95),('sc_00008',' \"Ciabatta Garlic Bread\"',5.95),('sd_00001',' \"House Salad\"',11.99),('sd_00002',' \"Chicken Caesar\"',14.95),('sd_00003',' \"House Salad with Shrimp\"',11.95),('sd_00004',' \"Mediterranean\"',12.95);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `receipt_id` varchar(50) NOT NULL,
  `sub_total` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES ('1',10,10,11,'card'),('2',10,10,11,'card'),('3',10,10,11,'card'),('4',100,10,110,'cash'),('5',100,15,115,'cash'),('6',150,15,175,'sodexo'),('7',150,15,165,'sodexo'),('8',10,50,15,'coupon');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salads`
--

DROP TABLE IF EXISTS `salads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salads` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salads`
--

LOCK TABLES `salads` WRITE;
/*!40000 ALTER TABLE `salads` DISABLE KEYS */;
INSERT INTO `salads` VALUES ('sl_00001',' \"House Salad\"',11.99),('sl_00002',' \"Chicken Caesar\"',14.95),('sl_00003',' \"House Salad with Shrimp\"',11.95),('sl_00004',' \"Mediterranean\"',12.95);
/*!40000 ALTER TABLE `salads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snacks`
--

DROP TABLE IF EXISTS `snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snacks` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snacks`
--

LOCK TABLES `snacks` WRITE;
/*!40000 ALTER TABLE `snacks` DISABLE KEYS */;
INSERT INTO `snacks` VALUES ('sc_00001',' \"Baked Potato\"',6.95),('sc_00002',' \"Fries\"',6.95),('sc_00003',' \"Market Veg\"',6.95),('sc_00004',' \"Onion Rings\"',6.95),('sc_00005',' \"Saffron Rice\"',6.95),('sc_00006',' \"Sweet Potato Fries\"',8.95),('sc_00007',' \"Smashed Potato\"',6.95),('sc_00008',' \"Ciabatta Garlic Bread\"',5.95);
/*!40000 ALTER TABLE `snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_drinks`
--

DROP TABLE IF EXISTS `soft_drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soft_drinks` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_drinks`
--

LOCK TABLES `soft_drinks` WRITE;
/*!40000 ALTER TABLE `soft_drinks` DISABLE KEYS */;
INSERT INTO `soft_drinks` VALUES ('sd_00001',' \"Coke\"',3),('sd_00002',' \"Diet Coke\"',3),('sd_00003',' \"Sprite\"',3),('sd_00004',' \"Ginger Ale\"',3),('sd_00005',' \"Cranberry\"',3),('sd_00006',' \"Orange Juice\"',4),('sd_00007',' \"Club Soda\"',3),('sd_00008',' \"Iced Tea\"',3),('sd_00009',' \"Energy Drink\"',5),('sd_00010',' \"Water\"',2.5),('sd_00011',' \"Milk\"',3);
/*!40000 ALTER TABLE `soft_drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `table_id` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `receipt_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  PRIMARY KEY (`table_id`),
  KEY `customer_id` (`customer_id`),
  KEY `receipt_id` (`receipt_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `tables_ibfk_2` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`receipt_id`),
  CONSTRAINT `tables_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES ('1','1','1','ab_00001'),('2','2','2','pz_00001'),('3','3','3','md_00001'),('4','1','4','md_00001'),('5','3','5','md_00001'),('6','2','6','ab_00003'),('7','2','7','ab_00003'),('8','5','8','ab_00003');
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiter`
--

DROP TABLE IF EXISTS `waiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiter` (
  `waiter_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `working_days` int DEFAULT NULL,
  PRIMARY KEY (`waiter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiter`
--

LOCK TABLES `waiter` WRITE;
/*!40000 ALTER TABLE `waiter` DISABLE KEYS */;
INSERT INTO `waiter` VALUES ('1',' \"Jack Mack\"',26,'2013-01-05 10:00:00',4),('2',' \"Tim Hutckin\"',25,'2012-04-09 10:00:00',5),('3',' \"John Murphy\"',34,'2017-02-02 10:00:00',3),('4',' \"Timothy Jenkins\"',43,'2020-01-05 10:00:00',4),('5',' \"Jonathan McRoy\"',36,'2019-07-02 10:00:00',5);
/*!40000 ALTER TABLE `waiter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 22:23:38
