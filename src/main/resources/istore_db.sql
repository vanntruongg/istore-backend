-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 09:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `istore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_detail_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'iPhone'),
(2, 'iPad'),
(3, 'MacBook - iMac'),
(4, 'Apple - Watch'),
(5, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`color_id`, `color_name`) VALUES
(1, 'Deep Purple'),
(2, 'Blue'),
(3, 'White'),
(4, 'Space Black'),
(5, 'Silver'),
(6, 'Gold'),
(7, 'Red'),
(8, 'Green'),
(9, 'Pink'),
(10, 'Starlight'),
(11, 'Midnight'),
(12, 'Yellow\r\n'),
(13, 'Purple'),
(14, 'Black'),
(15, 'Space Gray'),
(16, 'Gray'),
(17, 'Grey'),
(18, 'Sky Blue'),
(19, 'Rose Gold\r\n'),
(20, 'Dây Blue+Gray'),
(21, 'Dây Black+Gray'),
(22, 'Dây Yellow+Beige'),
(23, 'Graphite Black'),
(24, 'Gold - Blue'),
(25, 'Silver - White'),
(26, 'Graphite'),
(27, 'Orange'),
(28, 'Deep Navy'),
(29, 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `colors_seq`
--

CREATE TABLE `colors_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors_seq`
--

INSERT INTO `colors_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `images_product`
--

CREATE TABLE `images_product` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images_product`
--

INSERT INTO `images_product` (`id`, `img_url`) VALUES
(1, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/1111_u2vpsl.jpg'),
(2, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/33333_lromtv.jpg'),
(3, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/222222_hnkjtu.jpg'),
(4, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/44444_ciji8c.jpg'),
(5, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/2222_qtxmh6.jpg'),
(6, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/14plus-yellow_cizl2c.jpg'),
(7, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/anh-chup-man-hinh-2022-09-08-luc-01-59-53-removebg-preview_mmab65.jpg'),
(8, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/anh-chup-man-hinh-2022-09-08-luc-01-57-13-removebg-preview_gmbbtq.jpg'),
(9, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/anh-chup-man-hinh-2022-09-08-luc-01-59-18-removebg-preview_ziw5dz.jpg'),
(10, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/anh-chup-man-hinh-2022-09-08-luc-01-58-38-removebg-preview_f7msmz.jpg'),
(11, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561813/istote-storage/iphone/iphone13-series/image-removebg-preview-14_v8ol4j.jpg'),
(12, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-13_w8cg04.jpg'),
(13, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-2_lgmfwa.jpg'),
(14, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-11_rvin8v.jpg'),
(15, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-12_adcbv8.jpg'),
(16, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-10_ayjgal.jpg'),
(17, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini-3_xlm8gs.jpg'),
(18, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/image-removebg-preview_637547045799326930_krd56x.jpg'),
(19, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini-2_lbqvza.jpg'),
(20, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini-4_bbpqvl.jpg'),
(21, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini_eqweca.jpg'),
(22, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini-5_f5dyin.jpg'),
(23, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561924/istote-storage/iphone/iphone11-series/ip11_white_yvv9uj.jpg'),
(24, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561924/istote-storage/iphone/iphone11-series/ip11_white-2_tfa85u.jpg'),
(25, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561924/istote-storage/iphone/iphone11-series/51kGDXeFZKL._SL1024__yekldt.jpg'),
(26, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561923/istote-storage/iphone/iphone11-series/apple-iphone-11-64gb-6.1_uixgkg.jpg'),
(27, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561923/istote-storage/iphone/iphone11-series/iphone_11_7_gua2pv.jpg'),
(28, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561923/istote-storage/iphone/iphone11-series/iphone_11_4_zzitt7.jpg'),
(29, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562145/istote-storage/ipad/ipad-gen10/gen-10-2_u5lc7l.jpg'),
(30, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-6_ibxvu6.jpg'),
(31, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-1_gti3in.jpg'),
(32, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-4_n4e8qv.jpg'),
(33, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-3_ysxskp.jpg'),
(34, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-5_bixfnm.jpg'),
(35, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562174/istote-storage/ipad/ipad-gen9/image-removebg-preview-27_ezeejy.jpg'),
(36, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562173/istote-storage/ipad/ipad-gen9/image-removebg-preview-26_gu8gdu.jpg'),
(37, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562225/istote-storage/ipad/ipad-pro/pro-m2-1_z88s71.png'),
(38, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562225/istote-storage/ipad/ipad-pro/pro-m2-2_xgorfo.png'),
(39, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562225/istote-storage/ipad/ipad-pro/pro-m1_qkj6v2.png'),
(40, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562225/istote-storage/ipad/ipad-pro/pro-m1_qkj6v2.png'),
(41, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562203/istote-storage/ipad/ipad-mini/image-removebg-preview-23_qpybpw.jpg'),
(42, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562202/istote-storage/ipad/ipad-mini/image-removebg-preview-22_wmzucv.jpg'),
(43, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562202/istote-storage/ipad/ipad-mini/image-removebg-preview-25_gytqss.jpg'),
(44, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562202/istote-storage/ipad/ipad-mini/image-removebg-preview-24_ndfn75.jpg'),
(45, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-2_c4bqsb.jpg'),
(46, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-3_gq7vyz.jpg'),
(47, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-5_gapvbx.jpg'),
(48, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-5_gapvbx.jpg'),
(49, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-4_kbdoik.jpg'),
(50, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562120/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-6_opovrx.jpg'),
(51, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562120/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-8_aagl5e.jpg'),
(52, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562120/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-7_ixm94t.jpg'),
(53, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562113/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-5_tebezj.jpg'),
(54, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562113/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-1_q5gxmy.jpg'),
(55, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/air-m1-3_u6e57u.jpg'),
(56, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/air-m1-1_o7egom.jpg'),
(57, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562287/istote-storage/macbook/air-m2-15-4_yux5ej.jpg'),
(58, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562287/istote-storage/macbook/air-m2-15-2_pmecqc.jpg'),
(59, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-1_zimftm.jpg'),
(60, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-2_twve86.jpg'),
(61, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m2-1_jimuiy.png'),
(62, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-1_dbps6z.png'),
(63, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-3_rxh4fh.png'),
(64, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m1-2_aguyin.png'),
(65, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-2_on6jbj.jpg'),
(66, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562334/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-1_whtiri.jpg'),
(67, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-3_m1jtlw.jpg'),
(68, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562334/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-3_iw68dz.jpg'),
(69, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-1_awrjhm.jpg'),
(70, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-2_zang9p.jpg'),
(71, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-dayvai-2_stf9u4.jpg'),
(72, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-dayvai-1_opryvi.jpg'),
(73, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562347/istote-storage/apple-watch/series3/series3_omrwp2.jpg'),
(74, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daythep-2_t7kvln.jpg'),
(75, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daythep-1_nupt1n.jpg'),
(76, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daythep-3_lt1vjp.jpg'),
(77, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daycaosu-1_c24lwa.jpg'),
(78, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daycaosu-2_setra5.jpg'),
(79, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/viennhom-daycaosu_btowpk.jpg'),
(81, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/apple-watch-s7-3_bomzk2.jpg'),
(82, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/apple-watch-s7-4_r9gkpm.jpg'),
(83, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/apple-watch-s7-2_wuu1pw.jpg'),
(84, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/apple-watch-s7-5_l5vnpu.jpg'),
(85, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/apple-watch-s7-1_ytafvz.jpg'),
(86, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/s7-thep-1_u2eyo3.jpg'),
(87, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/s7-thep-2_hazcui.jpg'),
(88, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/s7-thep-3_corod3.jpg'),
(89, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/vienthep-daycaosu-2_d9j3ae.jpg'),
(90, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/vienthep-daycaosu-3_bxryga.jpg'),
(91, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/vienthep-daycaosu-1_pgulcc.jpg'),
(92, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562491/istote-storage/apple-watch/series8/vienthep-daythep-2_k8kydo.png'),
(93, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/vienthep-daythep-1_nujit2.png'),
(94, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/vienthep-daythep-5_ee3wgq.png'),
(95, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562491/istote-storage/apple-watch/series8/vienthep-daythep-3_tnj2er.png'),
(96, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562491/istote-storage/apple-watch/series8/vienthep-daythep-4_btmkfg.png'),
(97, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-7_moq3lz.png'),
(98, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-8_zo4rkp.png'),
(99, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-4_sc3jp4.png'),
(100, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-3_ycyaq0.png'),
(101, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-9_mbat5o.png'),
(102, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-6_yf40dw.png'),
(103, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-5_a78dd4.png'),
(104, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-5_a78dd4.png'),
(105, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-2_fyr3ic.png'),
(106, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/trail-1_l5wrir.png'),
(107, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/trail-2_ubgq0x.png'),
(108, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/trail-3_wycecg.png'),
(109, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-1_gwnn2e.png'),
(110, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-2_dldemj.png'),
(111, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-3_k2f2tm.png'),
(112, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-4_btmxmk.png'),
(113, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-5_cyzac7.png'),
(114, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562550/istote-storage/apple-watch/apple-watch-ultra/alpine-6_fsnxpe.png'),
(115, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-1_ieimrq.png'),
(116, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562550/istote-storage/apple-watch/apple-watch-ultra/ocean-band-2_iwn64e.png'),
(117, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562550/istote-storage/apple-watch/apple-watch-ultra/ocean-band-3_mjfbij.png'),
(118, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-4_s2loh8.png'),
(119, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562550/istote-storage/apple-watch/apple-watch-ultra/ocean-band-5_oiluwu.png'),
(120, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-6_lbgjwn.png'),
(121, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-7_fsilfz.png'),
(122, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-8_zodpnf.png'),
(123, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-9_huvwkw.png'),
(124, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/beats-studio-buds-1_nze9rz.png'),
(125, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/beats-studio-buds-3_jnfacf.png'),
(126, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/beats-studio-buds-2_ukgd0q.png'),
(127, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-1_kbaiys.png'),
(128, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-2_x4tprp.png'),
(129, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-3_w0dd5n.png'),
(130, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-4_jfwn8a.png'),
(131, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-mouse-1_isz2jh.png'),
(132, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-mouse-2_p09oqz.png'),
(133, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/pencil-gen2_viyiir.png'),
(134, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/20w-typec-1_inxhey.png'),
(135, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/20w-typec-2_x4disk.png'),
(136, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/20w-typec-3_ynvgmb.png'),
(137, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/20w-typec-4_i9akua.png'),
(138, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-12.9_b4hkuo.png'),
(139, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/airtag-1_ymbclf.png'),
(140, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/airtag-4_b9czcc.png'),
(141, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/aitag-loop-2_rfpwf3.png'),
(142, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/airtag-loop-1_lbj2uk.png'),
(143, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562637/istote-storage/accessories/airtag-leather_x3z2cq.png'),
(144, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562637/istote-storage/accessories/airtag-leather-key-ring_url4kk.png'),
(145, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/cap-sac-apple-usb-c-to-c-2m-chinh-hang-apple-viet-nam-1_y5g0ax.png'),
(146, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-2021-4_dvn0eq.png'),
(147, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-2021-3_xoe7gw.png'),
(148, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-2021-1_rzzpxb.png'),
(149, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-2021-2_skglud.png'),
(150, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/12w-1_ociblg.png'),
(151, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/12w-2_nto38l.png'),
(152, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/12w-3_siaggt.png'),
(153, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/5w-1_gqprtp.png'),
(154, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/5w-2_b4z8gi.png'),
(155, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/5w-3_zxketg.png'),
(156, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/image-removebg-preview-2_637921144566237150_liq0km.png'),
(157, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/image-removebg-preview-1_637921144566237150_jkkygf.png'),
(158, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/mmx62-1_an5ulu.png'),
(159, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/mmx62-2_sqqpte.png'),
(160, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/mmx62-3_y689ep.png'),
(161, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/trackpad-2-7_xr5nfu.png'),
(162, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-4_bwpdbe.png'),
(163, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-3_gt5bxt.png'),
(164, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-5_buayrs.png'),
(165, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/trackpad-2-9_cmjtec.png'),
(166, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/trackpad-2-8_mtscsw.png'),
(167, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-2_e3m3rn.png'),
(168, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-1_rar5m2.png'),
(169, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-6_yarkv1.png'),
(170, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/usb-c-to-pencil-3_am7par.png'),
(171, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/usb-c-to-pencil-2_f5fr2r.png'),
(172, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/md818-removebg-preview_qc2xn8.png'),
(173, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/apple-pencil_ri3e9q.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `oder_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `product_version_id` int(11) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `description`, `image_url`, `product_name`, `price`, `series_id`, `product_version_id`, `option`) VALUES
(1, 'iPhone 14 Pro Max VN/A là dòng sản phẩm cao cấp nhất nằm trong thế hệ iPhone 14 Series mới vừa được ra mắt cùng với nhiều nâng cấp về ngoại hình và tính năng, hứa hẹn sẽ là dòng sản phẩm đột phá trong vài năm trở lại đây của Apple.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/44444_ciji8c.jpg', 'Điện thoại di động iPhone 14 Pro Max (128GB) - Chính hãng VN/A', 25990000, 4, 4, '128GB'),
(2, 'iPhone 14 Pro Max VN/A là dòng sản phẩm cao cấp nhất nằm trong thế hệ iPhone 14 Series mới vừa được ra mắt cùng với nhiều nâng cấp về ngoại hình và tính năng, hứa hẹn sẽ là dòng sản phẩm đột phá trong vài năm trở lại đây của Apple.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/1111_u2vpsl.jpg', 'Điện thoại di động iPhone 14 Pro Max (256GB) - Chính hãng VN/A', 28590000, 4, 4, '256GB'),
(3, 'iPhone 14 Plus là phiên bản thay thế mini trong thế hệ iPhone 14 Series, vốn được Apple giới thiệu trên thế hệ iPhone 12 và 13 series, nhằm tránh nhầm lẫn với dòng Pro Max. Đây là phiên bản giá rẻ hơn của iPhone 14 Pro Max, với thiết kế tinh tế với những nâng cấp ấn tượng về camera và khả năng an toàn mới mang tính đột phá.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/2222_qtxmh6.jpg', 'Điện thoại di động iPhone 14 Plus (128GB) - Chính hãng VN/A', 21590000, 4, 2, '128GB'),
(4, 'iPhone 14 Plus là phiên bản thay thế mini trong thế hệ iPhone 14 Series, vốn được Apple giới thiệu trên thế hệ iPhone 12 và 13 series, nhằm tránh nhầm lẫn với dòng Pro Max. Đây là phiên bản giá rẻ hơn của iPhone 14 Pro Max, với thiết kế tinh tế với những nâng cấp ấn tượng về camera và khả năng an toàn mới mang tính đột phá.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/14plus-yellow_cizl2c.jpg', 'Điện thoại di động iPhone 14 Plus (256GB) - Chính hãng VN/A', 24390000, 4, 2, '256GB'),
(5, 'iPhone 14 Pro sở hữu màn hình OLED kích thước 6.1 inch với độ phân giải 2556 x 1179 Pixels cho khả năng hiển thị siêu sắc nét đến từng chi tiết, màu sắc sống động, nâng cao trải nghiệm thị giác của người dùng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/33333_lromtv.jpg', 'Điện thoại di động iPhone 14 Pro (128GB) - Chính hãng VN/A', 23790000, 4, 3, '128GB'),
(6, 'iPhone 14 Pro chính hãng VN/A năm nay cũng được lấy cảm hứng từ mẫu iPhone 5 đời đầu với các góc cạnh vuông vức và mặt lưng phẳng. Mặt sau của iPhone 14 Pro là cụm camera ba cảm biến được tích hợp những công nghệ nhiếp ảnh hàng đầu. Chiếc điện thoại có trọng lượng chỉ 206g và độ dày 7.9mm, người dùng có thể cầm gọn trong lòng bàn tay và sử dụng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/222222_hnkjtu.jpg', 'Điện thoại di động iPhone 14 Pro (256GB) - Chính hãng VN/A', 25990000, 4, 3, '256GB'),
(7, 'iPhone 14 Pro chính hãng VN/A năm nay cũng được lấy cảm hứng từ mẫu iPhone 5 đời đầu với các góc cạnh vuông vức và mặt lưng phẳng. Mặt sau của iPhone 14 Pro là cụm camera ba cảm biến được tích hợp những công nghệ nhiếp ảnh hàng đầu. Chiếc điện thoại có trọng lượng chỉ 206g và độ dày 7.9mm, người dùng có thể cầm gọn trong lòng bàn tay và sử dụng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/1111_u2vpsl.jpg', 'Điện thoại di động iPhone 14 Pro (512GB) - Chính hãng VN/A', 32490000, 4, 3, '512GB'),
(8, 'iPhone 14 Series có thiết kế không thay đổi quá nhiều. Phần lưng máy phẳng, các cạnh vuông mang phong cách của những chiếc iPhone 5 đời đầu. Máy có trọng lượng chỉ khoảng 172g và độ dày 7.8mm, tạo cảm giác thoải mái khi cầm trên tay sử dụng. iPhone 14 chính hãng VN/A ánh lên vẻ đẹp hiện đại, sang trọng từ mọi góc nhìn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561772/istote-storage/iphone/iphone14-series/anh-chup-man-hinh-2022-09-08-luc-01-57-13-removebg-preview_gmbbtq.jpg', 'Điện thoại di động iPhone 14 (128GB) - Chính hãng VN/A', 18790000, 4, 1, '128GB'),
(9, 'iPhone 14 Series có thiết kế không thay đổi quá nhiều. Phần lưng máy phẳng, các cạnh vuông mang phong cách của những chiếc iPhone 5 đời đầu. Máy có trọng lượng chỉ khoảng 172g và độ dày 7.8mm, tạo cảm giác thoải mái khi cầm trên tay sử dụng. iPhone 14 chính hãng VN/A ánh lên vẻ đẹp hiện đại, sang trọng từ mọi góc nhìn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561773/istote-storage/iphone/iphone14-series/2222_qtxmh6.jpg', 'Điện thoại di động iPhone 14 (256GB) - Chính hãng VN/A', 21890000, 4, 1, '256GB'),
(10, 'Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-10_ayjgal.jpg', 'Điện thoại di động iPhone 13 (128GB) - Chính hãng VN/A', 16390000, 3, 5, '128GB'),
(11, 'Con chip Apple A15 Bionic siêu mạnh được sản xuất trên quy trình 5 nm giúp iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với các đối thủ trong cùng phân khúc.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-13_w8cg04.jpg', 'Điện thoại di động iPhone 13 (256GB) - Chính hãng VN/A', 19490000, 3, 5, '256GB'),
(12, 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-11_rvin8v.jpg', 'Điện thoại di động iPhone 13 mini (128GB) - Chính hãng VN/A', 15990000, 3, 6, '128GB'),
(13, 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561812/istote-storage/iphone/iphone13-series/image-removebg-preview-12_adcbv8.jpg', 'Điện thoại di động iPhone 13 mini (512GB) - Chính hãng VN/A', 17990000, 3, 6, '512GB'),
(18, 'Nhắc tới Apple, người dùng sẽ luôn nghĩ tới những thiết bị iPhone đẳng cấp, mang trên mình một thiết kế vô cùng sang trọng, hiện đại và thời thượng. Và iPhone 12 Series của năm nay cũng không phải là một ngoại lệ. Mẫu iPhone 12 64GB sở hữu một thiết kế đã được “lột xác” hoàn toàn so với các thế hệ tiền nhiệm trước đây với cạnh được vát phẳng, vuông thành sắc cạnh, mang tới một cảm giác cực kì bền bỉ và chắc chắn. Thiết kế này khiến cho người dùng có thể dễ dàng liên tưởng tới những mẫu iPhone huyền thoại trước đây đã làm nên tên tuổi của Apple như iPhone 4 hoặc iPhone 5.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/image-removebg-preview_637547045799326930_krd56x.jpg', 'Điện thoại di động iPhone 12 (64GB) - Chính hãng VN/A', 14290000, 2, 9, '64GB'),
(19, 'Nhắc tới Apple, người dùng sẽ luôn nghĩ tới những thiết bị iPhone đẳng cấp, mang trên mình một thiết kế vô cùng sang trọng, hiện đại và thời thượng. Và iPhone 12 Series của năm nay cũng không phải là một ngoại lệ. Mẫu iPhone 12 64GB sở hữu một thiết kế đã được “lột xác” hoàn toàn so với các thế hệ tiền nhiệm trước đây với cạnh được vát phẳng, vuông thành sắc cạnh, mang tới một cảm giác cực kì bền bỉ và chắc chắn. Thiết kế này khiến cho người dùng có thể dễ dàng liên tưởng tới những mẫu iPhone huyền thoại trước đây đã làm nên tên tuổi của Apple như iPhone 4 hoặc iPhone 5.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini-4_bbpqvl.jpg', 'Điện thoại di động iPhone 12 (128GB) - Chính hãng VN/A', 15190000, 2, 9, '128GB'),
(20, 'iPhone 12 Mini – chiếc điện thoại “em út” trong thế hệ iPhone 12 năm nay đã chính thức được ra mắt. Mang trong mình những cải tiến vượt trội về hiệu năng trong một thân hình nhỏ bé, iPhone 12 Mini hứa hẹn sẽ làm bùng nổ thị trường di động trong thời gian tới.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561841/istote-storage/iphone/iphone12-series/apple-iphone-12-mini_eqweca.jpg', 'Điện thoại di động iPhone 12 mini (256GB) - Chính hãng VN/A', 14990000, 2, 10, '256GB'),
(21, 'iPhone 11 vẫn sở hữu thiết kế tràn viền với “tai thỏ” giống iPhone X. Viền bezel phía trên và dưới cũng được làm gọn lại nhằm tối đa màn hình sử dụng. Cùng với đó, 4 góc của máy cũng được bo tròn nhẹ tạo cảm giác chắc chắn khi cầm trên tay. Mặt lưng iPhone 11 làm từ chất liệu kính nên rất sang trọng, tinh tế. Khác với các dòng iPhone trước, sản phẩm này sẽ có 6 màu bản bạc, vàng, xanh lá, trắng, đen đỏ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561923/istote-storage/iphone/iphone11-series/apple-iphone-11-64gb-6.1_uixgkg.jpg', 'Điện thoại di động iPhone 11 (64GB) - Chính hãng VN/A', 10390000, 1, 13, '64GB'),
(22, 'iPhone 11 vẫn sở hữu thiết kế tràn viền với “tai thỏ” giống iPhone X. Viền bezel phía trên và dưới cũng được làm gọn lại nhằm tối đa màn hình sử dụng. Cùng với đó, 4 góc của máy cũng được bo tròn nhẹ tạo cảm giác chắc chắn khi cầm trên tay. Mặt lưng iPhone 11 làm từ chất liệu kính nên rất sang trọng, tinh tế. Khác với các dòng iPhone trước, sản phẩm này sẽ có 6 màu bản bạc, vàng, xanh lá, trắng, đen đỏ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561924/istote-storage/iphone/iphone11-series/51kGDXeFZKL._SL1024__yekldt.jpg', 'Điện thoại di động iPhone 11 (128GB) - Chính hãng VN/A', 11890000, 1, 13, '128GB'),
(23, 'iPad Gen 10 có kích thước 248.8mm x 179.5mm x 7mm và nặng 477g với phiên bản wifi. Thiết bị mang thiết kế vuông vức, không viền, không có nút home mà Apple đã giới thiệu trên iPad Pro vào năm 2018. Nó gần như là một bản sao của hai mẫu iPad Air cuối cùng, từ vị trí phím bấm, vị trí cổng kết nối, lỗ loa, camera sau cho đến kích thước màn hình đều rất tương đồng, dù nó trông lớn hơn, dày và chắc chắn hơn một ít.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-6_ibxvu6.jpg', 'Máy tính bảng iPad Gen 10 10.9\" Wi-Fi (64GB) - Chính Hãng Apple Việt Nam', 10990000, 24, NULL, '64GB'),
(24, 'Pad Gen 10 có kích thước 248.8mm x 179.5mm x 7mm và nặng 477g với phiên bản wifi. Thiết bị mang thiết kế vuông vức, không viền, không có nút home mà Apple đã giới thiệu trên iPad Pro vào năm 2018. Nó gần như là một bản sao của hai mẫu iPad Air cuối cùng, từ vị trí phím bấm, vị trí cổng kết nối, lỗ loa, camera sau cho đến kích thước màn hình đều rất tương đồng, dù nó trông lớn hơn, dày và chắc chắn hơn một ít.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-1_gti3in.jpg', 'Máy tính bảng iPad Gen 10 10.9\" Wi-Fi (256GB) - Chính Hãng Apple Việt Nam', 14290000, 24, NULL, '256GB'),
(25, 'Với thế hệ iPad Gen 10 - 10.9” - 5G - 64GB, Apple mang lại hàng loạt cải tiến mang tính cách mạng như nới rộng màn hình lên 10.9 inch, đổi mới hoàn toàn ngôn ngữ thiết kế, đem đến bộ màu sắc tươi sáng đa dạng và sử dụng chip A14 Bionic cực kỳ mạnh mẽ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-4_n4e8qv.jpg', 'Máy tính bảng iPad Gen 10 10.9\" 5G (64GB) - Chính hãng Apple Việt Nam', 14240000, 24, NULL, '64GB'),
(26, 'Với thế hệ iPad Gen 10 - 10.9” - 5G - 64GB, Apple mang lại hàng loạt cải tiến mang tính cách mạng như nới rộng màn hình lên 10.9 inch, đổi mới hoàn toàn ngôn ngữ thiết kế, đem đến bộ màu sắc tươi sáng đa dạng và sử dụng chip A14 Bionic cực kỳ mạnh mẽ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562144/istote-storage/ipad/ipad-gen10/gen-10-5_bixfnm.jpg', 'Máy tính bảng iPad Gen 10 10.9\" 5G (256GB) - Chính hãng Apple Việt Nam', 17690000, 24, NULL, '256GB'),
(27, 'iPad Gen 9 10.2 inch 2021 4G chính hãng được trang bị màn hình Retina với kích thước tiêu chuẩn và độ phân giải độ phân giải 2160 x 1620. Với những gì iPad Gen 8 đã cung cấp cho người dùng, màn hình của iPad Gen 9 hứa hẹn trải nghiệm cũng không kém cạnh. Màn hình 10.2 inch cũng cho phép người dùng có thể thoải mái học tập, làm việc cũng như chơi game, xem phim không giới hạn. Ngoài ra màn hình này cũng được trang bị công nghệ TrueTone và hỗ trợ bút Apple Pencil.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562174/istote-storage/ipad/ipad-gen9/image-removebg-preview-27_ezeejy.jpg', 'Máy tính bảng iPad Gen 9 10.2\" 4G (64GB) - Chính hãng Apple Việt Nam', 9690000, 23, NULL, '64GB'),
(28, 'iPad Gen 9 10.2 inch 2021 4G chính hãng được trang bị màn hình Retina với kích thước tiêu chuẩn và độ phân giải độ phân giải 2160 x 1620. Với những gì iPad Gen 8 đã cung cấp cho người dùng, màn hình của iPad Gen 9 hứa hẹn trải nghiệm cũng không kém cạnh. Màn hình 10.2 inch cũng cho phép người dùng có thể thoải mái học tập, làm việc cũng như chơi game, xem phim không giới hạn. Ngoài ra màn hình này cũng được trang bị công nghệ TrueTone và hỗ trợ bút Apple Pencil.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562173/istote-storage/ipad/ipad-gen9/image-removebg-preview-26_gu8gdu.jpg', 'Máy tính bảng iPad Gen 9 10.2\" 4G (256GB) - Chính hãng Apple Việt Nam', 12990000, 23, NULL, '256GB'),
(29, 'iPad Gen 9 10.2 inch (2021) Wifi sở hữu bộ vi xử lý Apple A13 Bionic mạnh mẽ. Con chip này được sản xuất trên tiến trình 7nm+ nên có hiệu năng cao gấp 6 lần thế hệ trước. Apple cũng tuyên bố A13 Bionic trên iPad mới cải thiện 20% hiệu suất CPU và GPU. Nhờ đó, tất cả các tác vụ đều diễn ra một cách mượt mà, nhanh chóng. Từ xem phim, lướt web cho đến chơi game hay chậm chí chạy nhiều ứng dụng, iPad Gen 9 10.2 inch (2021) Wifi đều đáp ứng xuất sắc.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562174/istote-storage/ipad/ipad-gen9/image-removebg-preview-27_ezeejy.jpg', 'Máy tính bảng iPad Gen 9 10.2\" Wi-Fi (64GB) - Chính hãng Apple Việt Nam', 6890000, 23, NULL, '64GB'),
(30, 'iPad Gen 9 10.2 inch (2021) Wifi sở hữu bộ vi xử lý Apple A13 Bionic mạnh mẽ. Con chip này được sản xuất trên tiến trình 7nm+ nên có hiệu năng cao gấp 6 lần thế hệ trước. Apple cũng tuyên bố A13 Bionic trên iPad mới cải thiện 20% hiệu suất CPU và GPU. Nhờ đó, tất cả các tác vụ đều diễn ra một cách mượt mà, nhanh chóng. Từ xem phim, lướt web cho đến chơi game hay chậm chí chạy nhiều ứng dụng, iPad Gen 9 10.2 inch (2021) Wifi đều đáp ứng xuất sắc.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562173/istote-storage/ipad/ipad-gen9/image-removebg-preview-26_gu8gdu.jpg', 'Máy tính bảng iPad Gen 9 10.2\" Wi-Fi (256GB) - Chính hãng Apple Việt Nam', 10990000, 23, NULL, '256GB'),
(31, ' iPad Pro M2 11 inch 5G 128GB chính hãng Apple Việt Nam có các cạnh được bo cong tinh tế với phần khung kim loại cao cấp. Thiết bị có độ dày chỉ khoảng 5.9mm và trọng lượng 470 gram nên người dùng có thể cầm thoải mái trên tay và thao tác. Mặt lưng của máy là mô-đun máy ảnh vuông và nổi bật với hai màu xám và bạc. Chiếc iPad Pro M2 11 inch 5G 128GB chính hãng toát lên sự cao cấp, sang trọng từ mọi góc nhìn.\r\n\r\n', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-2_zceoqa.jpg', 'Máy tính bảng iPad Pro M2 11\" 5G (128GB) - Chính hãng Apple Việt Nam', 23590000, 5, 16, '128GB'),
(32, 'iPad Pro M2 11 inch 5G 256GB chính hãng Apple Việt Nam được giới thiệu đến người dùng vào cuối năm 2022. Máy tính bảng sở hữu thiết kế nguyên khối với phần khung máy làm từ vật liệu cao cấp và mặt lưng hoàn thiện từ kim loại chắc chắn, giúp tăng độ bền đáng kể. Thiết kế siêu mỏng vẫn luôn là điều Apple hướng tới, máy tính bảng chỉ mỏng khoảng 5.9mm và trọng lượng là 470 gram.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-2_zceoqa.jpg', 'Máy tính bảng iPad Pro M2 11\" 5G (256GB) - Chính hãng Apple Việt Nam', 26990000, 5, 16, '256GB'),
(33, 'iPad Pro M2 11 inch 5G 512GB chính hãng Apple Việt Nam còn có thể kết nối dễ dàng với các phụ kiện để nâng cao trải nghiệm. Người dùng có thể sử dụng iPad Pro cùng với bàn phím để soạn thảo dễ dàng hơn. iPad Pro M2 2022 cũng có thể kết nối với Apple Pencil 2 ở khoảng cách 12mm nên các thao tác sẽ phản hồi nhanh hơn, chính xác hơn. iPad Pro M2 11 inch 5G 512GB chính hãng Apple Việt Nam thích hợp với những người dùng làm công việc sáng tạo nội dung, thiết kế hình ảnh đồ họa,..... Sản phẩm có hai tùy chọn màu silver và gray sang trọng, phù hợp với mọi đối tượng người dùng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-2_zceoqa.jpg', 'Máy tính bảng iPad Pro M2 11\" 5G (512GB) - Chính hãng Apple Việt Nam', 33990000, 5, 16, '512GB'),
(34, 'Dòng máy tính bảng cao cấp của Apple iPad Pro M2 đã chính thức ra mắt vào cuối năm 2022, lên kệ 18 tháng sau iPad Pro M1. So về thiết kế, phiên bản M2 không có nhiều thay đổi so với phiên bản trước, vẫn là thân máy nguyên khối kèm kính cường lực cao cấp, trọng lượng và kích thước cũng không thay đổi, vẫn cung cấp 2 tùy chọn màu sắc khá đơn giản là bạc và xám bạc. Màn hình rộng 11 inch có độ phân giải 1668 x 2388 pixels chân thực và sắc nét.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-1_afy1dl.jpg', 'Máy tính bảng iPad Pro M2 11\" Wi-Fi (128GB) - Chính hãng Apple Việt Nam', 19990000, 5, 16, '128GB'),
(35, 'Apple iPad Pro M2 sở hữu thân máy nguyên khối gia công từ kim loại bền bỉ. Khối lượng của iPad là 466g. Các mẫu iPad mới lần đầu tiên đã được thiết kế để giảm thiểu tác động của chúng đối với môi trường. Thiết bị được làm từ 100% vàng tái chế, áp dụng cho lớp mạ của nhiều bảng mạch in, cũng như các nguyên tố nhôm, thiếc và đất hiếm tái chế.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-1_afy1dl.jpg', 'Máy tính bảng iPad Pro M2 11\" Wi-Fi (256GB) - Chính hãng Apple Việt Nam', 23190000, 5, 16, '256GB'),
(36, 'Bề ngoài của iPad Pro không thay đổi – vẫn đẹp như các phiên bản trước. Màn hình mini LED vẫn là ngôi sao của chương trình: sáng, siêu mượt và phản hồi nhanh khi duyệt web và sử dụng các nội dung tiêu chuẩn khác. Khối lượng của thiết bị vẫn như cũ: 466g.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-1_afy1dl.jpg', 'Máy tính bảng iPad Pro M2 11\" Wi-Fi (512GB) - Chính hãng Apple Việt Nam', 30990000, 5, 16, '512GB'),
(37, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-1_afy1dl.jpg', 'Máy tính bảng iPad Pro M2 12.9\" Wi-Fi (128GB) - Chính hãng Apple Việt Nam', 27650000, 5, 16, '128GB'),
(38, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-1_afy1dl.jpg', 'Máy tính bảng iPad Pro M2 12.9\" Wi-Fi (256GB) - Chính hãng Apple Việt Nam', 30250000, 5, 16, '256GB'),
(39, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-2_zceoqa.jpg', 'Máy tính bảng iPad Pro M2 12.9\" 5G (128GB) - Chính hãng Apple Việt Nam', 31190000, 5, 16, '128GB'),
(40, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m2-2_zceoqa.jpg', 'Máy tính bảng iPad Pro M2 12.9\" 5G (256GB) - Chính hãng Apple Việt Nam', 34290000, 5, 16, '256GB'),
(41, 'iPad Pro M1 12.9\" (2021) 5G vẫn giữ thiết kế quen thuộc như những phiên bản tiền nhiệm. Tuy nhiên, Apple đã mang đến một vài điểm khác biệt như 4 cạnh bo cong vuông vức, màn hình viền mỏng hơn. Kích thước 12.9 inch của máy cũng tương tự phiên bản năm 2020.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m1_o2tavo.jpg', 'Máy tính bảng iPad Pro M1 12.9\" 5G (256GB) - Chính hãng Apple Việt Nam', 30890000, 5, 22, '256GB'),
(42, 'Năm 2021, Apple chính thức cho ra mắt iPad Pro thế hệ mới với nhiều nâng cấp về mặt cấu hình. Trong đó, phiên bản iPad Pro M1 12.9”  (2021) Wifi là sản phẩm nhận được  nhiều sự săn đón của iFan bởi nó đem lại những trải nghiệm khác biệt so với thế hệ cũ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690570263/istote-storage/ipad/ipad-pro/pro-m1_o2tavo.jpg', 'Máy tính bảng iPad Pro M1 12.9\" Wi-Fi (512GB) - Chính hãng Apple Việt Nam', 31890000, 5, 22, '512GB'),
(43, 'iPad mini 6 được Apple thiết kế cân đối, vừa tay và hướng tới mục đích giúp người sử dụng có thể dễ dàng mang theo bên mình đi khắp mọi nơi. \r\n\r\nSản phẩm này có kích thước màn hình 8.3 inch với tấm nền Liquid Retina, hỗ trợ True Tone và có thể đạt độ sáng tối đa 500 nits đem lại hình ảnh sắc nét, tự nhiên. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562202/istote-storage/ipad/ipad-mini/image-removebg-preview-24_ndfn75.jpg', 'Máy tính bảng iPad mini 6 8.3\" 5G (64GB) - Chính hãng Apple Việt Nam', 15490000, 9, NULL, '64GB'),
(44, 'iPad Mini 6 8.3” (2021) được thiết kế tràn cạnh với viền màn hình mỏng, các góc bo tròn thanh lịch và phần khung phẳng sang trọng. Cảm biến vân tay Touch ID đã được tích hợp vào phím nguồn cạnh trên, giúp người dùng có thể xác thực nhanh chóng, dễ dàng và an toàn. Bên cạnh đó, iPad Mini 6 hoàn toàn vừa vặn trong tay người dùng, giúp cho việc sử dụng trở nên dễ dàng hơn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562202/istote-storage/ipad/ipad-mini/image-removebg-preview-22_wmzucv.jpg', 'Máy tính bảng iPad mini 6 8.3\" Wi-Fi (64GB) - Chính hãng Apple Việt Nam', 11690000, 9, NULL, '64GB'),
(45, 'iPad Air 10.9 inch (2020) – 4G – 64GB chính hãng trông như một phiên bản thu nhỏ của iPad Pro. Mặt sau của máy tính bảng hoàn thiện từ chất liệu nhôm sang trọng. Các cạnh của thiết bị được bo vuông góc, với viền màn hình cực mỏng, làm toát lên vẻ sang trọng, đẳng cấp và vô cùng chắc chắn khi cầm trên tay. Chính vì thiết kế viền mỏng, nút Home Touch ID cũng đã được loại bỏ. Tuy nhiên, iPad Air 10.9 inch (2020) – 4G - 64GB sẽ không có bảo mật FaceID, thay vào đó cảm biến đã được tích hợp vào nút nguồn ở bên hông của máy.  ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020_jrebcf.jpg', 'Máy tính bảng iPad Air 4 10.9\" 4G (64GB) - Chính hãng Apple Việt Nam', 13990000, 6, 20, '64GB'),
(46, 'iPad Air 10.9 inch (2020) – 4G – 256GB chính hãng trông như một phiên bản thu nhỏ của iPad Pro. Mặt sau của máy tính bảng hoàn thiện từ chất liệu nhôm sang trọng. Các cạnh của thiết bị được bo vuông góc, với viền màn hình cực mỏng, làm toát lên vẻ sang trọng, đẳng cấp và vô cùng chắc chắn khi cầm trên tay. Chính vì thiết kế viền mỏng, nút Home Touch ID cũng đã được loại bỏ. Tuy nhiên, iPad Air 10.9 inch (2020) – 4G - 256GB sẽ không có bảo mật FaceID, thay vào đó cảm biến đã được tích hợp vào nút nguồn ở bên hông của máy.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690561981/istote-storage/ipad/ipad-air/apple-ipad-air-10-9-2020-4_kbdoik.jpg', 'Máy tính bảng iPad Air 4 10.9\" 4G (256GB) - Chính hãng Apple Việt Nam', 16590000, 6, 20, '256GB'),
(47, 'iPad Air M1 10.9\" - 2022 có RAM 8GB, gấp đôi so với 4GB của người tiền nhiệm. Về dung lượng lưu trữ, có các tùy chọn 64 GB, 256 GB để lựa chọn. Nếu với những người “ăn ngủ” cùng iPad để làm việc, thì phiên bản 256GB sẽ đáp ứng tốt yêu cầu!', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562120/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-7_ixm94t.jpg', 'Apple iPad Air 5 M1 10.9\" - 2022 - Wifi - 256GB - Chính Hãng Apple Việt Nam', 17990000, 6, 21, '256GB'),
(48, 'iPad Air M1 10.9\" - 2022 có RAM 8GB, gấp đôi so với 4GB của người tiền nhiệm. Về dung lượng lưu trữ, có các tùy chọn 64 GB, 256 GB để lựa chọn. Nếu với những người “ăn ngủ” cùng iPad để làm việc, thì phiên bản 256GB sẽ đáp ứng tốt yêu cầu!', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562120/istote-storage/ipad/ipad-air/apple-ipad-air-m1-10-9-2022-8_aagl5e.jpg', 'Apple iPad Air 5 M1 10.9\" - 2022 - 5G - 64GB - Chính Hãng Apple Việt Nam', 16950000, 6, 21, '64GB'),
(49, 'Là một chiếc ultrabook cao cấp, MacBook Air mang trên mình tất cả thẩm mỹ tinh tế của Apple trong thiết kế sản phẩm. MacBook Air M1 được hoàn thiện từ chất liệu nhôm nguyên khối, không chỉ nhẹ mà còn rất sang trọng. Trọng lượng chỉ 1,29kg cũng giúp người dùng tiện lợi mang đi sử dụng ở mọi nơi. Khách hàng có thể lựa chọn ba phiên bản màu khác nhau phù hợp với cả tính mỗi người, bao gồm xám, bạc và vàng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/air-m1-3_u6e57u.jpg', 'MacBook Air M1 13\" (8GB/256GB) - Chính hãng Apple Việt Nam', 18590000, 11, 23, '256GB'),
(50, 'Là một chiếc ultrabook cao cấp, MacBook Air mang trên mình tất cả thẩm mỹ tinh tế của Apple trong thiết kế sản phẩm. MacBook Air M1 được hoàn thiện từ chất liệu nhôm nguyên khối, không chỉ nhẹ mà còn rất sang trọng. Trọng lượng chỉ 1,29kg cũng giúp người dùng tiện lợi mang đi sử dụng ở mọi nơi. Khách hàng có thể lựa chọn ba phiên bản màu khác nhau phù hợp với cả tính mỗi người, bao gồm xám, bạc và vàng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/air-m1-1_o7egom.jpg', 'MacBook Air M1 13\" (8GB/512GB) - Chính hãng Apple Việt Nam', 24990000, 11, 23, '512GB'),
(51, 'MacBook Air M2 15-inch tiếp tục mang đến sự thần thái dựa trên thiết kế của những dòng sản phẩm trước đó là MacBook Air 13 inch, với những cải tiến nhỏ. Theo đó, kích thước màn hình của MacBook Air 15 inch sẽ lớn hơn, nhưng vẫn giữ được tính di động với thiết kế mỏng nhẹ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562287/istote-storage/macbook/air-m2-15-2_pmecqc.jpg', 'MacBook Air M2 15\" (8GB/512GB) - Chính hãng Apple Việt Nam', 36890000, 11, 24, '512GB'),
(52, 'Macbook Air M2 tiếp tục giữ thiết kế mỏng nhẹ và sang trọng từ phiên bản trước đó. Với khung máy nhôm siêu nhẹ và viền màn hình mỏng, Macbook Air M2 15-inch tạo ra một diện mạo đẹp mắt và gọn gàng. Khối lượng chỉ 1.51 kg cùng kích thước nhỏ gọn với độ mỏng chỉ 1.15 cm giúp người dùng dễ dàng mang theo máy bất cứ nơi đâu và làm việc trên đường đi mà không gặp bất kỳ rào cản nào.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562286/istote-storage/macbook/air-m2-15-1_srck0c.jpg', 'MacBook Air M2 15\" (8GB/256GB) - Chính hãng Apple Việt Nam', 31890000, 11, 24, '256GB'),
(53, 'Sau những siêu phẩm trang bị con chip M1 độc quyền, Apple tiếp tục giới thiệu đến thị trường “người kế nhiệm” - chip M2. Con chip mới hứa hẹn sẽ mang đến hiệu năng vượt trội hơn so với các đối thủ cạnh tranh khác. MacBook Air M2 13.6 inch cũng đánh dấu sự cách tân về thiết kế trong dòng sản phẩm máy tính nhà Apple. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562286/istote-storage/macbook/air-m2-13.6-6_q5oznu.jpg', 'MacBook Air M2 13.6\" (8GB/256GB) - Chính hãng Apple Việt Nam', 26990000, 11, 24, '256GB'),
(54, 'MacBook Air M2 13.6 inch 2022 512GB chính hãng được trang bị tấm nền Liquid Retina với độ phân giải 2560 x 1664 và độ sáng 500nits. Nhờ công nghệ True Tone, màn hình có thể tự động điều chỉnh độ sáng theo môi trường, mang đến chất lượng hiển thị hình ảnh chân thực và tự nhiên nhất. Màn hình rộng 13.6 inch với phần viền cực mỏng. Đây là lần đầu tiên Apple mang thiết kế “tai thỏ” quen thuộc trên những chiếc iPhone lên dòng sản phẩm MacBook. Nó giúp tối ưu không gian màn hình, đưa người dùng đắm chìm vào không gian giải trí trên màn hình. Ngay cả khi bạn sử dụng cho mục đích học tập, làm việc, máy cũng sẽ hiển thị nội dung đầy đủ nhất.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562286/istote-storage/macbook/air-m2-13.6-1_vcjbwg.jpg', 'MacBook Air M2 13.6\" (8GB/512GB) - Chính hãng Apple Việt Nam', 31490000, 11, 24, '512GB'),
(55, 'MacBook Air M2 13” là sản phẩm MacBook gây ấn tượng bởi sự sang trọng, màn hình đỉnh cao cùng hệ thống âm thanh chân thật. Cấu hình với Apple M2 luôn đảm bảo sức mạnh dữ dội, cùng Apple thiết lập tầm cao mới cho các thiết bị máy tính xách tay!', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562286/istote-storage/macbook/air-m2-13.6-3_dzs5fl.jpg', 'MacBook Air M2 13.6\" (16GB/256GB) - Chính hãng Apple Việt Nam', 32890000, 11, 24, '256GB'),
(56, 'MacBook Pro 14\" M2 Pro/10-core CPU/16-core GPU/16GB/512GB là một trong những sản phẩm mới đáng chú ý của nhà Apple trong năm nay. Với thiết kế tinh tế và thanh lịch, chiếc MacBook này không chỉ là một công cụ làm việc hiệu quả mà còn là một biểu tượng thể hiện sự thành đạt và phong cách của người sử dụng. Bên cạnh đó, thiết bị được sở hữu hiệu năng vô cùng mạnh mẽ và tiên tiến, giúp người dùng dễ dàng làm việc trên nhiều tác vụ đồng thời một cách mượt mà và hiệu quả hơn bao giờ hết.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-1_zimftm.jpg', 'MacBook Pro 14\" (M2 Pro/10-core CPU/16-core GPU/16GB/512GB) - Chính hãng', 46590000, 10, 28, '512GB'),
(57, 'MacBook là dòng sản phẩm công nghệ tiên tiến mang đầy tham vọng của Apple trong lĩnh vực laptop. Với thiết kế mới, cùng với những sự nâng cấp đáng kể về hiệu năng, MacBook Pro 14\" M2 Pro hứa hẹn sẽ mang đến cho người dùng một trải nghiệm sử dụng đỉnh cao mỗi ngày.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-1_zimftm.jpg', 'MacBook Pro 14\" (M2 Pro/12-core CPU/19-core GPU/16GB/1TB) - Chính hãng', 57990000, 10, 28, '1TB'),
(58, 'MacBook Pro 16” M2 Pro là sản phẩm laptop cao cấp đến từ thương hiệu nổi tiếng Apple. Máy sở hữu thiết kế sang trọng, thời thượng và đẳng cấp, đi cùng với đó hiệu năng siêu khủng với vi xử lý Apple M2 Pro. Đây hứa hẹn sẽ là một “trợ lý” đắc lực, giúp bạn có những trải nghiệm sử dụng hàng ngày trong công việc và giải trí được trọn vẹn và hoàn hảo nhất.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-2_twve86.jpg', 'MacBook Pro 16\" (M2 Pro/12-core CPU/19-core GPU/16GB/512GB) - Chính hãng', 58690000, 10, 28, '512GB'),
(59, 'MacBook Pro 16\" M2 Pro/12-core CPU/19-core GPU/16GB/1TB có vẻ ngoài không quá đáng kể so với tiền nhiệm của nó là MacBook Pro 16 inch được ra mắt năm 2021. Với kích thước 35.57 x 24.81 x 1.68 cm (dài x rộng x cao) cùng với khối lượng không quá đáng kể chỉ 2.15kg, chiếc Macbook này hoàn toàn phù hợp cho mọi nơi bạn đến dù là quán cà phê hay nơi bạn làm việc, học tập.  ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m2-pro-2_twve86.jpg', 'MacBook Pro 16\" (M2 Pro/12-core CPU/19-core GPU/16GB/1TB) - Chính hãng', 64000000, 10, 28, '1TB'),
(60, 'Máy được hoàn thiện với lớp vỏ kim loại nguyên khối và bộ khung phẳng. Trọng lượng của máy chỉ khoảng 1.4kg và độ dày là 15.6mm. Nhờ đó MacBook Pro M2 phiên bản mới trông sang trọng, thời thượng hơn mà vẫn vô cùng tiện lợi khi có thể có thể bỏ vào túi, cặp xách và mang theo di chuyển dễ dàng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m2-1_jimuiy.png', 'MacBook Pro M2 13\" (8GB/256GB) - Chính hãng Apple Việt Nam', 29990000, 10, 26, '256GB'),
(61, 'MacBook Pro M2 13 inch 2022 chính hãng cũng đi kèm với bộ nhớ lưu trữ lên tới 256GB. Người dùng có thể lưu lại các thông tin cần thiết cho công việc, học tập hoặc giải trí với những bộ phim mới nhất. Hai cạnh bên của máy là các cổng kết nối linh hoạt bao gồm USB Type-C, 2 cổng Thunderbolt 3, Jack cắm 3.5mm và kết nối không dây Wifi 6. Người dùng có thể dễ dàng kết nối, truyền xuất dữ liệu khi cần một cách nhanh chóng trên chiếc MacBook Pro M2 13 inch 2022 256GB chính hãng này. Đây là dòng máy tính phù hợp cho cả người dùng là học sinh, sinh viên hoặc dân văn phòng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m2-1_jimuiy.png', 'MacBook Pro M2 13\" 2022 - 16GB/256GB - Chính hãng Apple Việt Nam', 35890000, 10, 26, '256GB'),
(62, 'MacBook Pro 14\" 2021 sở hữu sức mạnh đến từ con chip M1 Pro - một bộ vi xử lý được sản xuất dựa trên tiến trình 5nm hiện đại với 8 lõi CPU (6 lõi hiệu suất cao và 2 lõi tiết kiệm điện năng). Theo thông tin từ phía Apple, con chip này giúp chiếc Macbook sở hữu tốc độ xử lý nhanh hơn đến 70% so với tiền nhiệm của nó là M1. Không những vậy, con chip này còn giúp giảm thiểu lượng điện năng tiêu thụ và kéo dài thời lượng pin đáng kể.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-1_dbps6z.png', 'MacBook Pro 14\" (M1 Pro/8-core CPU/14-core GPU/16GB/512GB) - Chính hãng', 42890000, 10, 27, '512GB'),
(63, 'MacBook Pro 16\" 2021 - M1 Pro 16 Core GPU/512G không chỉ được đánh giá cao về thiết kế sang trọng, hiện đại mà còn sở hữu hiệu năng vượt trội nhờ bộ vi xử lý M1 Pro cũng như những thông số mạnh mẽ khác. Đây là dòng laptop cao cấp đặc biệt phù hợp với những ai làm công việc thiết kế đồ họa chuyên nghiệp.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-3_rxh4fh.png', 'MacBook Pro 16\" (M1 Pro/10-core CPU/16-core GPU/16GB/512GB) - Chính hãng', 38990000, 10, 27, '512GB'),
(64, 'Macbook Pro 16\" 2021 sở hữu ngoại hình nổi bật, tinh tế, hiện đại đến từng chi tiết. Lớp vỏ máy được làm từ kim loại nguyên khối bằng nhôm tái chế thân thiện với môi trường, bền bỉ theo thời gian. Dù có trọng lượng 2.2kg với độ dày 16.8 mm nhưng em laptop này vẫn giữ được thiết kế gọn gàng mà không hề hầm hố.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-3_rxh4fh.png', 'MacBook Pro 16\" (M1 Max/10-core CPU/32-core GPU/32GB/1TB) - Chính hãng', 75990000, 10, 29, '1TB'),
(65, 'MacBook Pro 13\" M2 2022 512GB chính hãng có trọng lượng khoảng 1.4kg và dày 15.6mm. Người dùng có thể dễ dàng cầm trên tay hoặc bỏ vào túi, cặp xách khi cần mang ra ngoài một cách dễ dàng. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m2-1_jimuiy.png', 'MacBook Pro M2 13\" (8GB/512GB) - Chính hãng Apple Việt Nam', 34490000, 10, 26, '512GB'),
(66, 'Macbook Pro 14\" 2021 sở hữu ngoại hình tinh tế, nổi bật với lớp vỏ nhôm tái chế nguyên khối, mang tinh thần bảo vệ môi trường. Dòng MacBook này của Apple sở hữu trọng lượng chỉ 1.6kg với độ dày 15.5mm. Với kích thước này, người dùng có thể bỏ em laptop này trong túi xách, balo hay túi tote mang đi bất cứ đâu, dù là giảng đường, công ty hay quán cà phê đều rất thuận tiện.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562283/istote-storage/macbook/m1-pro-1_dbps6z.png', 'MacBook Pro 14\" (M1 Pro/10-core CPU/16-core GPU/32GB/1TB) - Chính hãng', 65000000, 10, 27, '1TB'),
(67, 'MacBook Pro M1 256GB 2020 là dòng MacBook đầu tiên được Apple trang bị con chip M1 do chính hãng nghiên cứu và phát triển. Được thiết kế dành riêng cho MacBook với kiến trúc ARM hoàn toàn mới. Với 8 nhân CPU cùng 8 nhân GPU, Apple M1 mang lại một hiệu năng cao gấp 3.5 lần so với những mẫu MacBook sử dụng chip Intel, hiệu suất của đồ họa cũng cao hơn gấp gần 5 lần. Với con chip Apple M1, người dùng MacBook Pro M1 2020 có thể dễ dàng thiết kế đồ họa, chỉnh sửa video hoặc xuất video độ phân giải cao mà không sợ máy bị giật, bị lag.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m1-2_aguyin.png', 'MacBook Pro M1 13\" (8GB/256GB) - Chính hãng Apple Việt Nam', 27890000, 10, 25, '256GB'),
(68, 'Sở hữu một thiết kế cực kì sang trọng nhờ việc được hoàn thiện từ kim loại nguyên khối cao cấp được kế thừa từ những dòng sản phẩm trước đây, cùng với một hiệu năng mạnh mẽ tiềm ẩn bên trong với bộ vi xử lý Apple M1 mới, MacBook Pro M1 2020 hứa hẹn sẽ mang lại một trải nghiệm hoàn toàn khác biệt dành cho những chủ nhân sở hữu mẫu máy này.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562285/istote-storage/macbook/pro-m1-2_aguyin.png', 'MacBook Pro M1 13\'\' (8GB/512GB) - Chính hãng Apple Việt Nam', 32590000, 10, 25, '512GB'),
(69, 'Apple Watch SE 44mm GPS mang trên mình một thiết kế thời thượng, cực kì năng động và cực kì cá tính, đậm chất thời trang như các thế hệ Apple Watch trước đây mà “Táo khuyết” đã dày công thiết kế. Đặc biệt, chất liệu dây đeo của Apple Watch SE được hoàn thiện từ chất liệu silicone dẻo, giúp dây đeo này có độ đàn hồi tốt, nhờ đó người dùng có thể đeo thiết bị trong cả một ngày dài mà không lo bị mỏi, vướng hoặc đau tay. Và chất liệu silicone này cũng sẽ giúp cho người dùng có thể dễ dàng vệ sinh cũng như hạn chế bụi bẩn bám vào dây đeo.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-2_on6jbj.jpg', 'Apple Watch SE GPS, 44mm Aluminum Case with Sport Band - Chính hãng (VN/A)', 6890000, 13, NULL, '44mm'),
(70, 'Với phiên bản 40mm, nó có kích thước màn hình 1.57 inch, độ phân giải: 324 x 394 pixels. Màn hình OLED của đồng hồ giúp nó cung cấp thời gian phản hồi nhanh.  Mặt kính cường lực Ion-X strengthened glass càng giúp cho đồng hồ thêm bền, hạn chế vỡ nứt hay trầy xước.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-2_zang9p.jpg', 'Đồng hồ thông minh Apple Watch SE 2022 GPS, 40mm – Viền nhôm dây cao su - (VN/A)', 5990000, 13, NULL, '40mm'),
(71, 'Với phiên bản này, nó có kích thước kích thước dài - rộng - ngang lần lượt là 44 x 38 x 10.7 mm, màn hình OLED có độ phân giải: 448 x 368 pixels, độ sáng cao lên đến 1000 nits mang lại chất lượng hình ảnh rõ ràng, sắc nét đến từng chi tiết và trải nghiệm vuốt chạm mượt mà. Mặt kính cường lực Ion-X strengthened glass càng giúp cho đồng hồ thêm bền, hạn chế vỡ nứt hay trầy xước.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-2_zang9p.jpg', 'Đồng hồ thông minh Apple Watch SE 2022 GPS, 44mm – Viền nhôm dây cao su (VN/A)', 6690000, 13, NULL, '44mm'),
(72, 'Khung của chiếc Apple Watch SE 2022 GPS + Cellular 40mm chính hãng VN/A được hoàn thiện từ chất liệu nhôm siêu nhẹ, toát lên vẻ đẹp sang trọng, tinh tế khi người dùng đeo trên cổ tay. Phần dây đeo của đồng hồ được làm từ cao su cao cấp, vừa vặn với cổ tay của tất cả người dùng nên khi đeo không để lại vết hằn, vô cùng thoải mái dù dùng liên tục trong thời gian dài. Trọng lượng của chiếc Apple Watch SE 2022 GPS + Cellular 40mm chính hãng VN/A chỉ khoảng 32,9 gram nên cũng sẽ không tạo cảm giác nặng tay, bạn có thể deo nó theo và sử dụng mọi lúc, mọi nơi.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-2_zang9p.jpg', 'Đồng hồ thông minh Apple Watch SE 2022 GPS + Cellular, 40mm – Viền nhôm dây cao su VN/A', 7190000, 13, NULL, '40mm'),
(73, 'Khung của chiếc Apple Watch SE 2022 GPS + Cellular 44mm chính hãng VN/A được hoàn thiện từ chất liệu nhôm siêu nhẹ, toát lên vẻ đẹp sang trọng, tinh tế khi người dùng đeo trên cổ tay. Phần dây đeo của đồng hồ được làm từ cao su cao cấp, vừa vặn với cổ tay của tất cả người dùng nên khi đeo không để lại vết hằn, vô cùng thoải mái dù dùng liên tục trong thời gian dài. Trọng lượng của chiếc Apple Watch SE 2022 GPS + Cellular 40mm chính hãng VN/A chỉ khoảng 32,9 gram nên cũng sẽ không tạo cảm giác nặng tay, bạn có thể deo nó theo và sử dụng mọi lúc, mọi nơi.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhm-daycaosu-2022-1_awrjhm.jpg', 'Đồng hồ thông minh Apple Watch SE 2022 GPS + Cellular, 44mm – Viền nhôm dây cao su VN/A', 7990000, 13, NULL, '44mm'),
(74, 'Apple Watch SE GPS Cellular 40mm sở hữu một thiết kế viền nhôm cực kì bóng bẩy cùng với phần dây đeo được làm từ chất liệu cao su bền bỉ, khỏe khoắn nhưng cũng không kém phần thời trang. Đeo Apple Watch SE trên tay, bạn sẽ có một cảm giác cực kì thoải mái, không bị cấn, bị đau hay quá khó chịu bất kể là bạn có đeo trong một thời gian dài. Màn hình Retina với phần viền đạt vát mỏng tốt đa, mang tới một thiết kế năng động, trẻ trung, cực kì tinh tế.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-3_m1jtlw.jpg', 'Apple Watch SE GPS + Cellular, 40mm Aluminum Case with Sport Band - Chính hãng (VN/A)', 7490000, 13, NULL, '40mm'),
(75, 'Apple Watch SE GPS Cellular 44mm sở hữu một thiết kế viền nhôm cực kì bóng bẩy cùng với phần dây đeo được làm từ chất liệu cao su bền bỉ, khỏe khoắn nhưng cũng không kém phần thời trang. Đeo Apple Watch SE trên tay, bạn sẽ có một cảm giác cực kì thoải mái, không bị cấn, bị đau hay quá khó chịu bất kể là bạn có đeo trong một thời gian dài. Màn hình Retina với phần viền đạt vát mỏng tốt đa, mang tới một thiết kế năng động, trẻ trung, cực kì tinh tế.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562334/istote-storage/apple-watch/apple-watch-se/viennhom-daycaosu-1_whtiri.jpg', 'Apple Watch SE GPS + Cellular, 44mm Aluminum Case with Sport Band - Chính hãng (VN/A)', 7690000, 13, NULL, '44mm'),
(76, 'Apple Watch SE GPS Cellular 44mm sở hữu một thiết kế viền nhôm cực kì bóng bẩy cùng với phần dây đeo được làm từ chất liệu vải bền bỉ, khỏe khoắn nhưng cũng không kém phần thời trang. Đeo Apple Watch SE trên tay, bạn sẽ có một cảm giác cực kì thoải mái, không bị cấn, bị đau hay quá khó chịu bất kể là bạn có đeo trong một thời gian dài. Màn hình Retina với phần viền đạt vát mỏng tốt đa, mang tới một thiết kế năng động, trẻ trung, cực kì tinh tế.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562333/istote-storage/apple-watch/apple-watch-se/viennhom-dayvai-2_stf9u4.jpg', 'Đồng hồ thông minh Apple Watch SE (4G) 44mm - Viền nhôm dây vải - Chính hãng VN/A', 7690000, 13, NULL, '44mm'),
(77, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562347/istote-storage/apple-watch/series3/series3_omrwp2.jpg', 'Đồng hồ thông minh Apple Watch Series 3 GPS 42mm - Chính hãng VN/A', 5590000, 14, NULL, '42mm'),
(78, 'Apple Watch Series 6 (4G) 40mm viền thép dây thép sở hữu một bộ vỏ vói viền thép cưc kì sang trọng và bóng bẩy cùng phần dây đeo cũng được hoàn thiện từ chất liệu thép bền bỉ. Đặc biệt phần dây thép này được thiết kế theo kiểu dạng các sợi thép đan xen lại với nhau, vừa tạo nên cảm giác bền bỉ, chắc chắn, lại vẫn toát lên được vẻ sang trọng vốn có của thiết bị. Ngoài ra thiết kế dây đẹo dạng này cũng tạo nên sự thoải mái và chống thấm mồ hôi dành cho người dùng. Màn hình Retina với phần viền benzel giờ đây đã được Apple vát mỏng tối đa, mang tới một thiết kế cực kì tinh tế và hiện đại.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daythep-2_t7kvln.jpg', 'Đồng hồ thông minh Apple Watch Series 6 (4G) 40mm - Viền thép dây thép - Chính hãng VN/A', 9990000, 15, NULL, '40mm'),
(79, 'Apple Watch Series 6 (4G) 44mm viền thép dây thép sở hữu một bộ vỏ vói viền thép cưc kì sang trọng và bóng bẩy cùng phần dây đeo cũng được hoàn thiện từ chất liệu thép bền bỉ. Đặc biệt phần dây thép này được thiết kế theo kiểu dạng các sợi thép đan xen lại với nhau, vừa tạo nên cảm giác bền bỉ, chắc chắn, lại vẫn toát lên được vẻ sang trọng vốn có của thiết bị. Ngoài ra thiết kế dây đẹo dạng này cũng tạo nên sự thoải mái và chống thấm mồ hôi dành cho người dùng. Màn hình Retina với phần viền benzel giờ đây đã được Apple vát mỏng tối đa, mang tới một thiết kế cực kì tinh tế và hiện đại.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daythep-1_nupt1n.jpg', 'Đồng hồ thông minh Apple Watch Series 6 (4G) 44mm - Viền thép dây thép - Chính hãng VN/A', 10990000, 15, NULL, '44mm'),
(80, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/vienthep-daycaosu-1_c24lwa.jpg', 'Apple Watch Series 6 GPS + Cellular, 44mm Stainless Steel With Sport Band - Chính hãng VN/A', 9490000, 15, NULL, '44mm'),
(81, 'Apple Watch Series 6 có thiết kế tổng thể hình chữ nhật bo cong tương tự dòng thế hệ tiền nhiệm. Phần viền của chiếc đồng hồ này được hoàn thiện từ nhôm nhám Series 7000 có độ bền tối ưu, đem lại cảm giác chắc chắn và cứng cáp trên cổ tay bạn. Với nhiều các phiên bản màu khác nhau bao gồm xám, bạc và vàng hồng. Mặt trước của sản phẩm là màn hình Retina được làm tràn viền. Nhờ kính cường lực bảo vệ, bạn sẽ không cần lo lắng về những vết xước trong quá trình sử dụng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/viennhom-daycaosu_btowpk.jpg', 'Apple Watch Series 6 GPS, 44mm Aluminum Case with Sport Band - Chính hãng (VN/A)', 6990000, 15, NULL, '44mm'),
(82, 'Apple Watch Series 6 (4G) 44mm - Viền nhôm dây cao su chính hãng VN/A vẫn giữ nguyên ngôn ngữ thiết kế mặt vuông. Tuy nhiên, dòng Apple Watch Series 6 mới nhất có thiết kế màn hình tràn viền, các cạnh cực mỏng, bốn góc được bo cong mềm mại tạo cảm giác tinh tế khi đeo trên cổ tay. Tấm nền Retina LTPO OLED 1.78 inch luôn bật, đem lại chất lượng hiển thị hình ảnh sắc nét, rõ ràng hơn trong các điều kiện ánh sáng khác nhau.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562387/istote-storage/apple-watch/series6/viennhom-daycaosu_btowpk.jpg', 'Đồng hồ thông minh Apple Watch Series 6 (4G) 44mm - Viền nhôm dây cao su - Chính hãng VN/A', 7490000, 15, NULL, '44mm'),
(83, 'Apple Watch Series 7 có màn hình lớn hơn 20% so với thế hệ trước. Viền bezels có độ dày 1.7mm, độ dày giảm đi 40%. Cụ thể, nó có kích thước 1,61 inch, OLED, 420 x 352 pixel. Nhờ màn hình lớn hơn mà tất cả các nội dung hiển thị trên Series 7 sẽ hiển thị rõ ràng hơn, giúp người dùng tương tác bằng thao tác cảm ứng dễ hơn. Khi cổ tay úp xuống, màn hình Retina luôn bật trên S7 sáng hơn tới 70% so với S6, giúp bạn dễ dàng nhìn thấy mặt đồng hồ mà không cần phải nhấc cổ tay lên hoặc bật màn hình.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/apple-watch-s7-3_bomzk2.jpg', 'Đồng hồ thông minh Apple Watch Series 7 GPS, 41mm – Viền nhôm dây cao su - Chính hãng VN/A', 7990000, 16, NULL, '41mm'),
(84, 'Apple Watch Series 7 phiên bản viền nhôm dây cao su có trọng lượng nhẹ nhàng chỉ 32g cùng viền thiết bị được làm bằng nhôm 100% nhôm tái chế, và sử dụng dây cao su cho phép người dùng thoải mái vận động trong những công việc hằng ngày mà không cảm thấy đau hay cấn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562453/istote-storage/apple-watch/series7/apple-watch-s7-3_bomzk2.jpg', 'Đồng hồ thông minh Apple Watch Series 7 4G, 41mm - Viền nhôm dây cao su - Chính hãng VN/A', 10490000, 16, NULL, '41mm'),
(85, 'Apple Watch Series 7 có màn hình Retina luôn bật được thiết kế lại với diện tích màn hình lớn hơn 20% và viền mỏng hơn 40%, khiến nó trở thành màn hình lớn nhất và tiên tiến nhất từ ​​trước đến nay. Phiên bản Series 7 năm nay đã mang tới cho bạn hai lựa chọn kích thước màn hình mới là 41mm và 45mm thay 40mm và 44mm so với Series 6.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/s7-thep-2_hazcui.jpg', 'Đồng hồ thông minh Apple Watch Series 7 4G, 41mm – Viền thép dây thép - Chính hãng VN/A', 14990000, 16, NULL, '41mm'),
(86, 'Apple Watch Series 7 có màn hình Retina kèm tính năng Always On Display được thiết kế mới với các góc bo tròn được vuốt lại cho mềm mại hơn. Phần màn hình đã được làm cong nhẹ với hiệu ứng ánh sáng khúc xạ rìa màn hình. Từ đó tạo nên sự kết nối liền mạch với khung kim loại sắc sảo. Bảo vệ cho màn hình là mặt kính cường lực Ion-X dày hơn đến 50% so với dòng S6 từ đó góp phần hạn chế nứt vỡ và gia cố độ bền của màn hình.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/s7-thep-3_corod3.jpg', 'Đồng hồ thông minh Apple Watch Series 7 4G, 45mm – Viền thép dây thép - Chính hãng VN/A', 15990000, 16, NULL, '45mm'),
(87, 'Apple Watch Series 7 là màn hình lớn hơn và bền hơn. Phiên bản lớn của Series 7 có màn hình 45mm, trong khi đó Series 6 là 44mm, tức là lớn hơn 20%. Ngoài ra, viền mỏng màn hình của S7 chỉ ở mức 1,7mm, mỏng hơn 40% so với phiên bản trước đó. Ngoài ra, phiên bản này có mặt kính cường lực Ion-X chắc chắn hơn, dày hơn 50% so với mặt kính của Apple Watch Series 6, giúp đồng hồ có khả năng chống nứt tốt hơn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562452/istote-storage/apple-watch/series7/vienthep-daycaosu-3_bxryga.jpg', 'Đồng hồ thông minh Apple Watch Series 7 (4G) 45mm - Viền thép dây cao su - Chính hãng VN/A', 14990000, 16, NULL, '45mm'),
(89, 'Apple Watch Series 8 sở hữu thiết kế quen thuộc của dòng đồng hồ thông minh Apple Watch. Đó là thiết kế vuông vức mạnh mẽ, kết hợp các đường viền hẹp đẩy màn hình sang phải cạnh, dẫn đến sự kết hợp thanh lịch với độ cong của vỏ máy. Cũng có thể hiểu vì sao Apple Watch Series 8 không chú tâm nhiều đến thiết kế mới lạ, vì Apple chú tâm đến các tính năng khác.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562491/istote-storage/apple-watch/series8/vienthep-daythep-3_tnj2er.png', 'Apple Watch Series 8 GPS + Cellular, 41mm - Viền thép dây thép - VN/A', 18390000, 17, NULL, '41mm'),
(90, 'Apple Watch Series 8 sở hữu thiết kế quen thuộc của dòng đồng hồ thông minh Apple Watch. Đó là thiết kế vuông vức mạnh mẽ, kết hợp các đường viền hẹp đẩy màn hình sang phải cạnh, dẫn đến sự kết hợp thanh lịch với độ cong của vỏ máy. Cũng có thể hiểu vì sao Apple Watch Series 8 không chú tâm nhiều đến thiết kế mới lạ, vì Apple chú tâm đến các tính năng khác', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562491/istote-storage/apple-watch/series8/vienthep-daythep-3_tnj2er.png', 'Apple Watch Series 8 GPS + Cellular, 45mm - Viền thép dây thép - VN/A', 18890000, 17, NULL, '45mm');
INSERT INTO `products` (`product_id`, `description`, `image_url`, `product_name`, `price`, `series_id`, `product_version_id`, `option`) VALUES
(91, 'Apple Watch Series 8 GPS sở hữu 2 phiên bản 41mm và 45mm cho người dùng thoải mái lựa chọn. Đồng hồ mang đến vibe sang trọng, hiện đại mà không phải chiếc đồng hồ nào cũng có thể làm được.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-5_a78dd4.png', 'Apple Watch Series 8 GPS + Cellular, 41mm - Viền nhôm dây cao su - VN/A', 11990000, 17, NULL, '41mm'),
(92, 'Màn hình của những chiếc Apple Watch chưa bao giờ làm người dùng thất vọng. Và ở cả chiếc Apple Watch Series 8 GPS này cũng vậy. Đồng hồ sở hữu màn hình 1.9 inch với độ phân giải 484 x 396 pixel, giúp mang đến chất lượng hiển thị thật rõ nét và sống động đến từng chi tiết.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-5_a78dd4.png', 'Apple Watch Series 8 GPS + Cellular, 45mm - Viền nhôm dây cao su - VN/A', 12390000, 17, NULL, '45mm'),
(93, 'Apple Watch Series 8 GPS cũng quan tâm đến sức khỏe của người dùng khi có thể dễ dàng theo dõi sức khỏe và trạng thái tập luyện, các mức độ căng thẳng, theo dõi nồng độ oxy trong máu, theo dõi giấc ngủ,.... Để từ đó giúp người dùng cải thiện tình hình sức khỏe của mình tốt hơn.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562490/istote-storage/apple-watch/series8/viennhom-daycaosu-7_moq3lz.png', 'Apple Watch Series 8 GPS 45mm - Viền nhôm dây cao su - VN/A', 10290000, 17, NULL, '45mm'),
(94, 'Màn hình của những chiếc Apple Watch chưa bao giờ làm người dùng thất vọng. Và ở cả chiếc Apple Watch Series 8 GPS này cũng vậy. Đồng hồ sở hữu màn hình 1.9 inch với độ phân giải 484 x 396 pixel, giúp mang đến chất lượng hiển thị thật rõ nét và sống động đến từng chi tiết.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562489/istote-storage/apple-watch/series8/viennhom-daycaosu-1_pqcl6v.png', 'Apple Watch Series 8 GPS 41mm - Viền nhôm dây cao su - VN/A', 9190000, 17, NULL, '41mm'),
(95, 'Apple Watch Ultra được làm từ vật liệu Titanium tạo nên sự cân bằng hoàn hảo giữa trọng lượng, độ chắc chắn và khả năng chống ăn mòn của sản phẩm. Phần vòng xoay Digital Crown được nâng cấp với kích thước lớn hơn và nút điều khiển bên thân màn hình được thiết kế nhô lên cao hơn sẽ giúp bạn dễ dàng sử dụng đồng hồ ngay cả khi bạn đang đeo găng tay.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/trail-1_l5wrir.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Trail Loop size nhỏ - VN/A', 18990000, 12, NULL, '49mm'),
(96, 'Điểm đặc biệt ở sản phẩm Apple Watch Ultra đó chính là mặt đồng hồ Wayfinder có kích thước lên đến 49mm và được bao phủ bởi kính Sapphire vô cùng chắc chắn. Trong các tình huống ánh sáng yếu, bạn có thể xoay Digital Crown để kích hoạt chế độ ban đêm và thấy mặt đồng hồ chuyển sang màu đỏ sặc sỡ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-2_dldemj.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Alpine Loop size vừa - VN/A', 18990000, 12, NULL, '49mm'),
(97, 'Sản phẩm Apple Watch Ultra đi kèm với thời lượng pin cực đỉnh, có thể trụ được trong vòng 36 tiếng đồng hồ khi sử dụng bình thường và lên đến 60 giờ khi dùng trong chế độ Low Power Mode (Chế độ tiết kiệm pin). Chính vì thời lượng pin ấn tượng này mà bạn có thể an tâm mang theo đồng hồ trong những chuyến đi phượt, lặn theo rạn san hô và thậm chí là thi đấu thể thao mà không phải quá lo ngại về vấn đề hết pin.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/ocean-band-4_s2loh8.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Ocean Band- VN/A', 18990000, 12, NULL, '49mm'),
(98, 'Apple Watch Ultra được làm từ vật liệu Titanium tạo nên sự cân bằng hoàn hảo giữa trọng lượng, độ chắc chắn và khả năng chống ăn mòn của sản phẩm. Phần vòng xoay Digital Crown được nâng cấp với kích thước lớn hơn và nút điều khiển bên thân màn hình được thiết kế nhô lên cao hơn sẽ giúp bạn dễ dàng sử dụng đồng hồ ngay cả khi bạn đang đeo găng tay.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562551/istote-storage/apple-watch/apple-watch-ultra/trail-1_l5wrir.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Trail Loop size vừa - VN/A', 18990000, 12, NULL, '49mm'),
(99, 'Điểm đặc biệt ở sản phẩm Apple Watch Ultra đó chính là mặt đồng hồ Wayfinder có kích thước lên đến 49mm và được bao phủ bởi kính Sapphire vô cùng chắc chắn. Trong các tình huống ánh sáng yếu, bạn có thể xoay Digital Crown để kích hoạt chế độ ban đêm và thấy mặt đồng hồ chuyển sang màu đỏ sặc sỡ.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-2_dldemj.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Alpine Loop size nhỏ - VN/A', 18990000, 12, NULL, '49mm'),
(100, 'Sản phẩm Apple Watch Ultra đi kèm với thời lượng pin cực đỉnh, có thể trụ được trong vòng 36 tiếng đồng hồ khi sử dụng bình thường và lên đến 60 giờ khi dùng trong chế độ Low Power Mode (Chế độ tiết kiệm pin). Chính vì thời lượng pin ấn tượng này mà bạn có thể an tâm mang theo đồng hồ trong những chuyến đi phượt, lặn theo rạn san hô và thậm chí là thi đấu thể thao mà không phải quá lo ngại về vấn đề hết pin.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562552/istote-storage/apple-watch/apple-watch-ultra/alpine-2_dldemj.png', 'Đồng hồ thông minh Apple Watch Ultra (4G) 49mm – Titan Case With Alpine Loop size lớn - VN/A', 189000000, 12, NULL, '49mm'),
(101, 'Beats Studio Buds có thiết kế in-ear nhét tai vô cùng tiện dụng cho người dùng. Tai nghe được đặt trong một hộp sạc có hình bầu dục, trọng lượng nhỏ nhẹ chỉ 48g (chưa bao gồm tai nghe) giúp người dùng có thể đem đi bất cứ đâu mà họ muốn. Ngoài màu đen huyền bí, Beats Studio Buds còn có đến 2 phiên bản màu sắc khác đó là trắng và đỏ rất hiện đại và thời thượng. Bộ ba màu sắc này đều là những màu sắc ấn tượng được giới trẻ ưa chuộng chọn lựa trong những năm gần đây.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/beats-studio-buds-1_nze9rz.png', 'Tai nghe Beats Studio Buds - Chính hãng Apple Việt Nam', 3290000, 18, NULL, NULL),
(102, 'Với những người dùng iPad, một chiếc bàn phím rời chắc chắn sẽ là món phụ kiện cực hữu ích. Chiếc Magic Keyboard là sản phẩm phụ kiện không thể thiếu, giúp người dùng tối ưu hoá được công năng thần thánh của một chiếc máy tính bảng tới từ Apple.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-2_x4tprp.png', 'Phụ kiện Bàn phím Magic Keyboard cho Apple iPad Pro 11 inch - Chính hãng', 7890000, 18, NULL, NULL),
(103, 'Sử dụng hoàn toàn kết nối Bluetooth để kết nối, bạn không cần sử dụng các jack cắm rời trên máy tính của mình để sử dụng. Nhờ đó bạn tránh được tình huống làm mất jack cắm, gây ảnh hưởng tới quá trình sử dụng.\r\n\r\nBạn có thể sử dụng Magic Mouse 2 trên tất cả các mẫu máy tính Mac và iPad với kết nối bền bỉ và dễ dàng.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-mouse-1_isz2jh.png', 'Phụ kiện Apple Magic Mouse 2 - Chính hãng', 1790000, 18, NULL, NULL),
(104, 'Apple Pencil 2 vẫn chia sẻ nhiều điểm tưong đồng với đời tiền nhiệm. Bạn vẫn nhận được ngòi bút với khả năng nhận diện lực cùng hoàn thiện màu trắng tinh khôi. Chiều dài 166 mm và trọng lượng 20 gam cũng là một ngưỡng vừa phải cho hầu hết bàn tay người dùng. Chiếc bút này đã được thiết kế lại một chút để tối ưu hoá dành riêng cho iPad Pro và iPad Air 4. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/pencil-gen2_viyiir.png', 'Apple Pencil (Gen 2) - Chính hãng', 2990000, 18, NULL, NULL),
(105, 'Sạc MHJE3ZA 20W có phích cắm hai chân tròn, hoàn toàn phù hợp với ổ cắm điện tại Việt Nam và nhiều quốc gia khác. Cục sạc này cũng được trang bị các tiêu chuẩn an toàn toàn cầu như ROSH, CE, FCC. Như vậy, người dùng hoàn toàn có thể yên tâm về sự an toàn của mình và “dế yêu” khi sử dụng sạc MHJE3ZA.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/20w-typec-2_x4disk.png', 'Sạc nhanh Apple iPhone 20W Type-C - MHJE3ZA - Chính hãng Apple Việt Nam', 490000, 18, NULL, NULL),
(106, 'Cũng như những sản phẩm khác nhà Apple, phụ kiện bao da bàn phím Magic Keyboard cho iPad Pro 12.9 inch được tối giản thiết kế. Mặc dù là bao da đi kèm bàn phím nhưng phụ kiện này vẫn rất mỏng và nhẹ. Nó có kích thước 1.09 x 27.9 x 11.49 cm và trọng lượng chỉ khoảng 231g. Khi cầm cùng chiếc iPad Pro 12.9 inch thì không có cảm giác dày máy hay nặng tay. Người dùng vẫn có thể bỏ chiếc iPad của mình vào túi và xách theo dễ dàng. ', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/magic-keyboard-11-4_jfwn8a.png', 'Bao da Bàn phím Magic Keyboard cho Apple iPad Pro 12.9 inch - Chính hãng Apple', 8990000, 18, NULL, NULL),
(107, 'Một trong những ưu điểm của AirTag là nó rất nhỏ gọn, có thể dễ dàng gắn với các đồ vật như chìa khóa, túi, ví… Nhìn bên ngoài AirTag có hình tròn trông như một chiếc nút áo. Mặt sau của AirTag hoàn thiện từ chất liệu nhựa màu trắng với logo nhà “Táo khuyết”. Apple cũng giới thiệu các loại móc treo đa dạng để người dùng lựa chọn và gắn cùng AirTag của mình.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/airtag-1_ymbclf.png', 'Phụ kiện Apple AirTag - Chính hãng Apple Việt Nam', 590000, 18, NULL, NULL),
(108, 'Một trong những ưu điểm của AirTag là nó rất nhỏ gọn, có thể dễ dàng gắn với các đồ vật như chìa khóa, túi, ví… Nhìn bên ngoài AirTag có hình tròn trông như một chiếc nút áo. Mặt sau của AirTag hoàn thiện từ chất liệu nhựa màu trắng với logo nhà “Táo khuyết”. Apple cũng giới thiệu các loại móc treo đa dạng để người dùng lựa chọn và gắn cùng AirTag của mình.\r\n\r\n', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/airtag-4_b9czcc.png', 'Phụ kiện Apple AirTag Combo 4 cái - Chính hãng Apple Việt Nam', 2190000, 18, NULL, NULL),
(109, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/aitag-loop-2_rfpwf3.png', 'Phụ kiện Dây đeo Apple AirTag Loop - Chính hãng Apple Việt Nam', 690000, 18, NULL, NULL),
(110, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562637/istote-storage/accessories/airtag-leather_x3z2cq.png', 'Dây đeo Apple AirTag Leather Loop - Chính hãng Apple Việt Nam', 990000, 18, NULL, NULL),
(111, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562637/istote-storage/accessories/airtag-leather-key-ring_url4kk.png', 'Dây đeo Apple AirTag Leather Key Ring - Chính hãng Apple Việt Nam', 890000, 18, NULL, NULL),
(112, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/cap-sac-apple-usb-c-to-c-2m-chinh-hang-apple-viet-nam-1_y5g0ax.png', 'Cáp sạc Apple USB-C to C (2m) - Chính hãng Apple Việt Nam', 590000, 18, NULL, NULL),
(113, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562633/istote-storage/accessories/magic-keyboard-2021-4_dvn0eq.png', 'Bàn phím Apple Magic Keyboard 2021 - MK2A3 - Chính hãng Apple VN', 2290000, 18, NULL, NULL),
(114, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562636/istote-storage/accessories/12w-1_ociblg.png', 'Củ sạc Apple iPhone 12W - MGN03 - Chính hãng Apple VN', 450000, 18, NULL, NULL),
(115, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562635/istote-storage/accessories/5w-2_b4z8gi.png', 'Củ sạc Apple iPhone 5W - MGN13 - Chính hãng Apple VN', 99000, 18, NULL, NULL),
(116, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562632/istote-storage/accessories/image-removebg-preview-2_637921144566237150_liq0km.png', 'Dây sạc Apple Watch - USB A - MX2E2 - Chính hãng Apple VN', 690000, 18, NULL, NULL),
(117, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/mmx62-1_an5ulu.png', 'Cáp chuyển đổi Lightning to 3.5mm - MMX62 - Chính hãng Apple VN', 290000, 18, NULL, NULL),
(118, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-3_gt5bxt.png', 'Apple Magic Trackpad 2 - Chính hãng', 2990000, 18, NULL, NULL),
(119, 'Bộ chuyển đổi USB-C to Apple Pencil là một phụ kiện có thể nói là không thể thiếu dành cho những người dùng đang sử dụng đồng thời cả Apple Pencil lẫn iPad. Bộ chuyển đổi này có cấu tạo bao gồm một đầu là cổng Lightning và đầu còn lại là cổng USB-C. Thiết bị có thiết kế nhỏ gọn, giúp người dùng có thể mang theo bên mình đi tới mọi nơi.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/trackpad-2-6_yarkv1.png', 'Bộ tiếp hợp chuyển từ USB-C sang Apple Pencil - MQLU3ZP/A - Chính hãng', 350000, 18, NULL, NULL),
(120, NULL, 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562634/istote-storage/accessories/md818-removebg-preview_qc2xn8.png', 'Cáp chuyển từ Lightning sang USB MXLY2ZA/A (1m) - Chính hãng Apple Việt Nam', 199000, 18, NULL, NULL),
(121, 'Được thiết kế có màu trắng, cấu tạo nhỏ gọn, hình trụ tròn, nhẹ. Cho ra một cảm giác rất giống với những chiếc bút thông thường khác. Được bán kèm theo với hai đầu bút, và có thể thay thế dễ dàng nếu bị hỏng, hay bị mòn. Riêng phần nắp bút có thể dễ dàng tháo rời, bên trong là khe cắm sạc lightning. Cách sử dụng vô cùng đơn giản, đầu tiên bạn chỉ cần cắm trực tiếp Apple pencil với vào cổng kết nối của máy tính bảng, để ghép đôi bút Apple với Ipad thông qua Bluetooth.', 'https://res.cloudinary.com/dbasr47sq/image/upload/v1690562631/istote-storage/accessories/apple-pencil_ri3e9q.png', 'Phụ kiện Apple Pencil - Chính hãng', 2390000, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`product_id`, `image_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(8, 5),
(8, 6),
(3, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(12, 11),
(12, 12),
(13, 11),
(13, 12),
(18, 17),
(18, 18),
(18, 19),
(18, 20),
(18, 21),
(18, 22),
(19, 17),
(19, 18),
(19, 19),
(19, 20),
(19, 21),
(19, 22),
(20, 21),
(20, 22),
(21, 23),
(21, 24),
(21, 25),
(21, 26),
(21, 27),
(21, 28),
(22, 23),
(22, 24),
(22, 25),
(22, 26),
(22, 27),
(22, 28),
(23, 29),
(23, 30),
(23, 31),
(23, 32),
(23, 33),
(23, 34),
(24, 29),
(24, 30),
(24, 31),
(24, 32),
(24, 33),
(24, 34),
(25, 29),
(25, 30),
(25, 31),
(25, 32),
(25, 33),
(25, 34),
(26, 29),
(26, 30),
(26, 31),
(26, 32),
(26, 33),
(26, 34),
(27, 35),
(27, 36),
(28, 35),
(28, 36),
(29, 35),
(29, 36),
(30, 35),
(30, 36),
(31, 37),
(31, 38),
(32, 37),
(32, 38),
(33, 37),
(33, 38),
(34, 37),
(34, 38),
(35, 37),
(35, 38),
(36, 37),
(36, 38),
(37, 37),
(37, 38),
(38, 37),
(38, 38),
(39, 37),
(39, 38),
(40, 37),
(40, 38),
(41, 39),
(41, 39),
(42, 39),
(42, 40),
(43, 41),
(43, 42),
(43, 43),
(43, 44),
(44, 41),
(44, 42),
(44, 43),
(44, 44),
(45, 45),
(45, 46),
(45, 47),
(45, 48),
(45, 49),
(46, 45),
(46, 45),
(46, 47),
(46, 48),
(46, 49),
(47, 50),
(47, 51),
(47, 52),
(47, 53),
(47, 54),
(48, 50),
(48, 51),
(48, 52),
(48, 53),
(48, 54),
(49, 55),
(49, 56),
(50, 55),
(50, 56),
(51, 57),
(51, 58),
(52, 57),
(52, 58),
(53, 57),
(53, 58),
(54, 57),
(54, 58),
(55, 57),
(55, 58),
(56, 59),
(56, 60),
(57, 59),
(57, 60),
(58, 59),
(58, 60),
(59, 59),
(59, 60),
(60, 61),
(61, 61),
(62, 62),
(62, 63),
(63, 62),
(63, 63),
(64, 62),
(64, 63),
(65, 61),
(66, 62),
(66, 63),
(67, 64),
(68, 64),
(68, 64),
(69, 65),
(69, 66),
(69, 67),
(73, 65),
(73, 66),
(73, 67),
(74, 65),
(74, 66),
(74, 67),
(75, 65),
(75, 66),
(75, 67),
(70, 68),
(70, 69),
(70, 70),
(71, 68),
(71, 69),
(71, 70),
(72, 68),
(72, 69),
(72, 70),
(76, 71),
(76, 72),
(77, 73),
(78, 74),
(78, 75),
(78, 76),
(79, 74),
(79, 75),
(79, 76),
(80, 77),
(80, 78),
(81, 79),
(82, 79),
(83, 81),
(83, 82),
(83, 83),
(83, 84),
(83, 85),
(84, 81),
(84, 82),
(84, 83),
(84, 84),
(84, 85),
(85, 86),
(85, 87),
(85, 88),
(86, 86),
(86, 87),
(86, 88),
(87, 89),
(87, 90),
(87, 91),
(89, 92),
(89, 93),
(89, 94),
(89, 95),
(89, 96),
(90, 92),
(90, 93),
(90, 94),
(90, 95),
(90, 96),
(91, 97),
(91, 98),
(91, 99),
(91, 100),
(91, 101),
(91, 102),
(91, 103),
(91, 104),
(91, 105),
(92, 97),
(92, 98),
(92, 99),
(92, 100),
(92, 101),
(92, 102),
(92, 103),
(92, 104),
(92, 105),
(93, 97),
(93, 98),
(93, 99),
(93, 100),
(93, 101),
(93, 102),
(93, 103),
(93, 104),
(93, 105),
(94, 97),
(94, 98),
(94, 99),
(94, 100),
(94, 101),
(94, 102),
(94, 103),
(94, 104),
(94, 105),
(95, 106),
(95, 107),
(95, 108),
(98, 106),
(98, 107),
(98, 108),
(96, 109),
(96, 110),
(96, 111),
(96, 112),
(96, 113),
(96, 114),
(99, 109),
(99, 110),
(99, 111),
(99, 112),
(99, 113),
(99, 114),
(100, 109),
(100, 110),
(100, 111),
(100, 112),
(100, 113),
(100, 114),
(97, 115),
(97, 116),
(97, 117),
(97, 118),
(97, 119),
(97, 120),
(97, 121),
(97, 122),
(97, 123),
(101, 124),
(101, 125),
(101, 126),
(102, 127),
(102, 128),
(102, 129),
(102, 130),
(103, 131),
(103, 132),
(104, 133),
(105, 134),
(105, 125),
(105, 136),
(105, 137),
(106, 138),
(107, 139),
(108, 140),
(109, 141),
(109, 142),
(110, 143),
(111, 144),
(112, 145),
(113, 146),
(113, 147),
(113, 148),
(113, 149),
(114, 150),
(114, 151),
(114, 152),
(115, 153),
(115, 154),
(115, 155),
(116, 156),
(116, 157),
(117, 158),
(117, 159),
(117, 160),
(118, 161),
(118, 162),
(118, 163),
(118, 164),
(118, 165),
(118, 166),
(118, 167),
(118, 168),
(119, 169),
(119, 170),
(119, 171),
(120, 172),
(121, 173);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart_detail`
--

CREATE TABLE `product_cart_detail` (
  `product_id` int(11) NOT NULL,
  `cart_detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `product_color_id` int(11) NOT NULL,
  `quantity_inventory` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`product_color_id`, `quantity_inventory`, `color_id`, `product_id`) VALUES
(1, 10, 4, 1),
(2, 10, 5, 1),
(3, 10, 6, 1),
(4, 10, 1, 1),
(5, 10, 4, 2),
(6, 10, 5, 2),
(7, 10, 6, 2),
(8, 10, 1, 2),
(9, 10, 7, 3),
(10, 10, 2, 3),
(11, 10, 12, 3),
(12, 10, 13, 3),
(13, 10, 10, 3),
(14, 10, 11, 3),
(15, 10, 7, 4),
(16, 10, 2, 4),
(17, 10, 12, 4),
(18, 10, 13, 4),
(19, 10, 10, 4),
(20, 10, 11, 4),
(21, 10, 4, 5),
(22, 10, 5, 5),
(23, 10, 6, 5),
(24, 10, 1, 5),
(25, 10, 4, 6),
(26, 10, 5, 6),
(27, 10, 6, 6),
(28, 10, 1, 6),
(29, 10, 4, 7),
(30, 10, 5, 7),
(31, 10, 6, 7),
(32, 10, 1, 7),
(33, 10, 7, 8),
(34, 10, 2, 8),
(35, 10, 13, 8),
(36, 10, 10, 8),
(37, 10, 11, 8),
(38, 10, 7, 9),
(39, 10, 2, 9),
(40, 10, 13, 9),
(41, 10, 10, 9),
(42, 10, 11, 9),
(43, 10, 7, 10),
(44, 10, 2, 10),
(45, 10, 8, 10),
(46, 10, 9, 10),
(47, 10, 10, 10),
(48, 10, 11, 10),
(49, 10, 7, 11),
(50, 10, 2, 11),
(51, 10, 8, 11),
(52, 10, 9, 11),
(53, 10, 10, 11),
(54, 10, 11, 11),
(55, 10, 2, 12),
(56, 10, 9, 12),
(57, 10, 2, 13),
(58, 10, 9, 13),
(59, 10, 7, 18),
(60, 10, 14, 18),
(61, 10, 2, 18),
(62, 10, 3, 18),
(63, 0, 8, 18),
(64, 0, 13, 18),
(65, 10, 7, 18),
(66, 10, 14, 18),
(67, 10, 2, 18),
(68, 10, 3, 18),
(69, 10, 8, 18),
(70, 10, 13, 18),
(71, 10, 7, 19),
(72, 10, 14, 19),
(73, 10, 2, 19),
(74, 10, 3, 19),
(75, 10, 8, 19),
(76, 10, 13, 19),
(77, 10, 7, 20),
(78, 10, 8, 20),
(79, 10, 14, 21),
(80, 10, 3, 21),
(81, 10, 14, 22),
(82, 10, 3, 22),
(83, 10, 12, 23),
(84, 10, 2, 23),
(85, 10, 5, 23),
(86, 10, 9, 23),
(87, 10, 12, 24),
(88, 10, 2, 24),
(89, 10, 5, 24),
(90, 10, 9, 24),
(91, 10, 2, 25),
(92, 10, 5, 25),
(93, 10, 9, 25),
(94, 10, 12, 25),
(95, 10, 2, 26),
(96, 10, 5, 26),
(97, 10, 9, 26),
(98, 10, 12, 26),
(99, 10, 5, 27),
(100, 10, 15, 27),
(101, 10, 5, 28),
(102, 10, 15, 28),
(103, 10, 5, 29),
(104, 10, 15, 29),
(105, 10, 5, 30),
(106, 10, 15, 30),
(107, 10, 5, 31),
(108, 10, 16, 31),
(109, 10, 5, 32),
(110, 10, 16, 32),
(111, 10, 5, 33),
(112, 10, 16, 33),
(113, 10, 5, 34),
(114, 10, 16, 34),
(115, 10, 5, 35),
(116, 10, 16, 35),
(117, 10, 5, 36),
(118, 10, 16, 36),
(119, 10, 5, 37),
(120, 10, 16, 37),
(121, 10, 5, 38),
(122, 10, 16, 38),
(123, 10, 5, 39),
(124, 10, 16, 39),
(125, 10, 5, 40),
(126, 10, 16, 40),
(127, 10, 15, 41),
(128, 10, 15, 42),
(129, 10, 13, 44),
(130, 10, 15, 44),
(131, 10, 9, 44),
(132, 10, 10, 44),
(133, 10, 15, 43),
(134, 10, 9, 43),
(135, 10, 13, 43),
(136, 10, 10, 43),
(137, 10, 5, 45),
(138, 10, 19, 45),
(139, 10, 17, 45),
(140, 10, 8, 45),
(141, 10, 18, 45),
(142, 10, 5, 46),
(143, 10, 19, 46),
(144, 10, 17, 46),
(145, 10, 8, 46),
(146, 10, 18, 46),
(147, 10, 13, 47),
(148, 10, 2, 47),
(149, 10, 15, 47),
(150, 10, 9, 47),
(151, 10, 10, 47),
(152, 10, 13, 48),
(153, 10, 2, 48),
(154, 10, 15, 48),
(155, 10, 9, 48),
(156, 10, 10, 48),
(162, 10, 5, 49),
(163, 10, 6, 49),
(164, 10, 15, 49),
(165, 10, 5, 50),
(166, 10, 6, 50),
(167, 10, 15, 50),
(168, 10, 5, 51),
(169, 10, 15, 51),
(170, 10, 10, 51),
(171, 10, 11, 51),
(172, 10, 5, 52),
(173, 10, 15, 52),
(174, 10, 10, 52),
(175, 10, 11, 52),
(176, 10, 5, 53),
(177, 10, 15, 53),
(178, 10, 10, 53),
(179, 10, 11, 53),
(180, 10, 5, 54),
(181, 10, 15, 54),
(182, 10, 10, 54),
(183, 10, 11, 54),
(184, 10, 5, 55),
(185, 10, 15, 55),
(186, 10, 10, 55),
(187, 10, 11, 55),
(188, 10, 5, 56),
(189, 10, 16, 56),
(190, 10, 5, 57),
(191, 10, 16, 57),
(192, 10, 5, 58),
(193, 10, 16, 58),
(194, 10, 5, 59),
(195, 10, 16, 59),
(196, 10, 16, 60),
(197, 10, 5, 60),
(198, 10, 16, 61),
(199, 10, 5, 61),
(200, 10, 16, 65),
(201, 10, 5, 65),
(202, 10, 5, 62),
(203, 10, 15, 62),
(204, 10, 5, 63),
(205, 10, 15, 63),
(206, 10, 5, 66),
(207, 10, 15, 66),
(208, 10, 5, 64),
(209, NULL, 15, 64),
(210, 10, 5, 67),
(211, NULL, 15, 67),
(212, 10, 5, 68),
(213, NULL, 15, 68),
(214, 10, 5, 69),
(215, 10, 6, 69),
(216, 10, 15, 69),
(217, 10, 5, 70),
(218, 10, 10, 70),
(219, 10, 11, 70),
(220, 10, 5, 71),
(221, 10, 10, 71),
(222, 10, 11, 71),
(223, 10, 5, 72),
(224, 10, 10, 72),
(225, 10, 11, 72),
(226, 10, 5, 73),
(227, 10, 10, 73),
(228, 10, 11, 73),
(229, 10, 5, 74),
(230, 10, 6, 74),
(231, 10, 15, 74),
(232, 10, 5, 75),
(233, 10, 6, 75),
(234, 10, 15, 75),
(235, 10, 6, 76),
(236, 10, 15, 76),
(237, 10, 17, 77),
(238, 10, 5, 78),
(239, 10, 6, 78),
(240, 10, 23, 78),
(241, 10, 5, 79),
(242, 10, 6, 79),
(243, 10, 23, 79),
(244, 10, 24, 80),
(245, 10, 25, 80),
(246, 10, 7, 82),
(247, 10, 7, 82),
(248, 10, 7, 83),
(249, 10, 2, 83),
(250, 10, 8, 83),
(251, 10, 10, 83),
(252, 10, 11, 83),
(253, 10, 7, 84),
(254, 10, 2, 84),
(255, 10, 8, 84),
(256, 10, 10, 84),
(257, 10, 11, 84),
(258, 10, 5, 85),
(259, 10, 6, 85),
(260, 10, 26, 85),
(261, 10, 5, 86),
(262, 10, 6, 86),
(263, 10, 26, 86),
(264, 10, 5, 87),
(265, 10, 6, 87),
(266, 10, 26, 87),
(270, 10, 5, 90),
(271, 10, 6, 90),
(272, 10, 26, 90),
(273, 10, 5, 89),
(274, 10, 6, 89),
(275, 10, 26, 89),
(276, 10, 7, 91),
(277, 10, 5, 91),
(278, 10, 10, 91),
(279, 10, 11, 91),
(280, 10, 7, 92),
(281, 10, 5, 92),
(282, 10, 10, 92),
(283, 10, 11, 92),
(284, 10, 7, 93),
(285, 10, 5, 93),
(286, 10, 10, 93),
(287, 10, 11, 93),
(288, 10, 7, 94),
(289, 10, 5, 94),
(290, 10, 10, 94),
(291, 10, 11, 94),
(292, 10, 20, 95),
(293, 10, 21, 95),
(294, 10, 22, 95),
(295, 10, 8, 96),
(296, 10, 27, 96),
(297, 10, 10, 96),
(298, 10, 3, 97),
(299, 10, 12, 97),
(300, 10, 11, 97),
(301, 10, 21, 98),
(302, 10, 20, 98),
(303, 10, 22, 98),
(304, 10, 3, 99),
(305, 10, 27, 99),
(306, 10, 10, 99),
(307, 10, 3, 100),
(308, 10, 27, 100),
(309, 10, 10, 100),
(310, 10, 7, 101),
(311, 10, 14, 101),
(312, 10, 3, 101),
(313, 10, 14, 102),
(314, 10, 3, 102),
(315, 10, 5, 103),
(316, 10, 15, 103),
(317, 10, 3, 104),
(318, 10, 3, 105),
(319, 10, 14, 106),
(320, 10, 3, 107),
(321, 10, 3, 108),
(322, 10, 3, 109),
(323, 10, 28, 109),
(324, 10, 29, 110),
(325, 10, 2, 111),
(326, 10, 3, 112),
(327, 10, 3, 113),
(328, 10, 3, 114),
(329, 10, 3, 115),
(330, 10, 3, 116),
(331, 10, 3, 117),
(332, 10, 5, 118),
(333, 10, 14, 118),
(334, 10, 3, 119),
(335, 10, 3, 120),
(336, 10, 3, 121);

-- --------------------------------------------------------

--
-- Table structure for table `product_series`
--

CREATE TABLE `product_series` (
  `product_series_id` int(11) NOT NULL,
  `product_series_name` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_series`
--

INSERT INTO `product_series` (`product_series_id`, `product_series_name`, `series`) VALUES
(1, 'iPhone 14', 4),
(2, 'iPhone 14 Plus', 4),
(3, 'iPhone 14 Pro', 4),
(4, 'iPhone 14 Pro Max', 4),
(5, 'iPhone 13', 3),
(6, 'iPhone 13 Mini', 3),
(7, 'iPhone 13 Pro', 3),
(8, 'iPhone 13 Pro Max', 3),
(9, 'iPhone 12', 2),
(10, 'iPhone 12 Mini', 2),
(11, 'iPhone 12 Pro', 2),
(12, 'iPhone 12 Pro Max', 2),
(13, 'iPhone 11 ', 1),
(14, 'iPhone 11 Pro', 1),
(15, 'iPhone 11 Pro Max', 1),
(16, 'iPad Pro M2', 5),
(17, 'iPad Pro 2021', 5),
(18, 'iPad Pro 12.9', 5),
(19, 'iPad Pro 11', 5),
(20, 'iPad Air 4', 6),
(21, 'iPad Air 5', 6),
(22, 'iPad Pro M1', 5),
(23, 'MacBook Air M1', 11),
(24, 'MacBook Air M2', 11),
(25, 'MacBook Pro M1', 10),
(26, 'MacBook Pro M2', 10),
(27, 'MacBook M1 Pro', 10),
(28, 'MacBook M2 Pro', 10),
(29, 'MacBook M1 Max', 10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`series_id`, `series_name`, `category_id`) VALUES
(1, 'iPhone 11 Series', 1),
(2, 'iPhone 12 Series', 1),
(3, 'iPhone 13 Series', 1),
(4, 'iPhone 14 Series', 1),
(5, 'iPad Pro', 2),
(6, 'iPad Air', 2),
(9, 'iPad Mini', 2),
(10, 'MacBook Pro', 3),
(11, 'MacBook Air', 3),
(12, 'Apple Watch Ultra', 4),
(13, 'Apple Watch SE', 4),
(14, 'Apple Watch S3', 4),
(15, 'Apple Watch S6', 4),
(16, 'Apple Watch S7', 4),
(17, 'Apple Watch S8', 4),
(18, 'Phụ kiện Apple', 5),
(19, 'Cốc - Cáp sạc', 5),
(20, 'Bao da - Ốp lưng', 5),
(21, 'Kính cường lực', 5),
(22, 'Sạc dự phòng', 5),
(23, 'iPad Gen 9', 2),
(24, 'iPad Gen 10', 2),
(25, 'iMac 2021', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `UK_64t7ox312pqal3p7fg9o503c2` (`user_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  ADD KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`oder_detail_id`),
  ADD UNIQUE KEY `UK_p387c2pa1m3xxcxcktoawo954` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKtr5elaf3k45l7r7erk5ldsthv` (`series_id`),
  ADD KEY `FKgx93xu5fhahni3y7uvqu34tp7` (`product_version_id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD KEY `FKgt41wyswrex82sy6iwdup2eak` (`product_id`),
  ADD KEY `FK27v84vn4gcojdkprs7hky4epw` (`image_id`);

--
-- Indexes for table `product_cart_detail`
--
ALTER TABLE `product_cart_detail`
  ADD KEY `FK3nrofe43p7ied247bwa8rmj5t` (`cart_detail_id`),
  ADD KEY `FK1cqnkhrh3j0ydiry6i7u3i2a4` (`product_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`product_color_id`),
  ADD KEY `FKb9e4okm5xhksf4up2ltc8gxv0` (`color_id`),
  ADD KEY `FKqhu7cqni31911lmvx4fqmiw65` (`product_id`);

--
-- Indexes for table `product_series`
--
ALTER TABLE `product_series`
  ADD PRIMARY KEY (`product_series_id`),
  ADD KEY `FKamav6ljjvvq1tpp3npvi2nerm` (`series`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`),
  ADD KEY `FKfa9dxbmtprf4k7096fmgo5rlc` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `oder_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `product_color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `product_series`
--
ALTER TABLE `product_series`
  MODIFY `product_series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKgx93xu5fhahni3y7uvqu34tp7` FOREIGN KEY (`product_version_id`) REFERENCES `product_series` (`product_series_id`),
  ADD CONSTRAINT `FKtr5elaf3k45l7r7erk5ldsthv` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`);

--
-- Constraints for table `products_images`
--
ALTER TABLE `products_images`
  ADD CONSTRAINT `FK27v84vn4gcojdkprs7hky4epw` FOREIGN KEY (`image_id`) REFERENCES `images_product` (`id`),
  ADD CONSTRAINT `FKgt41wyswrex82sy6iwdup2eak` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `product_cart_detail`
--
ALTER TABLE `product_cart_detail`
  ADD CONSTRAINT `FK1cqnkhrh3j0ydiry6i7u3i2a4` FOREIGN KEY (`product_id`) REFERENCES `cart_details` (`cart_detail_id`),
  ADD CONSTRAINT `FK3nrofe43p7ied247bwa8rmj5t` FOREIGN KEY (`cart_detail_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `FKb9e4okm5xhksf4up2ltc8gxv0` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  ADD CONSTRAINT `FKqhu7cqni31911lmvx4fqmiw65` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `product_series`
--
ALTER TABLE `product_series`
  ADD CONSTRAINT `FKamav6ljjvvq1tpp3npvi2nerm` FOREIGN KEY (`series`) REFERENCES `series` (`series_id`);

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `FKfa9dxbmtprf4k7096fmgo5rlc` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
