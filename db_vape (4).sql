-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 07:10 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vape`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addprod`
--

CREATE TABLE `tbl_addprod` (
  `id` int(11) NOT NULL,
  `product_code` varchar(25) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_totalqty` int(11) NOT NULL,
  `timeadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addprod`
--

INSERT INTO `tbl_addprod` (`id`, `product_code`, `product_name`, `product_qty`, `product_totalqty`, `timeadded`) VALUES
(1, '111', 'ADVKEN GORGE RDA (Blk)', 2, 0, '2018-06-25 08:20:21'),
(2, '111', 'ADVKEN ZIGGS RDA V2.0 (Blk, Gold)', 2, 0, '2018-06-25 08:21:22'),
(3, '111', 'AUGVAPE MERLIN MTL RTA (Blk)', 1, 0, '2018-06-25 08:21:34'),
(4, '111', 'BLADE DANCER (SS, Rbw)', 2, 0, '2018-06-25 08:21:42'),
(5, '111', 'COILART MAGE GTA (Blk)', 2, 0, '2018-06-25 08:22:09'),
(6, '111', 'CTHULHU MTL RDA (SS/Ultem Tip)', 1, 0, '2018-06-25 08:22:20'),
(7, '111', 'DEJA VU RDA (Blk, SS)', 1, 0, '2018-06-25 08:22:36'),
(8, '111', 'GEEKVAPE ZEUS SINGLE COIL RTA (SS)', 1, 0, '2018-06-25 08:23:03'),
(9, '111', 'OBS ENGINE (Blk, SS)', 1, 0, '2018-06-25 08:23:15'),
(10, '111', 'OMG CDA RTA (Convertible)', 1, 0, '2018-06-25 08:23:28'),
(11, '112', 'VLS RDA 1:1 (SS, Blk)', 1, 0, '2018-06-25 08:23:39'),
(12, '112', 'WASP NANO RDTA 1:1 (SS/Wht, Blk)', 1, 0, '2018-06-25 08:23:56'),
(13, '111', 'VAPORESSO NALU RDA (SS)', 2, 0, '2018-06-25 08:24:07'),
(14, '112', 'WASP NANO RDA 1:1 (Ultem)', 2, 0, '2018-06-25 08:24:26'),
(15, '112', 'DROP RDA 1:1 (SS, Gold, Blk)', 3, 0, '2018-06-25 08:27:02'),
(16, '112', 'GOON RDA RESIN 1:1 (SS, Rbw, Violet)', 1, 0, '2018-06-25 08:27:19'),
(17, '112', 'IJOY COMBO RDA2 1:1 (Gold, SS)', 2, 0, '2018-06-25 08:27:45'),
(18, '112', 'LOKOS RDA 1:1 (Ultem)', 3, 0, '2018-06-25 08:27:57'),
(19, '112', 'LOOP RDA 1:1 (SS, Gold, Blk, Grn)', 2, 0, '2018-06-25 08:28:58'),
(20, '112', 'MANTA RTA 1:1 (SS, Gold, Blk, Rbw)', 3, 0, '2018-06-25 08:29:09'),
(21, '112', 'RADIUS RDA 1:1 (SS)', 1, 0, '2018-06-25 08:30:00'),
(22, '112', 'VAPE BREED V4 RDA 1:1 Ultem Tip (B, G, S)', 5, 0, '2018-06-25 08:30:35'),
(23, '112', 'VLS RDA 1:1 (SS, Blk)', 5, 1, '2018-06-25 08:30:45'),
(24, '122', 'KRATOS KIT 1:1', 9, 0, '2018-06-25 08:32:02'),
(25, '122', 'VGOD ELITE RDA KIT', 3, 0, '2018-06-25 08:32:20'),
(26, '122', 'WISMEC RX MACHINA KIT (Knurled Blkout)', 1, 0, '2018-06-25 08:32:53'),
(27, '113', 'SIGELEI FUCHAI MT-V (Blk)', 1, 0, '2018-06-25 08:33:49'),
(28, '113', 'GEEKVAPE AEGIS w/ 26650 BATT (Blk)', 2, 0, '2018-06-25 08:34:04'),
(29, '113', 'iJOY AVENGER (Blk)', 1, 0, '2018-06-25 08:34:20'),
(30, '113', 'iSTICK PICO w/ 21700 BATT (SS)', 1, 0, '2018-06-25 08:34:35'),
(31, '113', 'LIMITLESS ARMS RACE V1 (Grn Camo)', 1, 0, '2018-06-25 08:34:48'),
(32, '113', 'NCR MOD', 1, 0, '2018-06-25 08:35:09'),
(33, '113', 'SIGELEI VCIGO K3 (Gray, Grn)', 2, 0, '2018-06-25 08:35:23'),
(34, '113', 'TESLA 2/3', 1, 0, '2018-06-25 08:36:20'),
(35, '113', 'VAPOR STORM (Blk)', 1, 0, '2018-06-25 08:36:46'),
(36, '113', 'VOOPOO DRAG (Rbw)', 1, 0, '2018-06-25 08:36:57'),
(37, '113', 'VOOPOO TOO (Raisin, Ditch Dark)', 1, 0, '2018-06-25 08:37:09'),
(38, '113', 'WISMEC RX GEN3 DUAL (Blk)', 1, 0, '2018-06-25 08:37:33'),
(39, '113', 'WISMEC SINOUS P80 (Blk, Red)', 3, 0, '2018-06-25 08:37:48'),
(40, '113', 'ZBOX 233 WARLOCK (Croc, CF)', 1, 0, '2018-06-25 08:38:03'),
(41, '114', 'IJOY 20700', 5, 0, '2018-06-25 08:38:17'),
(42, '114', 'IJOY 21700', 1, 0, '2018-06-25 08:38:27'),
(43, '114', 'MXJO IMR 18650 (35A, 3000mAh)', 12, 0, '2018-06-25 08:39:12'),
(44, '114', 'VTC-4 (30A, 2100mAh)', 24, 0, '2018-06-25 08:39:23'),
(45, '114', 'VTC-5A (25A, 2600mAh)', 17, 0, '2018-06-25 08:39:34'),
(46, '115', 'MC1', 8, 0, '2018-06-25 08:39:51'),
(47, '115', 'MC2', 6, 0, '2018-06-25 08:40:02'),
(48, '118', 'BATTERY CASE (2-BAY)', 11, 0, '2018-06-25 08:40:23'),
(49, '118', 'BATTERY CASE(4-BAY)', 4, 0, '2018-06-25 08:40:38'),
(50, '118', 'BATTERY CASE (SILICON DUAL)', 7, 0, '2018-06-25 08:40:59'),
(51, '118', 'BATTERY WRAP (Design)', 76, 0, '2018-06-25 08:41:09'),
(52, '118', 'BATTERY WRAP (Plain)', 28, 0, '2018-06-25 08:41:19'),
(53, '120', 'COIL MASTER MINI 1:1', 4, 0, '2018-06-25 08:41:31'),
(54, '120', 'COIL MASTER MINI V2 (Legit)', 3, 0, '2018-06-25 08:41:47'),
(55, '121', 'COTTON (4Pads/Pack)', 62, 0, '2018-06-25 08:42:26'),
(56, '120', 'CW MAGIC STICK', 5, 0, '2018-06-25 08:42:39'),
(57, '120', 'CUTTER', 6, 0, '2018-06-25 08:42:47'),
(58, '119', 'DRIP TIP 510 RESIN', 3, 0, '2018-06-25 08:43:02'),
(59, '119', 'DRIP TIP HONEYCOMB SS/Gold 510/810', 2, 0, '2018-06-25 08:46:14'),
(60, '121', 'JIG (ACRYLIC)', 2, 0, '2018-06-25 08:46:39'),
(61, '122', 'JUSTFOG MINI FIT (Red)', 8, 0, '2018-06-25 08:47:00'),
(62, '121', 'KURIN JOKI', 83, 0, '2018-06-25 08:49:15'),
(63, '121', 'MAT GEEK VAPE', 1, 0, '2018-06-25 08:49:26'),
(64, '121', 'MAT VPDAM', 1, 0, '2018-06-25 08:49:35'),
(65, '121', 'OCC for PRIMO MINI (1 Box: 5pcs)', 5, 0, '2018-06-25 08:50:36'),
(66, '121', 'SILICONE AEGIS', 1, 0, '2018-06-25 08:51:05'),
(67, '121', 'SILICONE VOOPOO DRAG', 4, 0, '2018-06-25 08:51:29'),
(68, '121', 'SPACER 22/24mm(BLACK)', 4, 0, '2018-06-25 08:51:43'),
(69, '121', 'SPACER 24mm (WHITE)', 23, 0, '2018-06-25 08:51:53'),
(70, '121', 'SPACER 22/24mm(BLACK)', 27, 0, '2018-06-25 08:52:38'),
(71, '121', 'SPACER 24mm (WHITE)', 33, 23, '2018-06-25 08:52:50'),
(72, '120', 'T-TOOL', 12, 0, '2018-06-25 08:53:00'),
(73, '120', 'VANDY VAPE TOOL KIT', 1, 0, '2018-06-25 08:53:11'),
(74, '121', 'VAPE BAG POUCH', 1, 0, '2018-06-25 08:53:23'),
(75, '121', 'TUBE HOLDER', 1, 0, '2018-06-25 08:53:36'),
(76, '117', '0.60/ Ga22 KANTHAL (1.1m)', 22, 0, '2018-06-25 08:53:45'),
(77, '117', '0.50/ Ga24 KANTHAL (1.5m)', 24, 0, '2018-06-25 08:53:53'),
(78, '117', 'TH PREBUILT COIL PACK Ga22', 3, 0, '2018-06-25 08:54:06'),
(79, '117', 'PREBUILT COIL PAIR', 19, 0, '2018-06-25 08:54:16'),
(80, '117', 'ALIEN CLAPTON 28x32 (1.0m)', 6, 0, '2018-06-25 08:54:24'),
(81, '117', 'KANTHAL A1 CLAPTON 26x32 (1.0m)', 19, 0, '2018-06-25 08:54:47'),
(82, '117', 'COLOSSUS WIRES', 23, 0, '2018-06-25 08:54:56'),
(83, '117', 'GP FUSED CLAPTON', 8, 0, '2018-06-25 08:55:08'),
(84, '117', 'GP ROUND N90', 10, 0, '2018-06-25 08:55:18'),
(85, '117', 'OMEGA WIRES', 44, 0, '2018-06-25 08:55:29'),
(86, '117', 'RAM CLAPTON', 9, 0, '2018-06-25 08:55:40'),
(87, '117', 'RAM TIGER', 10, 0, '2018-06-25 08:56:03'),
(88, '123', 'PHYNIX WULFF VAPORS', 13, 0, '2018-06-25 08:57:02'),
(89, '119', 'DRIP TIP 510 SECTOR ONE', 21, 0, '2018-06-25 08:57:21'),
(90, '121', 'TWEEZERS', 3, 0, '2018-06-25 08:57:35'),
(91, '123', 'ADIC`S BURN', 25, 0, '2018-06-25 09:04:15'),
(92, '123', 'ALAPAAP 65', 9, 0, '2018-06-25 09:05:36'),
(93, '123', 'ALAPAAP 85', 5, 0, '2018-06-25 09:05:45'),
(94, '123', 'ANOTHER', 81, 0, '2018-06-25 09:05:59'),
(95, '123', 'BATANG 90`S', 15, 0, '2018-06-25 09:06:44'),
(96, '123', 'BLISS LITE', 77, 0, '2018-06-25 09:06:56'),
(97, '123', 'BLISS MID', 21, 0, '2018-06-25 09:07:03'),
(98, '123', 'BLISS RED', 10, 0, '2018-06-25 09:07:12'),
(99, '123', 'COMIC VAPE SAUCE', 12, 0, '2018-06-25 09:07:21'),
(100, '123', 'CRIMINAL MINDS', 23, 0, '2018-06-25 09:07:31'),
(101, '123', 'DC', 48, 0, '2018-06-25 09:07:42'),
(102, '123', 'DEMON VAPE', 24, 0, '2018-06-25 09:07:52'),
(103, '123', 'EXPOSURE 30', 55, 0, '2018-06-25 09:08:08'),
(104, '123', 'EXPOSURE 65', 18, 0, '2018-06-25 09:08:22'),
(105, '123', 'FLUFF IT UP', 5, 0, '2018-06-25 09:08:31'),
(106, '123', 'FRESH & FRUITY', 22, 0, '2018-06-25 09:09:11'),
(107, '123', 'FRESH & FRUITY PICO', 22, 0, '2018-06-25 09:09:18'),
(108, '123', 'HIGH PUFFS 30', 44, 0, '2018-06-25 09:09:39'),
(109, '123', 'HIGH PUFFS 65', 35, 0, '2018-06-25 09:09:54'),
(110, '123', 'HUNCHBACK VAPORS', 23, 0, '2018-06-25 09:10:06'),
(111, '123', 'HYPRTONIC', 1, 0, '2018-06-25 09:10:14'),
(112, '123', 'iCLOUDS', 38, 0, '2018-06-25 09:10:24'),
(113, '123', 'ILLUSION', 16, 0, '2018-06-25 09:10:36'),
(114, '123', 'JUICE.CO DONUTS', 24, 0, '2018-06-25 09:10:52'),
(115, '123', 'KWITKAT', 9, 0, '2018-06-25 09:11:02'),
(116, '123', 'LICKQUID', 30, 0, '2018-06-25 09:11:12'),
(117, '123', 'MARVEL', 29, 0, '2018-06-25 09:11:23'),
(118, '123', 'MASTER MIND', 27, 0, '2018-06-25 09:11:33'),
(119, '123', 'MR. MUFFIN', 27, 0, '2018-06-25 09:11:45'),
(120, '123', 'NIC DROPS', 1, 0, '2018-06-25 09:11:59'),
(121, '123', 'NITRO PREMIUM', 20, 0, '2018-06-25 09:12:08'),
(122, '123', 'NITRO LITE', 14, 0, '2018-06-25 09:12:19'),
(123, '123', 'QUEZO-RAP', 13, 0, '2018-06-25 09:12:56'),
(124, '123', 'REESE`s', 6, 0, '2018-06-25 09:13:06'),
(125, '123', 'SHOTS FIRED 30', 51, 0, '2018-06-25 09:13:23'),
(126, '123', 'SHOTS FIRED 50', 18, 0, '2018-06-25 09:13:35'),
(127, '123', 'SIR JACK', 18, 0, '2018-06-25 09:13:45'),
(128, '123', 'TSIKLET', 25, 0, '2018-06-25 09:13:57'),
(129, '123', 'VAPINGKIKO', 1, 0, '2018-06-25 09:14:05'),
(130, '123', 'VAPOR DRIVE', 22, 0, '2018-06-25 09:14:17'),
(131, '123', 'VAPORITO 100', 3, 0, '2018-06-25 09:14:25'),
(132, '123', 'VAPORITO 65', 74, 0, '2018-06-25 09:14:36'),
(133, '123', 'VISCOCITY', 1, 0, '2018-06-25 09:14:51'),
(134, '123', 'YUMMYTEH', 13, 0, '2018-06-25 09:14:59'),
(135, '123', 'DRAKELEY`S SAKTO', 28, 0, '2018-06-25 09:15:20'),
(136, '123', 'FANTASTIC', 1, 0, '2018-06-25 09:15:28'),
(137, '123', 'GOT MILK', 6, 0, '2018-06-25 09:15:40'),
(138, '123', 'MAD DROPS', 33, 0, '2018-06-25 09:15:48'),
(139, '123', 'MISTY KLOUDS', 10, 0, '2018-06-25 09:15:59'),
(140, '123', 'TESTER', 4, 0, '2018-06-25 09:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_juices`
--

CREATE TABLE `tbl_juices` (
  `id` int(11) NOT NULL,
  `product_code` varchar(25) NOT NULL,
  `product_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_juices`
--

INSERT INTO `tbl_juices` (`id`, `product_code`, `product_name`) VALUES
(1, '111', 'PHYNIX WULFF VAPORS'),
(4, '112', 'ADIC`S BURN'),
(5, '113', 'ALAPAAP 65'),
(6, '114', 'ALAPAAP 85'),
(7, '115', 'ANOTHER'),
(8, '116', 'BATANG 90`S'),
(9, '117', 'BLISS LITE'),
(10, '118', 'BLISS MID'),
(11, '119', 'BLISS REDS'),
(12, '120', 'COMIC VAPE SAUCE'),
(13, '121', 'CRIMINAL MINDS'),
(14, '122', 'DC'),
(15, '123', 'DEMON VAPE'),
(16, '124', 'DRAKLEY`S SAKTO'),
(17, '125', 'EXPOSURE 30'),
(18, '126', 'EXPOSURE 65'),
(19, '127', 'FANTASTIC'),
(20, '128', 'FLUFF IT UP'),
(21, '129', 'FRESH & FRUITY'),
(22, '130', 'FRESH & FRUITY PICO'),
(23, '131', 'GOT MILK'),
(24, '132', 'HIGH PUFFS 30'),
(25, '133', 'HIGH PUFFS 65'),
(26, '134', 'HUNCHBACK VAPORS'),
(27, '135', 'HYPRTONIC'),
(28, '136', 'iCLOUDS'),
(29, '137', 'ILLUSION'),
(30, '138', 'JUICE.CO DONUTS'),
(31, '139', 'KREMO'),
(32, '140', 'KWITKAT'),
(33, '141', 'LICKQUID'),
(34, '142', 'MAD DROPS'),
(35, '143', 'MARVEL'),
(36, '144', 'MASTER MIND'),
(37, '145', 'MISTY KLOUDS'),
(38, '146', 'MR. CLOUDZ'),
(39, '147', 'MR. MUFFIN'),
(40, '148', 'NIC DROPS'),
(41, '149', 'NITRO'),
(42, '150', 'QUEEN`S LAB'),
(43, '151', 'QUEZO-RAP'),
(44, '152', 'REESE`s'),
(45, '153', 'SHOTS FIRED 30'),
(46, '154', 'SHOTS FIRE 50'),
(47, '155', 'SIR JACK'),
(48, '156', 'STEEPED NIC 65'),
(49, '157', 'STUN'),
(50, '158', 'TESTER'),
(51, '159', 'TSIKLET'),
(52, '160', 'VAPINGKIKO'),
(53, '161', 'VAPOR DRIVE'),
(54, '162', 'VAPORITO 100'),
(55, '163', 'VAPORITO 65'),
(56, '164', 'VISCOCITY'),
(57, '165', 'YUMMYTEH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `position` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `fullname`, `position`, `image`) VALUES
(1, 'admin1', 'admin123', 'Admin', 'Manager', 'default.jpg'),
(2, 'admin2', 'admin123', 'Kim Jon Caranay', 'Manager', 'kimjon.jpg'),
(3, 'admin3', 'admin123', 'Paul Deveraturda', 'Manager', 'paul.jpg'),
(4, 'admin4', 'admin123', 'Alexandra Rae Fuertes', 'Manager', 'alex.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(25) NOT NULL,
  `product_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `product_code`, `product_name`) VALUES
(1, '111', 'Atomizers(Legit)'),
(2, '112', 'Atomizers(Clone)'),
(3, '113', 'Mods(Variable)'),
(4, '114', 'Batteries'),
(5, '115', 'Chargers'),
(6, '116', 'Mods(Full Mech)'),
(7, '117', 'Wires'),
(8, '118', 'Battery Accessories'),
(9, '119', 'Drip Tips'),
(10, '120', 'Coiling Accessories'),
(11, '121', 'Accessories/Others'),
(12, '122', 'Kits'),
(13, '123', 'Juices');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_content`
--

CREATE TABLE `tbl_product_content` (
  `product_unique_id` int(11) NOT NULL,
  `product_code` varchar(25) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_content`
--

INSERT INTO `tbl_product_content` (`product_unique_id`, `product_code`, `product_name`, `product_qty`, `product_price`) VALUES
(1, '111', 'ADVKEN GORGE RDA (Blk)', 2, 1000),
(2, '111', 'ADVKEN MADHATTER RDTA (SS)', 0, 1100),
(3, '111', 'ADVKEN MANTA RTA (SS, Rbw)', 0, 1200),
(4, '111', 'ADVKEN ZIGGS RDA V2.0 (Blk, Gold)', 2, 900),
(5, '111', 'AUGVAPE MERLIN MTL RTA (Blk)', 1, 950),
(6, '111', 'BLADE DANCER (SS, Rbw)', 2, 1500),
(7, '111', 'COILART MAGE GTA (Blk)', 2, 900),
(8, '111', 'CTHULHU MTL RDA (SS/Ultem Tip)', 1, 1300),
(9, '111', 'GEEKVAPE MEDUSA RDTA (SS)', 0, 800),
(10, '111', 'GEEKVAPE ZEUS DUAL (SS)', 0, 1250),
(11, '111', 'HOTCIG CENTAUR RTA', 0, 950),
(12, '111', 'OBS ENGINE (Blk, SS)', 1, 1400),
(13, '111', 'OMG CDA RTA (Convertible)', 1, 1400),
(14, '111', 'OUMIER VLS RDA (Blk, Wht/SS)', 0, 1000),
(15, '111', 'OUMIER WASP NANO RDA (Ultem)', 0, 900),
(16, '111', 'OUMIER WASP NANO RDTA (Blk/Red Tip)', 0, 1200),
(17, '111', 'VANDY VAPE KENSEI RTA (Blk/Red Tip)', 0, 1600),
(18, '111', 'VAPORESSO NALU RDA (SS)', 2, 800),
(19, '111', 'WOTOFO BRAVO RTA (Blk, GM)', 0, 1300),
(20, '112', 'CHAOS RDA 1:1 (SS, Blk)', 0, 600),
(21, '112', 'DEAD RABBIT RDA 1:1 (SS, Gold, Blk)', 0, 600),
(22, '112', 'DROP RDA 1:1 (SS, Gold, Blk)', 3, 600),
(23, '112', 'GOON RDA RESIN 1:1 (SS, Rbw, Violet)', 1, 600),
(24, '112', 'LOKOS RDA 1:1 (Ultem)', 3, 600),
(25, '112', 'LOOP RDA 1:1 (SS, Gold, Blk, Grn)', 2, 600),
(26, '112', 'MANTA RTA 1:1 (SS, Gold, Blk, Rbw)', 3, 650),
(27, '112', 'RADIUS RDA 1:1 (SS)', 1, 1000),
(28, '112', 'VAPE BREED V4 RDA 1:1 Ultem Tip (B, G, S)', 5, 600),
(29, '112', 'VLS RDA 1:1 (SS, Blk)', 5, 600),
(30, '112', 'WASP NANO RDA 1:1 (Ultem)', 2, 600),
(31, '112', 'WASP NANO RDTA 1:1 (SS/Wht, Blk)', 1, 650),
(32, '113', 'GEEKVAPE AEGIS w/ 26650 BATT (Blk)', 2, 2350),
(33, '113', 'GV AEGIS LEGEND (Blk, Snakeskin, Org)', 0, 2450),
(34, '113', 'iSTICK PICO w/ 21700 BATT (SS)', 1, 2700),
(35, '113', 'LIMITLESS ARMS RACE V1 (Grn Camo)', 1, 1750),
(36, '113', 'MKL 200 (Gunmetal)', 0, 2000),
(37, '113', 'SIGELEI FUCHAI GLO (Red)', 0, 1350),
(38, '113', 'SIGELEI FUCHAI MT-V (Blk)', 1, 1359),
(39, '113', 'SIGELEI VCIGO K3 (Gray, Grn)', 2, 1650),
(40, '113', 'SMOANT BATTLESTAR MECH MOD (Blk)', 0, 1050),
(41, '113', 'VAPOR STORM (Blk)', 1, 2000),
(42, '113', 'VOOPOO DRAG (Rbw)', 1, 2150),
(43, '113', 'VOOPOO TOO (Raisin, Ditch Dark)', 1, 2250),
(44, '113', 'WISMEC NOISY CRICKET II-25', 0, 1400),
(45, '113', 'WISMEC RX2 (Blk, Brown)', 0, 1550),
(46, '113', 'WISMEC SINOUS P80 (Blk, Red)', 3, 1700),
(47, '113', 'ZBOX 233 WARLOCK (Croc, CF)', 1, 1700),
(48, '114', 'IJOY 20700', 5, 575),
(49, '114', 'IJOY 21700', 1, 550),
(50, '114', 'IJOY 26650', 0, 450),
(51, '114', 'MXJO IMR 18650 (35A, 3000mAh)', 12, 400),
(52, '114', 'VTC-4 (30A, 2100mAh)', 21, 275),
(53, '114', 'VTC-5A (25A, 2600mAh)', 17, 400),
(54, '115', 'MC1', 8, 200),
(55, '115', 'MC2', 5, 300),
(56, '115', 'MC4', 0, 650),
(57, '115', 'MC6', 0, 850),
(58, '115', 'VC4', 0, 950),
(59, '116', 'SOB DUAL (Blue)', 0, 1000),
(60, '122', 'ARMAGEDDON SQUONK KIT 1:1 (Blk)', 0, 1000),
(61, '122', 'DESOLATOR KIT 1:1', 0, 850),
(62, '122', 'EVIC PRIMO MINI KIT (Blue)', 0, 1550),
(63, '122', 'JUSTFOG MINI FIT (Red)', 0, 950),
(64, '122', 'KRATOS KIT 1:1', 9, 800),
(65, '122', 'SOB LEGACY 1:1', 0, 1000),
(66, '122', 'SOB LEGEND (+Ext) KIT 1:1', 0, 1500),
(67, '122', 'ULTRA 80 KIT', 0, 1550),
(68, '122', 'VGOD ELITE RDA KIT', 2, 800),
(69, '122', 'VVZONE SPIRIT 90W KIT (SS, Yellow)', 0, 2200),
(70, '122', 'WISMEC RX MACHINA KIT (Knurled Blkout)', 1, 2000),
(71, '117', '0.60/ Ga22 KANTHAL (1.1m)', 21, 50),
(72, '117', '0.50/ Ga24 KANTHAL (1.5m)', 24, 50),
(73, '117', 'TH PREBUILT COIL PACK Ga22', 3, 120),
(74, '117', 'PREBUILT COIL PAIR', 18, 30),
(75, '117', 'ALIEN CLAPTON 28x32 (1.0m)', 6, 100),
(76, '117', 'KANTHAL A1 CLAPTON 26x32 (1.0m)', 18, 80),
(77, '117', 'GP FUSED CLAPTON', 8, 150),
(78, '117', 'GP ROUND N90', 10, 80),
(79, '117', 'OMEGA WIRES', 42, 180),
(80, '117', 'RAM CLAPTON', 9, 200),
(81, '117', 'RAM FUSED', 0, 220),
(82, '117', 'RAM ROUND', 0, 190),
(83, '117', 'RAM TIGER', 10, 200),
(84, '118', 'BATTERY CASE (2-BAY)', 10, 30),
(85, '118', 'BATTERY CASE(4-BAY)', 4, 100),
(86, '118', 'BATTERY CASE (SILICON DUAL)', 7, 70),
(87, '118', 'BATTERY WRAP (Design)', 76, 25),
(88, '118', 'BATTERY WRAP (Plain)', 28, 15),
(89, '119', 'DRIP TIP 510 SECTOR ONE', 21, 100),
(90, '119', 'DRIP TIP 510 RESIN', 3, 200),
(91, '119', 'DRIP TIP 810 (NO METAL)', 0, 175),
(92, '119', 'DRIP TIP AVOCADO 24', 0, 175),
(93, '119', 'DRIP TIP HONEYCOMB SS/Gold 510/810', 2, 250),
(94, '120', 'COIL MASTER MINI 1:1', 4, 800),
(95, '120', 'COIL MASTER MINI V2 (Legit)', 3, 900),
(96, '120', 'CUTTER', 4, 150),
(97, '120', 'CW MAGIC STICK', 3, 350),
(98, '120', 'T-TOOL', 12, 25),
(99, '120', 'VANDY VAPE TOOL KIT', 1, 900),
(100, '121', 'COTTON (4Pads/Pack)', 55, 20),
(101, '121', 'HEATSINK 24mm/22mm', 0, 150),
(102, '121', 'KURIN JOKI', 82, 70),
(103, '121', 'MAT GEEK VAPE', 1, 700),
(104, '121', 'MAT VPDAM', 1, 600),
(105, '121', 'OCC for PRIMO MINI', 0, 120),
(106, '121', 'OCC for PRIMO MINI (1 Box: 5pcs)', 5, 500),
(107, '121', 'PRO-VAPE SHIRT Black', 0, 250),
(108, '121', 'PRO-VAPE SHIRT White', 0, 200),
(109, '121', 'SILICONE AEGIS', 0, 200),
(110, '121', 'SILICONE VOOPOO DRAG', 4, 200),
(111, '121', 'SPACER 22/24mm(BLACK)', 27, 25),
(112, '121', 'SPACER 24mm (WHITE)', 33, 30),
(113, '121', 'VAPE BAG POUCH', 1, 150),
(114, '121', 'TUBE HOLDER', 1, 100),
(115, '123', 'BLISS RED', 10, 250),
(116, '111', 'DEJA VU RDA (Blk, SS)', 1, 1500),
(117, '111', 'DEJA VU RDTA (SS)', 0, 1800),
(118, '111', 'GEEKVAPE ZEUS SINGLE COIL RTA (SS)', 1, 1400),
(119, '112', 'IJOY COMBO RDA2 1:1 (Gold, SS)', 2, 600),
(120, '113', 'iJOY AVENGER (Blk)', 1, 2500),
(121, '113', 'NCR MOD', 1, 1900),
(122, '113', 'TESLA 2/3', 1, 1150),
(123, '113', 'WISMEC RX GEN3 DUAL (Blk)', 1, 2100),
(124, '122', 'iJOY CAPTAIN w/ WONDER RDA (GM)', 0, 2500),
(125, '117', 'COLOSSUS WIRES', 23, 200),
(126, '121', 'JIG (ACRYLIC)', 2, 150),
(127, '121', 'MECH PRO CELLO COVER PLATE', 0, 250),
(128, '121', 'TWEEZERS', 3, 200),
(129, '123', 'ADIC`S BURN', 25, 200),
(130, '123', 'ALAPAAP 65', 9, 220),
(131, '123', 'ALAPAAP 85', 5, 250),
(132, '123', 'ANOTHER', 78, 130),
(133, '123', 'BATANG 90`S', 15, 300),
(135, '123', 'BLISS LITE', 71, 125),
(136, '123', 'BLISS MID', 21, 130),
(137, '123', 'BLOW POPS', 0, 300),
(138, '123', 'COMIC VAPE SAUCE', 12, 250),
(139, '123', 'CRIMINAL MINDS', 23, 200),
(140, '123', 'DC', 47, 200),
(141, '123', 'DEMON VAPE', 24, 250),
(142, '123', 'DRAKELEY`S SAKTO', 28, 50),
(143, '123', 'EXPOSURE 30', 54, 100),
(144, '123', 'EXPOSURE 65', 18, 200),
(145, '123', 'FANTASTIC', 1, 50),
(146, '123', 'FLUFF IT UP', 5, 250),
(147, '123', 'FRESH & FRUITY', 22, 280),
(148, '123', 'FRESH & FRUITY PICO', 20, 120),
(149, '123', 'GOT MILK', 5, 75),
(150, '123', 'HIGH PUFFS 30', 44, 100),
(151, '123', 'HIGH PUFFS 65', 35, 200),
(152, '123', 'HUNCHBACK VAPORS', 23, 100),
(153, '123', 'HYPRTONIC', 1, 300),
(154, '123', 'iCLOUDS', 38, 300),
(155, '123', 'ILLUSION', 16, 300),
(156, '123', 'JUICE.CO DONUTS', 24, 200),
(157, '123', 'KWITKAT', 9, 200),
(158, '123', 'LICKQUID', 30, 100),
(159, '123', 'MAD DROPS', 33, 50),
(160, '123', 'MARVEL', 29, 250),
(161, '123', 'MASTER MIND', 27, 300),
(162, '123', 'MISTY KLOUDS', 10, 50),
(163, '123', 'MR. MUFFIN', 27, 100),
(164, '123', 'NIC DROPS', 1, 300),
(165, '123', 'NITRO PREMIUM', 20, 300),
(166, '123', 'NITRO LITE', 14, 200),
(167, '123', 'PHYNIX WULFF VAPORS', 13, 130),
(168, '123', 'QUEZO-RAP', 13, 200),
(169, '123', 'REESE`s', 6, 120),
(170, '123', 'SHOTS FIRED 30', 47, 100),
(171, '123', 'SHOTS FIRED 50', 18, 300),
(172, '123', 'SIR JACK', 17, 250),
(173, '123', 'STUN', 0, 300),
(174, '123', 'TESTER', 4, 50),
(175, '123', 'TSIKLET', 24, 100),
(176, '123', 'VAPINGKIKO', 1, 180),
(177, '123', 'VAPOR DRIVE', 22, 200),
(178, '123', 'VAPORITO 100', 3, 250),
(179, '123', 'VAPORITO 65', 65, 150),
(180, '123', 'VISCOCITY', 1, 300),
(181, '123', 'YUMMYTEH', 13, 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_totalqty` int(11) NOT NULL,
  `timepurchased` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `product_name`, `product_price`, `product_qty`, `product_totalqty`, `timepurchased`, `remarks`) VALUES
(1, 'SHOTS FIRED 30', 100, 1, 51, '2018-06-25 09:24:36', 'Sold'),
(2, 'BLISS LITE', 125, 1, 77, '2018-06-25 09:25:17', 'Sold'),
(3, 'DC', 200, 1, 48, '2018-06-25 09:25:35', 'Sold'),
(4, 'EXPOSURE 30', 100, 1, 55, '2018-06-25 09:25:49', 'Sold'),
(5, 'FRESH & FRUITY PICO', 120, 1, 22, '2018-06-25 09:25:58', 'Sold'),
(6, 'FRESH & FRUITY PICO', 120, 1, 21, '2018-06-25 09:26:02', 'Voided'),
(7, 'VAPORITO 65', 150, 1, 74, '2018-06-25 09:27:16', 'Sold'),
(8, 'COTTON (4Pads/Pack)', 20, 2, 62, '2018-06-25 09:28:27', 'Sold'),
(9, 'VTC-4 (30A, 2100mAh)', 275, 2, 24, '2018-06-25 09:29:35', 'Sold'),
(10, 'VAPORITO 65', 150, 1, 73, '2018-06-25 09:29:49', 'Sold'),
(11, 'MC2', 300, 1, 6, '2018-06-25 09:30:20', 'Sold'),
(12, 'VAPORITO 65', 150, 1, 72, '2018-06-25 09:30:27', 'Sold'),
(13, 'CW MAGIC STICK', 350, 1, 5, '2018-06-25 09:31:04', 'Sold'),
(14, 'KANTHAL A1 CLAPTON 26x32 (1.0m)', 80, 1, 19, '2018-06-25 09:31:22', 'Sold'),
(15, 'GOT MILK', 75, 1, 6, '2018-06-25 09:31:29', 'Sold'),
(16, 'VAPORITO 65', 150, 1, 71, '2018-06-25 09:31:35', 'Sold'),
(17, 'COTTON (4Pads/Pack)', 20, 1, 60, '2018-06-25 09:31:45', 'Sold'),
(18, 'VGOD ELITE RDA KIT', 800, 1, 3, '2018-06-25 09:31:55', 'Sold'),
(19, 'COTTON (4Pads/Pack)', 20, 1, 59, '2018-06-25 09:32:11', 'Sold'),
(20, 'SIR JACK', 250, 1, 18, '2018-06-25 09:32:21', 'Sold'),
(21, 'BATTERY CASE (2-BAY)', 30, 1, 11, '2018-06-25 09:32:30', 'Sold'),
(22, 'VTC-4 (30A, 2100mAh)', 275, 1, 22, '2018-06-25 09:32:34', 'Sold'),
(23, 'CW MAGIC STICK', 350, 1, 4, '2018-06-25 09:32:41', 'Sold'),
(24, 'CUTTER', 150, 1, 6, '2018-06-25 09:32:47', 'Sold'),
(25, '0.60/ Ga22 KANTHAL (1.1m)', 50, 1, 22, '2018-06-25 09:32:54', 'Sold'),
(26, 'COTTON (4Pads/Pack)', 20, 1, 58, '2018-06-25 09:32:59', 'Sold'),
(27, 'VAPORITO 65', 150, 1, 70, '2018-06-25 09:33:06', 'Sold'),
(28, 'VAPORITO 65', 150, 2, 69, '2018-06-25 09:33:13', 'Sold'),
(29, 'TSIKLET', 100, 1, 25, '2018-06-25 09:33:20', 'Sold'),
(30, 'OMEGA WIRES', 180, 1, 44, '2018-06-25 09:34:20', 'Sold'),
(31, 'BLISS LITE', 125, 1, 76, '2018-06-25 09:34:29', 'Sold'),
(32, 'OMEGA WIRES', 180, 1, 43, '2018-06-25 09:34:38', 'Sold'),
(33, 'CUTTER', 150, 1, 5, '2018-06-25 09:34:50', 'Sold'),
(34, 'SHOTS FIRED 30', 100, 1, 50, '2018-06-25 09:35:02', 'Sold'),
(35, 'VAPORITO 65', 150, 1, 67, '2018-06-25 09:35:11', 'Sold'),
(36, 'ANOTHER', 130, 2, 81, '2018-06-25 09:35:17', 'Sold'),
(37, 'BLISS LITE', 125, 4, 75, '2018-06-25 09:35:26', 'Sold'),
(38, 'ANOTHER', 130, 1, 79, '2018-06-25 09:35:49', 'Sold'),
(39, 'SHOTS FIRED 30', 100, 1, 49, '2018-06-25 09:35:57', 'Sold'),
(40, 'SHOTS FIRED 30', 100, 1, 48, '2018-06-25 09:36:01', 'Sold'),
(41, 'SILICONE AEGIS', 200, 1, 1, '2018-06-25 09:36:09', 'Sold'),
(42, 'COTTON (4Pads/Pack)', 20, 2, 57, '2018-06-25 09:36:15', 'Sold'),
(43, 'PREBUILT COIL PAIR', 30, 1, 19, '2018-06-25 09:36:30', 'Sold'),
(44, 'FRESH & FRUITY PICO', 120, 1, 21, '2018-06-25 09:36:37', 'Sold'),
(45, 'VAPORITO 65', 150, 1, 66, '2018-06-25 09:36:51', 'Sold'),
(46, 'KURIN JOKI', 70, 1, 83, '2018-06-25 10:05:22', 'Sold');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addprod`
--
ALTER TABLE `tbl_addprod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_juices`
--
ALTER TABLE `tbl_juices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_content`
--
ALTER TABLE `tbl_product_content`
  ADD PRIMARY KEY (`product_unique_id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addprod`
--
ALTER TABLE `tbl_addprod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tbl_juices`
--
ALTER TABLE `tbl_juices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_product_content`
--
ALTER TABLE `tbl_product_content`
  MODIFY `product_unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
