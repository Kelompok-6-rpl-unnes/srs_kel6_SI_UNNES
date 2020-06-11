-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2020 pada 16.37
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
-- Struktur dari tabel `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `gambar`, `username`, `email`, `jenis_kelamin`, `password`, `level`, `status`, `no_hp`, `last_login`) VALUES
(1, 'Kholiq', 'files/2020/06/eed138f496fe2e5da758c08a4d8e0171.png', 'kholiq', '0', 0, '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, '', '2020-06-11 20:19:26'),
(2, 'Dadang', 'files/2020/06/a9a6c10dc174b92ca9b40b41194671cb.jpg', 'Dadang', 'Dadang@gmail.com', 1, '*BD5A9D8901646AFDEF593F5E24A850B0AEFFBF28', 2, 1, '081233', '2020-06-09 11:51:15'),
(3, 'Sasa', 'files/2020/06/49020755deec6e05d30cccec2a0b2d2b.jpg', 'Sasa', 'Kepala Lab', 2, '*B99DB067B38F191BC5D6C4E2D2E8EB5B574294D7', 3, 1, '081234', '2020-06-04 11:15:16'),
(4, 'Susi', 'files/2020/06/9475bcff51f687a821143981c6281da3.jpeg', 'Susi', 'susi@gmail.com', 2, '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 4, 1, '081231', '2020-06-03 23:08:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
