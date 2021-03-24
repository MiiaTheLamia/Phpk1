-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 24 mrt 2021 om 06:21
-- Serverversie: 5.7.24
-- PHP-versie: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Armand Ullrich', '2010-12-13 23:35:15', '2019-02-02 12:04:30'),
(3, 'Prof. Garrick Haley DDS', '2013-06-02 14:21:35', '2011-07-02 12:14:52'),
(4, 'Janae Stracke', '2018-02-27 11:01:27', '2015-05-06 20:07:57'),
(5, 'Arnaldo Murphy', '2018-10-14 14:53:20', '2018-11-22 05:14:12'),
(6, 'Prof. Deshawn Kiehn', '2017-09-20 20:38:44', '2020-08-31 12:21:11'),
(7, 'Claudie Dicki', '2019-01-28 20:03:14', '2015-09-07 00:51:30'),
(8, 'Scarlett Farrell Sr.', '2020-10-04 06:30:34', '2017-10-03 19:36:33'),
(9, 'Enola Effertz', '2014-12-23 06:56:18', '2020-05-23 22:44:01'),
(10, 'Dr. Citlalli Cormier', '2012-11-27 11:25:55', '2018-08-21 15:20:36');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_26_110535_create_categories_table', 1),
(5, '2020_09_29_104412_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create category', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(2, 'edit category', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(3, 'delete category', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(2, 'sales', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(3, 'admin', 'web', '2020-10-04 11:11:42', '2020-10-04 11:11:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Customer', 'customer@test.com', '2020-10-04 11:11:42', '$2y$10$fnr./Vmwx2S6w0NU.77wOuHdk5y3ZRXCEDslDP1IvoYplqEzn.2ha', 'lI7DE9bQy7J22IAAOhYZ6QxqQTxoPyT09kZOKjvwwo6mKJgaSLWlXIO6S6K5', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(2, 'Sales', 'sales@test.com', '2020-10-04 11:11:42', '$2y$10$6tXHH5bFNKQjq7DP7YlejOHNUidbOUwNR3OwfUA0TMGkwkcNahFvC', 'qbttYSh9gxvG1vNtrkS0sKNQgh5unY95ioRkJSgY7hrb3C0ypcb3MBrJfeDq', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(3, 'Admin', 'admin@test.com', '2020-10-04 11:11:42', '$2y$10$zlXqNIniSvUXliBI9nV2leHYTAHZ4r1uObxyspKIuWFyvw8a.T3Dy', 'CR0MgbpPpm32GXvebnJfFMstnuseltfrRINuD2X4MzeLm2rzqpGQEiR7hmO6', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(4, 'Spencer Wunsch', 'annette10@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ItKKfXO2ah', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(5, 'Priscilla Gusikowski', 'esmeralda46@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xi9JocvIdl', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(6, 'Kirsten Hackett I', 'paris93@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uGOwhPmIqB', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(7, 'Emile Deckow', 'fritz13@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TqC2QWfNU7', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(8, 'Woodrow Ebert', 'maymie35@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uj6WioNckp', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(9, 'Miss Karlie Pacocha Jr.', 'orrin.labadie@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a5sRwU4y46', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(10, 'Kaitlin Mosciski', 'hazel48@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xl8r0HPrRi', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(11, 'Faye Wisoky', 'wuckert.frieda@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oKax5Pjem7', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(12, 'Mandy Goodwin', 'jcrooks@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S4SBFl0UdU', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(13, 'Van Botsford', 'bartoletti.arnold@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cATA66fZQS', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(14, 'Prof. Cristian Sporer III', 'zlittel@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7CFLr30emT', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(15, 'Delphia Gorczany DDS', 'annetta.feil@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F0VJiKRCtt', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(16, 'Miss Pansy Cormier', 'gerry84@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I4nA9xy9o5', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(17, 'Dr. Alexie Orn PhD', 'keyon35@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M3CnyT0Jyt', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(18, 'Melyna Schulist', 'zlarson@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MnIadMVKHV', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(19, 'Celestino Ratke', 'hermann.brenna@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dTZzHEuxdY', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(20, 'Randy Corwin', 'hackett.earnestine@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SwT0sJHc4B', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(21, 'Dr. Winona Hermiston Jr.', 'kelly03@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wWwpoboYwu', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(22, 'Lea Upton', 'hilton82@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fMN858GZec', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(23, 'Forest Will', 'elta.price@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v2hrF40gyc', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(24, 'Dillon Windler', 'herman.otho@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lzRI4JmGmk', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(25, 'Mr. Heber Waters', 'boehm.jana@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BA54egkq1Y', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(26, 'Matteo Bashirian', 'lucinda06@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YouBPb2KwM', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(27, 'Mrs. Chelsie Bailey', 'hand.herminio@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'weojMdinho', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(28, 'Muriel Larkin DVM', 'cremin.jennie@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jQQAyGK85t', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(29, 'Dr. Erick Harvey MD', 'jacinto.prosacco@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4JyNE02KKC', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(30, 'Melyssa Bradtke DVM', 'wdurgan@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x077KqCR9C', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(31, 'Rudy McCullough MD', 'avolkman@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yCsejqutTd', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(32, 'Judy Grimes PhD', 'selina.wolf@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DpWqskDXgK', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(33, 'Yesenia Bartoletti PhD', 'madaline.collins@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wJEESamwtd', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(34, 'Verda Leannon', 'davin.russel@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YSJMDq9Nbu', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(35, 'Mrs. Ethyl Krajcik', 'oberbrunner.pamela@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RoKgxfJEqv', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(36, 'Dayne Rau', 'estelle29@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cXHlDrwO5w', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(37, 'Lew Fisher V', 'cassin.tyson@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XzJwOdKVy4', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(38, 'Craig Koss', 'bframi@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NB7fXwG2H0', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(39, 'Rebecca Bode', 'gutkowski.ruby@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i3OydeW9kb', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(40, 'Dr. May Nolan DDS', 'emarquardt@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HEbRM3KKaD', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(41, 'Sienna Fay', 'obrakus@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qyRtBIeTOu', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(42, 'Dr. Nathanial Marquardt', 'bettie83@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GZaXsZtYam', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(43, 'Ms. Reva O\'Reilly Sr.', 'wolff.christina@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LJdw8Og0Jv', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(44, 'Guadalupe Wolff', 'amie94@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9BsajdXoYE', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(45, 'Dr. Rosalyn Pacocha', 'ilindgren@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ibkuoMJQC6', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(46, 'Blanca Cormier', 'adele.kuhic@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AtnrbFjNhW', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(47, 'Ana Littel', 'fbraun@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8be8WwvDlS', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(48, 'Green McGlynn V', 'elsie74@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MsKfbm4z1a', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(49, 'Brad Hackett', 'ronaldo25@example.net', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hl5WbQZP0l', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(50, 'Sigurd Walsh', 'garnett.sanford@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sK9WsQ6rqH', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(51, 'Miss Alvina Heathcote III', 'bmarks@example.com', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'StiL8G8jNR', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(52, 'Thelma Kassulke Jr.', 'davis.leda@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZRdU5IxO17', '2020-10-04 11:11:42', '2020-10-04 11:11:42'),
(53, 'Malachi Ondricka', 'fsawayn@example.org', '2020-10-04 11:11:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BsKMf6BeQv', '2020-10-04 11:11:42', '2020-10-04 11:11:42');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexen voor tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
