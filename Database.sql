-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2023 at 08:18 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_14_133312_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'user-token', '0747a136a453a71b74ea02f35b192693da2a6ca6fd265fde6482e9057f9b7c90', '[\"user\"]', NULL, '2023-03-14 03:17:22', '2023-03-14 03:17:22'),
(2, 'App\\Models\\User', 2, 'user-token', '595b132e025ee65caf01e98869c4865e50dde64349999598d4220a64e42b852c', '[\"user\"]', '2023-03-14 11:25:50', '2023-03-14 06:05:52', '2023-03-14 11:25:50'),
(3, 'App\\Models\\User', 3, 'user-token', '30a6bc5a6584657c46efa057efc2945699e3dc585cd622170b6ed583a7efde6e', '[\"user\"]', '2023-03-14 11:38:32', '2023-03-14 11:30:50', '2023-03-14 11:38:32'),
(4, 'App\\Models\\User', 4, 'user-token', '2a0a9ef8ac6a54e430c45e8a6f614a7c8628628517810a0e5615a767b8a84786', '[\"admin\"]', NULL, '2023-03-14 11:36:39', '2023-03-14 11:36:39'),
(14, 'App\\Models\\User', 7, 'user-token', 'ee1f935245e1807352eb345e5a08cc8a0c32a53108aac579e9cd66dbae568fe6', '[\"admin\"]', NULL, '2023-03-15 11:09:57', '2023-03-15 11:09:57'),
(6, 'App\\Models\\User', 4, 'user-token', 'dfb67f59e2307b415ffd1b5f397aa8455f2dc128e2c9ff68fa9185b02d7d9ed6', '[\"admin\"]', NULL, '2023-03-14 22:17:40', '2023-03-14 22:17:40'),
(7, 'App\\Models\\User', 4, 'user-token', 'db0139e94f7a131d2cc16a59765d4eb37fd35babbdfbfb235691f7e52a2109ed', '[\"admin\"]', NULL, '2023-03-15 05:38:00', '2023-03-15 05:38:00'),
(8, 'App\\Models\\User', 4, 'user-token', '00699da12049c902b3ba6520a25ea3d99fd8d7de2cdc74ead6fe71fad2ca3890', '[\"admin\"]', NULL, '2023-03-15 05:38:01', '2023-03-15 05:38:01'),
(9, 'App\\Models\\User', 4, 'user-token', 'b16c1a9adbd8959e37f09047495640c0db902286d824b35d469fed959a24a207', '[\"admin\"]', NULL, '2023-03-15 05:54:17', '2023-03-15 05:54:17'),
(10, 'App\\Models\\User', 5, 'user-token', 'f7f341e03e75e8949b3957317aa52858fe4fe79ad0e28881160a7f1096b97f06', '[\"admin\"]', NULL, '2023-03-15 08:11:59', '2023-03-15 08:11:59'),
(11, 'App\\Models\\User', 4, 'user-token', 'd00daa6cac1c8f34bf389d424b8b23ab59bdeaf49a58f1692fcca45549ee1aae', '[\"admin\"]', NULL, '2023-03-15 10:59:58', '2023-03-15 10:59:58'),
(12, 'App\\Models\\User', 4, 'user-token', 'de9f4c2699d29c6d5a817cafefadfb717a743baf92272098271bfcc7bce4422d', '[\"admin\"]', NULL, '2023-03-15 10:59:59', '2023-03-15 10:59:59'),
(16, 'App\\Models\\User', 7, 'user-token', 'bff843c360bc8c1ec894c164fa11f8839cef615139a1a448f90aa9b61aba48fa', '[\"admin\"]', '2023-03-16 05:36:38', '2023-03-15 11:22:21', '2023-03-16 05:36:38'),
(17, 'App\\Models\\User', 7, 'user-token', '51c38a67b8ffb994b351d36fdc1bd0deea0ded6ea61b3c6112b9133f75ed2a12', '[\"admin\"]', '2023-03-15 14:14:30', '2023-03-15 12:52:36', '2023-03-15 14:14:30'),
(18, 'App\\Models\\User', 9, 'user-token', 'eb4a0daefccf02731b10a9f6e0f2a4354aead6d4c5c80682a459e778b0b4e029', '[\"admin\"]', NULL, '2023-03-16 00:42:30', '2023-03-16 00:42:30'),
(19, 'App\\Models\\User', 8, 'user-token', 'e14561593ed1dfbca303d410159f24a92e88008b53332a133eb2f8b766299713', '[\"admin\"]', NULL, '2023-03-16 05:00:45', '2023-03-16 05:00:45'),
(20, 'App\\Models\\User', 8, 'user-token', '442bbfb6e8ca49ac4e3ffd5f8adebb272e8a2518a4eebf3342237d0af0985d3f', '[\"admin\"]', NULL, '2023-03-16 05:04:57', '2023-03-16 05:04:57'),
(21, 'App\\Models\\User', 8, 'user-token', '8621f55ba5e9b79e125ddfe2cfabc61b454eb0154badd9755a4d4e4e9d1afbaf', '[\"admin\"]', NULL, '2023-03-16 05:12:21', '2023-03-16 05:12:21'),
(22, 'App\\Models\\User', 8, 'user-token', '64d7f2c3d2b4d34e6d31062b5db1c0ec6660cbe0d9c099018bb0122212540cca', '[\"admin\"]', NULL, '2023-03-16 05:13:33', '2023-03-16 05:13:33'),
(24, 'App\\Models\\User', 10, 'user-token', '45b40aa7666193f89e8bcc639b56951b73c718186f7669bcad9dd989fc67ac76', '[\"admin\"]', '2023-03-16 06:30:00', '2023-03-16 06:02:10', '2023-03-16 06:30:00'),
(25, 'App\\Models\\User', 11, 'user-token', '1a12814212bdf6ddd5188f8fddd1bdf3d30ecb047040e4e936af5fa67a5b264c', '[\"admin\"]', NULL, '2023-03-16 06:27:51', '2023-03-16 06:27:51'),
(26, 'App\\Models\\User', 11, 'user-token', '3e2ce6984decce38168b50f0429e7e96d06f625a8283dc55f4a3f51d78b6e9ef', '[\"admin\"]', '2023-03-16 06:38:06', '2023-03-16 06:27:51', '2023-03-16 06:38:06'),
(27, 'App\\Models\\User', 11, 'user-token', '1f5d27cbc0b4bd517d4a4fbdf0aa967afa19e264561218ad28d0ae5b8c0d2ce0', '[\"admin\"]', '2023-03-16 06:38:36', '2023-03-16 06:38:35', '2023-03-16 06:38:36'),
(28, 'App\\Models\\User', 11, 'user-token', '169c312a5a579e7d42064c9afdcf214c49b04d47cb588a5abedb6a4e7fa78d34', '[\"admin\"]', '2023-03-16 06:48:54', '2023-03-16 06:44:49', '2023-03-16 06:48:54'),
(29, 'App\\Models\\User', 12, 'user-token', '6b629fd0d65ce3f8a8e02405c176196300b2607d790233dbecf4994e33c86f0a', '[\"admin\"]', '2023-03-16 23:31:30', '2023-03-16 22:59:11', '2023-03-16 23:31:30'),
(30, 'App\\Models\\User', 12, 'user-token', '4e73854f5893a3027e47bcb80c7d85f6018c75afac558bb810ddabbe4381da39', '[\"admin\"]', '2023-03-17 01:22:12', '2023-03-16 23:43:54', '2023-03-17 01:22:12'),
(31, 'App\\Models\\User', 13, 'user-token', '706c7227630dcfa1a7a3a9f7dcbc7460854a6846c7a8dae7affa364d059f1f69', '[\"admin\"]', '2023-03-17 01:48:44', '2023-03-17 01:48:18', '2023-03-17 01:48:44'),
(32, 'App\\Models\\User', 13, 'user-token', '7551300074c9001424a455187f10c975eaa2a62b63bf57f4c021edf37d3d9632', '[\"admin\"]', '2023-03-17 02:22:27', '2023-03-17 01:48:49', '2023-03-17 02:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodctCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `prodctCategory`, `quantity`, `unitPrice`, `description`, `model`, `imageUrl`, `colour`, `cartStatus`, `updated_at`, `created_at`) VALUES
(1, 'sdf', 'dw', 8, '194000.00', '* Fe Asus Backpack & Wired Optical Mouse Free Rs. 3000/- Cargills Gift Voucher *', '67', 'https://www.laptop.lk/wp-content/uploads/2022/10/Asus-M515DA-%E2%80%93-EJ1039T-R3.jpg', 'black', 'false', '2023-03-14', '2023-03-12'),
(2, 'sdf', 'dw', 8, '194000.00', '* Fe Asus Backpack & Wired Optical Mouse Free Rs. 3000/- Cargills Gift Voucher *', '67', 'https://www.laptop.lk/wp-content/uploads/2022/10/Asus-M515DA-%E2%80%93-EJ1039T-R3.jpg', 'black', 'false', '2023-03-14', '2023-03-14'),
(3, 'sdf', 'dw', 8, '194000.00', '* Fe Asus Backpack & Wired Optical Mouse Free Rs. 3000/- Cargills Gift Voucher *', '67', 'https://www.laptop.lk/wp-content/uploads/2022/10/Asus-M515DA-%E2%80%93-EJ1039T-R3.jpg', 'black', 'false', '2023-03-14', '2023-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'uvindu', 'uvi@gmail.com', NULL, '$2y$10$3oH0N9LhDd2Uf3lTjPlm9eqh1U9ubbGu3Uh0IOrbaYue2wTDEfgSa', '\"admin\"', NULL, '2023-03-16 06:27:40', '2023-03-17 01:18:26'),
(13, 'kasun', 'kasun@gmail.com', NULL, '$2y$10$7NMACJQ4mZWsmo0r4Nt3b..AJJ36CYZ7V6DD4dZrnk28e.8DACvWq', '[\"admin\"]', NULL, '2023-03-17 01:48:03', '2023-03-17 01:48:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
