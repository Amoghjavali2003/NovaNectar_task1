-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uk_env_analysis
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
-- Table structure for table `agriculture`
--

DROP TABLE IF EXISTS `agriculture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agriculture` (
  `Metric_ID` int NOT NULL AUTO_INCREMENT,
  `Metric` varchar(100) DEFAULT NULL,
  `Year_2015` varchar(50) DEFAULT NULL,
  `Year_2025` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Metric_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agriculture`
--

LOCK TABLES `agriculture` WRITE;
/*!40000 ALTER TABLE `agriculture` DISABLE KEYS */;
INSERT INTO `agriculture` VALUES (1,'Total Agricultural Land (hectares)','7,00,000','6,50,000'),(2,'Major Crops','Rice, Wheat, Sugarcane','Rice, Wheat, Horticulture'),(3,'Food Grain Production (million tonnes)','1.5','1.8'),(4,'Horticulture Production (million tonnes)','0.5','1.2');
/*!40000 ALTER TABLE `agriculture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_quality`
--

DROP TABLE IF EXISTS `air_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `air_quality` (
  `District_ID` int NOT NULL AUTO_INCREMENT,
  `District` varchar(100) DEFAULT NULL,
  `AQI` int DEFAULT NULL,
  `Air_Quality_Level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`District_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_quality`
--

LOCK TABLES `air_quality` WRITE;
/*!40000 ALTER TABLE `air_quality` DISABLE KEYS */;
INSERT INTO `air_quality` VALUES (1,'Almora',88,'Moderate'),(2,'Bageshwar',88,'Moderate'),(3,'Chamoli',38,'Good'),(4,'Champawat',59,'Moderate'),(5,'Dehradun',153,'Unhealthy'),(6,'Haridwar',143,'Unhealthy'),(7,'Nainital',88,'Moderate'),(8,'Pauri Garhwal',143,'Unhealthy'),(9,'Pithoragarh',26,'Good'),(10,'Rudraprayag',38,'Good'),(11,'Tehri Garhwal',88,'Moderate'),(12,'Udham Singh Nagar',67,'Moderate'),(13,'Uttarkashi',88,'Moderate');
/*!40000 ALTER TABLE `air_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodiversity_changes`
--

DROP TABLE IF EXISTS `biodiversity_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biodiversity_changes` (
  `Year` int NOT NULL,
  `Forest_Cover_Percentage` float DEFAULT NULL,
  `Plant_Species_Count` int DEFAULT NULL,
  `Animal_Species_Count` int DEFAULT NULL,
  `Microorganisms_Count` int DEFAULT NULL,
  `Endangered_Species_Count` int DEFAULT NULL,
  PRIMARY KEY (`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodiversity_changes`
--

LOCK TABLES `biodiversity_changes` WRITE;
/*!40000 ALTER TABLE `biodiversity_changes` DISABLE KEYS */;
INSERT INTO `biodiversity_changes` VALUES (1900,80,7150,700,500,5),(1925,78,6900,690,520,7),(1950,75,6550,660,550,10),(1975,70,6340,620,600,15),(2000,65,6000,580,700,25),(2025,60,5700,550,750,40);
/*!40000 ALTER TABLE `biodiversity_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `climate_conditions_uttarakhand`
--

DROP TABLE IF EXISTS `climate_conditions_uttarakhand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `climate_conditions_uttarakhand` (
  `Month` varchar(20) NOT NULL,
  `Temp_2015_F` float DEFAULT NULL,
  `Temp_2024_F` float DEFAULT NULL,
  `Rainfall_2015_in` float DEFAULT NULL,
  `Rainfall_2024_in` float DEFAULT NULL,
  `Snowfall_2015_in` float DEFAULT NULL,
  `Snowfall_2024_in` float DEFAULT NULL,
  `Humidity_2015` int DEFAULT NULL,
  `Humidity_2024` int DEFAULT NULL,
  PRIMARY KEY (`Month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate_conditions_uttarakhand`
--

LOCK TABLES `climate_conditions_uttarakhand` WRITE;
/*!40000 ALTER TABLE `climate_conditions_uttarakhand` DISABLE KEYS */;
INSERT INTO `climate_conditions_uttarakhand` VALUES ('April',75.25,79.4,2.3,3.5,1,0.5,60,55),('August',79.2,80.6,12.6,14.6,0,0,83,78),('December',55.5,53.4,3.5,4.6,3,2.4,72,68),('February',60,65,3.9,5.1,2.5,1,70,68),('January',49,52.7,4.7,5.5,4,1.5,75,70),('July',79,83.6,13.8,15,0,0,85,80),('June',87.5,88,3.9,5.9,0,0,60,58),('March',69.7,71.2,3.1,4.3,2,0.8,65,62),('May',84.25,87,1.6,2.8,0,0,55,50),('November',63,65,2,3.5,1.9,1.7,65,60),('October',69,72.8,3.1,4.5,2,0.8,70,65),('September',78.5,79,5.9,8,0,0,80,75);
/*!40000 ALTER TABLE `climate_conditions_uttarakhand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disaster_details`
--

DROP TABLE IF EXISTS `disaster_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disaster_details` (
  `Disaster_ID` int NOT NULL AUTO_INCREMENT,
  `Disaster_Name` varchar(100) DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `Cause` text,
  `Impact` text,
  PRIMARY KEY (`Disaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disaster_details`
--

LOCK TABLES `disaster_details` WRITE;
/*!40000 ALTER TABLE `disaster_details` DISABLE KEYS */;
INSERT INTO `disaster_details` VALUES (1,'Kedarnath Floods',2013,'Cloudburst, Glacial Lake Outburst Flood (GLOF)','5,700+ deaths, massive destruction in Kedarnath'),(2,'Uttarkashi Earthquake',1991,'6.8 magnitude earthquake','768 deaths, 3,000+ homes destroyed'),(3,'Malpa Landslide',1998,'Heavy rainfall, unstable terrain','221 deaths, entire village wiped out'),(4,'Joshimath Land Subsidence',2023,'Unscientific construction, water seepage','Buildings cracked, 600+ families displaced'),(5,'Chamoli Flash Floods',2021,'Glacier collapse, climate change','80+ deaths, power projects destroyed');
/*!40000 ALTER TABLE `disaster_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `Metric_ID` int NOT NULL AUTO_INCREMENT,
  `Metric` varchar(100) DEFAULT NULL,
  `Year_2015` varchar(50) DEFAULT NULL,
  `Year_2025` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Metric_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'Literacy Rate','78.82%','85%'),(2,'Number of Universities','11','18'),(3,'Primary Schools','15,000','16,500'),(4,'Higher Education Enrollments','2,00,000','3,20,000');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environmental_factors`
--

DROP TABLE IF EXISTS `environmental_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environmental_factors` (
  `Factor_ID` int NOT NULL AUTO_INCREMENT,
  `Factor` varchar(100) DEFAULT NULL,
  `Year_2000` varchar(100) DEFAULT NULL,
  `Year_2025` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Factor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmental_factors`
--

LOCK TABLES `environmental_factors` WRITE;
/*!40000 ALTER TABLE `environmental_factors` DISABLE KEYS */;
INSERT INTO `environmental_factors` VALUES (1,'Forest Cover Loss','Moderate','High due to deforestation & wildfires'),(2,'Glacial Retreat','Slow','Faster, major glaciers shrinking rapidly'),(3,'Water Pollution','Low to Moderate','High, especially in urban rivers'),(4,'Air Quality (AQI)','Good (AQI ~50-70)','Poor (AQI ~100-200 in cities)'),(5,'Urbanization Rate','~20%','~30-35%, with uncontrolled expansion'),(6,'Landslide Frequency','Low','High due to road construction & mining');
/*!40000 ALTER TABLE `environmental_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forest_cover`
--

DROP TABLE IF EXISTS `forest_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forest_cover` (
  `Type` varchar(100) NOT NULL,
  `Altitude_Range` int DEFAULT NULL,
  `Area_2000_sq_km` float DEFAULT NULL,
  `Area_2025_sq_km` float DEFAULT NULL,
  `Change_Percentage` float DEFAULT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forest_cover`
--

LOCK TABLES `forest_cover` WRITE;
/*!40000 ALTER TABLE `forest_cover` DISABLE KEYS */;
INSERT INTO `forest_cover` VALUES ('Alpine Forests',3500,5500,5046.76,-8.24),('Sub-Alpine & Temperate Forests',2500,13500,12805.2,-5.15),('Tropical Moist & Dry Deciduous Forests',1100,6800,6451.04,-5.13),('Tropical Rainforests',500,25800,24303,-5.8);
/*!40000 ALTER TABLE `forest_cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geological_factors`
--

DROP TABLE IF EXISTS `geological_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geological_factors` (
  `Year` int NOT NULL,
  `Dominant_Rock_Types` varchar(255) DEFAULT NULL,
  `Major_Rock_Complexes` varchar(255) DEFAULT NULL,
  `Lateral_Facies_Changes` text,
  `Landslides_per_Year` int DEFAULT NULL,
  PRIMARY KEY (`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geological_factors`
--

LOCK TABLES `geological_factors` WRITE;
/*!40000 ALTER TABLE `geological_factors` DISABLE KEYS */;
INSERT INTO `geological_factors` VALUES (1900,'Granite, Quartzite, Limestone','Lesser Himalaya Complex, Tethyan Sedimentary Sequence','Minimal sediment shifts',8),(1925,'Granite, Quartzite, Limestone','Lesser Himalaya Complex, Tethyan Sedimentary Sequence','Slow changes in river deposits',12),(1950,'Schist, Phyllite, Sandstone','Higher Himalayan Crystalline, Lesser Himalaya Complex','Increased erosion in valleys',17),(1975,'Schist, Phyllite, Sandstone','Higher Himalayan Crystalline, Lesser Himalaya Complex','River sedimentation altering valley structure',23),(2000,'Gneiss, Schist, Dolomite','Higher Himalayan Crystalline, Siwalik Foreland Basin','Accelerated facies shifts due to human activities',40),(2025,'Gneiss, Schist, Dolomite','Higher Himalayan Crystalline, Siwalik Foreland Basin','Major sediment transport in rivers due to glacier retreat',65);
/*!40000 ALTER TABLE `geological_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_use_urbanization`
--

DROP TABLE IF EXISTS `land_use_urbanization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_use_urbanization` (
  `Category` varchar(50) NOT NULL,
  `Description` text,
  `Year_2000` float DEFAULT NULL,
  `Year_2025` float DEFAULT NULL,
  `Change_Percentage` float DEFAULT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_use_urbanization`
--

LOCK TABLES `land_use_urbanization` WRITE;
/*!40000 ALTER TABLE `land_use_urbanization` DISABLE KEYS */;
INSERT INTO `land_use_urbanization` VALUES ('Agricultural Land','Primarily in the plains and Tarai region',8500,7800,-8.2),('Barren Land','Steep mountainous terrain with little vegetation',6000,6500,8.3),('Forest Cover','Majority of the land covered by forests',35600,34500,-3.1),('Urban Area','Expanding cities, towns, and settlements',1500,2800,86.7),('Water Bodies','Lakes, rivers, and reservoirs',1200,1100,-8.3);
/*!40000 ALTER TABLE `land_use_urbanization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preparedness_measures`
--

DROP TABLE IF EXISTS `preparedness_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preparedness_measures` (
  `Measure_ID` int NOT NULL AUTO_INCREMENT,
  `Disaster_ID` int DEFAULT NULL,
  `Aspect` varchar(100) DEFAULT NULL,
  `Year_2000` text,
  `Year_2025` text,
  `Trend` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Measure_ID`),
  KEY `Disaster_ID` (`Disaster_ID`),
  CONSTRAINT `preparedness_measures_ibfk_1` FOREIGN KEY (`Disaster_ID`) REFERENCES `disaster_details` (`Disaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preparedness_measures`
--

LOCK TABLES `preparedness_measures` WRITE;
/*!40000 ALTER TABLE `preparedness_measures` DISABLE KEYS */;
INSERT INTO `preparedness_measures` VALUES (1,1,'Disaster Awareness','Basic awareness, limited public training','Regular drills, awareness campaigns in schools & communities','Improved'),(2,1,'Early Warning Systems','Basic meteorological forecasts, radio alerts','Satellite monitoring, AI-based forecasting, mobile alerts','Highly Improved'),(3,1,'Infrastructure Planning','Poor enforcement of seismic building codes','Stronger regulations, seismic retrofitting mandatory','Improved'),(4,2,'Disaster Response','Reactive, slow response times','NDRF, SDRF, local rapid response teams','Highly Improved'),(5,2,'Policy & Legislation','National Disaster Management Act introduced in 2005','Stronger enforcement, climate adaptation policies integrated','Improved'),(6,3,'Technology in Risk Management','GIS mapping introduced, but limited use','AI-based flood and landslide prediction, IoT sensors in risky zones','Highly Improved'),(7,3,'Disaster Relief Efforts','Response within days','Immediate response teams, online fund allocations','Improved'),(8,4,'Climate Change Adaptation','Limited consideration in disaster policies','Integrated into risk management strategies','Improved');
/*!40000 ALTER TABLE `preparedness_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_factors`
--

DROP TABLE IF EXISTS `risk_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_factors` (
  `Risk_ID` int NOT NULL AUTO_INCREMENT,
  `Disaster_ID` int DEFAULT NULL,
  `Risk_Factor` varchar(100) DEFAULT NULL,
  `Year_2000` text,
  `Year_2025` text,
  `Trend` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Risk_ID`),
  KEY `Disaster_ID` (`Disaster_ID`),
  CONSTRAINT `risk_factors_ibfk_1` FOREIGN KEY (`Disaster_ID`) REFERENCES `disaster_details` (`Disaster_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_factors`
--

LOCK TABLES `risk_factors` WRITE;
/*!40000 ALTER TABLE `risk_factors` DISABLE KEYS */;
INSERT INTO `risk_factors` VALUES (1,5,'Deforestation','Forest loss due to population growth','Urban expansion, hydropower projects affecting ecosystems','Increased Risk'),(2,5,'Landslides & Soil Erosion','Increased due to road construction & deforestation','More frequent due to infrastructure expansion & climate change','Increased Risk'),(3,5,'Earthquake Preparedness','Basic retrofitting of buildings','Seismic codes strictly implemented in new constructions','Decreased Risk'),(4,5,'Floods & Glacial Outburst','Flooding due to glacier melting, but not extreme','Increased glacier melting due to rising temperatures','Increased Risk'),(5,5,'Forest Fires','Moderate frequency, mostly natural causes','More frequent due to rising temperatures and human activities','Increased Risk'),(6,5,'Urbanization & Construction','Expanding, but still controlled','Unplanned urbanization leading to environmental stress','Increased Risk'),(7,5,'Hydropower & Dams','Few large projects, minimal impact','Increased dam construction leading to higher risks','Increased Risk'),(8,5,'Road & Tunnel Construction','Limited expansion, minimal environmental damage','Rapid expansion increasing landslide risks','Increased Risk');
/*!40000 ALTER TABLE `risk_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topographical_factors`
--

DROP TABLE IF EXISTS `topographical_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topographical_factors` (
  `Year` int NOT NULL,
  `Glacier_Area_sqkm` int DEFAULT NULL,
  `Number_of_Valleys` int DEFAULT NULL,
  `Major_Lakes_Count` int DEFAULT NULL,
  `Canyon_Depth_m` int DEFAULT NULL,
  `Stream_Flow_Rate_m3s` int DEFAULT NULL,
  PRIMARY KEY (`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topographical_factors`
--

LOCK TABLES `topographical_factors` WRITE;
/*!40000 ALTER TABLE `topographical_factors` DISABLE KEYS */;
INSERT INTO `topographical_factors` VALUES (1900,2500,25,15,200,1500),(1925,2450,25,15,198,1480),(1950,2400,24,14,195,1460),(1975,2300,24,13,190,1400),(2000,2100,23,12,180,1350),(2025,1900,22,10,170,1300);
/*!40000 ALTER TABLE `topographical_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourism`
--

DROP TABLE IF EXISTS `tourism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourism` (
  `Metric_ID` int NOT NULL AUTO_INCREMENT,
  `Metric` varchar(100) DEFAULT NULL,
  `Year_2015` varchar(50) DEFAULT NULL,
  `Year_2025` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Metric_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourism`
--

LOCK TABLES `tourism` WRITE;
/*!40000 ALTER TABLE `tourism` DISABLE KEYS */;
INSERT INTO `tourism` VALUES (1,'Domestic Tourists (in million)','22','35'),(2,'International Tourists','1,50,000','5,00,000'),(3,'Tourism Revenue (INR in Cr)','23,000','45,000'),(4,'Employment in Tourism','2,00,000','3,50,000');
/*!40000 ALTER TABLE `tourism` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uttarakhand_analysis`
--

DROP TABLE IF EXISTS `uttarakhand_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uttarakhand_analysis` (
  `Year` int NOT NULL,
  `Forest_Cover_Percentage` decimal(5,2) DEFAULT NULL,
  `Plant_Species` int DEFAULT NULL,
  `Animal_Species` int DEFAULT NULL,
  `Microorganisms` int DEFAULT NULL,
  `Endangered_Species` int DEFAULT NULL,
  `Avg_Temperature` decimal(5,2) DEFAULT NULL,
  `Avg_Humidity` decimal(5,2) DEFAULT NULL,
  `Annual_Snowfall` decimal(5,2) DEFAULT NULL,
  `Water_Bodies_SqKm` decimal(6,2) DEFAULT NULL,
  `Urban_Area_SqKm` decimal(6,2) DEFAULT NULL,
  `Agricultural_Land_SqKm` decimal(6,2) DEFAULT NULL,
  `Barren_Land_SqKm` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uttarakhand_analysis`
--

LOCK TABLES `uttarakhand_analysis` WRITE;
/*!40000 ALTER TABLE `uttarakhand_analysis` DISABLE KEYS */;
INSERT INTO `uttarakhand_analysis` VALUES (1900,80.00,7150,700,500,5,14.00,75.00,400.00,1500.00,500.00,8800.00,5500.00),(1925,78.00,6900,690,520,7,14.50,74.00,380.00,1480.00,700.00,8600.00,5700.00),(1950,75.00,6550,660,550,10,15.00,72.00,350.00,1400.00,900.00,8200.00,5900.00),(1975,70.00,6340,620,600,15,16.00,70.00,320.00,1300.00,1200.00,7800.00,6200.00),(2000,65.00,6000,580,700,25,18.00,68.00,280.00,1200.00,1500.00,7500.00,6500.00),(2025,60.00,5700,550,750,40,21.00,60.00,250.00,1100.00,2800.00,7000.00,6800.00);
/*!40000 ALTER TABLE `uttarakhand_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_quality`
--

DROP TABLE IF EXISTS `water_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water_quality` (
  `Water_ID` int NOT NULL AUTO_INCREMENT,
  `River_Name` varchar(100) DEFAULT NULL,
  `Major_Locations` varchar(200) DEFAULT NULL,
  `WQI` varchar(50) DEFAULT NULL,
  `Water_Quality_Status` varchar(50) DEFAULT NULL,
  `Key_Issues` text,
  PRIMARY KEY (`Water_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_quality`
--

LOCK TABLES `water_quality` WRITE;
/*!40000 ALTER TABLE `water_quality` DISABLE KEYS */;
INSERT INTO `water_quality` VALUES (1,'Ganga','Haridwar, Rishikesh','100-150','Moderate to Good','High pilgrimage activity, untreated sewage, industrial waste'),(2,'Yamuna','Vikasnagar, Kalsi','90-140','Moderate','Agricultural runoff, industrial pollutants'),(3,'Tons','Dehradun, Chakrata','110-160','Good','Seasonal nitrate fluctuations, some turbidity'),(4,'Bhagirathi','Gangotri, Tehri','80-130','Moderate to Good','Glacial melt influence, hydropower projects'),(5,'Alaknanda','Chamoli, Rudraprayag','90-140','Moderate','Hydropower projects, occasional contamination'),(6,'Mandakini','Kedarnath, Rudraprayag','100-150','Good','Natural sediment load, minor tourism impact'),(7,'Saryu','Bageshwar','120-160','Good','Minor pollution, relatively cleaner river'),(8,'Kosi','Almora, Ramnagar','90-140','Moderate','Agricultural runoff, increasing urbanization'),(9,'Ramganga','Pithoragarh, Jim Corbett','80-130','Moderate','Pollution from human settlements, deforestation effects'),(10,'Gola','Haldwani, Nainital','100-150','Moderate to Good','Seasonal variations, urban runoff');
/*!40000 ALTER TABLE `water_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_resources`
--

DROP TABLE IF EXISTS `water_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water_resources` (
  `Resource_Name` varchar(50) NOT NULL,
  `Description` text,
  `Year_2000` varchar(50) DEFAULT NULL,
  `Year_2025` varchar(50) DEFAULT NULL,
  `Change_Percentage` float DEFAULT NULL,
  PRIMARY KEY (`Resource_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_resources`
--

LOCK TABLES `water_resources` WRITE;
/*!40000 ALTER TABLE `water_resources` DISABLE KEYS */;
INSERT INTO `water_resources` VALUES ('Glacier Area','Covers the Himalayan region, source of major rivers','2,500 sq. km','1,900 sq. km',-24),('Groundwater Level','Depth of groundwater reserves','40m depth','60m depth',-50),('Major Lakes','Natural and artificial lakes','12 lakes','10 lakes',-16.7),('Number of Major Rivers','Large rivers originating from glaciers','16','16',0),('River Flow Rate','Average stream flow rate (m³/s)','1,500 m³/s','1,300 m³/s',-13.3),('Springs','Natural water sources in foothills','2,000+','1,600+',-20);
/*!40000 ALTER TABLE `water_resources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 16:19:32
