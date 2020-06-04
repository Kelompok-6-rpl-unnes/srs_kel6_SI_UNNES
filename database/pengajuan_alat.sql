-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 07:09 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

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
-- Table structure for table `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id` int(11) NOT NULL,
  `pengajuan_alat` varchar(255) NOT NULL,
  `no_induk` varchar(255) NOT NULL,
  `nama_alat` varchar(255) NOT NULL,
  `seri` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `satuan_grosir` varchar(255) NOT NULL,
  `jumlah_grosir` varchar(255) NOT NULL,
  `harga_grosir` varchar(255) NOT NULL,
  `estimasi_jumlah` varchar(255) NOT NULL,
  `harga_dasar` varchar(255) NOT NULL,
  `nama_lab` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `pengajuan_alat`, `no_induk`, `nama_alat`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`, `harga_dasar`, `nama_lab`, `status`) VALUES
(1, 'P12345', '654321', 'Infrared Ear Thermometer', 'OneMed', 'ThermoOne', 'Pack', '100', 'Rp. 200.000', '5', 'RP 400.000', 'Laboratorium kimia', 'ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
