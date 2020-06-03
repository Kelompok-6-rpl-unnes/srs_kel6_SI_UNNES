-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 02:50 PM
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
-- Table structure for table `jatuh_tempo`
--

CREATE TABLE `jatuh_tempo` (
  `id` int(255) NOT NULL,
  `id_peminjaman` varchar(11) DEFAULT NULL,
  `nama_peminjam` varchar(100) DEFAULT NULL,
  `nomor_induk` int(11) DEFAULT NULL,
  `status_user` varchar(100) DEFAULT NULL,
  `kategori_peminjaman` varchar(100) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `status_peminjaman` varchar(100) DEFAULT NULL,
  `cetak` varchar(100) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jatuh_tempo`
--

INSERT INTO `jatuh_tempo` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `status_user`, `kategori_peminjaman`, `tanggal_pinjam`, `status_peminjaman`, `cetak`, `status`) VALUES
(7, '098OPO', 'Habib', 908365, 'Bebas Tanggungan', 'Tugas', '2020-09-08', 'Peminjaman Disetujui', NULL, 'Ada'),
(8, '897DG', 'Bowo Alphelibe', 32455, 'Ada Tanggungan', 'Praktikum', '2020-09-06', 'Peminjaman Disetujui', NULL, 'Ada'),
(9, '123DF', 'Nur Aini', 2147483, 'Bebas Tanggungan', 'Tugas', '2020-07-06', 'Peminjaman Disetujui', NULL, 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
