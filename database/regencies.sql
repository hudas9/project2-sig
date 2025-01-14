-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2025 at 06:06 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2-sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `population` bigint NOT NULL DEFAULT '0',
  `area_km2` double NOT NULL DEFAULT '0',
  `population_density` double NOT NULL DEFAULT '0',
  `high_school_count` double NOT NULL DEFAULT '0',
  `unemployment_rate` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `name`, `alt_name`, `latitude`, `longitude`, `population`, `area_km2`, `population_density`, `high_school_count`, `unemployment_rate`, `created_at`, `updated_at`) VALUES
(7301, 'KABUPATEN KEPULAUAN SELAYAR', 'KABUPATEN KEPULAUAN SELAYAR', -6.81667, 120.8, 142700, 1160.36, 0.123, 11, 2.05, NULL, NULL),
(7302, 'KABUPATEN BULUKUMBA', 'KABUPATEN BULUKUMBA', -5.41667, 120.23333, 454720, 1175.53, 0.387, 20, 2.23, NULL, NULL),
(7303, 'KABUPATEN BANTAENG', 'KABUPATEN BANTAENG', -5.48333, 119.98333, 205420, 390.97, 0.525, 7, 2.57, NULL, NULL),
(7304, 'KABUPATEN JENEPONTO', 'KABUPATEN JENEPONTO', -5.63333, 119.73333, 418970, 796, 0.526, 24, 2.47, NULL, NULL),
(7305, 'KABUPATEN TAKALAR', 'KABUPATEN TAKALAR', -5.41667, 119.51667, 317020, 555.43, 0.571, 25, 3.84, NULL, NULL),
(7306, 'KABUPATEN GOWA', 'KABUPATEN GOWA', -5.31667, 119.75, 814040, 1813, 0.449, 50, 3.91, NULL, NULL),
(7307, 'KABUPATEN SINJAI', 'KABUPATEN SINJAI', -5.21667, 120.15, 270430, 865.24, 0.313, 17, 1.52, NULL, NULL),
(7308, 'KABUPATEN MAROS', 'KABUPATEN MAROS', -5.05, 119.71667, 413590, 1442.95, 0.287, 34, 4.34, NULL, NULL),
(7309, 'KABUPATEN PANGKAJENE DAN KEPULAUAN', 'KABUPATEN PANGKAJENE DAN KEPULAUAN', -4.7827, 119.5506, 359160, 888.91, 0.404, 33, 3.99, NULL, NULL),
(7310, 'KABUPATEN BARRU', 'KABUPATEN BARRU', -4.43333, 119.68333, 189210, 1201.9, 0.157, 8, 6.42, NULL, NULL),
(7311, 'KABUPATEN BONE', 'KABUPATEN BONE', -4.7, 120.13333, 830120, 4567.36, 0.182, 38, 2.28, NULL, NULL),
(7312, 'KABUPATEN SOPPENG', 'KABUPATEN SOPPENG', -4.3842, 119.89, 239360, 1385.55, 0.173, 12, 3.33, NULL, NULL),
(7313, 'KABUPATEN WAJO', 'KABUPATEN WAJO', -4, 120.16667, 389050, 2608.71, 0.149, 19, 2.31, NULL, NULL),
(7314, 'KABUPATEN SIDENRENG RAPPANG', 'KABUPATEN SIDENRENG RAPPANG', -3.85, 119.96667, 330740, 1832.3, 0.181, 16, 3.02, NULL, NULL),
(7315, 'KABUPATEN PINRANG', 'KABUPATEN PINRANG', -3.61667, 119.6, 424650, 1896.58, 0.224, 14, 3.12, NULL, NULL),
(7316, 'KABUPATEN ENREKANG', 'KABUPATEN ENREKANG', -3.5, 119.86667, 238100, 1806.85, 0.132, 18, 1.51, NULL, NULL),
(7317, 'KABUPATEN LUWU', 'KABUPATEN LUWU', -2.5577, 121.3242, 384280, 2902.07, 0.132, 25, 4.14, NULL, NULL),
(7318, 'KABUPATEN TANA TORAJA', 'KABUPATEN TANA TORAJA', -3.0024, 119.79655, 292420, 2043.62, 0.143, 18, 3.98, NULL, NULL),
(7322, 'KABUPATEN LUWU UTARA', 'KABUPATEN LUWU UTARA', -2.6, 120.25, 337660, 7422.42, 0.045, 19, 2.39, NULL, NULL),
(7325, 'KABUPATEN LUWU TIMUR', 'KABUPATEN LUWU TIMUR', -2.50957, 120.3978, 312730, 6745.92, 0.046, 21, 4.58, NULL, NULL),
(7326, 'KABUPATEN TORAJA UTARA', 'KABUPATEN TORAJA UTARA', -2.92738, 119.79218, 277790, 1289.13, 0.215, 17, 2.44, NULL, NULL),
(7371, 'KOTA MAKASSAR', 'KOTA MAKASSAR', -5.15, 119.45, 1464640, 176.85, 8.282, 137, 9.71, NULL, NULL),
(7372, 'KOTA PARE-PARE', 'KOTA PARE-PARE', -4.03333, 119.65, 160920, 89.67, 1.795, 10, 5.23, NULL, NULL),
(7373, 'KOTA PALOPO', 'KOTA PALOPO', -2.97841, 120.11078, 195670, 273.24, 0.716, 14, 7.64, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regencies`
--
ALTER TABLE `regencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7374;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
