-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 02:18 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `Id` int(11) NOT NULL,
  `Kd_Gejala` varchar(225) NOT NULL,
  `Nama_Gejala` varchar(225) NOT NULL,
  `Ket` varchar(250) DEFAULT NULL,
  `Kd_Penyakit` varchar(225) NOT NULL,
  `Bobot` double NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`Id`, `Kd_Gejala`, `Nama_Gejala`, `Ket`, `Kd_Penyakit`, `Bobot`, `Date`) VALUES
(1, 'G001', 'Peradangan', '', 'P001', 0.6, '2020-01-09 05:37:50'),
(3, 'G001', 'Peradangan', '', 'P004', 0.6, '2020-01-09 05:39:21'),
(4, 'G001', 'Peradangan', '', 'P005', 0.4, '2020-01-09 05:44:13'),
(5, 'G002', 'Ruam berukuran besar', '', 'P003', 0.4, '2020-01-09 05:44:50'),
(6, 'G002', 'Ruam berukuran besar', '', 'P004', 0.4, '2020-01-09 05:45:13'),
(7, 'G003', 'Rasa gatal yang hebat', '', 'P002', 0.6, '2020-01-09 05:45:52'),
(8, 'G003', 'Rasa gatal yang hebat', '', 'P004', 0.6, '2020-01-09 05:46:08'),
(10, 'G003', 'Rasa gatal yang hebat', '', 'P005', 0.6, '2020-01-09 05:51:13'),
(11, 'G004', 'Tubuh terasa panas seperti terbakar', '', 'P003', 0.4, '2020-01-09 05:52:18'),
(12, 'G005', 'Bintik-bintik merah ditubuh', '', 'P003', 0.4, '2020-01-09 05:52:40'),
(13, 'G006', 'Kelebihan berat badan', '', 'P003', 0.2, '2020-01-09 05:53:06'),
(14, 'G007', 'Luka akibat gesekan kulit', '', 'P002', 0.2, '2020-01-09 05:53:23'),
(15, 'G008', 'Tumbuh gelembung-gelembung kecil', '', 'P001', 0.2, '2020-01-09 05:54:39'),
(16, 'G008', 'Tumbuh gelembung-gelembung kecil', '', 'P002', 0.4, '2020-01-09 05:55:09'),
(17, 'G009', 'Rasa tidak nyaman (Rewel)', '', 'P001', 0.2, '2020-01-09 05:55:32'),
(18, 'G010', 'Keluarga mempunyai riwayat penyakit yang sama (Keturunan)', '', 'P003', 0.2, '2020-01-09 05:56:00'),
(19, 'G011', 'Sensitif akibat bahan tertentu', '', 'P003', 0.2, '2020-01-09 05:56:24'),
(20, 'G011', 'Sensitif akibat bahan tertentu', '', 'P004', 0.4, '2020-01-09 05:56:36'),
(21, 'G012', 'Kulit bersisik', '', 'P003', 0.2, '2020-01-09 05:56:50'),
(22, 'G012', 'Kulit bersisik', '', 'P004', 0.4, '2020-01-09 05:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil`
--

CREATE TABLE `tbl_hasil` (
  `Id` int(11) NOT NULL,
  `Id_User` varchar(225) NOT NULL,
  `Id_Konsultasi` varchar(225) NOT NULL,
  `Kd_Gejala` varchar(225) NOT NULL,
  `Kd_Penyakit` varchar(225) NOT NULL,
  `Hasil` double NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hasil`
--

INSERT INTO `tbl_hasil` (`Id`, `Id_User`, `Id_Konsultasi`, `Kd_Gejala`, `Kd_Penyakit`, `Hasil`, `Date`) VALUES
(86, '1', '1.2020.0', 'G009', 'P001', 0.2, '2020-01-13 17:18:27'),
(87, '1', '1.2020.0', 'G005', 'P003', 0.4, '2020-01-13 17:18:27'),
(88, '1', '1.2020.87', 'G008', 'P001', 0.2, '2020-01-13 17:18:45'),
(89, '1', '1.2020.87', 'G008', 'P002', 0.4, '2020-01-13 17:18:45'),
(90, '1', '1.2020.87', 'G004', 'P003', 0.52, '2020-01-13 17:18:45'),
(91, '2', '2.2020.90', 'G001', 'P001', 0.6, '2020-01-14 10:50:19'),
(92, '2', '2.2020.90', 'G003', 'P002', 0.6, '2020-01-14 10:50:19'),
(93, '2', '2.2020.90', 'G002', 'P003', 0.4, '2020-01-14 10:50:19'),
(94, '2', '2.2020.90', 'G001', 'P004', 0.904, '2020-01-14 10:50:19'),
(95, '2', '2.2020.90', 'G001', 'P005', 0.76, '2020-01-14 10:50:19'),
(96, '2', '2.2020.95', 'G009', 'P001', 0.2, '2020-01-14 12:19:05'),
(97, '2', '2.2020.95', 'G010', 'P003', 0.36, '2020-01-14 12:19:05'),
(98, '2', '2.2020.95', 'G011', 'P004', 0.4, '2020-01-14 12:19:05'),
(99, '3', '3.2020.98', 'G008', 'P001', 0.2, '2020-01-14 15:43:50'),
(100, '3', '3.2020.98', 'G008', 'P002', 0.4, '2020-01-14 15:43:50'),
(101, '3', '3.2020.98', 'G004', 'P003', 0.52, '2020-01-14 15:43:50'),
(102, '1', '1.2020.101', 'G008', 'P001', 0.2, '2020-01-18 23:25:58'),
(103, '1', '1.2020.101', 'G008', 'P002', 0.4, '2020-01-18 23:25:58'),
(104, '1', '1.2020.101', 'G005', 'P003', 0.52, '2020-01-18 23:25:58'),
(105, '1', '1.2020.104', 'G001', 'P001', 0.6, '2020-01-22 13:29:47'),
(106, '1', '1.2020.104', 'G003', 'P002', 0.6, '2020-01-22 13:29:47'),
(107, '1', '1.2020.104', 'G002', 'P003', 0.4, '2020-01-22 13:29:47'),
(108, '1', '1.2020.104', 'G001', 'P004', 0.904, '2020-01-22 13:29:48'),
(109, '1', '1.2020.104', 'G001', 'P005', 0.76, '2020-01-22 13:29:48'),
(110, '1', '1.2020.109', 'G008', 'P001', 0.2, '2020-01-22 13:30:08'),
(111, '1', '1.2020.109', 'G007', 'P002', 0.52, '2020-01-22 13:30:08'),
(112, '1', '1.2020.109', 'G005', 'P003', 0.4, '2020-01-22 13:30:08'),
(113, '4', '4.2020.112', 'G007', 'P002', 0.2, '2020-01-22 13:40:12'),
(114, '4', '4.2020.112', 'G004', 'P003', 0.52, '2020-01-22 13:40:12'),
(115, '4', '4.2020.114', 'G001', 'P001', 0.744, '2020-01-22 13:40:31'),
(116, '4', '4.2020.114', 'G003', 'P002', 0.808, '2020-01-22 13:40:31'),
(117, '4', '4.2020.114', 'G002', 'P003', 0.9115264, '2020-01-22 13:40:31'),
(118, '4', '4.2020.114', 'G001', 'P004', 0.96544, '2020-01-22 13:40:31'),
(119, '4', '4.2020.114', 'G001', 'P005', 0.76, '2020-01-22 13:40:31'),
(120, '4', '4.2020.119', 'G005', 'P003', 0.4, '2020-01-22 13:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `Kd_Penyakit` varchar(225) NOT NULL,
  `Nama_Penyakit` varchar(225) NOT NULL,
  `Ket` varchar(250) DEFAULT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`Kd_Penyakit`, `Nama_Penyakit`, `Ket`, `Date`) VALUES
('P001', 'Dermatis Kontak', '', '2020-01-08 15:48:29'),
('P002', 'Biang Keringat', '', '2020-01-08 15:42:15'),
('P003', 'Intertrigo', '', '2020-01-08 15:42:28'),
('P004', 'Eksim', '', '2020-01-08 15:43:42'),
('P005', 'Seborrhea', '', '2020-01-08 15:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proses`
--

CREATE TABLE `tbl_proses` (
  `id` int(11) NOT NULL,
  `Id_User` varchar(225) NOT NULL,
  `Kd_Gejala` varchar(255) NOT NULL,
  `Kd_Penyakit` varchar(255) NOT NULL,
  `Bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `Id_User` int(11) NOT NULL,
  `Username` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Umur` varchar(100) NOT NULL,
  `Jk` varchar(20) NOT NULL,
  `Alamat` varchar(225) NOT NULL,
  `Level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`Id_User`, `Username`, `Password`, `Nama`, `Umur`, `Jk`, `Alamat`, `Level`) VALUES
(1, 'sa', '$2y$10$qzT0g7.gi4PflSm.SWKO7O1yqBWIuUI79kNPxaDGXNFQmUdjl1KcO', 'Rama Dani Lubis', '24', '-', 'Medan', 'sa'),
(2, 'lofty', '$2y$10$qzT0g7.gi4PflSm.SWKO7O1yqBWIuUI79kNPxaDGXNFQmUdjl1KcO', 'Lofty Razani', '23', 'Laki-Laki', 'Medan', 'user'),
(3, 'angga', '$2y$10$TWeWuoSR.3n9eoGmIbtJ/.kkgZexMDHVKUP.xhMCH3US0igf6ENhK', 'anggara', '23', 'Laki-Laki', 'Medan', 'user'),
(4, 'coba', '$2y$10$KZ2Y4PW1Ft2jsFy2TKLA2.gjnrobnJb2HabDw8gdeLosbWqYp4Cwu', 'Angga Syahputra', '21', 'Laki-Laki', 'Medan', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`Kd_Penyakit`);

--
-- Indexes for table `tbl_proses`
--
ALTER TABLE `tbl_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`Id_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tbl_proses`
--
ALTER TABLE `tbl_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `Id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
