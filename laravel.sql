-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 11:12 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(128) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `slug`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'تاریخی', NULL, 'historical', 'fa fa-university', NULL, NULL),
(2, 'طنز', NULL, 'fun', 'fa fa-smile-o', NULL, NULL),
(3, 'سینما', NULL, 'cinema', 'fa fa-film', NULL, NULL),
(4, 'ترسناک', NULL, 'horerr', 'fa fa-hashtag', NULL, NULL),
(5, 'تکنولوژی', NULL, 'tech', 'fa fa-laptop', NULL, NULL);

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_20_163008_creat_videos-table', 1),
(7, '2023_03_20_163310_add_slug_to_table', 1),
(8, '2023_03_20_163751_add_description_to_table', 1),
(9, '2023_03_21_121726_add_thumbnail_to-video', 1),
(10, '2023_03_30_111709_create_category_table', 1),
(11, '2023_03_30_115243_add_category_to_video', 1),
(12, '2023_04_02_172148_add_user_to_video', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(200) UNSIGNED NOT NULL,
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
(1, 'هانیه شهنوازی', 'shahnavazihaniye@gmail.com', NULL, '$2y$10$beFAK/22nAY/ca09zCiUHOY2VOhYPl5BrXTcEpYPia3J1WIDCTmTe', NULL, '2023-04-03 12:10:48', '2023-04-03 12:10:48'),
(3, 'مهرداد سامی', 'mehrdadsami@gmail.com', NULL, '$2y$10$mjHK1FafpXPOhLxrsEG4kuvPKE/70tyMTJ/srf1X0mS9tNCTcIlIa', NULL, '2023-04-04 04:12:50', '2023-04-04 04:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `length` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(200) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `url`, `length`, `created_at`, `updated_at`, `slug`, `description`, `thumbnail`, `category_id`, `user_id`) VALUES
(7, 'فیلم تاریخی', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 969, '2023-04-03 12:37:56', '2023-04-03 12:37:56', 'historical543', ' مستندی از تاریخ ایران', 'https://www.eligasht.com/Blog/wp-content/uploads/2017/03/jamshid.jpg', 1, 1),
(8, 'فیلم خنده دار143', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 519, '2023-04-03 12:49:57', '2023-04-03 12:49:57', 'fun734', ' فیلم کمدی', 'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg', 2, 1),
(9, 'فیلم خنده دار75', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 742, '2023-04-03 12:49:57', '2023-04-03 12:49:57', 'fun159', ' فیلم کمدی', 'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg', 2, 1),
(10, 'فیلم خنده دار49', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 923, '2023-04-03 12:49:57', '2023-04-03 12:49:57', 'fun344', ' فیلم کمدی', 'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg', 2, 1),
(11, 'فیلم خنده دار16', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 705, '2023-04-03 12:49:57', '2023-04-03 12:49:57', 'fun154', ' فیلم کمدی', 'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg', 2, 1),
(12, 'فیلم خنده دار107', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 478, '2023-04-03 12:49:57', '2023-04-03 12:49:57', 'fun268', ' فیلم کمدی', 'https://didifilm.com/wp-content/uploads/2023/01/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D9%81%DB%8C%D9%84%D9%85-%D8%B3%DB%8C%D9%86%D9%85%D8%A7%DB%8C%DB%8C-%D8%A7%D9%86%D9%81%D8%B1%D8%A7%D8%AF%DB%8C-1401.jpg', 2, 1),
(13, 'lost', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 500, '2023-04-03 12:57:25', '2023-04-03 12:57:25', 'new-slug', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIW3AiJyJ1Q6usG_c-MEK5Z9jyE6H0VD1k7w&usqp=CAU', 3, 0),
(14, 'هانیه شهنوازی', 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4', 500, '2023-04-03 13:24:45', '2023-04-03 13:24:45', 'dubi', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIW3AiJyJ1Q6usG_c-MEK5Z9jyE6H0VD1k7w&usqp=CAU', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_id_unique` (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_slug_unique` (`slug`),
  ADD KEY `videos_category_id_foreign` (`category_id`),
  ADD KEY `videos_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
