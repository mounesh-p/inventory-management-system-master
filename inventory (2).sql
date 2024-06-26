-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 12:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cleaner', 1, 1, NULL, '2023-08-25 09:54:18', NULL),
(2, 'Liquid', 1, 1, NULL, '2023-08-25 09:54:26', NULL),
(3, 'Example', 1, 1, NULL, '2023-09-02 07:25:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_image`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Mounesh', NULL, '07483573859', 'mouneshp11@gmail.com', NULL, 1, NULL, NULL, '2023-08-25 10:05:03', '2023-08-25 10:05:03'),
(2, 'fbgb', NULL, '07483573859', 'hash@gmail.com', NULL, 1, NULL, NULL, '2023-08-25 10:08:15', '2023-08-25 10:08:15'),
(3, 'Harish Vittalkar', NULL, '07483573859', 'harish@gmail.com', NULL, 1, NULL, NULL, '2023-08-25 10:08:50', '2023-08-25 10:08:50'),
(4, 'demo cust', NULL, '8888888888', 'demo@gmail.com', NULL, 1, NULL, NULL, '2023-08-25 10:13:14', '2023-08-25 10:13:14'),
(5, 'Yash pawar', NULL, '7483573859', 'yash@gmail.com', NULL, 1, NULL, NULL, '2023-08-30 04:13:26', '2023-08-30 04:13:26'),
(6, 'yashh', NULL, '8877738893', 'yash11@gmail.com', NULL, 1, NULL, NULL, '2023-09-01 12:02:34', '2023-09-01 12:02:34'),
(7, 'Mounesh', NULL, '07483573859', 'mouneshp11@gmail.com', NULL, 1, NULL, NULL, '2024-06-26 04:30:21', '2024-06-26 04:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, '1', '2023-08-25', NULL, 1, 1, 1, '2023-08-25 10:35:35', '2023-08-25 10:35:49'),
(9, '2', '2023-08-25', NULL, 1, 1, 1, '2023-08-25 10:36:21', '2023-08-25 10:36:26'),
(10, '3', '2023-08-30', NULL, 1, 1, 1, '2023-08-30 02:39:56', '2023-08-30 02:43:22'),
(11, '4', '2023-08-30', NULL, 1, 1, 1, '2023-08-30 02:46:56', '2023-08-30 02:47:10'),
(12, '5', '2023-08-30', NULL, 1, 1, 1, '2023-08-30 03:17:57', '2023-09-01 12:04:10'),
(13, '6', '2023-08-30', NULL, 1, 1, 1, '2023-08-30 04:13:26', '2023-08-30 04:16:07'),
(14, '7', '2023-08-30', NULL, 1, 1, 1, '2023-08-30 13:58:11', '2023-09-01 12:04:04'),
(15, '8', '2023-09-01', NULL, 1, 1, 1, '2023-09-01 12:02:34', '2023-09-01 12:03:57'),
(16, '9', '2023-09-01', NULL, 1, 1, 1, '2023-09-01 12:03:07', '2023-09-01 12:03:52'),
(18, '10', '2023-09-02', NULL, 1, 1, 1, '2023-09-02 07:49:13', '2023-09-02 07:49:19'),
(19, '11', '2023-09-02', NULL, 1, 1, 1, '2023-09-02 13:12:26', '2023-09-02 13:12:33'),
(20, '12', '2023-09-04', NULL, 1, 1, 1, '2023-09-04 13:24:33', '2023-09-04 13:25:27'),
(21, '13', '2023-09-04', NULL, 1, 1, 1, '2023-09-04 13:47:22', '2023-09-07 02:38:28'),
(22, '14', '2023-09-07', NULL, 1, 1, 1, '2023-09-06 22:40:59', '2023-09-07 02:38:21'),
(23, '15', '2023-09-07', NULL, 0, 1, NULL, '2023-09-07 03:00:22', '2023-09-07 03:00:22'),
(24, '16', '2024-06-26', NULL, 0, 1, NULL, '2024-06-26 04:30:21', '2024-06-26 04:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(8, '2023-08-25', 8, 2, 1, 5, 500, 2500, 1, '2023-08-25 10:35:35', '2023-08-25 10:35:48'),
(9, '2023-08-25', 9, 2, 1, 4, 500, 2000, 1, '2023-08-25 10:36:21', '2023-08-25 10:36:26'),
(10, '2023-08-30', 10, 1, 2, 1, 500, 500, 1, '2023-08-30 02:39:56', '2023-08-30 02:43:22'),
(11, '2023-08-30', 11, 2, 1, 5, 200, 1000, 1, '2023-08-30 02:46:56', '2023-08-30 02:47:10'),
(12, '2023-08-30', 12, 2, 1, 1, 100, 100, 1, '2023-08-30 03:17:57', '2023-09-01 12:04:10'),
(13, '2023-08-30', 13, 2, 1, 4, 100, 400, 1, '2023-08-30 04:13:26', '2023-08-30 04:16:07'),
(14, '2023-08-30', 14, 1, 2, 5, 200, 1000, 1, '2023-08-30 13:58:11', '2023-09-01 12:04:04'),
(15, '2023-09-01', 15, 2, 1, 2, 200, 400, 1, '2023-09-01 12:02:34', '2023-09-01 12:03:57'),
(16, '2023-09-01', 16, 1, 2, 6, 500, 3000, 1, '2023-09-01 12:03:07', '2023-09-01 12:03:52'),
(18, '2023-09-02', 18, 3, 8, 5, 500, 2500, 1, '2023-09-02 07:49:13', '2023-09-02 07:49:19'),
(19, '2023-09-02', 19, 2, 1, 10, 200, 2000, 1, '2023-09-02 13:12:26', '2023-09-02 13:12:33'),
(20, '2023-09-04', 20, 2, 1, 15, 200, 3000, 1, '2023-09-04 13:24:33', '2023-09-04 13:25:27'),
(21, '2023-09-04', 21, 2, 1, 10, 50, 500, 1, '2023-09-04 13:47:22', '2023-09-07 02:38:28'),
(22, '2023-09-07', 22, 1, 2, 10, 320, 3200, 1, '2023-09-06 22:40:59', '2023-09-07 02:38:21'),
(23, '2023-09-07', 23, 2, 1, 5, 200, 1000, 0, '2023-09-07 03:00:22', '2023-09-07 03:00:22'),
(24, '2024-06-26', 24, 2, 1, 2, 150, 300, 0, '2024-06-26 04:30:21', '2024-06-26 04:30:21');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 1),
(6, '2022_04_16_181230_create_customers_table', 1),
(7, '2022_04_16_202829_create_units_table', 1),
(8, '2022_04_17_055455_create_categories_table', 1),
(9, '2022_04_17_194251_create_products_table', 1),
(10, '2022_04_18_184636_create_purchases_table', 1),
(11, '2022_04_23_204340_create_invoices_table', 1),
(12, '2022_04_23_204653_create_invoice_details_table', 1),
(13, '2022_04_23_204725_create_payments_table', 1),
(14, '2022_04_23_204757_create_payment_details_table', 1),
(15, '2023_09_26_165544_create_taxes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `tax`, `created_at`, `updated_at`) VALUES
(8, 8, 1, 'full_paid', 2500, 0, 2500, NULL, NULL, '2023-08-25 10:35:35', '2023-08-25 10:35:35'),
(9, 9, 3, 'full_paid', 1900, 0, 1900, 100, NULL, '2023-08-25 10:36:21', '2023-08-25 10:40:24'),
(10, 10, 1, 'full_paid', 500, 0, 500, NULL, NULL, '2023-08-30 02:39:56', '2023-08-30 02:39:56'),
(11, 11, 1, 'partial_paid', 500, 500, 1000, NULL, NULL, '2023-08-30 02:46:56', '2023-08-30 02:46:56'),
(12, 12, 3, 'full_paid', 100, 0, 100, NULL, NULL, '2023-08-30 03:17:57', '2023-08-30 03:17:57'),
(13, 13, 5, 'full_paid', 400, 0, 400, NULL, NULL, '2023-08-30 04:13:26', '2023-08-30 04:13:26'),
(14, 14, 2, 'full_paid', 1000, 0, 1000, NULL, NULL, '2023-08-30 13:58:11', '2023-08-30 13:58:11'),
(15, 15, 6, 'partial_paid', 200, 200, 400, NULL, NULL, '2023-09-01 12:02:34', '2023-09-01 12:02:34'),
(16, 16, 4, 'full_paid', 3000, 0, 3000, NULL, NULL, '2023-09-01 12:03:07', '2023-09-01 12:06:46'),
(18, 18, 4, 'full_paid', 2500, 0, 2500, NULL, NULL, '2023-09-02 07:49:13', '2023-09-02 13:10:11'),
(19, 19, 3, 'partial_paid', 1000, 1000, 2000, NULL, NULL, '2023-09-02 13:12:26', '2023-09-03 03:43:43'),
(20, 20, 2, 'full_paid', 2600, 0, 2600, 400, NULL, '2023-09-04 13:24:33', '2023-09-04 13:24:33'),
(21, 21, 1, 'full_paid', 495, 0, 495, 50, NULL, '2023-09-04 13:47:22', '2023-09-04 13:47:22'),
(22, 22, 3, 'full_paid', 3300, 0, 3300, 200, 10, '2023-09-06 22:40:59', '2023-09-06 22:40:59'),
(23, 23, 1, 'full_paid', 1000, 0, 1000, NULL, NULL, '2023-09-07 03:00:22', '2023-09-07 03:00:22'),
(24, 24, 7, 'full_paid', 275, 0, 275, 50, 10, '2024-06-26 04:30:21', '2024-06-26 04:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 8, 2500, '2023-08-25', NULL, '2023-08-25 10:35:35', '2023-08-25 10:35:35'),
(9, 9, 500, '2023-08-25', NULL, '2023-08-25 10:36:21', '2023-08-25 10:36:21'),
(10, 9, 1000, '2023-08-25', 1, '2023-08-25 10:39:27', '2023-08-25 10:39:27'),
(11, 9, 400, '2023-08-25', 1, '2023-08-25 10:40:24', '2023-08-25 10:40:24'),
(12, 10, NULL, '2023-08-30', NULL, '2023-08-30 02:39:56', '2023-08-30 02:39:56'),
(13, 11, 500, '2023-08-30', NULL, '2023-08-30 02:46:56', '2023-08-30 02:46:56'),
(14, 12, NULL, '2023-08-30', NULL, '2023-08-30 03:17:57', '2023-08-30 03:17:57'),
(15, 13, 400, '2023-08-30', NULL, '2023-08-30 04:13:26', '2023-08-30 04:13:26'),
(16, 14, 1000, '2023-08-30', NULL, '2023-08-30 13:58:11', '2023-08-30 13:58:11'),
(17, 15, 200, '2023-09-01', NULL, '2023-09-01 12:02:34', '2023-09-01 12:02:34'),
(18, 16, 1500, '2023-09-01', NULL, '2023-09-01 12:03:07', '2023-09-01 12:03:07'),
(19, 16, 500, '2023-09-01', 1, '2023-09-01 12:06:14', '2023-09-01 12:06:14'),
(20, 16, 1000, '2023-09-01', 1, '2023-09-01 12:06:46', '2023-09-01 12:06:46'),
(22, 18, 500, '2023-09-02', NULL, '2023-09-02 07:49:13', '2023-09-02 07:49:13'),
(23, 18, 1000, '2023-09-02', 1, '2023-09-02 07:52:34', '2023-09-02 07:52:34'),
(24, 18, 1000, '2023-09-03', 1, '2023-09-02 13:10:12', '2023-09-02 13:10:12'),
(25, 19, 0, '2023-09-02', NULL, '2023-09-02 13:12:26', '2023-09-02 13:12:26'),
(26, 19, 1000, '2023-09-03', 1, '2023-09-03 03:43:43', '2023-09-03 03:43:43'),
(27, 20, 2600, '2023-09-04', NULL, '2023-09-04 13:24:33', '2023-09-04 13:24:33'),
(28, 21, 495, '2023-09-04', NULL, '2023-09-04 13:47:22', '2023-09-04 13:47:22'),
(29, 22, 3300, '2023-09-07', NULL, '2023-09-06 22:40:59', '2023-09-06 22:40:59'),
(30, 23, 1000, '2023-09-07', NULL, '2023-09-07 03:00:22', '2023-09-07 03:00:22'),
(31, 24, 275, '2024-06-26', NULL, '2024-06-26 04:30:21', '2024-06-26 04:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 'Acid', 25, 1, 1, NULL, '2023-08-25 09:55:46', '2023-09-07 02:38:28'),
(2, 1, 1, 1, 'borik powder', 211, 1, 1, NULL, '2023-08-30 02:36:45', '2024-06-26 04:29:17'),
(3, 1, 2, 2, 'ded', 0, 1, 1, NULL, '2023-09-02 03:33:42', NULL),
(4, 2, 1, 2, 'grfg', 0, 1, 1, NULL, '2023-09-02 07:07:33', NULL),
(5, 2, 2, 1, 'grfg', 0, 1, 1, NULL, '2023-09-02 07:08:03', NULL),
(6, 2, 3, 1, 'Test product', 0, 1, 1, NULL, '2023-09-02 07:09:10', NULL),
(7, 3, 3, 2, 'ddd', 0, 1, 1, 1, '2023-09-02 07:10:27', '2023-09-02 07:17:41'),
(8, 7, 1, 3, 'Example', 45, 1, 1, NULL, '2023-09-02 07:26:14', '2023-09-02 07:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '1', '2023-08-25', 'testing', 50, 500, 25000, 1, 1, NULL, '2023-08-25 09:58:15', '2023-08-25 09:59:18'),
(2, 1, 1, 2, '3', '2023-08-30', NULL, 50, 600, 30000, 1, 1, NULL, '2023-08-30 02:42:46', '2023-08-30 02:43:05'),
(3, 1, 1, 2, '55', '2023-08-30', NULL, 80, 600, 48000, 1, 1, NULL, '2023-08-30 04:20:46', '2023-08-30 04:20:58'),
(4, 1, 1, 2, '112', '2023-08-30', NULL, 50, 400, 20000, 1, 1, NULL, '2023-08-30 13:56:57', '2023-08-30 13:57:08'),
(5, 1, 1, 2, '111', '2023-09-01', NULL, 50, 200, 10000, 1, 1, NULL, '2023-09-01 11:36:11', '2023-09-01 11:37:19'),
(6, 1, 2, 1, '112', '2023-09-01', NULL, 25, 300, 7500, 1, 1, NULL, '2023-09-01 11:36:11', '2023-09-01 11:37:00'),
(7, 1, 2, 1, 'P2977', '2023-09-02', NULL, 3, 300, 900, 1, 1, NULL, '2023-09-01 13:36:43', '2023-09-02 02:40:56'),
(8, 1, 1, 2, 'P6708', '2023-09-01', NULL, 3, 300, 900, 0, 1, NULL, '2023-09-01 13:52:04', '2023-09-01 13:52:04'),
(9, 1, 2, 1, 'P6708', '2023-09-01', NULL, 1, 100, 100, 0, 1, NULL, '2023-09-01 13:52:04', '2023-09-01 13:52:04'),
(11, 1, 2, 1, 'P46710', '2023-09-01', NULL, 2, 200, 400, 1, 1, NULL, '2023-09-01 13:54:03', '2023-09-02 02:41:20'),
(12, 1, 1, 2, '223', '2023-09-01', NULL, 1, 100, 100, 1, 1, NULL, '2023-09-01 13:58:19', '2023-09-02 02:41:44'),
(13, 1, 2, 1, '223', '2023-09-01', NULL, 1, 100, 100, 1, 1, NULL, '2023-09-01 13:58:19', '2023-09-02 02:41:07'),
(14, 1, 1, 5, 'P58114', '2023-09-02', NULL, 5, 522, 2610, 0, 1, NULL, '2023-09-02 07:36:47', '2023-09-02 07:36:47'),
(15, 7, 3, 8, 'P62315', '2023-09-02', NULL, 50, 150, 7500, 1, 1, NULL, '2023-09-02 07:39:51', '2023-09-02 07:40:02'),
(16, 1, 1, 2, 'P27716', '2024-06-26', NULL, 2, 200, 400, 1, 1, NULL, '2024-06-26 04:29:00', '2024-06-26 04:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Demo Supplier', '9876543210', 'demosup@gmail.com', 'Belagavi', 1, 1, 1, '2023-08-25 09:52:01', '2023-08-25 09:52:21'),
(2, 'tt', '0748357385', 'tt@gmail.com', 'H no 851/2 aacharya galli shahapur belagavi', 1, 1, NULL, '2023-08-31 12:55:06', NULL),
(3, 'fefdfd', '0123659', 'rrt@gmail.com', 'H trtrno 851/2 aacharya galli shahapur belagavi', 1, 1, NULL, '2023-08-31 12:55:29', NULL),
(6, 'supplier', '8880502233', 'sup@gmail.com', 'sup address', 1, 1, 1, '2023-09-01 11:04:39', '2023-09-02 02:23:26'),
(7, 'example', '5455555555', 'example@ex.com', 'example address', 1, 1, NULL, '2023-09-02 07:24:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax`, `status`, `created_at`, `updated_at`) VALUES
(15, 14, '0', '2023-09-26 12:06:48', '2023-09-26 12:06:48'),
(16, 8, '1', '2023-09-26 12:06:54', '2023-09-26 12:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KG', 1, 1, NULL, '2023-08-25 09:53:31', NULL),
(2, 'PCS', 1, 1, NULL, '2023-08-25 09:53:39', NULL),
(3, 'LTR', 1, 1, NULL, '2023-08-25 09:53:46', NULL),
(4, 'GM', 1, 1, NULL, '2023-08-25 09:53:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mounesh', 'mouneshp11@gmail.com', 'mounesh', NULL, '$2y$10$kNguvXpKF06iKAOWoeh2x.Q7Iv.k9yhET4lj7lc1zE8K2DB95Fo1u', NULL, '2023-08-24 12:22:57', '2023-08-24 12:22:57'),
(2, 'demo', 'demo@gmail.com', 'demo', NULL, '$2y$10$ruCkhbrgoO01yDIk3n61WOQMlYmdhphw2.vkJp0PdgzG9AnKLTGOy', NULL, '2024-01-15 09:08:30', '2024-01-15 09:08:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
