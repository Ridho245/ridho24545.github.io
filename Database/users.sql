-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 08:59 AM
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
-- Database: `posbackup`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `profile_image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(4, 'ridho', 'admin@admin.com', 'Admin', '202404170644IMG_20240329_235456_446[1].jpg', '2023-08-03 02:33:13', '$2y$10$90cYg9f2tgd0tSoQ8KShquMjl5zOiAlPQhOsdjvoLF26UWjvGRwGG', NULL, '2023-08-03 02:25:14', '2024-04-16 23:44:02', 'admin'),
(8, 'user', 'user@gmail.com', 'User', '202309220733man.png', '2023-08-10 01:29:14', '$2y$10$NscgVXMXIDBT7QQmzcJfGujzUbdsLrVn40hXEcbF4IZKeeCAYV5NG', 'kjoiQNRuT62D1yEMN4J4Z8BI57HH9wYZhX012YXRQJBtUchensGGGyCMa0ba', '2023-08-10 01:23:55', '2023-09-22 00:33:52', 'user'),
(10, 'Admin2', 'admin2@gmail.com', 'Admin2', '202309220808user.png', NULL, '$2y$10$HV2jjNzuopcV13snYYcH9.kxBMS6poc8TUWLFkELSEWmEpQo4Cww2', NULL, '2023-09-22 01:08:44', '2023-09-22 01:08:44', 'admin');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
