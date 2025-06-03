-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 03:55 PM
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
(2, 'Pham', 'Dinh', 'admin@example.com', '0924755870', '$2y$10$kdpnDlwi2WHr8JZPck/kZOOGS4htIcq8QEyPDz1OM7J0J.kG/b7TK', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'admin', 1, '2021-04-18', '2021-04-18'),
(3, 'Duong', 'Dinh', 'admin2@example.com', '1234567890', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'admin', 1, '2021-04-18', '2021-04-18'),
(5, 'Duong', 'Dinh', 'nvh@example.com', '012345678911', '$2y$10$HqE/RImqc7NJS3d02gNO/u./5UstOM1HLJABRB9kkgXyx855wRbzW', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'customer', 1, '2021-04-18', '2021-04-18'),
(6, 'Duiga', 'duiga', 'duigax2@example.com', '0345556256', '$2y$10$a7svRwDCca3nsGhtLWJuLOLqYgx1UOBYDcTsQ6ixgIq5WnjT6W2m6', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Cho Long Bien', 'customer', 1, '2021-04-18', '2021-04-20'),
(7, 'Pham', 'Dinh', 'PhamDinh@example.com', '1122334455', '$2y$10$NVmb0OPjsKd2No06H7dGNOt/1N2XCZHLJQAGfZjMHGmFEfCwYXOLW', NULL, NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Hoan Kiem', 'customer', 1, '2021-04-18', '2021-04-18'),
(8, 'dinh', 'dz', 'uwuw@example.com', '111111111111', '25f9e794323b453885f5181f1b624d0b', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', '', 'customer', 1, '2021-04-17', '2021-05-31'),
(9, 'TEST', 'TEST', 'T1@example.com', '1234567891', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', 'Rive Park. vu Trong Phung', 'customer', 1, '2021-05-26', '2021-05-31'),
(10, 'Dzuong', 'Dep Trai', 'dzdeptrai@example.com', '0128456395', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 15:24:52', 'Đắk Lắk', 'buon ma thuot', 'customer', 1, '2021-06-06', '2021-06-06'),
(11, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', '$2y$10$ylp6jca0OjGDCJl7EkiWFetDB2vBSaWSd1t2LZy8XBsLup/6T.oN2', '', NULL, '2025-05-19 15:24:52', 'Hà Nội', 'long biên', 'customer', 1, '2025-05-19', '2025-05-20'),
(37, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', '25d55ad283aa400af464c76d713c07ad', '', NULL, '2025-05-19 18:33:30', 'Hà Nội', 'long biên', 'customer', 1, '2025-05-19', '2025-05-19'),
(38, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', '$2y$10$hQ8m8j8XUTs6z6CAJEwfTeRoFFV8YsWfVdq/4Fl5Z9lhFvLVm6R8u', '', NULL, '2025-05-20 03:51:16', 'Bắc Ninh', 'long biên', 'customer', 1, '2025-05-20', '2025-05-21'),
(39, 'tien', 'pham', 'tienolympia2020@gmail.com', '0395555555', '$2y$10$zpD6xwXTavjEsxQK/XowseK01RC9yb4Q365.cpcjdhofk8iDaWoJa', '', NULL, '2025-05-21 08:00:57', 'Hà Nội', 'ha noi', 'customer', 0, '2025-05-21', '2025-05-21'),
(40, 'Pham', 'tjen', 'tienhvnhgpt@gmail.com', '0395527082', '$2y$10$nlpH45yJYQqEVy7z0mgqSubxt6JKNTL0Ru6GVrD4LnMYI3sXIMzNe', NULL, NULL, '2025-05-21 09:23:45', 'Hà Nội', 'huu hoa thanh tri ha noi', 'customer', 1, '2025-05-21', '2025-05-21');

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
(1, 'Home banner', 'banner_version.png', 'Home', 'Home Banner', 1, 1, '2021-05-21', '2025-05-25'),
(2, 'Cookie banner', 'cookie-banner.png', 'Home', 'Small home banner ', 1, 2, '2021-05-22', '2021-05-22'),
(3, 'About banner', 'wheatbg1.png', 'About', 'About banner ', 1, 1, '2021-05-22', '2021-05-22'),
(4, 'Product banner', 'banner-6.png', 'Product', 'Product banner ', 1, 1, '2021-05-22', '2021-05-22'),
(5, 'Product detail banner', 'banner-6.png', 'Product Detail', 'Product detail banner', 1, 1, '2021-05-22', '2021-05-22'),
(6, 'Cart banner', 'banner-4.png', 'Cart', 'Cart banner', 1, 1, '2021-05-22', '2021-05-22'),
(7, 'Contact banner', 'banner-2.png', 'Contact', 'Contact banner', 1, 1, '2021-05-22', '2021-05-22'),
(8, 'Checkout banner', 'banner-3.png', 'Checkout', 'Checkout banner', 1, 1, '2021-05-22', '2021-05-23'),
(22, 'Hinhanhquan', '2.png', 'Home', 'Cơ sở 2', 1, 1, '2025-05-23', '2025-05-23'),
(23, 'a', '2.png', 'Home', 'a', 1, 2, '2025-05-23', '2025-05-23');

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
(16, 'Bánh mỳ tây', 0, 1, '2025-05-19', '2025-05-19'),
(17, 'Panacota', 1, 1, '2025-05-21', '2025-05-21'),
(18, 'Bông lan', 1, 2, '2025-05-21', '2025-05-21'),
(19, 'Tiramisu', 1, 3, '2025-05-21', '2025-05-21'),
(20, 'Matcha', 1, 4, '2025-05-21', '2025-05-21');

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
('TU', 0.200, 188, 1, '2021-06-02', '2025-05-24'),
('TU1', 0.500, 8, 1, '2025-05-19', '2025-05-23'),
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
  `total` double NOT NULL,
  `payment_status` tinyint(1) DEFAULT 0 COMMENT '0 là chưa thanh toán, 1 là đã thanh toán',
  `payment_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `fname`, `lname`, `email`, `phone`, `province`, `address`, `note`, `delivery`, `payment`, `status`, `account_id`, `created_at`, `updated_at`, `coupon`, `total`, `payment_status`, `payment_link`) VALUES
(1, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-18', NULL, 0, 0, NULL),
(2, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-20', NULL, 0, 0, NULL),
(3, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-18', '2021-04-20', NULL, 0, 0, NULL),
(4, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 3, 1, '2021-04-18', '2021-06-02', NULL, 0, 0, NULL),
(5, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0, 0, NULL),
(6, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0, 0, NULL),
(7, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-04-18', '2021-04-18', NULL, 0, 0, NULL),
(8, 'Thai Duong', 'Tran', 'duongtt@example.com', '0123555889', 'Hà Nội', 'Hoan Kiem', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 7, '2021-04-19', '2021-04-19', NULL, 0, 0, NULL),
(9, 'Thai Duong', 'Tran', 'duongtt@example.com', '0123555889', 'Hà Nội', 'Hoan Kiem', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 7, '2021-04-19', '2021-04-19', NULL, 0, 0, NULL),
(10, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0946532668', 'Hà Nội', 'Rivera Park, Vu Trong Phung', NULL, 'Giaohangnhanh', 'Internet Banking', 0, 1, '2021-04-19', '2021-05-29', NULL, 0, 0, NULL),
(11, 'Hong Anh', 'Nguyen', 'anhnth@example.com', '0345556256', 'Hà Nội', 'Cho Long Bien', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 6, '2021-04-20', '2021-04-20', NULL, 0, 0, NULL),
(12, 'Viet Hoang', 'Nguyen', 'nvh@example.com', '0123555888', 'Hà Nội', '80 Nguyen Khang', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 5, '2021-04-20', '2021-04-20', NULL, 0, 0, NULL),
(13, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-04-24', '2021-04-24', NULL, 0, 0, NULL),
(14, 'Phuc', 'Nguyen', 'phucnguyen@example.com', '0946532665', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 0, 1, '2021-05-10', '2021-05-10', NULL, 0, 0, NULL),
(15, 'Phuc', 'Nguyen', 'phucnguyen@example.com', 'fgfdgdh', 'Hà Nội', '121 Cầu Giấy', NULL, 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-15', '2021-05-15', NULL, 0, 0, NULL),
(19, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0123555888', 'Quảng Ninh', 'Cao Xanh', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0, 0, NULL),
(20, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0123555888', 'Quảng Ninh', 'Cao Xanh', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0, 0, NULL),
(21, 'Nguyễn', 'Phúc', 'phuc9clvt@gmail.com', '0904618994', 'Quảng Ninh', 'Cao Xanh', 'test2', 'Giaohangtietkiem', 'Cash on delivery', 1, 1, '2021-05-21', '2021-05-21', NULL, 0, 0, NULL),
(22, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(23, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'test', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(24, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'test ordder', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(25, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'rterter', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(26, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'sfgfgfd', 'Giaohangtietkiem', 'Cash on delivery', 2, 8, '2021-05-28', '2021-05-31', NULL, 0, 0, NULL),
(27, 'Phuc', 'Nguyen', 'phucnguyen1@example.com', '0946582665', 'Hà Nội', '121 Cầu Giấy', 'dsgfgrdfg', 'Giaohangtietkiem', 'Cash on delivery', 1, 8, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(28, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'wsfeasgsrbsfhb', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(29, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(30, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'fhfnndgxm', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-05-28', '2021-05-28', NULL, 0, 0, NULL),
(31, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'tyuyfugvkigblhl', 'Giaohangtietkiem', 'Cash on delivery', 2, 3, '2021-05-28', '2021-05-29', NULL, 0, 0, NULL),
(32, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rivera Park, Vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 9, '2021-05-31', '2021-05-31', 0.300, 0, 0, NULL),
(33, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rivera Park, Vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 2, 9, '2021-05-31', '2021-05-31', 0.000, 0, 0, NULL),
(34, 'Tri Hung', 'Nguyen', 'hungnguyen@example.com', '0526478951', 'Hà Nội', 'Rive Park. vu Trong Phung', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 9, '2021-06-02', '2021-06-02', 0.300, 0, 0, NULL),
(35, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-06-04', '2021-06-04', 0.300, 0, 0, NULL),
(36, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 3, '2021-06-05', '2021-06-05', 0.300, 0, 0, NULL),
(37, 'Harry', 'Potter', 'admin2@example.com', '0946532675', 'Hà Nội', '121 Cầu Giấy', 'deliver soon please', 'Giaohangnhanh', 'Cash on delivery', 1, 3, '2021-06-06', '2021-06-06', 0.300, 0, 0, NULL),
(38, 'Dzuong', 'Dep Trai', 'dzdeptrai@example.com', '0128456395', 'Hà Nội', 'buon ma thuot', '', 'Giaohangtietkiem', 'Cash on delivery', 3, 10, '2021-06-06', '2023-05-07', 0.000, 0, 0, NULL),
(39, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Internet Banking', 0, 11, '2025-05-19', '2025-05-19', 0.000, 0, 0, NULL),
(40, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Cash on delivery', 3, 11, '2025-05-19', '2025-05-19', 0.000, 0, 0, NULL),
(41, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangnhanh', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0, 0, NULL),
(42, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0, 0, NULL),
(43, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.000, 0, 0, NULL),
(44, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 11, '2025-05-19', '2025-05-19', 0.200, 0, 0, NULL),
(45, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 2, 11, '2025-05-19', '2025-05-20', 0.200, 0, 0, NULL),
(46, 'tu', 'dam', 'kbtisun2k@gmail.com', '0389321548', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 3, 11, '2025-05-19', '2025-05-19', 0.500, 0, 0, NULL),
(47, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 0, 37, '2025-05-19', '2025-05-19', 0.200, 0, 0, NULL),
(48, 'tu', 'dam', 'damtu0075@gmail.com', '0389321541', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 0, 37, '2025-05-19', '2025-05-19', NULL, 0, 0, NULL),
(49, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', NULL, 0, 0, NULL),
(50, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 38, '2025-05-20', '2025-05-20', NULL, 0, 0, NULL),
(51, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', NULL, 0, 0, NULL),
(52, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Internet Banking', 1, 38, '2025-05-20', '2025-05-20', 0.200, 0, 0, NULL),
(53, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', '123123', '', 'Giaohangtietkiem', 'Cash on delivery', 1, 2, '2025-05-20', '2025-05-20', NULL, 16.5, 0, NULL),
(54, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'tare', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(55, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'a', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(56, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Cash', 3, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(57, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'c', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(58, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'c', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(59, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Cash', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(60, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(61, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cxv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(62, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(63, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 's', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(64, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 's', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(65, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 's', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(66, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'fv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(67, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'fv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(68, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'bv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 24, 0, NULL),
(69, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'qưd', 'csd', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(70, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'qưd', 'csd', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(71, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'qưd', 'csd', 'Giaohangtietkiem', 'Cash', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(72, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(73, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(74, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(75, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(76, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(77, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(78, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(79, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(80, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(81, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(82, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 26, 0, NULL),
(83, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(84, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(85, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(86, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(87, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(88, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(89, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(90, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(91, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(92, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(93, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 26, 0, NULL),
(94, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', '132', '', 'Giaohangtietkiem', 'Cash', 3, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(95, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'hm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(96, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'hm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(97, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'hm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(98, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'hm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(99, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'gd', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(100, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'df', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(101, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 13, 0, NULL),
(102, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(103, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(104, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(105, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(106, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(107, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(108, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 13, 0, NULL),
(109, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cx', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 7.8, 0, NULL),
(110, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cx', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 7.8, 0, NULL),
(111, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'nbv', '', 'Giaohangtietkiem', 'Cash', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(112, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(113, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(114, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(115, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(116, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(117, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 16, 0, NULL),
(118, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 16, 0, NULL),
(119, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 16, 0, NULL),
(120, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(121, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(122, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(123, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(124, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(125, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(126, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(127, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(128, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(129, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(130, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(131, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(132, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(133, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(134, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(135, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(136, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(137, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(138, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'v', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(139, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cvxz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(140, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cvxz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(141, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 15, 0, NULL),
(142, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(143, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(144, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(145, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(146, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(147, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vc', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 15, 0, NULL),
(148, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'hd', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 7.8, 0, NULL),
(149, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cg', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(150, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cg', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(151, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cbn', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(152, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'nm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(153, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'nm', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(154, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xcv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 4.9, 0, NULL),
(155, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xcv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', 0.000, 4.9, 0, NULL),
(156, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vx', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-20', '2025-05-20', NULL, 26, 0, NULL),
(157, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'vx', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-20', '2025-05-20', NULL, 26, 0, NULL),
(158, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'huu hoa thanh tri ha noi', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-20', '2025-05-20', NULL, 50, 0, NULL),
(159, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'dsffds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 13, 0, NULL),
(160, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xccxxcz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 44, 0, NULL),
(161, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xccxxcz', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', 0.000, 44, 0, NULL),
(162, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xcv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 92, 0, NULL),
(163, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xcv', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', 0.000, 92, 0, NULL),
(164, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'sad', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 4.9, 0, NULL),
(165, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'dfas', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 4.9, 0, NULL),
(166, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'dfas', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', 0.000, 4.9, 0, NULL),
(167, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 4.9, 0, NULL),
(168, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xcv', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 13, 0, NULL),
(169, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'sdsdfdfs', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 2.05, 0, NULL),
(170, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xzc', '', 'Giaohangtietkiem', 'Cash', 3, 2, '2025-05-21', '2025-05-21', NULL, 2.05, 0, NULL),
(171, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cxz', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 13, 0, NULL),
(172, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'xvc', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 13, 0, NULL),
(173, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'huu hoa thanh tri ha noi', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 2.05, 1, NULL),
(174, 'tien', 'pham', 'tienolympia2020@gmail.com', '0395555555', 'Hà Nội', 'ha noi', '', 'Giaohangtietkiem', 'Banking', 3, 39, '2025-05-21', '2025-05-21', NULL, 25.2, 0, NULL),
(175, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cvx', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 13, 0, NULL),
(176, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'ds', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 26, 0, NULL),
(177, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'cvxcvx', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 2.05, 0, 'https://pay.payos.vn/web/4fc90a8d26524461ade80ec872e8a8ea'),
(178, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Đắk Lắk', 'vc', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 2.05, 0, 'https://pay.payos.vn/web/760df23e1e0b49cbb8bec1525f4630bd'),
(179, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'huu hoa thanh tri ha noi', '', 'Giaohangtietkiem', 'Banking', 1, 2, '2025-05-21', '2025-05-21', NULL, 2.55, 1, 'https://pay.payos.vn/web/08166186635f46a68a3248775455db5a'),
(180, 'Pham', 'Dinh', 'admin@example.com', '0924755870', 'Hà Nội', 'huu hoa', '', 'Giaohangtietkiem', 'Banking', 3, 2, '2025-05-21', '2025-05-21', NULL, 1502, 0, 'https://pay.payos.vn/web/fbeb9a642a494c82b79642311ac76287'),
(181, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-21', '2025-05-21', 0.200, 122, 0, NULL),
(182, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', 0.200, 122, 0, NULL),
(183, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 5, 0, NULL),
(184, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-21', '2025-05-21', NULL, 38, 0, NULL),
(185, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 11, 0, NULL),
(186, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-21', '2025-05-21', NULL, 107, 0, NULL),
(187, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 11, 0, NULL),
(188, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-21', '2025-05-21', NULL, 11, 0, NULL),
(189, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 3, 38, '2025-05-21', '2025-05-21', NULL, 10, 0, 'https://pay.payos.vn/web/2d84782dde90466d8e5a93a76ec2a980'),
(190, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-21', '2025-05-21', NULL, 92, 0, NULL),
(191, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-21', '2025-05-21', NULL, 92, 0, NULL),
(192, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 10, 0, NULL),
(193, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 15, 0, NULL),
(194, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 10, 0, NULL),
(195, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-21', '2025-05-21', NULL, 5, 0, NULL),
(196, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-21', '2025-05-21', NULL, 15, 0, 'https://pay.payos.vn/web/98f006977ed04c998d3d3ef17bf3e5a2'),
(197, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', 0.000, 11, 0, NULL),
(198, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-22', '2025-05-22', 0.000, 5, 0, 'https://pay.payos.vn/web/d5468dd25faf45d28b07d82f0264a8fc'),
(199, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', 0.000, 15, 0, NULL),
(200, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-22', '2025-05-22', 0.000, 10, 0, 'https://pay.payos.vn/web/1166ad7fd2604e12802b80d4325f7f00'),
(201, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', 0.000, 5, 0, NULL),
(202, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-22', '2025-05-22', 0.000, 10, 0, NULL),
(203, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-22', '2025-05-22', 0.000, 5, 0, NULL),
(204, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-22', '2025-05-22', 0.000, 5, 0, NULL),
(205, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', 0.000, 11, 0, NULL),
(206, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', 0.000, 11, 0, NULL),
(207, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 2, 38, '2025-05-22', '2025-05-21', 0.000, 11, 0, NULL),
(208, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-22', '2025-05-21', NULL, 12.99, 0, NULL),
(209, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 2, 38, '2025-05-22', '2025-05-21', 0.000, 15, 0, NULL),
(210, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-22', '2025-05-22', 0.000, 5, 0, NULL),
(211, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-22', '2025-05-22', 0.000, 5, 0, NULL),
(212, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-23', '2025-05-23', 0.500, 8.5, 0, NULL),
(213, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-23', '2025-05-23', 0.200, 74, 0, NULL),
(214, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-24', '2025-05-24', 0.200, 9.2, 0, NULL),
(215, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-24', '2025-05-24', 0.200, 119.6, 0, NULL),
(216, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-24', '2025-05-24', 0.200, 9.2, 0, NULL),
(217, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 3, 38, '2025-05-24', '2025-05-24', 0.200, 9.2, 0, NULL),
(218, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Cash', 1, 38, '2025-05-24', '2025-05-24', 0.000, 15, 0, NULL),
(219, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-24', '2025-05-24', 0.000, 11, 0, NULL),
(220, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-24', '2025-05-24', NULL, 110, 0, 'https://pay.payos.vn/web/d974e97d44e0472bb152dcc8872f1c0b'),
(221, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 1, 38, '2025-05-24', '2025-05-24', 0.000, 92, 0, NULL),
(222, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 3, 38, '2025-05-25', '2025-05-25', 0.000, 11, 0, 'https://pay.payos.vn/web/5ae9492d912340dcb1e075bb00004b93'),
(223, 'tukdv', 'dam', 'thtisun2k@gmail.com', '0389321544', 'Hà Nội', 'long biên', '', 'Giaohangtietkiem', 'Banking', 3, 38, '2025-05-25', '2025-05-25', 0.000, 92, 0, 'https://pay.payos.vn/web/1572f48c942a46f7ac45465c19b35c3c');

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
(52, 11, 1, 2.9),
(53, 11, 5, 14.5),
(54, 11, 1, 2.9),
(55, 12, 1, 11),
(56, 11, 1, 2.9),
(57, 11, 1, 2.9),
(59, 11, 1, 2.9),
(60, 11, 1, 2.9),
(61, 11, 1, 2.9),
(62, 11, 1, 2.9),
(63, 11, 1, 2.9),
(66, 12, 1, 11),
(68, 12, 2, 22),
(69, 12, 1, 11),
(72, 12, 1, 11),
(82, 13, 2, 24),
(94, 11, 1, 2.9),
(95, 12, 1, 11),
(99, 12, 1, 11),
(100, 12, 1, 11),
(101, 12, 1, 11),
(109, 11, 2, 5.8),
(117, 15, 1, 14),
(120, 11, 1, 2.9),
(139, 11, 1, 2.9),
(141, 14, 1, 13),
(142, 14, 1, 13),
(143, 14, 1, 13),
(144, 14, 1, 13),
(145, 14, 1, 13),
(146, 14, 1, 13),
(147, 14, 1, 13),
(148, 11, 2, 5.8),
(149, 11, 1, 2.9),
(151, 11, 1, 2.9),
(152, 11, 1, 2.9),
(154, 11, 1, 2.9),
(156, 13, 2, 24),
(157, 13, 2, 24),
(158, 13, 4, 48),
(159, 12, 1, 11),
(160, 15, 3, 42),
(162, 16, 6, 90),
(164, 11, 1, 2.9),
(165, 11, 1, 2.9),
(167, 11, 1, 2.9),
(168, 12, 1, 11),
(169, 11, 1, 0.05),
(170, 11, 1, 0.05),
(171, 12, 1, 11),
(172, 12, 1, 11),
(173, 11, 1, 0.05),
(174, 11, 4, 0.2),
(174, 12, 1, 11),
(174, 13, 1, 12),
(175, 12, 1, 11),
(176, 13, 2, 24),
(177, 11, 1, 0.05),
(178, 11, 1, 0.05),
(179, 11, 11, 0.55),
(180, 16, 100, 1500),
(181, 134, 50, 150),
(182, 134, 50, 150),
(183, 134, 1, 3),
(184, 132, 4, 36),
(185, 132, 1, 9),
(186, 133, 1, 90),
(186, 134, 2, 6),
(186, 132, 1, 9),
(187, 132, 1, 9),
(188, 132, 1, 9),
(189, 129, 1, 8),
(190, 133, 1, 90),
(191, 133, 1, 90),
(192, 130, 1, 8),
(193, 131, 1, 13),
(194, 129, 1, 8),
(195, 134, 1, 3),
(196, 131, 1, 13),
(197, 132, 1, 9),
(198, 134, 1, 3),
(199, 131, 1, 13),
(200, 130, 1, 8),
(201, 134, 1, 3),
(202, 130, 1, 8),
(203, 134, 1, 3),
(204, 134, 1, 3),
(205, 132, 1, 9),
(206, 132, 1, 9),
(207, 132, 1, 9),
(208, 125, 1, 10.99),
(209, 131, 1, 13),
(210, 134, 1, 3),
(211, 134, 1, 3),
(212, 131, 1, 13),
(213, 133, 1, 90),
(214, 132, 1, 9),
(215, 132, 11, 99),
(215, 129, 6, 48),
(216, 132, 1, 9),
(217, 132, 1, 9),
(218, 131, 1, 13),
(219, 132, 1, 9),
(220, 132, 12, 108),
(221, 133, 1, 90),
(222, 132, 1, 9),
(223, 133, 1, 90);

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
(11, 'Coffee bread', 'offer.png', 8.750, 0.050, 'Explode your palate with fragrant coffee odour anf booming flavour', 'usa', 100, 1, 1, '2021-05-29', '2025-05-21'),
(12, 'Sourdough Bread1', '', 13.000, 11.000, 'ngon nh? m?nh b?o', 'vn', 50, 1, 1, '2025-05-20', '2025-05-20'),
(13, 'Sourdough Bread2', '', 14.000, 12.000, 'ngon nh? m?nh b?o', 'vn', 20, 1, 2, '2025-05-20', '2025-05-20'),
(14, 'Sourdough Bread3', '', 15.000, 13.000, 'ngon nh? m?nh b?o', 'vn', 30, 1, 3, '2025-05-20', '2025-05-20'),
(15, 'Sourdough Bread4', '', 16.000, 14.000, 'ngon nh? m?nh b?o', 'vn', 100, 1, 4, '2025-05-20', '2025-05-20'),
(16, 'Sourdough Bread5', '', 17.000, 15.000, 'ngon nh? m?nh b?o', 'vn', 40, 1, 15, '2025-05-20', '2025-05-20'),
(17, 'Sourdough Bre', 'bread-1.jpg', 12.990, 10.990, 'Authentic sourdough bread with crispy crust', 'usa', 50, 1, 1, '2025-05-21', '2025-05-21'),
(18, 'Chocolate Ce', 'cake-2.jpg', 25.990, 22.990, 'Rich chocolate cake with creamy frosting', 'usa', 20, 1, 2, '2025-05-21', '2025-05-21'),
(19, 'Vanilla Pding', 'pudding-1.jpg', 8.500, 7.250, 'Smooth vanilla pudding with caramel sauce', 'vn', 30, 1, 3, '2025-05-21', '2025-05-21'),
(20, 'Organiclour', 'flour-1.jpg', 5.990, 0.000, 'High-quality organic baking flour', 'usa', 100, 1, 4, '2025-05-21', '2025-05-21'),
(21, 'Revet Cupcake', '360_F_397717784_MPlcF2fs5EmzxYbBy0n6S7PzHNqpMHFY.jpg', 3.990, 3.500, 'Delicious red velvet cupcake with cream cheese frosting', 'vn', 40, 1, 15, '2025-05-21', '2025-05-21'),
(121, 'bông lan chanh vàng', 'products/bông lan chanh vàng.jpg', 12.990, 10.990, 'Ngon', 'vn', 50, 1, 18, '2025-05-21', '2025-05-21'),
(122, 'tiramisu', 'products/tiramisu.jpg', 40.000, 30.000, 'Ngon', 'vn', 20, 1, 19, '2025-05-21', '2025-05-21'),
(123, 'bông lan fruit', 'products/bông lan fruit.jpg', 12.990, 10.990, 'Ngon', 'vn', 30, 1, 18, '2025-05-21', '2025-05-21'),
(124, 'bông lan vani', 'products/bông lan vani.jpg', 12.990, 10.990, 'Ngon', 'vn', 100, 1, 18, '2025-05-21', '2025-05-21'),
(125, 'Bông lan choccola', 'products/Bông lan choccola.jpg', 12.990, 10.990, 'Ngon', 'vn', 39, 1, 18, '2025-05-21', '2025-05-21'),
(126, 'Bông lan hồng trà', 'products/Bông lan hồng trà.jpg', 12.990, 10.990, 'Ngon', 'vn', 40, 1, 18, '2025-05-21', '2025-05-21'),
(127, 'panacota xoài', 'products/panacota xoài.jpg', 10.000, 8.000, 'Ngon', 'vn', 40, 1, 17, '2025-05-21', '2025-05-21'),
(128, 'panacota kiwi', 'products/panacota kiwi.jpg', 10.000, 8.000, 'Ngon', 'vn', 40, 1, 17, '2025-05-21', '2025-05-21'),
(129, 'panacota việt quất', 'products/panacota việt quất.jpg', 10.000, 8.000, 'Ngon', 'vn', 34, 1, 17, '2025-05-21', '2025-05-21'),
(130, 'panacota_dâu', 'products/panacota_dâu.jpg', 10.000, 8.000, 'Ngon', 'vn', 40, 1, 17, '2025-05-21', '2025-05-21'),
(131, 'matcha dâu', 'products/matcha dâu.jpg', 15.000, 13.000, 'Ngon', 'vn', 37, 1, 20, '2025-05-21', '2025-05-21'),
(132, 'bánh tart', 'products/bánh tart.jpg', 10.000, 9.000, 'Ngon', 'vn', 5, 1, 2, '2025-05-21', '2025-05-21'),
(133, 'Set 9 bánh kem bơ', 'products/Set 9 bánh kem bơ.jpg', 100.000, 90.000, 'Ngon', 'vn', 36, 1, 2, '2025-05-21', '2025-05-21'),
(134, 'Plan', 'products/Plan.jpg', 5.000, 3.000, 'Ngon', 'vn', 36, 1, 2, '2025-05-21', '2025-05-21');

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
(30, 5, 'I will buy again', 5, 3, '2021-06-04', '2021-06-04'),
(32, 5, 'sản phẩm rất ngon', 131, 38, '2025-06-02', '2025-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(30, 38, 132, 1, '2025-05-25 09:39:16', '2025-05-25 09:39:16'),
(31, 3, 134, 1, '2025-05-25 09:42:06', '2025-05-25 09:42:06');

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
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_product` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
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

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
