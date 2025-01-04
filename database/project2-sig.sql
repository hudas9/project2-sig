-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2025 at 05:52 AM
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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1735969671),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1735969671;', 1735969671);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `regency_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `regency_id`, `name`, `alt_name`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(7301010, 7301, 'PASIMARANNU', 'Pasimarannu, Selayar Regency, South Sulawesi, Indonesia', -7.31497, 120.9991, NULL, NULL),
(7301011, 7301, 'PASILAMBENA', 'Pasilambena, Selayar Regency, South Sulawesi, Indonesia', -7.36811, 121.77653, NULL, NULL),
(7301020, 7301, 'PASIMASSUNGGU', 'Pasimassunggu, Selayar Regency, South Sulawesi, Indonesia', -7.07558, 120.6545, NULL, NULL),
(7301021, 7301, 'TAKABONERATE', 'Takabonerate, Selayar Regency, South Sulawesi, Indonesia', -6.92935, 120.84715, NULL, NULL),
(7301022, 7301, 'PASIMASSUNGGU TIMUR', 'East Pasimassunggu, Selayar Regency, South Sulawesi, Indonesia', -7.08781, 120.74649, NULL, NULL),
(7301030, 7301, 'BONTOSIKUYU', 'Bontosikuyu, Selayar Regency, South Sulawesi, Indonesia', -6.28698, 120.50488, NULL, NULL),
(7301040, 7301, 'BONTOHARU', 'Bontoharu, Selayar Regency, South Sulawesi, Indonesia', -6.13778, 120.50488, NULL, NULL),
(7301041, 7301, 'BENTENG', 'Benteng, Benteng Sel., Benteng, Kabupaten Selayar, Sulawesi Selatan, Indonesia', -6.12258, 120.46554, NULL, NULL),
(7301042, 7301, 'BONTOMANAI', 'Bontomanai, Bontomarannu, Gowa Regency, South Sulawesi, Indonesia', -5.23683, 119.51367, NULL, NULL),
(7301050, 7301, 'BONTOMATENE', 'Bontomatene, Selayar Regency, South Sulawesi, Indonesia', -5.91476, 120.50488, NULL, NULL),
(7301051, 7301, 'BUKI', 'BUKI', 0, 0, NULL, NULL),
(7302010, 7302, 'GANTARANG', 'Gantarang, Bulukumba Regency, South Sulawesi, Indonesia', -5.529, 120.13583, NULL, NULL),
(7302020, 7302, 'UJUNG BULU', 'Ujung Bulu, Bulukumba Regency, South Sulawesi, Indonesia', -5.54854, 120.19934, NULL, NULL),
(7302021, 7302, 'UJUNG LOE', 'Ujung Loe, Bulukumba Regency, South Sulawesi, Indonesia', -5.4844, 120.27435, NULL, NULL),
(7302030, 7302, 'BONTO BAHARI', 'Bonto Bahari, Bulukumba Regency, South Sulawesi, Indonesia', -5.55037, 120.41272, NULL, NULL),
(7302040, 7302, 'BONTOTIRO', 'Bontotiro, Bulukumba Regency, South Sulawesi, Indonesia', -5.46942, 120.37814, NULL, NULL),
(7302050, 7302, 'HERO LANGE-LANGE', 'Hero Lange-Lange, Bulukumba Regency, South Sulawesi, Indonesia', -5.40566, 120.36661, NULL, NULL),
(7302060, 7302, 'KAJANG', 'Kajang, Bulukumba Regency, South Sulawesi, Indonesia', -5.32896, 120.31086, NULL, NULL),
(7302070, 7302, 'BULUKUMPA', 'Bulukumba Regency, South Sulawesi, Indonesia', -5.43294, 120.20511, NULL, NULL),
(7302080, 7302, 'RILAU ALE', 'Rilau Ale, Bulukumba Regency, South Sulawesi, Indonesia', -5.41578, 120.18202, NULL, NULL),
(7302090, 7302, 'KINDANG', 'Kindang, Bulukumba Regency, South Sulawesi, Indonesia', -5.39505, 120.05497, NULL, NULL),
(7303010, 7303, 'BISSAPPU', 'Bissappu, Bantaeng Regency, South Sulawesi, Indonesia', -5.53751, 119.89888, NULL, NULL),
(7303011, 7303, 'ULUERE', 'Uluere, Bantaeng Regency, South Sulawesi, Indonesia', -5.43822, 119.93936, NULL, NULL),
(7303012, 7303, 'SINOA', 'Sinoa, Bantaeng Regency, South Sulawesi, Indonesia', -5.49366, 119.93936, NULL, NULL),
(7303020, 7303, 'BANTAENG', 'Bantaeng Regency, South Sulawesi, Indonesia', -5.51693, 120.0203, NULL, NULL),
(7303021, 7303, 'EREMERASA', 'Eremerasa, Bantaeng Regency, South Sulawesi, Indonesia', -5.48618, 119.9914, NULL, NULL),
(7303030, 7303, 'TOMPOBULU', 'Tompobulu, Gowa Regency, South Sulawesi, Indonesia', -5.40504, 119.86995, NULL, NULL),
(7303031, 7303, 'PAJUKUKANG', 'Pajukukang, Bantaeng Regency, South Sulawesi, Indonesia', -5.56123, 120.05497, NULL, NULL),
(7303032, 7303, 'GANTARANGKEKE', 'Gantarangkeke, Bantaeng Regency, South Sulawesi, Indonesia', -5.52425, 120.05497, NULL, NULL),
(7304010, 7304, 'BANGKALA', 'Bangkala, Jeneponto Regency, South Sulawesi, Indonesia', -5.56831, 119.59196, NULL, NULL),
(7304011, 7304, 'BANGKALA BARAT', 'West Bangkala, Jeneponto Regency, South Sulawesi, Indonesia', -5.48543, 119.58036, NULL, NULL),
(7304020, 7304, 'TAMALATEA', 'Tamalatea, Jeneponto Regency, South Sulawesi, Indonesia', -5.63749, 119.68468, NULL, NULL),
(7304021, 7304, 'BONTORAMBA', 'Bontoramba, Jeneponto Regency, South Sulawesi, Indonesia', -5.56322, 119.68468, NULL, NULL),
(7304030, 7304, 'BINAMU', 'Binamu, Jeneponto Regency, South Sulawesi, Indonesia', -5.67207, 119.73102, NULL, NULL),
(7304031, 7304, 'TURATEA', 'Turatea, Jeneponto Regency, South Sulawesi, Indonesia', -5.59649, 119.75419, NULL, NULL),
(7304040, 7304, 'BATANG', 'Batang, Jeneponto Regency, South Sulawesi', -5.614613, 119.783232, NULL, NULL),
(7304041, 7304, 'ARUNGKEKE', 'Arungkeke, Jeneponto Regency, South Sulawesi, Indonesia', -5.66816, 119.8005, NULL, NULL),
(7304042, 7304, 'TAROWANG', 'Tarowang, Jeneponto Regency, South Sulawesi, Indonesia', -5.59006, 119.86995, NULL, NULL),
(7304050, 7304, 'KELARA', 'Kelara, Jeneponto Regency, South Sulawesi, Indonesia', -5.55556, 119.82366, NULL, NULL),
(7304051, 7304, 'RUMBIA', 'Rumbia, Jeneponto Regency, South Sulawesi, Indonesia', -5.46048, 119.86995, NULL, NULL),
(7305010, 7305, 'MANGARA BOMBANG', 'Mangara Bombang, Takalar Regency, South Sulawesi, Indonesia', -5.53875, 119.45275, NULL, NULL),
(7305020, 7305, 'MAPPAKASUNGGU', 'Mappakasunggu, Takalar Regency, South Sulawesi, Indonesia', -5.49174, 119.29018, NULL, NULL),
(7305021, 7305, 'SANROBONE', 'Sanrobone, Takalar Regency, South Sulawesi, Indonesia', -5.42551, 119.40052, NULL, NULL),
(7305030, 7305, 'POLOMBANGKENG SELATAN', 'South Polombangkeng, Takalar Regency, South Sulawesi, Indonesia', -5.44344, 119.49917, NULL, NULL),
(7305031, 7305, 'PATTALLASSANG', 'Pattallassang, Gowa Regency, South Sulawesi, Indonesia', -5.1994, 119.56876, NULL, NULL),
(7305040, 7305, 'POLOMBANGKENG UTARA', 'North Polombangkeng, Takalar Regency, South Sulawesi, Indonesia', -5.33973, 119.53397, NULL, NULL),
(7305050, 7305, 'GALESONG SELATAN', 'South Galesong, Takalar Regency, South Sulawesi, Indonesia', -5.3711, 119.3773, NULL, NULL),
(7305051, 7305, 'GALESONG', 'Galesong, Takalar Regency, South Sulawesi, Indonesia', -5.33837, 119.3831, NULL, NULL),
(7305060, 7305, 'GALESONG UTARA', 'North Galesong, Takalar Regency, South Sulawesi, Indonesia', -5.25017, 119.38891, NULL, NULL),
(7306010, 7306, 'BONTONOMPO', 'Bontonompo, Gowa Regency, South Sulawesi, Indonesia', -5.35447, 119.42954, NULL, NULL),
(7306011, 7306, 'BONTONOMPO SELATAN', 'South Bontonompo, Gowa Regency, South Sulawesi, Indonesia', -5.39275, 119.40632, NULL, NULL),
(7306020, 7306, 'BAJENG', 'Bajeng, Gowa Regency, South Sulawesi, Indonesia', -5.29773, 119.45275, NULL, NULL),
(7306021, 7306, 'BAJENG BARAT', 'West Bajeng, Gowa Regency, South Sulawesi, Indonesia', -5.30507, 119.40052, NULL, NULL),
(7306030, 7306, 'PALLANGGA', 'Pallangga, Gowa Regency, South Sulawesi, Indonesia', -5.25955, 119.47596, NULL, NULL),
(7306031, 7306, 'BAROMBONG', 'Barombong, Gowa Regency, South Sulawesi, Indonesia', -5.2305, 119.41213, NULL, NULL),
(7306040, 7306, 'SOMBA OPU', 'Somba Opu, Gowa Regency, South Sulawesi, Indonesia', -5.20415, 119.47596, NULL, NULL),
(7306050, 7306, 'BONTOMARANNU', 'Bontomarannu, Gowa Regency, South Sulawesi, Indonesia', -5.25716, 119.52237, NULL, NULL),
(7306051, 7306, 'PATTALLASSANG', 'Pattallassang, Gowa Regency, South Sulawesi, Indonesia', -5.1994, 119.56876, NULL, NULL),
(7306060, 7306, 'PARANGLOE', 'Parangloe, Gowa Regency, South Sulawesi, Indonesia', -5.2217, 119.67309, NULL, NULL),
(7306061, 7306, 'MANUJU', 'Manuju, Gowa Regency, South Sulawesi, Indonesia', -5.28565, 119.68468, NULL, NULL),
(7306070, 7306, 'TINGGIMONCONG', 'Tinggimoncong, Gowa Regency, South Sulawesi, Indonesia', -5.24891, 119.85838, NULL, NULL),
(7306071, 7306, 'TOMBOLO PAO', 'Tombolo Pao, Gowa Regency, South Sulawesi, Indonesia', -5.20729, 119.95093, NULL, NULL),
(7306072, 7306, 'PARIGI', 'Parigi, Masigi, Parigi, Kabupaten Parigi Moutong, Sulawesi Tengah, Indonesia', -0.81918, 120.1673, NULL, NULL),
(7306080, 7306, 'BUNGAYA', 'Bungaya, Gowa Regency, South Sulawesi, Indonesia', -5.36691, 119.71944, NULL, NULL),
(7306081, 7306, 'BONTOLEMPANGAN', 'Bontolempangan, Gowa Regency, South Sulawesi, Indonesia', -5.38906, 119.82366, NULL, NULL),
(7306090, 7306, 'TOMPOBULU', 'Tompobulu, Gowa Regency, South Sulawesi, Indonesia', -5.40504, 119.86995, NULL, NULL),
(7306091, 7306, 'BIRINGBULU', 'Biringbulu, Gowa Regency, South Sulawesi, Indonesia', -5.4779, 119.71944, NULL, NULL),
(7307010, 7307, 'SINJAI BARAT', 'West Sinjai, Sinjai Regency, South Sulawesi, Indonesia', -5.25023, 120.00874, NULL, NULL),
(7307020, 7307, 'SINJAI BORONG', 'Sinjai Borong, Sinjai Regency, South Sulawesi, Indonesia', -5.31278, 120.04341, NULL, NULL),
(7307030, 7307, 'SINJAI SELATAN', 'South Sinjai, Sinjai Regency, South Sulawesi, Indonesia', -5.19521, 120.18202, NULL, NULL),
(7307040, 7307, 'TELLU LIMPOE', 'Tellu Limpoe, Sinjai Regency, South Sulawesi, Indonesia', -5.26617, 120.22819, NULL, NULL),
(7307050, 7307, 'SINJAI TIMUR', 'East Sinjai, Sinjai Regency, South Sulawesi, Indonesia', -5.18181, 120.26281, NULL, NULL),
(7307060, 7307, 'SINJAI TENGAH', 'Central Sinjai, Sinjai Regency, South Sulawesi, Indonesia', -5.20005, 120.08963, NULL, NULL),
(7307070, 7307, 'SINJAI UTARA', 'North Sinjai, Sinjai Regency, South Sulawesi, Indonesia', -5.10976, 120.23973, NULL, NULL),
(7307080, 7307, 'BULUPODDO', 'Bulupoddo, Sinjai Regency, South Sulawesi, Indonesia', -5.08766, 120.13583, NULL, NULL),
(7307090, 7307, 'PULAU SEMBILAN', 'Sembilan Island, Pangkalan Susu, Langkat Regency, North Sumatra, Indonesia', 4.15408, 98.25959, NULL, NULL),
(7308010, 7308, 'MANDAI', 'Mandai, Maros Regency, South Sulawesi, Indonesia', -5.07537, 119.56297, NULL, NULL),
(7308011, 7308, 'MONCONGLOE', 'Moncongloe, Maros Regency, South Sulawesi, Indonesia', -5.14529, 119.54557, NULL, NULL),
(7308020, 7308, 'MAROS BARU', 'Maros Baru, Maros Regency, South Sulawesi, Indonesia', -4.9981, 119.54557, NULL, NULL),
(7308021, 7308, 'MARUSU', 'Marusu, Maros Regency, South Sulawesi, Indonesia', -5.03715, 119.49917, NULL, NULL),
(7308022, 7308, 'TURIKALE', 'Turikale, Maros Regency, South Sulawesi, Indonesia', -5.01964, 119.57456, NULL, NULL),
(7308023, 7308, 'LAU', 'Lau, Maros Regency, South Sulawesi, Indonesia', -4.96024, 119.56876, NULL, NULL),
(7308030, 7308, 'BONTOA', 'Bontoa, Maros Regency, South Sulawesi, Indonesia', -4.92467, 119.54557, NULL, NULL),
(7308040, 7308, 'BANTIMURUNG', 'Bantimurung, Maros Regency, South Sulawesi, Indonesia', -4.9729, 119.68468, NULL, NULL),
(7308041, 7308, 'SIMBANG', 'Simbang, Maros Regency, South Sulawesi, Indonesia', -5.04631, 119.68468, NULL, NULL),
(7308050, 7308, 'TANRALILI', 'Tanralili, Maros Regency, South Sulawesi, Indonesia', -5.10495, 119.61514, NULL, NULL),
(7308051, 7308, 'TOMPU BULU', 'Tompu Bulu, Maros Regency, South Sulawesi, Indonesia', -5.14329, 119.76577, NULL, NULL),
(7308060, 7308, 'CAMBA', 'Camba, Mario Pulana, Camba, Kabupaten Maros, Sulawesi Selatan, Indonesia', -4.9, 119.83333, NULL, NULL),
(7308061, 7308, 'CENRANA', 'Cenrana, Tallu Banua, Sendana, Kabupaten Majene, Sulawesi Barat, Indonesia', -3.2867, 118.8612, NULL, NULL),
(7308070, 7308, 'MALLAWA', 'Mallawa, Maros Regency, South Sulawesi, Indonesia', -4.80674, 119.90466, NULL, NULL),
(7309010, 7309, 'LIUKANG TANGAYA', 'Liukang Tangaya, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -6.85944, 119.11637, NULL, NULL),
(7309020, 7309, 'LIUKANG KALMAS', 'LIUKANG KALMAS', 0, 0, NULL, NULL),
(7309030, 7309, 'LIUKANG TUPABBIRING', 'Liukang Tupabbiring, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.70065, 118.95835, NULL, NULL),
(7309031, 7309, 'LIUKANG TUPABBIRING UTARA', 'North Liukang Tupabbiring, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.70369, 119.4513, NULL, NULL),
(7309040, 7309, 'PANGKAJENE', 'Pangkajene, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.85135, 119.54557, NULL, NULL),
(7309041, 7309, 'MINASATENE', 'Minasatene, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.84803, 119.61514, NULL, NULL),
(7309050, 7309, 'BALOCCI', 'Balocci, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.89847, 119.70785, NULL, NULL),
(7309051, 7309, 'TONDONG TALLASA', 'Tondong Tallasa, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.85217, 119.71944, NULL, NULL),
(7309060, 7309, 'BUNGORO', 'Bungoro, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.77268, 119.66151, NULL, NULL),
(7309070, 7309, 'LABAKKANG', 'Labakkang, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.75986, 119.54557, NULL, NULL),
(7309080, 7309, 'MARANG', 'Marang, Kec. Pesisir Sel., Kabupaten Lampung Barat, Lampung, Indonesia', -5.37875, 104.058, NULL, NULL),
(7309091, 7309, 'SEGERI', 'Segeri, Pangkajene Dan Kepulauan Regency, South Sulawesi, Indonesia', -4.66533, 119.61514, NULL, NULL),
(7309092, 7309, 'MANDALLE', 'Mandalle, Tamarupa, Mandalle, Kabupaten Pangkajene Dan Kepulauan, Sulawesi Selatan, Indonesia', -4.58807, 119.5953, NULL, NULL),
(7310010, 7310, 'TANETE RIAJA', 'Tanete Riaja, Barru Regency, South Sulawesi, Indonesia', -4.52617, 119.67309, NULL, NULL),
(7310011, 7310, 'PUJANANTING', 'Pujananting, Barru Regency, South Sulawesi, Indonesia', -4.66963, 119.71944, NULL, NULL),
(7310020, 7310, 'TANETE RILAU', 'Tanete Rilau, Barru Regency, South Sulawesi, Indonesia', -4.51968, 119.61514, NULL, NULL),
(7310030, 7310, 'BARRU', 'Barru Regency, South Sulawesi, Indonesia', -4.43642, 119.64992, NULL, NULL),
(7310040, 7310, 'SOPPENG RIAJA', 'Soppeng Riaja, Barru Regency, South Sulawesi, Indonesia', -4.26488, 119.63833, NULL, NULL),
(7310041, 7310, 'BALUSU', 'Balusu, Barru Regency, South Sulawesi, Indonesia', -4.3448, 119.67309, NULL, NULL),
(7310050, 7310, 'MALLUSETASI', 'Mallusetasi, Barru Regency, South Sulawesi, Indonesia', -4.16412, 119.67309, NULL, NULL),
(7311010, 7311, 'BONTOCANI', 'Bontocani, Bone Regency, South Sulawesi, Indonesia', -5.0238, 119.95093, NULL, NULL),
(7311020, 7311, 'KAHU', 'Kahu, Bone Regency, South Sulawesi, Indonesia', -4.98025, 120.08963, NULL, NULL),
(7311030, 7311, 'KAJUARA', 'Kajuara, Bone Regency, South Sulawesi, Indonesia', -5.07318, 120.23973, NULL, NULL),
(7311040, 7311, 'SALOMEKKO', 'Salomekko, Bone Regency, South Sulawesi, Indonesia', -5.00009, 120.23973, NULL, NULL),
(7311050, 7311, 'TONRA', 'Tonra, Bone Regency, South Sulawesi, Indonesia', -4.89805, 120.27435, NULL, NULL),
(7311060, 7311, 'PATIMPENG', 'Patimpeng, Bone Regency, South Sulawesi, Indonesia', -4.90263, 120.18202, NULL, NULL),
(7311070, 7311, 'LIBURENG', 'Libureng, Samaenre, Tonra, Kabupaten Bone, Sulawesi Selatan, Indonesia', -4.86433, 120.2935, NULL, NULL),
(7311080, 7311, 'MARE', 'Mare Island, South Tidore, Tidore Kepulauan City, North Maluku, Indonesia', 0.57956, 127.39875, NULL, NULL),
(7311090, 7311, 'SIBULUE', 'Sibulue, Bone Regency, South Sulawesi, Indonesia', -4.66597, 120.37814, NULL, NULL),
(7311100, 7311, 'CINA', 'Cina, Bone Regency, South Sulawesi, Indonesia', -4.67996, 120.27435, NULL, NULL),
(7311110, 7311, 'BAREBBO', 'Barebbo, Bone Regency, South Sulawesi, Indonesia', -4.59574, 120.33202, NULL, NULL),
(7311120, 7311, 'PONRE', 'Ponre, Bone Regency, South Sulawesi, Indonesia', -4.68652, 120.13583, NULL, NULL),
(7311130, 7311, 'LAPPARIAJA', 'Lappariaja, Bone Regency, South Sulawesi, Indonesia', -4.73164, 119.95093, NULL, NULL),
(7311140, 7311, 'LAMURU', 'Lamuru, Bone Regency, South Sulawesi, Indonesia', -4.58621, 119.95093, NULL, NULL),
(7311141, 7311, 'TELLU LIMPOE', 'Tellu Limpoe, Sinjai Regency, South Sulawesi, Indonesia', -5.26617, 120.22819, NULL, NULL),
(7311150, 7311, 'BENGO', 'Bengo, Bone Regency, South Sulawesi, Indonesia', -4.61824, 120.04341, NULL, NULL),
(7311160, 7311, 'ULAWENG', 'Ulaweng, Bone Regency, South Sulawesi, Indonesia', -4.50529, 120.13583, NULL, NULL),
(7311170, 7311, 'PALAKKA', 'Palakka, Bone Regency, South Sulawesi, Indonesia', -4.52767, 120.23973, NULL, NULL),
(7311180, 7311, 'AWANGPONE', 'Awangpone, Bone Regency, South Sulawesi, Indonesia', -4.46077, 120.32049, NULL, NULL),
(7311190, 7311, 'TELLU SIATTINGE', 'Tellu Siattinge, Bone Regency, South Sulawesi, Indonesia', -4.40127, 120.23973, NULL, NULL),
(7311200, 7311, 'AMALI', 'Amali, Tacipong, Amali, Kabupaten Bone, Sulawesi Selatan, Indonesia', -4.38333, 120.1, NULL, NULL),
(7311210, 7311, 'AJANGALE', 'Ajangale, Bone Regency, South Sulawesi, Indonesia', -4.28872, 120.13583, NULL, NULL),
(7311220, 7311, 'DUA BOCCOE', 'Dua Boccoe, Bone Regency, South Sulawesi, Indonesia', -4.3207, 120.22819, NULL, NULL),
(7311230, 7311, 'CENRANA', 'Cenrana, Tallu Banua, Sendana, Kabupaten Majene, Sulawesi Barat, Indonesia', -3.2867, 118.8612, NULL, NULL),
(7311710, 7311, 'TANETE RIATTANG BARAT', 'West Tanete Riattang, Bone Regency, South Sulawesi, Indonesia', -4.52927, 120.30319, NULL, NULL),
(7311720, 7311, 'TANETE RIATTANG', 'Tanete Riattang, Bone Regency, South Sulawesi, Indonesia', -4.52768, 120.33779, NULL, NULL),
(7311730, 7311, 'TANETE RIATTANG TIMUR', 'East Tanete Riattang, Bone Regency, South Sulawesi, Indonesia', -4.5585, 120.35508, NULL, NULL),
(7312010, 7312, 'MARIO RIWAWO', 'Mario Riwawo, Soppeng Regency, South Sulawesi, Indonesia', -4.47744, 119.95093, NULL, NULL),
(7312020, 7312, 'LALABATA', 'Lalabata, Soppeng Regency, South Sulawesi, Indonesia', -4.40914, 119.85838, NULL, NULL),
(7312030, 7312, 'LILI RIAJA', 'Lili Riaja, Soppeng Regency, South Sulawesi, Indonesia', -4.39653, 119.93936, NULL, NULL),
(7312031, 7312, 'GANRA', 'Ganra, Soppeng Regency, South Sulawesi, Indonesia', -4.30622, 119.93936, NULL, NULL),
(7312032, 7312, 'CITTA', 'Citta, Soppeng Regency, South Sulawesi, Indonesia', -4.41052, 120.03185, NULL, NULL),
(7312040, 7312, 'LILI RILAU', 'Lili Rilau, Soppeng Regency, South Sulawesi, Indonesia', -4.32877, 120.04341, NULL, NULL),
(7312050, 7312, 'DONRI DONRI', 'Donri Donri, Soppeng Regency, South Sulawesi, Indonesia', -4.26458, 119.85838, NULL, NULL),
(7312060, 7312, 'MARIO RIAWA', 'Mario Riawa, Soppeng Regency, South Sulawesi, Indonesia', -4.15838, 119.81208, NULL, NULL),
(7313010, 7313, 'SABBANG PARU', 'Sabbang Paru, Wajo Regency, South Sulawesi, Indonesia', -4.22264, 119.99718, NULL, NULL),
(7313020, 7313, 'TEMPE', 'Tempe, Wajo Regency, South Sulawesi, Indonesia', -4.13929, 120.05497, NULL, NULL),
(7313030, 7313, 'PAMMANA', 'Pammana, Wajo Regency, South Sulawesi, Indonesia', -4.18276, 120.08963, NULL, NULL),
(7313040, 7313, 'BOLA', 'Bola, Lampanairi, Batauga, Kabupaten Buton, Sulawesi Tenggara, Indonesia', -5.65897, 122.6288, NULL, NULL),
(7313050, 7313, 'TAKKALALLA', 'Takkalalla, Wajo Regency, South Sulawesi, Indonesia', -4.13909, 120.27435, NULL, NULL),
(7313060, 7313, 'SAJOANGING', 'Sajoanging, Wajo Regency, South Sulawesi, Indonesia', -3.96865, 120.28588, NULL, NULL),
(7313061, 7313, 'PENRANG', 'Penrang, Watang Sawitto, Pinrang Regency, South Sulawesi, Indonesia', -3.78926, 119.64267, NULL, NULL),
(7313070, 7313, 'MAJAULENG', 'Majauleng, Wajo Regency, South Sulawesi, Indonesia', -4.03544, 120.18202, NULL, NULL),
(7313080, 7313, 'TANA SITOLO', 'Tana Sitolo, Wajo Regency, South Sulawesi, Indonesia', -4.04109, 120.04341, NULL, NULL),
(7313090, 7313, 'BELAWA', 'Belawa, Limporilau, Belawa, Kabupaten Wajo, Sulawesi Selatan, Indonesia', -4.04546, 119.9539, NULL, NULL),
(7313100, 7313, 'MANIANG PAJO', 'Maniang Pajo, Wajo Regency, South Sulawesi, Indonesia', -3.8961, 120.08963, NULL, NULL),
(7313101, 7313, 'GILIRENG', 'Gilireng, Wajo Regency, South Sulawesi, Indonesia', -3.89247, 120.18202, NULL, NULL),
(7313110, 7313, 'KEERA', 'Keera, Wajo Regency, South Sulawesi, Indonesia', -3.81758, 120.27435, NULL, NULL),
(7313120, 7313, 'PITUMPANUA', 'Pitumpanua, Wajo Regency, South Sulawesi, Indonesia', -3.70744, 120.36661, NULL, NULL),
(7314010, 7314, 'PANCA LAUTANG', 'Panca Lautang, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -4.0864, 119.81208, NULL, NULL),
(7314020, 7314, 'TELLULIMPO E', 'Tellulimpo E, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -4.04287, 119.77735, NULL, NULL),
(7314030, 7314, 'WATANG PULU', 'Watang Pulu, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.94643, 119.71944, NULL, NULL),
(7314040, 7314, 'BARANTI', 'Baranti, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.82777, 119.77735, NULL, NULL),
(7314050, 7314, 'PANCA RIJANG', 'Panca Rijang, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.8383, 119.85259, NULL, NULL),
(7314051, 7314, 'KULO', 'Kulo, Lelilef Waibulan, Weda Tengah, Kabupaten Halmahera Tengah, Maluku Utara, Indonesia', 0.62384, 127.8062, NULL, NULL),
(7314060, 7314, 'MARITENGNGAE', 'Maritengngae, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.91637, 119.8005, NULL, NULL),
(7314061, 7314, 'WATANG SIDENRENG', 'Watang Sidenreng, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.90516, 119.85838, NULL, NULL),
(7314070, 7314, 'PITU RIAWA', 'Pitu Riawa, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.82069, 119.96249, NULL, NULL),
(7314080, 7314, 'DUAPITUE', 'Duapitue, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.89034, 120.00874, NULL, NULL),
(7314081, 7314, 'PITU RIASE', 'Pitu Riase, Sidenreng Rappang Regency, South Sulawesi, Indonesia', -3.69922, 120.11274, NULL, NULL),
(7315010, 7315, 'SUPPA', 'Suppa, Pinrang Regency, South Sulawesi, Indonesia', -3.95949, 119.61514, NULL, NULL),
(7315020, 7315, 'MATTIROSOMPE', 'Mattirosompe, Pinrang Regency, South Sulawesi, Indonesia', -3.80074, 119.54557, NULL, NULL),
(7315021, 7315, 'LANRISANG', 'Lanrisang, Pinrang Regency, South Sulawesi, Indonesia', -3.88948, 119.56876, NULL, NULL),
(7315030, 7315, 'MATTIRO BULU', 'Mattiro Bulu, Pinrang Regency, South Sulawesi, Indonesia', -3.86888, 119.63833, NULL, NULL),
(7315040, 7315, 'WATANG SAWITTO', 'Watang Sawitto, Pinrang Regency, South Sulawesi, Indonesia', -3.79726, 119.63833, NULL, NULL),
(7315041, 7315, 'PALETEANG', 'Paleteang, Pinrang Regency, South Sulawesi, Indonesia', -3.75976, 119.68468, NULL, NULL),
(7315042, 7315, 'TIROANG', 'Tiroang, Pinrang Regency, South Sulawesi, Indonesia', -3.81252, 119.70785, NULL, NULL),
(7315050, 7315, 'PATAMPANUA', 'Patampanua, Pinrang Regency, South Sulawesi, Indonesia', -3.70532, 119.70785, NULL, NULL),
(7315060, 7315, 'CEMPA', 'Cempa, Pinrang Regency, South Sulawesi, Indonesia', -3.73681, 119.58036, NULL, NULL),
(7315070, 7315, 'DUAMPANUA', 'Duampanua, Pinrang Regency, South Sulawesi, Indonesia', -3.64835, 119.55717, NULL, NULL),
(7315071, 7315, 'BATULAPPA', 'Batulappa, Pinrang Regency, South Sulawesi, Indonesia', -3.59072, 119.67309, NULL, NULL),
(7315080, 7315, 'LEMBANG', 'Lembang, West Bandung Regency, West Java, Indonesia', -6.81621, 107.6228, NULL, NULL),
(7316010, 7316, 'MAIWA', 'Maiwa, Bangkala, Maiwa, Kabupaten Enrekang, Sulawesi Selatan, Indonesia', -3.75043, 119.8618, NULL, NULL),
(7316011, 7316, 'BUNGIN', 'Bungin, Enrekang Regency, South Sulawesi, Indonesia', -3.54364, 119.99718, NULL, NULL),
(7316020, 7316, 'ENREKANG', 'Enrekang Regency, South Sulawesi, Indonesia', -3.45907, 119.88152, NULL, NULL),
(7316021, 7316, 'CENDANA', 'Cendana, Enrekang Regency, South Sulawesi, Indonesia', -3.63149, 119.77735, NULL, NULL),
(7316030, 7316, 'BARAKA', 'Baraka, Enrekang Regency, South Sulawesi, Indonesia', -3.39593, 119.91623, NULL, NULL),
(7316031, 7316, 'BUNTU BATU', 'Buntu Batu, Enrekang Regency, South Sulawesi, Indonesia', -3.43897, 119.95093, NULL, NULL),
(7316040, 7316, 'ANGGERAJA', 'Anggeraja, Enrekang Regency, South Sulawesi, Indonesia', -3.40989, 119.76577, NULL, NULL),
(7316041, 7316, 'MALUA', 'Malua, Enrekang Regency, South Sulawesi, Indonesia', -3.38059, 119.8468, NULL, NULL),
(7316050, 7316, 'ALLA', 'Alla, Enrekang Regency, South Sulawesi, Indonesia', -3.346, 119.82366, NULL, NULL),
(7316051, 7316, 'CURIO', 'Curio, Enrekang Regency, South Sulawesi, Indonesia', -3.29914, 119.90466, NULL, NULL),
(7316052, 7316, 'MASALLE', 'Masalle, Enrekang Regency, South Sulawesi, Indonesia', -3.33063, 119.75419, NULL, NULL),
(7316053, 7316, 'BAROKO', 'Baroko, Enrekang Regency, South Sulawesi, Indonesia', -3.27609, 119.8005, NULL, NULL),
(7317010, 7317, 'LAROMPONG', 'Larompong, Kabupaten Luwu, Sulawesi Selatan, Indonesia', -3.51076, 120.3613, NULL, NULL),
(7317011, 7317, 'LAROMPONG SELATAN', 'South Larompong, Luwu Regency, South Sulawesi, Indonesia', -3.61041, 120.35508, NULL, NULL),
(7317020, 7317, 'SULI', 'Suli, Luwu Regency, South Sulawesi, Indonesia', -3.45139, 120.35508, NULL, NULL),
(7317021, 7317, 'SULI BARAT', 'West Suli, Luwu Regency, South Sulawesi, Indonesia', -3.46467, 120.22819, NULL, NULL),
(7317030, 7317, 'BELOPA', 'Palopo, Palopo City, South Sulawesi, Indonesia', -3.01085, 120.20222, NULL, NULL),
(7317031, 7317, 'KAMANRE', 'Kamanre, Luwu Regency, South Sulawesi, Indonesia', -3.31052, 120.35508, NULL, NULL),
(7317032, 7317, 'BELOPA UTARA', 'North Belopa, Luwu Regency, South Sulawesi, Indonesia', -3.3625, 120.37814, NULL, NULL),
(7317040, 7317, 'BAJO', 'Bajo, Luwu Regency, South Sulawesi, Indonesia', -3.34727, 120.30895, NULL, NULL),
(7317041, 7317, 'BAJO BARAT', 'West Bajo, Luwu Regency, South Sulawesi, Indonesia', -3.36724, 120.23973, NULL, NULL),
(7317050, 7317, 'BASSESANGTEMPE', 'Bassesangtempe, Luwu Regency, South Sulawesi, Indonesia', -3.08215, 120.08963, NULL, NULL),
(7317051, 7317, 'LATIMOJONG', 'Latimojong, Luwu Regency, South Sulawesi, Indonesia', -3.34511, 120.11274, NULL, NULL),
(7317052, 7317, 'BASSESANGTEMPE UTARA', 'Bassesangtempe, Luwu Regency, South Sulawesi, Indonesia', -3.08215, 120.08963, NULL, NULL),
(7317060, 7317, 'BUPON', 'Bupon, Luwu Regency, South Sulawesi, Indonesia', -3.2624, 120.21665, NULL, NULL),
(7317061, 7317, 'PONRANG', 'Ponrang, Luwu Regency, South Sulawesi, Indonesia', -3.20743, 120.28588, NULL, NULL),
(7317062, 7317, 'PONRANG SELATAN', 'South Ponrang, Luwu Regency, South Sulawesi, Indonesia', -3.25781, 120.35508, NULL, NULL),
(7317070, 7317, 'BUA', 'Bua, Sakti, Bua, Kabupaten Luwu, Sulawesi Selatan, Indonesia', -3.07534, 120.2265, NULL, NULL),
(7317080, 7317, 'WALENRANG', 'Walenrang, Luwu Regency, South Sulawesi, Indonesia', -2.88004, 120.12429, NULL, NULL),
(7317081, 7317, 'WALENRANG TIMUR', 'East Walenrang, Luwu Regency, South Sulawesi, Indonesia', -2.87735, 120.21665, NULL, NULL),
(7317090, 7317, 'LAMASI', 'Lamasi, Luwu Regency, South Sulawesi, Indonesia', -2.80837, 120.19357, NULL, NULL),
(7317091, 7317, 'WALENRANG UTARA', 'North Walenrang, Luwu Regency, South Sulawesi, Indonesia', -2.76781, 120.08963, NULL, NULL),
(7317092, 7317, 'WALENRANG BARAT', 'West Walenrang, Luwu Regency, South Sulawesi, Indonesia', -2.80523, 119.99718, NULL, NULL),
(7317093, 7317, 'LAMASI TIMUR', 'East Lamasi, Luwu Regency, South Sulawesi, Indonesia', -2.91084, 120.26281, NULL, NULL),
(7318010, 7318, 'BONGGAKARADENG', 'Bonggakaradeng, Tana Toraja Regency, South Sulawesi, Indonesia', -3.16549, 119.67309, NULL, NULL),
(7318011, 7318, 'SIMBUANG', 'Simbuang, Tana Toraja Regency, South Sulawesi, Indonesia', -3.20371, 119.58036, NULL, NULL),
(7318012, 7318, 'RANO', 'Rano, Tana Toraja Regency, South Sulawesi, Indonesia', -3.24229, 119.75419, NULL, NULL),
(7318013, 7318, 'MAPPAK', 'Mappak, Tana Toraja Regency, South Sulawesi, Indonesia', -3.24201, 119.48757, NULL, NULL),
(7318020, 7318, 'MENGKENDEK', 'Mengkendek, Tana Toraja Regency, South Sulawesi, Indonesia', -3.22711, 119.95093, NULL, NULL),
(7318021, 7318, 'GANDANG BATU SILANAN', 'Gandang Batu Silanan, Tana Toraja Regency, South Sulawesi, Indonesia', -3.22166, 119.8468, NULL, NULL),
(7318030, 7318, 'SANGALLA', 'Sangalla, Tana Toraja Regency, South Sulawesi, Indonesia', -3.09246, 119.89888, NULL, NULL),
(7318031, 7318, 'SANGALA SELATAN', 'South Sangala, Tana Toraja Regency, South Sulawesi, Indonesia', -3.11315, 119.93936, NULL, NULL),
(7318032, 7318, 'SANGALLA UTARA', 'North Sangalla, Tana Toraja Regency, South Sulawesi, Indonesia', -3.0612, 119.91623, NULL, NULL),
(7318040, 7318, 'MAKALE', 'Makale, Manggau, Makale, Kabupaten Tana Toraja, Sulawesi Selatan, Indonesia', -3.11259, 119.8488, NULL, NULL),
(7318041, 7318, 'MAKALE SELATAN', 'South Makale, Tana Toraja Regency, South Sulawesi, Indonesia', -3.15268, 119.8005, NULL, NULL),
(7318042, 7318, 'MAKALE UTARA', 'North Makale, Tana Toraja Regency, South Sulawesi, Indonesia', -3.06262, 119.86995, NULL, NULL),
(7318050, 7318, 'SALUPUTTI', 'Saluputti, Tana Toraja Regency, South Sulawesi, Indonesia', -3.03102, 119.75419, NULL, NULL),
(7318051, 7318, 'BITTUANG', 'Bittuang, Tana Toraja Regency, South Sulawesi, Indonesia', -3.02468, 119.67309, NULL, NULL),
(7318052, 7318, 'REMBON', 'Rembon, Tana Toraja Regency, South Sulawesi, Indonesia', -3.1182, 119.77735, NULL, NULL),
(7318053, 7318, 'MASANDA', 'Masanda, Tana Toraja Regency, South Sulawesi, Indonesia', -2.88566, 119.62673, NULL, NULL),
(7318054, 7318, 'MALIMBONG BALEPE', 'Malimbong Balepe, Tana Toraja Regency, South Sulawesi, Indonesia', -3.08516, 119.70785, NULL, NULL),
(7318061, 7318, 'RANTETAYO', 'Rantetayo, Tana Toraja Regency, South Sulawesi, Indonesia', -3.04647, 119.82366, NULL, NULL),
(7318067, 7318, 'KURRA', 'Kurra, Tana Toraja Regency, South Sulawesi, Indonesia', -2.97836, 119.75419, NULL, NULL),
(7322010, 7322, 'SABBANG', 'Sabbang, North Luwu Regency, South Sulawesi, Indonesia', -2.593, 120.13583, NULL, NULL),
(7322020, 7322, 'BAEBUNTA', 'Baebunta, North Luwu Regency, South Sulawesi, Indonesia', -2.62395, 120.27435, NULL, NULL),
(7322030, 7322, 'MALANGKE', 'Malangke, North Luwu Regency, South Sulawesi, Indonesia', -2.75744, 120.45881, NULL, NULL),
(7322031, 7322, 'MALANGKE BARAT', 'West Malangke, North Luwu Regency, South Sulawesi, Indonesia', -2.83082, 120.32049, NULL, NULL),
(7322040, 7322, 'SUKAMAJU', 'Sukamaju, Cilodong, Depok City, West Java, Indonesia', -6.41854, 106.85029, NULL, NULL),
(7322050, 7322, 'BONE-BONE', 'Bone, Matombura, Kec. Bone, Kabupaten Muna, Sulawesi Tenggara, Indonesia', -5.18835, 122.4876, NULL, NULL),
(7322051, 7322, 'TANA LILI', 'Tana Lili, Kabupaten Luwu Utara, Sulawesi Selatan, Indonesia', -2.6153, 120.59698, NULL, NULL),
(7322120, 7322, 'MASAMBA', 'Masamba, Mappedeceng, Kabupaten Luwu Utara, Sulawesi Selatan, Indonesia', -2.55136, 120.3697, NULL, NULL),
(7322121, 7322, 'MAPPEDECENG', 'Mappedeceng, North Luwu Regency, South Sulawesi, Indonesia', -2.5167, 120.41272, NULL, NULL),
(7322122, 7322, 'RAMPI', 'Rampi, North Luwu Regency, South Sulawesi, Indonesia', -2.15889, 120.29742, NULL, NULL),
(7322130, 7322, 'LIMBONG', 'Limbong, North Luwu Regency, South Sulawesi, Indonesia', -2.58109, 119.92779, NULL, NULL),
(7322131, 7322, 'SEKO', 'Seko, Redang Seko, Lirik, Kabupaten Indragiri Hulu, Riau, Indonesia', -0.22477, 102.2166, NULL, NULL),
(7325010, 7325, 'BURAU', 'Burau, East Luwu Regency, South Sulawesi, Indonesia', -2.54394, 120.68901, NULL, NULL),
(7325020, 7325, 'WOTU', 'Wotu, Bawalipu, Wotu, Kabupaten Luwu Timur, Sulawesi Selatan, Indonesia', -2.59724, 120.8037, NULL, NULL),
(7325030, 7325, 'TOMONI', 'Tomoni, East Luwu Regency, South Sulawesi, Indonesia', -2.40884, 120.59698, NULL, NULL),
(7325031, 7325, 'TOMONI TIMUR', 'East Tomoni, East Luwu Regency, South Sulawesi, Indonesia', -2.53909, 120.87286, NULL, NULL),
(7325040, 7325, 'ANGKONA', 'Angkona, Tampinna, Angkona, Kabupaten Luwu Timur, Sulawesi Selatan, Indonesia', -2.60338, 120.9561, NULL, NULL),
(7325050, 7325, 'MALILI', 'Malili, Wewang Riu, Malili, Kabupaten Luwu Timur, Sulawesi Selatan, Indonesia', -2.64531, 121.1043, NULL, NULL),
(7325060, 7325, 'TOWUTI', 'Towuti, East Luwu Regency, South Sulawesi, Indonesia', -2.60542, 121.58266, NULL, NULL),
(7325070, 7325, 'NUHA', 'Nuha, East Luwu Regency, South Sulawesi, Indonesia', -2.47625, 121.30841, NULL, NULL),
(7325071, 7325, 'WASUPONDA', 'Wasuponda, East Luwu Regency, South Sulawesi, Indonesia', -2.28072, 120.94174, NULL, NULL),
(7325080, 7325, 'MANGKUTANA', 'Mangkutana, East Luwu Regency, South Sulawesi, Indonesia', -2.28727, 120.666, NULL, NULL),
(7325081, 7325, 'KALAENA', 'Kalaena, East Luwu Regency, South Sulawesi, Indonesia', -2.44506, 120.86138, NULL, NULL),
(7326010, 7326, 'SOPAI', 'Sopai, North Toraja Regency, South Sulawesi, Indonesia', -2.99735, 119.85259, NULL, NULL),
(7326020, 7326, 'KESU', 'Kesu, North Toraja Regency, South Sulawesi, Indonesia', -2.99596, 119.89888, NULL, NULL),
(7326030, 7326, 'SANGGALANGI', 'Sanggalangi, North Toraja Regency, South Sulawesi, Indonesia', -3.00789, 119.93936, NULL, NULL),
(7326040, 7326, 'BUNTAO', 'Buntao, North Toraja Regency, South Sulawesi, Indonesia', -3.04224, 119.96249, NULL, NULL),
(7326050, 7326, 'RANTEBUA', 'Rantebua, North Toraja Regency, South Sulawesi, Indonesia', -3.07589, 120.00874, NULL, NULL),
(7326060, 7326, 'NANGGALA', 'Nanggala, North Toraja Regency, South Sulawesi, Indonesia', -2.97988, 119.99718, NULL, NULL),
(7326070, 7326, 'TONDON', 'Tondon, North Toraja Regency, South Sulawesi, Indonesia', -2.95535, 119.93936, NULL, NULL),
(7326080, 7326, 'TALLUNGLIPU', 'Tallunglipu, North Toraja Regency, South Sulawesi, Indonesia', -2.95183, 119.91044, NULL, NULL),
(7326090, 7326, 'RANTEPAO', 'Rantepao, North Toraja Regency, South Sulawesi, Indonesia', -2.97037, 119.87573, NULL, NULL),
(7326100, 7326, 'TIKALA', 'Tikala, Manado City, North Sulawesi, Indonesia', 1.46674, 124.89, NULL, NULL),
(7326110, 7326, 'SESEAN', 'Sesean, North Toraja Regency, South Sulawesi, Indonesia', -2.92525, 119.92201, NULL, NULL),
(7326120, 7326, 'BALUSU', 'Balusu, Barru Regency, South Sulawesi, Indonesia', -4.3448, 119.67309, NULL, NULL),
(7326130, 7326, 'SADAN', 'Sadan, North Toraja Regency, South Sulawesi, Indonesia', -2.84274, 119.90466, NULL, NULL),
(7326140, 7326, 'BENGKELEKILA', 'Bengkelekila, North Toraja Regency, South Sulawesi, Indonesia', -2.88675, 119.89309, NULL, NULL),
(7326150, 7326, 'SESEAN SULOARA', 'Sesean Suloara, North Toraja Regency, South Sulawesi, Indonesia', -2.90911, 119.87573, NULL, NULL),
(7326160, 7326, 'KAPALA PITU', 'Kapala Pitu, North Toraja Regency, South Sulawesi, Indonesia', -2.92762, 119.84102, NULL, NULL),
(7326170, 7326, 'DENDE PIONGAN NAPO', 'Dende Piongan Napo, North Toraja Regency, South Sulawesi, Indonesia', -2.97209, 119.81787, NULL, NULL),
(7326180, 7326, 'AWAN RANTE KARUA', 'Awan Rante Karua, North Toraja Regency, South Sulawesi, Indonesia', -2.90893, 119.73102, NULL, NULL),
(7326190, 7326, 'RINDINGALO', 'Rindingalo, North Toraja Regency, South Sulawesi, Indonesia', -2.88942, 119.8005, NULL, NULL),
(7326200, 7326, 'BUNTU PEPASAN', 'Buntu Pepasan, North Toraja Regency, South Sulawesi, Indonesia', -2.80074, 119.8468, NULL, NULL),
(7326210, 7326, 'BARUPPU', 'Baruppu, North Toraja Regency, South Sulawesi, Indonesia', -2.79492, 119.7426, NULL, NULL),
(7371010, 7371, 'MARISO', 'Mariso, Makassar City, South Sulawesi, Indonesia', -5.15909, 119.40923, NULL, NULL),
(7371020, 7371, 'MAMAJANG', 'Mamajang, Makassar City, South Sulawesi, Indonesia', -5.16435, 119.41938, NULL, NULL),
(7371030, 7371, 'TAMALATE', 'Tamalate, Makassar City, South Sulawesi, Indonesia', -5.18373, 119.42374, NULL, NULL),
(7371031, 7371, 'RAPPOCINI', 'Rappocini, Makassar City, South Sulawesi, Indonesia', -5.17333, 119.44695, NULL, NULL),
(7371040, 7371, 'MAKASSAR', 'Makassar, Makassar City, South Sulawesi, Indonesia', -5.14767, 119.43273, NULL, NULL),
(7371050, 7371, 'UJUNG PANDANG', 'Makassar, Makassar City, South Sulawesi, Indonesia', -5.14767, 119.43273, NULL, NULL),
(7371060, 7371, 'WAJO', 'Wajo Regency, South Sulawesi, Indonesia', -4.02223, 120.06652, NULL, NULL),
(7371070, 7371, 'BONTOALA', 'Bontoala, Makassar City, South Sulawesi, Indonesia', -5.13084, 119.42083, NULL, NULL),
(7371080, 7371, 'UJUNG TANAH', 'Ujung Tanah, Makassar City, South Sulawesi, Indonesia', -5.04791, 119.32794, NULL, NULL),
(7371090, 7371, 'TALLO', 'Tallo, Makassar City, South Sulawesi, Indonesia', -5.11859, 119.43534, NULL, NULL),
(7371100, 7371, 'PANAKKUKANG', 'Panakkukang, Makassar City, South Sulawesi, Indonesia', -5.14566, 119.44695, NULL, NULL),
(7371101, 7371, 'MANGGALA', 'Manggala, Makassar City, South Sulawesi, Indonesia', -5.16725, 119.47596, NULL, NULL),
(7371110, 7371, 'BIRING KANAYA', 'Biring Kanaya, Makassar City, South Sulawesi, Indonesia', -5.0912, 119.52237, NULL, NULL),
(7371111, 7371, 'TAMALANREA', 'Tamalanrea, Makassar City, South Sulawesi, Indonesia', -5.09352, 119.47596, NULL, NULL),
(7372010, 7372, 'BACUKIKI', 'Bacukiki, Pare-Pare City, South Sulawesi, Indonesia', -4.02862, 119.68468, NULL, NULL),
(7372011, 7372, 'BACUKIKI BARAT', 'West Bacukiki, Pare-Pare City, South Sulawesi, Indonesia', -4.04419, 119.63253, NULL, NULL),
(7372020, 7372, 'UJUNG', 'Ujung, Semampir, Surabaya City, East Java, Indonesia', -7.20879, 112.74799, NULL, NULL),
(7372030, 7372, 'SOREANG', 'Soreang, Bandung, West Java, Indonesia', -7.0252, 107.52591, NULL, NULL),
(7373010, 7373, 'WARA SELATAN', 'South Wara, Palopo City, South Sulawesi, Indonesia', -3.03025, 120.21088, NULL, NULL),
(7373011, 7373, 'SENDANA', 'Sendana, Leling, Tommo, Kabupaten Mamuju, Sulawesi Barat, Indonesia', -2.23333, 119.46667, NULL, NULL),
(7373020, 7373, 'WARA', 'Wara, Nunggi, Wera, Bima, Nusa Tenggara Bar., Indonesia', -8.34327, 118.9148, NULL, NULL),
(7373021, 7373, 'WARA TIMUR', 'East Wara, Palopo City, South Sulawesi, Indonesia', -3.0063, 120.208, NULL, NULL),
(7373022, 7373, 'MUNGKAJANG', 'Mungkajang, Palopo City, South Sulawesi, Indonesia', -3.02049, 120.10118, NULL, NULL),
(7373030, 7373, 'WARA UTARA', 'North Wara, Palopo City, South Sulawesi, Indonesia', -2.98725, 120.18779, NULL, NULL),
(7373031, 7373, 'BARA', 'Bara, Air Buaya, Kabupaten Buru, Maluku, Indonesia', -3.14637, 126.2317, NULL, NULL),
(7373040, 7373, 'TELLUWANUA', 'Telluwanua, Palopo City, South Sulawesi, Indonesia', -2.91289, 120.19357, NULL, NULL),
(7373041, 7373, 'WARA BARAT', 'West Wara, Palopo City, South Sulawesi, Indonesia', -2.97711, 120.08963, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_04_021815_create_regencies_table', 2),
(5, '2025_01_04_025037_create_districs_table', 2),
(6, '2025_01_04_054318_create_districts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tZgq73Q8zuuyDe3ZDSFjCoJkg5YliDbuZdGTECLj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQXhCR1dNcmNBeUZ6WDBxaDZjZXVuUXhDbmRxZjkwNjREa2k2T2NtQSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vcmVnZW5jaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEJRb3NXV1FTSEs3aG9FT1kuYmEzTk9mS3dac3phNnVQWVkwUUw5Uld1RUs4dC4zTnBZSFpHIjt9', 1735969773);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@project.sig', NULL, '$2y$12$BQosWWQSHK7hoEOY.ba3NOfKwZsza6uPYY0QL9RWuEK8t.3NpYHZG', NULL, '2025-01-03 19:13:40', '2025-01-03 19:13:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_regency_id_foreign` (`regency_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7373042;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `regencies`
--
ALTER TABLE `regencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7374;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
