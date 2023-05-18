-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 07:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `birth`, `gender`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Prof. Eliza Mertz I', 'raynor.queenie@example.com', 1958, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 1),
(2, 'Mrs. Ivy Gutmann', 'beaulah20@example.org', 1984, 'male', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 1),
(3, 'Mrs. Rosa Hagenes I', 'camilla.herman@example.org', 1976, 'male', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 1),
(4, 'Felipe Schaden', 'anjali08@example.org', 1977, 'male', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 2),
(5, 'Christiana Leuschke', 'jammie.raynor@example.com', 1954, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 2),
(6, 'Velva Bruen I', 'lmarvin@example.org', 2001, 'male', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 2),
(7, 'Mr. Terrance Mueller Jr.', 'damon.crist@example.net', 2005, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 3),
(8, 'Keegan Lind', 'sandy55@example.com', 1931, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 3),
(9, 'Devon Nitzsche', 'kbailey@example.org', 1987, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 3),
(10, 'Edd Leuschke II', 'swaniawski.joyce@example.net', 1980, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 4),
(11, 'Keyon Schumm', 'parker.rickey@example.net', 1958, 'female', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 4),
(12, 'Elna Luettgen', 'wisozk.raphaelle@example.com', 1944, 'male', '2023-05-18 14:39:28', '2023-05-18 14:39:28', 4),
(13, 'Charley Mann', 'taya.kuvalis@example.net', 1933, 'female', '2023-05-18 14:39:29', '2023-05-18 14:39:29', 5),
(14, 'Aron Gottlieb', 'nreynolds@example.net', 1966, 'female', '2023-05-18 14:39:29', '2023-05-18 14:39:29', 5),
(15, 'Dr. Georgette Bosco DVM', 'enoch.nitzsche@example.org', 1945, 'female', '2023-05-18 14:39:29', '2023-05-18 14:39:29', 5),
(16, 'Test customer', 'testcustomer@gmail.com', 1999, 'male', '2023-05-18 15:00:29', '2023-05-18 15:00:29', 6);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_18_163023_create_customers_table', 1),
(6, '2023_05_18_163237_create_orders_table', 1),
(7, '2023_05_18_163327_create_products_table', 1),
(8, '2023_05_18_163648_add_user_id_to_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, '61411 Bergstrom Vista Apt. 621\nPort Abbeyport, ME 50260-1653', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(2, 1, '625 Hugh Station\nJacobsfort, WY 10211-3658', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(3, 1, '388 Ezekiel Ridge Suite 848\nWymanstad, VA 89964', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(4, 2, '575 Rosemary Mountains\nPort Cordelia, KS 82097', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(5, 2, '6793 Reilly Light\nLuellaview, WV 71336-8430', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(6, 2, '269 Dasia Keys\nPort Martineberg, PA 60219-3404', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(7, 3, '980 Mohamed Fields\nWest Derekview, AK 65926-8883', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(8, 3, '31303 Reid Mount\nLake Kenny, NJ 16370', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(9, 3, '272 Garrett Spring Suite 413\nWest Antonetteshire, CA 92377', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(10, 4, '82755 Adams Fords Suite 282\nLynchton, CT 12328', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(11, 4, '253 Gleason Locks Apt. 669\nLake Barrett, NE 36333', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(12, 4, '43304 Cruickshank Ranch\nHuelsview, PA 54179', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(13, 5, '46383 Tessie Field Suite 417\nAlliestad, KY 10350-9691', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(14, 5, '267 Kerluke Pass\nSouth Krisberg, IL 27602', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(15, 5, '1074 Aliyah Underpass\nSouth Bryana, AL 03989', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(16, 6, '40135 Huel Mews\nSporershire, DE 32474', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(17, 6, '9604 Miller Fords Suite 086\nBrooketon, UT 65463-4628', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(18, 6, '74220 Breitenberg Mountain Apt. 255\nWest Noblefort, MO 28526', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(19, 7, '8624 Kristy Turnpike Suite 933\nDeronville, NC 70204', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(20, 7, '2757 Destiney Key\nWest Leda, TN 58902', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(21, 7, '4922 Sauer Mountain\nNorth Hollis, VA 48682-1035', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(22, 8, '74579 Swaniawski Knoll Suite 584\nAlbintown, DE 10582-7826', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(23, 8, '643 Erick Loop\nNorth Kaelyn, NM 14069', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(24, 8, '24469 Trantow Overpass\nSkilesbury, NM 34225', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(25, 9, '244 Toy Plaza Apt. 198\nNorth Duane, ND 66729-6264', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(26, 9, '588 Travis Falls\nAmelyfort, VT 68399', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(27, 9, '104 Mueller Valleys\nWest Ocieton, ND 88558', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(28, 10, '8052 Thiel Court Suite 997\nAlbinville, OR 72927-1910', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(29, 10, '11975 Walker Expressway Suite 392\nArvelside, AR 16547', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(30, 10, '57437 Walsh Extensions\nEast Vivianbury, MA 75656-1734', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(31, 11, '8276 Dach Falls\nHaleytown, TN 08511-3539', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(32, 11, '20328 Weissnat Estates Apt. 287\nHoppetown, WV 53615', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(33, 11, '232 Rosella Shoal Apt. 060\nLake Bradleymouth, ME 00458', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(34, 12, '2882 Weber Manor\nSouth Jocelyn, WV 08815', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(35, 12, '36718 Alberto Neck\nEast Novellaburgh, RI 45702-0187', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(36, 12, '768 Stehr Summit Apt. 749\nSchoenton, FL 11675', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(37, 13, '267 Strosin Fort Suite 520\nNorth Micaelastad, OK 65031', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(38, 13, '3887 Rosie Glen\nBennettton, RI 10794-3498', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(39, 13, '8466 Simone Roads Apt. 255\nNew Ada, NJ 92244-1776', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(40, 14, '8080 Joaquin Spring\nSouth Wallaceland, LA 70233', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(41, 14, '358 Brando Mews Suite 876\nFramimouth, CO 83008-1844', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(42, 14, '3446 Jazmin Flats Apt. 520\nDanafort, MI 62016', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(43, 15, '4355 Trystan Hollow Apt. 194\nSouth Norenebury, LA 12759', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(44, 15, '763 Hildegard Lake\nWest Danteville, KY 66487', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(45, 15, '530 Tremblay Spurs Apt. 919\nLake Bertstad, WA 87989', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(46, 1, 'Belgrade', '2023-05-18 15:01:00', '2023-05-18 15:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'auth_token', 'a83659a853a483c2a7633313099d64cbd4c119c168d4384ab8fded2a07fc6c02', '[\"*\"]', NULL, NULL, '2023-05-18 14:55:22', '2023-05-18 14:55:22'),
(2, 'App\\Models\\User', 6, 'auth_token', 'b0beebf29189c960bc4f06a58ba99e24091d79fae8b7e0af0b856d78f84c3cee', '[\"*\"]', '2023-05-18 15:01:23', NULL, '2023-05-18 14:55:34', '2023-05-18 15:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'voluptatem', 107, 1, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(2, 'eaque', 130, 1, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(3, 'laborum', 248, 1, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(4, 'illo', 170, 1, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(5, 'et', 128, 2, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(6, 'incidunt', 87, 2, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(7, 'doloribus', 272, 2, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(8, 'nihil', 155, 2, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(9, 'qui', 224, 3, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(10, 'odit', 235, 3, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(11, 'veniam', 116, 3, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(12, 'odit', 90, 3, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(13, 'nam', 296, 4, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(14, 'molestias', 200, 4, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(15, 'error', 149, 4, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(16, 'nihil', 284, 4, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(17, 'non', 263, 5, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(18, 'nesciunt', 200, 5, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(19, 'ipsum', 287, 5, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(20, 'beatae', 24, 5, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(21, 'at', 291, 6, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(22, 'nisi', 281, 6, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(23, 'debitis', 211, 6, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(24, 'qui', 18, 6, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(25, 'eos', 134, 7, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(26, 'fugit', 87, 7, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(27, 'accusamus', 247, 7, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(28, 'explicabo', 215, 7, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(29, 'iste', 192, 8, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(30, 'soluta', 250, 8, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(31, 'velit', 124, 8, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(32, 'nesciunt', 289, 8, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(33, 'consectetur', 108, 9, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(34, 'quaerat', 206, 9, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(35, 'qui', 22, 9, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(36, 'animi', 188, 9, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(37, 'nesciunt', 172, 10, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(38, 'tempore', 182, 10, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(39, 'optio', 128, 10, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(40, 'quia', 252, 10, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(41, 'eaque', 152, 11, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(42, 'aut', 196, 11, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(43, 'velit', 16, 11, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(44, 'sequi', 114, 11, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(45, 'porro', 263, 12, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(46, 'magnam', 199, 12, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(47, 'aliquam', 129, 12, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(48, 'delectus', 86, 12, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(49, 'quo', 251, 13, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(50, 'et', 74, 13, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(51, 'exercitationem', 53, 13, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(52, 'labore', 185, 13, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(53, 'et', 46, 14, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(54, 'facilis', 137, 14, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(55, 'consequuntur', 209, 14, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(56, 'adipisci', 22, 14, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(57, 'quia', 241, 15, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(58, 'laudantium', 206, 15, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(59, 'sapiente', 166, 15, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(60, 'at', 18, 15, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(61, 'dolores', 244, 16, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(62, 'odit', 54, 16, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(63, 'placeat', 152, 16, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(64, 'et', 269, 16, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(65, 'odio', 72, 17, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(66, 'velit', 90, 17, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(67, 'aspernatur', 287, 17, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(68, 'ut', 168, 17, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(69, 'consequatur', 247, 18, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(70, 'sed', 265, 18, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(71, 'et', 34, 18, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(72, 'est', 50, 18, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(73, 'quas', 130, 19, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(74, 'corporis', 118, 19, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(75, 'ea', 104, 19, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(76, 'quia', 152, 19, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(77, 'dolorum', 277, 20, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(78, 'sed', 217, 20, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(79, 'fugit', 150, 20, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(80, 'et', 292, 20, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(81, 'omnis', 129, 21, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(82, 'voluptatum', 214, 21, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(83, 'similique', 140, 21, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(84, 'quia', 59, 21, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(85, 'qui', 64, 22, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(86, 'exercitationem', 45, 22, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(87, 'enim', 109, 22, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(88, 'eveniet', 20, 22, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(89, 'nostrum', 202, 23, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(90, 'officiis', 210, 23, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(91, 'soluta', 150, 23, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(92, 'assumenda', 147, 23, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(93, 'recusandae', 284, 24, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(94, 'quo', 262, 24, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(95, 'ut', 219, 24, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(96, 'blanditiis', 261, 24, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(97, 'nisi', 260, 25, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(98, 'laborum', 110, 25, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(99, 'possimus', 278, 25, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(100, 'possimus', 292, 25, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(101, 'nesciunt', 53, 26, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(102, 'ut', 99, 26, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(103, 'aut', 67, 26, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(104, 'minus', 275, 26, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(105, 'quibusdam', 293, 27, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(106, 'placeat', 162, 27, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(107, 'quia', 296, 27, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(108, 'ad', 196, 27, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(109, 'perspiciatis', 215, 28, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(110, 'dolores', 33, 28, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(111, 'ut', 244, 28, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(112, 'voluptatum', 236, 28, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(113, 'cupiditate', 265, 29, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(114, 'et', 216, 29, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(115, 'placeat', 33, 29, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(116, 'ullam', 40, 29, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(117, 'impedit', 229, 30, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(118, 'vel', 242, 30, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(119, 'vel', 144, 30, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(120, 'veritatis', 163, 30, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(121, 'et', 134, 31, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(122, 'reiciendis', 191, 31, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(123, 'iure', 73, 31, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(124, 'sequi', 125, 31, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(125, 'facere', 99, 32, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(126, 'corporis', 113, 32, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(127, 'animi', 144, 32, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(128, 'officia', 97, 32, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(129, 'distinctio', 146, 33, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(130, 'nihil', 75, 33, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(131, 'qui', 298, 33, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(132, 'dolorem', 218, 33, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(133, 'molestiae', 70, 34, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(134, 'officiis', 262, 34, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(135, 'ut', 258, 34, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(136, 'iusto', 108, 34, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(137, 'reiciendis', 266, 35, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(138, 'quod', 220, 35, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(139, 'vitae', 225, 35, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(140, 'deserunt', 276, 35, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(141, 'nihil', 251, 36, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(142, 'cum', 255, 36, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(143, 'quos', 98, 36, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(144, 'accusantium', 162, 36, '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(145, 'ea', 221, 37, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(146, 'veniam', 11, 37, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(147, 'cum', 93, 37, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(148, 'ab', 47, 37, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(149, 'est', 144, 38, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(150, 'omnis', 90, 38, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(151, 'laborum', 180, 38, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(152, 'sit', 143, 38, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(153, 'deserunt', 33, 39, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(154, 'pariatur', 225, 39, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(155, 'aspernatur', 90, 39, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(156, 'ut', 120, 39, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(157, 'recusandae', 17, 40, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(158, 'ab', 187, 40, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(159, 'facere', 57, 40, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(160, 'quibusdam', 290, 40, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(161, 'odit', 80, 41, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(162, 'cumque', 88, 41, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(163, 'neque', 257, 41, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(164, 'aspernatur', 263, 41, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(165, 'accusamus', 214, 42, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(166, 'est', 85, 42, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(167, 'culpa', 10, 42, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(168, 'quae', 198, 42, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(169, 'veniam', 105, 43, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(170, 'sapiente', 188, 43, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(171, 'aut', 144, 43, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(172, 'repellat', 51, 43, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(173, 'aut', 202, 44, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(174, 'expedita', 208, 44, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(175, 'repellendus', 154, 44, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(176, 'magni', 29, 44, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(177, 'aliquid', 125, 45, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(178, 'dolorem', 17, 45, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(179, 'corrupti', 81, 45, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(180, 'sit', 235, 45, '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(181, 'Test product', 111, 15, '2023-05-18 15:01:23', '2023-05-18 15:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kathlyn Hoeger', 'marcus.heaney@example.org', '2023-05-18 14:39:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '01SBurinDP', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(2, 'Miss Kristy Shanahan II', 'powlowski.berry@example.com', '2023-05-18 14:39:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6kiVSAimSr', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(3, 'Lea Howell', 'cheyanne59@example.com', '2023-05-18 14:39:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xg7HTdCNEO', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(4, 'Dr. Annabel McGlynn Sr.', 'briana21@example.net', '2023-05-18 14:39:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wbq92iRWFW', '2023-05-18 14:39:28', '2023-05-18 14:39:28'),
(5, 'Dr. Dario Kulas', 'vwalter@example.net', '2023-05-18 14:39:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E65HmLd6dW', '2023-05-18 14:39:29', '2023-05-18 14:39:29'),
(6, 'damir', 'dd20191015@student.fon.bg.ac.rs', NULL, '$2y$10$ObTClDKErVezg9tJTA/sLup5Bvm84qBxQXpT92Z7A.RwBljvhcnDK', NULL, '2023-05-18 14:55:22', '2023-05-18 14:55:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
