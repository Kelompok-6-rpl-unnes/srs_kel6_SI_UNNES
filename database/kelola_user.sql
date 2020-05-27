-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2020 pada 10.29
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
-- Struktur dari tabel `kelola_user`
--

CREATE TABLE `kelola_user` (
  `id` int(10) NOT NULL,
  `NoInduk` int(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `JenisKelamin` varchar(10) NOT NULL,
  `Foto` varchar(40) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `NoTelp` int(30) NOT NULL,
  `Level` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_user`
--

INSERT INTO `kelola_user` (`id`, `NoInduk`, `Username`, `Nama`, `JenisKelamin`, `Foto`, `Email`, `NoTelp`, `Level`, `Status`) VALUES
(1, 12345, 'Dafa', 'Dafa Najma', 'Perempuan', 'hjbdsjbjgvuy3243.jpg', 'dafa@gmail.com', 1234566215, 'Admin', 'Aktif'),
(2, 23456, 'Aldi', 'Aldi Siregar', 'Laki-Laki', 'djbuiqgy3r78yfeui.jpg', 'aldi@gmail.com', 1254367257, 'Aslab', 'Tidak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelola_user`
--
ALTER TABLE `kelola_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelola_user`
--
ALTER TABLE `kelola_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
