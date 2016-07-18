-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2016 at 10:36 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SS_art-and-mastery`
--

-- --------------------------------------------------------

--
-- Table structure for table `Catalog`
--

DROP TABLE IF EXISTS `Catalog`;
CREATE TABLE `Catalog` (
  `ID` int(11) NOT NULL,
  `CategoryImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryTitle` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Catalog`
--

TRUNCATE TABLE `Catalog`;
--
-- Dumping data for table `Catalog`
--

INSERT INTO `Catalog` (`ID`, `CategoryImageID`, `CategoryTitle`) VALUES
(2, 0, NULL),
(22, 25, 'Chairs & Seating'),
(23, 33, 'Sofas & Lounges'),
(24, 26, 'Bed Frames'),
(25, 27, 'Tables'),
(26, 28, 'Mirrors'),
(27, 29, 'Pedestals'),
(28, 30, 'Wardrobes & Storage'),
(29, 31, 'Mantles'),
(30, 32, 'Fabrics');

-- --------------------------------------------------------

--
-- Table structure for table `CatalogCategory`
--

DROP TABLE IF EXISTS `CatalogCategory`;
CREATE TABLE `CatalogCategory` (
  `ID` int(11) NOT NULL,
  `CategoryTitle` mediumtext,
  `CategoryImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `CatalogCategory`
--

TRUNCATE TABLE `CatalogCategory`;
--
-- Dumping data for table `CatalogCategory`
--

INSERT INTO `CatalogCategory` (`ID`, `CategoryTitle`, `CategoryImageID`) VALUES
(22, 'Chairs & Seating', 34),
(23, 'Sofas & Lounges', 33),
(24, 'Bed Frames', 26),
(25, 'Tables', 27),
(26, 'Mirrors', 28),
(27, 'Pedestals', 29),
(28, 'Wardrobes & Storage', 30),
(29, 'Mantles', 31),
(30, 'Fabrics', 32);

-- --------------------------------------------------------

--
-- Table structure for table `CatalogCategory_Live`
--

DROP TABLE IF EXISTS `CatalogCategory_Live`;
CREATE TABLE `CatalogCategory_Live` (
  `ID` int(11) NOT NULL,
  `CategoryTitle` mediumtext,
  `CategoryImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `CatalogCategory_Live`
--

TRUNCATE TABLE `CatalogCategory_Live`;
--
-- Dumping data for table `CatalogCategory_Live`
--

INSERT INTO `CatalogCategory_Live` (`ID`, `CategoryTitle`, `CategoryImageID`) VALUES
(22, 'Chairs & Seating', 34),
(23, 'Sofas & Lounges', 33),
(24, 'Bed Frames', 26),
(25, 'Tables', 27),
(26, 'Mirrors', 28),
(27, 'Pedestals', 29),
(28, 'Wardrobes & Storage', 30),
(29, 'Mantles', 31),
(30, 'Fabrics', 32);

-- --------------------------------------------------------

--
-- Table structure for table `CatalogCategory_versions`
--

DROP TABLE IF EXISTS `CatalogCategory_versions`;
CREATE TABLE `CatalogCategory_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CategoryTitle` mediumtext,
  `CategoryImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `CatalogCategory_versions`
--

TRUNCATE TABLE `CatalogCategory_versions`;
--
-- Dumping data for table `CatalogCategory_versions`
--

INSERT INTO `CatalogCategory_versions` (`ID`, `RecordID`, `Version`, `CategoryTitle`, `CategoryImageID`) VALUES
(1, 22, 8, 'Chairs & Seating', 34),
(2, 23, 7, 'Sofas & Lounges', 33),
(3, 24, 5, 'Bed Frames', 26),
(4, 25, 3, 'Tables', 27),
(5, 26, 3, 'Mirrors', 28),
(6, 27, 3, 'Pedestals', 29),
(7, 28, 3, 'Wardrobes & Storage', 30),
(8, 29, 3, 'Mantles', 31),
(9, 30, 3, 'Fabrics', 32),
(10, 40, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Catalog_Live`
--

DROP TABLE IF EXISTS `Catalog_Live`;
CREATE TABLE `Catalog_Live` (
  `ID` int(11) NOT NULL,
  `CategoryImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryTitle` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Catalog_Live`
--

TRUNCATE TABLE `Catalog_Live`;
--
-- Dumping data for table `Catalog_Live`
--

INSERT INTO `Catalog_Live` (`ID`, `CategoryImageID`, `CategoryTitle`) VALUES
(2, 0, NULL),
(22, 25, 'Chairs & Seating'),
(23, 33, 'Sofas & Lounges'),
(24, 26, 'Bed Frames'),
(25, 27, 'Tables'),
(26, 28, 'Mirrors'),
(27, 29, 'Pedestals'),
(28, 30, 'Wardrobes & Storage'),
(29, 31, 'Mantles'),
(30, 32, 'Fabrics');

-- --------------------------------------------------------

--
-- Table structure for table `Catalog_versions`
--

DROP TABLE IF EXISTS `Catalog_versions`;
CREATE TABLE `Catalog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CategoryImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryTitle` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Catalog_versions`
--

TRUNCATE TABLE `Catalog_versions`;
--
-- Dumping data for table `Catalog_versions`
--

INSERT INTO `Catalog_versions` (`ID`, `RecordID`, `Version`, `CategoryImageID`, `CategoryTitle`) VALUES
(1, 19, 2, 0, NULL),
(2, 20, 1, 0, NULL),
(3, 20, 2, 0, NULL),
(4, 21, 1, 0, NULL),
(5, 22, 1, 0, NULL),
(6, 22, 2, 0, NULL),
(7, 23, 1, 0, NULL),
(8, 23, 2, 0, NULL),
(9, 22, 3, 0, 'Chairs & Seating'),
(10, 22, 4, 25, 'Chairs & Seating'),
(11, 24, 1, 0, NULL),
(12, 24, 2, 26, 'Bed Frames'),
(13, 25, 1, 0, NULL),
(14, 25, 2, 27, 'Tables'),
(15, 26, 1, 0, NULL),
(16, 26, 2, 28, 'Mirrors'),
(17, 27, 1, 0, NULL),
(18, 27, 2, 29, 'Pedestals'),
(19, 28, 1, 0, NULL),
(20, 28, 2, 30, 'Wardrobes & Storage'),
(21, 29, 1, 0, NULL),
(22, 29, 2, 31, 'Mantles'),
(23, 30, 1, 0, NULL),
(24, 30, 2, 32, 'Fabrics'),
(25, 23, 3, 33, NULL),
(26, 31, 1, 0, NULL),
(27, 23, 4, 33, 'Sofas & Lounges'),
(28, 2, 9, 0, NULL),
(29, 24, 4, 26, 'Bed Frames'),
(30, 23, 6, 33, 'Sofas & Lounges'),
(31, 22, 6, 25, 'Chairs & Seating');

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

DROP TABLE IF EXISTS `Contact`;
CREATE TABLE `Contact` (
  `ID` int(11) NOT NULL,
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Contact`
--

TRUNCATE TABLE `Contact`;
--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`ID`, `PhoneNumber`, `Email`, `MugshotID`) VALUES
(7, '416.999.2075', 'andrewtravis@artandmastery.com', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Contact_Live`
--

DROP TABLE IF EXISTS `Contact_Live`;
CREATE TABLE `Contact_Live` (
  `ID` int(11) NOT NULL,
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Contact_Live`
--

TRUNCATE TABLE `Contact_Live`;
--
-- Dumping data for table `Contact_Live`
--

INSERT INTO `Contact_Live` (`ID`, `PhoneNumber`, `Email`, `MugshotID`) VALUES
(7, '416.999.2075', 'andrewtravis@artandmastery.com', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Contact_versions`
--

DROP TABLE IF EXISTS `Contact_versions`;
CREATE TABLE `Contact_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Contact_versions`
--

TRUNCATE TABLE `Contact_versions`;
--
-- Dumping data for table `Contact_versions`
--

INSERT INTO `Contact_versions` (`ID`, `RecordID`, `Version`, `PhoneNumber`, `Email`, `MugshotID`) VALUES
(1, 7, 1, NULL, NULL, 0),
(2, 7, 2, NULL, NULL, 0),
(3, 7, 3, NULL, NULL, 16),
(4, 7, 4, '416.999.2075', 'andrewtravis@artandmastery.com', 16),
(5, 7, 5, '416.999.2075', 'andrewtravis@artandmastery.com', 16);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ErrorPage`
--

TRUNCATE TABLE `ErrorPage`;
--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ErrorPage_Live`
--

TRUNCATE TABLE `ErrorPage_Live`;
--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ErrorPage_versions`
--

TRUNCATE TABLE `ErrorPage_versions`;
--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `File`
--

TRUNCATE TABLE `File`;
--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0),
(3, 'Folder', '2016-06-20 16:43:00', '2016-06-20 16:43:00', 'Carousel', 'Carousel', 'assets/Uploads/Carousel/', NULL, 1, 1, 1),
(4, 'Image', '2016-06-20 16:43:00', '2016-06-20 16:43:00', '27-1.JPG', '27 1', 'assets/Uploads/Carousel/27-1.JPG', NULL, 1, 3, 1),
(5, 'Image', '2016-06-20 16:43:04', '2016-06-20 16:43:04', '27-2.JPG', '27 2', 'assets/Uploads/Carousel/27-2.JPG', NULL, 1, 3, 1),
(6, 'Image', '2016-06-20 16:43:22', '2016-06-20 16:43:22', '27-copy.JPG', '27 copy', 'assets/Uploads/Carousel/27-copy.JPG', NULL, 1, 3, 1),
(7, 'Image', '2016-06-20 16:43:25', '2016-06-20 16:43:25', '27-copy2.JPG', '27 copy2', 'assets/Uploads/Carousel/27-copy2.JPG', NULL, 1, 3, 1),
(8, 'Image', '2016-06-20 17:17:09', '2016-06-20 17:17:09', 'placehold.png', 'placehold', 'assets/Uploads/Carousel/placehold.png', NULL, 1, 3, 1),
(9, 'Image', '2016-06-20 17:19:45', '2016-06-20 17:19:45', 'placehold2.png', 'placehold2', 'assets/Uploads/Carousel/placehold2.png', NULL, 1, 3, 1),
(10, 'Image', '2016-06-20 17:19:57', '2016-06-20 17:19:57', 'placehold3.png', 'placehold3', 'assets/Uploads/Carousel/placehold3.png', NULL, 1, 3, 1),
(11, 'Image', '2016-06-20 17:28:35', '2016-06-20 17:28:35', 'placehold4.png', 'placehold4', 'assets/Uploads/Carousel/placehold4.png', NULL, 1, 3, 1),
(12, 'Image', '2016-06-22 12:39:17', '2016-06-22 12:39:17', 'AlyssaRosenheck2016-23-910x650.jpg', 'AlyssaRosenheck2016 23 910x650', 'assets/Uploads/Carousel/AlyssaRosenheck2016-23-910x650.jpg', NULL, 1, 3, 1),
(13, 'Image', '2016-06-22 12:39:33', '2016-06-22 12:39:33', 'ZAZA-910x650.jpg', 'ZAZA 910x650', 'assets/Uploads/Carousel/ZAZA-910x650.jpg', NULL, 1, 3, 1),
(14, 'Image', '2016-06-22 12:40:48', '2016-06-22 12:40:48', 'outstanding-decorate-a-large-living-room-wall-with-silver-floral-pattern-wallpaper-on-black-paint-ideas-be-equipped-beauty-red-sofa-sets-and-glass-table-underneath-a-modern-led-chandelier-design-as-we-910x650.jpg', 'outstanding decorate a large living room wall with silver floral pattern wallpaper on black paint ideas be equipped beauty red sofa sets and glass table underneath a modern led chandelier design as we 910x650', 'assets/Uploads/Carousel/outstanding-decorate-a-large-living-room-wall-with-silver-floral-pattern-wallpaper-on-black-paint-ideas-be-equipped-beauty-red-sofa-sets-and-glass-table-underneath-a-modern-led-chandelier-design-as-we-910x650.jpg', NULL, 1, 3, 1),
(15, 'Image', '2016-06-22 18:41:18', '2016-06-22 18:41:18', 'art-mastery-web.jpg', 'art mastery web', 'assets/Uploads/Carousel/art-mastery-web.jpg', NULL, 1, 3, 1),
(16, 'Image', '2016-06-23 09:44:21', '2016-06-23 09:44:21', 'linda-3-md.jpg', 'linda 3 md', 'assets/Uploads/linda-3-md.jpg', NULL, 1, 1, 1),
(17, 'Image', '2016-06-23 13:19:23', '2016-06-23 13:19:23', 'curl-cheat-sheet.png', 'curl cheat sheet', 'assets/Uploads/curl-cheat-sheet.png', NULL, 1, 1, 1),
(18, 'Image', '2016-06-23 13:22:12', '2016-06-23 13:22:12', 'curl-cheat-sheet2.png', 'curl cheat sheet2', 'assets/Uploads/curl-cheat-sheet2.png', NULL, 1, 1, 1),
(19, 'Image', '2016-06-23 13:22:36', '2016-06-23 13:22:36', 'ChijiokeOkafo-WallrideOverRail.jpg', 'ChijiokeOkafo WallrideOverRail', 'assets/Uploads/ChijiokeOkafo-WallrideOverRail.jpg', NULL, 1, 1, 1),
(20, 'Image', '2016-06-24 09:45:32', '2016-06-24 09:45:32', 'placeholder.png', 'placeholder', 'assets/Uploads/placeholder.png', NULL, 1, 1, 1),
(21, 'Image', '2016-06-24 09:48:31', '2016-06-24 09:48:31', 'placeholder2.png', 'placeholder2', 'assets/Uploads/placeholder2.png', NULL, 1, 1, 1),
(22, 'Image', '2016-06-24 09:49:54', '2016-06-24 09:49:54', 'placeholder3.png', 'placeholder3', 'assets/Uploads/placeholder3.png', NULL, 1, 1, 1),
(23, 'Image', '2016-06-24 09:54:45', '2016-06-24 09:54:45', 'placeholder4.png', 'placeholder4', 'assets/Uploads/placeholder4.png', NULL, 1, 1, 1),
(24, 'Image', '2016-06-24 10:00:29', '2016-06-24 10:00:29', 'placeholder5.png', 'placeholder5', 'assets/Uploads/placeholder5.png', NULL, 1, 1, 1),
(25, 'Image', '2016-06-24 10:16:30', '2016-06-24 10:16:30', 'placeholder6.png', 'placeholder6', 'assets/Uploads/placeholder6.png', NULL, 1, 1, 1),
(26, 'Image', '2016-06-24 10:18:34', '2016-06-24 10:18:34', 'placeholder7.png', 'placeholder7', 'assets/Uploads/placeholder7.png', NULL, 1, 1, 1),
(27, 'Image', '2016-06-24 10:19:06', '2016-06-24 10:19:06', 'placeholder8.png', 'placeholder8', 'assets/Uploads/placeholder8.png', NULL, 1, 1, 1),
(28, 'Image', '2016-06-24 10:20:01', '2016-06-24 10:20:01', 'placeholder9.png', 'placeholder9', 'assets/Uploads/placeholder9.png', NULL, 1, 1, 1),
(29, 'Image', '2016-06-24 10:20:39', '2016-06-24 10:20:39', 'placeholder10.png', 'placeholder10', 'assets/Uploads/placeholder10.png', NULL, 1, 1, 1),
(30, 'Image', '2016-06-24 10:21:15', '2016-06-24 10:21:15', 'placeholder11.png', 'placeholder11', 'assets/Uploads/placeholder11.png', NULL, 1, 1, 1),
(31, 'Image', '2016-06-24 10:21:44', '2016-06-24 10:21:44', 'placeholder12.png', 'placeholder12', 'assets/Uploads/placeholder12.png', NULL, 1, 1, 1),
(32, 'Image', '2016-06-24 10:22:14', '2016-06-24 10:22:14', 'placeholder13.png', 'placeholder13', 'assets/Uploads/placeholder13.png', NULL, 1, 1, 1),
(33, 'Image', '2016-06-24 10:24:34', '2016-06-24 10:24:34', 'placeholder14.png', 'placeholder14', 'assets/Uploads/placeholder14.png', NULL, 1, 1, 1),
(34, 'Image', '2016-06-25 20:12:49', '2016-06-25 20:12:49', 'placeholder15.png', 'placeholder15', 'assets/Uploads/placeholder15.png', NULL, 1, 1, 1),
(35, 'Image', '2016-06-25 20:19:32', '2016-06-25 20:19:32', 'product-placeholder.png', 'product placeholder', 'assets/Uploads/product-placeholder.png', NULL, 1, 1, 1),
(36, 'Image', '2016-06-25 20:19:35', '2016-06-25 20:19:35', 'product-placeholder2.png', 'product placeholder2', 'assets/Uploads/product-placeholder2.png', NULL, 1, 1, 1),
(37, 'Image', '2016-06-25 20:34:04', '2016-06-25 20:34:04', 'product-placeholder3.png', 'product placeholder3', 'assets/Uploads/product-placeholder3.png', NULL, 1, 1, 1),
(38, 'Image', '2016-06-25 20:34:08', '2016-06-25 20:34:08', 'product-placeholder4.png', 'product placeholder4', 'assets/Uploads/product-placeholder4.png', NULL, 1, 1, 1),
(39, 'Image', '2016-06-30 15:23:37', '2016-06-30 15:23:37', '610x440.png', '610x440', 'assets/Uploads/610x440.png', NULL, 1, 1, 1),
(40, 'Image', '2016-06-30 15:23:41', '2016-06-30 15:23:41', '610x441.png', '610x441', 'assets/Uploads/610x441.png', NULL, 1, 1, 1),
(41, 'Image', '2016-06-30 15:23:44', '2016-06-30 15:23:44', '610x442.png', '610x442', 'assets/Uploads/610x442.png', NULL, 1, 1, 1),
(42, 'Image', '2016-06-30 15:23:47', '2016-06-30 15:23:47', '610x443.png', '610x443', 'assets/Uploads/610x443.png', NULL, 1, 1, 1),
(43, 'Image', '2016-07-12 21:41:58', '2016-07-12 21:41:58', '910X650.png', '910X650', 'assets/Uploads/Carousel/910X650.png', NULL, 1, 3, 1),
(44, 'Image', '2016-07-12 21:42:19', '2016-07-12 21:42:19', '910X651.png', '910X651', 'assets/Uploads/Carousel/910X651.png', NULL, 1, 3, 1),
(45, 'Image', '2016-07-12 22:21:30', '2016-07-12 22:21:30', '610x450.png', '610x450', 'assets/Uploads/Carousel/610x450.png', NULL, 1, 3, 1),
(46, 'Image', '2016-07-12 22:23:15', '2016-07-12 22:23:15', '610x451.png', '610x451', 'assets/Uploads/Carousel/610x451.png', NULL, 1, 3, 1),
(47, 'Image', '2016-07-12 22:24:08', '2016-07-12 22:24:08', '610x452.png', '610x452', 'assets/Uploads/Carousel/610x452.png', NULL, 1, 3, 1),
(48, 'Image', '2016-07-13 09:35:20', '2016-07-13 09:35:20', '610x453.png', '610x453', 'assets/Uploads/Carousel/610x453.png', NULL, 1, 3, 1),
(49, 'Image', '2016-07-13 16:10:47', '2016-07-13 16:10:47', '300x200.png', '300x200', 'assets/Uploads/300x200.png', NULL, 1, 1, 1),
(50, 'Image', '2016-07-13 16:37:17', '2016-07-13 16:37:17', '300x201.png', '300x201', 'assets/Uploads/300x201.png', NULL, 1, 1, 1),
(51, 'Image', '2016-07-13 16:38:32', '2016-07-13 16:38:32', '610x454.png', '610x454', 'assets/Uploads/Carousel/610x454.png', NULL, 1, 3, 1),
(52, 'Image', '2016-07-13 16:43:40', '2016-07-13 16:43:40', '300x202.png', '300x202', 'assets/Uploads/300x202.png', NULL, 1, 1, 1),
(53, 'Image', '2016-07-14 20:17:30', '2016-07-14 20:17:30', 'landing-page.jpg', 'landing page', 'assets/Uploads/Carousel/landing-page.jpg', NULL, 1, 3, 1),
(54, 'Image', '2016-07-14 20:17:44', '2016-07-14 20:17:44', 'landing-page2.jpg', 'landing page2', 'assets/Uploads/Carousel/landing-page2.jpg', NULL, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Group`
--

TRUNCATE TABLE `Group`;
--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Group_Members`
--

TRUNCATE TABLE `Group_Members`;
--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Group_Roles`
--

TRUNCATE TABLE `Group_Roles`;
-- --------------------------------------------------------

--
-- Table structure for table `Home`
--

DROP TABLE IF EXISTS `Home`;
CREATE TABLE `Home` (
  `ID` int(11) NOT NULL,
  `Headline` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Home`
--

TRUNCATE TABLE `Home`;
--
-- Dumping data for table `Home`
--

INSERT INTO `Home` (`ID`, `Headline`) VALUES
(1, 'Something catchy here ');

-- --------------------------------------------------------

--
-- Table structure for table `HomepageCarouselItem`
--

DROP TABLE IF EXISTS `HomepageCarouselItem`;
CREATE TABLE `HomepageCarouselItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('HomepageCarouselItem') DEFAULT 'HomepageCarouselItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkEN` varchar(255) DEFAULT NULL,
  `AltEN` varchar(255) DEFAULT NULL,
  `ExternalLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `DesktopImageID` int(11) NOT NULL DEFAULT '0',
  `MobileImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `Link` varchar(255) DEFAULT NULL,
  `Alt` varchar(255) DEFAULT NULL,
  `CarouselImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `HomepageCarouselItem`
--

TRUNCATE TABLE `HomepageCarouselItem`;
--
-- Dumping data for table `HomepageCarouselItem`
--

INSERT INTO `HomepageCarouselItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `LinkEN`, `AltEN`, `ExternalLink`, `SortOrder`, `DesktopImageID`, `MobileImageID`, `PageID`, `Link`, `Alt`, `CarouselImageID`) VALUES
(1, 'HomepageCarouselItem', '2016-06-22 18:41:20', '2016-06-20 16:43:07', NULL, NULL, 0, 1, 15, 5, 1, NULL, NULL, 0),
(2, 'HomepageCarouselItem', '2016-06-22 12:39:35', '2016-06-20 16:43:29', NULL, NULL, 0, 2, 13, 7, 1, NULL, NULL, 0),
(3, 'HomepageCarouselItem', '2016-06-22 12:40:50', '2016-06-20 17:28:38', NULL, NULL, 0, 3, 14, 0, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Home_Live`
--

DROP TABLE IF EXISTS `Home_Live`;
CREATE TABLE `Home_Live` (
  `ID` int(11) NOT NULL,
  `Headline` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Home_Live`
--

TRUNCATE TABLE `Home_Live`;
--
-- Dumping data for table `Home_Live`
--

INSERT INTO `Home_Live` (`ID`, `Headline`) VALUES
(1, 'Something catchy here ');

-- --------------------------------------------------------

--
-- Table structure for table `Home_versions`
--

DROP TABLE IF EXISTS `Home_versions`;
CREATE TABLE `Home_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Headline` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Home_versions`
--

TRUNCATE TABLE `Home_versions`;
--
-- Dumping data for table `Home_versions`
--

INSERT INTO `Home_versions` (`ID`, `RecordID`, `Version`, `Headline`) VALUES
(1, 1, 4, 'Something catchy here yo'),
(2, 1, 5, 'Something catchy here yojbdskjbdfksjbfdksb'),
(3, 1, 6, 'Something catchy here ');

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `LoginAttempt`
--

TRUNCATE TABLE `LoginAttempt`;
-- --------------------------------------------------------

--
-- Table structure for table `Media`
--

DROP TABLE IF EXISTS `Media`;
CREATE TABLE `Media` (
  `ID` int(11) NOT NULL,
  `MediaOne` mediumtext,
  `MediaTwo` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Media`
--

TRUNCATE TABLE `Media`;
--
-- Dumping data for table `Media`
--

INSERT INTO `Media` (`ID`, `MediaOne`, `MediaTwo`) VALUES
(18, 'https://player.vimeo.com/video/170865193?color=e7c24c&title=0&byline=0&portrait=0', 'https://player.vimeo.com/video/170864657?color=e7c24c&title=0&byline=0&portrait=0');

-- --------------------------------------------------------

--
-- Table structure for table `Media_Live`
--

DROP TABLE IF EXISTS `Media_Live`;
CREATE TABLE `Media_Live` (
  `ID` int(11) NOT NULL,
  `MediaOne` mediumtext,
  `MediaTwo` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Media_Live`
--

TRUNCATE TABLE `Media_Live`;
--
-- Dumping data for table `Media_Live`
--

INSERT INTO `Media_Live` (`ID`, `MediaOne`, `MediaTwo`) VALUES
(18, 'https://player.vimeo.com/video/170865193?color=e7c24c&title=0&byline=0&portrait=0', 'https://player.vimeo.com/video/170864657?color=e7c24c&title=0&byline=0&portrait=0');

-- --------------------------------------------------------

--
-- Table structure for table `Media_versions`
--

DROP TABLE IF EXISTS `Media_versions`;
CREATE TABLE `Media_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MediaOne` mediumtext,
  `MediaTwo` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Media_versions`
--

TRUNCATE TABLE `Media_versions`;
--
-- Dumping data for table `Media_versions`
--

INSERT INTO `Media_versions` (`ID`, `RecordID`, `Version`, `MediaOne`, `MediaTwo`) VALUES
(1, 18, 1, NULL, NULL),
(2, 18, 2, NULL, NULL),
(3, 18, 3, NULL, NULL),
(4, 18, 4, 'https://player.vimeo.com/video/170865193?color=e7c24c&title=0&byline=0&portrait=0', 'https://player.vimeo.com/video/170864657?color=e7c24c&title=0&byline=0&portrait=0');

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Member`
--

TRUNCATE TABLE `Member`;
--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2016-07-12 21:13:36', '2016-06-20 12:58:49', 'Default Admin', NULL, 'admin', '12c9c8443eb01a5b55b890a4c2d84b40a9bd6ca1', '2016-07-15 21:13:36', '$2y$10$9855fed77988a156236efuaP1DltsojKy4t2KqCtnXsLKTDG6l0vC', NULL, 6, '2016-07-15 20:41:11', NULL, NULL, 'blowfish', '10$9855fed77988a156236ef9', NULL, NULL, 'en_US', 0, NULL, NULL),
(2, 'Member', '2016-07-14 09:54:49', '2016-07-14 09:54:12', 'Andrew ', 'Travis', 'andrewtravis@artandmastery.com', NULL, NULL, '$2y$10$60ba57a684ff883c9affaOGJDfO0khm8awrzMKeuc5wcI1f1na02.', NULL, 0, NULL, NULL, NULL, 'blowfish', '10$60ba57a684ff883c9affad', NULL, NULL, 'en_US', 0, 'yyyy-MM-dd', 'h:mm:ss a');

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `MemberPassword`
--

TRUNCATE TABLE `MemberPassword`;
--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-06-20 12:58:49', '2016-06-20 12:58:49', '$2y$10$9855fed77988a156236efuaP1DltsojKy4t2KqCtnXsLKTDG6l0vC', '10$9855fed77988a156236ef9', 'blowfish', 1),
(2, 'MemberPassword', '2016-07-14 09:54:12', '2016-07-14 09:54:12', '$2y$10$60ba57a684ff883c9affaOGJDfO0khm8awrzMKeuc5wcI1f1na02.', '10$60ba57a684ff883c9affad', 'blowfish', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Permission`
--

TRUNCATE TABLE `Permission`;
--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `PermissionRole`
--

TRUNCATE TABLE `PermissionRole`;
-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `PermissionRoleCode`
--

TRUNCATE TABLE `PermissionRoleCode`;
-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Product') DEFAULT 'Product',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ProductName` mediumtext,
  `Description` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ProductImage1ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage3ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage4ID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Product`
--

TRUNCATE TABLE `Product`;
--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ID`, `ClassName`, `LastEdited`, `Created`, `ProductName`, `Description`, `Sort`, `ProductImage1ID`, `ProductImage2ID`, `ProductImage3ID`, `ProductImage4ID`, `CategoryID`) VALUES
(1, 'Product', '2016-06-25 20:19:37', '2016-06-25 20:19:37', 'Product', '<p><span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 0, 35, 36, 0, 0, 22),
(2, 'Product', '2016-06-25 20:34:18', '2016-06-25 20:34:18', 'Product 2', '<p><span>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</span></p>', 0, 37, 38, 0, 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ProductCarouselItem`
--

DROP TABLE IF EXISTS `ProductCarouselItem`;
CREATE TABLE `ProductCarouselItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ProductCarouselItem') DEFAULT 'ProductCarouselItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `Alt` varchar(255) DEFAULT NULL,
  `ExternalLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ProductImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `ImageAlt` varchar(300) DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ProductCarouselItem`
--

TRUNCATE TABLE `ProductCarouselItem`;
-- --------------------------------------------------------

--
-- Table structure for table `ProductDetail`
--

DROP TABLE IF EXISTS `ProductDetail`;
CREATE TABLE `ProductDetail` (
  `ID` int(11) NOT NULL,
  `ProductName` mediumtext,
  `Description` mediumtext,
  `ProductTileImageID` int(11) NOT NULL DEFAULT '0',
  `isFabric` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FabricLinkOne` mediumtext,
  `FabricLinkTwo` mediumtext,
  `FabricLinkThree` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ProductDetail`
--

TRUNCATE TABLE `ProductDetail`;
--
-- Dumping data for table `ProductDetail`
--

INSERT INTO `ProductDetail` (`ID`, `ProductName`, `Description`, `ProductTileImageID`, `isFabric`, `FabricLinkOne`, `FabricLinkTwo`, `FabricLinkThree`) VALUES
(32, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'http://google.com', 'http://google.com', NULL),
(38, 'Test Chair 2', '<p>Swat turds around the house<span> </span><span class="tooltiplink" title="By: Llb Comics">scamper</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Howl uncontrollably for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">instantly break out into full speed gallop across the house for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">eat from dog''s food</span><span>. Flop over </span><span class="tooltiplink" title="By: Anonymous ">where is my slave? I''m getting hungry</span><span>.</span><span class="tooltiplink" title="By: Anonymous ">Scratch at the door then walk away</span><span> </span><span class="tooltiplink" title="By: Anonymous ">walk on car leaving trail of paw prints on hood and windshield</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the box</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">brown cats with pink ears</span><span> </span><span class="tooltiplink" title="By: Alisa Roberts">knock dish off table head butt cant eat out of my own dish</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Damn that dog </span><span>inspect anything brought into the house under the bed,</span><span class="tooltiplink" title="By: Anonymous ">scream at teh bath</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Loves cheeseburgers</span><span>. Stick butt in face </span><span class="tooltiplink" title="By: Anonymous ">stare at wall turn and meow stare at wall some more meow again continue staring </span><span>hate dog. </span></p>', 50, 0, NULL, NULL, NULL),
(39, 'Test Chair 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus.</p>', 52, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProductDetail_Live`
--

DROP TABLE IF EXISTS `ProductDetail_Live`;
CREATE TABLE `ProductDetail_Live` (
  `ID` int(11) NOT NULL,
  `ProductName` mediumtext,
  `Description` mediumtext,
  `ProductTileImageID` int(11) NOT NULL DEFAULT '0',
  `isFabric` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FabricLinkOne` mediumtext,
  `FabricLinkTwo` mediumtext,
  `FabricLinkThree` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ProductDetail_Live`
--

TRUNCATE TABLE `ProductDetail_Live`;
--
-- Dumping data for table `ProductDetail_Live`
--

INSERT INTO `ProductDetail_Live` (`ID`, `ProductName`, `Description`, `ProductTileImageID`, `isFabric`, `FabricLinkOne`, `FabricLinkTwo`, `FabricLinkThree`) VALUES
(32, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'http://google.com', 'http://google.com', NULL),
(38, 'Test Chair 2', '<p>Swat turds around the house<span> </span><span class="tooltiplink" title="By: Llb Comics">scamper</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Howl uncontrollably for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">instantly break out into full speed gallop across the house for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">eat from dog''s food</span><span>. Flop over </span><span class="tooltiplink" title="By: Anonymous ">where is my slave? I''m getting hungry</span><span>.</span><span class="tooltiplink" title="By: Anonymous ">Scratch at the door then walk away</span><span> </span><span class="tooltiplink" title="By: Anonymous ">walk on car leaving trail of paw prints on hood and windshield</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the box</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">brown cats with pink ears</span><span> </span><span class="tooltiplink" title="By: Alisa Roberts">knock dish off table head butt cant eat out of my own dish</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Damn that dog </span><span>inspect anything brought into the house under the bed,</span><span class="tooltiplink" title="By: Anonymous ">scream at teh bath</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Loves cheeseburgers</span><span>. Stick butt in face </span><span class="tooltiplink" title="By: Anonymous ">stare at wall turn and meow stare at wall some more meow again continue staring </span><span>hate dog. </span></p>', 50, 0, NULL, NULL, NULL),
(39, 'Test Chair 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus.</p>', 52, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProductDetail_versions`
--

DROP TABLE IF EXISTS `ProductDetail_versions`;
CREATE TABLE `ProductDetail_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ProductName` mediumtext,
  `Description` mediumtext,
  `ProductTileImageID` int(11) NOT NULL DEFAULT '0',
  `isFabric` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FabricLinkOne` mediumtext,
  `FabricLinkTwo` mediumtext,
  `FabricLinkThree` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ProductDetail_versions`
--

TRUNCATE TABLE `ProductDetail_versions`;
--
-- Dumping data for table `ProductDetail_versions`
--

INSERT INTO `ProductDetail_versions` (`ID`, `RecordID`, `Version`, `ProductName`, `Description`, `ProductTileImageID`, `isFabric`, `FabricLinkOne`, `FabricLinkTwo`, `FabricLinkThree`) VALUES
(1, 32, 4, 'TEST CHAIR', '<p><span>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</span></p>', 0, 0, NULL, NULL, NULL),
(2, 32, 5, 'TEST CHAIR', '<p><span>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</span></p><p> </p><p><span>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</span></p>', 0, 0, NULL, NULL, NULL),
(3, 32, 6, 'TEST CHAIR', '<p><span>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</span></p>', 0, 0, NULL, NULL, NULL),
(4, 32, 7, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 0, 0, NULL, NULL, NULL),
(5, 32, 8, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 0, NULL, NULL, NULL),
(6, 38, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(7, 38, 2, 'Test Chair 2', '<p>Swat turds around the house<span> </span><span class="tooltiplink" title="By: Llb Comics">scamper</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Howl uncontrollably for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">instantly break out into full speed gallop across the house for no reason</span><span> </span><span class="tooltiplink" title="By: Anonymous ">eat from dog''s food</span><span>. Flop over </span><span class="tooltiplink" title="By: Anonymous ">where is my slave? I''m getting hungry</span><span>.</span><span class="tooltiplink" title="By: Anonymous ">Scratch at the door then walk away</span><span> </span><span class="tooltiplink" title="By: Anonymous ">walk on car leaving trail of paw prints on hood and windshield</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the box</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">brown cats with pink ears</span><span> </span><span class="tooltiplink" title="By: Alisa Roberts">knock dish off table head butt cant eat out of my own dish</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Damn that dog </span><span>inspect anything brought into the house under the bed,</span><span class="tooltiplink" title="By: Anonymous ">scream at teh bath</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Loves cheeseburgers</span><span>. Stick butt in face </span><span class="tooltiplink" title="By: Anonymous ">stare at wall turn and meow stare at wall some more meow again continue staring </span><span>hate dog. </span></p>', 50, 0, NULL, NULL, NULL),
(8, 39, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(9, 39, 2, 'Test Chair 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim dicta nulla, aliquid, delectus minima quos accusamus, quasi quae vel ullam suscipit quas voluptatum praesentium recusandae nisi expedita hic blanditiis minus.</p>', 52, 0, NULL, NULL, NULL),
(10, 32, 9, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, NULL, NULL, NULL),
(11, 32, 10, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 0, NULL, NULL, NULL),
(12, 41, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(13, 41, 2, NULL, NULL, 0, 1, NULL, NULL, NULL),
(14, 32, 11, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, NULL, NULL, NULL),
(15, 32, 12, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'www.google.com', 'www.google.com', 'www.google.com'),
(16, 32, 13, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'http://google.com', 'http://google.com', 'http://google.com'),
(17, 32, 14, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'http://google.com', 'http://google.com', 'http://google.com'),
(18, 32, 15, 'TEST CHAIR', '<p>Duckbill eel southern smelt jellynose fish wobbegong beaked sandfish. Devil ray eel cod blue-redstripe danio gudgeon Old World knifefish elver. Ponyfish; zander rock beauty remora walking catfish frogmouth catfish redmouth whalefish Hammerjaw. Shingle Fish cuckoo wrasse pejerrey, pike; angler catfish moray eel flagblenny chub false brotula? Rough scad European perch three spot gourami, wels catfish. Black tetra flagfish topminnow, chimaera, "mustard eel channel bass."</p>', 49, 1, 'http://google.com', 'http://google.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProductGalleryItem`
--

DROP TABLE IF EXISTS `ProductGalleryItem`;
CREATE TABLE `ProductGalleryItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ProductGalleryItem') DEFAULT 'ProductGalleryItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `AltText` varchar(255) DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `ProductGalleryItem`
--

TRUNCATE TABLE `ProductGalleryItem`;
--
-- Dumping data for table `ProductGalleryItem`
--

INSERT INTO `ProductGalleryItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Link`, `AltText`, `SortOrder`, `ImageID`, `PageID`) VALUES
(3, 'ProductGalleryItem', '2016-07-12 22:21:34', '2016-07-12 22:21:34', NULL, NULL, 1, 45, 32),
(4, 'ProductGalleryItem', '2016-07-12 22:23:18', '2016-07-12 22:23:18', NULL, NULL, 2, 46, 32),
(6, 'ProductGalleryItem', '2016-07-13 09:35:22', '2016-07-13 09:35:22', NULL, NULL, 3, 48, 32),
(7, 'ProductGalleryItem', '2016-07-13 16:38:35', '2016-07-13 16:38:35', NULL, NULL, 4, 51, 38);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `RedirectorPage`
--

TRUNCATE TABLE `RedirectorPage`;
-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `RedirectorPage_Live`
--

TRUNCATE TABLE `RedirectorPage_Live`;
-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `RedirectorPage_versions`
--

TRUNCATE TABLE `RedirectorPage_versions`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteConfig`
--

TRUNCATE TABLE `SiteConfig`;
--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'Your Site Name', 'your tagline here', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteConfig_CreateTopLevelGroups`
--

TRUNCATE TABLE `SiteConfig_CreateTopLevelGroups`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteConfig_EditorGroups`
--

TRUNCATE TABLE `SiteConfig_EditorGroups`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteConfig_ViewerGroups`
--

TRUNCATE TABLE `SiteConfig_ViewerGroups`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Catalog','CatalogCategory','Contact','Home','Media','ProductDetail','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree`
--

TRUNCATE TABLE `SiteTree`;
--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Home', '2016-07-14 20:15:52', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(2, 'Catalog', '2016-06-24 10:29:33', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9, 0),
(4, 'ErrorPage', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(7, 'Contact', '2016-06-24 09:54:10', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(18, 'Media', '2016-06-23 11:14:11', '2016-06-23 11:12:05', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(22, 'CatalogCategory', '2016-06-25 20:12:58', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 2),
(23, 'CatalogCategory', '2016-06-25 20:13:39', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 2),
(24, 'CatalogCategory', '2016-06-25 20:14:03', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 2),
(25, 'CatalogCategory', '2016-06-25 20:14:16', '2016-06-24 10:18:46', 'tables', 'Tables', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(26, 'CatalogCategory', '2016-06-25 20:14:27', '2016-06-24 10:19:17', 'mirrors', 'Mirrors', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(27, 'CatalogCategory', '2016-06-25 20:14:39', '2016-06-24 10:20:16', 'pedestals', 'Pedestals', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(28, 'CatalogCategory', '2016-06-25 20:14:53', '2016-06-24 10:20:50', 'wardrobes-and-storage', 'Wardrobes & Storage', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(29, 'CatalogCategory', '2016-06-25 20:15:06', '2016-06-24 10:21:28', 'mantles', 'Mantles', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(30, 'CatalogCategory', '2016-06-25 20:15:19', '2016-06-24 10:22:06', 'fabrics', 'Fabrics', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(32, 'ProductDetail', '2016-07-15 20:19:36', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 22),
(38, 'ProductDetail', '2016-07-13 16:38:24', '2016-07-13 16:36:55', 'test-chair-2', 'Test Chair 2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 22),
(39, 'ProductDetail', '2016-07-13 16:43:44', '2016-07-13 16:42:55', 'test-chair-3', 'Test Chair 3', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_EditorGroups`
--

TRUNCATE TABLE `SiteTree_EditorGroups`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_ImageTracking`
--

TRUNCATE TABLE `SiteTree_ImageTracking`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_LinkTracking`
--

TRUNCATE TABLE `SiteTree_LinkTracking`;
-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Catalog','CatalogCategory','Contact','Home','Media','ProductDetail','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_Live`
--

TRUNCATE TABLE `SiteTree_Live`;
--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Home', '2016-07-14 20:15:52', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(2, 'Catalog', '2016-06-24 10:29:33', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9, 0),
(4, 'ErrorPage', '2016-06-20 12:58:55', '2016-06-20 12:58:49', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(7, 'Contact', '2016-06-24 09:54:10', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(18, 'Media', '2016-06-23 11:14:11', '2016-06-23 11:12:05', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(22, 'CatalogCategory', '2016-06-25 20:12:58', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 2),
(23, 'CatalogCategory', '2016-06-25 20:13:39', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 2),
(24, 'CatalogCategory', '2016-06-25 20:14:03', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 2),
(25, 'CatalogCategory', '2016-06-25 20:14:16', '2016-06-24 10:18:46', 'tables', 'Tables', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(26, 'CatalogCategory', '2016-06-25 20:14:27', '2016-06-24 10:19:17', 'mirrors', 'Mirrors', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(27, 'CatalogCategory', '2016-06-25 20:14:39', '2016-06-24 10:20:16', 'pedestals', 'Pedestals', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(28, 'CatalogCategory', '2016-06-25 20:14:53', '2016-06-24 10:20:50', 'wardrobes-and-storage', 'Wardrobes & Storage', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(29, 'CatalogCategory', '2016-06-25 20:15:06', '2016-06-24 10:21:28', 'mantles', 'Mantles', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(30, 'CatalogCategory', '2016-06-25 20:15:19', '2016-06-24 10:22:06', 'fabrics', 'Fabrics', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2),
(32, 'ProductDetail', '2016-07-15 20:19:36', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 22),
(38, 'ProductDetail', '2016-07-13 16:38:24', '2016-07-13 16:36:55', 'test-chair-2', 'Test Chair 2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 22),
(39, 'ProductDetail', '2016-07-13 16:43:44', '2016-07-13 16:42:55', 'test-chair-3', 'Test Chair 3', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Catalog','CatalogCategory','Contact','Home','Media','ProductDetail','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_versions`
--

TRUNCATE TABLE `SiteTree_versions`;
--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 1, 'ErrorPage', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-06-20 12:58:49', '2016-06-20 12:58:49', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 2, 2, 1, 1, 1, 'Page', '2016-06-20 13:18:30', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 3, 2, 1, 1, 1, 'Page', '2016-06-20 13:18:42', '2016-06-20 12:58:49', 'contact', 'CONTACT', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'Page', '2016-06-20 13:18:50', '2016-06-20 13:18:50', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 2, 1, 1, 1, 'Page', '2016-06-20 13:19:00', '2016-06-20 13:18:50', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 1, 2, 1, 1, 1, 'Page', '2016-06-20 13:19:16', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 6, 3, 1, 1, 1, 'Page', '2016-06-20 13:19:23', '2016-06-20 13:18:50', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 1, 3, 1, 1, 1, 'Home', '2016-06-20 16:17:41', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 3, 3, 1, 1, 1, 'Page', '2016-06-21 13:02:41', '2016-06-20 12:58:49', 'contact', 'CONTACT', NULL, '<h1>CONTACT</h1><h4>Andrew Travis, President</h4><p>Phone: 416.999.2075<a href="tel:416.999.2075" target="_blank"><br></a></p><p>Email: <a href="mailto:$Email">a</a>ndrewtravis@artandmastery.com</p><p>Address: 301-165 Bathurst Street, M5V 3C2</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 3, 4, 1, 1, 1, 'Page', '2016-06-21 13:05:50', '2016-06-20 12:58:49', 'contact', 'CONTACT', NULL, '<h4>Andrew Travis, President</h4><p>Phone: 416.999.2075<a href="tel:416.999.2075" target="_blank"><br></a></p><p>Email: <a href="mailto:$Email">a</a>ndrewtravis@artandmastery.com</p><p>Address: 301-165 Bathurst Street, M5V 3C2</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 3, 5, 1, 1, 1, 'Page', '2016-06-21 13:06:17', '2016-06-20 12:58:49', 'contact', 'CONTACT', NULL, '<h4>Andrew Travis, President</h4><p> </p><p>Phone: 416.999.2075<a href="tel:416.999.2075" target="_blank"><br></a></p><p>Email: <a href="mailto:$Email">a</a>ndrewtravis@artandmastery.com</p><p>Address: 301-165 Bathurst Street, M5V 3C2</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 2, 3, 1, 1, 1, 'Page', '2016-06-21 13:07:24', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 2, 4, 1, 1, 1, 'Page', '2016-06-21 13:07:39', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 2, 5, 1, 1, 1, 'Page', '2016-06-21 13:13:25', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 7, 1, 1, 1, 1, 'Contact', '2016-06-22 15:41:50', '2016-06-22 15:41:50', 'new-contact', 'New Contact', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(20, 7, 2, 1, 1, 1, 'Contact', '2016-06-22 15:49:31', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 8, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:04:45', '2016-06-22 16:04:45', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(22, 8, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:05:23', '2016-06-22 16:04:45', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(23, 9, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:05:33', '2016-06-22 16:05:33', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(24, 9, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:06:01', '2016-06-22 16:05:33', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(25, 10, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:06:13', '2016-06-22 16:06:13', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(26, 10, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:06:25', '2016-06-22 16:06:13', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(27, 11, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:06:34', '2016-06-22 16:06:34', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(28, 11, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:06:46', '2016-06-22 16:06:34', 'tables', 'Tables', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(29, 12, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:07:04', '2016-06-22 16:07:04', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(30, 12, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:07:15', '2016-06-22 16:07:04', 'mirrors', 'Mirrors', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(31, 13, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:07:27', '2016-06-22 16:07:27', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(32, 13, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:07:43', '2016-06-22 16:07:27', 'pedestals', 'Pedestals', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(33, 14, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:07:54', '2016-06-22 16:07:54', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(34, 14, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:08:21', '2016-06-22 16:07:54', 'wardrobes-and-storage', 'Wardrobes & Storage', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(35, 15, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:08:40', '2016-06-22 16:08:40', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(36, 15, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:08:52', '2016-06-22 16:08:40', 'mantles', 'Mantles', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(37, 16, 1, 0, 1, 0, 'Catalog', '2016-06-22 16:09:08', '2016-06-22 16:09:08', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(38, 16, 2, 1, 1, 1, 'Catalog', '2016-06-22 16:09:39', '2016-06-22 16:09:08', 'fabrics', 'Fabrics', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(39, 2, 6, 1, 1, 1, 'Page', '2016-06-22 16:58:18', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(40, 17, 1, 1, 1, 1, 'Catalog', '2016-06-22 23:38:05', '2016-06-22 23:38:05', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(41, 7, 3, 1, 1, 1, 'Contact', '2016-06-23 09:45:44', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(42, 7, 4, 1, 1, 1, 'Contact', '2016-06-23 09:52:21', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(43, 18, 1, 0, 1, 0, 'Media', '2016-06-23 11:12:05', '2016-06-23 11:12:05', 'new-media', 'New Media', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(44, 18, 2, 1, 1, 1, 'Media', '2016-06-23 11:12:18', '2016-06-23 11:12:05', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(45, 18, 3, 0, 1, 0, 'Media', '2016-06-23 11:12:25', '2016-06-23 11:12:05', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(46, 18, 4, 1, 1, 1, 'Media', '2016-06-23 11:14:11', '2016-06-23 11:12:05', 'media', 'MEDIA', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(47, 19, 1, 1, 1, 1, 'Catalog', '2016-06-23 12:18:58', '2016-06-23 12:18:58', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(48, 19, 2, 1, 1, 1, 'Catalog', '2016-06-23 13:21:53', '2016-06-23 12:18:58', 'new-catalog-2', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(49, 20, 1, 0, 1, 0, 'Catalog', '2016-06-24 09:39:51', '2016-06-24 09:39:51', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 20, 2, 1, 1, 1, 'Catalog', '2016-06-24 09:40:40', '2016-06-24 09:39:51', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(51, 2, 7, 1, 1, 1, 'Page', '2016-06-24 09:41:19', '2016-06-20 12:58:49', 'catalog-2', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(52, 7, 5, 1, 1, 1, 'Contact', '2016-06-24 09:42:37', '2016-06-22 15:41:50', 'contact', 'CONTACT', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(53, 21, 1, 0, 1, 0, 'Catalog', '2016-06-24 09:43:34', '2016-06-24 09:43:34', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7),
(54, 22, 1, 0, 1, 0, 'Catalog', '2016-06-24 09:43:55', '2016-06-24 09:43:55', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(55, 22, 2, 1, 1, 1, 'Catalog', '2016-06-24 09:44:51', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(56, 23, 1, 0, 1, 0, 'Catalog', '2016-06-24 09:49:37', '2016-06-24 09:49:37', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(57, 23, 2, 1, 1, 1, 'Catalog', '2016-06-24 09:49:49', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(58, 22, 3, 1, 1, 1, 'Catalog', '2016-06-24 09:54:48', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(59, 2, 8, 1, 1, 1, 'Page', '2016-06-24 09:55:15', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(60, 22, 4, 1, 1, 1, 'Catalog', '2016-06-24 10:16:34', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(61, 24, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:18:18', '2016-06-24 10:18:18', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(62, 24, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:18:36', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(63, 25, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:18:46', '2016-06-24 10:18:46', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(64, 25, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:19:08', '2016-06-24 10:18:46', 'tables', 'Tables', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(65, 26, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:19:17', '2016-06-24 10:19:17', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(66, 26, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:20:05', '2016-06-24 10:19:17', 'mirrors', 'Mirrors', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(67, 27, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:20:16', '2016-06-24 10:20:16', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(68, 27, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:20:41', '2016-06-24 10:20:16', 'pedestals', 'Pedestals', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(69, 28, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:20:50', '2016-06-24 10:20:50', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(70, 28, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:21:18', '2016-06-24 10:20:50', 'wardrobes-and-storage', 'Wardrobes & Storage', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(71, 29, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:21:28', '2016-06-24 10:21:28', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(72, 29, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:21:47', '2016-06-24 10:21:28', 'mantles', 'Mantles', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(73, 30, 1, 0, 1, 0, 'Catalog', '2016-06-24 10:22:06', '2016-06-24 10:22:06', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(74, 30, 2, 1, 1, 1, 'Catalog', '2016-06-24 10:23:38', '2016-06-24 10:22:06', 'fabrics', 'Fabrics', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(75, 23, 3, 1, 1, 1, 'Catalog', '2016-06-24 10:24:38', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(76, 31, 1, 1, 1, 1, 'Catalog', '2016-06-24 10:27:40', '2016-06-24 10:27:40', 'new-catalog', 'New Catalog', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(77, 23, 4, 1, 1, 1, 'Catalog', '2016-06-24 10:29:15', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(78, 2, 9, 1, 1, 1, 'Catalog', '2016-06-24 10:29:33', '2016-06-20 12:58:49', 'catalog', 'CATALOG', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(79, 22, 5, 1, 1, 1, 'CatalogCategory', '2016-06-24 10:59:22', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(80, 23, 5, 1, 1, 1, 'CatalogCategory', '2016-06-24 10:59:35', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(81, 24, 3, 1, 1, 1, 'CatalogCategory', '2016-06-24 10:59:44', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(82, 24, 4, 1, 1, 1, 'Catalog', '2016-06-25 20:02:44', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(83, 23, 6, 1, 1, 1, 'Catalog', '2016-06-25 20:02:53', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(84, 22, 6, 1, 1, 1, 'Catalog', '2016-06-25 20:03:01', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(85, 22, 7, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:08:55', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(86, 22, 8, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:12:58', '2016-06-24 09:43:55', 'chairs-and-seating', 'Chairs & Seating', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(87, 23, 7, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:13:39', '2016-06-24 09:49:37', 'sofas-and-lounges', 'Sofas & Lounges', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(88, 24, 5, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:14:03', '2016-06-24 10:18:18', 'bed-frames', 'Bed Frames', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(89, 25, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:14:16', '2016-06-24 10:18:46', 'tables', 'Tables', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(90, 26, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:14:27', '2016-06-24 10:19:17', 'mirrors', 'Mirrors', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(91, 27, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:14:39', '2016-06-24 10:20:16', 'pedestals', 'Pedestals', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(92, 28, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:14:53', '2016-06-24 10:20:50', 'wardrobes-and-storage', 'Wardrobes & Storage', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(93, 29, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:15:06', '2016-06-24 10:21:28', 'mantles', 'Mantles', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(94, 30, 3, 1, 1, 1, 'CatalogCategory', '2016-06-25 20:15:19', '2016-06-24 10:22:06', 'fabrics', 'Fabrics', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(95, 32, 1, 0, 1, 0, 'ProductDetail', '2016-06-28 10:44:29', '2016-06-28 10:44:29', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(96, 32, 2, 1, 1, 1, 'ProductDetail', '2016-06-28 11:06:47', '2016-06-28 10:44:29', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(97, 32, 3, 1, 1, 1, 'ProductDetail', '2016-06-30 15:23:50', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(98, 33, 1, 0, 1, 0, 'ProductDetail', '2016-07-05 15:48:16', '2016-07-05 15:48:16', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(99, 34, 1, 0, 1, 0, 'ProductDetail', '2016-07-05 16:41:17', '2016-07-05 16:41:17', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 32),
(100, 35, 1, 1, 1, 1, 'ProductDetail', '2016-07-06 10:09:14', '2016-07-06 10:09:14', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(101, 36, 1, 0, 1, 0, 'ProductDetail', '2016-07-06 12:34:44', '2016-07-06 12:34:44', 'new-product-detail-2', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(102, 37, 1, 0, 1, 0, 'ProductDetail', '2016-07-06 16:00:37', '2016-07-06 16:00:37', 'new-product-detail-3', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(103, 35, 2, 0, 1, 0, 'ProductDetail', '2016-07-06 16:11:13', '2016-07-06 10:09:14', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(104, 1, 4, 1, 1, 1, 'Home', '2016-07-12 21:20:05', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(105, 32, 4, 1, 1, 1, 'ProductDetail', '2016-07-12 21:41:10', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(106, 32, 5, 1, 1, 1, 'ProductDetail', '2016-07-13 00:06:27', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(107, 32, 6, 1, 1, 1, 'ProductDetail', '2016-07-13 10:02:32', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(108, 32, 7, 1, 1, 1, 'ProductDetail', '2016-07-13 10:23:56', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(109, 32, 8, 1, 1, 1, 'ProductDetail', '2016-07-13 16:10:50', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(110, 38, 1, 0, 1, 0, 'ProductDetail', '2016-07-13 16:36:55', '2016-07-13 16:36:55', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(111, 38, 2, 1, 1, 1, 'ProductDetail', '2016-07-13 16:38:24', '2016-07-13 16:36:55', 'test-chair-2', 'Test Chair 2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(112, 39, 1, 0, 1, 0, 'ProductDetail', '2016-07-13 16:42:55', '2016-07-13 16:42:55', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(113, 39, 2, 1, 1, 1, 'ProductDetail', '2016-07-13 16:43:44', '2016-07-13 16:42:55', 'test-chair-3', 'Test Chair 3', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(114, 32, 9, 1, 1, 1, 'ProductDetail', '2016-07-13 21:33:13', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(115, 32, 10, 1, 1, 1, 'ProductDetail', '2016-07-14 10:11:23', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(116, 1, 5, 1, 1, 1, 'Home', '2016-07-14 20:15:40', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(117, 1, 6, 1, 1, 1, 'Home', '2016-07-14 20:15:52', '2016-06-20 12:58:49', 'home', 'HOME', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(118, 40, 1, 0, 1, 0, 'CatalogCategory', '2016-07-14 20:21:07', '2016-07-14 20:21:07', 'new-catalog-category', 'New Catalog Category', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(119, 41, 1, 1, 1, 1, 'ProductDetail', '2016-07-14 20:30:40', '2016-07-14 20:30:40', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(120, 41, 2, 1, 1, 1, 'ProductDetail', '2016-07-14 20:33:27', '2016-07-14 20:30:40', 'new-product-detail', 'New Product Detail', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(121, 32, 11, 1, 1, 1, 'ProductDetail', '2016-07-15 19:30:52', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(122, 32, 12, 1, 1, 1, 'ProductDetail', '2016-07-15 20:04:26', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(123, 32, 13, 1, 1, 1, 'ProductDetail', '2016-07-15 20:06:05', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(124, 32, 14, 1, 1, 1, 'ProductDetail', '2016-07-15 20:16:18', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22),
(125, 32, 15, 1, 1, 1, 'ProductDetail', '2016-07-15 20:19:36', '2016-06-28 10:44:29', 'test-chair', 'Test chair', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 22);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `SiteTree_ViewerGroups`
--

TRUNCATE TABLE `SiteTree_ViewerGroups`;
-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `VirtualPage`
--

TRUNCATE TABLE `VirtualPage`;
-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `VirtualPage_Live`
--

TRUNCATE TABLE `VirtualPage_Live`;
-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `VirtualPage_versions`
--

TRUNCATE TABLE `VirtualPage_versions`;
-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Contact`
--

DROP TABLE IF EXISTS `_obsolete_Contact`;
CREATE TABLE `_obsolete_Contact` (
  `ID` int(11) NOT NULL,
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_Contact`
--

TRUNCATE TABLE `_obsolete_Contact`;
-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Contact_Live`
--

DROP TABLE IF EXISTS `_obsolete_Contact_Live`;
CREATE TABLE `_obsolete_Contact_Live` (
  `ID` int(11) NOT NULL,
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_Contact_Live`
--

TRUNCATE TABLE `_obsolete_Contact_Live`;
-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Contact_versions`
--

DROP TABLE IF EXISTS `_obsolete_Contact_versions`;
CREATE TABLE `_obsolete_Contact_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhoneNumber` mediumtext,
  `Email` mediumtext,
  `MugshotID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_Contact_versions`
--

TRUNCATE TABLE `_obsolete_Contact_versions`;
-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_ProductDetail`
--

DROP TABLE IF EXISTS `_obsolete_ProductDetail`;
CREATE TABLE `_obsolete_ProductDetail` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ProductDetail') DEFAULT 'ProductDetail',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ProductName` mediumtext,
  `Description` mediumtext,
  `ProductImage1ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage3ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage4ID` int(11) NOT NULL DEFAULT '0',
  `TypeID` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_ProductDetail`
--

TRUNCATE TABLE `_obsolete_ProductDetail`;
--
-- Dumping data for table `_obsolete_ProductDetail`
--

INSERT INTO `_obsolete_ProductDetail` (`ID`, `ClassName`, `LastEdited`, `Created`, `ProductName`, `Description`, `ProductImage1ID`, `ProductImage2ID`, `ProductImage3ID`, `ProductImage4ID`, `TypeID`, `Sort`, `CategoryID`) VALUES
(32, 'ProductDetail', NULL, NULL, NULL, '<p><span class="tooltiplink" title="By: Anonymous ">Gnaw the corn cob</span><span> </span><span class="tooltiplink" title="By: Mushu The">hide at bottom of staircase to trip human</span><span> why must they do that </span><span class="tooltiplink" title="By: Anonymous ">run outside as soon as door open</span><span>, so </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> or </span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Jardine Chapman">Cats go for world domination</span><span> </span><span class="tooltiplink" title="By: Anonymous ">paw at your fat belly</span><span> </span><span class="tooltiplink" title="By: Bram Stege">if it fits, i sits</span><span>, for </span><span class="tooltiplink" title="By: Anonymous ">lick sellotape</span><span> or</span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Poop on grasses</span><span> </span><span class="tooltiplink" title="By: Anonymous ">sit on the laptop</span><span> </span><span class="tooltiplink" title="By: Anonymous ">lick butt and make a weird face</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">meowwww</span><span> yet </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> for need to chase tail. </span><span class="tooltiplink" title="By: Anonymous ">Lick sellotape</span><span class="tooltiplink" title="By: Cassidy Blaede">attack the dog then pretend like nothing happened</span><span> for </span><span class="tooltiplink" title="By: Anonymous ">paw at beetle and eat it before it gets away</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">chirp at birds</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">loves cheeseburgers</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">caticus cuteicus</span><span>. </span><span class="tooltiplink" title="By: Fae ">Poop in litter box, scratch the walls</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the furniture</span><span>. </span><span class="tooltiplink" title="By: Mushu The">Hide at bottom of staircase to trip human</span><span> </span><span class="tooltiplink" title="By: Anonymous ">gnaw the corn cob</span><span>, yet under the bed, for </span><span class="tooltiplink" title="By: Anonymous ">eat owner''s food</span><span> and flop over, for </span><span class="tooltiplink" title="By: Anonymous ">dream about hunting birds</span><span> </span><span class="tooltiplink" title="By: Anonymous ">jump around on couch, meow constantly until given food, </span><span>. </span></p>', 39, 40, 41, 42, 0, 1, 0),
(34, 'ProductDetail', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(35, 'ProductDetail', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(36, 'ProductDetail', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(37, 'ProductDetail', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_ProductDetail_Live`
--

DROP TABLE IF EXISTS `_obsolete_ProductDetail_Live`;
CREATE TABLE `_obsolete_ProductDetail_Live` (
  `ID` int(11) NOT NULL,
  `ProductName` mediumtext,
  `Description` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ProductImage1ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage3ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage4ID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_ProductDetail_Live`
--

TRUNCATE TABLE `_obsolete_ProductDetail_Live`;
--
-- Dumping data for table `_obsolete_ProductDetail_Live`
--

INSERT INTO `_obsolete_ProductDetail_Live` (`ID`, `ProductName`, `Description`, `Sort`, `ProductImage1ID`, `ProductImage2ID`, `ProductImage3ID`, `ProductImage4ID`, `CategoryID`) VALUES
(32, NULL, '<p><span class="tooltiplink" title="By: Anonymous ">Gnaw the corn cob</span><span> </span><span class="tooltiplink" title="By: Mushu The">hide at bottom of staircase to trip human</span><span> why must they do that </span><span class="tooltiplink" title="By: Anonymous ">run outside as soon as door open</span><span>, so </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> or </span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Jardine Chapman">Cats go for world domination</span><span> </span><span class="tooltiplink" title="By: Anonymous ">paw at your fat belly</span><span> </span><span class="tooltiplink" title="By: Bram Stege">if it fits, i sits</span><span>, for </span><span class="tooltiplink" title="By: Anonymous ">lick sellotape</span><span> or</span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Poop on grasses</span><span> </span><span class="tooltiplink" title="By: Anonymous ">sit on the laptop</span><span> </span><span class="tooltiplink" title="By: Anonymous ">lick butt and make a weird face</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">meowwww</span><span> yet </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> for need to chase tail. </span><span class="tooltiplink" title="By: Anonymous ">Lick sellotape</span><span class="tooltiplink" title="By: Cassidy Blaede">attack the dog then pretend like nothing happened</span><span> for </span><span class="tooltiplink" title="By: Anonymous ">paw at beetle and eat it before it gets away</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">chirp at birds</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">loves cheeseburgers</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">caticus cuteicus</span><span>. </span><span class="tooltiplink" title="By: Fae ">Poop in litter box, scratch the walls</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the furniture</span><span>. </span><span class="tooltiplink" title="By: Mushu The">Hide at bottom of staircase to trip human</span><span> </span><span class="tooltiplink" title="By: Anonymous ">gnaw the corn cob</span><span>, yet under the bed, for </span><span class="tooltiplink" title="By: Anonymous ">eat owner''s food</span><span> and flop over, for </span><span class="tooltiplink" title="By: Anonymous ">dream about hunting birds</span><span> </span><span class="tooltiplink" title="By: Anonymous ">jump around on couch, meow constantly until given food, </span><span>. </span></p>', 0, 39, 40, 41, 42, 0),
(35, NULL, NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_ProductDetail_versions`
--

DROP TABLE IF EXISTS `_obsolete_ProductDetail_versions`;
CREATE TABLE `_obsolete_ProductDetail_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ProductName` mediumtext,
  `Description` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ProductImage1ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage3ID` int(11) NOT NULL DEFAULT '0',
  `ProductImage4ID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `_obsolete_ProductDetail_versions`
--

TRUNCATE TABLE `_obsolete_ProductDetail_versions`;
--
-- Dumping data for table `_obsolete_ProductDetail_versions`
--

INSERT INTO `_obsolete_ProductDetail_versions` (`ID`, `RecordID`, `Version`, `ProductName`, `Description`, `Sort`, `ProductImage1ID`, `ProductImage2ID`, `ProductImage3ID`, `ProductImage4ID`, `CategoryID`) VALUES
(1, 32, 1, NULL, NULL, 1, 0, 0, 0, 0, 0),
(2, 32, 2, NULL, '<p><span class="tooltiplink" title="By: Anonymous ">Gnaw the corn cob</span><span> </span><span class="tooltiplink" title="By: Mushu The">hide at bottom of staircase to trip human</span><span> why must they do that </span><span class="tooltiplink" title="By: Anonymous ">run outside as soon as door open</span><span>, so </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> or </span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Jardine Chapman">Cats go for world domination</span><span> </span><span class="tooltiplink" title="By: Anonymous ">paw at your fat belly</span><span> </span><span class="tooltiplink" title="By: Bram Stege">if it fits, i sits</span><span>, for </span><span class="tooltiplink" title="By: Anonymous ">lick sellotape</span><span> or</span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Poop on grasses</span><span> </span><span class="tooltiplink" title="By: Anonymous ">sit on the laptop</span><span> </span><span class="tooltiplink" title="By: Anonymous ">lick butt and make a weird face</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">meowwww</span><span> yet </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> for need to chase tail. </span><span class="tooltiplink" title="By: Anonymous ">Lick sellotape</span><span class="tooltiplink" title="By: Cassidy Blaede">attack the dog then pretend like nothing happened</span><span> for </span><span class="tooltiplink" title="By: Anonymous ">paw at beetle and eat it before it gets away</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">chirp at birds</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">loves cheeseburgers</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">caticus cuteicus</span><span>. </span><span class="tooltiplink" title="By: Fae ">Poop in litter box, scratch the walls</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the furniture</span><span>. </span><span class="tooltiplink" title="By: Mushu The">Hide at bottom of staircase to trip human</span><span> </span><span class="tooltiplink" title="By: Anonymous ">gnaw the corn cob</span><span>, yet under the bed, for </span><span class="tooltiplink" title="By: Anonymous ">eat owner''s food</span><span> and flop over, for </span><span class="tooltiplink" title="By: Anonymous ">dream about hunting birds</span><span> </span><span class="tooltiplink" title="By: Anonymous ">jump around on couch, meow constantly until given food, </span><span>. </span></p>', 0, 0, 0, 0, 0, 0),
(3, 32, 3, NULL, '<p><span class="tooltiplink" title="By: Anonymous ">Gnaw the corn cob</span><span> </span><span class="tooltiplink" title="By: Mushu The">hide at bottom of staircase to trip human</span><span> why must they do that </span><span class="tooltiplink" title="By: Anonymous ">run outside as soon as door open</span><span>, so </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> or </span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Jardine Chapman">Cats go for world domination</span><span> </span><span class="tooltiplink" title="By: Anonymous ">paw at your fat belly</span><span> </span><span class="tooltiplink" title="By: Bram Stege">if it fits, i sits</span><span>, for </span><span class="tooltiplink" title="By: Anonymous ">lick sellotape</span><span> or</span><span class="tooltiplink" title="By: Jacob Stoebel">asdflkjaertvlkjasntvkjn (sits on keyboard)</span><span>. </span><span class="tooltiplink" title="By: Anonymous ">Poop on grasses</span><span> </span><span class="tooltiplink" title="By: Anonymous ">sit on the laptop</span><span> </span><span class="tooltiplink" title="By: Anonymous ">lick butt and make a weird face</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">meowwww</span><span> yet </span><span class="tooltiplink" title="By: Anonymous ">lick yarn hanging out of own butt</span><span> for need to chase tail. </span><span class="tooltiplink" title="By: Anonymous ">Lick sellotape</span><span class="tooltiplink" title="By: Cassidy Blaede">attack the dog then pretend like nothing happened</span><span> for </span><span class="tooltiplink" title="By: Anonymous ">paw at beetle and eat it before it gets away</span><span> but </span><span class="tooltiplink" title="By: Anonymous ">chirp at birds</span><span>, </span><span class="tooltiplink" title="By: Anonymous ">loves cheeseburgers</span><span> and </span><span class="tooltiplink" title="By: Anonymous ">caticus cuteicus</span><span>. </span><span class="tooltiplink" title="By: Fae ">Poop in litter box, scratch the walls</span><span> </span><span class="tooltiplink" title="By: Anonymous ">scratch the furniture</span><span>. </span><span class="tooltiplink" title="By: Mushu The">Hide at bottom of staircase to trip human</span><span> </span><span class="tooltiplink" title="By: Anonymous ">gnaw the corn cob</span><span>, yet under the bed, for </span><span class="tooltiplink" title="By: Anonymous ">eat owner''s food</span><span> and flop over, for </span><span class="tooltiplink" title="By: Anonymous ">dream about hunting birds</span><span> </span><span class="tooltiplink" title="By: Anonymous ">jump around on couch, meow constantly until given food, </span><span>. </span></p>', 0, 39, 40, 41, 42, 0),
(4, 33, 1, NULL, NULL, 0, 0, 0, 0, 0, 0),
(5, 34, 1, NULL, NULL, 0, 0, 0, 0, 0, 0),
(6, 35, 1, NULL, NULL, 0, 0, 0, 0, 0, 0),
(7, 36, 1, NULL, NULL, 0, 0, 0, 0, 0, 0),
(8, 37, 1, NULL, NULL, 0, 0, 0, 0, 0, 0),
(9, 35, 2, NULL, NULL, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Catalog`
--
ALTER TABLE `Catalog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `CatalogCategory`
--
ALTER TABLE `CatalogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `CatalogCategory_Live`
--
ALTER TABLE `CatalogCategory_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `CatalogCategory_versions`
--
ALTER TABLE `CatalogCategory_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `Catalog_Live`
--
ALTER TABLE `Catalog_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `Catalog_versions`
--
ALTER TABLE `Catalog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CategoryImageID` (`CategoryImageID`);

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `Contact_Live`
--
ALTER TABLE `Contact_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `Contact_versions`
--
ALTER TABLE `Contact_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `Home`
--
ALTER TABLE `Home`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HomepageCarouselItem`
--
ALTER TABLE `HomepageCarouselItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DesktopImageID` (`DesktopImageID`),
  ADD KEY `MobileImageID` (`MobileImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `CarouselImageID` (`CarouselImageID`);

--
-- Indexes for table `Home_Live`
--
ALTER TABLE `Home_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Home_versions`
--
ALTER TABLE `Home_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Media`
--
ALTER TABLE `Media`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Media_Live`
--
ALTER TABLE `Media_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Media_versions`
--
ALTER TABLE `Media_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductImage1ID` (`ProductImage1ID`),
  ADD KEY `ProductImage2ID` (`ProductImage2ID`),
  ADD KEY `ProductImage3ID` (`ProductImage3ID`),
  ADD KEY `ProductImage4ID` (`ProductImage4ID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ProductCarouselItem`
--
ALTER TABLE `ProductCarouselItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductImageID` (`ProductImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `ProductDetail`
--
ALTER TABLE `ProductDetail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductTileImageID` (`ProductTileImageID`);

--
-- Indexes for table `ProductDetail_Live`
--
ALTER TABLE `ProductDetail_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductTileImageID` (`ProductTileImageID`);

--
-- Indexes for table `ProductDetail_versions`
--
ALTER TABLE `ProductDetail_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ProductTileImageID` (`ProductTileImageID`);

--
-- Indexes for table `ProductGalleryItem`
--
ALTER TABLE `ProductGalleryItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `_obsolete_Contact`
--
ALTER TABLE `_obsolete_Contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `_obsolete_Contact_Live`
--
ALTER TABLE `_obsolete_Contact_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `_obsolete_Contact_versions`
--
ALTER TABLE `_obsolete_Contact_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `MugshotID` (`MugshotID`);

--
-- Indexes for table `_obsolete_ProductDetail`
--
ALTER TABLE `_obsolete_ProductDetail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductImage1ID` (`ProductImage1ID`),
  ADD KEY `ProductImage2ID` (`ProductImage2ID`),
  ADD KEY `ProductImage3ID` (`ProductImage3ID`),
  ADD KEY `ProductImage4ID` (`ProductImage4ID`),
  ADD KEY `TypeID` (`TypeID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `_obsolete_ProductDetail_Live`
--
ALTER TABLE `_obsolete_ProductDetail_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProductImage1ID` (`ProductImage1ID`),
  ADD KEY `ProductImage2ID` (`ProductImage2ID`),
  ADD KEY `ProductImage3ID` (`ProductImage3ID`),
  ADD KEY `ProductImage4ID` (`ProductImage4ID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `_obsolete_ProductDetail_versions`
--
ALTER TABLE `_obsolete_ProductDetail_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ProductImage1ID` (`ProductImage1ID`),
  ADD KEY `ProductImage2ID` (`ProductImage2ID`),
  ADD KEY `ProductImage3ID` (`ProductImage3ID`),
  ADD KEY `ProductImage4ID` (`ProductImage4ID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Catalog`
--
ALTER TABLE `Catalog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `CatalogCategory`
--
ALTER TABLE `CatalogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `CatalogCategory_Live`
--
ALTER TABLE `CatalogCategory_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `CatalogCategory_versions`
--
ALTER TABLE `CatalogCategory_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Catalog_Live`
--
ALTER TABLE `Catalog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `Catalog_versions`
--
ALTER TABLE `Catalog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Contact_Live`
--
ALTER TABLE `Contact_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Contact_versions`
--
ALTER TABLE `Contact_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Home`
--
ALTER TABLE `Home`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `HomepageCarouselItem`
--
ALTER TABLE `HomepageCarouselItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Home_Live`
--
ALTER TABLE `Home_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Home_versions`
--
ALTER TABLE `Home_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Media`
--
ALTER TABLE `Media`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Media_Live`
--
ALTER TABLE `Media_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Media_versions`
--
ALTER TABLE `Media_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ProductCarouselItem`
--
ALTER TABLE `ProductCarouselItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProductDetail`
--
ALTER TABLE `ProductDetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ProductDetail_Live`
--
ALTER TABLE `ProductDetail_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ProductDetail_versions`
--
ALTER TABLE `ProductDetail_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ProductGalleryItem`
--
ALTER TABLE `ProductGalleryItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_obsolete_Contact`
--
ALTER TABLE `_obsolete_Contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_obsolete_Contact_Live`
--
ALTER TABLE `_obsolete_Contact_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_obsolete_Contact_versions`
--
ALTER TABLE `_obsolete_Contact_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_obsolete_ProductDetail`
--
ALTER TABLE `_obsolete_ProductDetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `_obsolete_ProductDetail_Live`
--
ALTER TABLE `_obsolete_ProductDetail_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `_obsolete_ProductDetail_versions`
--
ALTER TABLE `_obsolete_ProductDetail_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
