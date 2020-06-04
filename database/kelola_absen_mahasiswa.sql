-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 05:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelola_absen`
--

CREATE TABLE `kelola_absen` (
  `id` int(255) NOT NULL,
  `nomor_induk` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah_kehadiran` int(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `rombel` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_absen`
--

INSERT INTO `kelola_absen` (`id`, `nomor_induk`, `nama`, `tanggal`, `keterangan`, `jumlah_kehadiran`, `prodi`, `mata_kuliah`, `rombel`) VALUES
(1, 2147483647, 'Erika Noor Dianti', '2020-05-19', 'Tanpa Keterangan', 4, 'Sistem Informasi', 'Bahasa Pemrograman', 6),
(2, 246657, 'Risa Naili Fitriana', '2020-09-09', 'Tidak Hadir', 8, 'Hukum ', 'Pendidikan Pancasila', 1),
(6, 4098907, 'Diva Kratya Prayogo', '2020-09-09', 'Hadir', 3, 'Teknik Informatika', 'Pendidikan Konservasi', 3),
(7, 76, 'aku', '0000-00-00', 'Hadir', 6, 'uyu', 'ju', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_absen`
--
ALTER TABLE `kelola_absen`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_absen`
--
ALTER TABLE `kelola_absen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
