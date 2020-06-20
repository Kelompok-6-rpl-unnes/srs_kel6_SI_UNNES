-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2020 pada 08.31
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Struktur dari tabel `kelola_bahan`
--

CREATE TABLE `kelola_bahan` (
  `id` int(20) NOT NULL,
  `nama_bahan` varchar(15) NOT NULL,
  `nama_satuan` varchar(10) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `pendanaan` varchar(15) NOT NULL,
  `stok` int(5) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `kondisi` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_bahan`
--

INSERT INTO `kelola_bahan` (`id`, `nama_bahan`, `nama_satuan`, `kategori`, `merk`, `pendanaan`, `stok`, `lokasi`, `kondisi`, `status`) VALUES
(3, '6', '2', '1', 'Pds', '101', 12, '3', 'Baik', 'Ada'),
(4, '5', '3', '1', 'LX', '102', 4, '3', 'Baik', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_bahan` (`nama_bahan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
