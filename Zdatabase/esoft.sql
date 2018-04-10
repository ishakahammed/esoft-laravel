-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 09:27 PM
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
-- Database: `esoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2018_04_02_144604_create_tbl_admin_table', 1),
(5, '2018_04_02_172823_create_tbl_category_table', 1),
(6, '2018_04_03_141749_create_manufacture_table', 2),
(7, '2018_04_04_134134_create_tbl_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'ishak@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Ishak Ahammed', '01677537984', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Social App', 'This is Social App category', 1, NULL, NULL),
(2, 'Media', 'This is media app category', 1, NULL, NULL),
(3, 'Security', 'This is security Category', 1, NULL, NULL),
(4, 'Hospital Apps', 'This is hospital related apps&nbsp;', 1, NULL, NULL),
(5, 'Management Software', 'This is management software section', 1, NULL, NULL),
(6, 'Business Apps', 'This is business related apps category', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Microsoft', 'Microsoft Brands', 1, NULL, NULL),
(2, 'Ubisoft', 'Ubisoft brand', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_version`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'ERP', 5, 2, 'This is erp system', 'ERP software use for managing.......................', 30000.00, '', '300mb', '1.01', 1, NULL, NULL),
(2, 'erp', 5, 2, 'sadfsdafsdfsdaf', 'sdafsfsadff', 16161.00, '', '44', 'v120', 1, NULL, NULL),
(3, 'avbb', 1, 1, 'dfsdfsd', 'sdfsdfsdf', 1023.00, '', '120', 'v1210', 1, NULL, NULL),
(4, 'ERP', 1, 1, 'dgvsg', 'sdgsg', 20.00, '\' \'', '200', '32', 1, NULL, NULL),
(5, 'fdsfdsf', 3, 2, 'dsfdsf', 'sdfsdf', 100.00, '\' \'', '100000', 'v1210', 1, NULL, NULL),
(6, 'ERP', 5, 2, 'sdfdsafds', 'sdfsadfsdaf', 30225.00, '', '20614', 'v1.20', 1, NULL, NULL),
(7, 'afdsf', 2, 2, 'dsfs', 'sdfds', 20.00, '', '20614', 'v1.20', 1, NULL, NULL),
(8, 'fgfhf', 2, 2, 'fghgf', 'fghgfh', 302.00, '', '120', 'v1.20', 1, NULL, NULL),
(9, 'fgh', 1, 1, 'gfhhfgh', 'fghfhg', 2000.00, '', 'gfj', 'gh', 1, NULL, NULL),
(10, 'sfdsdf', 1, 1, 'sdfsdafs', 'sdfsdaf', 200.00, 'image/g9iVyEPMhmjmbNhSEuDC.png', '20614', 'v1.20', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
