-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2020 pada 10.26
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
-- Struktur dari tabel `cek_status`
--

CREATE TABLE `cek_status` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(20) NOT NULL,
  `kategori_peminjaman` varchar(10) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cek_status`
--

INSERT INTO `cek_status` (`id`, `id_peminjaman`, `kategori_peminjaman`, `tanggal_peminjaman`, `tanggal_kembali`, `status_peminjaman`, `status`) VALUES
(5, 23465, 'latihan', '0000-00-00', '2000-06-06', 'Peminjaman Disetujui', 'Ada'),
(6, 345678, 'Praktikum', '2020-05-06', '2020-05-12', 'Peminjaman Disetujui', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cek_status`
--
ALTER TABLE `cek_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cek_status`
--
ALTER TABLE `cek_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
