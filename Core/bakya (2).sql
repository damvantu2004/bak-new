-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 06:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakya`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_token` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `province` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT 'customer',
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là ok, 0 bị khóa',
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `remember_token`, `verification_token`, `email_verified_at`, `province`, `address`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pham', 'Dinh', 'duiga2611@gmail.com', '0123456789', '$2y$10$C0FFUaFas4puu0Q/RBVI4OV/SgcWCpTizmP9wzXh4tWZwX4ON93bu', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'customer', 1, '2021-04-17', '2021-04-17'),
(2, 'Pham', 'Dinh', 'admin@example.com', '0924755870', '$2y$10$kdpnDlwi2WHr8JZPck/kZOOGS4htIcq8QEyPDz1OM7J0J.kG/b7TK', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'admin', 1, '2021-04-18', '2021-04-18'),
(3, 'Duong', 'Dinh', 'admin2@example.com', '1234567890', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'admin', 1, '2021-04-18', '2021-04-18'),
(5, 'Duong', 'Dinh', 'nvh@example.com', '012345678911', '$2y$10$HqE/RImqc7NJS3d02gNO/u./5UstOM1HLJABRB9kkgXyx855wRbzW', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'customer', 1, '2021-04-18', '2021-04-18'),
(6, 'Duiga', 'duiga', 'duigax2@example.com', '0345556256', '$2y$10$a7svRwDCca3nsGhtLWJuLOLqYgx1UOBYDcTsQ6ixgIq5WnjT6W2m6', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Cho Long Bien', 'customer', 1, '2021-04-18', '2021-04-20'),
(7, 'Pham', 'Dinh', 'PhamDinh@example.com', '1122334455', '$2y$10$NVmb0OPjsKd2No06H7dGNOt/1N2XCZHLJQAGfZjMHGmFEfCwYXOLW', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Hoan Kiem', 'customer', 1, '2021-04-18', '2021-04-18'),
(8, 'dinh', 'dz', 'uwuw@example.com', '111111111111', '25f9e794323b453885f5181f1b624d0b', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'customer', 1, '2021-04-17', '2021-05-31'),
(9, 'TEST', 'TEST', 'T1@example.com', '1234567891', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Rive Park. vu Trong Phung', 'customer', 1, '2021-05-26', '2021-05-31'),
(10, 'Dzuong', 'Dep Trai', 'dzdeptrai@example.com', '0128456395', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Đắk Lắk', 'buon ma thuot', 'customer', 1, '2021-06-06', '2021-06-06'),
(11, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', '$2y$10$ylp6jca0OjGDCJl7EkiWFetDB2vBSaWSd1t2LZy8XBsLup/6T.oN2', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', 'long biên', 'customer', 1, '2025-05-19', '2025-05-20'),
(37, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 18:33:30', 'Hà Nội', 'long biên', 'customer', 1, '2025-05-19', '2025-05-19'),
(38, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', '$2y$10$hQ8m8j8XUTs6z6CAJEwfTeRoFFV8YsWfVdq/4Fl5Z9lhFvLVm6R8u', '', NULL, '2025-05-20 03:51:16', 'Bắc Ninh', 'long biên', 'customer', 1, '2025-05-20', '2025-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `site` varchar(255) DEFAULT 'home',
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là hiển thị, 0 ẩn',
  `priority` tinyint(4) DEFAULT 1,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `image`, `site`, `description`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Home banner', 'bannerwtext-center.png', 'Home', 'Home Banner', 1, 1, '2021-05-21', '2021-05-29'),
(2, 'Cookie banner', 'cookie-banner.png', 'Home', 'Small home banner ', 1, 2, '2021-05-22', '2021-05-22'),
(3, 'About banner', 'wheatbg1.png', 'About', 'About banner ', 1, 1, '2021-05-22', '2021-05-22'),
(4, 'Product banner', 'banner-6.png', 'Product', 'Product banner ', 1, 1, '2021-05-22', '2021-05-22'),
(5, 'Product detail banner', 'banner-6.png', 'Product Detail', 'Product detail banner', 1, 1, '2021-05-22', '2021-05-22'),
(6, 'Cart banner', 'banner-4.png', 'Cart', 'Cart banner', 1, 1, '2021-05-22', '2021-05-22'),
(7, 'Contact banner', 'banner-2.png', 'Contact', 'Contact banner', 1, 1, '2021-05-22', '2021-05-22'),
(8, 'Checkout banner', 'banner-3.png', 'Checkout', 'Checkout banner', 1, 1, '2021-05-22', '2021-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là hiển thị, 0 ẩn',
  `account_id` int(11) NOT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là hiển thị, 0 ẩn',
  `priority` tinyint(4) DEFAULT 1,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Bread', 1, 1, '2021-03-12', '2021-05-23'),
(2, 'Cake', 1, 1, '2021-03-12', '2021-06-04'),
(3, 'Pudding', 1, 3, '2021-03-12', '2021-03-12'),
(4, 'Baking ingredients', 1, 1, '2021-03-21', '2021-03-21'),
(15, 'Cupcake', 1, 1, '2021-05-23', '2021-05-23'),
(16, 'Bánh mỳ tây', 0, 1, '2025-05-19', '2025-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `content` text DEFAULT NULL,
  `blog_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `message`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'I would like to book in avanced your catering service', 'Pham Dinh', 'phucnguyen@example.com', '0123456598', '2021-05-25', '2021-05-25'),
(2, 'I would like to order a birthday cake for my aughter', 'Dinh Tung Duong', 'hungnguyen@example.com', '0526478951', '2021-05-28', '2021-05-28'),
(3, '1111', 'tu dam', 'kbtisun2k@gmail.com', '0389321548', '2025-05-19', '2025-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` varchar(100) NOT NULL,
  `coupon_value` float(9,3) NOT NULL DEFAULT 0.000,
  `used_times` mediumint(8) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 is active, 0 is expired',
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon_value`, `used_times`, `status`, `created_at`, `updated_at`) VALUES
('BEAUTIFUL', 0.100, 100, 1, '2021-05-31', '2021-05-31'),
('HAPPYTIME', 0.250, 100, 1, '2021-05-31', '2021-05-31'),
('TU', 0.200, 195, 1, '2021-06-02', '2025-05-20'),
('TU1', 0.500, 9, 1, '2025-05-19', '2025-05-19'),
('WELCOME', 0.300, 96, 1, '2021-05-31', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `province` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `delivery` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là pending, 0 delivered,2 la delivering, 3 la canceled',
  `account_id` int(11) NOT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp(),
  `coupon` float(9,3) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT 0 COMMENT '0 là chưa thanh toán, 1 là đã thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `fname`, `lname`, `email`, `phone`, `province`, `address`, `note`, `delivery`, `payment`, `status`, `account_id`, `created_at`, `updated_at`, `coupon`, `payment_status`) VALUES
(1, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-18', NULL, 0),
(2, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-20', NULL, 0),
(3, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-20', NULL, 0),
(4, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 3, 1, '2021-04-18', '2021-06-02', NULL, 0),
(5, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0),
(6, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0),
(7, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0),
(8, 'Thai Duong', 'Tran', 'duongtt@example.com', '0123555889', 'Hà Nội', 'Hoan Kiem', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 7, '2021-04-19', '2021-04-19', NULL, 0),
(9, 'Thai Duong', 'Tran', 'duongtt@example.com', '0123555889', 'Hà Nội', 'Hoan Kiem', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 7, '2021-04-19', '2021-04-19', NULL, 0),
(10, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0946532668', 'Hà Nội', 'Rivera Park, Vu Trong Phung', NULL, 'Giaohangnhanh', 'Internet Banking', 0, 1, '2021-04-19', '2021-05-29', NULL, 0),
(11, 'Hong Anh', 'Nguyen', 'anhnth@example.com', '0345556256', 'Hà Nội', 'Cho Long Bien', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 6, '2021-04-20', '2021-04-20', NULL, 0),
(12, 'Viet Hoang', 'Nguyen', 'nvh@example.com', '0123555888', 'Hà Nội', '80 Nguyen Khang', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 5, '2021-04-20', '2021-04-20', NULL, 0),
(13, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-24', '2021-04-24', NULL, 0),
(14, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-05-10', '2021-05-10', NULL, 0),
(15, 'Phuc', 'Nguyen', 'phucnguyen@example.com', 'fgfdgdh', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-15', '2021-05-15', NULL, 0),
(19, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0123555888', 'Quảng Ninh', 'Cao Xanh', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0),
(20, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0123555888', 'Quảng Ninh', 'Cao Xanh', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0),
(21, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0904618994', 'Quảng Ninh', 'Cao Xanh', 'test2', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0),
(22, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0),
(23, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0),
(24, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'test ordder', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0),
(25, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'rterter', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0),
(26, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'sfgfgfd', 'Giaohangtietkiem', 'Cash on delivery', 2, 8, '2021-05-28', '2021-05-31', NULL, 0),
(27, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'dsgfgrdfg', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0),
(28, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'wsfeasgsrbsfhb', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0),
(29, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0),
(30, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'fhfnndgxm', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0),
(31, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'tyuyfugvkigblhl', 'Giaohangtietkiem', 'Cash on delivery', 2, 3, '2021-05-28', '2021-05-29', NULL, 0),
(32, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rivera Park, Vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 9, '2021-05-31', '2021-05-31', 0.300, 0),
(33, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rivera Park, Vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 2, 9, '2021-05-31', '2021-05-31', 0.000, 0),
(34, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rive Park. vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 9, '2021-06-02', '2021-06-02', 0.300, 0),
(35, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-06-04', '2021-06-04', 0.300, 0),
(36, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-06-05', '2021-06-05', 0.300, 0),
(37, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'deliver soon please', 'Giaohangnhanh', 'Cash on delivery', 1, 3, '2021-06-06', '2021-06-06', 0.300, 0),
(38, 'Dzuong', 'Dep Trai', 'dzdeptrai@example.com', '0128456395', 'Hà Nội', 'buon ma thuot', '', 'Giaohangtietkiem', 'Cash on delivery', 3, 10, '2021-06-06', '2023-05-07', 0.000, 0),
(39, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Internet Banking', 0, 11, '2025-05-19', '2025-05-19', 0.000, 0),
(40, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Cash on delivery', 3, 11, '2025-05-19', '2025-05-19', 0.000, 0),
(41, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0),
(42, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0),
(43, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0),
(44, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.200, 0),
(45, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 2, 11, '2025-05-19', '2025-05-20', 0.200, 0),
(46, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 3, 11, '2025-05-19', '2025-05-19', 0.500, 0),
(47, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 0, 37, '2025-05-19', '2025-05-19', 0.200, 0),
(48, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 0, 37, '2025-05-19', '2025-05-19', NULL, 0),
(49, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', NULL, 0),
(50, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 38, '2025-05-20', '2025-05-20', NULL, 0),
(51, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', NULL, 0),
(52, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', 0.200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 8, 1, 6),
(2, 3, 1, 5),
(3, 3, 1, 5),
(4, 8, 1, 6),
(5, 5, 1, 15),
(6, 8, 2, 12),
(6, 7, 2, 14),
(7, 5, 2, 30),
(7, 8, 1, 6),
(8, 7, 1, 7),
(8, 5, 1, 15),
(9, 8, 1, 6),
(10, 3, 1, 5),
(10, 4, 15, 525),
(11, 8, 1, 6),
(11, 4, 1, 35),
(12, 4, 1, 35),
(12, 6, 1, 6),
(12, 7, 1, 7),
(12, 8, 1, 6),
(12, 5, 1, 15),
(12, 1, 1, 20),
(12, 2, 1, 15),
(12, 3, 1, 5),
(13, 1, 10, 200),
(14, 8, 22, 132),
(14, 5, 3, 45),
(14, 6, 1, 6),
(15, 8, 1, 6),
(15, 5, 1, 15),
(20, 4, 3, 105),
(21, 2, 10, 150),
(22, 5, 3, 45),
(22, 4, 2, 64),
(23, 5, 9, 90),
(24, 10, 1, 6),
(12, 8, 1, 2),
(26, 6, 3, 18),
(12, 9, 1, 20),
(30, 10, 1, 6),
(30, 7, 1, 6),
(31, 7, 10, 60),
(32, 10, 3, 18),
(33, 9, 1, 20),
(34, 11, 8, 23.2),
(34, 8, 3, 6),
(34, 10, 5, 30),
(34, 9, 2, 40),
(34, 5, 5, 70),
(35, 11, 1, 2.9),
(35, 3, 1, 4),
(35, 9, 2, 40),
(35, 5, 2, 28),
(36, 9, 7, 140),
(37, 9, 5, 100),
(37, 5, 4, 56),
(38, 10, 6, 36),
(39, 5, 3, 42),
(40, 5, 3, 42),
(41, 5, 3, 42),
(42, 5, 3, 42),
(43, 5, 3, 42),
(44, 7, 1, 6),
(45, 8, 4, 8),
(46, 10, 1, 6),
(47, 11, 1, 2.9),
(48, 10, 1, 6),
(49, 12, 1, 11),
(50, 11, 1, 2.9),
(51, 11, 1, 2.9),
(52, 11, 1, 2.9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float(9,3) NOT NULL,
  `sale_price` float(9,3) DEFAULT 0.000,
  `description` text DEFAULT NULL,
  `origin` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 là hiển thị, 0 ẩn',
  `category_id` int(11) NOT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `sale_price`, `description`, `origin`, `quantity`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Baguette', 'bread-9.png', 20.000, 15.000, 'Freshly baked every day !', 'vn', 2, 1, 1, '2021-03-12', '2021-04-11'),
(2, 'Chocolate Pudding', 'bread-11.png', 15.000, 15.000, 'Full of flavor with chocolaty smooth texture !', 'usa', 1, 1, 3, '2021-03-12', '2021-03-12'),
(3, 'Brown Bread', 'bread-2.jpg', 5.000, 4.000, 'Healthy for those who are dieting !', 'usa', 1, 1, 1, '2021-03-12', '2021-03-12'),
(4, 'Strawberry Cake', 'strawberrycake.png', 35.000, 32.000, 'Soft, fragrant sponge cake, accompanied by creamy vanilla frosting, and fresh strawberries', 'vn', 5, 1, 2, '2021-03-12', '2021-04-11'),
(5, 'Pavlova', 'pavlova.png', 15.000, 14.000, 'Australian traditional cake with crispy meringue', 'vn', 2, 1, 2, '2021-03-19', '2021-05-28'),
(6, 'Wheat flour', 'bread-3.jpg', 6.000, 0.000, 'Wheat flour makes your cakes fluffy and scrumptious !!!', 'usa', 20, 1, 4, '2021-03-21', '2021-05-28'),
(7, 'Rye flour', 'bread-6.jpg', 7.000, 6.000, 'Delight your taste with unique texture and flavor', 'usa', 14, 1, 4, '2021-03-21', '2021-03-21'),
(8, 'French toast', 'bread-8.jpg', 6.000, 2.000, 'Crunchy crust - a companion for a hot bowl of soup', 'vn', 87, 1, 1, '2021-03-21', '2021-03-21'),
(9, 'Blueberry cake', 'blueberrycake.jpg', 20.000, 0.000, 'Scrumptious blueberry filling covered by creamy  buttercream frosting', 'vn', 15, 1, 2, '2021-05-23', '2021-05-28'),
(10, 'Matcha Cupcake', 'cupcake3.png', 6.000, 0.000, 'This cupcake is full of matcha flavour !! Ready to ve devoured', 'vn', 20, 1, 15, '2021-05-23', '2021-05-28'),
(11, 'Coffee bread', 'offer.png', 8.750, 2.900, 'Explode your palate with fragrant coffee odour anf booming flavour', 'usa', 100, 1, 1, '2021-05-29', '2021-05-29'),
(12, 'Sourdough Bread1', '', 13.000, 11.000, 'ngon nh? m?nh b?o', 'vn', 50, 1, 1, '2025-05-20', '2025-05-20'),
(13, 'Sourdough Bread2', '', 14.000, 12.000, 'ngon nh? m?nh b?o', 'vn', 20, 1, 2, '2025-05-20', '2025-05-20'),
(14, 'Sourdough Bread3', '', 15.000, 13.000, 'ngon nh? m?nh b?o', 'vn', 30, 1, 3, '2025-05-20', '2025-05-20'),
(15, 'Sourdough Bread4', '', 16.000, 14.000, 'ngon nh? m?nh b?o', 'vn', 100, 1, 4, '2025-05-20', '2025-05-20'),
(16, 'Sourdough Bread5', '', 17.000, 15.000, 'ngon nh? m?nh b?o', 'vn', 40, 1, 15, '2025-05-20', '2025-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `rating` tinyint(4) DEFAULT 5,
  `content` text DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `rating`, `content`, `product_id`, `account_id`, `created_at`, `updated_at`) VALUES
(2, 5, 'Est ad fugiat dolor commodo. Sunt dolore qui proident incididunt in laboris adipisicing eu ea mollit.Dolor elit reprehenderit minim id laboris consequat cillum. Ut laboris incididunt deserunt sint.', 7, 1, '2021-04-19', '2021-04-19'),
(8, 3, 'tst', 1, 1, '2021-04-24', '2021-04-24'),
(10, 4, 'test', 6, 1, '2021-05-27', '2021-05-27'),
(11, 5, 'Delicious', 4, 8, '2021-05-27', '2021-05-27'),
(12, 3, 'Average', 1, 8, '2021-05-27', '2021-05-27'),
(17, 5, 'Delicious', 10, 9, '2021-05-28', '2021-05-28'),
(23, 4, 'Quite good', 9, 3, '2021-05-28', '2021-05-28'),
(25, 5, 'test', 10, 3, '2021-05-31', '2021-05-31'),
(28, 5, 'delicious', 11, 9, '2021-06-02', '2021-06-02'),
(29, 5, 'Tasty', 5, 3, '2021-06-04', '2021-06-04'),
(30, 5, 'I will buy again', 5, 3, '2021-06-04', '2021-06-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `review_ibfk_2` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
