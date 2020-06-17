-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Jun 2020 pada 02.04
-- Versi Server: 10.1.19-MariaDB
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
-- Struktur dari tabel `kelola_penggantian`
--

CREATE TABLE `kelola_penggantian` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(50) NOT NULL,
  `nama` char(50) NOT NULL,
  `nama_barang` char(50) NOT NULL,
  `status_penggantian` char(30) NOT NULL,
  `status` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_penggantian`
--

INSERT INTO `kelola_penggantian` (`id`, `id_peminjaman`, `nama`, `nama_barang`, `status_penggantian`, `status`) VALUES
(6, 'A180791', 'Rakai Putra', 'CaCo2', 'sudah diganti', 'ada'),
(7, '4321344', 'Radya Cintana', 'Mikroskop', 'belum diganti', 'tidak ada'),
(8, '345678', 'cobalagi', 'lalala', 'belum diganti', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
