-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2026 at 11:43 AM
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
-- Database: `lapgiat`
--

-- --------------------------------------------------------

--
-- Table structure for table `judul_kegiatan`
--

CREATE TABLE `judul_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_judul` varchar(255) NOT NULL,
  `urutan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judul_kegiatan`
--

INSERT INTO `judul_kegiatan` (`id`, `nama_judul`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Pengaturan Lalu Lintas Jam Rawan Pagi', 1, NULL, NULL),
(2, 'Pengaturan Lalu Lintas Jam Rawan Sore', 2, NULL, NULL),
(3, 'Pengawasan Angkutan Umum', 3, NULL, NULL),
(4, 'Pengamanan Titik Kemacetan', 4, NULL, NULL),
(5, 'Monitoring Fasilitas Perlengkapan Jalan', 5, NULL, NULL),
(6, 'Pemantauan Arus Mudik Idul Fitri', 6, NULL, NULL),
(7, 'Pemantauan Arus Balik Idul Fitri', 7, NULL, NULL),
(8, 'Pemantauan Arus Natal dan Tahun Baru', 8, NULL, NULL),
(9, 'Operasi Ketupat Lodaya', 9, NULL, NULL),
(10, 'Operasi Lilin Lodaya', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lapgiat`
--

CREATE TABLE `lapgiat` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `lokasi_id` int(10) UNSIGNED DEFAULT NULL,
  `judul_kegiatan_id` int(10) UNSIGNED DEFAULT NULL,
  `latitude_user` decimal(10,8) DEFAULT NULL,
  `longitude_user` decimal(11,8) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `alamat_lengkap` text DEFAULT NULL,
  `jarak` float DEFAULT NULL,
  `kegiatan` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `waktu_laporan` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lapgiat`
--

INSERT INTO `lapgiat` (`id`, `pegawai_id`, `lokasi_id`, `judul_kegiatan_id`, `latitude_user`, `longitude_user`, `alamat`, `alamat_lengkap`, `jarak`, `kegiatan`, `foto`, `waktu_laporan`, `created_at`) VALUES
(4, 2, 1, NULL, -7.14855400, 108.00663800, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 146, 'lalu lintas normal', 'laporan_1778741189_2.jpg', '2026-05-14 13:46:30', '2026-05-14 06:46:30'),
(5, 2, 1, NULL, -7.14855400, 108.00663800, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 146, 'arus lalu lintas cukup padat', 'laporan_1778911764_2.jpg', '2026-05-16 13:09:25', '2026-05-16 06:09:25'),
(6, 2, 1, NULL, -7.14855400, 108.00663800, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 146, 'padat', 'laporan_1778915854_2.jpg', '2026-05-16 14:17:35', '2026-05-16 07:17:35'),
(7, 2, 1, NULL, -7.14853375, 108.00664700, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'normal', 'lapgiat_aghisti_2_20260517_150814.jpg', '2026-05-17 15:08:15', '2026-05-17 08:08:15'),
(9, 2, 1, NULL, -7.14852185, 108.00664856, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 142, 'lalu lintas sepi', 'lapgiat_aghisti_2_20260527_141137.jpg', '2026-05-27 14:11:38', '2026-05-27 07:11:38'),
(10, 4, 1, NULL, -7.14852185, 108.00664856, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 142, 'lalu lintas normal', 'lapgiat_caca_4_20260527_141233.jpg', '2026-05-27 14:12:34', '2026-05-27 07:12:34'),
(11, 2, 1, NULL, -7.14853375, 108.00664700, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'lalu lintas padat', 'lapgiat_aghisti_2_20260528_145407.jpg', '2026-05-28 14:54:10', '2026-05-28 07:54:10'),
(12, 3, 1, NULL, -7.14853375, 108.00664700, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'padatt', 'lapgiat_budi_3_20260528_152702.jpg', '2026-05-28 15:27:03', '2026-05-28 08:27:03'),
(13, 4, 1, NULL, -7.14852639, 108.00664796, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'lalu lintas normallllllll', 'lapgiat_caca_4_20260529_135540.jpg', '2026-05-29 13:55:41', '2026-05-29 06:55:41'),
(14, 4, 1, NULL, -7.14853257, 108.00664446, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'kosong', 'lapgiat_caca_4_20260601_162437.jpg', '2026-06-01 16:24:39', '2026-06-01 09:24:39'),
(15, 4, 1, NULL, -7.14853375, 108.00664700, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'padat', 'lapgiat_caca_4_20260601_162756.jpg', '2026-06-01 16:27:57', '2026-06-01 09:27:57'),
(16, 2, 1, NULL, -7.14852570, 108.00664638, 'Cieunteung', 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 143, 'lalu lintas lancar', 'lapgiat_aghisti_2_20260603_125103.jpg', '2026-06-03 12:51:05', '2026-06-03 05:51:05'),
(17, 2, 1, NULL, -7.14853551, 108.00664466, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 31, 'padat', 'lapgiat_aghisti_2_20260605_155127.jpg', '2026-06-05 15:51:28', '2026-06-05 08:51:28'),
(18, 2, 1, NULL, -7.14853551, 108.00664466, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 31, 'lalu lintas normal', 'lapgiat_aghisti_2_20260606_022818.jpg', '2026-06-06 02:28:19', '2026-06-05 19:28:19'),
(19, 2, 1, NULL, -7.14853568, 108.00664358, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 31, 'kecelakaan', 'lapgiat_aghisti_2_20260609_172209.jpg', '2026-06-09 17:22:11', '2026-06-09 10:22:11'),
(20, 2, 5, NULL, -7.14853375, 108.00664700, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 12062, 'darurat', 'lapgiat_aghisti_2_20260609_173417.jpg', '2026-06-09 17:34:19', '2026-06-09 10:34:19'),
(21, 2, 1, NULL, -7.14852185, 108.00664856, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 32, 'jjkkjkjk', 'lapgiat_aghisti_2_20260610_071549.jpg', '2026-06-10 07:15:50', '2026-06-10 00:15:50'),
(22, 2, 5, NULL, -7.14852570, 108.00664638, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 12063, 'kjkjkjkjk', 'lapgiat_aghisti_2_20260611_105059.jpg', '2026-06-11 10:51:01', '2026-06-11 03:51:01'),
(23, 2, 1, NULL, -7.14851300, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 33, 'klklkl', 'lapgiat_aghisti_2_20260623_164213.jpg', '2026-06-23 16:42:14', '2026-06-23 09:42:14'),
(24, 2, 1, NULL, -7.14851300, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 33, 'abdcde', 'lapgiat_aghisti_2_20260627_171946.jpg', '2026-06-27 17:19:47', '2026-06-27 10:19:47'),
(25, 2, 4, NULL, -7.19359800, 107.90377800, NULL, 'Jalan Merdeka, Haurpanggung, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44116, Indonesia', 35, 'hhhh', 'lapgiat_aghisti_2_20260629_115220.jpg', '2026-06-29 11:52:25', '2026-06-29 04:52:25'),
(26, 2, 1, 1, -7.14851300, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 33, 'Pengaturan arus lalu lintas di simpang 3 mayor samsu', 'lapgiat_aghisti_2_20260706_062335.jpg', '2026-07-06 06:23:36', '2026-07-05 23:23:36'),
(29, 2, 1, 2, -7.14851300, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 33, NULL, 'lapgiat_aghisti_2_20260711_210214.jpg', '0000-00-00 00:00:00', '2026-07-11 14:02:14'),
(37, 2, 1, 2, -7.14851878, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 33, 'lililli', 'lapgiat_aghisti_2_20260714_173807.jpg', '2026-07-14 17:38:08', '2026-07-14 10:38:08'),
(38, 5, 1, 2, -7.14851878, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 33, 'lp', 'lapgiat_bambang_5_20260714_173855.jpg', '2026-07-14 17:38:56', '2026-07-14 10:38:56'),
(39, 3, 1, 2, -7.14851300, 108.00665300, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 33, 'Melakukan pengaturan arus lalu lintas di persimpangan Simpang 3 Mayor Samsu pada jam sibuk pagi guna mengurai kepadatan kendaraan dan mencegah terjadinya kemacetan.', 'lapgiat_budi_3_20260714_173943.jpg', '2026-07-14 17:39:44', '2026-07-14 10:39:44'),
(40, 2, 11, 1, -7.14827300, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, Jawa, 44184, Indonesia', 93, 'Melakukan penertiban terhadap kendaraan yang berhenti sembarangan di bahu jalan kawasan Jalan Terusan Pembangunan,', 'lapgiat_anggi_2_20260715_075902.jpg', '2026-07-15 07:59:05', '2026-07-15 00:59:05'),
(41, 4, 11, 1, -7.14853200, 108.00657700, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 76, 'Melakukan pengaturan lalu lintas di ruas Jalan Terusan Pembangunan pada jam pagi untuk mengurai kepadatan kendaraan roda dua dan roda empat saat jam berangkat kerja dan sekolah.', 'lapgiat_cecep_4_20260715_081238.jpg', '2026-07-15 08:12:39', '2026-07-15 01:12:39'),
(42, 5, 11, 1, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 94, 'Melakukan penertiban terhadap kendaraan yang berhenti sembarangan di bahu jalan kawasan Jalan Terusan Pembangunan.', 'lapgiat_bambang_5_20260715_085819.jpg', '2026-07-15 08:58:20', '2026-07-15 01:58:20'),
(43, 3, 11, 1, -7.14853200, 108.00657700, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 76, 'pengaturan arus lalu lintas', 'lapgiat_budi_3_20260715_095533.jpg', '2026-07-15 09:55:37', '2026-07-15 02:55:37'),
(44, 5, 11, 3, -7.14827000, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 94, 'kakakak', 'lapgiat_bambang_5_20260715_202436.jpg', '2026-07-15 20:24:38', '2026-07-15 13:24:38'),
(45, 2, 11, 1, -7.14827000, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'macettttt', 'lapgiat_anggi_2_20260724_150935.jpg', '2026-07-24 15:09:37', '2026-07-24 08:09:37'),
(46, 2, 7, 1, -7.20254304, 107.88286604, NULL, 'Institut Pendidikan Indonesia Garut, 32, Jalan Pahlawan, Sukagalih, Tarogong Kidul, Garut, Jawa Barat, 44151, Indonesia', 60, 'hhyyy', 'lapgiat_anggi_2_20260725_103441.jpg', '2026-07-25 10:34:43', '2026-07-25 03:34:43'),
(47, 2, 7, 1, -7.20201504, 107.88375984, NULL, 'Institut Pendidikan Indonesia Garut, 32, Jalan Pahlawan, Sukagalih, Tarogong Kidul, Garut, Jawa Barat, 44151, Indonesia', 120, 'kjsjkk', 'lapgiat_anggi_2_20260727_104250.jpg', '2026-07-27 10:42:52', '2026-07-27 03:42:52'),
(48, 2, 11, 2, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'lalu lintas lancar', 'lapgiat_anggi_2_20260728_140833.jpg', '2026-07-28 14:08:36', '2026-07-28 07:08:36'),
(49, 2, 11, 3, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'koawoks', 'lapgiat_anggi_2_20260728_141413.jpg', '2026-07-28 14:14:14', '2026-07-28 07:14:14'),
(50, 5, 11, 2, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'kkokoko', 'lapgiat_bambang_5_20260728_142558.jpg', '2026-07-28 14:25:59', '2026-07-28 07:25:59'),
(51, 5, 11, 3, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'kkk', 'lapgiat_bambang_5_20260728_143302.jpg', '2026-07-28 14:33:03', '2026-07-28 07:33:03'),
(52, 5, 11, 1, -7.14826900, 108.00671400, NULL, 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', 23, 'kokl', 'lapgiat_bambang_5_20260728_143346.jpg', '2026-07-28 14:33:47', '2026-07-28 07:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_kerja`
--

CREATE TABLE `lokasi_kerja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  `alamat_lengkap` text NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL COMMENT 'dalam meter',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi_kerja`
--

INSERT INTO `lokasi_kerja` (`id`, `nama_lokasi`, `alamat_lengkap`, `latitude`, `longitude`, `radius`, `created_at`, `updated_at`) VALUES
(1, 'Simpang 3 Mayor Samsu /Musadaddiyah', 'Insitut Teknologi Garut, 1, Jalan Mayor Syamsu, Jayaraga, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44151, Indonesia', -7.20716391, 107.89572865, 100, '2026-01-22 08:22:32', '2026-07-15 01:17:46'),
(2, 'Simpang Lima', 'Bunderan Simpang Lima, Sukagalih, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44151, Indonesia', -7.19978485, 107.88792200, 100, '2026-03-09 02:18:07', '2026-07-14 13:38:27'),
(4, 'Jl. Terusan Pembangunan', 'Jalan Terusan Pembangunan, Pataruman, Tarogong Kidul, Garut, Jawa Barat, 44116, Indonesia', -7.20097700, 107.89343780, 100, '2026-05-05 04:33:10', '2026-07-14 13:39:08'),
(5, 'Simpang 4 Pedes', 'Jalan Cimanuk, Jayaraga, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44117, Indonesia', -7.20595581, 107.89275182, 100, '2026-06-03 09:34:17', '2026-07-15 01:18:14'),
(6, 'Bunderan Guntur', 'Pakuwon, Garut Kota, Pakuwon, Garut, Jawa Barat, 44117, Indonesia', -7.21162109, 107.90214842, 200, '2026-06-27 10:17:00', '2026-07-14 08:14:46'),
(7, 'IPI', 'Institut Pendidikan Indonesia Garut, 32, Jalan Pahlawan, Sukagalih, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44151, Indonesia', -7.20295416, 107.88322437, 150, '2026-07-09 14:53:29', '2026-07-09 14:53:29'),
(8, 'Depan Kantor Kejaksaan', 'Haurpanggung, Tarogong Kidul, Garut, Jawa Barat, Jawa, 44116, Indonesia', -7.19464631, 107.90374300, 100, '2026-07-14 08:11:08', '2026-07-14 08:11:08'),
(9, 'Bunderan Lewidaun', 'Haurpanggung, Tarogong Kidul, Garut, Jawa Barat, 44117, Indonesia', -7.20863545, 107.89911733, 200, '2026-07-14 08:14:13', '2026-07-14 08:14:13'),
(10, 'Gerbang Timur Pendopo', 'Jalan Kiansantang, Pakuwon, Garut Kota, Pakuwon, Garut, Jawa Barat, 44117, Indonesia', -7.21679314, 107.90189185, 100, '2026-07-14 08:17:54', '2026-07-14 08:17:54'),
(11, 'Mekarluyu', 'Mekarluyu, Sukawening, Garut, Jawa Barat, 44184, Indonesia', -7.14828510, 108.00692621, 100, '2026-07-14 13:42:03', '2026-07-15 13:28:54'),
(12, 'Simpang 4 Sukaregang', 'Jalan Jenderal Ahmad Yani, Kota Wetan, Garut Kota, Ciwalen, Garut, Jawa Barat, 44115, Indonesia', -7.21596381, 107.91487379, 200, '2026-07-15 13:27:54', '2026-07-15 13:27:54'),
(13, 'Bunderan SMKN 2 Garut', 'Bunderan STM Negeri, Jayaraga, Tarogong Kidul, Garut, Jawa Barat, 44116, Indonesia', -7.19020493, 107.90270645, 200, '2026-07-15 13:29:46', '2026-07-15 13:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `laporan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `user_id`, `laporan_id`, `judul`, `pesan`, `is_read`, `created_at`) VALUES
(1, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Bunderan Suci berhasil dikirimkan dan sedang diproses.', 1, '2026-06-11 03:51:01'),
(3, 2, NULL, 'Laporan Perlu Keterangan Tambahan', 'Laporan tanggal 11 Jun 2026 di Bunderan Suci memerlukan keterangan tambahan. Buka riwayat laporan untuk melengkapi.', 1, '2026-06-11 03:59:26'),
(4, 2, NULL, 'Laporan Disetujui', 'Laporan tanggal 14 May 2026 di Cieunteung telah disetujui.', 1, '2026-06-12 05:49:36'),
(5, 2, NULL, 'Laporan Disetujui', 'Laporan tanggal 09 Jun 2026 di Bunderan Suci telah disetujui.', 1, '2026-06-12 05:49:45'),
(6, 2, NULL, 'Laporan Disetujui', 'Laporan tanggal 28 May 2026 di Cieunteung telah disetujui.', 1, '2026-06-17 06:51:14'),
(7, 2, NULL, 'Laporan Perlu Keterangan Tambahan', 'Laporan tanggal 11 Jun 2026 di Bunderan Suci memerlukan keterangan tambahan. Buka riwayat laporan untuk melengkapi.', 1, '2026-06-17 06:52:15'),
(9, 2, NULL, 'Laporan Disetujui', 'Laporan tanggal 11 Jun 2026 di Bunderan Suci telah disetujui.', 1, '2026-06-17 07:18:26'),
(11, 2, NULL, 'Laporan Disetujui', 'Laporan tanggal 17 May 2026 di Cieunteung telah disetujui.', 1, '2026-06-20 04:55:06'),
(12, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-06-23 09:42:15'),
(13, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-06-27 10:19:47'),
(14, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Dishub Kabupaten Garut berhasil dikirimkan dan sedang diproses.', 1, '2026-06-29 04:52:25'),
(15, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-05 23:23:36'),
(16, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-06 01:14:14'),
(17, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-11 02:03:06'),
(18, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-11 14:02:14'),
(19, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 06:24:12'),
(20, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 06:52:40'),
(21, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 07:00:12'),
(22, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 07:08:37'),
(23, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 07:17:20'),
(24, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-12 07:32:16'),
(25, 4, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 0, '2026-07-12 09:44:34'),
(26, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-14 10:38:08'),
(27, 5, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-14 10:38:56'),
(28, 3, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Cieunteung berhasil dikirimkan dan sedang diproses.', 1, '2026-07-14 10:39:44'),
(29, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-15 00:59:05'),
(30, 4, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Simpang 4 Sukaregang berhasil dikirimkan dan sedang diproses.', 0, '2026-07-15 01:12:39'),
(31, 5, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Jl. Terusan Pembangunan berhasil dikirimkan dan sedang diproses.', 1, '2026-07-15 01:58:20'),
(32, 1, NULL, 'Laporan Baru Masuk', 'Bambang telah mengirimkan laporan kegiatan di Jl. Terusan Pembangunan.', 0, '2026-07-15 01:58:20'),
(33, 3, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Jl. Terusan Pembangunan berhasil dikirimkan dan sedang diproses.', 1, '2026-07-15 02:55:37'),
(34, 1, NULL, 'Laporan Baru Masuk', 'Budi Santoso telah mengirimkan laporan kegiatan di Jl. Terusan Pembangunan.', 0, '2026-07-15 02:55:37'),
(35, 5, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Jl. Terusan Pembangunan berhasil dikirimkan dan sedang diproses.', 1, '2026-07-15 13:24:38'),
(37, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-24 08:09:38'),
(39, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di IPI berhasil dikirimkan dan sedang diproses.', 1, '2026-07-25 03:34:43'),
(41, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di IPI berhasil dikirimkan dan sedang diproses.', 1, '2026-07-27 03:42:52'),
(43, 2, NULL, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-28 07:08:37'),
(44, 2, 49, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-28 07:14:14'),
(45, 1, 49, 'Laporan Baru Masuk', 'Anggi Putra telah mengirimkan laporan kegiatan di Mekarluyu.', 1, '2026-07-28 07:14:14'),
(46, 5, 50, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-28 07:25:59'),
(47, 1, 50, 'Laporan Baru Masuk', 'Bambang telah mengirimkan laporan kegiatan di Mekarluyu.', 1, '2026-07-28 07:25:59'),
(48, 5, 51, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-28 07:33:03'),
(49, 1, 51, 'Laporan Baru Masuk', 'Bambang telah mengirimkan laporan kegiatan di Mekarluyu.', 0, '2026-07-28 07:33:03'),
(50, 5, 52, 'Laporan Berhasil Dikirim', 'Laporan kegiatan di Mekarluyu berhasil dikirimkan dan sedang diproses.', 1, '2026-07-28 07:33:47'),
(51, 1, 52, 'Laporan Baru Masuk', 'Bambang telah mengirimkan laporan kegiatan di Mekarluyu.', 0, '2026-07-28 07:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `user_id`, `nip`, `nama`, `jenis_kelamin`, `no_hp`, `alamat`, `email`, `foto`, `created_at`, `updated_at`) VALUES
(1, 1, '198765432109876543', 'Administrator Sistem', 'L', '081234567890', 'Kantor Dinas', 'admin@lapgiat.go.id', '1768998249_WhatsApp Image 2025-12-25 at 12.59.13.jpeg', '2026-01-21 11:38:22', '2026-01-21 05:24:09'),
(2, 2, '333999333999333999', 'Anggi Putra', 'L', '085670999868', 'Karangpawitan', 'ghistiw@gmail.com', '1784077881_user.jpg', '2026-01-21 05:26:10', '2026-07-15 01:11:21'),
(3, 3, '123456789101112131', 'Budi Santoso', 'L', '085551124232', 'Kadungora', 'bud@gmail.com', '1777972525_WhatsApp Image 2025-12-25 at 12.21.47.jpeg', '2026-05-05 02:15:25', '2026-05-05 02:15:25'),
(4, 4, '111111111111111111', 'Cecep Budiman', 'L', '81911758556', 'Garut Kota', 'ca@gmail.com', NULL, '2026-05-10 06:35:41', '2026-07-14 13:25:55'),
(5, 5, '191919191919191919', 'Bambang', 'L', '8765093387', 'Leles', 'bam2@gmail.com', NULL, '2026-06-03 06:50:56', '2026-07-14 13:27:13'),
(6, 6, '678678678678678888', 'Vika Ayu', 'P', '85772877717', 'Banyuresmi', 'vikaa18@gmail.com', '1780497948_IMG-20240303-WA0039.jpg', '2026-06-03 14:45:48', '2026-07-14 13:26:24'),
(7, 7, '191919191919191910', 'Ghisti', 'P', '085551124232', 'Kadungora', 'sumiati.da1971@gmail.com', NULL, '2026-07-13 13:09:58', '2026-07-14 13:26:53'),
(8, 8, '018018018018101801', 'Irwan Hermawan', 'L', '8765432109', 'Garut', 'irwan@gmail.com', NULL, '2026-07-14 13:30:29', '2026-07-15 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$dF4qKVCuZHWCJW9e6ariT.42oSTmuQKXiXyYG7S.hKufSXtaGgEOW', 'admin', '2026-01-21 10:15:46', '2026-01-21 10:15:46'),
(2, 'ghisti', '$2y$12$7i6DNmgfWK0Xs6PngShbEeLmpVfut3gCQPi63FPAMhBzNnn7/vtzu', 'user', '2026-01-21 05:26:09', '2026-05-04 06:15:31'),
(3, 'Budii', '$2y$12$sOGfqAXleT4JfF6Phl7PgOjLZNdU4gEo6ECzfiVTQc.gaj671d/J.', 'user', '2026-05-05 02:15:25', '2026-05-05 02:15:25'),
(4, 'pgw_11111111111111', NULL, 'user', '2026-05-10 06:35:41', '2026-05-10 06:35:41'),
(5, '191919191919191919', NULL, 'user', '2026-06-03 06:50:56', '2026-06-03 06:50:56'),
(6, '678678678678678888', '', 'user', '2026-06-03 14:45:48', '2026-06-03 23:06:50'),
(7, '191919191919191910', '', 'user', '2026-07-13 13:09:58', '2026-07-13 13:09:58'),
(8, '018018018018101801', '', 'user', '2026-07-14 13:30:29', '2026-07-14 13:30:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `judul_kegiatan`
--
ALTER TABLE `judul_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lapgiat`
--
ALTER TABLE `lapgiat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lapgiat_pegawai` (`pegawai_id`),
  ADD KEY `fk_lapgiat_lokasi` (`lokasi_id`),
  ADD KEY `fk_lapgiat_judul` (`judul_kegiatan_id`);

--
-- Indexes for table `lokasi_kerja`
--
ALTER TABLE `lokasi_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `fk_pegawai_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `judul_kegiatan`
--
ALTER TABLE `judul_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lapgiat`
--
ALTER TABLE `lapgiat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `lokasi_kerja`
--
ALTER TABLE `lokasi_kerja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lapgiat`
--
ALTER TABLE `lapgiat`
  ADD CONSTRAINT `fk_lapgiat_judul` FOREIGN KEY (`judul_kegiatan_id`) REFERENCES `judul_kegiatan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lapgiat_lokasi` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasi_kerja` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lapgiat_pegawai` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_pegawai_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
