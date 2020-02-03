-- MySQL dump 10.17  Distrib 10.3.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: northwind
-- ------------------------------------------------------
-- Server version	10.3.18-MariaDB-0+deb10u1

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
-- Temporary table structure for view `Quarterly Orders`
--

DROP TABLE IF EXISTS `Quarterly Orders`;
/*!50001 DROP VIEW IF EXISTS `Quarterly Orders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Quarterly Orders` (
  `CustomerID` tinyint NOT NULL,
  `CompanyName` tinyint NOT NULL,
  `City` tinyint NOT NULL,
  `Country` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_lastorderdate`
--

DROP TABLE IF EXISTS `v_lastorderdate`;
/*!50001 DROP VIEW IF EXISTS `v_lastorderdate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_lastorderdate` (
  `lastorder` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_media_vendite_prodotti_mese`
--

DROP TABLE IF EXISTS `v_media_vendite_prodotti_mese`;
/*!50001 DROP VIEW IF EXISTS `v_media_vendite_prodotti_mese`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_media_vendite_prodotti_mese` (
  `ProductID` tinyint NOT NULL,
  `anno` tinyint NOT NULL,
  `mese` tinyint NOT NULL,
  `media` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_media_vendite_prodotti_mese_OK`
--

DROP TABLE IF EXISTS `v_media_vendite_prodotti_mese_OK`;
/*!50001 DROP VIEW IF EXISTS `v_media_vendite_prodotti_mese_OK`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_media_vendite_prodotti_mese_OK` (
  `productid` tinyint NOT NULL,
  `mediamese` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_order_details_all`
--

DROP TABLE IF EXISTS `v_order_details_all`;
/*!50001 DROP VIEW IF EXISTS `v_order_details_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_order_details_all` (
  `OrderID` tinyint NOT NULL,
  `CustomerID` tinyint NOT NULL,
  `EmployeeID` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `RequiredDate` tinyint NOT NULL,
  `ShippedDate` tinyint NOT NULL,
  `ShipVia` tinyint NOT NULL,
  `Freight` tinyint NOT NULL,
  `ShipName` tinyint NOT NULL,
  `ShipAddress` tinyint NOT NULL,
  `ShipCity` tinyint NOT NULL,
  `ShipRegion` tinyint NOT NULL,
  `ShipPostalCode` tinyint NOT NULL,
  `ShipCountry` tinyint NOT NULL,
  `ProductID` tinyint NOT NULL,
  `UnitPrice` tinyint NOT NULL,
  `Quantity` tinyint NOT NULL,
  `Discount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ordini_orfani`
--

DROP TABLE IF EXISTS `v_ordini_orfani`;
/*!50001 DROP VIEW IF EXISTS `v_ordini_orfani`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ordini_orfani` (
  `OrderID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_riordino_prodotti`
--

DROP TABLE IF EXISTS `v_riordino_prodotti`;
/*!50001 DROP VIEW IF EXISTS `v_riordino_prodotti`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_riordino_prodotti` (
  `ProductID` tinyint NOT NULL,
  `categoria` tinyint NOT NULL,
  `prodotto` tinyint NOT NULL,
  `qtamagazzino` tinyint NOT NULL,
  `UnitsOnOrder` tinyint NOT NULL,
  `riordino2` tinyint NOT NULL,
  `mediamese` tinyint NOT NULL,
  `riordino` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Quarterly Orders`
--

/*!50001 DROP TABLE IF EXISTS `Quarterly Orders`*/;
/*!50001 DROP VIEW IF EXISTS `Quarterly Orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Quarterly Orders` AS select distinct `Customers`.`CustomerID` AS `CustomerID`,`Customers`.`CompanyName` AS `CompanyName`,`Customers`.`City` AS `City`,`Customers`.`Country` AS `Country` from (`Customers` join `Orders` on(`Customers`.`CustomerID` = `Orders`.`CustomerID`)) where `Orders`.`OrderDate` between '1997-01-01' and '1997-12-31' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_lastorderdate`
--

/*!50001 DROP TABLE IF EXISTS `v_lastorderdate`*/;
/*!50001 DROP VIEW IF EXISTS `v_lastorderdate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_lastorderdate` AS select max(`Orders`.`OrderDate`) AS `lastorder` from `Orders` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_media_vendite_prodotti_mese`
--

/*!50001 DROP TABLE IF EXISTS `v_media_vendite_prodotti_mese`*/;
/*!50001 DROP VIEW IF EXISTS `v_media_vendite_prodotti_mese`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_media_vendite_prodotti_mese` AS select `od`.`ProductID` AS `ProductID`,year(`o`.`OrderDate`) AS `anno`,month(`o`.`OrderDate`) AS `mese`,avg(`od`.`Quantity`) AS `media` from (((`Orders` `o` join `OrderDetails` `od` on(`o`.`OrderID` = `od`.`OrderID`)) join `v_lastorderdate`) join `t_Options` `op`) where to_days(`v_lastorderdate`.`lastorder`) - to_days(`o`.`OrderDate`) <= 30 * `op`.`mesi_calcolo_riordino` group by `od`.`ProductID`,year(`o`.`OrderDate`),month(`o`.`OrderDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_media_vendite_prodotti_mese_OK`
--

/*!50001 DROP TABLE IF EXISTS `v_media_vendite_prodotti_mese_OK`*/;
/*!50001 DROP VIEW IF EXISTS `v_media_vendite_prodotti_mese_OK`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_media_vendite_prodotti_mese_OK` AS select `v_media_vendite_prodotti_mese`.`ProductID` AS `productid`,avg(`v_media_vendite_prodotti_mese`.`media`) AS `mediamese` from `v_media_vendite_prodotti_mese` group by `v_media_vendite_prodotti_mese`.`ProductID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_order_details_all`
--

/*!50001 DROP TABLE IF EXISTS `v_order_details_all`*/;
/*!50001 DROP VIEW IF EXISTS `v_order_details_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_order_details_all` AS select `o`.`OrderID` AS `OrderID`,`o`.`CustomerID` AS `CustomerID`,`o`.`EmployeeID` AS `EmployeeID`,`o`.`OrderDate` AS `OrderDate`,`o`.`RequiredDate` AS `RequiredDate`,`o`.`ShippedDate` AS `ShippedDate`,`o`.`ShipVia` AS `ShipVia`,`o`.`Freight` AS `Freight`,`o`.`ShipName` AS `ShipName`,`o`.`ShipAddress` AS `ShipAddress`,`o`.`ShipCity` AS `ShipCity`,`o`.`ShipRegion` AS `ShipRegion`,`o`.`ShipPostalCode` AS `ShipPostalCode`,`o`.`ShipCountry` AS `ShipCountry`,`od`.`ProductID` AS `ProductID`,`od`.`UnitPrice` AS `UnitPrice`,`od`.`Quantity` AS `Quantity`,`od`.`Discount` AS `Discount` from (`Orders` `o` join `OrderDetails` `od` on(`o`.`OrderID` = `od`.`OrderID`)) union select `o`.`OrderID` AS `OrderID`,`o`.`CustomerID` AS `CustomerID`,`o`.`EmployeeID` AS `EmployeeID`,`o`.`OrderDate` AS `OrderDate`,`o`.`RequiredDate` AS `RequiredDate`,`o`.`ShippedDate` AS `ShippedDate`,`o`.`ShipVia` AS `ShipVia`,`o`.`Freight` AS `Freight`,`o`.`ShipName` AS `ShipName`,`o`.`ShipAddress` AS `ShipAddress`,`o`.`ShipCity` AS `ShipCity`,`o`.`ShipRegion` AS `ShipRegion`,`o`.`ShipPostalCode` AS `ShipPostalCode`,`o`.`ShipCountry` AS `ShipCountry`,`od`.`ProductID` AS `ProductID`,`od`.`UnitPrice` AS `UnitPrice`,`od`.`Quantity` AS `Quantity`,`od`.`Discount` AS `Discount` from (`OrdersOld` `o` join `OrderDetailsOld` `od` on(`o`.`OrderID` = `od`.`OrderID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ordini_orfani`
--

/*!50001 DROP TABLE IF EXISTS `v_ordini_orfani`*/;
/*!50001 DROP VIEW IF EXISTS `v_ordini_orfani`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ordini_orfani` AS select `o`.`OrderID` AS `OrderID` from (`Orders` `o` left join `OrderDetails` `od` on(`o`.`OrderID` = `od`.`OrderID`)) where `od`.`OrderID` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_riordino_prodotti`
--

/*!50001 DROP TABLE IF EXISTS `v_riordino_prodotti`*/;
/*!50001 DROP VIEW IF EXISTS `v_riordino_prodotti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tss`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_riordino_prodotti` AS select `p`.`ProductID` AS `ProductID`,`c`.`CategoryName` AS `categoria`,`p`.`ProductName` AS `prodotto`,`p`.`UnitsInStock` AS `qtamagazzino`,`p`.`UnitsOnOrder` AS `UnitsOnOrder`,`p`.`ReorderLevel` * 2 + (`p`.`ReorderLevel` - `p`.`UnitsInStock`) AS `riordino2`,`v`.`mediamese` AS `mediamese`,`p`.`ReorderLevel` - `p`.`UnitsInStock` + `v`.`mediamese` - `p`.`UnitsOnOrder` AS `riordino` from ((`Products` `p` join `Categories` `c` on(`p`.`CategoryID` = `c`.`CategoryID`)) join `v_media_vendite_prodotti_mese_OK` `v` on(`v`.`productid` = `p`.`ProductID`)) where `p`.`ReorderLevel` - `p`.`UnitsInStock` + `v`.`mediamese` - `p`.`UnitsOnOrder` >= 0 order by `c`.`CategoryName`,`p`.`ProductName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03 10:48:04
