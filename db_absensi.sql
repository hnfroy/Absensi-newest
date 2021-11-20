-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2021 pada 07.55
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Hanif Royyan', 'hnf', '112233', '2021-11-17 04:51:48', '2021-11-17 04:51:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_16_025339_create_students_table', 1),
(6, '2021_11_16_102220_create_rayons_table', 1),
(7, '2021_11_16_102319_create_student_groups_table', 1),
(8, '2021_11_17_032955_create_admins_table', 1),
(9, '2021_11_17_101445_create_siswas_table', 1),
(10, '2021_11_18_124216_create_presensis_table', 2),
(11, '2021_11_18_135239_create_presensis_table', 3),
(12, '2021_11_18_135435_create_presensis_table', 4),
(13, '2021_11_19_102248_create_uploads_table', 5),
(14, '2021_11_19_110418_create_uploads_table', 6),
(15, '2021_11_19_113532_create_gambars_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` date NOT NULL,
  `jammasuk` time DEFAULT NULL,
  `jamkeluar` time DEFAULT NULL,
  `jamkerja` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `user_id`, `tgl`, `jammasuk`, `jamkeluar`, `jamkerja`, `created_at`, `updated_at`) VALUES
(29, '3', '2021-11-20', '12:42:23', '12:42:27', '00:00:04', '2021-11-19 22:42:24', '2021-11-19 22:42:27'),
(30, '5', '2021-11-20', '13:49:22', NULL, NULL, '2021-11-19 23:49:22', '2021-11-19 23:49:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rayons`
--

CREATE TABLE `rayons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing_rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rayons`
--

INSERT INTO `rayons` (`id`, `rayon`, `pembimbing_rayon`, `created_at`, `updated_at`) VALUES
(3, 'Sukasari 2', 'Miss Rachmi', '2021-11-17 19:27:05', '2021-11-17 19:27:05'),
(4, 'Sukasari 1', 'Pak Didik', '2021-11-17 19:27:17', '2021-11-17 19:27:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `rombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nama`, `nis`, `rombel`, `rayon`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Hanif Royyan Ramdhani', 11907358, 'RPL XII-4', 'Sukasari 2', 'hnf', '12345', '2021-11-17 19:18:29', '2021-11-17 19:18:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student_groups`
--

INSERT INTO `student_groups` (`id`, `rombel`, `created_at`, `updated_at`) VALUES
(1, 'RPL XII-4', '2021-11-17 19:17:04', '2021-11-17 19:17:04'),
(2, 'RPL XII-3', '2021-11-17 19:17:13', '2021-11-17 19:17:13'),
(3, 'RPL XII-2', '2021-11-17 19:17:19', '2021-11-17 19:17:19'),
(4, 'RPL XII-1', '2021-11-17 19:17:31', '2021-11-17 19:17:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'hanif@gmail.com', NULL, 1, '$2y$10$T9xaCTpQjVHaAEXKw1zcHeV3CoR2KeAtfwYorBaGAYiom.n7vge16', NULL, '2021-11-17 06:57:44', '2021-11-17 06:57:44'),
(3, 'user', 'user@gmail.com', NULL, 0, '$2y$10$mwfX9v5VBefBLjMAG2cZhOqYcIAA0zNRoILnUDH1iBIl8k9v/rqBW', NULL, '2021-11-17 20:02:27', '2021-11-17 20:02:27'),
(5, 'user2', 'user2@gmail.com', NULL, 0, '$2y$10$DZE/k5zkyUhm7FnqjrFE8eGld1Xx2wo3i4iHwNH1KLEWLChPF2A7q', NULL, '2021-11-18 07:01:07', '2021-11-18 07:01:07'),
(6, 'user3', 'user3@gmail.com', NULL, 0, '$2y$10$4CWRnPQgpCuCGJVa3jKqn.qesOFH8HnMWifKijZxn31JtMENizp/S', NULL, '2021-11-18 20:32:01', '2021-11-18 20:32:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rayons`
--
ALTER TABLE `rayons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `rayons`
--
ALTER TABLE `rayons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
