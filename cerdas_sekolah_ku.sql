-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2026 at 01:47 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cerdas_sekolah_ku`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('hadir','alfa','sakit','izin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat_golongan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peg_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuptk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_jalan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kab_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nsm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `madrasah_tempat_tugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_tugas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suku_dinas_pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_studi_pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapel_diampu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_sertifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bidang_studi_sertifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_peserta_sertifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_sertifikat_pendidik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sertifikasi_kedua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_handphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `nama`, `nip`, `pangkat_golongan`, `tempat_lahir`, `tanggal_lahir`, `nik`, `peg_id`, `npk`, `nuptk`, `alamat_jalan`, `alamat_kelurahan`, `alamat_kecamatan`, `alamat_kab_kota`, `status_pegawai`, `npsn`, `nsm`, `madrasah_tempat_tugas`, `kecamatan_tugas`, `suku_dinas_pendidikan`, `pendidikan_terakhir`, `bidang_studi_pendidikan`, `mapel_diampu`, `status_sertifikasi`, `bidang_studi_sertifikasi`, `nomor_peserta_sertifikasi`, `nomor_sertifikat_pendidik`, `sertifikasi_kedua`, `no_handphone`, `email`, `keterangan`, `created_at`, `updated_at`) VALUES
('004d9bce-ef96-4065-bc88-56984b3ec2ce', 'Sri Surahmi, S.Pd.I', NULL, NULL, 'Jakarta', '1978-07-01', '3174104107780001', '20102795178001', '8780710427077', NULL, 'Jl. Petukangan Utara RT 006/010', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '087883557131', 'sridafi01@gmail.com', NULL, '2026-03-19 21:28:01', '2026-03-19 21:28:01'),
('0d9660ea-540d-43b8-9953-5081946df150', 'Ali Nurdin, S.Pd.I', NULL, NULL, 'Tangerang', '1989-05-13', '3674041305890005', '20102876189001', '5891530135082', NULL, 'Jl. Cipunegara II B RT 002/008', 'Cipayung', 'Ciputat', 'Kota Tangerang Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '081287162920', 'saidalighofur@gmail.com', NULL, '2026-03-19 21:28:04', '2026-03-19 21:28:04'),
('14afc0f8-89ab-47eb-8e0d-d603d7e0f687', 'Ellah, S.Pd.I', NULL, 'III-b', 'Jakarta', '1979-06-02', '3174104206780003', '91000079114718', '2790820056049', '4934757660210022', 'Jl. H. Muchtar Raya GG. Pitung RT 005/011', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Sudah', 'Guru Kelas', '13016302820343', '2011302802290', 'Tidak', '081381726405', 'ellahsabrina20@gmail.com', NULL, '2026-03-19 21:28:00', '2026-03-19 21:28:00'),
('2a256175-4817-4917-a540-fd50286a1eb7', 'Siti Rahma, S.Pd.I', NULL, NULL, 'Jakarta', '1989-04-17', '3174105704890002', '91000089125455', '0891470034035', '6749767669210012', 'Jl. Ulujami Raya Gg. Kramat No. 13 RT 016/004', 'Ulujami', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'TIK', 'Belum', NULL, NULL, NULL, 'Tidak', '08567005342', 'sitirahmaoris@gmail.com', NULL, '2026-03-19 21:28:01', '2026-03-19 21:28:01'),
('2ddb2b9c-df88-4abf-af88-fe9b6b46b6bb', 'Aisyah, S.Pd.I', '196508172005012005', 'III-c', 'Padang', '1965-08-17', '3174105708650001', '91000065102880', '0651270048080', '2149743644300113', 'Jl. H. Ilyas No. 30 RT 002/010', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Sudah', 'Guru Kelas', '08016302720019', '010802700288', 'Tidak', '081806418739', 'aisyah.alhaq1708@gmail.com', NULL, '2026-03-19 21:27:59', '2026-03-19 21:27:59'),
('31e976fa-45b3-4b63-8892-1953c4ccdcd8', 'Dewi Lestari, S.Pd', NULL, NULL, 'Surabaya', '1990-02-20', '3175032002900003', NULL, NULL, NULL, 'Jl. Jatinegara Barat No. 8 RT 001/RW 006', 'Cipinang Besar Selatan', 'Jatinegara', 'Jakarta Timur', 'GTY', '60710012', '111231710012', 'MI Al-Haq Jakarta', 'Jatinegara', 'Sudin Pendidikan Jakarta Timur', 'S1', 'Pendidikan IPA', 'IPA', 'Belum', NULL, NULL, NULL, NULL, '081356789012', 'dewi.lestari@mialhaqqjakarta.sch.id', NULL, NULL, NULL),
('3805ff7d-7315-4309-8d59-61407dc5ee09', 'Siti Aminah, S.Pd.I', '198501012010012001', 'III/a', 'Jakarta', '1985-01-01', '3175014501850001', NULL, NULL, '4533759660300052', 'Jl. Cipinang Besar Selatan No. 12 RT 005/RW 003', 'Cipinang Besar Selatan', 'Jatinegara', 'Jakarta Timur', 'PNS', '60710012', '111231710012', 'MI Al-Haq Jakarta', 'Jatinegara', 'Sudin Pendidikan Jakarta Timur', 'S1', 'PGMI', 'Matematika', 'Sudah', 'Guru Kelas MI', '19850101201001', 'SP.2015.001234', NULL, '081234567890', 'siti.aminah@mialhaqqjakarta.sch.id', NULL, NULL, NULL),
('3c58f93b-615f-4668-87c2-cc98de9e80c2', 'Muhammad Irsyad, S.HI', NULL, NULL, 'Jakarta', '1986-10-22', '3174102210860004', '20102795186001', NULL, NULL, 'Jl. H. Rohimin RT 017/003', 'Ulujami', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Hukum Syariah/ Hukum Islam', 'BTQ dan Tahsin/Tahfidz', 'Belum', NULL, NULL, NULL, 'Tidak', '089692610894', 'irsyadalbantani86@gmail.com', NULL, '2026-03-19 21:28:03', '2026-03-19 21:28:03'),
('3de47936-fe42-4ece-9825-0fb3907de9d8', 'Dra. Dian Kuswati', '196911052005012002', 'III-d', 'Jakarta', '1969-11-05', '3174054511690007', '91000069111038', '4694950011083', '1437747649210103', 'Jl. Kebon Mangga No. 2 RT 007/007', 'Cipulir', 'Kebayoran Lama', 'Kota Jakarta Selatan', 'PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Pend Luar Sekolah', 'Guru Kelas', 'Sudah', 'Guru Kelas', '09016302820017', '010902802480', 'Tidak', '081315408550', 'kuswatidian@gmail.com', NULL, '2026-03-19 21:27:59', '2026-03-19 21:27:59'),
('4448a695-989d-48f0-a5fa-3531789c9fb2', 'Marliah, S.Pd.I', NULL, NULL, 'Jakarta', '1981-11-07', '3174104711810010', '20102876181001', '2814270231006', NULL, 'Jl. Mawar III RT 004/005 Bintaro', 'Bintaro', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '081311990581', 'marliahlia81@gmail.com', NULL, '2026-03-19 21:28:04', '2026-03-19 21:28:04'),
('462b5b26-2c65-4561-810e-f3f1c1c43b13', 'Ayu Sukmawati Putri, S.Pd.I', NULL, NULL, 'Jakarta', '1993-08-04', '3174104408930001', '20102795193001', '6930240328067', NULL, 'Jl. H. Sulaiman No. 26 RT 002/001 Petukangan Utara', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'PGSD', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '083806396123', 'ayusukmawatip@gmail.com', NULL, '2026-03-19 21:28:02', '2026-03-19 21:28:02'),
('486987c6-3d8e-4445-9f18-f64b6bad2143', 'Marlinah, S.Pd.', NULL, 'III-a', 'Jakarta', '1980-05-09', '3671134905800002', '91000080137999', '2800490075095', '5841758660210102', 'Jl. AMD X No. 39 RT 003/009', 'Kreo', 'Larangan', 'Kota Tangerang', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Guru Kelas', 'Sudah', 'Guru Kelas', '14016302820565', '2011402802067', 'Tidak', '081385956793', 'inabi021217@gmail.com', NULL, '2026-03-19 21:28:00', '2026-03-19 21:28:00'),
('66a50441-8e55-4072-9dd2-ecbe96dd3d71', 'Devy Angraini, S.Hum', NULL, NULL, 'Jakarta', '1997-12-24', '3174106412970001', '20102795197001', '8976940202064', NULL, 'Jl. Kedaung III RT 011/011 Kel. Petukangan Utara', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Bahasa dan Sastra Arab', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '089669952639', 'devyangraini97@gmail.com', NULL, '2026-03-19 21:28:03', '2026-03-19 21:28:03'),
('73eddbac-8b17-47b7-82bf-144cdd025fac', 'Drs. Bunyani Hasbi', NULL, 'IV-a', 'Tangerang', '1974-05-05', '3671130505740009', '91000074107577', '3740350045072', '7837752653110032', 'Jl. AMD X No. 39 RT 003/009', 'Kreo', 'Larangan', 'Kota Tangerang', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Bahasa Arab', 'Bahasa Arab', 'Sudah', 'Bahasa Arab', '13016323920342', '2011323904186', 'Tidak', '081219606680', '4bhasbi@gmail.com', NULL, '2026-03-19 21:27:58', '2026-03-19 21:27:58'),
('78a70126-a3d7-4d9d-8ffc-479bdeba4235', 'Budi Santoso, S.Pd', NULL, NULL, 'Bandung', '1987-03-15', '3175021503870002', NULL, NULL, '4547761662200043', 'Jl. Kebon Pala No. 5 RT 002/RW 004', 'Cipinang Besar Selatan', 'Jatinegara', 'Jakarta Timur', 'GTY', '60710012', '111231710012', 'MI Al-Haq Jakarta', 'Jatinegara', 'Sudin Pendidikan Jakarta Timur', 'S1', 'Pendidikan Matematika', 'Matematika', 'Belum', NULL, NULL, NULL, NULL, '081298765432', 'budi.santoso@mialhaqqjakarta.sch.id', NULL, NULL, NULL),
('7cc21b05-668b-466d-9eb7-131610d88c7c', 'Muhammad Zacky Dhiaulhaq Al Munawwar', NULL, NULL, 'Jakarta', '2002-12-17', '3671131712020001', '20102795102001', '1025070002158', NULL, 'Jl. AMD X No. 39 RT 003/009', 'Kreo', 'Larangan', 'Kota Tangerang', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Teknik Sistem Informasi', 'Bahasa Arab', 'Belum', NULL, NULL, NULL, 'Tidak', '082128908424', 'shefazacky01@gmail.com', NULL, '2026-03-19 21:28:02', '2026-03-19 21:28:02'),
('a5c54735-2bd9-4af0-9501-09e59ee8b716', 'Ahmad Murtadlo, S.Pd.', NULL, NULL, 'Nganjuk', '1997-08-26', '3518082608970001', '20102795197002', NULL, NULL, 'Jl. A Yani RT 001/001', 'Pelem', 'Kertosono', 'Nganjuk', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Ilmu Olahraga', 'PJOK', 'Belum', NULL, NULL, NULL, 'Tidak', '085748247347', 'ahmadmurtadlo757@gmail.com', NULL, '2026-03-19 21:28:03', '2026-03-19 21:28:03'),
('aaf7ab5f-209c-4333-b3c9-33a76fe71f3c', 'Dra. Jamilah', NULL, NULL, 'Jakarta', '1964-04-04', '3174104404640006', '91000064118214', '6640140034010', '7736742645210012', 'Jl. Masjid Darul Falah RT 013/003', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Sejarah Kebudayaan Islam', 'Sudah', 'SKI', '13016323820341', '2011323804040', 'Tidak', '081584542355', 'jamilahhukmi15@gmail.com', NULL, '2026-03-19 21:28:00', '2026-03-19 21:28:00'),
('bc2b20d0-f8de-46ac-8a7e-cc96b73dc962', 'Darus, S.Pd.I', '196105122007011013', 'III-a', 'Jakarta', '1961-05-12', '3174101205610001', '91000061105471', '3611520015089', '7844739642110032', 'Jl. Palem Raya No. 24 B RT 005/008', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'Tarbiyah', 'Fiqih', 'Sudah', 'Fiqih', '13016323720497', '2011323704496', 'Tidak', '081310196492', 'darussomad1205@gmail.com', NULL, '2026-03-19 21:27:58', '2026-03-19 21:27:58'),
('bd9a7572-ccb2-4496-9021-cef386f6b4bd', 'Chairudin, A.Ma.', '197109172005011005', 'II-d', 'Jakarta', '1971-09-17', '3671061709710002', '91000071107759', '7711970019030', '8249749652200013', 'Jl. H. Yusuf No. 21 RT 002/010', 'Peninggilan', 'Ciledug', 'Kota Tangerang', 'PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'D2', 'PGSD', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '08568449306', 'rudinchairudin1709@gmail.com', NULL, '2026-03-19 21:27:58', '2026-03-19 21:27:58'),
('dd8eb630-301e-4232-a2e6-330603224fb0', 'Gunawan, S.Pd.', NULL, 'III-a', 'Jakarta', '1982-12-10', '3174101012820005', '91000082125444', '9825900012094', '6542760661110023', 'Jl. SDN 05 RT 002/011', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'S1', 'PKn', NULL, 'Sudah', 'Guru Kelas', '14016302820621', '2011402802096', 'Tidak', '0895342656892', 'gunawan.iwan102@gmail.com', NULL, '2026-03-19 21:27:57', '2026-03-19 21:27:57'),
('ebd2b29a-6a0a-4d13-a11c-940df84d9bac', 'Iin Marlinah', NULL, NULL, 'Jakarta', '1987-11-01', '3173084111870001', '91000087120555', '8874810041038', '1433765667210063', 'Jl. SDN 05 RT 002/011', 'Petukangan Utara', 'Pesanggrahan', 'Kota Jakarta Selatan', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'SMK', 'IPS', 'Guru Kelas', 'Belum', NULL, NULL, NULL, 'Tidak', '083893338789', 'kbj5363506@gmail.com', NULL, '2026-03-19 21:28:01', '2026-03-19 21:28:01'),
('f233605e-6874-4b0e-af96-3bc2780bd788', 'Syifa Fauziah', NULL, NULL, 'Tangerang', '2001-10-19', '3671065910010001', '20102795101001', '2015090000162', NULL, 'Gg. H. Umar RT 006/003', 'Parung Serab', 'Ciledug', 'Kota Tangerang', 'Non PNS', '69894606', '111231740019', 'MI AL HAQ', 'Pesanggrahan', 'Jakarta Selatan', 'SMA', 'PGSD', 'Bhs. Inggris dan PLBJ', 'Belum', NULL, NULL, NULL, 'Tidak', '087781257190', 'thisissyizi@gmail.com', NULL, '2026-03-19 21:28:02', '2026-03-19 21:28:02');

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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` int NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tingkat`, `nama_kelas`, `guru_id`, `created_at`, `updated_at`) VALUES
('0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 2, '2B', NULL, NULL, NULL),
('403fded1-66fa-4df2-b163-ceeca8b6d322', 4, '4B', NULL, NULL, NULL),
('6f250fcf-99ca-4410-86a8-d3ec311d5af7', 2, '2A', '31e976fa-45b3-4b63-8892-1953c4ccdcd8', NULL, NULL),
('908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 6, '6A', NULL, NULL, NULL),
('abf5b5de-32fa-4a67-b517-e9ca9d77543f', 1, '1B', '78a70126-a3d7-4d9d-8ffc-479bdeba4235', NULL, NULL),
('b2d49c61-adbc-40e9-b08c-0374810ab0f1', 3, '3A', NULL, NULL, NULL),
('caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 1, '1A', '3805ff7d-7315-4309-8d59-61407dc5ee09', NULL, NULL),
('d6ed497d-688b-4943-ad0e-8e4f3feb0434', 5, '5A', NULL, NULL, NULL),
('dedb4ef3-2d18-4948-a5b1-29954854a64f', 3, '3B', NULL, NULL, NULL),
('e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 4, '4A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajarans`
--

CREATE TABLE `mata_pelajarans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_pelajarans`
--

INSERT INTO `mata_pelajarans` (`id`, `kode`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
('18e6e325-d110-47c8-acea-35a2fd9bcf71', 'IPS', 'Ilmu Pengetahuan Sosial', 'Pelajaran IPS', NULL, NULL),
('2a5b92d0-3bb0-421f-8a87-9515789d4fbc', 'IPA', 'Ilmu Pengetahuan Alam', 'Pelajaran IPA', NULL, NULL),
('81f9a387-df79-46cd-ab27-a36d96e26720', 'MTK', 'Matematika', 'Pelajaran Matematika', NULL, NULL),
('d26c6d14-355c-465e-b402-01cb0c952c53', 'AGM', 'Pendidikan Agama Islam', 'Pelajaran Agama Islam', NULL, NULL),
('db11409c-4636-4a56-92f2-26c3c7ee46d8', 'PKN', 'Pendidikan Kewarganegaraan', 'Pelajaran PKn', NULL, NULL),
('eb12b64b-ba6f-458b-b709-fad86f0cb0ca', 'BIN', 'Bahasa Indonesia', 'Pelajaran Bahasa Indonesia', NULL, NULL);

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
(4, '2026_03_17_000001_create_gurus_table', 1),
(5, '2026_03_17_000002_create_tahun_ajarans_table', 1),
(6, '2026_03_17_000003_create_semesters_table', 1),
(7, '2026_03_17_000004_create_kelas_table', 1),
(8, '2026_03_17_000005_create_siswas_table', 1),
(9, '2026_03_17_000006_create_mata_pelajarans_table', 1),
(10, '2026_03_17_000007_create_pengajaran_gurus_table', 1),
(11, '2026_03_17_000008_create_absensis_table', 1),
(12, '2026_03_17_000009_create_nilais_table', 1),
(13, '2026_03_17_135216_create_personal_access_tokens_table', 1),
(14, '2026_03_18_053727_add_must_change_password_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_pelajaran_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tugas` int NOT NULL DEFAULT '0',
  `uts` int NOT NULL DEFAULT '0',
  `uas` int NOT NULL DEFAULT '0',
  `rata_rata` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pengajaran_gurus`
--

CREATE TABLE `pengajaran_gurus` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_pelajaran_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajaran_gurus`
--

INSERT INTO `pengajaran_gurus` (`id`, `guru_id`, `kelas_id`, `mata_pelajaran_id`, `semester_id`, `created_at`, `updated_at`) VALUES
('019d4929-4ccf-7320-9032-1e61c3861059', '7cc21b05-668b-466d-9eb7-131610d88c7c', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'd26c6d14-355c-465e-b402-01cb0c952c53', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', '2026-04-01 06:08:56', '2026-04-01 06:08:56'),
('019d4932-39b3-7143-b668-45f56543532f', '7cc21b05-668b-466d-9eb7-131610d88c7c', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'db11409c-4636-4a56-92f2-26c3c7ee46d8', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', '2026-04-01 06:18:41', '2026-04-01 06:18:41'),
('21b11621-78b7-4ff4-8f3c-745408b60aa5', '31e976fa-45b3-4b63-8892-1953c4ccdcd8', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'db11409c-4636-4a56-92f2-26c3c7ee46d8', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL),
('50525d2a-e8eb-42ed-a9b6-aeeed9c984cc', '78a70126-a3d7-4d9d-8ffc-479bdeba4235', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', '18e6e325-d110-47c8-acea-35a2fd9bcf71', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL),
('532fc9d4-85e2-4d53-a836-cbe66bbd2378', '3805ff7d-7315-4309-8d59-61407dc5ee09', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', '81f9a387-df79-46cd-ab27-a36d96e26720', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL),
('a112e866-a902-4778-bb40-677291df32eb', '78a70126-a3d7-4d9d-8ffc-479bdeba4235', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', '81f9a387-df79-46cd-ab27-a36d96e26720', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL),
('ef902512-d072-4259-a02a-418120ce844a', '31e976fa-45b3-4b63-8892-1953c4ccdcd8', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', '2a5b92d0-3bb0-421f-8a87-9515789d4fbc', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL),
('f7cf84fd-37bd-417f-9a4b-4c74108921ab', '3805ff7d-7315-4309-8d59-61407dc5ee09', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'eb12b64b-ba6f-458b-b709-fad86f0cb0ca', '71e621d6-bca3-49b7-9cc4-9f26b78c668c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ajaran_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `nama`, `tahun_ajaran_id`, `aktif`, `created_at`, `updated_at`) VALUES
('71e621d6-bca3-49b7-9cc4-9f26b78c668c', 'Semester 2 (Genap)', 'f8646211-f0b4-41c4-a243-a489d03ce092', 1, NULL, NULL),
('a7acb362-ed2a-487c-bdac-b27bf58a38a8', 'Semester 1 (Ganjil)', 'f8646211-f0b4-41c4-a243-a489d03ce092', 0, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif',
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kebutuhan_khusus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_kip_pip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah_kandung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu_kandung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `kelas_id`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `umur`, `status`, `jenis_kelamin`, `alamat`, `no_telepon`, `kebutuhan_khusus`, `disabilitas`, `nomor_kip_pip`, `nama_ayah_kandung`, `nama_ibu_kandung`, `nama_wali`, `created_at`, `updated_at`) VALUES
('004ca9ff-581b-474e-aa2d-ae49da5fd15b', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'PRIGEL PANGAYU WIJAYA', '3186511822', '3671135212180007', 'WONOGIRI', '2018-12-12', '6 th, 9 bln', 'Aktif', 'Perempuan', 'Jl. H. Majuk No. 113 LARANGAN UTARA, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6282257022727', 'Tidak Ada', 'Tidak Ada', NULL, 'AJI WIJAYA', 'TIAS NINGSIH', 'AJI WIJAYA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('004da5f6-fcc5-4df1-ae37-54f4ae331b2c', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ABDUL MUIS', '3131939235', '3327118210137008', 'KARAWANG', '2013-05-20', '12 th, 4 bln', 'Aktif', 'Perempuan', 'Jl. H. Sakim RT 010/011 , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422998', 'Tidak Ada', 'Tidak Ada', NULL, 'HAMIM BAITKA', 'MULYANIH', NULL, '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('0081e7f1-e5d1-4eb9-ad13-00cd43b8b384', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ALIF FATUL AKMAL', '3178279002', '3328070410170002', 'TEGAL', '2017-10-03', '8 th, 0 bln', 'Aktif', 'Laki-laki', 'Dukuhbangsa DUKUHBANGSA, JATINEGARA, TEGAL, JAWA TENGAH, 52473, 52473', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMAD ERIK', 'DEWI NUR AZIZAH', 'MUHAMAD ERIK', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('01b0ece3-c953-4023-a431-6a94f8e4e57d', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'TALITA SYAFA NURAFIFAH', '3142388564', '3305184105140002', 'KEBUMEN', '2014-05-01', '11 th, 5 bln', 'Aktif', 'Perempuan', 'SAMPANG RT.004/001 SAMPANG, SEMPOR, KEBUMEN, JAWA TENGAH, 54421, 54421', '6283899286488', 'Tidak Ada', 'Tidak Ada', NULL, 'GITO', 'WIWIN NUSIANTI', 'GITO', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('02376a5c-1432-4179-a777-0f12c35f528f', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'MUHAMAD SUANDI', '0145413420', '3601330509150001', 'PANDEGLANG', '2015-09-04', '10 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. RADI 5 GG. MAKAM RT 002/008 KREO LARANGAN KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6282310807478', 'Tidak Ada', 'Tidak Ada', NULL, 'SUKARDI', 'SITI NURWANTI', 'SUKARDI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('02c28d90-be63-4f44-9b9a-49e070e48b5b', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'HAFIZA KHAIRA LUBNA', '3171451125', '3174106708170004', 'TANGERANG', '2017-08-26', '8 th, 1 bln', 'Aktif', 'Perempuan', 'Jl. H. Yamin NO. 37 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281286072697', 'Tidak Ada', 'Tidak Ada', NULL, 'Arif Sumaryanto', 'SISKA TRI ANDARI', 'Arif Sumaryanto', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('032207d1-95bf-4cf3-bf6d-8be8d2935b2e', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ALEENA KEISHA AZZAHRA', '3134081405', '3174106809131002', 'JAKARTA', '2013-09-27', '12 th, 0 bln', 'Aktif', 'Perempuan', 'Jl. H. Muchtar Raya Gg. Bungur RT 003/011 No. 6 , , , , 12260, 12260', '6283870422930', 'Tidak Ada', 'Tidak Ada', NULL, 'GETUT UTOMO', 'JUARIAH', 'GETUT UTOMO', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('03f025d3-6c5f-4752-a487-8e3e55193758', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ALFIAN ANDRIANSYAH', '3140883044', '3173053009141010', 'JAKARTA', '2014-09-30', '11 th, 0 bln', 'Aktif', 'Laki-laki', 'KELAPA DUA RT 002/006 KELAPA DUA, KEBON JERUK, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11550, 11550', '6287872524696', 'Tidak Ada', 'Tidak Ada', NULL, 'RISWANTO', 'ISROH PRIHATIN', 'RISWANTO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('054cceac-bf27-4880-9dd0-dca1ed0ec57f', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'FITRIANA PUTRI ANGGRAENI', '0149232080', '3301125903140001', 'CILACAP', '2014-03-18', '11 th, 6 bln', 'Aktif', 'Perempuan', 'BABAKAN RT 07 RW 02 BABAKAN, KARANGPUCUNG, CILACAP, JAWA TENGAH, 53255, 53255', NULL, 'Tidak Ada', 'Tidak Ada', '33011221016900', 'SOFYAN FITRIANA', 'ICE', 'SOFYAN FITRIANA', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('07a416e1-2dd3-4901-a745-7cf4cacd37f8', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'SAKILA PERMATA SUSANTI', '3144309950', '3671135612140002', 'TANGERANG', '2014-12-16', '10 th, 9 bln', 'Aktif', 'Perempuan', 'KP. BLOK WARENG LARANGAN SELATAN, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6281383070579', 'Tidak Ada', 'Tidak Ada', NULL, 'OTONG CARKIWA', 'IRNA SUSANTI', 'OTONG CARKIWA', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('07aa2057-533a-472e-8f5c-d3dfaf255c80', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'FAREL ALDESTA UTRA', NULL, NULL, 'JAKARTA', '2016-12-16', '8 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. DUKU RT 002/004 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'JOHANDI', 'DEFI FITRIYANI AGUSTIAN', 'JOHANDI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('07eeb649-8d3e-4708-9aa9-9072595e7bdd', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'ALFI HUSNI FAADIYAH', '3178664047', '3306054408170001', 'PURWOREJO', '2017-08-04', '8 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. SAKIM  I RT 010/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'BUDI HARTOYO', 'RESMININGIH', 'BUDI HARTOYO', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('08c2a83f-d8e3-49d7-9a1c-0dc0db5b45ea', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'ABU DZAR AL- GHIFARI', '3160914169', '3173052110160006', 'JAKARTA', '2016-10-21', '8 th, 11 bln', 'Aktif', 'Laki-laki', 'Jln AMD X GG H SIMAN RT 013/ 011 no 45 A PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6288211070945', 'Tidak Ada', 'Tidak Ada', NULL, 'RAHMAT WIJAYA', 'NORMA YUNITA', 'RAHMAT WIJAYA', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('08c5b802-fc26-4420-8bc8-2109ab606dc4', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'DENDY NUGROHO', '3143414237', '3312191712140001', 'TANGERANG', '2014-12-17', '10 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SUPARDI', 'SUWARNI', 'SUPARDI', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('0955a5d9-150e-425a-bb74-e663a081f27c', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ABDULLAH IBNU PRAMONO', '3130161515', '3174101811131002', 'JAKARTA', '2013-11-17', '11 th, 10 bln', 'Aktif', 'Laki-laki', 'Jl. AMD X RT 013/001 Blok C No. 88A , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422825', 'Tidak Ada', 'Tidak Ada', NULL, 'ANDI PRAMONO', 'EPI SUSMIATI', NULL, '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('0957ad72-5ff5-4afa-8c01-589b749168e3', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'MUHAMMAD SHAHER SYARIF', '3157502487', '3671132308150006', 'TANGERANG', '2015-08-23', '10 th, 1 bln', 'Aktif', 'Laki-laki', 'JL. INPRES  1 LARANGAN UTARA, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6288289681151', 'Tidak Ada', 'Tidak Ada', NULL, 'SYARIFULLOH', 'SAWIYAH', 'JUNAEDI', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('0a0e7863-9f34-4d16-9bed-862d81a4b5f8', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ADZRIL RAFIF ALFAREZI', '3199319522', '3174101701190002', 'JAKARTA', '2019-01-16', '6 th, 8 bln', 'Aktif', 'Laki-laki', 'Jl. H. Sakim I No.08 RT.14/11 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Yusup', 'LIDIA', 'Yusup', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('0ae01f72-528e-4f7d-927a-39ccf0aff1be', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'SITI ZAHRO ILMI', '3183832562', '3671136312180003', 'TANGERANG', '2018-12-22', '6 th, 9 bln', 'Aktif', 'Perempuan', 'JL. CHAIRIL ANWAR RT : 03 RW : 05 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMMAD NAFI\'UL ILMI', 'RATNANENGSIH', 'MUHAMMAD NAFI\'UL ILMI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('0d231606-fbd9-4396-a195-01ed769d6346', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'DAMAR PRAGHASTA', '3163322505', '3174101003160005', 'JAKARTA', '2016-03-10', '9 th, 6 bln', 'Aktif', 'Laki-laki', 'JL. FLAMBOYAN NO. 10 RT 013/006 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12320, 12320', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'ANGGHIE PRAGHASTA', 'ERVINA', 'ANGGHIE PRAGHASTA', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('0dbb6092-2365-440e-8dda-3873d2208264', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'AQILLAH RAYYA NUR FAIZAH', '3133540395', '3304205709130001', 'BANJARNEGARA', '2013-09-16', '12 th, 0 bln', 'Aktif', 'Perempuan', 'Jl. Masjid Babul Minan RT 007/008 , KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', '6283870422900', 'Tidak Ada', 'Tidak Ada', NULL, 'RUDIYANTO', 'RASIYEM', 'RUDIYANTO', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('0df5492b-38d1-4f1f-88fd-fab90a777618', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'SALMA BILQIS', '3189072468', '3174106304180006', 'JAKARTA', '2018-04-23', '7 th, 5 bln', 'Aktif', 'Perempuan', 'JL. H. REBO NO. 11 RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MOCH SUBCHAN', 'ANITA APRIANI', 'MOCH SUBCHAN', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('0ef6431d-6dcf-4fda-8fea-6b6b238644bf', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'AZRINA SYAFFIRA ZULAIKHA', '3175187662', '3174105312170004', 'JAKARTA', '2017-12-12', '7 th, 9 bln', 'Aktif', 'Perempuan', 'JL. MUCHTAR RAYA GG.PITUNG NO.29 B RT 005/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MOHAMAD LUTHFI PERDANA', 'NURAINI JAMIL', 'MOHAMAD LUTHFI PERDANA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('0f147c46-50cf-452e-8013-4e833fb2445f', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'AMIRA AINUN MAHYA', '3158413589', '3174107012150001', 'JAKARTA', '2015-12-30', '9 th, 9 bln', 'Aktif', 'Perempuan', 'JL. MUSHOLLA I RT 008/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6287871515790', 'Tidak Ada', 'Tidak Ada', NULL, 'KADSARI', 'ERMI WITA SARI', 'KADSARI', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('102b3b48-7484-4f74-895a-1588e8818d7f', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'MUHAMAD REVAN', '3119888603', '3174102202111010', 'JAKARTA', '2011-02-21', '14 th, 7 bln', 'Aktif', 'Laki-laki', 'Jl. KH. Wahid Hasyim No. 18 , PONDOK AREN, KOTA TANGERANG SELATAN, BANTEN, 15222, 15222', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'EKA SUHARTANTO', 'AYU PRIMANDARI', NULL, '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('1963f18d-24c8-4eae-90df-47a011d950ec', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'DWI PUTRI RINJANI', '3181625281', '3671135810180002', 'TANGERANG', '2018-10-17', '6 th, 11 bln', 'Aktif', 'Perempuan', 'Jl. Muhasyim RT 004/01 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281291751640', 'Tidak Ada', 'Tidak Ada', NULL, 'SHODIKIN', 'MUKHAROMAH', 'SHODIKIN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('19f962b5-dc54-42b8-b212-a1e1eb032cb4', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'RAFIQ KARIMUL HAQ', '3171950678', '3174100304170007', 'JAKARTA', '2017-04-02', '8 th, 6 bln', 'Aktif', 'Laki-laki', 'JL H. MUCHTAR RAYA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'ABD RAHMAN', 'RUSMIATI', 'RUSMIATI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('1bb4ed89-9c87-4cd5-8204-35c0038c833a', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ATIKAH AYUDIA SHOLIHAH', '3189102938', '3276114906180004', 'CIREBON', '2018-06-08', '7 th, 3 bln', 'Aktif', 'Perempuan', 'JL. Jendral Sudirman NO. 71 Sokaraja Tengah SOKARAJA TENGAH, SOKARAJA, BANYUMAS, JAWA TENGAH, 53181, 53181', '085727710069', 'Tidak Ada', 'Tidak Ada', NULL, 'KARNO', 'OKTA KOMALASARI', 'KARNO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('1ced9ab0-36ba-4a21-b6e7-6a83d018f789', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ARUMI YASMIN SYAHADAH', '3182834391', '3671125207180006', 'TANGERANG', '2018-07-11', '7 th, 2 bln', 'Aktif', 'Perempuan', 'JL. MUHASIN GG. SATE II NO. 29B LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6282124701285', 'Tidak Ada', 'Tidak Ada', NULL, 'MUBARAK IKHSAN', 'TERISTA', 'MUBARAK IKHSAN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('1dde2588-198e-485b-b86d-c02cf2a746f1', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RAISYA ALIFIA SYARIF', '3137186149', '3174106210131005', 'JAKARTA', '2013-10-21', '11 th, 11 bln', 'Aktif', 'Perempuan', 'Jl. H. Rebo RT 012/011 No. 45  , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422541', 'Tidak Ada', 'Tidak Ada', NULL, 'Syarifudin Safari', 'LYNA MARIANA', 'Syarifudin Safari', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('201cd1c5-4541-47e4-a28d-657d09f7aa33', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ELVANO ABID SABENI', '3181811357', '3174053009180001', 'TANGERANG', '2018-09-30', '7 th, 0 bln', 'Aktif', 'Laki-laki', 'Jln. Pulo Mawar No. 86 GROGOL UTARA, KEBAYORAN LAMA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12210, 12210', '6281287088584', 'Tidak Ada', 'Tidak Ada', NULL, 'AGUS SETIAWAN', 'YUYUN ULWIYAH', 'AGUS SETIAWAN', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('216ce099-3dcb-4848-8e7d-94141f236fe5', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'NIZAM SETIAWAN', '3139814347', '3173081009131001', 'JAKARTA', '2013-09-09', '12 th, 0 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya Gg. Pitung RT 005/011  , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422550', 'Tidak Ada', 'Tidak Ada', NULL, 'Kanan Setiawan', 'ANIH', 'Kanan Setiawan', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('21b9434f-5264-498d-8d83-bb86e9354630', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'MUHAMMAD UZAIR FATHULLOH', '3168357085', '3174101311160002', 'BOGOR', '2016-11-13', '8 th, 10 bln', 'Aktif', 'Laki-laki', 'PETUKANGAN UTARA RT 002/004 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '62895320854002', 'Tidak Ada', 'Tidak Ada', NULL, 'ABDUL HASAN', 'AFIT ASFARO', 'ABDUL HASAN', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('235db4ab-618b-48f7-b603-b0e03929a21e', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'HUMAIRA DHIYA GHUMAISA', '3169099710', '3174104309160002', 'TANGERANG', '2016-09-03', '9 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. Rian  no 70 Rt 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'CAHYANTO', 'ANISSALIANI SARI', 'CAHYANTO', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('253046c7-4b63-4449-bd8a-22de38b12a26', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'SHAKELLA ROMEESA FARBIZANA', '3193734922', '1403095104190002', 'DURI', '2019-04-11', '6 th, 5 bln', 'Aktif', 'Perempuan', 'JL. H. SANTENG RT 010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281779841072', 'Tidak Ada', 'Tidak Ada', NULL, 'BIMA GAFARA VANJOLA', 'FARA FA\'DILLAH', 'BIMA GAFARA VANJOLA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('27936c7b-526f-4b66-9170-4580c8a135c6', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'DHIA MUTHIA AISYAH', '3194174847', '3173025902190009', 'BREBES', '2019-02-19', '6 th, 7 bln', 'Aktif', 'Perempuan', 'GG. Alpukat VIII/7 TANJUNG DUREN UTARA, GROGOL PETAMBURAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11470, 11470', '6281389086346', 'Tidak Ada', 'Tidak Ada', NULL, 'DIDIT PRAKOSO', 'APIDAH', 'DIDIT PRAKOSO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('285ff50e-f938-418a-8dbb-b2d5b7bdaf40', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'HANA ZHAFIRAH', '3168514711', '3671135907160001', 'TANGERANG', '2016-07-19', '9 th, 2 bln', 'Aktif', 'Perempuan', 'Jl.Bambu RT 003 RW 10. No. 105 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6287815663908', 'Tidak Ada', 'Tidak Ada', NULL, 'HILMAN NOVANDI', 'HERLINDA ERMEN', 'HILMAN NOVANDI', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('28e626f0-1767-4463-a913-99ebddd68a17', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'KHADEEJAH AZ ZAHRA DIMYATI', '3163078255', '3173056305160003', 'JAKARTA', '2016-05-22', '9 th, 4 bln', 'Aktif', 'Perempuan', 'Jl Haji Holil No 80 RT 03 RW05 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD DIMYATI', 'RIA IRAWATI', 'AHMAD DIMYATI', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('28f21601-2670-4f2a-bdf1-fdfa62f64279', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ABDURRAHMAN DZACKY AL-HASAN', '3133110443', '3174101606131001', 'JAKARTA', '2013-06-16', '12 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA NO. 31C PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD HASAN', 'PITRIA', 'AHMAD HASAN', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('28fa4dfa-d3e1-448a-9ab2-587165f109be', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'DEZARI NOVEL', '3147157511', '3174100709141008', 'JAKARTA', '2014-09-07', '11 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA GG. SIMAN RT 010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281388737120', 'Tidak Ada', 'Tidak Ada', NULL, 'T.EMIR NOVEL', 'MIRNA FEBRIYANTI', 'T.EMIR NOVEL', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('2a5d907f-781a-4159-bf1b-1693cd642727', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'SINTA AYU FADHILLAH', '3182619239', '3671134109180007', 'TANGERANG', '2018-08-31', '7 th, 1 bln', 'Aktif', 'Perempuan', 'Jl. Siswa RT 003/009 No. 95 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6285717187045', 'Tidak Ada', 'Tidak Ada', NULL, 'SISWANTO', 'NITA AYU LESTARI', 'SISWANTO', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('2bd16649-247e-42d4-9f98-267e0ec2ce42', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'MUHAMMAD HAMZAH RAYHAN', '3158824201', '3174100110151005', 'JAKARTA', '2015-09-30', '10 th, 0 bln', 'Aktif', 'Laki-laki', 'Jl. Mukhtar Raya No. 57 Rt. 010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628979644189', 'Tidak Ada', 'Tidak Ada', NULL, 'Miftahul Abrar', 'DIKA FITRI', 'DIKA FITRI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('2c2500ff-a6d7-41b5-86cb-806b8a318efd', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'ABDULLAH PUTRA SADIRI', '3164541907', '3671132702160006', 'TANGERANG', '2016-02-26', '9 th, 7 bln', 'Aktif', 'Laki-laki', 'JL. ANGGREK RAYA RT. 001 RW 005 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285821114346', 'Tidak Ada', 'Tidak Ada', NULL, 'MULYADI', 'SRI YUNIARSIH', 'MULYADI', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('2d2d3a97-4aff-49ad-8da9-38d9a9a39267', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'RAHMA TALITA', '3145364239', '3174105508141001', 'JAKARTA', '2014-08-15', '11 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. MUGENI RT 002/002 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628871199783', 'Tidak Ada', 'Tidak Ada', NULL, 'SYAMSUL RAHMAN', 'RUSNATUN HASANAH', 'SYAMSUL RAHMAN', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('2eb43906-7e02-4c33-90a2-b275963c45f7', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'MUHAMMAD FAIZAR ALI', '3162882680', '3174102405160004', 'JAKARTA', '2016-05-24', '9 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. AMD X NO. 48 BLOK B RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628990858125', 'Tidak Ada', 'Tidak Ada', NULL, 'HADI WINOTO', 'FENNI SEPTIANI', 'HADI WINOTO', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('330603f8-5f26-48aa-8a5b-31088b4d8344', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'ASYA GANES AYUNINDYA', '3173689065', '3174107108170003', 'JAKARTA', '2017-08-30', '8 th, 1 bln', 'Aktif', 'Perempuan', 'JL. SIMPANG II RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'BUDI HIDAYAT', 'DESI MARLINA', 'BUDI HIDAYAT', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('3339530f-c256-462a-936c-d4bb043cdff5', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ANANDA RENDY PRADIPTA', '3138144354', '3174100505131005', 'JAKARTA', '2013-05-05', '12 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. DAMAI I NO. 20 RT 008/005 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12270, 12270', '6282112442828', 'Tidak Ada', 'Tidak Ada', NULL, 'EKA SUHARTATO', 'AYU PRIMANDARI', 'AYU PRIMANDARI', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('36b826ee-3b92-40ef-9e8c-e7ad0b36bb6b', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'KIRANA LESTARI', '3159728953', '3174105106151003', 'JAKARTA', '2015-06-11', '10 th, 3 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR RAYA RT 008/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281211984976', 'Tidak Ada', 'Tidak Ada', NULL, 'RAHMAT HIDAYAT', 'SITI SUSILOWATI', 'RAHMAT HIDAYAT', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('38aab07d-d618-4eae-b5a9-05e2e67a26e5', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'ALFIAN ADAM', '3150451687', '1305022703150001', 'LUBUK ALUNG', '2015-03-26', '10 th, 6 bln', 'Aktif', 'Laki-laki', 'JL. AMD X RT 012/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281374346325', 'Tidak Ada', 'Tidak Ada', NULL, 'ALZA KENDRO ADAM', 'POPI GUSTINI', 'ALZA KENDRO ADAM', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('3a47cdc5-e8e2-4887-8484-8d3ab5d83461', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'RASYAM ATAYA', '3187934029', '3328051906180002', 'TEGAL', '2018-06-19', '7 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. BATAS PENINGGILAN RT 001/001 SUDIMARA BARAT, CILEDUG, KOTA TANGERANG, BANTEN, 15151, 15151', '6285811177397', 'Tidak Ada', 'Tidak Ada', NULL, 'HERMANTO', 'SITI KHOTIMAH', 'HERMANTO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('3a61a222-80bd-433b-a22a-52c33d51514e', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'AMANINA AFIQAH', '3174656890', '3174035407170004', 'JAKARTA', '2017-07-13', '8 th, 2 bln', 'Aktif', 'Perempuan', 'JL. H. RIYAN   NO. 81 PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AGUS PUJIANTO', 'ISNAENI', 'AGUS PUJIANTO', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('3a86445f-0fd5-4498-b950-8d0e494d969b', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'RATIH CALLULA NAUREEN', '3183486445', '3671136711180001', 'TANGERANG', '2018-11-26', '6 th, 10 bln', 'Aktif', 'Perempuan', 'Jl. Muhasyim No. 63 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6282220746334', 'Tidak Ada', 'Tidak Ada', NULL, 'BAYU NIDYO KUSUMO', 'YULI ASMITA', 'BAYU NIDYO KUSUMO', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('3b4a0ca0-8bff-4250-9f31-0c1c6bd5aa51', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'SALVA HAFIZAH', '3151302723', '3174105904151002', 'JAKARTA', '2015-04-18', '10 th, 5 bln', 'Aktif', 'Perempuan', 'JL. H. NAJIH RT 009/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'RUDI HARTONO', 'SITI AMINAH', 'RUDI HARTONO', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('3d45aeb8-9c38-4b45-bc20-128990fd499b', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'RIZKY PUTRA FAHRIZAL', '3181501099', '3674052006180009', 'TANGERANG SELATAN', '2018-06-20', '7 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. KEDAUNG 4 RT 011/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283814204711', 'Tidak Ada', 'Tidak Ada', NULL, 'ERWINDI FAHRIZAL', 'NURHALIMAH', 'ERWINDI FAHRIZAL', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('3de05e1a-75e6-4859-a2c3-c6e1df26ac37', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SHOFI MARWAH AZZAHRA', '3148175844', '3171076109141002', 'JAKARTA', '2014-09-21', '11 th, 0 bln', 'Aktif', 'Perempuan', 'JL. JATI BUNDER RT 004/014 KEBON MELATI, TANAH ABANG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10230, 10230', '6281317186804', 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMMAD SOPIAN', 'FITRI', 'MUHAMMAD SOPIAN', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('3e5e3432-42a5-40e7-99e9-6c80c536395f', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'SITI ASSYIFA', '3147996733', '3174105612141008', 'JAKARTA', '2014-12-16', '10 th, 9 bln', 'Aktif', 'Perempuan', 'JL. H.  RIYAN  RT  012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285885689814', 'Tidak Ada', 'Tidak Ada', NULL, 'SARMAN', 'SITI HOLILAH', 'SARMAN', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('40cf4c36-648a-4b1a-b0ba-92c581f739e3', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ZIO OLIVER', '3171652433', '3173040410170006', 'JAKARTA', '2017-10-04', '7 th, 11 bln', 'Aktif', 'Laki-laki', 'Jl. Trikora I No. 6B DURI UTARA, TAMBORA, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11270, 11270', '6285894132627', 'Tidak Ada', 'Tidak Ada', NULL, 'DASNUL ZIKRAN', 'LINA', 'LINA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('41461401-3bbe-404c-88b2-078e4f746b2c', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ADREYZA MALAYEKA DRAMATIKA', '3187319638', '3671066803180001', 'TANGERANG', '2018-03-28', '7 th, 6 bln', 'Aktif', 'Perempuan', 'Jl. Tanah Seratus No. 40 SUDIMARA JAYA, CILEDUG, KOTA TANGERANG, BANTEN, 15151, 15151', '6281212733783', 'Tidak Ada', 'Tidak Ada', NULL, 'SAPUTRA DRAMATIKA', 'NANA DIANA', 'SAPUTRA DRAMATIKA', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('41771eeb-7d5f-4fc9-b916-86dec8487e8d', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'MUHAMAD ALTHAAF MUBARRAQ', '3162098510', '3204050810160001', 'BANDUNG', '2016-10-08', '8 th, 11 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA NO. 72 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'DADI ROSADI', 'WINA NINGRUM', 'KARNO', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('41f473dc-fd79-46a2-86e8-9d86de06b9e3', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'MUHAMMAD AL FATIH', '3144558045', '3174100705141001', 'JAKARTA', '2014-05-06', '11 th, 4 bln', 'Aktif', 'Laki-laki', 'Jl. H. Rebo RT 012/011 No. 51A , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422538', 'Tidak Ada', 'Tidak Ada', NULL, 'Mujiyanto', 'MARIYAM', 'Mariyam', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('42244701-d947-48ea-8624-3cff90e37036', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'HAIFA ZAHRA ALHAFIZA', '3173996696', '3309125505170001', 'BOYOALALI', '2017-05-14', '8 th, 4 bln', 'Aktif', 'Perempuan', 'Jln. H. Muchtar raya, kavling delima 2 No. .53 RT 001/012 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'GIYONO', 'TRI HASTUTI', 'GIYONO', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('42ed5ddd-dd29-4920-8b49-d502e2f7793b', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'RAHMA MAULITA', '3161618830', '3174105603160004', 'JAKARTA', '2016-03-16', '9 th, 6 bln', 'Aktif', 'Perempuan', 'Jl,hj mukctar raya gg hj kuling rt 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '62895433380400', 'Tidak Ada', 'Tidak Ada', NULL, 'BAROKAH', 'ROHIMAH', 'BAROKAH', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('43dcbdf7-b437-4109-b69c-d5c4cf196f72', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ALRAFA RAMADHAN', '3133951249', '3671131407130002', 'JAKARTA', '2013-07-13', '12 th, 2 bln', 'Aktif', 'Laki-laki', 'Jl. H. Musa No. 20 RT 013/002 , , , , 12260, 12260', '6283870422997', 'Tidak Ada', 'Tidak Ada', NULL, 'BOY SANDI,SE', 'HANIFAH HOIRUN NISAH', 'BOY SANDI,SE', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('468badd4-a55b-40fa-89ea-f8145f37d099', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'PUTRI MAHARANI SHALIHA', '3171754414', '3674056803170007', 'TANGERANG SELATAN', '2017-03-28', '8 th, 6 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL RT 001/009 NO. 113 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'NAWA SAPTA NUGRAHA', 'DWI WULAN', 'FIORITA EFFENDY', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('468d1402-640a-45af-8c80-09166aa16780', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ANDINI FEBRIANY PUTRI', '0148229387', '3208104702140002', 'KUNINGAN', '2014-02-07', '11 th, 7 bln', 'Aktif', 'Perempuan', 'JL.H.MISAN RT 08 RW 05 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285710076171', 'Tidak Ada', 'Tidak Ada', NULL, 'SAIDIN', 'ANITA YOHANI', 'SAIDIN', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('472e45c1-1d2f-4f31-8a02-619b7da5be45', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'FAJRIYATUL RAHMAH ISNAINI', '3164210651', '3174104205160004', 'JAKARTA', '2016-05-02', '9 th, 5 bln', 'Aktif', 'Perempuan', 'Jl. Amd x rt 10 rw 01 no. 31 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6289668222102', 'Tidak Ada', 'Tidak Ada', NULL, 'JAMIL', 'ISMAWATI', 'JAMIL', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('47b66b20-768c-4f6b-99c5-fe2944789782', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMMAD ARKAN ALFARIZI', '3188015640', '3674030304180003', 'KOTA TANGERANG', '2018-04-03', '7 th, 6 bln', 'Aktif', 'Laki-laki', 'KP. Ceger JURANGMANGU BARAT, PONDOK AREN, KOTA TANGERANG SELATAN, BANTEN, 15423, 15423', '6281295672798', 'Tidak Ada', 'Tidak Ada', NULL, 'AINUL YAKIN', 'ZULLIANI DESILAWATY', 'AINUL YAKIN', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('48f21829-a707-4ea2-9bc4-24bac6a17300', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'HAIKAL KHADAFI', '3174692056', '3174101212170008', 'JAKARTA', '2017-12-11', '7 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. AMD X NO. 21 RT.009/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HERRY KURNIAWAN', 'DAHLIA', 'HERRY KURNIAWAN', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('49468f35-d257-4209-8630-17f69d7d81ad', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RAISA YUSNITA', '3136903051', '3174107110131001', 'JAKARTA', '2013-10-30', '11 th, 11 bln', 'Aktif', 'Perempuan', 'Jl. H. Kuling RT 007/011 No. 58 Petukangan Utara , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422893', 'Tidak Ada', 'Tidak Ada', NULL, 'YUSUP', 'YUNITA DEWI', 'YUSUP', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('49c76ff7-1459-4d08-aee4-f2ae6febd324', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ILHAM ALRASYID', '3164258761', '3671131106160003', 'TANGERANG', '2016-06-11', '9 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. KEJAKSAAN III RT 002/006 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '628979038374', 'Tidak Ada', 'Tidak Ada', NULL, 'NAMAD', 'MURANIH', 'NAMAD', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('4ace7291-0239-4755-bb2b-c73e145dde4f', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMAD ARSYAD ASH SHIDIQ', '3187986633', '3204052302180004', 'BANDUNG', '2018-02-23', '7 th, 7 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA NO. 72 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '62857277167525', 'Tidak Ada', 'Tidak Ada', NULL, 'DADI ROSADI', 'WINA NINGRUM', 'DADI ROSADI', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('4d2b537b-e649-41be-9618-8b0661e36e03', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'DAHLIA HUMAIROH PRIADI', '3175890920', '3174105712170003', 'JAKARTA', '2017-12-16', '7 th, 9 bln', 'Aktif', 'Perempuan', 'JL. H. SULAIMAN PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'EKO PRIADI', 'NINA ROIHATUL ZANNAH', 'EKO PRIADI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('4eac6127-1bfd-44f4-8ca4-15c543e730dd', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'AISYAH PUTRI RAHAYU', '0156987607', '3174104102151001', 'JAKARTA', '2015-01-31', '10 th, 8 bln', 'Aktif', 'Perempuan', 'JL. H. RIAN NO. 75 RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SYAIFUL ANWAR', 'ERNI KUSRINI', 'SYAIFUL ANWAR', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('4f20b617-5413-4af1-95e5-555f88d36275', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'MUHAMMAD MAKRUFUL AKBAR SANI', '3146180579', '3174100310141003', 'JAKARTA', '2014-10-03', '11 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H.  MUCHTAR RAYA NO 113 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6287878868408', 'Tidak Ada', 'Tidak Ada', NULL, 'ROSIDI', 'SAODEH', 'ROSIDI', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('506b0189-5f26-4e98-a354-27b2a29303fd', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'KEVIN ZAMAR', '3146932041', '1305023101140001', 'LUBUK ALUNG', '2014-01-31', '11 th, 8 bln', 'Aktif', 'Laki-laki', 'JL. AMD X RT 012/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281374346325', 'Tidak Ada', 'Tidak Ada', NULL, 'ALZA KENDRO ADAM', 'POPI GUSTINI', 'ALZA KENDRO ADAM', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('5079ebc8-df72-4aa5-916a-72477f9dcf3c', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'AS\'AD ALWI MUBAROK', '3145818309', '3218031804140001', 'TASIKMALAYA', '2014-04-17', '11 th, 5 bln', 'Aktif', 'Laki-laki', 'JL. MUCHTAR RAYA NO. 72 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SYAIFUL UYUN', 'SITI ROHMAH', 'SYAIFUL UYUN', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('50eede61-9cd8-409d-a462-64d62295f3d5', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'IBRA AFFAN KHADAFI', '0141271502', '3671101509140003', 'TANGERANG', '2014-09-14', '11 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. RADI RT 002//008 NO. 42 KREO KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6289508472417', 'Tidak Ada', 'Tidak Ada', NULL, 'JAINAL ARIFIN', 'ISMI NILA WATI', 'JAINAL ARIFIN', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('5101467c-a0f5-4eef-8e4e-12d179c5017a', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'MUHAMMAD GHIYASUDDIN', '3168575068', '3321132405160002', 'DEMAK', '2016-05-24', '9 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. RAYA JOGLO RT 07 RW 08 JOGLO KEMBANGAN JAKARTA BARAT JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', '6285692096768', 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD KHOLIDIN', 'MILHATUR ROSYIDAH', 'AHMAD KHOLIDIN', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('51d291dc-8a4f-4cda-93ec-ee07b317152c', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ADINDA SYAFIRA ZAHRANY', '3176255553', '3171074211170002', 'JAKARTA', '2017-11-02', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. JATI BUNDER RT 004/014 KEBON MELATI, TANAH ABANG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10230, 10230', '6281317186804', 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMMAD SOPIAN', 'FITRI', 'MUHAMMAD SOPIAN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('52659138-1663-4016-b864-7abd5fe37cc1', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ZA\'FARAN HUSEIN', '3144652599', '3671131706140007', 'TANGERANG SELATAN', '2014-06-16', '11 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. H. RADI NO. 121A KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6287883672599', 'Tidak Ada', 'Tidak Ada', NULL, 'DIDIT ADIANTO', 'KIFTIAH', 'DIDIT ADIANTO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('528fa44d-8e28-4869-83d5-441d164ac842', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'LUTFIA ZAHRA LATIFA', '3176455926', '3529064305170001', 'SUMENEP', '2017-05-02', '8 th, 5 bln', 'Aktif', 'Perempuan', 'JL. TK PEMBINA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'MULYADI', 'USWATUN HASANAH', 'MULYADI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('536ae90c-d874-4ca7-b4c4-899b9a3c1bd0', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'RINDU ZAKIATUNNISA', '3185617504', '3205194603180001', 'BEKASI', '2018-03-06', '7 th, 6 bln', 'Aktif', 'Perempuan', 'JL. KEDAUNG II RT 002/002 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SAEPUL MILAH ALMUSTHOPA', 'HATI NURINA', 'SAEPUL MILAH ALMUSTHOPA', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('547f1f8c-1d6f-4698-9f1b-407262e3ec9e', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ADIBA SHEZA AZZAHRA', '3178726376', '3174107103170002', 'JAKARTA', '2017-03-31', '8 th, 6 bln', 'Aktif', 'Perempuan', 'GG. H YAMIN PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'TEGUH IMAN NURWANTO', 'RIKA RIZKIANAH', 'TEGUH IMAN NURWANTO', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('56311b90-5d97-4da3-ad8b-8cb1b62ed427', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ZAHRANA NAFAHATIR ROHMAH', '3130943637', '3271066711130001', 'BOGOR', '2013-11-27', '11 th, 10 bln', 'Aktif', 'Perempuan', 'JL. TAMAN CENGEH NO.7 RT.005/001 KEDUNG WARINGIN, TANAH SAREAL, KOTA BOGOR, JAWA BARAT, 16164, 16164', '6283870426446', 'Tidak Ada', 'Tidak Ada', NULL, 'SYAIFUDIN RAHARJO', 'SITI LASTRIANAH', NULL, '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('58a69b59-0c90-447e-9953-aebddef6160d', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ABID AQILA ROFA', '0141412917', '3328090306140001', 'TEGAL', '2014-06-02', '11 th, 4 bln', 'Aktif', 'Laki-laki', 'Jl. H. Sulaiman RT 003/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285725333225', 'Tidak Ada', 'Tidak Ada', NULL, 'Mohamad Roi', 'FAEDAH', 'Mohamad Roi', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('58a6e09d-6a40-41a1-a4d7-47b723d948d0', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MUHAMAD RAFFASHA MUBARAK', '3185547352', '3601143006180002', 'PANDEGLANG', '2018-06-30', '7 th, 3 bln', 'Aktif', 'Laki-laki', 'KP. KEBON PEDES SINDANGHAYU, SAKETI, KABUPATEN PANDEGLANG, BANTEN, 42273, 42273', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'BANDI', 'AAN HASANAH', 'AAN HASANAH', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('5c02bba0-e276-4a59-a7d3-aee86443dbd3', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'THALITA PUTRI KHARISA', '3168662632', '3174045607160009', 'JAKARTA', '2016-07-15', '9 th, 2 bln', 'Aktif', 'Perempuan', 'Jl.angsana rt004/006 Pejaten timur pasar minggu PEJATEN TIMUR, PASAR MINGGU, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12510, 12510', '6285692098875', 'Tidak Ada', 'Tidak Ada', NULL, 'NURHAFIS FADILLAH', 'FITRI WULANDARI', 'NURHAFIS FADILLAH', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('5cb454ed-15f1-46d8-a5fe-1130f6225100', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMMAD UMAR ZAFRAN', '3188606760', '3173080911180002', 'JAKARTA', '2018-11-09', '6 th, 10 bln', 'Aktif', 'Laki-laki', 'JL. AMD X NO. 123 RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6289653085431', 'Tidak Ada', 'Tidak Ada', NULL, 'EDWIN LESMANA', 'EVA SUYANTI', 'EDWIN LESMANA', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('5d5f1362-99b7-4b8c-880d-b461c0ddf6dc', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ALMAHYRA ALESHA JIHAN PRASETYA', '3179301934', '3303135110170001', 'PURBALINGGA', '2017-10-11', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. GOTONG ROYONG NO. 49 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6281384009994', 'Tidak Ada', 'Tidak Ada', NULL, 'DIMAS RAGIL PRASETYA', 'DIAN SUPRIATUN', 'DIMAS RAGIL PRASETYA', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('5d7a3e1a-3f7a-48f0-80f2-4010e93bc7dd', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'KHOLID RIJAL ALFARISY', '3154164672', '3174100205151007', 'JAKARTA', '2015-05-01', '10 th, 5 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya Gg. H. Niung RT 003/011 , , , , 12260, 12260', '6283870422894', 'Tidak Ada', 'Tidak Ada', NULL, 'Bambang Sutrisno', 'ELLI M', 'Bambang Sutrisno', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('5de91ba2-2b71-4340-9339-c72ae588323d', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ALUNA TALITHA RUMI', '3186633318', '3173015909180005', 'TANGERANG', '2018-09-19', '7 th, 0 bln', 'Aktif', 'Perempuan', 'JL. SWADAYA RT 04/05 KEDAUNG KALI ANGKE, CENGKARENG, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11710, 11710', '6282111768480', 'Tidak Ada', 'Tidak Ada', NULL, 'RULLY WARDIANSYAH', 'CHORY NIA CHAPSYARI', 'RULLY WARDIANSYAH', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('5df4f8c1-25b7-4144-aae6-44da4df76c99', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'MARZA ALIQA', '3173756403', '3671136302170002', 'TANGERANG', '2017-02-23', '8 th, 7 bln', 'Aktif', 'Perempuan', 'JL. CHAIRIL ANWAR NO. 25 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MURTALA H. SAKUBAT', 'MURTAZAH', 'MURTALA H. SAKUBAT', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('5e62095f-05ca-4ebf-a7c7-76e4f7674d63', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'DELISHA AZZALEA SOFYAN', '3170489571', '3305266906170002', 'KEBUMEN', '2017-06-28', '8 th, 3 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL GG. ENDEN KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, NULL, NULL, NULL, 'FAJAR ABDULLOH', 'SITI NUR HAYATI', 'FAJAR ABDULLOH', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('5e8d5fcf-50f1-4774-bdaa-14a706c3616e', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ABIDZAR ARKA ARRASID', '3184241188', '3174051308180005', 'TANGERANG', '2018-08-13', '7 th, 1 bln', 'Aktif', 'Laki-laki', 'Jl. Rawa Simprug I B GROGOL SELATAN, KEBAYORAN LAMA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 0, 0', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HERWANTO', 'SUMARTINI', 'HERWANTO', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('5f95cd07-d4ca-4129-9c9f-a407994c2179', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'AHMAD ZAKY RAFLY RAFIZKY', '3173252589', '3174101407170004', 'JAKARTA', '2017-07-13', '8 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. M. SAIDI RAYA Y-8 PETUKANGAN SELATAN, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12270, 12270', NULL, NULL, NULL, NULL, 'MAT SAHIT', 'MUS RIAH', 'MAT SAHIT', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('6095733b-6957-46d8-9c57-39af1d0eb308', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'DUTA ARGANTA PUTRA KURNIAWAN', '3164287969', '3171071703160003', 'TANGERANG', '2016-03-17', '9 th, 6 bln', 'Aktif', 'Laki-laki', 'Jl. Haji siman no. 4a rt. 013/rw.001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285774263763', 'Tidak Ada', 'Tidak Ada', NULL, 'DANY KURNIAWAN', 'RACHDIATI', 'RACHDIATI', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('62588c4a-dc99-4624-8b5b-77ea6c4aecec', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'AQILA AFSHEEN ARYA PAMBAYUN', '3188937107', '3301126609180006', 'CILACAP', '2018-09-25', '7 th, 0 bln', 'Aktif', 'Perempuan', 'Dusun Binangun TAYEM, KARANGPUCUNG, CILACAP, JAWA TENGAH, 53255, 53255', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'ARIP SUBAGYO', 'ANIS NURHASANAH', 'ARIP SUBAGYO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('62eb7f73-f682-4dc8-8f1b-44b1cd8aaef5', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'BINTANG ARROYYAN PUTRA BENYAMIN', '0134462209', '3316101510130001', 'BLORA', '2013-10-14', '11 th, 11 bln', 'Aktif', 'Laki-laki', 'Jl. SDN 05 Pagi RT 002/011 , , , , 12260, 12260', '6283870422913', 'Tidak Ada', 'Tidak Ada', NULL, 'Fris Benyamin Sikumbang', 'SUNTARIN', 'Fris Benyamin Sikumbang', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('678d7fa1-a1e0-453a-9f42-b1a1f4cac8cb', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'AISYARA OCHA MELODYNA', '0147444030', '3320094310140001', 'JEPARA', '2014-10-03', '11 th, 0 bln', 'Aktif', 'Perempuan', 'KLEPU RT 01/03 KLEPU, KELING, JEPARA, JAWA TENGAH, 59454, 59454', '6285284770558', 'Tidak Ada', 'Tidak Ada', NULL, 'MUSLIM', 'SITI MUYASAROH', 'MUSLIM', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('68925130-b33d-433b-b18f-70173acc2923', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SITI FATIMAH  AZAHRA', '0132154680', NULL, 'JAKARTA', '2013-11-29', '11 th, 10 bln', 'Aktif', 'Perempuan', 'JL  CHAIRUL ANWAR  NO  03  RT 003/001 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '628979778694', 'Tidak Ada', 'Tidak Ada', NULL, 'TARULI   HUTAGALUNG', 'TARTI', 'TARULI   HUTAGALUNG', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('68e5fa03-0c6b-4e82-98d7-c57ffa4f637d', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'NABIL AL-FATIH DAMANIK', '3147676582', '3671130908140004', 'TANGERANG', '2014-08-09', '11 th, 1 bln', 'Aktif', 'Laki-laki', 'JL. KUDUS GG TAYU NO. 4 RT 004/006 MENTENG, MENTENG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10310, 10310', '6287836327226', 'Tidak Ada', 'Tidak Ada', NULL, 'MUH REYHAN SUBASTIAN D', 'SUVANYNDIA', 'MUH REYHAN SUBASTIAN D', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('6be56653-0732-45c5-926c-909c493dc271', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'MUHAMMAD RADITYA', '3166209368', '3174100907160008', 'JAKARTA', '2016-07-08', '9 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. H. RIYAN NO. 80A PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281282038202', 'Tidak Ada', 'Tidak Ada', NULL, 'ERWIN LANDAU', 'SRIYANAH', 'ERWIN LANDAU', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('6edba300-0eea-49af-ac90-9b9f612d2234', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'SAVIRA CHAERUNNISA', '3161951574', '3174106608160001', 'JAKARTA', '2016-08-26', '9 th, 1 bln', 'Aktif', 'Perempuan', 'JL.H.MUCHTAR RAYA NO 41 RT 005/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628979640714', 'Tidak Ada', 'Tidak Ada', NULL, 'NASAN', 'NURYANAH', 'NASAN', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('6f1ad7b1-c892-41f4-85c2-1d4af276c459', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'CAHAYA BUNGA OKTAVIA', '3171996802', '3671064610170008', 'LAMPUNG', '2017-10-05', '7 th, 11 bln', 'Aktif', 'Perempuan', 'Jl. Chairil Anwar Rt 002/002 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6285775238316', 'Tidak Ada', 'Tidak Ada', NULL, 'SANDI', 'NURJANNAH', 'SANDI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('6f471b13-e1d0-4723-ab0f-4449084db5aa', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'FAJAR NUGROHO', '3135885695', '3173082909131002', 'JAKARTA', '2013-09-28', '12 th, 0 bln', 'Aktif', 'Laki-laki', 'Jl. Masjid Babul MinanRT 007/008 NO. 12 Joglo , KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', '6283870422909', 'Tidak Ada', 'Tidak Ada', NULL, 'Kastar', 'MARYUTI', 'Kastar', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('700ea5d7-19c9-4742-8e1c-44eb55b079a4', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'AMORA AILA PUTRI', '3176009071', '3171054410170002', 'JAKARTA', '2017-10-04', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. NOTARIS RT 003/001 NO. 19B KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'DINO FEBRIANTO', 'MARDONA ASPITA', 'DINO FEBRIANTO', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('709c6952-681c-4528-8de0-a8f95eebe118', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'LUVIENNA MARHAMAH RAMADHANIA PRAMESWARI', '3160942622', '3171031604151017', 'JAKARTA', '2016-06-09', '9 th, 3 bln', 'Aktif', 'Perempuan', 'Gg.h yamin rt 003/01 no 49 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628999882286', 'Tidak Ada', 'Tidak Ada', NULL, 'SIGIT SETIADI', 'FETI AGUSTIN', 'SIGIT SETIADI', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('72178f20-a56c-4932-b7e0-23d24bce9e6b', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SYEDI AHMAD AL-GHIFARI', '3140381915', '3174090710141005', 'JAKARTA', '2014-10-07', '10 th, 11 bln', 'Aktif', 'Laki-laki', 'JL. PINDING RT 002/001 CIPEDAK, JAGAKARSA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12630, 12630', '6281382372223', 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD SOPIYAN', 'SYARIFAH FAUZIAH', 'AHMAD SOPIYAN', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('72373602-ab8d-4a7b-a235-6f4a3b3a34b2', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'NABIL FARZAN ASWANGGA', '3189065605', '3524051708180002', 'JAKARTA', '2018-08-16', '7 th, 1 bln', 'Aktif', 'Laki-laki', 'Jl. Chairil Anwar RT 002/002 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281282395075', 'Tidak Ada', 'Tidak Ada', NULL, 'SUDARMAN', 'SUKARSIH', 'SUDARMAN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('74dca7c3-bc72-4ca8-b312-b9da68ee0082', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'HILYA PUTRI KINANTY', '3198979994', '3671134701190004', 'JAKARTA', '2019-01-07', '6 th, 8 bln', 'Aktif', 'Perempuan', 'JL. H. NAJIH RT 001/006 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6287878690994', 'Tidak Ada', 'Tidak Ada', NULL, 'ANANG RIO', 'NURDIANAH', 'ANANG RIO', '2026-03-19 21:44:36', '2026-03-19 21:44:36');
INSERT INTO `siswas` (`id`, `kelas_id`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `umur`, `status`, `jenis_kelamin`, `alamat`, `no_telepon`, `kebutuhan_khusus`, `disabilitas`, `nomor_kip_pip`, `nama_ayah_kandung`, `nama_ibu_kandung`, `nama_wali`, `created_at`, `updated_at`) VALUES
('76421bc6-4879-47f1-9f85-f37bef4ff258', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'HAYFA MAULIDA GHAISSANI', '3179034973', '3174106307170001', 'JAKARTA', '2017-07-23', '8 th, 2 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR RAYA GG. PITUNG NO. 29 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'MAULUDIN', 'LILIS SURYANI', 'MAULUDIN', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('76f6d1db-3780-4b51-8aa9-ac3bcdddbd6c', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'KEISYAH PUTRI AWALIYAH PURWANTO', '3158730134', '3212195501150001', 'INDRAMAYU', '2015-01-14', '10 th, 8 bln', 'Aktif', 'Perempuan', 'Jl. Kejaksaan Agung Gg. H. Suad RT 002/002 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'TOTO PURWANTO', 'WAHYUNI', 'TOTO PURWANTO', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('7732ddec-b424-437d-9594-a94c407065fa', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'RAIHAN BAHI RAMADHAN', '3160272538', '1807171806160001', 'WANA', '2016-06-18', '9 th, 3 bln', 'Aktif', 'Laki-laki', 'Jln AMD X RT 13 RW 01 Petukangan Utara Jakarta Selatan PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285281965694', 'Tidak Ada', 'Tidak Ada', NULL, 'HADI SAPUTRA', 'MASMUNAH', 'HADI SAPUTRA', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('7992f4e8-12b5-4599-935a-eb49907df57e', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'MUHAMMAD FATHIAN RAFFASYA', '3176818354', '3174100407170003', 'TANGERANG', '2017-07-04', '8 th, 2 bln', 'Aktif', 'Laki-laki', 'Jl. H. Kuling No.56 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Arif Turnajaya', 'ELPRIDA SARI YANTI', 'Arif Turnajaya', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('7a4108b0-624f-4b1d-a064-2ddd113f9304', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'NAYLA ANANDA PUTRI', '3168752741', '317410850160008', 'TANGERANG', '2016-10-24', '8 th, 11 bln', 'Aktif', 'Perempuan', 'JL. H. TAING RT 001/006 PETUKANGAN SELATAN, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12270, 12270', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'NANDA BAKRI', 'YANI ROSALINA', 'NANDA BAKRI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('7b3f58db-066d-4c25-b68f-db6eabe008c0', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MUHAMAD RIFFAN DESBASTIAN', '3165766030', '3174102912160007', 'TANGERANG', '2016-12-29', '8 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA RT010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6289630291153', 'Tidak Ada', 'Tidak Ada', NULL, 'RICKY MENAKY', 'NORMA YULIANTI', 'RICKY MENAKY', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('7c4e96b0-7ab8-4a45-a661-e9558a1ec2df', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'KHAYLILA ALMIRA SAPUTRA', '3185173954', '7371135906180003', 'MAKASSAR', '2018-06-19', '7 th, 3 bln', 'Aktif', 'Perempuan', 'Jl. Pelita 4 No.40.A BALLA PARANG, RAPPOCINI, KOTA MAKASSAR, SULAWESI SELATAN, 90222, 90222', '6282191111151', 'Tidak Ada', 'Tidak Ada', NULL, 'JEFRI ADE SAPUTRA', 'SULAEHA SUNANTO', 'JEFRI ADE SAPUTRA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('7c86e666-6290-4c29-bb19-c4e5735befbe', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'BILAL ABDILLAH RAMADHAN', '3178201165', '3312183005170001', 'JAKARTA', '2017-05-30', '8 th, 4 bln', 'Aktif', 'Laki-laki', 'H. MUCHTAR RAYA GG. RASIP NO. 33 RT 003/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'DENI SETYANTO', 'MINARTI', 'DENI SETYANTO', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('7ccafd19-8c5d-4f66-9819-e7c596043bcd', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'RATU ALESHA CHANIA', '3162175751', '3171074102160005', 'BUKIT TINGGI', '2016-02-01', '9 th, 8 bln', 'Aktif', 'Perempuan', 'JL. KH. MAS MANSYUR GG. PORRA RT 008/017 KEBON MELATI, TANAH ABANG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10230, 10230', '6281270415484', 'Tidak Ada', 'Tidak Ada', NULL, 'DEDI SAPUTRA', 'MELISAQ AD', 'DEDI SAPUTRA', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('7cfbffad-e859-446c-a87c-d1bcf9d05b12', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'HAFIZAH SHAKILA TANJUNG', '3179601520', '3172034406170003', 'JAKARTA', '2017-06-03', '8 th, 4 bln', 'Aktif', 'Perempuan', 'JL. DELI LORONG 25 NO. 47 RT 011/008 KOJA, KOJA, KOTA ADM. JAKARTA UTARA, DAERAH KHUSUS IBUKOTA JAKARTA, 14220, 14220', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SOFIAN TANJUNG', 'SITI FATIMAH', 'SOFIAN TANJUNG', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('7eb07319-f13c-4391-a0a9-4b7673b02833', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'M. ZAINUDDIN SYAHDANIA', '0159403596', '3523072106150001', 'TUBAN', '2015-06-21', '10 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. BUNGUR RT 002/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283869951735', 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD SYAHADA', 'HUSNIATUN', 'AHMAD SYAHADA', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('7f2786dd-ebdf-4cfc-aca0-07bd03d5bd60', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'MOH. IBNAL BESOR AL QIFARI', '3188075141', '3526061707180001', 'BANGKALAN', '2018-07-17', '7 th, 2 bln', 'Aktif', 'Laki-laki', 'Jl. H. MUCHTAR RAYA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Basori', 'HANIFAH', 'Basori', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('7ff43093-a2d2-4260-96ac-3e5ae6990aaa', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'MUHAMMAD MISBAHUDIN AL ALWI', '3187998921', '3174092504180003', 'JAKARTA', '2018-04-24', '7 th, 5 bln', 'Aktif', 'Laki-laki', 'JL. BAMBU GG. RESIMIN NO. 49 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'YAZID ALWI', 'FITRIA WULANDARI', 'YAZID ALWI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('815d9723-9955-4981-a833-4a93060f7249', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ZAIN ALI PUTRA SAMBRANI', '3180705659', '3671130209180003', 'JAKARTA', '2018-09-02', '7 th, 1 bln', 'Aktif', 'Laki-laki', 'JL. MUHASYIM NO. 29 RT 004/001 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '6287708285192', 'Tidak Ada', 'Tidak Ada', NULL, 'ANGGA SAMBRANI', 'DERRY APRIYANI', 'ANGGA SAMBRANI', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('81ac65aa-e7e6-48f4-8c2c-2e1492ddc06e', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'KHANZA ASSYIFA BANAFSHA', '3179536564', '2171122507170004', 'KOTA BATAM', '2017-07-25', '8 th, 2 bln', 'Aktif', 'Perempuan', 'JL. CILEDUG RAYA GG. BAKTI NO. 9 PETUKANGAN SELATAN, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12270, 12270', NULL, NULL, NULL, NULL, 'MASBUDI SURIADARMA', 'SUSI DEPRINA', 'MASBUDI SURIADARMA', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('8211efbb-184f-455c-b699-e82aa2cd2d32', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MAULANA MALIK IBRAHIM', '3195281338', '3174102003190004', 'JAKARTA', '2019-03-20', '6 th, 6 bln', 'Aktif', 'Laki-laki', 'JL. MASJID DARUL FALAH NO. 57  RT 009/003 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285763407186', 'Tidak Ada', 'Tidak Ada', NULL, 'AMIRULAH', 'MARDIANA PRATIWI', 'AMIRULAH', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('8220a56a-99f8-4e8f-9842-71f6e1aa7006', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'SHINTA SYAFIRA SALSABILA TRIANANTA BHAWONO', '3187204063', '3275096304180004', 'BEKASI', '2018-04-23', '7 th, 5 bln', 'Aktif', 'Perempuan', 'Jl. Nurtanio Blok C1 Perum Taman Jatisari Permai No.9 JATISARI, JATIASIH, KOTA BEKASI, JAWA BARAT, 17426, 17426', '6281386813031', NULL, NULL, NULL, 'Kresno Widho Bhawono', 'PUTRI ANDINA LAKSMIWATI', 'Kresno Widho Bhawono', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('828eb8b8-15aa-4c9e-bf0c-6d6f8b857445', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'RANIA PUTRI ANDRIANSYAH', '3162614569', '3174104307160002', 'JAKARTA', '2016-07-03', '9 th, 3 bln', 'Aktif', 'Perempuan', 'Jl.H.MUCHTAR RAYA GG.H REBO RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281212914108', 'Tidak Ada', 'Tidak Ada', NULL, 'ANDRI SUPRIADI', 'YUNITA JAMAL', 'ANDRI SUPRIADI', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('852a0fdb-6c8d-412e-9bd8-234c79c7da2d', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'AZAM FATURAHMAN', '3163836402', '3174102610160002', 'TANGERANG', '2016-10-25', '8 th, 11 bln', 'Aktif', 'Laki-laki', 'JL AMD X RT OO9 RW 001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628888058650', 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMAD NUR', 'WELLY ANJANI', 'MUHAMAD NUR', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('89cb29f6-65bc-4802-b780-f5310a536d5e', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'AINI NUR ASSYIFA', '3155133145', '3174105203151001', 'JAKARTA', '2015-03-12', '10 th, 6 bln', 'Aktif', 'Perempuan', 'Jl. AMD X RT.13/01 No.B44 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6289531105227', 'Tidak Ada', 'Tidak Ada', NULL, 'Nursin', 'HIKMAWATI', 'Nursin', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('8a0dd1a7-e299-4b5c-8c4b-6c7e1fdf3a67', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'FAHIRA HAFIZAH MAHVASH', '3182832483', '3173055212180010', 'JAKARTA', '2018-12-12', '6 th, 9 bln', 'Aktif', 'Perempuan', 'JL. H. HARUN RT 004/011 NO. 32 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281399691980', 'Tidak Ada', 'Tidak Ada', NULL, 'WINDRA SONATA', 'ETI HERLINA CHANIAGO', 'WINDRA SONATA', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('8a1feab5-4bd3-410e-ac16-023e62832d83', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'MOHAMMAD ALLIF MAULANA', '3158844111', '3327092301150005', 'PEMALANG', '2015-01-22', '10 th, 8 bln', 'Aktif', 'Laki-laki', 'JL. TK PEMBINA RT 006/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'IKMA', 'MOLINA WAYU SETIANINGRUM', 'IKMA', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('8a437161-3a2c-4eac-8af7-0966137f63bd', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'MUHAMAD ARFADIA ULAMI', '3168492733', '3327142710160002', 'PEMALANG', '2016-10-26', '8 th, 11 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA RT 011/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281776829762', 'Tidak Ada', 'Tidak Ada', NULL, 'AIDI ULIL ALBAB', 'HIDAYATUL ULYA', 'AIDI ULIL ALBAB', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('8cf85ffd-4ef6-4898-8aa2-65aa610b7342', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'MOSKOW PUTRA GARCIA', '3167723621', '3671132411160007', 'TANGERANG', '2016-11-23', '8 th, 10 bln', 'Aktif', 'Laki-laki', 'JL. KEJAKSAAN V / 13 RT 001/006 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'EKO KURWOSO', 'DELILAH HANDAYANI', 'EKO KURWOSO', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('8d7b0f31-b580-4337-8370-2d7c00edd2c7', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ADZKIA AL HAFIZAH', '3183754600', '3601335408180001', 'JAKARTA', '2018-08-14', '7 th, 1 bln', 'Aktif', 'Perempuan', 'Kp. Sabi Masjid BANGKONOL, KORONCONG, KABUPATEN PANDEGLANG, BANTEN, 42251, 42251', '6282310807478', 'Tidak Ada', 'Tidak Ada', NULL, 'SUKARDI', 'SITI NURWANTI', 'SUKARDI', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('8e0efd59-81c9-4c8d-b924-b9994bb2de6e', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'AMIRA ZAHIRA PUTRI', '3168602877', '3174054611160010', 'TANGERANG', '2016-11-06', '8 th, 10 bln', 'Aktif', 'Perempuan', 'jln.inpres 18 RT 02/ RW 08 no: 100 LARANGAN SELATAN, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HERWANTO', 'SUMARTINI', 'HERWANTO', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('92dadca6-6aae-40e4-b94d-3074171f7ebf', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'KENZO DE ARRA', '0133200642', '3201130112130004', 'BOGOR', '2013-12-01', '11 th, 10 bln', 'Aktif', 'Laki-laki', 'Jl. H. Riyan PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Nul', 'NUR FARA APRILLIANI', 'Nul', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('93169241-0c65-45a9-b693-fb75d074b80d', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'SYARAH SYALWA AHMAD', '3165091923', '3215085407160003', 'KARAWANG', '2016-07-14', '9 th, 2 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR RAYA RT 010/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD', 'SRI RAHAYU', 'AHMAD', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('93243331-c40e-41c8-8368-aea8bb816687', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'MUHAMMAD AZIQ', '3174540916', '3174102812170002', 'TANGERANG', '2017-12-28', '7 th, 9 bln', 'Aktif', 'Laki-laki', '. H. ILYAS PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'SUBUR JAYA', 'RENI ELNAVIA', 'SUBUR JAYA', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('93afe073-54c3-4e5f-8fdf-7e6000f08796', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'MUHAMMAD RASYID', '3147536720', '3174100405141004', 'JAKARTA', '2014-05-04', '11 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. AMD X RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283873756380', 'Tidak Ada', 'Tidak Ada', NULL, 'RUSLIH', 'ATIYAH', 'RUSLIH', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('952ae06a-2b40-4b74-9340-6f0f68f907db', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'MAULA MAZIZ RAZI  YUSUF', '3138506079', '3174101305131001', 'JAKARTA', '2013-05-13', '12 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. H. NAJIH RT 004/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281314654158', 'Tidak Ada', 'Tidak Ada', NULL, 'MOHAMAD YUSUF', 'PUJI LESTARI', 'MOHAMAD YUSUF', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('95da0bc5-68ef-4e5f-9337-18d2be6b3ce2', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'JIHAN KHANZA AZKADINA', '3185219436', '3674036910180004', 'KOTA TANGERANG', '2018-10-29', '6 th, 11 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR 3E NO. 76D RT 003/010 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '62895412042578', 'Tidak Ada', 'Tidak Ada', NULL, 'MARKO ROMADONISAH', 'LUTMI ALPIATUN', 'MARKO ROMADONISAH', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('95febffa-8f42-40b4-a632-d9b913128ee6', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ABIIZAR FIRYANSYAH', '0144169343', '3174101402141004', 'JAKARTA', '2014-02-13', '11 th, 7 bln', 'Aktif', 'Laki-laki', 'Jl. Masjid Darul Falah RT 013/002 , , , , 12260, 12260', '6283870422921', 'Tidak Ada', 'Tidak Ada', NULL, 'FIRMANSYAH', 'YANTI SAFRINA', 'FIRMANSYAH', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('962ef0f1-9999-46cf-9f59-2026640f0e25', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RASYID ANDRIANSYAH', '0136226339', '3174102906131003', 'JAKARTA', '2013-06-28', '12 th, 3 bln', 'Aktif', 'Laki-laki', 'Jl. H. Kuling RT 007/011 Petukangan Utara , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870423003', 'Tidak Ada', 'Tidak Ada', NULL, 'ANDRI SUPRIADI', 'YUNITA JAMAL', 'ANDRI SUPRIADI', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('9a847a9d-8779-4838-b407-0879b0c20f37', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'DIAN AYU RAMADHANI', '3129442877', '3174104408121011', 'JAKARTA', '2012-08-04', '13 th, 1 bln', 'Aktif', 'Perempuan', 'JL. AMD X RT 008/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '62895324857939', 'Tidak Ada', 'Tidak Ada', NULL, 'JOKO SUHARTONO', 'NGATINI', 'JOKO SUHARTONO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('9adaeb48-83ce-4627-af67-b7548bab5aee', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'INSHA NAZIHA RIZKYA', '3185520684', '3175094812180010', 'JAKARTA', '2018-12-08', '6 th, 9 bln', 'Aktif', 'Perempuan', 'Jl. Poncol SUSUKAN, CIRACAS, KOTA ADM. JAKARTA TIMUR, DAERAH KHUSUS IBUKOTA JAKARTA, 13750, 13750', '6287881971720', 'Tidak Ada', 'Tidak Ada', NULL, 'HERMADI', 'SRI RATNA', 'HERMADI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('9b765438-65cc-44be-800f-951294c16483', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'ARINSKY KHAIRA WIGATI', '3181909682', '3174056401180004', 'JAKARTA', '2018-01-24', '7 th, 8 bln', 'Aktif', 'Perempuan', 'JL. PENINGGARAN BARAT III RT 008/011 KEBAYORAN LAMA UTARA, KEBAYORAN LAMA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12240, 12240', '6285782399102', 'Tidak Ada', 'Tidak Ada', NULL, 'WIKU SETIAWAN', 'YENI KRISTINA', 'WIKU SETIAWAN', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('9d7d4e1b-299a-43c9-8234-b6c840525dab', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MUHAMMAD RUZAIN SYAWAL', '3181195048', '3174101007180004', 'TANGERANG', '2018-07-10', '7 th, 2 bln', 'Aktif', 'Laki-laki', 'GG. H. REBO NO. 14 RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6287771961383', 'Tidak Ada', 'Tidak Ada', NULL, 'ADHIT SETIAWAN', 'EVA PUSPITA SARI', 'ADHIT SETIAWAN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('9fbe8087-f4e0-4b08-ace0-31aed4b42527', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ARKA DAFIAN RAFISQI', '3174180747', '3174102711170005', 'TANGERANG', '2017-11-27', '7 th, 10 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285693640445', 'Tidak Ada', 'Tidak Ada', NULL, 'PUTRA PRATAMA', 'NASYATI', 'PUTRA PRATAMA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('a148a54e-0f31-4e08-b2f1-3ced4d8194b3', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ASYIFA NUR FAUZIAH', '3152720220', '3173084709151008', 'JAKARTA', '2015-09-07', '10 th, 0 bln', 'Aktif', 'Perempuan', 'JL. H. KASAM NO. 7  RT 005/04 MERUYA SELATAN, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11650, 11650', '6289671069393', 'Tidak Ada', 'Tidak Ada', NULL, 'SUBUR', 'SITI MAULANA', 'SUBUR', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('a182d974-3e79-48b7-be36-b700b8251bbb', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ARBANU SAKHA JULIANLUTFI', '3172028774', '3174101709170007', 'JAKARTA', '2017-09-17', '8 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. GAIM NO. 55A PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'GENTA LUTFIANDI', 'TITA YULIANDAH', 'GENTA LUTFIANDI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('a7392e48-a55f-49e2-bab6-ad1b70ff1294', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'KHODIJAH JAUHAROTUSHUDUR', '3169781478', '3174084803160002', 'JAKARTA', '2016-03-07', '9 th, 6 bln', 'Aktif', 'Perempuan', 'JL. ANGGREK IV RT06 RW 05 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6288224933070', 'Tidak Ada', 'Tidak Ada', NULL, 'IIM BUDIMAN', 'NURLY WALIDAYNI', 'IIM BUDIMAN', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('a883123c-0fe8-42e3-8b78-4ff8450143d5', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ARSYILLA ROMEESA FARZANA', '3182307052', '3209084903180001', 'CIREBON', '2018-03-08', '7 th, 6 bln', 'Aktif', 'Perempuan', 'RT 002 RW 003 SUSUKAN LEBAK, SUSUKAN LEBAK, KABUPATEN CIREBON, JAWA BARAT, 45185, 45185', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Zaenal Muhidin', 'IIS DAHLIYAH', 'Zaenal Muhidin', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('a94fc4f3-d89f-48c9-89bc-66959c6fb48c', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ALIF PURNAMA IBRAHIM', '3146049203', '3529251206150001', 'SUMENEP', '2014-06-12', '11 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. EMPANG H. MUSA GG. SUSUKAN RT 003/009 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281395982141', 'Tidak Ada', 'Tidak Ada', NULL, 'KAMSARIANTO', 'NURUL HASANAH', 'KAMSARIANTO', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('a95831f7-fb66-4cb1-81ef-a1d5bcbe08b4', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMMAD RAKHA ATHAZAKI FIRMASNYAH', '3188272850', '3174102909180005', 'JAKARTA', '2018-09-29', '7 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. MUCHTAR RAYA GG. H. REBO PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6282118181309', 'Tidak Ada', 'Tidak Ada', NULL, 'FIRMANSYAH', 'KHOLILAH', 'FIRMANSYAH', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('a99e9f36-e1a0-4fe2-842c-1b1f49d2d175', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SALSA AYU NINGRUM', '3125485885', '3212196905120002', 'INDRAMAYU', '2012-05-29', '13 th, 4 bln', 'Aktif', 'Perempuan', 'JL. KEJAKSAAN GG. H. SUAD RT 002/001 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'YANTO', 'WARTEM', 'WARTEM', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('aafe0988-c353-4dcf-b191-df8f8da5de31', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'TRANIA NUR AZ ZAHRA', '3154273114', '3328095904150003', 'TEGAL', '2015-04-18', '10 th, 5 bln', 'Aktif', 'Perempuan', 'JENGGAWUR RT 001 RW 001 JENGGAWUR, PANGKAH, TEGAL, JAWA TENGAH, 52471, 52471', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'TRAN PRIYANTO', 'NURUL EKA FATIMAH', 'TRAN PRIYANTO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('ab2309d5-7337-438a-bea9-10c4a40e0eff', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'MOHAMMAD SYAHRUL RAMADAN', '0119483006', '3215260408110002', 'KARAWANG', '2011-07-31', '14 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA GG. H. REBO RT 011/012 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SAHIR', 'CHAIRUNAISA', 'CHAIRUNAISA', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('ac94bf2d-2cc4-4666-baf8-551035c40ec9', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'NAZILLA HAYFA HUMAIRA', '3189912065', '3205406305180001', 'GARUT', '2018-05-23', '7 th, 4 bln', 'Aktif', 'Perempuan', 'JL. KEDAUNG RAYA RT 001/002 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SARIP', 'SILVIA DEWI', 'SARIP', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('acbd8e0a-a562-4c2f-a7fa-fd000463b67f', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'M RIFKI ZAENUL ARIFIN', '0134378623', '3203041209130003', 'CIANJUR', '2013-09-11', '12 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. MUCHTAR RAYA NO. 72 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'H. MUHAMMAD ABDUL SALIM', 'CUCU HAMIDAH', 'H. MUHAMMAD ABDUL SALIM', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('ad5e528d-1888-412a-a330-c9dc6c65e9a6', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'SITI SYAQILA AHZA RAMADHANI', '3179445490', '3174044906170007', 'JAKARTA', '2017-06-08', '8 th, 3 bln', 'Aktif', 'Perempuan', 'KEBAGUSAN KECIL NO. 32 RT 007/003 KEBAGUSAN, PASAR MINGGU, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12520, 12520', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MOCHAMAD SUBCHAN', 'HENNY ROSDIANA', 'MOCHAMAD SUBCHAN', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('ad890d11-c0d6-4c11-9b39-9df9c35741f9', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'RAMADHAN SEMBADA PUTRA', '3174194646', '3275032705170006', 'BEKASI', '2017-05-26', '8 th, 4 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya III No. 28 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6282124983943', 'Tidak Ada', 'Tidak Ada', NULL, 'Asep Sembada', 'SUHARNI', 'Asep Sembada', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('adda09f3-1ad8-4052-9dde-c64ed9f6b32b', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'MUHAMMAD ALI AKBAR', '3144653504', '3171070301141004', 'TANGERANG', '2014-01-03', '11 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. DUKUH PINGGIR I RT 001/005 KEBON MELATI, TANAH ABANG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10230, 10230', '6282123798342', 'Tidak Ada', 'Tidak Ada', NULL, 'SOFYAN HADI', 'HERLIA FEBRIYANTI', 'SOFYAN HADI', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('b030127d-6ae1-4776-b676-b250d201aec7', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'SAFIRA NURRISKI', '3166084233', '3301185201180002', 'CILACAP', '2018-01-12', '7 th, 8 bln', 'Aktif', 'Perempuan', 'JL. HOSCOKROAMINOTO GG. HJ. SADELIH RT 001/011 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281299938865', 'Tidak Ada', 'Tidak Ada', NULL, 'AGUS SUTANTO', 'MARINI', 'AGUS SUTANTO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('b05b0dd3-d54d-49ac-8fa4-0a43702afede', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'BARIK ASSIDIQ PRATAMA', '3170668997', '3174102809170004', 'JAKARTA', '2017-09-28', '8 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. NAJIH RT 009/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'WAHYU RAMADHAN', 'ANIYAH', 'WAHYU RAMADHAN', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('b0cc3c6e-9afd-41e1-8d6a-f55e5ca777f4', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ALLY RIZKY RAMADHAN', '3184756650', '3671132405180003', 'TANGERANG', '2018-05-23', '7 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. CHAIRIL ANWAR RT 001 RW 002 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'WISDIAWAN', 'MARWATI', 'MARWATI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('b19b4289-d1bf-4d41-a5cb-6149002539b5', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'M RIFQI SAKHI ZAIDAN', '3158872317', '3208170108150002', 'KUNINGAN', '2015-08-01', '10 th, 2 bln', 'Aktif', 'Laki-laki', 'JL CHAIRUL  ANWAR GG. AMAL RT 003/004 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6285714936771', 'Tidak Ada', 'Tidak Ada', NULL, 'HERI', 'LINA', 'HERI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('b25b702a-df2e-4444-a3fe-d5e32c1cd9c9', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMMAD ZIFRAN AURELIO', '3187383896', '3302010411180002', 'BANYUMAS', '2018-11-04', '6 th, 10 bln', 'Aktif', 'Laki-laki', 'JL. KEJAKSAAN 3 NO. 34 RT 002/006 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '628978167552', 'Tidak Ada', 'Tidak Ada', NULL, 'MUSTAFID', 'LAELATUL MUKAROMAH', 'MUSTAFID', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('b3fce74a-c2f1-4ae3-b78e-79e9b3e6d899', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'AISYAH PUTRINOF', '3167744813', '3671135908160001', 'JAKARTA', '2016-08-19', '9 th, 1 bln', 'Aktif', 'Perempuan', 'Jl.h.gaim RT 06 RW 02 Petukangan Utara PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285263678267', 'Tidak Ada', 'Tidak Ada', NULL, 'NOFRIMAN', 'NOVA SUSILOWATI', 'NOFRIMAN', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('b4696205-daa7-460d-a0ae-5b64ef8c524c', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'NUR WILDAN AL MUHAJIRIN', '3186848413', '3208240906180003', 'KUNINGAN', '2018-06-08', '7 th, 3 bln', 'Aktif', 'Laki-laki', 'RT 04/01 SUKAJAYA, CIMAHI, KABUPATEN KUNINGAN, JAWA BARAT, 45582, 45582', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Tarmad', 'JAMILAH', 'Tarmad', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('b52bf040-4c15-4a46-b7a3-53d8be664644', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'MAULANA RIZKY', '3158368151', '3174101609151007', 'JAKARTA', '2015-09-16', '10 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. REBO NO. 11  RT 012//011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6287770774999', 'Tidak Ada', 'Tidak Ada', NULL, 'MOCH. SUBCHAN', 'ANITA APRIANI', 'MOCH. SUBCHAN', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('b58ba183-2bc7-4ce3-98ec-cb9f29ecf140', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RANDI MAULANA', '3136698889', '3329091509130006', 'BREBES', '2013-09-14', '12 th, 0 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya Gg. Wahid RT 010/001 NO. 101 , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422836', 'Tidak Ada', 'Tidak Ada', NULL, 'Masroni', 'ROSDIANA', 'Masroni', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('b5edeb2d-bae5-4c4f-aecf-f9a4e20cc810', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'AQILA RAHMI ARDIANI', '0143160082', '3201184805140001', 'BOGOR', '2014-05-07', '11 th, 4 bln', 'Aktif', 'Perempuan', 'Jl. H. Muchtar Raya RT 005/001 , , , , 12260, 12260', '6283870423005', 'Tidak Ada', 'Tidak Ada', NULL, 'WAHYANI', 'NURLINDA', 'WAHYANI', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('b70855be-c4e3-49a3-8c0e-b78e4375674d', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'CLEMIRA ANAMI SAFIR', '3183942690', '3671134402180001', 'JAKARTA', '2018-02-04', '7 th, 7 bln', 'Aktif', 'Perempuan', 'Tanjung Senag TANJUNG SENANG, TANJUNG SENANG, KOTA BANDAR LAMPUNG, LAMPUNG, 35142, 35142', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Sandy F.Mahendra', 'FIRLIANA YUSRI MAHYUDIN', 'Sandy F.Mahendra', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('b7347be7-b755-44e8-8301-c3da6d7fc446', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'AMAR TIO RAMBE', '3175218240', '3173012001170008', 'JAKARTA', '2017-01-19', '8 th, 8 bln', 'Aktif', 'Laki-laki', 'RAWA BUAYA RT 009/011 RAWA BUAYA, CENGKARENG, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11740, 11740', '6281293083709', 'Tidak Ada', 'Tidak Ada', NULL, 'AMRAS RAMBE', 'MARIATI SIHOMBING', 'AMRAS RAMBE', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('b869e78d-e69b-4650-a0f2-ef34d28cb8e9', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'FAEYZA MYSHA', '3186578218', '3276031009180005', 'DEPOK', '2018-09-10', '7 th, 0 bln', 'Aktif', 'Laki-laki', 'JL.MUCHTAR RAYA RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285727710069', 'Tidak Ada', 'Tidak Ada', NULL, 'HERMAN ALESSANRO SUSILO', 'WINDA', 'HERMAN ALESSANRO SUSILO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('b8ca94c3-de9b-4215-8664-99bd69ba758c', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'ALIEF PUTRA DARMAWAN', '3131896292', '3173082109131001', 'JAKARTA', '2013-09-20', '12 th, 0 bln', 'Aktif', 'Laki-laki', 'Jl. Pesantren RT 003/004 , BALARAJA, KABUPATEN TANGERANG, BANTEN, 15156, 15156', '6283870423046', 'Tidak Ada', 'Tidak Ada', NULL, 'NASERIN', 'NURYANI', 'NASERIN', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('b926828e-8cf3-4b30-bf55-54d0c2acb583', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'RAMADITHYA ARSHAKA SANTOSO', '3161166364', '3173082010160003', 'TANGERANG', '2016-10-20', '8 th, 11 bln', 'Aktif', 'Laki-laki', 'KOMPLEK WALIKOTA BLOK C5 NO. 13 RT 006/003 MERUYA SELATAN, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11650, 11650', '6287883799881', 'Tidak Ada', 'Tidak Ada', NULL, 'EKO BUDI SANTOSO', 'MIA RUSTIA', 'EKO BUDI SANTOSO', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('baa463a1-0899-487f-b7df-a343bc68a6c5', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'RAMDHAN ALY YUMANSYAH', '3179758717', '3174102006170012', 'JAKARTA', '2017-06-19', '8 th, 3 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'NIMAN', 'YULIANA', 'NIMAN', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('bbc7e0ff-da9e-487f-a8df-dd3d341ea1f0', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'AQILA PUTY HUMAIRA', '0142129728', '3671134309140002', 'JAKARTA', '2014-09-02', '11 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL   RT  001/006 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6287826908033', 'Tidak Ada', 'Tidak Ada', NULL, 'NURWANTO', 'NUR AMALIAH', 'NURWANTO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('bbf09943-15a8-44b0-80bd-bdac9e50c70a', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'ARKHA NAUFAN ALFARIZI', '3178328399', '3304041212170002', 'JAKARTA BARAT', '2017-12-11', '7 th, 9 bln', 'Aktif', 'Laki-laki', 'JALAN PEMUDA GANG B RT 02 RW 11 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281390808506', 'Tidak Ada', 'Tidak Ada', NULL, 'AGUS INDRIYANTO', 'HETI KUSTINA', 'AGUS INDRIYANTO', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('bbf11d68-b0e3-4493-a6fc-e9a13f0c1499', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SALSABILA', '3155134836', '3174056501151003', 'PAGAR ALAM', '2015-01-25', '10 th, 8 bln', 'Aktif', 'Perempuan', 'JLN JIBAN GROGOL SELATAN, KEBAYORAN LAMA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 11752, 11752', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'FAHMI', 'NURLELA', 'NURLELA', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('bded4354-b01e-4c8a-930e-b13dbddbc734', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ABIDZAR ALGHIFARI', '3168651869', '3174102901160004', 'JAKARTA', '2016-01-29', '9 th, 8 bln', 'Aktif', 'Laki-laki', 'JL. MASJID DARUL FALAH NO. 57 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AMIRULLAH', 'MARDIANA PRATIWI', 'MARDIANA PRATIWI', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('be6b0216-c41f-4936-89df-3a30a14bbcd9', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'EDITHYA AUFFAR SANTOSO', '3138266599', '3173077261181622', 'JAKARTA', '2013-04-24', '12 th, 5 bln', 'Aktif', 'Laki-laki', 'KOMPLEK WALIKOTA BLOK C5  NO. 13 RT 006/003 MERUYA SELATAN, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11650, 11650', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'EKO BUDI SATOSO', 'MIA ROSTIA', 'EKO BUDI SATOSO', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('bf2dee23-bd33-472d-b6ed-ec0bbac58d36', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'MOZA AZZAHRA RUSLIYA', '3159276349', '3174105511150004', 'JAKARTA', '2015-11-15', '9 th, 10 bln', 'Aktif', 'Perempuan', 'JL. AMD X RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283873756380', 'Tidak Ada', 'Tidak Ada', NULL, 'RUSLIH', 'ATIYAH', 'RUSLIH', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('bf305ff9-dc63-41f0-87fb-7ce7455ee504', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'INDAH NUR SALLSABILLA', '3177215003', '3601185407170001', 'PANDEGLANG', '2017-07-13', '8 th, 2 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL GG. BHAKTI NO. 62B KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, NULL, NULL, NULL, 'SUHENDI', 'SITI NURAINI', 'SUHENDI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('c02efd1d-cfe5-4e94-abcd-72631d630980', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ALESHA WIZI PUTRI MAULANA', '3176583965', '3671136410170002', 'TANGERANG', '2017-10-23', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. KAV KREO PERMAI BLOK B NO. 42 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, NULL, NULL, NULL, 'MUHAMAD FANZI MAULANA', 'DWI PUSPITASARI SE.', 'MUHAMAD FANZI MAULANA', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('c34b22bd-c55a-490c-869c-56b06fb129f5', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MAULIDA RAHMA ISMAIL', '3186086936', '3173085911180002', 'JAKARTA', '2018-11-19', '6 th, 10 bln', 'Aktif', 'Perempuan', 'JL. MASJID BABUL MINAN NO. 72 RT 007/008 JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', '62895363510479', 'Tidak Ada', 'Tidak Ada', NULL, 'RACHMAT ISMAIL', 'ADE HIKMAH FITRIAH SARI', 'RACHMAT ISMAIL', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('c47862b8-2412-4d7b-a257-b46f1496c37c', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'IRSYAM HAZARD', '3173065954', '3171072607170004', 'GARUT', '2017-07-26', '8 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. MASJID BABUL MINAN JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'NURDIANA', 'INDRIYANI', 'NURDIANA', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('c4972be4-fdf0-4b4d-bd84-896b35ee0071', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'SHAQUILLE HABIBI ALSYAZANI', '3199138436', '3171071305190003', 'JAKARTA', '2019-05-13', '6 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. PETAMBURAN III NO. 07 RT 003/004 PETAMBURAN, TANAH ABANG, KOTA ADM. JAKARTA PUSAT, DAERAH KHUSUS IBUKOTA JAKARTA, 10260, 10260', '6285888695474', 'Tidak Ada', 'Tidak Ada', NULL, 'SARIFUDIN BAKHTIAR', 'NATASHA CHRISTY', 'SARIFUDIN BAKHTIAR', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('c5694dd1-bb27-469f-b24b-6a0bfff64bf7', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RHEIVAN NAURENDRA', '0126338760', '3313041610120001', 'KARANGANYAR', '2012-10-15', '12 th, 11 bln', 'Aktif', 'Laki-laki', 'Jl. H. Muchtar Raya Gg. Bungur RT 002/011 Petukangan Utara PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'NUROHMAN', 'SRI WAHYUNINGSIH', 'NUROHMAN', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('c5762182-f850-4338-94e3-2f4b4d59b39c', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'FITHATUNUR AL JUNDIAH SIREGAR', '3179727366', '3174104903170009', 'TANGERANG', '2017-03-08', '8 th, 6 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL NO. 79 RT 002/004 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SYAHRIAL EFENDI SIREGAR', 'NUR FATIMAH AZ ZAHRA', 'SYAHRIAL EFENDI SIREGAR', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('c84970d4-d342-4210-a9b2-4417f5490d46', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'FATHIN KHOIRUNISA', '3182544519', '3305205302180001', 'JAKARTA SELATAN', '2018-02-12', '7 th, 7 bln', 'Aktif', 'Perempuan', 'JL. JOGLO MASJID BABUL MINAN JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'BARIJO', 'SARYATI', 'BARIJO', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('c898b090-4a7c-4e50-aa90-53928325c54f', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'RIFKI AZIZAN FAJRIASYAH', '0132716850', '3174102407131001', 'JAKARTA', '2013-07-23', '12 th, 2 bln', 'Aktif', 'Laki-laki', 'Jl. H. Gaim Gg. Muchtar No. 13 RT 006/002 , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422919', 'Tidak Ada', 'Tidak Ada', NULL, 'M. Mustakim', 'EUIS SULISTIAWATI', 'M. Mustakim', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('c8adf023-d119-4b00-84c4-dc612a7034e3', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'SAAFIA KARAMEENA MYESHA', '3166268337', '3174105301160004', 'JAKARTA', '2016-01-13', '9 th, 8 bln', 'Aktif', 'Perempuan', 'JL. H. GAIM NO. 81F RT 005/002 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6282246478883', 'Tidak Ada', 'Tidak Ada', NULL, 'TRIYADI', 'NIDYA PUTRI ARIANI', 'TRIYADI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('c9a69516-58e1-4e08-bce7-6d819e5b1a2f', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'SA\'IIDUL MUWAFIQ ALGIFARI', '3150972938', '3218032012150002', 'PANGANDARAN', '2015-12-20', '9 th, 9 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA NO. 72 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SYAIFUL UYUN', 'SITI ROHMAH', 'KARNO', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('ca7be762-33e9-420a-a245-47bd2484d804', 'b2d49c61-adbc-40e9-b08c-0374810ab0f1', 'RAFIF ALTHARAZAK JOAN', '3160866012', '3671132412160001', 'TANGERANG', '2016-12-23', '8 th, 9 bln', 'Aktif', 'Laki-laki', 'Jl.chairil anwar no.61 a KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6285693100679', 'Tidak Ada', 'Tidak Ada', NULL, 'JOKO SETYO UTOMO', 'SULISTIAN', 'JOKO SETYO UTOMO', '2026-03-19 21:45:57', '2026-03-19 21:45:57'),
('cba70293-3443-4d03-b740-3c17a34c871c', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'ALIF NURRAHMAN SIDDIQ', '3141078124', '3202312008140002', 'SUKABUMI', '2014-08-19', '11 th, 1 bln', 'Aktif', 'Laki-laki', 'KP. CIBALUNG RT 002/004 TALAGA, CARINGIN, KABUPATEN SUKABUMI, JAWA BARAT, 43344, 43344', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SUGIONO', 'SITI SOPIAH', 'SUGIONO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('d2bb76f5-7d75-440c-bda3-304d1c54e430', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ADZKIA NASYITA AL MEERA DHIAS', '3157321936', '3174076411150002', 'JAKARTA', '2015-11-24', '9 th, 10 bln', 'Aktif', 'Perempuan', 'JL. H. JIAN NO.. 61 RT 006/007 CIPETE UTARA, KEBAYORAN BARU, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12150, 12150', '6281510316063', 'Tidak Ada', 'Tidak Ada', NULL, 'SUPRIJADI', 'TRI SUHARSIH', 'SUPRIJADI', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('d43e87f6-7381-4493-8bf5-4486b7a74448', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'AHMAD SAKHYY SIROJUDIN', '3174417620', '3218031307170003', 'PANGANDARAN', '2017-07-13', '8 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA NO. 72 RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SYAIFUL UYUN', 'SITI ROHMAH', 'KARNO', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('d528a5c8-2311-4878-818c-533b35b47d90', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'ALYA FAIZA PRABOWO', '0145482741', '3173015905141026', 'JAKARTA', '2014-05-19', '11 th, 4 bln', 'Aktif', 'Perempuan', 'JL. DHARMA WANITA RT.008/001 RAWA BUAYA, CENGKARENG, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11740, 11740', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HERI PRABOWO', 'GUSTI YANTI', 'GUSTI YANTI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('da973234-9e0d-4a10-8e8e-e770a08727a0', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'NU\'MAA KHAIRUN NISA', '3140700909', '3306056201140001', 'PURWAREJO', '2014-01-21', '11 th, 8 bln', 'Aktif', 'Perempuan', 'Jl. H. Sakim RT 010/011 Petukangan Utara , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422525', 'Tidak Ada', 'Tidak Ada', NULL, 'Budi Hartoyo', 'RESMININGSIH', 'Budi Hartoyo', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('da99b263-9e8e-4be2-b192-66f1f6022be9', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'AQILA SYAFANA AHMAD', '3177386243', '3174106505170003', 'TANGERANG', '2017-05-24', '8 th, 4 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR RAYA GG. HARUN RT 005/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD AMIRUL HAKIM', 'SITI MAISAROH', 'AHMAD AMIRUL HAKIM', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('dbc3bb1a-0b14-4856-82af-67919ef8ddb0', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SULTAN SYAFKI ALAIK', '3140073061', '3174101404141008', 'JAKARTA', '2014-04-14', '11 th, 5 bln', 'Aktif', 'Laki-laki', 'Jl. H. Holil, Rt. 01/06, Kreo KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6283893853449', 'Tidak Ada', 'Tidak Ada', NULL, 'ABDUL BAKI', 'SUMIYATI', 'ABDUL BAKI', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('dc280c00-08ac-4c79-a130-f488b398f70c', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ZASKIYA INDRIANA', '3156206934', '3315084112150003', 'GROBOGAN', '2015-12-01', '9 th, 10 bln', 'Aktif', 'Perempuan', 'JL H  REBO RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281517840181', 'Tidak Ada', 'Tidak Ada', NULL, 'JOKO SUSILO', 'JUMIATI', 'JOKO SUSILO', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('dcaca77b-f53b-41ac-8f42-5664ea7d562e', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'ASHEEQA YARA ADZANA', '3169788594', '3174106308160001', 'JAKARTA', '2016-08-22', '9 th, 1 bln', 'Aktif', 'Perempuan', 'JL. MUSHOLLAH NO. 47 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628979907975', NULL, 'Tidak Ada', NULL, 'ARIYANDIH', 'NURJANAH', 'ARIYANDIH', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('dd25c3ba-dce6-442a-a32c-bfc7e88a0c85', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'CLARISA CITRA MUSTIKA', '3140707301', '3312114606140003', 'WONOGIRI', '2014-06-06', '11 th, 3 bln', 'Aktif', 'Perempuan', 'JL. H. SULAIMAN RT 002/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281315888041', 'Tidak Ada', 'Tidak Ada', NULL, 'HERI PUJIYANTO', 'NURHAYATI', 'HERI PUJIYANTO', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('de48d048-d339-4593-8feb-158080ecaf02', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'SYAHRUL MUBAROK ZULFADHLI', '3154533246', '3174100506151004', 'JAKARTA', '2015-07-05', '10 th, 2 bln', 'Aktif', 'Laki-laki', 'JL. H. SANTENG NO.74 RT 010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '628118621329', 'Tidak Ada', 'Tidak Ada', NULL, 'SYARIFUDIN JUHRI', 'EKAWATI', 'SYARIFUDIN JUHRI', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('e00bddb4-1919-4c77-95d3-b9aaac10d499', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'SALMA NATANIA KATILI', '0139248971', '3174105506131003', 'JAKARTA', '2013-06-14', '12 th, 3 bln', 'Aktif', 'Perempuan', 'Jl. Masjid Darul Falah NO. 67 RT 008/010 , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422910', 'Tidak Ada', 'Tidak Ada', NULL, 'USMAN KATILI', 'KURNIASARI', 'USMAN KATILI', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('e06db945-c022-44d3-8092-990a088cee70', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'AISYAH HUMAIRAH DIMYATI', '3186072498', '3173055008180009', 'JAKARTA', '2018-08-09', '7 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. HOLIL RT : 03 RW : 05 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AHMAD DIMYATI', 'RIA IRAWATI', 'AHMAD DIMYATI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('e0716d28-dc3f-4d9e-8363-abeab33cec60', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'AZKA ALADRIC', '3154596368', '3601351710150001', 'JAKARTA', '2015-10-17', '9 th, 11 bln', 'Aktif', 'Laki-laki', 'Jalan anggrek no. 27e Rt002/005 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285772514717', 'Tidak Ada', 'Tidak Ada', NULL, 'AEDI', 'CASINAH', 'AEDI', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('e0dfaf6a-18ef-4c78-975d-842f4daf7ea9', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'RAISAH ASILLA RAHMA', '3139600394', '3171075106131002', 'JAKARTA', '2013-06-11', '12 th, 3 bln', 'Aktif', 'Perempuan', 'JL. KEMANGGISAN PULO RT 1 NO. 22 PALMERAH, PAL MERAH, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11480, 11480', '6285717506949', 'Tidak Ada', 'Tidak Ada', NULL, 'AKHMAD FADHLI', 'RAHMAWATI', 'AKHMAD FADHLI', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('e2060130-637d-4233-8e68-378a9d4b88af', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'ALHANAN SHAQUILLE RAFIIF PRASETYA', '3194045420', '3671130704190002', 'TANGERANG', '2019-04-07', '6 th, 5 bln', 'Aktif', 'Laki-laki', 'JL. GOTONG ROYONG RT 001/001 NO. 49 LARANGAN INDAH, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '62813009994', 'Tidak Ada', 'Tidak Ada', NULL, 'DIMAS RAGIL PRASETYA', 'DIAN SUPRIATUN', 'DIMAS RAGIL PRASETYA', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('e2ea9ef1-df73-44d8-942d-d36c0fff2dad', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'GIBRAN AKBAR AJI PANGESTU', '3179926405', '3329102101170002', 'BREBES', '2017-01-20', '8 th, 8 bln', 'Aktif', 'Laki-laki', 'JL. H. JAELANI I PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281802318446', 'Tidak Ada', 'Tidak Ada', NULL, 'M. Dofirli', 'NUR ELAH', 'M. Dofirli', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('e3223087-fdc8-4718-8a30-f1327af6a755', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'AHZA DANISH', '3159887443', '3174101810151005', 'JAKARTA', '2015-10-18', '9 th, 11 bln', 'Aktif', 'Laki-laki', 'Jl. H. Misar, Rt. 06/11 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'Indera', 'MEGA MARYATI', 'Indera', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('e55e67f1-c15b-49ac-af90-7c9c13649560', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'BALQIS ABQARIAH AMRIZAL', '3156429005', '3174054708151003', 'JAKARTA', '2015-08-07', '10 th, 1 bln', 'Aktif', 'Perempuan', 'JL. H. AMSAR CIPULIR, KEBAYORAN LAMA, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12230, 12230', '6281210060865', 'Tidak Ada', 'Tidak Ada', NULL, 'AMRIL', 'PARYANI', 'AMRIL', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('e7a96602-5c81-4547-8026-508125cda8f2', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MUHAMAD ALBI BAHAR', '3185081033', '3603092110180001', 'TANGERANG', '2018-10-21', '6 th, 11 bln', 'Aktif', 'Laki-laki', 'JL. H. HOLIL RT01/009 NO. 22 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281907818983', 'Tidak Ada', 'Tidak Ada', NULL, 'SARTANI', 'ASIH', 'SARTANI', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('e83e32bc-1259-4e00-beb2-2ec0a7125cda', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'ZEA ALMAERA FAUZIYAH', '3172272531', '3173084312170005', 'JAKARTA', '2017-12-03', '7 th, 10 bln', 'Aktif', 'Perempuan', 'JL.RAYA JOGLO JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'FUAD FAUZI', 'SITI RUKOYAH', 'FUAD FAUZI', '2026-03-19 21:31:49', '2026-03-19 21:31:49');
INSERT INTO `siswas` (`id`, `kelas_id`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `umur`, `status`, `jenis_kelamin`, `alamat`, `no_telepon`, `kebutuhan_khusus`, `disabilitas`, `nomor_kip_pip`, `nama_ayah_kandung`, `nama_ibu_kandung`, `nama_wali`, `created_at`, `updated_at`) VALUES
('e8c441ab-6918-4c38-aca6-14c5bb5fd601', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'DEA ARISSA OLIVIA', '3151907731', '3673064310150001', 'SERANG', '2015-10-02', '10 th, 0 bln', 'Aktif', 'Perempuan', 'JL. MUSHOLA NO. 16 RT 008/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'ARIES SETYAWAN', 'ROHANI', 'ARIES SETYAWAN', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('e95821d2-144d-45f6-88f6-2692bfcbd6a3', 'caa9e97d-d587-4fe8-b59a-2b684b7a7b89', 'MUHAMMAD RAZIQ FATIH', '3188321551', '3671130112180002', 'TANGERANG', '2018-12-01', '6 th, 10 bln', 'Aktif', 'Laki-laki', 'Jl. H. Unus No. 84 LARANGAN UTARA, LARANGAN, KOTA TANGERANG, BANTEN, 15154, 15154', '62895360111163', 'Tidak Ada', 'Tidak Ada', NULL, 'ADI WINARKO', 'LARAS SINTA DWI NOVANTI', 'ADI WINARKO', '2026-03-19 21:31:17', '2026-03-19 21:31:17'),
('e95b6d65-e03b-48d4-aa63-f1e6946e20ff', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'GHAZI ALGHIFARI RIAGI', '3187245210', '3674032705180002', 'TANGERANG SELATAN', '2018-05-27', '7 th, 4 bln', 'Aktif', 'Laki-laki', 'JL. H. HOLIL GG. H. RADI VIIIRT 001/009  NO. 53 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281218676045', 'Tidak Ada', 'Tidak Ada', NULL, 'GIYADI', 'RIA SEPIYANA', 'GIYADI', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('e9db7843-96f6-4128-b04b-f020f4b9568f', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'FATMA ABIDAH', '3163766954', '3174104801160002', 'JAKARTA', '2016-01-08', '9 th, 8 bln', 'Aktif', 'Perempuan', 'Jl AMD X  RT 013/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6289652677439', 'Tidak Ada', 'Tidak Ada', NULL, 'MUHIDIN', 'FRISKA PUZI LESTARI SETYA ASIH', 'MUHIDIN', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('ea44c1d8-f509-4700-a194-059b4c294325', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'ALYA NURAINI HIDAYAT', '3155995174', '3174106001151007', 'JAKARTA', '2015-01-20', '10 th, 8 bln', 'Aktif', 'Perempuan', 'KP. SAWAH BARU RT 007/001 ULUJAMI, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12250, 12250', '6283818386922', 'Tidak Ada', 'Tidak Ada', NULL, 'A', 'JANIAH', 'JANIAH', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('ea9f2778-8ff2-48b0-b8b0-ed2c9bdc6c80', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'HANIF ABDULLOH RASYID', '3184480484', '3671131804180006', 'TANGERANG', '2018-04-17', '7 th, 5 bln', 'Aktif', 'Laki-laki', 'JL. BAMBU  NO. 105 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HILMAN NOVANDI', 'HERLINDA ERMEN', 'HILMAN NOVANDI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('eb5cdc14-a701-4d57-82a0-a3c90e254bad', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'CHOIRIL HIDAYAH', '3188559974', '3306166708180001', 'PURWOREJO', '2018-08-27', '7 th, 1 bln', 'Aktif', 'Perempuan', 'Jumbleng NGASINAN, BENER, PURWOREJO, JAWA TENGAH, 0, 0', '6285776929073', 'Tidak Ada', 'Tidak Ada', NULL, 'ATMINO', 'FATIMAH', 'ATMINO', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('ec1eb8b0-47c1-4ac3-87b1-e6367465e436', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'DEEVA WIZI PUTRI MAULANA', '3173691027', '3671136410170001', 'TANGERANG', '2017-10-23', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. KAV. KREO PERMAI BLOK B NO. 42 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, NULL, NULL, NULL, 'MUHAMMAD FANZI MAULANA, SE', 'DWI PUSPITASARI SE.', 'MUHAMMAD FANZI MAULANA, SE', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('ecaef9a4-7bc0-4eed-ad4e-e34a99b7f506', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMAD WILDIANSAH', '3181332370', '3329020303180003', 'BREBES', '2018-03-03', '7 th, 7 bln', 'Aktif', 'Laki-laki', 'JL. HOSCOKROAMINOTO GG. H. SADELIH RT 001/011 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6283898522519', 'Tidak Ada', 'Tidak Ada', NULL, 'SAIMAN', 'SITI ROHIMAH', 'SAIMAN', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('efb2a7d1-5751-4d76-a4e0-983c3a478f5b', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'QALESYA ARSYAKAYLA RYANDA', '3187415131', '3671136712180001', 'TANGERANG', '2018-12-27', '6 th, 9 bln', 'Aktif', 'Perempuan', 'JL. H. MUCHTAR RAYA GG. BELIMBING NO. 40B RT 002/012 KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', '6281398773289', 'Tidak Ada', 'Tidak Ada', NULL, 'ANGGA RYAN RAMADHONA', 'LINDA ARIANI', 'ANGGA RYAN RAMADHONA', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('f0481120-2720-4c37-8672-318d790a3454', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'MUHAMMAD XAVIR ZEN AOZORA', '3181916073', '3173051110180008', 'JAKARTA', '2018-10-11', '6 th, 11 bln', 'Aktif', 'Laki-laki', 'JL. H. YAMIN NO. 87E RT 003/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6281315794818', 'Tidak Ada', 'Tidak Ada', NULL, 'VENDY VIRAWAN', 'DAISY HILDA SARI', 'VENDY VIRAWAN', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('f29ad7c1-373c-4b01-81e2-cab67fbccf22', 'abf5b5de-32fa-4a67-b517-e9ca9d77543f', 'FATIMAH AZZAHRA', '3189129761', '3671134407180001', 'TANGERANG', '2018-07-04', '7 th, 2 bln', 'Aktif', 'Perempuan', 'Jl. Anggrek PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6285821114346', 'Tidak Ada', 'Tidak Ada', NULL, 'MULYADI', 'SRI YUNIARSIH', 'MULYADI', '2026-03-19 21:44:36', '2026-03-19 21:44:36'),
('f331ad54-2023-472d-92cb-4b00f3788f54', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'MUHAMMAD HAIRUDIN', '3169177723', '3215260703160003', 'KARAWANG', '2016-03-07', '9 th, 6 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA GG. H. REBO NO. 11RT 012/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'SAHIR', 'CHAIRUNNISA', 'CHAIRUNNISA', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('f357042f-c907-4df7-8e65-565814c0ceef', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'RENATA AIDA PUTRI', '3174537831', '3174104109170007', 'JAKARTA', '2017-08-31', '8 th, 1 bln', 'Aktif', 'Perempuan', 'JL. LIUN PETUKANGAN UTARA PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, NULL, NULL, NULL, 'WALUYOI', 'SUGINEM', 'WALUYOI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('f3700897-04d0-40f8-961c-45c3acb0e19e', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'FATHIMAH NURUL LATHIFAH', '3171072066', '3671135309170001', 'TANGERANG', '2017-09-12', '8 th, 0 bln', 'Aktif', 'Perempuan', 'JL. CHAIRIL ANWAR NO. 55 KREO KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MUHAMMAD NAFI\'UL ILMI', 'RATNANENGSIH', 'MUHAMMAD NAFI\'UL ILMI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('f3e5e449-0c98-44b3-824c-3905747914a5', 'e142d5fd-8343-4e65-b3df-6a34c9cd1bc3', 'FAIZ AZKA PRATAMA', '3157783322', '3316121709150001', 'BLORA', '2015-09-17', '10 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. H. MUCHTAR RAYA GG SAWO No. 43 RT 004/013 Kreo Larangan Tangerang Banten KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'JOKO SUPRIYANTO', 'DEVI YULIANA', 'JOKO SUPRIYANTO', '2026-03-19 21:46:28', '2026-03-19 21:46:28'),
('f403b398-b9fa-4a4d-8bbe-1ce27c7f2c2d', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'NAIMA DWI UTAMI', '3141243514', '3671134107140004', 'TANGERANG', '2014-07-01', '11 th, 3 bln', 'Aktif', 'Perempuan', 'JL. H. REBO RT 007/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6287871193690', 'Tidak Ada', 'Tidak Ada', NULL, 'HENDRI BUDI KUSWANTO', 'ANITA', 'HENDRI BUDI KUSWANTO', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('f7be4bdb-a21f-4cc9-936c-10cdc0ba467d', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'NAURA AMALIA ARDIYANTI', '3173408395', '3301147010170003', 'TANGERANG', '2017-10-29', '7 th, 11 bln', 'Aktif', 'Perempuan', 'JL. MAWAR VIIA RT 005/009 NO. 75 LARANGAN KREO KREO, LARANGAN, KOTA TANGERANG, BANTEN, 15156, 15156', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'TARDI', 'HARYANTI', 'TARDI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('f8c6d982-ebf8-4613-a3a5-51b4d1732300', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'SYIFA NAYLA AZZAHRA', '3145311033', '3329146010140005', 'BREBES', '2014-10-20', '10 th, 11 bln', 'Aktif', 'Perempuan', 'Jl. H. SULAIMAN RT 002/ RW 001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AMIRUDIN', 'AISAH LUTFIYANI', 'AMIRUDIN', '2026-03-19 21:32:08', '2026-03-19 21:32:08'),
('fb2e1ab7-bd52-4d9e-acf8-4645317d3b7d', '0fc58496-c4c9-4b91-b7e4-5cfd3285429f', 'ADIBA KHANZA RAMADHANI', '3175290104', '3174105606170007', 'TANGERANG', '2017-06-15', '8 th, 3 bln', 'Aktif', 'Perempuan', 'JL. H. SANTENG RT 010/001 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'HENDRI PRAYUDI', 'KHODIJAH', 'HENDRI PRAYUDI', '2026-03-19 21:45:16', '2026-03-19 21:45:16'),
('fc0afb58-7c08-4db1-8e84-0d7891ad9a5d', '908dcc2b-1a4b-4226-bea4-d3b8288d7cde', 'MUHAMMAD RAFA AL QOWWY', '3148543481', '3174102903141008', 'JAKARTA', '2014-03-28', '11 th, 6 bln', 'Aktif', 'Laki-laki', 'Jl. AMD X RT 009/001 No. 17 , PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', '6283870422828', 'Tidak Ada', 'Tidak Ada', NULL, 'GUNAWAN', 'IIN MARLINAH', 'GUNAWAN', '2026-03-19 21:32:26', '2026-03-19 21:32:26'),
('fd34c35b-62d9-436d-8d85-ea55ee6de256', 'dedb4ef3-2d18-4948-a5b1-29954854a64f', 'MUHAMMAD ZEIN ALWI', '3166115370', '3174102402160002', 'JAKARTA', '2016-02-23', '9 th, 7 bln', 'Aktif', 'Laki-laki', 'JL. AMD X PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'MAS\'UD', 'IDA YANTIH', 'MAS\'UD', '2026-03-19 21:31:58', '2026-03-19 21:31:58'),
('ff5cee62-59ce-4c9e-b879-d01f6bc4ebc0', 'd6ed497d-688b-4943-ad0e-8e4f3feb0434', 'SAPUTRA', '3144073283', '3173080609141014', 'JAKARTA', '2014-09-05', '11 th, 0 bln', 'Aktif', 'Laki-laki', 'JL. RAYA JOGLO    RT  007/001 JOGLO, KEMBANGAN, KOTA ADM. JAKARTA BARAT, DAERAH KHUSUS IBUKOTA JAKARTA, 11640, 11640', '6283807860110', 'Tidak Ada', 'Tidak Ada', NULL, 'EFENDI NUR', 'SUMIYATI', 'EFENDI NUR', '2026-03-19 21:32:17', '2026-03-19 21:32:17'),
('ff95bf7f-ccda-4bad-99db-0e758d5b2adb', '6f250fcf-99ca-4410-86a8-d3ec311d5af7', 'ALISHBA MALIKAH APRILIANI', '3173128575', '3327094704170002', 'PEMALANG', '2017-04-07', '8 th, 5 bln', 'Aktif', 'Perempuan', 'JL. H. HARUN NO. 12B RT 005/011 PETUKANGAN UTARA, PESANGGRAHAN, KOTA ADM. JAKARTA SELATAN, DAERAH KHUSUS IBUKOTA JAKARTA, 12260, 12260', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'TANURI', 'NUR ROHMAH', 'TANURI', '2026-03-19 21:31:49', '2026-03-19 21:31:49'),
('ff9b408c-c231-44e1-b22b-eb50835cca75', '403fded1-66fa-4df2-b163-ceeca8b6d322', 'MUHAMMAD IBRIZAN', '3135654017', '3175010103131002', 'JAKARTA', '2013-03-01', '12 th, 7 bln', 'Aktif', 'Laki-laki', 'KEBON KELAPA RT.001/RW.012 KEL. UTAN KAYU SELATAN KEC. MATRAMAN JAKARTA TIMUR UTAN KAYU SELATAN, MATRAMAN, KOTA ADM. JAKARTA TIMUR, DAERAH KHUSUS IBUKOTA JAKARTA, 13120, 13120', NULL, 'Tidak Ada', 'Tidak Ada', NULL, 'AMSAL S.T', 'SRI WIDAYANI', 'SRI WIDAYANI', '2026-03-19 21:32:08', '2026-03-19 21:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajarans`
--

CREATE TABLE `tahun_ajarans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun_ajarans`
--

INSERT INTO `tahun_ajarans` (`id`, `nama`, `mulai`, `selesai`, `aktif`, `created_at`, `updated_at`) VALUES
('f8646211-f0b4-41c4-a243-a489d03ce092', '2025/2026', '2025-07-14', '2026-06-20', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','guru') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guru',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `must_change_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `role`, `email`, `email_verified_at`, `password`, `must_change_password`, `remember_token`, `created_at`, `updated_at`) VALUES
('07c7bf88-fca1-4996-9dd7-25c83dfc3d38', '3671130505740009', 'Drs. Bunyani Hasbi', 'guru', '4bhasbi@gmail.com', NULL, '$2y$12$z7sc5XnoavOqFmKWdrphxeO9cXOszRP0DzDQgDxloQiG/ZsWtPpwS', 1, NULL, NULL, NULL),
('0a5281f6-6e5c-418c-b8e0-9e1f464f217c', '3174104711810010', 'Marliah, S.Pd.I', 'guru', 'marliahlia81@gmail.com', NULL, '$2y$12$ZfchsukRnseSopr1hE1bbelzl8x44KFNvqDLDRoI6T9UQ.ZzRUKnW', 1, NULL, NULL, NULL),
('11789676-fca3-4e75-b5b6-32da45c66d15', '3175021503870002', 'Budi Santoso, S.Pd', 'guru', 'budi.santoso@mialhaqqjakarta.sch.id', NULL, '$2y$12$mhLhxw/TxtdKHpbWjF8X..ZboaxocQcC1Ljsnn7LYbicD3/0L84.i', 0, NULL, NULL, NULL),
('358753aa-0046-4099-95ec-0a40b40ebb2c', '3174104107780001', 'Sri Surahmi, S.Pd.I', 'guru', 'sridafi01@gmail.com', NULL, '$2y$12$8kYL55tzAJ7Pj/yaGUkOhuq/ov0wYPnk77g4J/a6hGdCEeot0RBT6', 0, NULL, NULL, '2026-04-01 06:12:32'),
('439984dd-06ac-4294-9ada-709d794bad6a', '3174104404640006', 'Dra. Jamilah', 'guru', 'jamilahhukmi15@gmail.com', NULL, '$2y$12$mkse1.zNjt4AL9.j1E0MpeWHVY3OwNhnN7ZXzybTimjGonHcst0T2', 1, NULL, NULL, NULL),
('47110a69-6057-4731-805b-d115f874db4f', '196508172005012005', 'Aisyah, S.Pd.I', 'guru', 'aisyah.alhaq1708@gmail.com', NULL, '$2y$12$.8ptNUv4/Exj80xdGp7NoucxmgHOh69ELm7HJsLbXZVM8Zvrr46ta', 1, NULL, NULL, NULL),
('4fca0219-91d2-4c04-836f-677b1d125e72', '3174106412970001', 'Devy Angraini, S.Hum', 'guru', 'devyangraini97@gmail.com', NULL, '$2y$12$cxyLS/xgh7ceZRyf9BbcQeb7SsbSGGo5Og0o4rTSWheEa46qYZTAa', 1, NULL, NULL, NULL),
('5953f8e1-bb7c-478d-b412-a88d21edfee2', '3174104206780003', 'Ellah, S.Pd.I', 'guru', 'ellahsabrina20@gmail.com', NULL, '$2y$12$nn.tztgqOaMiTt/C3l5MJOShKaGZu.8V58NHXuAknDjOdSe5A23eq', 1, NULL, NULL, NULL),
('5b085d43-1d3a-4f2e-b817-4701c3cc487d', '3671134905800002', 'Marlinah, S.Pd.', 'guru', 'inabi021217@gmail.com', NULL, '$2y$12$1OBN0Qe0w.b.pHS5rFTphO1ft.o0GzV7xsAo5d8Rt4tsNUyycb5Z6', 1, NULL, NULL, NULL),
('714695b5-4646-4f25-9133-278f8e865bc8', '3174104408930001', 'Ayu Sukmawati Putri, S.Pd.I', 'guru', 'ayusukmawatip@gmail.com', NULL, '$2y$12$3JIJPfWikDoTssQk73w0suu3ly8x5Av1Kf5NmSA36Dwew0FDGAXqy', 1, NULL, NULL, NULL),
('7a07fe41-ab19-460c-8a2c-6542600ccef2', '196105122007011013', 'Darus, S.Pd.I', 'guru', 'darussomad1205@gmail.com', NULL, '$2y$12$/G7KsGwyq9QXkWt0KmHLU.fmFh2xXFKg0NkyBcmPV4ndaxbIVPENm', 1, NULL, NULL, NULL),
('7a217cb1-4284-4322-afce-d7a45cb201af', '3174105704890002', 'Siti Rahma, S.Pd.I', 'guru', 'sitirahmaoris@gmail.com', NULL, '$2y$12$zOttfxEFPAGQXUfg9zNFae7dUodiWX6nvpa2unR509kVr3psdzCCe', 1, NULL, NULL, NULL),
('9ec4618c-3d0a-4d3e-967b-6dc41184bbbf', 'admin', 'Administrator', 'admin', 'admin@mialhaqqjakarta.sch.id', NULL, '$2y$12$Mkg/PN4SbHoT0sHWalbEkOq1QQzqxLOhEIjKSj51TM0aXU3HVRUQe', 0, NULL, NULL, NULL),
('a155421b-92a6-407c-9312-d1962122f1ed', '3674041305890005', 'Ali Nurdin, S.Pd.I', 'guru', 'saidalighofur@gmail.com', NULL, '$2y$12$R49WHGE7cdS4wMyZNYX6XODwzWfkAYRquNk2yWTE9Sf/bsbbH43s.', 1, NULL, NULL, NULL),
('abcf6cd1-8fde-4dd2-83ae-7571ab221763', '3671065910010001', 'Syifa Fauziah', 'guru', 'thisissyizi@gmail.com', NULL, '$2y$12$JzYS22btkVXQhKqLAOoGLOhNLpCuEO961UQvR0KwfDMpkju/AE2Au', 1, NULL, NULL, NULL),
('cac630cc-ab0e-4035-a0b7-1e0f2afc1364', '197109172005011005', 'Chairudin, A.Ma.', 'guru', 'rudinchairudin1709@gmail.com', NULL, '$2y$12$iuvBsK1cITC8k/8WHOHwSOQwt7z.Z7czslEpJ7ALEScxneI1a0CMi', 1, NULL, NULL, NULL),
('cde81acd-9628-49b0-9ab8-548fe0b43dc3', '3174102210860004', 'Muhammad Irsyad, S.HI', 'guru', 'irsyadalbantani86@gmail.com', NULL, '$2y$12$LnspRwmBfAopsrdjq/ZJKex7DFqB8k4i7FOHOowXarnqpoF5xiV6K', 1, NULL, NULL, NULL),
('d833dd30-325e-403c-abb6-c4bca808fe6c', '3174101012820005', 'Gunawan, S.Pd.', 'guru', 'gunawan.iwan102@gmail.com', NULL, '$2y$12$xkUR4.T0FkQJi1kmCvE2xuprRJQgzslzoupd01E4apXyHKx8mGbrS', 1, NULL, NULL, NULL),
('d9608ca1-bde6-4814-96fe-10172ddb17c9', '3671131712020001', 'Muhammad Zacky Dhiaulhaq Al Munawwar', 'guru', 'shefazacky01@gmail.com', NULL, '$2y$12$S..S0QzzNk1MH2v1EXD.De0U/K60AZZvF9rolngJjJwV0j805kOkq', 0, NULL, NULL, '2026-04-01 06:15:17'),
('ea5cd891-e83b-41e0-8b71-f05db7fd9a0a', '196911052005012002', 'Dra. Dian Kuswati', 'guru', 'kuswatidian@gmail.com', NULL, '$2y$12$ra0jb4Q6QJtAubFF8XTfVOr2CgnDngPWRJUiiLRvNYii80IA/shBm', 1, NULL, NULL, NULL),
('eda8b74e-359d-4677-9ad8-38b5c0c0dcdb', '3175014501850001', 'Siti Aminah, S.Pd.I', 'guru', 'siti.aminah@mialhaqqjakarta.sch.id', NULL, '$2y$12$cmVBjaHayloJtxlxhhGR9eik.1PqLytlJ.2htNB8pDGYF6mhPhQiq', 0, NULL, NULL, '2026-03-19 23:24:49'),
('f041d73a-9854-4e89-b1a5-c4427d70d10d', '3518082608970001', 'Ahmad Murtadlo, S.Pd.', 'guru', 'ahmadmurtadlo757@gmail.com', NULL, '$2y$12$9owlnUZw8ee3xfeGKW/IGO/tpFEBpn9ZhIIrDjIhbMs.tzIbYmolK', 1, NULL, NULL, NULL),
('f8fc0a64-5c39-4005-8899-bee91af81fda', '3173084111870001', 'Iin Marlinah', 'guru', 'kbj5363506@gmail.com', NULL, '$2y$12$TiyFmAOIc9zzjARM75y3zuMYfSfWYvDivLFX0/fZO/ens4r3zpXxW', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensis_siswa_id_foreign` (`siswa_id`),
  ADD KEY `absensis_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gurus_nik_unique` (`nik`);

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
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `mata_pelajarans`
--
ALTER TABLE `mata_pelajarans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mata_pelajarans_kode_unique` (`kode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilais_siswa_id_foreign` (`siswa_id`),
  ADD KEY `nilais_mata_pelajaran_id_foreign` (`mata_pelajaran_id`),
  ADD KEY `nilais_kelas_id_foreign` (`kelas_id`),
  ADD KEY `nilais_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengajaran_gurus`
--
ALTER TABLE `pengajaran_gurus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajaran_gurus_guru_id_foreign` (`guru_id`),
  ADD KEY `pengajaran_gurus_kelas_id_foreign` (`kelas_id`),
  ADD KEY `pengajaran_gurus_mata_pelajaran_id_foreign` (`mata_pelajaran_id`),
  ADD KEY `pengajaran_gurus_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_tahun_ajaran_id_foreign` (`tahun_ajaran_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswas_nik_unique` (`nik`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `tahun_ajarans`
--
ALTER TABLE `tahun_ajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensis`
--
ALTER TABLE `absensis`
  ADD CONSTRAINT `absensis_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absensis_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `nilais`
--
ALTER TABLE `nilais`
  ADD CONSTRAINT `nilais_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilais_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajarans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilais_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilais_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengajaran_gurus`
--
ALTER TABLE `pengajaran_gurus`
  ADD CONSTRAINT `pengajaran_gurus_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajaran_gurus_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajaran_gurus_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajarans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajaran_gurus_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajarans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
