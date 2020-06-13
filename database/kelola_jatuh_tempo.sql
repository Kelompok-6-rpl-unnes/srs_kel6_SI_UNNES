-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 05:26 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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
-- Table structure for table `kelola_jatuh_tempo`
--

CREATE TABLE `kelola_jatuh_tempo` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `nomor_induk` int(11) NOT NULL,
  `status_user` varchar(255) NOT NULL,
  `kategori_peminjaman` varchar(255) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_jatuh_tempo`
--

INSERT INTO `kelola_jatuh_tempo` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `status_user`, `kategori_peminjaman`, `tanggal_kembali`, `status`) VALUES
(4, 7, 'jamesbon', 505, 'mahasiswa', 'umum', '2020-02-03', 'ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_jatuh_tempo`
--
ALTER TABLE `kelola_jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_jatuh_tempo`
--
ALTER TABLE `kelola_jatuh_tempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
