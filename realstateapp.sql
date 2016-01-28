-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2016 at 06:31 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realstateapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `propertyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `propertyId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'arK1vwd_700b_v2.jpg', 5, 1, '2016-01-26 14:26:20', '2016-01-26 14:26:20'),
(2, 'forktocat.jpg', 5, 1, '2016-01-26 14:26:20', '2016-01-26 14:26:20'),
(3, '56a712c7446d112063397_1628385604106042_8033998073195977041_n.jpg', 6, 1, '2016-01-26 14:31:35', '2016-01-26 14:31:35'),
(4, '56a712c74a25econtib.jpg', 6, 1, '2016-01-26 14:31:35', '2016-01-26 14:31:35'),
(5, '56a7914f8aff7-forktocat.jpg', 7, 1, '2016-01-26 23:31:27', '2016-01-26 23:31:27'),
(6, '56a791f0514cf-contib.jpg', 8, 1, '2016-01-26 23:34:08', '2016-01-26 23:34:08'),
(7, '56a7926cce787-forktocat.jpg', 9, 1, '2016-01-26 23:36:12', '2016-01-26 23:36:12'),
(8, '56a79300e64ff-forktocat.jpg', 10, 1, '2016-01-26 23:38:40', '2016-01-26 23:38:40'),
(9, '56a7a5db8ce7c-xxxxxx.jpg', 25, 1, '2016-01-27 00:59:07', '2016-01-27 00:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_17_054029_create_properties_table', 2),
('2015_11_17_054029_create_images_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `status` enum('open','close') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `location`, `userId`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Property', 'Location', 1, 'open', '2016-01-26 12:57:54', '2016-01-26 12:57:54'),
(3, 'First Property 1', 'Cebu city 1', 1, 'open', '2016-01-26 14:20:32', '2016-01-26 14:20:32'),
(4, 'First Property 1', 'Cebu city 1', 1, 'open', '2016-01-26 14:25:31', '2016-01-26 14:25:31'),
(5, 'First Property 1', 'Cebu city 1', 1, 'open', '2016-01-26 14:26:20', '2016-01-26 14:26:20'),
(6, 'House and Lot', 'Abucayan, Balamban, Cebu', 1, 'open', '2016-01-26 14:31:35', '2016-01-26 14:31:35'),
(7, 'Skateboard', 'America', 1, 'open', '2016-01-26 23:31:27', '2016-01-26 23:31:27'),
(8, 'A lot Like Las Vegas', 'Las Vegas Nevada Canada California', 1, 'open', '2016-01-26 23:34:08', '2016-01-26 23:34:08'),
(9, 'Shihtzu', 'Abu Dabi Dubai', 1, 'open', '2016-01-26 23:36:12', '2016-01-26 23:36:12'),
(13, 'dsff', 'sdf', 1, 'open', '2016-01-27 00:22:19', '2016-01-27 00:22:19'),
(14, 'dsff', 'sdf', 1, 'open', '2016-01-27 00:22:48', '2016-01-27 00:22:48'),
(16, 'asd', 'asd', 1, 'open', '2016-01-27 00:24:38', '2016-01-27 00:24:38'),
(17, 'asdfsaf', 'sdfsdf', 1, 'open', '2016-01-27 00:24:28', '2016-01-27 00:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ralph A. De los Reyes', 'rapthurz@yahoo.com', '$2y$10$BKC6allAQ6GsWC0lYfyx2u9hUpc2cW3lKTHR7g2STbJq4b2bA/QEu', 'RVqo0y04KlcpI0iSrS3s9UYboAPQg0OfM73hFqtBauKb2M21IfxhSHTtwVFQ', '2016-01-26 10:20:15', '2016-01-26 11:51:35'),
(2, 'Rexon De los Reyes', 'rexon@gmail.com', '$2y$10$I.ZHTa5F0daqMkQAyJtGFOChXGRaTh68mHEClJ6QEdnKvPQ3Kkhye', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(3, 'John Doe', 'john@gmail.com', '$2y$10$DdS3iRMicwQCkViHrx42ce2NDZJpLKh/JJwg8KiG3AvJoRbmQq/CO', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(4, 'Jane Smith', 'jane@gmail.com', '$2y$10$JtBrt5KOnRm8fgO38Xc/Eeb1qsPzMJiW.IHl.fr4bbcvBQjcHrn2K', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(5, 'Robert Martin', 'unclebob@gmail.com', '$2y$10$waHKQAw/zXeyhLLCK883kuatX2UwK808JKY.xtPjlQpRMK2cQUMGu', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(6, 'Jeffrey Way', 'jeffway@laracast.com', '$2y$10$VCZAAayf8/GlU8tQ4ohoaOlQG4h1DZYBkBFPHIu7ouPkkv.6BORaO', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(7, 'Ryan Chenkie', 'ryanchenkie@gmail.com', '$2y$10$hb9wLboqEIqqwOTh8E4AhulxBfItZN0Y68RIzdUMWabK5LdQz6t8G', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(8, 'Chris Sevilleja', 'chris@scotch.io', '$2y$10$dnyWKTopace8nw285ExeYeyOth/Hb7Zuu7RuOEXXsU53UFKXPtTcq', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(9, 'Holly Lloyd', 'holly@scotch.io', '$2y$10$78Fk7cD9CSwtrBc2APSyEua8BVnMhFHwNplla0SBU5I3VIU8wIS7S', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08'),
(10, 'Adnan Kukic', 'adnan@scotch.io', '$2y$10$eE9RpiCvdWmSVPJIdf76kOV4HBIDXuu1FV.EtrWO1RLEdB0bhNHuG', NULL, '2016-01-27 01:30:08', '2016-01-27 01:30:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
