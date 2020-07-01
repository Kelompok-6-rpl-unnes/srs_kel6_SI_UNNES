-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 09.10
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

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
  `id_peminjaman` varchar(20) NOT NULL,
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
(9, 'P01234', 'Praktikum ', '2020-06-29', '2020-06-30', 'Peminjaman Disetujui', 'Ada'),
(10, 'P01235', 'Praktikum ', '2020-06-21', '2020-06-28', 'Peminjaman Disetujui', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `kategori_peminjaman` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `kategori_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(3, 7, 'kusus', '2000-01-01', '2000-01-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3502, 1593394783, '::1', '021855'),
(3501, 1593394711, '::1', '267665'),
(3500, 1593394699, '::1', '881124'),
(3499, 1593394686, '::1', '166996'),
(3498, 1593394597, '::1', '998951'),
(3497, 1593394574, '::1', '510565'),
(3496, 1593394486, '::1', '956093'),
(3495, 1593394450, '::1', '414643'),
(3494, 1593393465, '::1', '015760'),
(3493, 1593393438, '::1', '462845'),
(3492, 1593393420, '::1', '238135'),
(3491, 1593393375, '::1', '522980'),
(3490, 1593393236, '::1', '254819'),
(3489, 1593393222, '::1', '484545'),
(3488, 1593393200, '::1', '958503'),
(3487, 1593392049, '::1', '309069'),
(3486, 1593392017, '::1', '735025'),
(3506, 1593396079, '::1', '540691'),
(3505, 1593395914, '::1', '392056'),
(3503, 1593395401, '::1', '118693'),
(3504, 1593395418, '::1', '383574'),
(3507, 1593396134, '::1', '641132'),
(3508, 1593396175, '::1', '851094'),
(3509, 1593396451, '::1', '167316'),
(3510, 1593396470, '::1', '796728'),
(3511, 1593396841, '::1', '840373'),
(3512, 1593396852, '::1', '196652'),
(3513, 1593414397, '::1', '578287');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-05-15 12:15:50', 'Login  by Kholiq', 'kholiq'),
(16, '::1', '', '2020-05-15 14:33:47', 'Logout SIONLAB by ', 'Tamu'),
(17, '::1', '', '2020-05-15 14:34:04', 'Login  by Kholiq', 'kholiq'),
(18, '::1', '', '2020-05-15 18:09:03', 'Logout SIONLAB by ', 'Tamu'),
(19, '::1', '', '2020-05-15 18:09:18', 'Login  by Kholiq', 'kholiq'),
(20, '::1', '', '2020-05-15 22:55:19', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>KD02</b></li><li><b>Nama</b> dengan value <b>kg</b></li></ul>', 'kholiq'),
(21, '::1', '', '2020-05-15 22:56:38', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>Kode</b> dengan value <b>KD04</b></li><li><b>Nama</b> dengan value <b>Centimeter</b></li></ul>', 'kholiq'),
(22, '::1', '', '2020-05-15 23:46:18', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>Kode</b> dengan value <b>KD06</b></li><li><b>Nama</b> dengan value <b>kilometer</b></li></ul>', 'kholiq'),
(23, '::1', '', '2020-05-15 23:46:43', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>KD01</b></li><li><b>Nama</b> dengan value <b>Cucokmeow1</b></li></ul>', 'kholiq'),
(24, '::1', '', '2020-05-18 15:28:14', 'Login  by Kholiq', 'kholiq'),
(25, '::1', '', '2020-05-18 15:32:11', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Absensi</b></li><li><b>deskripsi</b> dengan value <b>Mengelola Absensi</b></li><li><b>alias</b> dengan value <b>Absensi</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>1</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(26, '::1', '', '2020-05-18 15:33:05', 'Menghapus menu dengan id 137', 'kholiq'),
(27, '::1', '', '2020-05-18 15:33:43', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Absensi</b></li><li><b>deskripsi</b> dengan value <b>mengelola absensi</b></li><li><b>alias</b> dengan value <b>absensi</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>1</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(28, '::1', '', '2020-05-18 15:38:42', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>138</b></li><li><b>nama</b> dengan value <b>Absen</b></li><li><b>deskripsi</b> dengan value <b>mengelola absensi</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>master/absensi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(29, '::1', '', '2020-05-18 15:38:57', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>138</b></li><li><b>nama</b> dengan value <b>Absen</b></li><li><b>deskripsi</b> dengan value <b>mengelola absen</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>master/absen</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(30, '::1', '', '2020-05-18 20:39:41', 'Logout SIONLAB by ', 'Tamu'),
(31, '::1', '', '2020-05-18 20:39:58', 'Login  by Kholiq', 'kholiq'),
(32, '::1', '', '2020-05-19 01:06:37', 'Logout SIONLAB by ', 'Tamu'),
(33, '::1', '', '2020-05-19 01:06:48', 'Login  by Kholiq', 'kholiq'),
(34, '::1', '', '2020-05-19 09:12:00', 'Logout SIONLAB by ', 'Tamu'),
(35, '::1', '', '2020-05-19 09:12:51', 'Login  by Kholiq', 'kholiq'),
(36, '::1', '', '2020-05-19 09:19:58', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>138</b></li><li><b>nama</b> dengan value <b>Absen</b></li><li><b>deskripsi</b> dengan value <b>mengelola absen</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>kelola/absen</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(37, '::1', '', '2020-05-19 20:25:51', 'Logout SIONLAB by ', 'Tamu'),
(38, '::1', '', '2020-05-19 20:26:47', 'Login  by Kholiq', 'kholiq'),
(39, '::1', '', '2020-05-19 20:58:38', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(40, '::1', '', '2020-05-19 20:58:50', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(41, '::1', '', '2020-05-19 21:04:29', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(42, '::1', '', '2020-05-19 21:05:31', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(43, '::1', '', '2020-05-19 21:06:21', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>3</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(44, '::1', '', '2020-05-19 21:09:50', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(45, '::1', '', '2020-05-19 21:10:38', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612178</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(46, '::1', '', '2020-05-19 21:11:27', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(47, '::1', '', '2020-05-19 21:12:28', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li></ul>', 'kholiq'),
(48, '::1', '', '2020-05-19 21:15:29', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(49, '::1', '', '2020-05-19 21:21:46', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(50, '::1', '', '2020-05-19 21:32:56', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>3</b></li><li><b>nama</b> dengan value <b>fds</b></li><li><b>tanggal</b> dengan value <b>2020-08-08</b></li><li><b>keterangan</b> dengan value <b>sffw</b></li><li><b>jumlah_kehadiran</b> dengan value <b>5</b></li><li><b>prodi</b> dengan value <b>ewet</b></li><li><b>mata_kuliah</b> dengan value <b>dfgg</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(51, '::1', '', '2020-05-19 22:31:53', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>2</b></li><li><b>Nama</b> dengan value <b>svfafa</b></li></ul>', 'kholiq'),
(52, '::1', '', '2020-05-19 22:38:55', 'Logout SIONLAB by Kholiq', 'kholiq'),
(53, '::1', '', '2020-05-19 22:39:38', 'Login  by Kholiq', 'kholiq'),
(54, '::1', '', '2020-05-19 22:46:44', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>7</b></li><li><b>Nama</b> dengan value <b>uuu</b></li></ul>', 'kholiq'),
(55, '::1', '', '2020-05-19 22:50:10', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>8</b></li><li><b>Nama</b> dengan value <b>uuu</b></li></ul>', 'kholiq'),
(56, '::1', '', '2020-05-19 22:50:23', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>8</b></li><li><b>Nama</b> dengan value <b>uuu</b></li></ul>', 'kholiq'),
(57, '::1', '', '2020-05-19 22:50:34', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>3</b></li><li><b>Nama</b> dengan value <b>svfafa</b></li></ul>', 'kholiq'),
(58, '::1', '', '2020-05-19 22:50:48', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>8</b></li><li><b>Nama</b> dengan value <b>uuu</b></li></ul>', 'kholiq'),
(59, '::1', '', '2020-05-19 22:51:23', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>Kode</b> dengan value <b>8</b></li><li><b>Nama</b> dengan value <b>uuu</b></li></ul>', 'kholiq'),
(60, '::1', '', '2020-05-19 22:57:48', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>3</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(61, '::1', '', '2020-05-19 22:58:00', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(62, '::1', '', '2020-05-19 22:58:20', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(63, '::1', '', '2020-05-19 22:58:37', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612190</b></li><li><b>nama</b> dengan value <b>popo</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(64, '::1', '', '2020-05-19 22:59:34', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>56</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(65, '::1', '', '2020-05-19 23:00:47', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>8</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(66, '::1', '', '2020-05-19 23:01:00', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612199</b></li><li><b>nama</b> dengan value <b>popo</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(67, '::1', '', '2020-05-19 23:01:12', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612199</b></li><li><b>nama</b> dengan value <b>popo</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(68, '::1', '', '2020-05-19 23:01:25', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>9</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-05-20 00:41:24', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>5</b></li><li><b>nama</b> dengan value <b>sfseg</b></li><li><b>tanggal</b> dengan value <b>2020-8-7</b></li><li><b>keterangan</b> dengan value <b>tdk hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>8</b></li><li><b>prodi</b> dengan value <b>di</b></li><li><b>mata_kuliah</b> dengan value <b>fdg</b></li><li><b>rombel</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-05-20 00:41:56', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>9</b></li><li><b>Nama</b> dengan value <b>fhfd</b></li></ul>', 'kholiq'),
(71, '::1', '', '2020-05-20 11:50:05', 'Login  by Kholiq', 'kholiq'),
(72, '::1', '', '2020-05-20 14:02:21', 'Logout SIONLAB by ', 'Tamu'),
(73, '::1', '', '2020-05-20 14:02:38', 'Login  by Kholiq', 'kholiq'),
(74, '::1', '', '2020-05-20 14:48:13', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>9</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfwf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(75, '::1', '', '2020-05-21 04:46:56', 'Logout SIONLAB by ', 'Tamu'),
(76, '::1', '', '2020-05-21 04:47:28', 'Login  by Kholiq', 'kholiq'),
(77, '::1', '', '2020-05-21 10:09:23', 'Login  by Kholiq', 'kholiq'),
(78, '::1', '', '2020-05-21 11:28:02', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>4</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>df</b></li><li><b>mata_kuliah</b> dengan value <b>fee</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(79, '::1', '', '2020-05-21 11:58:21', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>tanggal</b> dengan value <b>2020-08-08</b></li><li><b>keterangan</b> dengan value <b>Tanpa Keterangan</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(80, '::1', '', '2020-05-21 13:32:00', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>4612418033</b></li><li><b>nama</b> dengan value <b>popo</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li></ul>', 'kholiq'),
(81, '::1', '', '2020-05-21 17:27:14', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>tanggal</b> dengan value <b>2020-08-08</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(82, '::1', '', '2020-05-21 18:04:05', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>9</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>sff</b></li><li><b>mata_kuliah</b> dengan value <b>sfewf</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(83, '::1', '', '2020-05-21 18:04:11', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>2147483647</b></li><li><b>nama</b> dengan value <b>popo</b></li><li><b>tanggal</b> dengan value <b>2020-05-19</b></li><li><b>keterangan</b> dengan value <b>Tanpa Keterangan</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>ti</b></li><li><b>mata_kuliah</b> dengan value <b>mtk</b></li><li><b>rombel</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(84, '::1', '', '2020-05-21 20:40:08', 'Login  by Kholiq', 'kholiq'),
(85, '::1', '', '2020-05-21 20:42:20', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>tanggal</b> dengan value <b>hgjh</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(86, '::1', '', '2020-05-21 20:42:45', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>tanggal</b> dengan value <b>2020-08-07</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(87, '::1', '', '2020-05-21 21:10:19', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>56</b></li><li><b>nama</b> dengan value <b>erika</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>7</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>sdf</b></li><li><b>rombel</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(88, '::1', '', '2020-05-21 21:16:56', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>df</b></li><li><b>mata_kuliah</b> dengan value <b>fee</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(89, '::1', '', '2020-05-21 21:17:10', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4</b></li><li><b>nama</b> dengan value <b>sdf</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>df</b></li><li><b>mata_kuliah</b> dengan value <b>fee</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(90, '::1', '', '2020-05-21 21:18:38', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(91, '::1', '', '2020-05-21 21:18:52', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(92, '::1', '', '2020-05-21 21:19:38', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>66</b></li><li><b>nama</b> dengan value <b>didi</b></li><li><b>keterangan</b> dengan value <b>Tanpa Keterangan</b></li><li><b>jumlah_kehadiran</b> dengan value <b>8</b></li><li><b>prodi</b> dengan value <b>w</b></li><li><b>mata_kuliah</b> dengan value <b>d</b></li><li><b>rombel</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(93, '::1', '', '2020-05-21 21:37:51', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(94, '::1', '', '2020-05-21 21:53:06', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(95, '::1', '', '2020-05-21 21:58:42', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(96, '::1', '', '2020-05-21 21:58:55', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(97, '::1', '', '2020-05-21 22:02:16', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(98, '::1', '', '2020-05-21 22:12:06', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(99, '::1', '', '2020-05-21 22:13:06', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(100, '::1', '', '2020-05-21 22:20:07', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>tanggal</b> dengan value <b>05/13/2020</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(101, '::1', '', '2020-05-21 22:27:31', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(102, '::1', '', '2020-05-21 22:28:25', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>uyu</b></li><li><b>mata_kuliah</b> dengan value <b>ju</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(103, '::1', '', '2020-05-21 22:45:09', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li></ul>', 'kholiq'),
(104, '::1', '', '2020-05-21 22:47:24', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nomor_induk</b> dengan value <b>76</b></li><li><b>nama</b> dengan value <b>aku</b></li></ul>', 'kholiq'),
(105, '::1', '', '2020-05-22 07:23:23', 'Logout SIONLAB by ', 'Tamu'),
(106, '::1', '', '2020-05-22 07:24:18', 'Login  by Kholiq', 'kholiq'),
(107, '::1', '', '2020-05-27 16:45:40', 'Login  by Kholiq', 'kholiq'),
(108, '::1', '', '2020-05-27 20:15:43', 'Login  by Kholiq', 'kholiq'),
(109, '::1', '', '2020-05-28 05:46:26', 'Login  by Kholiq', 'kholiq'),
(110, '::1', '', '2020-05-28 14:19:42', 'Login  by Kholiq', 'kholiq'),
(111, '::1', '', '2020-05-28 14:40:08', 'Menambah Master pesan_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>2</b></li><li><b>pesan_alat_bahan</b> dengan value <b>gunting</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>oke</b></li></ul>', 'kholiq'),
(112, '::1', '', '2020-05-28 14:52:23', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>98998</b></li><li><b>nama</b> dengan value <b>opo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>9</b></li><li><b>prodi</b> dengan value <b>jjk</b></li><li><b>mata_kuliah</b> dengan value <b>nmmm</b></li><li><b>rombel</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(113, '::1', '', '2020-05-28 17:38:21', 'Login  by Kholiq', 'kholiq'),
(114, '::1', '', '2020-05-28 17:42:20', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jatuh Tempo</b></li><li><b>deskripsi</b> dengan value <b>jatuh tempo dalam peminjaman</b></li><li><b>alias</b> dengan value <b>jatuhtempo</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>peminjaman/jatuh_tempo</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(115, '::1', '', '2020-05-28 17:44:27', 'Menghapus menu dengan id 138', 'kholiq'),
(116, '::1', '', '2020-05-28 17:44:56', 'Menghapus menu dengan id 139', 'kholiq'),
(117, '::1', '', '2020-05-28 17:50:26', 'Menghapus menu dengan id 16', 'kholiq'),
(118, '::1', '', '2020-05-28 18:02:13', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jatuh Tempo</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>jatuh_tempo</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>peminjaman/jatuh_tempo</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(119, '::1', '', '2020-05-28 18:28:23', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(120, '::1', '', '2020-05-28 23:20:12', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>137</b></li><li><b>nama</b> dengan value <b>Jatuh Tempo</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>http://localhost/srs_kel6_SI_UNNES/peminjaman/jatuh_tempo</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(121, '::1', '', '2020-05-29 09:04:38', 'Logout EDLABS by ', 'Tamu'),
(122, '::1', '', '2020-05-29 09:05:04', 'Login  by Kholiq', 'kholiq'),
(123, '::1', '', '2020-06-01 20:20:50', 'Login  by Kholiq', 'kholiq'),
(124, '::1', '', '2020-06-01 20:22:44', 'Login  by Kholiq', 'kholiq'),
(125, '::1', '', '2020-06-01 20:24:02', 'Login  by Kholiq', 'kholiq'),
(126, '::1', '', '2020-06-01 20:24:15', 'Logout EDLABS by Kholiq', 'kholiq'),
(127, '::1', '', '2020-06-01 20:24:24', 'Login  by Kholiq', 'kholiq'),
(128, '::1', '', '2020-06-01 20:30:42', 'Logout EDLABS by Kholiq', 'kholiq'),
(129, '::1', '', '2020-06-01 20:31:40', 'Login  by Kholiq', 'kholiq'),
(130, '::1', '', '2020-06-01 20:33:51', 'Login  by Kholiq', 'kholiq'),
(131, '::1', '', '2020-06-02 01:01:09', 'Login  by Kholiq', 'kholiq'),
(132, '::1', '', '2020-06-02 01:02:40', 'Login  by Kholiq', 'kholiq'),
(133, '::1', '', '2020-06-02 10:49:21', 'Login  by Kholiq', 'kholiq'),
(134, '::1', '', '2020-06-02 20:27:02', 'Logout EDLABS by ', 'Tamu'),
(135, '::1', '', '2020-06-02 20:27:28', 'Login  by Kholiq', 'kholiq'),
(136, '::1', '', '2020-06-02 22:28:29', 'Logout EDLABS by Kholiq', 'kholiq'),
(137, '::1', '', '2020-06-02 22:29:07', 'Login  by Kholiq', 'kholiq'),
(138, '::1', '', '2020-06-02 22:43:14', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>3</b></li><li><b>nama_peminjam</b> dengan value <b>fsaa</b></li><li><b>nomor_induk</b> dengan value <b>24</b></li><li><b>status_user</b> dengan value <b>ada</b></li><li><b>kategori_peminjaman</b> dengan value <b>safd</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-09</b></li><li><b>cetak</b> dengan value <b>afsaf</b></li><li><b>status</b> dengan value <b>fasf</b></li></ul>', 'kholiq'),
(139, '::1', '', '2020-06-02 23:16:44', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>8</b></li><li><b>nama_peminjam</b> dengan value <b>vsv</b></li><li><b>nomor_induk</b> dengan value <b>898</b></li><li><b>status_user</b> dengan value <b>vcz</b></li><li><b>kategori_peminjaman</b> dengan value <b>vsz</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-09</b></li><li><b>status_peminjaman</b> dengan value <b>vxb</b></li><li><b>cetak</b> dengan value <b>cbx</b></li><li><b>status</b> dengan value <b>xcb</b></li></ul>', 'kholiq'),
(140, '::1', '', '2020-06-02 23:31:51', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>9</b></li><li><b>nama_peminjam</b> dengan value <b>jmn,</b></li><li><b>nomor_induk</b> dengan value <b>887</b></li><li><b>status_user</b> dengan value <b>vbj</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhbj</b></li><li><b>tanggal_pinjam</b> dengan value <b>899088</b></li><li><b>status_peminjaman</b> dengan value <b>kbm</b></li><li><b>cetak</b> dengan value <b>bnmbm</b></li><li><b>status</b> dengan value <b>bkh</b></li></ul>', 'kholiq'),
(141, '::1', '', '2020-06-03 00:30:14', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>88</b></li><li><b>nama_peminjam</b> dengan value <b>gh</b></li><li><b>nomor_induk</b> dengan value <b>8989</b></li><li><b>status_user</b> dengan value <b>io</b></li><li><b>kategori_peminjaman</b> dengan value <b>gyug</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>uih</b></li><li><b>cetak</b> dengan value <b>uyg</b></li><li><b>status</b> dengan value <b>uig</b></li></ul>', 'kholiq'),
(142, '::1', '', '2020-06-03 00:36:56', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>6</b></li><li><b>nama_peminjam</b> dengan value <b>sdfs</b></li><li><b>nomor_induk</b> dengan value <b>434</b></li><li><b>status_user</b> dengan value <b>sf</b></li><li><b>kategori_peminjaman</b> dengan value <b>fssdf</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-08-08</b></li><li><b>status_peminjaman</b> dengan value <b>vdsds</b></li><li><b>cetak</b> dengan value <b>vsdsd</b></li><li><b>status</b> dengan value <b>vds</b></li></ul>', 'kholiq'),
(143, '::1', '', '2020-06-03 00:52:00', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(144, '::1', '', '2020-06-03 00:52:13', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(145, '::1', '', '2020-06-03 06:06:35', 'Login  by Kholiq', 'kholiq'),
(146, '::1', '', '2020-06-03 06:27:26', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(147, '::1', '', '2020-06-03 06:39:48', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(148, '::1', '', '2020-06-03 06:52:26', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(149, '::1', '', '2020-06-03 06:55:04', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(150, '::1', '', '2020-06-03 06:55:59', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(151, '::1', '', '2020-06-03 07:00:53', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(152, '::1', '', '2020-06-03 07:02:56', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(153, '::1', '', '2020-06-03 07:03:50', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(154, '::1', '', '2020-06-03 07:04:29', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(155, '::1', '', '2020-06-03 07:24:00', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(156, '::1', '', '2020-06-03 07:24:30', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(157, '::1', '', '2020-06-03 07:36:41', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(158, '::1', '', '2020-06-03 07:38:27', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(159, '::1', '', '2020-06-03 07:54:35', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(160, '::1', '', '2020-06-03 07:59:13', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(161, '::1', '', '2020-06-03 08:00:10', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(162, '::1', '', '2020-06-03 08:05:52', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(163, '::1', '', '2020-06-03 08:09:38', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(164, '::1', '', '2020-06-03 08:11:03', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(165, '::1', '', '2020-06-03 08:12:49', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(166, '::1', '', '2020-06-03 08:16:47', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(167, '::1', '', '2020-06-03 08:47:01', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(168, '::1', '', '2020-06-03 08:48:34', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>456</b></li><li><b>nama</b> dengan value <b>Bobi</b></li><li><b>tanggal</b> dengan value <b>2020-07-07</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>prodi</b> dengan value <b>si</b></li><li><b>mata_kuliah</b> dengan value <b>agama</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(169, '::1', '', '2020-06-03 08:55:39', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>2535</b></li><li><b>nama</b> dengan value <b>sfsgf</b></li><li><b>tanggal</b> dengan value <b>2020-07-07</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>mtk</b></li><li><b>mata_kuliah</b> dengan value <b>fafsz</b></li><li><b>rombel</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(170, '::1', '', '2020-06-03 09:01:53', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(171, '::1', '', '2020-06-03 09:02:16', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>4</b></li><li><b>nama</b> dengan value <b>asfa</b></li><li><b>tanggal</b> dengan value <b>2020-07-07</b></li><li><b>keterangan</b> dengan value <b>Tanpa Keterangan</b></li><li><b>jumlah_kehadiran</b> dengan value <b>6</b></li><li><b>prodi</b> dengan value <b>fdgdg</b></li><li><b>mata_kuliah</b> dengan value <b>dge</b></li><li><b>rombel</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(172, '::1', '', '2020-06-03 11:38:35', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(173, '::1', '', '2020-06-03 12:04:52', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(174, '::1', '', '2020-06-03 12:05:23', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(175, '::1', '', '2020-06-03 12:08:44', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(176, '::1', '', '2020-06-03 12:10:33', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(177, '::1', '', '2020-06-03 12:11:50', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(178, '::1', '', '2020-06-03 12:12:03', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(179, '::1', '', '2020-06-03 12:20:10', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(180, '::1', '', '2020-06-03 12:20:19', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(181, '::1', '', '2020-06-03 12:32:37', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(182, '::1', '', '2020-06-03 12:42:07', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(183, '::1', '', '2020-06-03 12:42:21', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(184, '::1', '', '2020-06-03 12:59:50', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(185, '::1', '', '2020-06-03 13:05:12', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(186, '::1', '', '2020-06-03 13:05:19', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(187, '::1', '', '2020-06-03 13:13:04', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(188, '::1', '', '2020-06-03 13:13:10', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(189, '::1', '', '2020-06-03 13:15:10', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(190, '::1', '', '2020-06-03 13:22:16', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(191, '::1', '', '2020-06-03 13:24:21', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(192, '::1', '', '2020-06-03 13:26:27', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(193, '::1', '', '2020-06-03 13:28:09', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(194, '::1', '', '2020-06-03 13:28:23', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(195, '::1', '', '2020-06-03 13:36:30', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(196, '::1', '', '2020-06-03 13:38:07', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(197, '::1', '', '2020-06-03 13:44:26', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(198, '::1', '', '2020-06-03 13:44:42', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(199, '::1', '', '2020-06-03 13:48:33', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(200, '::1', '', '2020-06-03 13:48:44', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(201, '::1', '', '2020-06-03 13:52:19', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(202, '::1', '', '2020-06-03 13:55:58', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(203, '::1', '', '2020-06-03 13:59:31', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(204, '::1', '', '2020-06-03 14:33:04', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>hfcchg</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(205, '::1', '', '2020-06-03 14:34:16', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>id_peminjaman</b> dengan value <b>5</b></li><li><b>nama_peminjam</b> dengan value <b>szdg</b></li><li><b>nomor_induk</b> dengan value <b>324</b></li><li><b>status_user</b> dengan value <b>fsdf</b></li><li><b>kategori_peminjaman</b> dengan value <b>sfaas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>sdfs</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(206, '::1', '', '2020-06-03 14:35:18', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>8</b></li><li><b>nama_peminjam</b> dengan value <b>fsfsf</b></li><li><b>nomor_induk</b> dengan value <b>3245</b></li><li><b>status_user</b> dengan value <b>gsg</b></li><li><b>kategori_peminjaman</b> dengan value <b>dsgsd</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-07</b></li><li><b>status_peminjaman</b> dengan value <b>dgfsdgf</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(207, '::1', '', '2020-06-03 14:49:28', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_peminjaman</b> dengan value <b>8</b></li><li><b>nama_peminjam</b> dengan value <b>fsfsf</b></li><li><b>nomor_induk</b> dengan value <b>3245</b></li><li><b>status_user</b> dengan value <b>gsg</b></li><li><b>kategori_peminjaman</b> dengan value <b>dsgsd</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-07</b></li><li><b>status_peminjaman</b> dengan value <b>dgfsdgf</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(208, '::1', '', '2020-06-03 14:51:04', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_peminjaman</b> dengan value <b>8</b></li><li><b>nama_peminjam</b> dengan value <b>fsfsf</b></li><li><b>nomor_induk</b> dengan value <b>3245</b></li><li><b>status_user</b> dengan value <b>gsg</b></li><li><b>kategori_peminjaman</b> dengan value <b>dsgsd</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-07</b></li><li><b>status_peminjaman</b> dengan value <b>dgfsdgf</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(209, '::1', '', '2020-06-03 15:04:48', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>jhv</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(210, '::1', '', '2020-06-03 15:08:10', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>098</b></li><li><b>nama_peminjam</b> dengan value <b>hjb</b></li><li><b>nomor_induk</b> dengan value <b>908</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>jhghj</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(211, '::1', '', '2020-06-03 15:08:39', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>3453</b></li><li><b>nama_peminjam</b> dengan value <b>sdgfd</b></li><li><b>nomor_induk</b> dengan value <b>2342</b></li><li><b>status_user</b> dengan value <b>Ada Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>sdfsf</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-07-06</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Menunggu Antrian</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(212, '::1', '', '2020-06-03 15:14:29', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>4612418033</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-07-06</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(213, '::1', '', '2020-06-03 15:14:42', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>2147483</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-07-06</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(214, '::1', '', '2020-06-03 15:15:22', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_peminjaman</b> dengan value <b>897DG</b></li><li><b>nama_peminjam</b> dengan value <b>Bowo Alphelibe</b></li><li><b>nomor_induk</b> dengan value <b>32455</b></li><li><b>status_user</b> dengan value <b>Ada Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-06</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(215, '::1', '', '2020-06-03 15:15:50', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>098OPO</b></li><li><b>nama_peminjam</b> dengan value <b>Habib</b></li><li><b>nomor_induk</b> dengan value <b>908365</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-09-08</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(216, '::1', '', '2020-06-03 15:36:54', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(217, '::1', '', '2020-06-03 15:38:32', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(218, '::1', '', '2020-06-03 15:39:46', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(219, '::1', '', '2020-06-03 15:46:04', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(220, '::1', '', '2020-06-03 15:46:24', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(221, '::1', '', '2020-06-03 15:48:25', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(222, '::1', '', '2020-06-03 15:53:02', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(223, '::1', '', '2020-06-03 15:53:51', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(224, '::1', '', '2020-06-03 15:56:40', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(225, '::1', '', '2020-06-03 16:35:14', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>08-09-2020</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(226, '::1', '', '2020-06-03 16:35:31', 'Mengedit absen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nomor_induk</b> dengan value <b>4098907</b></li><li><b>nama</b> dengan value <b>Diva Kratya Prayogo</b></li><li><b>tanggal</b> dengan value <b>2020-04-03</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pendidikan Konservasi</b></li><li><b>rombel</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(227, '::1', '', '2020-06-03 16:36:11', 'Menambah absen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>325235</b></li><li><b>nama</b> dengan value <b>gbfbfg</b></li><li><b>tanggal</b> dengan value <b>2020-06-06</b></li><li><b>keterangan</b> dengan value <b>Tanpa Keterangan</b></li><li><b>jumlah_kehadiran</b> dengan value <b>5</b></li><li><b>prodi</b> dengan value <b>dsvsv</b></li><li><b>mata_kuliah</b> dengan value <b>dvsv</b></li><li><b>rombel</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(228, '::1', '', '2020-06-03 16:36:37', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama</b> dengan value <b>Absen</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>kelola/absen</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(229, '::1', '', '2020-06-03 16:37:01', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama</b> dengan value <b>User</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>Kelola/user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(230, '::1', '', '2020-06-03 16:37:14', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>nama</b> dengan value <b>Inventaris</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/inven</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(231, '::1', '', '2020-06-03 16:37:38', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>Pesan Alat Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>master/pesan_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(232, '::1', '', '2020-06-03 20:37:33', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>137</b></li><li><b>nama</b> dengan value <b>Jatuh Tempo</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>application/master/jatuh_tempo</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(233, '::1', '', '2020-06-03 21:26:49', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>137</b></li><li><b>nama</b> dengan value <b>Jatuh Tempo</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>master/jatuh_tempo</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(234, '::1', '', '2020-06-03 21:41:49', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama</b> dengan value <b>Absen Mahasiswa</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>kelola/absen</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(235, '::1', '', '2020-06-03 22:38:20', 'Menambah absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>87</b></li><li><b>nama</b> dengan value <b>.njvcf</b></li><li><b>tanggal</b> dengan value <b>908978</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>8</b></li><li><b>prodi</b> dengan value <b>;l,mlkjh</b></li><li><b>mata_kuliah</b> dengan value <b>,ljihg</b></li><li><b>rombel</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(236, '::1', '', '2020-06-04 21:01:46', 'Login  by Kholiq', 'kholiq'),
(237, '::1', '', '2020-06-05 00:07:18', 'Login  by Kholiq', 'kholiq'),
(238, '::1', '', '2020-06-05 00:08:38', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>461241</b></li><li><b>nama</b> dengan value <b>Bilal</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>8</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Interaksi Manusia dan Komputer</b></li><li><b>rombel</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(239, '::1', '', '2020-06-05 01:13:37', 'Logout EDLABS by Kholiq', 'kholiq'),
(240, '::1', '', '2020-06-05 01:13:52', 'Login  by Kholiq', 'kholiq'),
(241, '::1', '', '2020-06-05 01:30:42', 'Menambah absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_pegawai</b> dengan value <b>12345</b></li><li><b>nama_lengkap</b> dengan value <b>Sri Hastatati</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>prodi</b> dengan value <b>SI</b></li><li><b>mata_kuliah</b> dengan value <b>IMK</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(242, '::1', '', '2020-06-05 01:30:53', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>12345</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Tidak Hadir</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>prodi</b> dengan value <b>SI</b></li><li><b>mata_kuliah</b> dengan value <b>IMK</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(243, '::1', '', '2020-06-05 02:42:51', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>461241</b></li><li><b>nama_lengkap</b> dengan value <b>Bilal</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>8</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Interaksi Manusia dan Komputer</b></li><li><b>rombel</b> dengan value <b>8</b></li></ul>', 'kholiq'),
(244, '::1', '', '2020-06-05 02:42:58', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>12345</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>prodi</b> dengan value <b>SI</b></li><li><b>mata_kuliah</b> dengan value <b>IMK</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(245, '::1', '', '2020-06-05 02:43:33', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>123456</b></li><li><b>nama_lengkap</b> dengan value <b>Sarjoko</b></li><li><b>tanggal</b> dengan value <b>2020-07-08</b></li><li><b>keterangan</b> dengan value <b>Ijin</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>jabatan</b> dengan value <b>Ketua Laboratorium</b></li></ul>', 'kholiq'),
(246, '::1', '', '2020-06-05 02:51:50', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>1254</b></li><li><b>nama_lengkap</b> dengan value <b>wad</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Ijin</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', 'kholiq'),
(247, '::1', '', '2020-06-05 02:57:26', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>1254</b></li><li><b>nama_lengkap</b> dengan value <b>wad</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>jabatan</b> dengan value <b>Ketua Laboratorium</b></li></ul>', 'kholiq'),
(248, '::1', '', '2020-06-05 06:02:41', 'Login  by Kholiq', 'kholiq'),
(249, '::1', '', '2020-06-05 06:14:30', 'Menghapus menu dengan id 129', 'kholiq'),
(250, '::1', '', '2020-06-05 06:15:09', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(251, '::1', '', '2020-06-05 06:53:35', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>svsv</b></li><li><b>keterangan</b> dengan value <b>vsdvsd</b></li></ul>', 'kholiq'),
(252, '::1', '', '2020-06-05 06:53:47', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>sumber_pendanaan</b> dengan value <b>svsv</b></li><li><b>keterangan</b> dengan value <b>sdvsv</b></li></ul>', 'kholiq'),
(253, '::1', '', '2020-06-05 06:54:02', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>keterangan</b> dengan value <b>Sudah masuk</b></li></ul>', 'kholiq'),
(254, '::1', '', '2020-06-05 07:16:52', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>Pesan Alat Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/pinjam_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(255, '::1', '', '2020-06-05 09:48:04', 'Logout EDLABS by ', 'Tamu'),
(256, '::1', '', '2020-06-05 09:48:19', 'Login  by Kholiq', 'kholiq'),
(257, '::1', '', '2020-06-05 09:55:54', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(258, '::1', '', '2020-06-05 10:38:35', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>412654</b></li><li><b>pesan_alat_bahan</b> dengan value <b>wdqd</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>ffwqf</b></li></ul>', 'kholiq'),
(259, '::1', '', '2020-06-05 10:43:53', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>6575</b></li><li><b>pesan_alat_bahan</b> dengan value <b>,mnkjnh</b></li><li><b>jumlah</b> dengan value <b>0</b></li><li><b>tanggal</b> dengan value <b>6778</b></li><li><b>keterangan</b> dengan value <b>kihjuh</b></li></ul>', 'kholiq'),
(260, '::1', '', '2020-06-05 10:54:04', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>3242</b></li><li><b>pesan_alat_bahan</b> dengan value <b>sdaf</b></li><li><b>jumlah</b> dengan value <b>3</b></li><li><b>tanggal</b> dengan value <b>234</b></li><li><b>keterangan</b> dengan value <b>safa</b></li></ul>', 'kholiq'),
(261, '::1', '', '2020-06-05 13:53:04', 'Logout EDLABS by ', 'Tamu'),
(262, '::1', '', '2020-06-05 13:53:17', 'Login  by Kholiq', 'kholiq'),
(263, '::1', '', '2020-06-06 07:18:22', 'Login  by Kholiq', 'kholiq'),
(264, '::1', '', '2020-06-06 07:35:43', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>password</b> dengan value <b>*F1378C253EEBE31F135CC41EF4A98D077EB98F5D</b></li><li><b>no_hp</b> dengan value <b>083156624591</b></li><li><b>alamat</b> dengan value <b>kaliwungu</b></li></ul>', 'kholiq'),
(265, '::1', '', '2020-06-06 07:35:47', 'Logout EDLABS by Kholiq', 'kholiq'),
(266, '::1', '', '2020-06-06 07:36:02', 'Login  by Kholiq', 'kholiq'),
(267, '::1', '', '2020-06-06 07:36:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>password</b> dengan value <b>*F1378C253EEBE31F135CC41EF4A98D077EB98F5D</b></li><li><b>gambar</b> dengan value <b>files/2020/06/aafb453100cc7f33ece9049ad79e6f23.jpg</b></li><li><b>no_hp</b> dengan value <b>083156624591</b></li><li><b>alamat</b> dengan value <b>kaliwungu</b></li></ul>', 'kholiq'),
(268, '::1', '', '2020-06-06 07:36:25', 'Logout EDLABS by Kholiq', 'kholiq'),
(269, '::1', '', '2020-06-06 07:37:09', 'Login  by Kholiq', 'kholiq'),
(270, '::1', '', '2020-06-06 07:40:05', 'Logout EDLABS by Kholiq', 'kholiq'),
(271, '::1', '', '2020-06-06 07:40:15', 'Login  by Kholiq', 'kholiq'),
(272, '::1', '', '2020-06-06 07:42:53', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>password</b> dengan value <b>*F1378C253EEBE31F135CC41EF4A98D077EB98F5D</b></li><li><b>no_hp</b> dengan value <b>kosong</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(273, '::1', '', '2020-06-06 07:42:56', 'Logout EDLABS by Kholiq', 'kholiq'),
(274, '::1', '', '2020-06-06 07:43:06', 'Login  by Kholiq', 'kholiq'),
(275, '::1', '', '2020-06-06 13:28:05', 'Logout EDLABS by ', 'Tamu'),
(276, '::1', '', '2020-06-06 14:02:27', 'Login  by Kholiq', 'kholiq'),
(277, '::1', '', '2020-06-08 15:07:56', 'Login  by Kholiq', 'kholiq'),
(278, '::1', '', '2020-06-08 16:11:36', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2000</b></li><li><b>kondisi</b> dengan value <b>baryu</b></li></ul>', 'kholiq'),
(279, '::1', '', '2020-06-08 16:12:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>1000</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(280, '::1', '', '2020-06-08 16:28:31', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2000</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(281, '::1', '', '2020-06-08 16:39:08', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2000</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(282, '::1', '', '2020-06-08 16:58:57', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>3000</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(283, '::1', '', '2020-06-08 21:12:36', 'Logout EDLABS by Kholiq', 'kholiq'),
(284, '::1', '', '2020-06-08 21:12:52', 'Login  by Kholiq', 'kholiq'),
(285, '::1', '', '2020-06-09 06:16:14', 'Logout EDLABS by ', 'Tamu'),
(286, '::1', '', '2020-06-09 06:16:51', 'Login  by Kholiq', 'kholiq'),
(287, '::1', '', '2020-06-09 12:57:52', 'Login  by Kholiq', 'kholiq'),
(288, '::1', '', '2020-06-09 15:42:32', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>stok</b> dengan value <b>3</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>23</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(289, '::1', '', '2020-06-09 16:10:02', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>6700</b></li><li><b>kondisi</b> dengan value <b>bjgh</b></li></ul>', 'kholiq'),
(290, '::1', '', '2020-06-09 16:12:11', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>3400</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(291, '::1', '', '2020-06-09 16:18:31', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34</b></li><li><b>kondisi</b> dengan value <b>efawr</b></li></ul>', 'kholiq'),
(292, '::1', '', '2020-06-09 16:41:56', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola Alat</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>master/kelola_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(293, '::1', '', '2020-06-09 18:46:01', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(294, '::1', '', '2020-06-09 18:46:09', 'Logout EDLABS by Kholiq', 'kholiq'),
(295, '::1', '', '2020-06-09 18:46:26', 'Login  by Kholiq', 'kholiq'),
(296, '::1', '', '2020-06-09 21:04:32', NULL, 'kholiq'),
(297, '::1', '', '2020-06-09 21:05:23', 'Menghapus laporan dengan id 3', 'kholiq'),
(298, '::1', '', '2020-06-09 21:05:44', 'Menghapus laporan dengan id 3', 'kholiq'),
(299, '::1', '', '2020-06-09 21:07:22', 'Menghapus laporan dengan id 3', 'kholiq'),
(300, '::1', '', '2020-06-09 21:07:40', 'Menghapus laporan dengan id 3', 'kholiq'),
(301, '::1', '', '2020-06-09 21:24:34', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34000</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(302, '::1', '', '2020-06-09 21:25:22', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>6700</b></li><li><b>kondisi</b> dengan value <b>bsaf</b></li></ul>', 'kholiq'),
(303, '::1', '', '2020-06-09 21:25:42', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>6700</b></li><li><b>kondisi</b> dengan value <b>bsaf</b></li></ul>', 'kholiq'),
(304, '::1', '', '2020-06-09 21:27:22', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>90</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>4567</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(305, '::1', '', '2020-06-09 21:29:41', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>kosong</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>6700</b></li><li><b>kondisi</b> dengan value <b>bsaf</b></li></ul>', 'kholiq'),
(306, '::1', '', '2020-06-09 21:29:57', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>selected</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>3400</b></li><li><b>kondisi</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(307, '::1', '', '2020-06-09 21:31:09', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b><div style=</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34</b></li><li><b>kondisi</b> dengan value <b>efawr</b></li></ul>', 'kholiq'),
(308, '::1', '', '2020-06-09 21:33:59', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(309, '::1', '', '2020-06-09 21:37:12', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>23442</b></li><li><b>kondisi</b> dengan value <b>afaf</b></li></ul>', 'kholiq'),
(310, '::1', '', '2020-06-09 21:39:31', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(311, '::1', '', '2020-06-09 21:39:50', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(312, '::1', '', '2020-06-09 21:40:24', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(313, '::1', '', '2020-06-09 21:41:37', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>Lab IPA</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>24124</b></li><li><b>kondisi</b> dengan value <b>wefwef</b></li></ul>', 'kholiq'),
(314, '::1', '', '2020-06-09 21:42:22', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>23442</b></li><li><b>kondisi</b> dengan value <b>afaf</b></li></ul>', 'kholiq'),
(315, '::1', '', '2020-06-09 21:42:33', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>2</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>23442</b></li><li><b>kondisi</b> dengan value <b>afaf</b></li></ul>', 'kholiq'),
(316, '::1', '', '2020-06-09 21:49:17', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>4234</b></li><li><b>kondisi</b> dengan value <b>asfda</b></li></ul>', 'kholiq'),
(317, '::1', '', '2020-06-09 22:17:34', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan_alat</b> dengan value <b>Gram</b></li><li><b>kategori</b> dengan value <b>Mikroskop</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>Lab Ilkom</b></li><li><b>pendanaan</b> dengan value <b>Fakultas</b></li><li><b>harga</b> dengan value <b>23442</b></li><li><b>kondisi</b> dengan value <b>afaf</b></li></ul>', 'kholiq'),
(318, '::1', '', '2020-06-09 22:28:59', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan_alat</b> dengan value <b>Centimeter</b></li><li><b>kategori</b> dengan value <b>Modul</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>Lab IPA</b></li><li><b>pendanaan</b> dengan value <b>Fakultas</b></li><li><b>harga</b> dengan value <b>4234</b></li><li><b>kondisi</b> dengan value <b>asfda</b></li></ul>', 'kholiq'),
(319, '::1', '', '2020-06-09 22:29:41', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>4</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>234</b></li><li><b>kondisi</b> dengan value <b>sdgs</b></li></ul>', 'kholiq'),
(320, '::1', '', '2020-06-09 22:46:23', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>satuan_alat</b> dengan value <b>Kilogram</b></li><li><b>kategori</b> dengan value <b>Mikroskop</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>Lab Ilkom</b></li><li><b>pendanaan</b> dengan value <b>Fakultas</b></li><li><b>harga</b> dengan value <b>234</b></li><li><b>kondisi</b> dengan value <b>sdgs</b></li></ul>', 'kholiq'),
(321, '::1', '', '2020-06-09 22:56:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2244</b></li><li><b>kondisi</b> dengan value <b>aesf</b></li></ul>', 'kholiq'),
(322, '::1', '', '2020-06-09 23:01:54', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>13</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>satuan_alat</b> dengan value <b>Kilogram</b></li><li><b>kategori</b> dengan value <b>Mikroskop</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>Lab Ilkom</b></li><li><b>pendanaan</b> dengan value <b>Fakultas</b></li><li><b>harga</b> dengan value <b>2244</b></li><li><b>kondisi</b> dengan value <b>aesf</b></li></ul>', 'kholiq'),
(323, '::1', '', '2020-06-09 23:07:55', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>21414</b></li><li><b>kondisi</b> dengan value <b>asfsadf</b></li></ul>', 'kholiq'),
(324, '::1', '', '2020-06-09 23:10:00', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>890</b></li><li><b>kondisi</b> dengan value <b>asfsadf</b></li></ul>', 'kholiq'),
(325, '::1', '', '2020-06-09 23:11:32', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>4214</b></li><li><b>kondisi</b> dengan value <b>dfsdf</b></li></ul>', 'kholiq'),
(326, '::1', '', '2020-06-09 23:11:41', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>90</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>4214</b></li><li><b>kondisi</b> dengan value <b>dfsdf</b></li></ul>', 'kholiq'),
(327, '::1', '', '2020-06-10 06:01:35', 'Login  by Kholiq', 'kholiq'),
(328, '::1', '', '2020-06-10 06:03:21', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>Centimeter</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>90</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>4214</b></li><li><b>kondisi</b> dengan value <b>dfsdf</b></li></ul>', 'kholiq'),
(329, '::1', '', '2020-06-10 06:03:36', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(330, '::1', '', '2020-06-10 06:13:41', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(331, '::1', '', '2020-06-10 06:14:30', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(332, '::1', '', '2020-06-10 08:34:27', 'Logout EDLABS by ', 'Tamu'),
(333, '::1', '', '2020-06-10 08:34:54', 'Login  by Kholiq', 'kholiq'),
(334, '::1', '', '2020-06-10 08:54:02', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(335, '::1', '', '2020-06-10 08:54:17', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(336, '::1', '', '2020-06-10 08:55:11', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>fhgfh</b></li></ul>', 'kholiq'),
(337, '::1', '', '2020-06-10 12:15:36', 'Logout EDLABS by ', 'Tamu'),
(338, '::1', '', '2020-06-10 12:19:30', 'Login  by Kholiq', 'kholiq'),
(339, '::1', '', '2020-06-11 11:59:17', 'Logout EDLABS by ', 'Tamu'),
(340, '::1', '', '2020-06-11 12:00:18', 'Login  by Erika Noor', 'Erika Noor'),
(341, '::1', '', '2020-06-11 12:01:15', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Erika Noor</b></li><li><b>username</b> dengan value <b>Erika Noor</b></li><li><b>password</b> dengan value <b>*F1378C253EEBE31F135CC41EF4A98D077EB98F5D</b></li><li><b>gambar</b> dengan value <b>files/2020/06/dca197efc6cd984aa25220d1f04f2d6e.jpg</b></li><li><b>no_hp</b> dengan value <b>kosong</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'Erika Noor'),
(342, '::1', '', '2020-06-11 12:01:20', 'Logout EDLABS by Erika Noor', 'Erika Noor'),
(343, '::1', '', '2020-06-11 12:01:30', 'Login  by Erika Noor', 'Erika Noor'),
(344, '::1', '', '2020-06-11 21:56:45', 'Logout EDLABS by ', 'Tamu'),
(345, '::1', '', '2020-06-11 21:57:01', 'Login  by Erika Noor', 'Erika Noor'),
(346, '::1', '', '2020-06-11 22:39:48', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>5</b></li><li><b>jumlah</b> dengan value <b>3</b></li><li><b>tanggal</b> dengan value <b>2020-09-08</b></li><li><b>keterangan</b> dengan value <b>efr</b></li></ul>', 'Erika Noor'),
(347, '::1', '', '2020-06-11 23:07:45', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>32</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>sfef</b></li></ul>', 'Erika Noor'),
(348, '::1', '', '2020-06-11 23:13:28', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>243</b></li><li><b>pesan_alat_bahan</b> dengan value <b>safdasf</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>asddfa</b></li></ul>', 'Erika Noor'),
(349, '::1', '', '2020-06-11 23:20:46', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>1234</b></li><li><b>pesan_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>jumlah</b> dengan value <b>4</b></li><li><b>tanggal</b> dengan value <b>2020-08-08</b></li><li><b>keterangan</b> dengan value <b>Baik</b></li></ul>', 'Erika Noor'),
(350, '::1', '', '2020-06-11 23:22:03', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pesan_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-08-08</b></li><li><b>keterangan</b> dengan value <b>Baik</b></li></ul>', 'Erika Noor'),
(351, '::1', '', '2020-06-12 04:34:06', 'Logout EDLABS by ', 'Tamu'),
(352, '::1', '', '2020-06-12 04:36:25', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(353, '::1', '', '2020-06-12 04:39:40', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(354, '::1', '', '2020-06-12 04:39:52', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(355, '::1', '', '2020-06-12 04:40:47', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(356, '::1', '', '2020-06-12 04:40:58', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(357, '::1', '', '2020-06-12 04:43:37', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(358, '::1', '', '2020-06-12 04:43:49', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(359, '::1', '', '2020-06-12 04:45:34', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(360, '::1', '', '2020-06-12 04:45:45', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(361, '::1', '', '2020-06-12 08:40:06', 'Logout EDLABS by ', 'Tamu'),
(362, '::1', '', '2020-06-13 19:55:23', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(363, '::1', '', '2020-06-13 20:17:19', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>nama</b> dengan value <b>Inventaris</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/inven_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'Erika Noor Dianti'),
(364, '::1', '', '2020-06-13 20:17:23', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'Erika Noor Dianti'),
(365, '::1', '', '2020-06-13 20:22:15', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>5322354</b></li><li><b>alat_bahan</b> dengan value <b>sgsw</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>asfd</b></li></ul>', 'Erika Noor Dianti'),
(366, '::1', '', '2020-06-13 20:22:21', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>5322354</b></li><li><b>alat_bahan</b> dengan value <b>sgswsd</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>asfd</b></li></ul>', 'Erika Noor Dianti'),
(367, '::1', '', '2020-06-13 21:18:06', 'Menambah Master servis alat bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>sfs</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>status</b> dengan value <b>sadff</b></li><li><b>keterangan</b> dengan value <b>asdf</b></li></ul>', 'Erika Noor Dianti'),
(368, '::1', '', '2020-06-13 21:18:16', 'Mengedit Master servis alat bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>ssdgsdg</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>status</b> dengan value <b>sadff</b></li><li><b>keterangan</b> dengan value <b>asdf</b></li></ul>', 'Erika Noor Dianti'),
(369, '::1', '', '2020-06-13 21:20:25', 'Menambah Master servis alat bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>2342</b></li><li><b>alat_bahan</b> dengan value <b>sdfsf</b></li><li><b>tgl_servis</b> dengan value <b>2020-08-09</b></li><li><b>status</b> dengan value <b>avvsdav</b></li><li><b>keterangan</b> dengan value <b>vsavda</b></li></ul>', 'Erika Noor Dianti'),
(370, '::1', '', '2020-06-13 21:20:35', 'Mengedit Master servis alat bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>ssdgsdg</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>status</b> dengan value <b>ngghn</b></li><li><b>keterangan</b> dengan value <b>asdf</b></li></ul>', 'Erika Noor Dianti'),
(371, '::1', '', '2020-06-13 21:21:36', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>alat_bahan</b> dengan value <b>pipet</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>ada</b></li></ul>', 'Erika Noor Dianti'),
(372, '::1', '', '2020-06-13 21:22:02', 'Mengedit Master servis alat bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>status</b> dengan value <b>sudah diservice</b></li><li><b>keterangan</b> dengan value <b>oke</b></li></ul>', 'Erika Noor Dianti'),
(373, '::1', '', '2020-06-13 21:34:29', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34535</b></li><li><b>kondisi</b> dengan value <b>bagus</b></li></ul>', 'Erika Noor Dianti'),
(374, '::1', '', '2020-06-13 21:34:49', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>32000</b></li><li><b>kondisi</b> dengan value <b>bagus</b></li></ul>', 'Erika Noor Dianti'),
(375, '::1', '', '2020-06-13 21:41:32', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>16</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>7</b></li><li><b>stok_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>32000</b></li><li><b>kondisi</b> dengan value <b>Rusak</b></li></ul>', 'Erika Noor Dianti'),
(376, '::1', '', '2020-06-14 11:40:56', 'Logout EDLABS by ', 'Tamu'),
(377, '::1', '', '2020-06-14 11:41:43', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(378, '::1', '', '2020-06-16 01:01:25', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(379, '::1', '', '2020-06-16 01:38:56', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(380, '::1', '', '2020-06-16 01:39:53', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(381, '::1', '', '2020-06-16 07:37:58', 'Logout EDLABS by ', 'Tamu'),
(382, '::1', '', '2020-06-16 07:39:02', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(383, '::1', '', '2020-06-16 09:25:58', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>34000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', 'Erika Noor Dianti'),
(384, '::1', '', '2020-06-16 22:12:56', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(385, '::1', '', '2020-06-16 22:37:31', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(386, '::1', '', '2020-06-16 22:37:44', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(387, '::1', '', '2020-06-16 22:57:35', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>alat_bahan</b> dengan value <b>pipet</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', 'Erika Noor Dianti'),
(388, '::1', '', '2020-06-16 23:06:56', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>merk</b> dengan value <b>sdfsf</b></li><li><b>seri</b> dengan value <b>2133</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>kosong</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>sfasfaf</b></li><li><b>tipe</b> dengan value <b>wqeq</b></li><li><b>status</b> dengan value <b>asfdsa</b></li></ul>', 'Erika Noor Dianti'),
(389, '::1', '', '2020-06-16 23:10:12', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pesan_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li></ul>', 'Erika Noor Dianti'),
(390, '::1', '', '2020-06-16 23:10:24', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pesan_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-12-01</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li></ul>', 'Erika Noor Dianti');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(391, '::1', '', '2020-06-16 23:26:22', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>2147483</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-12-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(392, '::1', '', '2020-06-16 23:26:48', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_peminjaman</b> dengan value <b>897DG</b></li><li><b>nama_peminjam</b> dengan value <b>Bowo Alphelibe</b></li><li><b>nomor_induk</b> dengan value <b>32455</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-01-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sudah Dikembalikan</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(393, '::1', '', '2020-06-16 23:27:02', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>098OPO</b></li><li><b>nama_peminjam</b> dengan value <b>Habib</b></li><li><b>nomor_induk</b> dengan value <b>908365</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-12-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sudah Dikembalikan</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(394, '::1', '', '2020-06-17 01:12:16', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2412</b></li><li><b>nama_lab</b> dengan value <b>safw</b></li><li><b>alamat_lab</b> dengan value <b>safa</b></li><li><b>tipe_lab</b> dengan value <b>asfwa</b></li><li><b>kor_lab</b> dengan value <b>wfqq</b></li><li><b>laboran</b> dengan value <b>safqw</b></li><li><b>foto_lab</b> dengan value <b>qfw</b></li><li><b>status</b> dengan value <b>fewqwqe</b></li></ul>', 'Erika Noor Dianti'),
(395, '::1', '', '2020-06-17 01:19:31', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>sejumlah</b> dengan value <b>2000000</b></li><li><b>keterangan</b> dengan value <b>Sudah Masuk</b></li></ul>', 'Erika Noor Dianti'),
(396, '::1', '', '2020-06-17 07:06:16', 'Logout EDLABS by ', 'Tamu'),
(397, '::1', '', '2020-06-17 07:06:53', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(398, '::1', '', '2020-06-17 07:44:12', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_no_induk</b> dengan value <b>Mahasiswa</b></li><li><b>no_induk</b> dengan value <b>4612418019</b></li><li><b>nama</b> dengan value <b>Diva Kratya</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', 'Erika Noor Dianti'),
(399, '::1', '', '2020-06-17 08:20:40', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Mahasiswa</b></li><li><b>no_induk</b> dengan value <b>235235</b></li><li><b>nama</b> dengan value <b>fefsf</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', 'Erika Noor Dianti'),
(400, '::1', '', '2020-06-17 08:21:48', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kategori_no_induk</b> dengan value <b>Mahasiswa</b></li><li><b>no_induk</b> dengan value <b>235235</b></li><li><b>nama</b> dengan value <b>fefsf</b></li><li><b>keterangan</b> dengan value <b>Tidak Aktif</b></li></ul>', 'Erika Noor Dianti'),
(401, '::1', '', '2020-06-17 08:39:23', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>A02</b></li><li><b>jenis_bahan</b> dengan value <b>zat tambah</b></li><li><b>nama_bahan</b> dengan value <b>talkum</b></li><li><b>nama_satuan</b> dengan value <b>Gram</b></li><li><b>status</b> dengan value <b>Masih Ada Stok</b></li></ul>', 'Erika Noor Dianti'),
(402, '::1', '', '2020-06-17 08:42:13', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>A02</b></li><li><b>jenis_bahan</b> dengan value <b>zat tambah</b></li><li><b>nama_bahan</b> dengan value <b>talkum</b></li><li><b>nama_satuan</b> dengan value <b>Gram</b></li><li><b>status</b> dengan value <b>Stok Menipis</b></li></ul>', 'Erika Noor Dianti'),
(403, '::1', '', '2020-06-17 08:43:13', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>A02</b></li><li><b>jenis_bahan</b> dengan value <b>zat tambah</b></li><li><b>nama_bahan</b> dengan value <b>talkum</b></li><li><b>nama_satuan</b> dengan value <b>Gram</b></li><li><b>status</b> dengan value <b>Masih Ada Stok</b></li></ul>', 'Erika Noor Dianti'),
(404, '::1', '', '2020-06-17 08:47:48', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>periode_pengajuan</b> dengan value <b>Pb1435</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>bulan</b> dengan value <b>Maret</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>pajak</b> dengan value <b>3</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Terdistribusikan</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(405, '::1', '', '2020-06-17 08:48:26', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Basa</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>12000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(406, '::1', '', '2020-06-17 08:48:34', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_bahan</b> dengan value <b>Tanaman</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>0</b></li><li><b>jumlah_grosir</b> dengan value <b>3</b></li><li><b>harga_grosir</b> dengan value <b>20000</b></li><li><b>estimasi_jumlah</b> dengan value <b>0</b></li><li><b>harga_dasar</b> dengan value <b>25000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(407, '::1', '', '2020-06-17 08:48:41', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_bahan</b> dengan value <b>Pelarut</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>10</b></li><li><b>harga_grosir</b> dengan value <b>30000</b></li><li><b>estimasi_jumlah</b> dengan value <b>0</b></li><li><b>harga_dasar</b> dengan value <b>35000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'Erika Noor Dianti'),
(408, '::1', '', '2020-06-17 16:04:15', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(409, '::1', '', '2020-06-17 16:07:13', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>merk</b> dengan value <b>DSFDSF</b></li><li><b>seri</b> dengan value <b>WED</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>SF</b></li><li><b>tipe</b> dengan value <b>EWGFW</b></li><li><b>status</b> dengan value <b>RE</b></li></ul>', 'Erika Noor Dianti'),
(410, '::1', '', '2020-06-17 19:33:19', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>merk</b> dengan value <b>ewaf</b></li><li><b>seri</b> dengan value <b>234</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>43</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>asf</b></li><li><b>tipe</b> dengan value <b>asf</b></li><li><b>status</b> dengan value <b>asf</b></li></ul>', 'Erika Noor Dianti'),
(411, '::1', '', '2020-06-18 13:51:33', 'Logout EDLABS by ', 'Tamu'),
(412, '::1', '', '2020-06-18 13:52:10', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(413, '::1', '', '2020-06-18 20:45:38', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(414, '::1', '', '2020-06-18 20:48:49', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Inventaris Alat dan Bahan Yang Sudah Diservice</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6</b></li><li><b>url</b> dengan value <b>master/servis_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>14</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'Erika Noor Dianti'),
(415, '::1', '', '2020-06-18 20:48:58', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>nama</b> dengan value <b>Inventaris</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,4</b></li><li><b>url</b> dengan value <b>master/inven_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'Erika Noor Dianti'),
(416, '::1', '', '2020-06-18 21:08:32', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(417, '::1', '', '2020-06-19 06:42:25', 'Login  by Suciningtyas P', 'sucining'),
(418, '::1', '', '2020-06-19 06:45:07', 'Logout EDLABS by Suciningtyas P', 'sucining'),
(419, '::1', '', '2020-06-19 06:45:34', 'Login  by Dadang', 'Dadang'),
(420, '::1', '', '2020-06-19 06:45:46', 'Logout EDLABS by Dadang', 'Dadang'),
(421, '::1', '', '2020-06-19 06:46:04', 'Login  by Dadang', 'Dadang'),
(422, '::1', '', '2020-06-19 06:46:34', 'Logout EDLABS by Dadang', 'Dadang'),
(423, '::1', '', '2020-06-19 06:47:11', 'Login  by Sasa', 'Sasa'),
(424, '::1', '', '2020-06-19 06:47:18', 'Logout EDLABS by Sasa', 'Sasa'),
(425, '::1', '', '2020-06-19 06:47:39', 'Login  by Susi', 'Susi'),
(426, '::1', '', '2020-06-19 06:47:52', 'Logout EDLABS by Susi', 'Susi'),
(427, '::1', '', '2020-06-19 06:49:30', 'Login  by Deddy Sudrajat', 'Deddy'),
(428, '::1', '', '2020-06-19 06:49:41', 'Logout EDLABS by Deddy Sudrajat', 'Deddy'),
(429, '::1', '', '2020-06-19 06:51:54', 'Login  by Kevin Hugo', 'Kevinhugo'),
(430, '::1', '', '2020-06-19 06:52:07', 'Logout EDLABS by Kevin Hugo', 'Kevinhugo'),
(431, '::1', '', '2020-06-19 06:52:33', 'Login  by Diva Kratya', 'Divakratya'),
(432, '::1', '', '2020-06-19 06:52:48', 'Logout EDLABS by Diva Kratya', 'Divakratya'),
(433, '::1', '', '2020-06-19 06:54:27', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(434, '::1', '', '2020-06-19 07:35:36', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>kategori_pinjam</b> dengan value <b>alat</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-12-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-12-31</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>Tugas</b></li></ul>', 'Erika Noor Dianti'),
(435, '::1', '', '2020-06-19 07:36:27', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>kategori_pinjam</b> dengan value <b>alat</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-02-02</b></li><li><b>tgl_kembali</b> dengan value <b>2020-02-06</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>Tugas</b></li></ul>', 'Erika Noor Dianti'),
(436, '::1', '', '2020-06-19 07:37:30', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>2314</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Kardus</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-01-05</b></li><li><b>keterangan</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>keperluan</b> dengan value <b>Praktikum</b></li></ul>', 'Erika Noor Dianti'),
(437, '::1', '', '2020-06-19 07:38:09', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>2424</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Monitor</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>3</b></li><li><b>tanggal</b> dengan value <b>2020-03-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-03-07</b></li><li><b>keterangan</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>keperluan</b> dengan value <b>jadS</b></li></ul>', 'Erika Noor Dianti'),
(438, '::1', '', '2020-06-19 13:01:24', 'Logout EDLABS by ', 'Tamu'),
(439, '::1', '', '2020-06-19 13:02:14', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(440, '::1', '', '2020-06-19 18:22:57', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(441, '::1', '', '2020-06-19 18:23:33', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(442, '::1', '', '2020-06-19 18:24:11', 'Login  by Sasa', 'Sasa'),
(443, '::1', '', '2020-06-19 18:35:58', 'Logout EDLABS by Sasa', 'Sasa'),
(444, '::1', '', '2020-06-19 18:36:14', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(445, '::1', '', '2020-06-19 18:36:41', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(446, '::1', '', '2020-06-19 18:37:03', 'Login  by Diva Kratya', 'Divakratya'),
(447, '::1', '', '2020-06-19 18:41:48', 'Logout EDLABS by Diva Kratya', 'Divakratya'),
(448, '::1', '', '2020-06-19 18:43:29', 'Login  by Kevin Hugo', 'Kevinhugo'),
(449, '::1', '', '2020-06-19 18:44:47', 'Menambah absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_pegawai</b> dengan value <b>22342424</b></li><li><b>nama_lengkap</b> dengan value <b>sdffwsfa</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>prodi</b> dengan value <b>wefwe</b></li><li><b>mata_kuliah</b> dengan value <b>qwreq</b></li><li><b>rombel</b> dengan value <b>2</b></li></ul>', 'Kevinhugo'),
(450, '::1', '', '2020-06-20 10:08:03', 'Logout EDLABS by ', 'Tamu'),
(451, '::1', '', '2020-06-20 10:10:21', 'Login  by Kevin Hugo', 'Kevinhugo'),
(452, '::1', '', '2020-06-20 11:23:10', 'Logout EDLABS by Kevin Hugo', 'Kevinhugo'),
(453, '::1', '', '2020-06-20 11:24:46', 'Login  by Kevin Hugo', 'Kevinhugo'),
(454, '::1', '', '2020-06-20 11:25:02', 'Logout EDLABS by Kevin Hugo', 'Kevinhugo'),
(455, '::1', '', '2020-06-20 11:25:22', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(456, '::1', '', '2020-06-20 12:32:03', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Inventaris Alat dan Bahan Yang Perlu Diservice</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,4,6</b></li><li><b>url</b> dengan value <b>master/servis_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>14</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'Erika Noor Dianti'),
(457, '::1', '', '2020-06-20 13:04:21', 'Menambah pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>pengajuan_alat</b> dengan value <b>fsfa</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>jumlah_grosir</b> dengan value <b>346</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', 'Erika Noor Dianti'),
(458, '::1', '', '2020-06-20 13:04:38', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>fsfa</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>jumlah_grosir</b> dengan value <b>346</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', 'Erika Noor Dianti'),
(459, '::1', '', '2020-06-20 13:06:20', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>fsfa</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>jumlah_grosir</b> dengan value <b>346</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', 'Erika Noor Dianti'),
(460, '::1', '', '2020-06-20 13:07:48', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>fsfa</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>satuan_grosir</b> dengan value <b>swer</b></li><li><b>jumlah_grosir</b> dengan value <b>346</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', 'Erika Noor Dianti'),
(461, '::1', '', '2020-06-20 13:50:46', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>675675</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>satuan_grosir</b> dengan value <b>swer</b></li><li><b>jumlah_grosir</b> dengan value <b>346</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', 'Erika Noor Dianti'),
(462, '::1', '', '2020-06-20 14:01:18', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>sejumlah</b> dengan value <b>2000000</b></li><li><b>keterangan</b> dengan value <b>Sudah Masuk</b></li></ul>', 'Erika Noor Dianti'),
(463, '::1', '', '2020-06-26 14:27:02', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(464, '::1', '', '2020-06-26 14:30:59', 'Logout EDLABS by ', 'Tamu'),
(465, '::1', '', '2020-06-26 14:31:26', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(466, '::1', '', '2020-06-26 16:08:32', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(467, '::1', '', '2020-06-26 16:09:12', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(468, '::1', '', '2020-06-26 16:54:07', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>tgl_selesai</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Sedang</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', 'Erika Noor Dianti'),
(469, '::1', '', '2020-06-26 16:55:49', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>tgl_selesai</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Baik</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', 'Erika Noor Dianti'),
(470, '::1', '', '2020-06-26 16:55:59', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>tgl_selesai</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Baik</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', 'Erika Noor Dianti'),
(471, '::1', '', '2020-06-26 16:57:22', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>tgl_selesai</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', 'Erika Noor Dianti'),
(472, '::1', '', '2020-06-26 16:57:28', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>2354</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tgl_servis</b> dengan value <b>2020-09-09</b></li><li><b>tgl_selesai</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Sudah Diservice</b></li></ul>', 'Erika Noor Dianti'),
(473, '::1', '', '2020-06-26 16:57:33', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(474, '::1', '', '2020-06-26 16:57:53', 'Login  by Erika Noor Dianti', 'Erika Noor Dianti'),
(475, '::1', '', '2020-06-26 17:26:06', 'Logout EDLABS by Erika Noor Dianti', 'Erika Noor Dianti'),
(476, '::1', '', '2020-06-26 17:26:45', 'Login  by Erika Noor Dianti', '12431414'),
(477, '::1', '', '2020-06-26 17:46:42', 'Logout EDLABS by Erika Noor Dianti', '12431414'),
(478, '::1', '', '2020-06-26 17:48:16', 'Login  by Erika Noor Dianti', '1243140001'),
(479, '::1', '', '2020-06-26 17:48:38', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(480, '::1', '', '2020-06-26 17:49:07', 'Login  by Erika Noor Dianti', '1243140001'),
(481, '::1', '', '2020-06-26 18:02:58', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(482, '::1', '', '2020-06-26 18:03:41', 'Login  by Sasa', '3241670001'),
(483, '::1', '', '2020-06-26 19:35:43', 'Logout EDLABS by Sasa', '3241670001'),
(484, '::1', '', '2020-06-26 19:37:08', 'Login  by Erika Noor Dianti', '1243140001'),
(485, '::1', '', '2020-06-26 20:19:23', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>161</b></li><li><b>nama</b> dengan value <b>Kelola Seri Alat</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,4</b></li><li><b>url</b> dengan value <b>kelola/kelola_seri_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', '1243140001'),
(486, '::1', '', '2020-06-26 20:28:02', 'Menambah Seri Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>325235</b></li><li><b>kategori</b> dengan value <b>sdfs</b></li><li><b>merk</b> dengan value <b>fdsfsf</b></li><li><b>seri</b> dengan value <b>5325</b></li><li><b>gambar</b> dengan value <b>kosong</b></li><li><b>sop_pengoperasian</b> dengan value <b>fa</b></li><li><b>sop_pemeliharaan</b> dengan value <b>saf</b></li><li><b>sop_pemeriksaan</b> dengan value <b>fas</b></li><li><b>sop_kalibrasi</b> dengan value <b>safas</b></li><li><b>sop_uji_fungsi</b> dengan value <b>saf</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>s</b></li></ul>', '1243140001'),
(487, '::1', '', '2020-06-27 06:42:20', 'Logout EDLABS by ', 'Tamu'),
(488, '::1', '', '2020-06-27 06:43:39', 'Login  by Erika Noor Dianti', '1243140001'),
(489, '::1', '', '2020-06-27 06:44:35', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>keperluan</b> dengan value <b>Tugas</b></li></ul>', '1243140001'),
(490, '::1', '', '2020-06-27 06:59:01', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>5</b></li><li><b>tanggal</b> dengan value <b>2020-12-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-11-01</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>Tugas</b></li></ul>', '1243140001'),
(491, '::1', '', '2020-06-27 06:59:46', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>353</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>gfdsf</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>3</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-01-02</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>wer</b></li></ul>', '1243140001'),
(492, '::1', '', '2020-06-27 07:00:31', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>1234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>Gunting</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>6</b></li><li><b>tanggal</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>Tugas</b></li></ul>', '1243140001'),
(493, '::1', '', '2020-06-27 07:34:32', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>wef</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-01-02</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>sdfv</b></li></ul>', '1243140001'),
(494, '::1', '', '2020-06-27 07:35:08', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>fsv</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>24</b></li><li><b>tanggal</b> dengan value <b>2020-12-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-12-03</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>wefve</b></li></ul>', '1243140001'),
(495, '::1', '', '2020-06-27 07:35:16', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>fsv</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>kosong</b></li><li><b>tgl_kembali</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>Menunggu Persetujuan</b></li><li><b>keperluan</b> dengan value <b>wefve</b></li></ul>', '1243140001'),
(496, '::1', '', '2020-06-27 08:14:08', 'Menambah pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>pengajuan_alat</b> dengan value <b>2325</b></li><li><b>no_induk</b> dengan value <b>2325235</b></li><li><b>nama_alat</b> dengan value <b>sdfseg</b></li><li><b>seri</b> dengan value <b>sdgs</b></li><li><b>merk</b> dengan value <b>sdgg</b></li><li><b>satuan_grosir</b> dengan value <b>2</b></li><li><b>jumlah_grosir</b> dengan value <b>2134</b></li><li><b>harga_grosir</b> dengan value <b>124</b></li><li><b>estimasi_jumlah</b> dengan value <b>124</b></li><li><b>harga_dasar</b> dengan value <b>21421</b></li><li><b>nama_lab</b> dengan value <b>sdfsw</b></li><li><b>status</b> dengan value <b>sdfgr</b></li></ul>', '1243140001'),
(497, '::1', '', '2020-06-27 08:14:17', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>675675</b></li><li><b>no_induk</b> dengan value <b>235</b></li><li><b>nama_alat</b> dengan value <b>szdgg</b></li><li><b>seri</b> dengan value <b>2352</b></li><li><b>merk</b> dengan value <b>sdgsd</b></li><li><b>satuan_grosir</b> dengan value <b>swer</b></li><li><b>jumlah_grosir</b> dengan value <b>215415</b></li><li><b>harga_grosir</b> dengan value <b>2346236</b></li><li><b>estimasi_jumlah</b> dengan value <b>23523452</b></li><li><b>harga_dasar</b> dengan value <b>2346264</b></li><li><b>nama_lab</b> dengan value <b>sdfsg</b></li><li><b>status</b> dengan value <b>sgdsg</b></li></ul>', '1243140001'),
(498, '::1', '', '2020-06-27 08:14:53', 'Menambah absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_mahasiswa</b> dengan value <b>2134215</b></li><li><b>nama_lengkap</b> dengan value <b>gees</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>2134</b></li><li><b>prodi</b> dengan value <b>fe</b></li><li><b>mata_kuliah</b> dengan value <b>sfd</b></li><li><b>rombel</b> dengan value <b>1</b></li></ul>', '1243140001'),
(499, '::1', '', '2020-06-27 08:14:59', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>2134215</b></li><li><b>nama_lengkap</b> dengan value <b>gees</b></li><li><b>tanggal</b> dengan value <b>kosong</b></li><li><b>jumlah_kehadiran</b> dengan value <b>2134</b></li><li><b>prodi</b> dengan value <b>fe</b></li><li><b>mata_kuliah</b> dengan value <b>sfd</b></li><li><b>rombel</b> dengan value <b>4</b></li></ul>', '1243140001'),
(500, '::1', '', '2020-06-27 08:15:27', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2412</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(501, '::1', '', '2020-06-27 08:15:40', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>4</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>2412</b></li><li><b>kondisi</b> dengan value <b>Rusak</b></li></ul>', '1243140001'),
(502, '::1', '', '2020-06-27 12:42:13', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>2147483</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-02-01</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-12-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(503, '::1', '', '2020-06-27 16:03:21', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>sgdr</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>fdhdfh</b></li><li><b>status</b> dengan value <b>dfhd</b></li></ul>', '1243140001'),
(504, '::1', '', '2020-06-27 16:45:05', 'Mengedit Cek Status Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Belum Disetujui</b></li></ul>', '1243140001'),
(505, '::1', '', '2020-06-27 16:45:14', 'Mengedit Cek Status Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li></ul>', '1243140001'),
(506, '::1', '', '2020-06-27 17:55:39', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>24234</b></li><li><b>nama_peminjam</b> dengan value <b>fdbfd</b></li><li><b>nomor_induk</b> dengan value <b>21344</b></li><li><b>kode</b> dengan value <b>234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>fsv</b></li></ul>', '1243140001'),
(507, '::1', '', '2020-06-27 17:55:50', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_peminjaman</b> dengan value <b>234254</b></li><li><b>nama_peminjam</b> dengan value <b>sfsdfs</b></li><li><b>nomor_induk</b> dengan value <b>24242</b></li><li><b>kode</b> dengan value <b>234234</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>wef</b></li></ul>', '1243140001'),
(508, '::1', '', '2020-06-27 19:51:32', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>656767</b></li><li><b>nama_peminjam</b> dengan value <b>afsdf</b></li><li><b>nomor_induk</b> dengan value <b>12421</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>14</b></li><li><b>kategori_pinjam</b> dengan value <b>Alat</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-01-01</b></li><li><b>tgl_kembali</b> dengan value <b>2020-01-03</b></li><li><b>keperluan</b> dengan value <b>fewfwe</b></li></ul>', '1243140001'),
(509, '::1', '', '2020-06-27 21:03:12', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-20</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-27</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(510, '::1', '', '2020-06-27 21:05:03', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-20</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-27</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(511, '::1', '', '2020-06-27 21:06:20', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(512, '::1', '', '2020-06-27 21:06:27', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(513, '::1', '', '2020-06-27 21:06:34', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(514, '::1', '', '2020-06-27 21:06:42', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li></ul>', '1243140001'),
(515, '::1', '', '2020-06-27 21:06:59', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>P01235</b></li><li><b>nama_peminjam</b> dengan value <b>Susi</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li></ul>', '1243140001'),
(516, '::1', '', '2020-06-27 22:00:04', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>5</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>stok_minimal</b> dengan value <b>1</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>5000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(517, '::1', '', '2020-06-27 22:00:35', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li></ul>', '1243140001'),
(518, '::1', '', '2020-06-27 22:00:56', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>6</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-20</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-27</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(519, '::1', '', '2020-06-27 22:22:09', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(520, '::1', '', '2020-06-27 22:22:57', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(521, '::1', '', '2020-06-27 22:23:21', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK03</b></li><li><b>nama_alat</b> dengan value <b>Gunting</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(522, '::1', '', '2020-06-27 22:24:16', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Erika</b></li><li><b>nomor_induk</b> dengan value <b>432457</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-19</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-26</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(523, '::1', '', '2020-06-28 08:02:19', 'Login  by Erika Noor Dianti', '1243140001'),
(524, '::1', '', '2020-06-28 10:16:24', 'Mengedit Validasi Sukses dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>Tervalidasi</b></li></ul>', '1243140001'),
(525, '::1', '', '2020-06-28 10:53:28', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3456</b></li><li><b>nama_lab</b> dengan value <b>Lab Ipa</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>B12</b></li><li><b>kor_lab</b> dengan value <b>Dadang</b></li><li><b>laboran</b> dengan value <b>Susi</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/lab.jpg</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(526, '::1', '', '2020-06-28 10:54:41', 'Menambah Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tgl_servis</b> dengan value <b>2020-06-27</b></li><li><b>tgl_selesai</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', '1243140001'),
(527, '::1', '', '2020-06-28 10:54:51', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tgl_servis</b> dengan value <b>2020-06-27</b></li><li><b>tgl_selesai</b> dengan value <b>2020-06-30</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', '1243140001'),
(528, '::1', '', '2020-06-28 10:55:03', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tgl_servis</b> dengan value <b>2020-06-27</b></li><li><b>tgl_selesai</b> dengan value <b>2020-06-30</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', '1243140001'),
(529, '::1', '', '2020-06-28 10:56:15', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tanggal</b> dengan value <b>2020-06-27</b></li><li><b>keterangan</b> dengan value <b>Rusak</b></li></ul>', '1243140001'),
(530, '::1', '', '2020-06-28 11:00:21', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>123456</b></li><li><b>nama_lengkap</b> dengan value <b>Sarjoko</b></li><li><b>tanggal</b> dengan value <b>2020-07-08</b></li><li><b>keterangan</b> dengan value <b>Tidak Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>1</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(531, '::1', '', '2020-06-28 11:04:16', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>2147483</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-02-01</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-12-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sudah Dikembalikan</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(532, '::1', '', '2020-06-28 11:04:22', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>123DF</b></li><li><b>nama_peminjam</b> dengan value <b>Nur Aini</b></li><li><b>nomor_induk</b> dengan value <b>2147483</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-02-01</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-12-01</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(533, '::1', '', '2020-06-28 11:06:16', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode_pengajuan</b> dengan value <b>pa1234676</b></li><li><b>semester</b> dengan value <b>Antara</b></li><li><b>bulan</b> dengan value <b>Desember</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-28</b></li><li><b>pajak</b> dengan value <b>2</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(534, '::1', '', '2020-06-28 11:06:24', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>periode_pengajuan</b> dengan value <b>Pb1435</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>bulan</b> dengan value <b>Maret</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-21</b></li><li><b>pajak</b> dengan value <b>3</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(535, '::1', '', '2020-06-28 11:06:32', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>periode_pengajuan</b> dengan value <b>Pa13241</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>bulan</b> dengan value <b>Februari</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-14</b></li><li><b>pajak</b> dengan value <b>1</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(536, '::1', '', '2020-06-28 11:06:40', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode_pengajuan</b> dengan value <b>pa1234676</b></li><li><b>semester</b> dengan value <b>Antara</b></li><li><b>bulan</b> dengan value <b>Desember</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-28</b></li><li><b>pajak</b> dengan value <b>2</b></li><li><b>status_pengajuan</b> dengan value <b>Belum Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(537, '::1', '', '2020-06-28 11:07:53', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>2134215</b></li><li><b>nama_lengkap</b> dengan value <b>gees</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>jumlah_kehadiran</b> dengan value <b>2134</b></li><li><b>prodi</b> dengan value <b>fe</b></li><li><b>mata_kuliah</b> dengan value <b>sfd</b></li><li><b>rombel</b> dengan value <b>4</b></li></ul>', '1243140001'),
(538, '::1', '', '2020-06-28 11:13:21', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>alat_bahan</b> dengan value <b>pipet</b></li><li><b>tanggal</b> dengan value <b>2020-09-09</b></li><li><b>keterangan</b> dengan value <b>Rusak</b></li></ul>', '1243140001'),
(539, '::1', '', '2020-06-28 11:13:34', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>alat_bahan</b> dengan value <b>pipet</b></li><li><b>tanggal</b> dengan value <b>2020-09-16</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(540, '::1', '', '2020-06-28 11:13:44', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>0</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tanggal</b> dengan value <b>2020-06-27</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(541, '::1', '', '2020-06-28 11:14:01', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>123</b></li><li><b>alat_bahan</b> dengan value <b>Mikroskop</b></li><li><b>tanggal</b> dengan value <b>2020-09-16</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(542, '::1', '', '2020-06-28 11:16:38', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(543, '::1', '', '2020-06-28 11:23:09', 'Menambah Seri Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3456</b></li><li><b>kategori</b> dengan value <b>Pemotong</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>seri</b> dengan value <b>P12</b></li><li><b>gambar</b> dengan value <b>files/2020/01/gunting.jpg</b></li><li><b>sop_pengoperasian</b> dengan value <b>ada.doc</b></li><li><b>sop_pemeliharaan</b> dengan value <b>ada.doc</b></li><li><b>sop_pemeriksaan</b> dengan value <b>ada.doc</b></li><li><b>sop_kalibrasi</b> dengan value <b>ada.doc</b></li><li><b>sop_uji_fungsi</b> dengan value <b>ada.doc</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>stok_minimal</b> dengan value <b>6</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(544, '::1', '', '2020-06-28 13:17:42', 'Menambah Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>0</b></li><li><b>pinjam_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-28</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(545, '::1', '', '2020-06-28 13:23:39', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(546, '::1', '', '2020-06-28 13:23:54', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li></ul>', '1243140001'),
(547, '::1', '', '2020-06-28 13:25:23', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>1</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>4</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>4</b></li><li><b>tanggal</b> dengan value <b>2020-06-20</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-27</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(548, '::1', '', '2020-06-28 14:24:02', 'Menambah Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432457</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>digantian</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(549, '::1', '', '2020-06-28 14:24:07', 'Mengedit Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432457</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>digantian</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', '1243140001'),
(550, '::1', '', '2020-06-28 14:24:18', 'Mengedit Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432457</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>belum diganti</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(551, '::1', '', '2020-06-28 14:24:44', 'Menambah Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>diganti</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(552, '::1', '', '2020-06-28 14:25:04', 'Mengedit Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>diganti</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', '1243140001'),
(553, '::1', '', '2020-06-28 14:29:04', 'Mengedit penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>diganti</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', '1243140001'),
(554, '::1', '', '2020-06-28 14:53:31', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>kode</b> dengan value <b>2</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>6</b></li><li><b>kategori_pinjam</b> dengan value <b>Praktikum</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-14</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-28</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(555, '::1', '', '2020-06-28 15:00:02', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(556, '::1', '', '2020-06-28 15:01:19', 'Login  by Erika Noor Dianti', '1243140001'),
(557, '::1', '', '2020-06-28 15:05:54', 'Mengedit penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>diganti</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', '1243140001'),
(558, '::1', '', '2020-06-28 15:40:44', 'Mengedit penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>0</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>Sudah Diganti</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(559, '::1', '', '2020-06-28 15:41:01', 'Menambah Penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>nomor_induk</b> dengan value <b>432456</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>Belum Diganti</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(560, '::1', '', '2020-06-28 20:13:41', 'Login  by Erika Noor Dianti', '1243140001'),
(561, '::1', '', '2020-06-28 20:21:04', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(562, '::1', '', '2020-06-28 20:25:32', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>sejumlah</b> dengan value <b>2000000</b></li><li><b>keterangan</b> dengan value <b>Sudah Masuk</b></li></ul>', '1243140001'),
(563, '::1', '', '2020-06-28 20:25:51', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>sejumlah</b> dengan value <b>3000000</b></li><li><b>keterangan</b> dengan value <b>Sudah Masuk</b></li></ul>', '1243140001'),
(564, '::1', '', '2020-06-28 20:26:50', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>Kode</b> dengan value <b>4567</b></li><li><b>Nama</b> dengan value <b>Kilogram</b></li></ul>', '1243140001'),
(565, '::1', '', '2020-06-28 20:27:24', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>Kode</b> dengan value <b>A01</b></li><li><b>Nama</b> dengan value <b>Kilogram</b></li></ul>', '1243140001'),
(566, '::1', '', '2020-06-28 20:27:38', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>Kode</b> dengan value <b>B01</b></li><li><b>Nama</b> dengan value <b>Gram</b></li></ul>', '1243140001'),
(567, '::1', '', '2020-06-28 20:27:47', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>Kode</b> dengan value <b>a02</b></li><li><b>Nama</b> dengan value <b>Centimeter</b></li></ul>', '1243140001'),
(568, '::1', '', '2020-06-28 20:27:55', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>Kode</b> dengan value <b>A02</b></li><li><b>Nama</b> dengan value <b>Centimeter</b></li></ul>', '1243140001'),
(569, '::1', '', '2020-06-28 20:28:18', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>B02</b></li><li><b>Nama</b> dengan value <b>Meter</b></li></ul>', '1243140001'),
(570, '::1', '', '2020-06-28 20:29:27', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>Kode</b> dengan value <b>B02</b></li><li><b>Nama</b> dengan value <b>Liter</b></li></ul>', '1243140001'),
(571, '::1', '', '2020-06-28 20:29:37', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>Kode</b> dengan value <b>A01</b></li><li><b>Nama</b> dengan value <b>Meter</b></li></ul>', '1243140001'),
(572, '::1', '', '2020-06-28 20:30:43', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>B01</b></li><li><b>nama_alat</b> dengan value <b>Gunting</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(573, '::1', '', '2020-06-28 20:30:55', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>B02</b></li><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(574, '::1', '', '2020-06-28 20:31:04', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>B03</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(575, '::1', '', '2020-06-28 20:32:10', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>A01</b></li><li><b>nama_alat</b> dengan value <b>Gunting</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(576, '::1', '', '2020-06-28 20:32:16', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>A02</b></li><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(577, '::1', '', '2020-06-28 20:32:23', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>A03</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(578, '::1', '', '2020-06-28 20:36:21', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>A03</b></li><li><b>Nama</b> dengan value <b>Gram</b></li></ul>', '1243140001'),
(579, '::1', '', '2020-06-28 20:36:54', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>F1</b></li><li><b>tipe_lab</b> dengan value <b>FISIKA</b></li><li><b>keterangan</b> dengan value <b>Fis 1</b></li></ul>', '1243140001'),
(580, '::1', '', '2020-06-28 20:37:06', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>K1</b></li><li><b>tipe_lab</b> dengan value <b>Komputer</b></li><li><b>keterangan</b> dengan value <b>Lam Kom 1</b></li></ul>', '1243140001'),
(581, '::1', '', '2020-06-28 20:38:04', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>K1</b></li><li><b>tipe_lab</b> dengan value <b>Komputer</b></li><li><b>keterangan</b> dengan value <b>Lab Kom 1</b></li></ul>', '1243140001'),
(582, '::1', '', '2020-06-28 20:38:34', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>M1</b></li><li><b>tipe_lab</b> dengan value <b>Kimia</b></li><li><b>keterangan</b> dengan value <b>Kimia 1</b></li></ul>', '1243140001'),
(583, '::1', '', '2020-06-28 20:39:08', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B1</b></li><li><b>tipe_lab</b> dengan value <b>Biologi</b></li><li><b>keterangan</b> dengan value <b>Biologi 1</b></li></ul>', '1243140001'),
(584, '::1', '', '2020-06-28 20:42:19', 'Mengedit Master Kategori_Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>Kategori</b> dengan value <b>Bacaan</b></li><li><b>nama_bahan</b> dengan value <b>Modul</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(585, '::1', '', '2020-06-28 20:42:47', 'Mengedit Master Kategori_Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>Kategori</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Asam Sulfat</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(586, '::1', '', '2020-06-28 20:43:01', 'Mengedit Master Kategori_Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>Kategori</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Asam Nitrat</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(587, '::1', '', '2020-06-28 20:43:24', 'Menambah Master Kategori_Bahan dengan data sbb:<br />\r\n                    <ul><li><b>Kategori</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(588, '::1', '', '2020-06-28 20:46:32', 'Mengedit Master Kategori_Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>Kategori</b> dengan value <b>Praktikum Virus</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(589, '::1', '', '2020-06-28 20:54:04', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_no_induk</b> dengan value <b>Mahasiswa</b></li><li><b>no_induk</b> dengan value <b>8112690001</b></li><li><b>nama</b> dengan value <b>Diva Kratya</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(590, '::1', '', '2020-06-28 21:01:30', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Dosen</b></li><li><b>no_induk</b> dengan value <b>7871260001</b></li><li><b>nama</b> dengan value <b>Kevinhugo</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(591, '::1', '', '2020-06-28 21:02:10', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Aslab</b></li><li><b>no_induk</b> dengan value <b>6121980001</b></li><li><b>nama</b> dengan value <b>Deddy</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(592, '::1', '', '2020-06-28 21:03:04', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Koor Laboratorium</b></li><li><b>no_induk</b> dengan value <b>5863730001</b></li><li><b>nama</b> dengan value <b>Sucining</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(593, '::1', '', '2020-06-28 21:03:32', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Laboran</b></li><li><b>no_induk</b> dengan value <b>4982160001</b></li><li><b>nama</b> dengan value <b>Susi</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(594, '::1', '', '2020-06-28 21:04:05', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Kepala Laboratorium</b></li><li><b>no_induk</b> dengan value <b>3241670001</b></li><li><b>nama</b> dengan value <b>Sasa</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(595, '::1', '', '2020-06-28 21:04:27', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>Admin</b></li><li><b>no_induk</b> dengan value <b>2356850007</b></li><li><b>nama</b> dengan value <b>Dadang</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(596, '::1', '', '2020-06-28 21:04:51', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>kategori_no_induk</b> dengan value <b>Super Admin</b></li><li><b>no_induk</b> dengan value <b>1243140001</b></li><li><b>nama</b> dengan value <b>Erika</b></li><li><b>keterangan</b> dengan value <b>Aktif</b></li></ul>', '1243140001'),
(597, '::1', '', '2020-06-28 21:09:48', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>Kode</b> dengan value <b>B03</b></li><li><b>Nama</b> dengan value <b>Liter</b></li></ul>', '1243140001'),
(598, '::1', '', '2020-06-28 21:11:42', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>B01</b></li><li><b>jenis_bahan</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Asam Nitrat</b></li><li><b>nama_satuan</b> dengan value <b>Liter</b></li><li><b>status</b> dengan value <b>Stok Menipis</b></li></ul>', '1243140001'),
(599, '::1', '', '2020-06-28 21:12:17', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>B02</b></li><li><b>jenis_bahan</b> dengan value <b>zat obat a</b></li><li><b>nama_bahan</b> dengan value <b>Asam Sulfat</b></li><li><b>nama_satuan</b> dengan value <b>Liter</b></li><li><b>status</b> dengan value <b>Masih Ada Stok</b></li></ul>', '1243140001'),
(600, '::1', '', '2020-06-28 21:13:01', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>B03</b></li><li><b>jenis_bahan</b> dengan value <b>zat tambah</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>nama_satuan</b> dengan value <b>Liter</b></li><li><b>status</b> dengan value <b>Masih Ada Stok</b></li></ul>', '1243140001'),
(601, '::1', '', '2020-06-28 21:13:42', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>B03</b></li><li><b>jenis_bahan</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Alkolhol</b></li><li><b>nama_satuan</b> dengan value <b>Liter</b></li><li><b>status</b> dengan value <b>Stok Menipis</b></li></ul>', '1243140001'),
(602, '::1', '', '2020-06-28 21:13:51', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>B02</b></li><li><b>jenis_bahan</b> dengan value <b>Cairan</b></li><li><b>nama_bahan</b> dengan value <b>Asam Sulfat</b></li><li><b>nama_satuan</b> dengan value <b>Liter</b></li><li><b>status</b> dengan value <b>Stok Menipis</b></li></ul>', '1243140001'),
(603, '::1', '', '2020-06-28 21:18:12', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>sejumlah</b> dengan value <b>1000000</b></li><li><b>keterangan</b> dengan value <b>Sudah Masuk</b></li></ul>', '1243140001'),
(604, '::1', '', '2020-06-28 21:18:23', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>sejumlah</b> dengan value <b>1000000</b></li><li><b>keterangan</b> dengan value <b>Belum Masuk</b></li></ul>', '1243140001'),
(605, '::1', '', '2020-06-28 21:26:16', 'Menambah Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK03</b></li><li><b>alat_bahan</b> dengan value <b>Mikroskop</b></li><li><b>tgl_servis</b> dengan value <b>2020-06-20</b></li><li><b>tgl_selesai</b> dengan value <b>2020-06-27</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Belum Diservice</b></li></ul>', '1243140001'),
(606, '::1', '', '2020-06-28 21:26:22', 'Mengedit Master Alat dan Bahan Yang Perlu Diservis dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK03</b></li><li><b>alat_bahan</b> dengan value <b>Mikroskop</b></li><li><b>tgl_servis</b> dengan value <b>2020-06-20</b></li><li><b>tgl_selesai</b> dengan value <b>2020-06-27</b></li><li><b>keterangan</b> dengan value <b>Kerusakan Ringan</b></li><li><b>status</b> dengan value <b>Sudah Diservice</b></li></ul>', '1243140001'),
(607, '::1', '', '2020-06-28 21:52:48', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>K1</b></li><li><b>nama_lab</b> dengan value <b>Lab Kom1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Komputer</b></li><li><b>kor_lab</b> dengan value <b>Suci</b></li><li><b>laboran</b> dengan value <b>Susi</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/labilkom.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(608, '::1', '', '2020-06-28 21:57:42', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_lab</b> dengan value <b>Fis1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Fisika</b></li><li><b>kor_lab</b> dengan value <b>Tito</b></li><li><b>laboran</b> dengan value <b>Rita</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/fisika.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(609, '::1', '', '2020-06-28 21:59:28', 'Mengedit Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3457</b></li><li><b>nama_lab</b> dengan value <b>Lab Kom1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Komputer</b></li><li><b>kor_lab</b> dengan value <b>Suci</b></li><li><b>laboran</b> dengan value <b>Susi</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/labilkom.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(610, '::1', '', '2020-06-28 22:01:12', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_lab</b> dengan value <b>Kimia1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Kimia</b></li><li><b>kor_lab</b> dengan value <b>Sisi</b></li><li><b>laboran</b> dengan value <b>Rendi</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/lab.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(611, '::1', '', '2020-06-28 22:04:00', 'Mengedit Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3458</b></li><li><b>nama_lab</b> dengan value <b>Kimia1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Kimia</b></li><li><b>kor_lab</b> dengan value <b>Sisi</b></li><li><b>laboran</b> dengan value <b>Rendi</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/lab.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(612, '::1', '', '2020-06-28 22:04:39', 'Menambah Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_lab</b> dengan value <b>Biologi1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Biologi</b></li><li><b>kor_lab</b> dengan value <b>Hendra</b></li><li><b>laboran</b> dengan value <b>Heni</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/bio.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(613, '::1', '', '2020-06-28 22:05:54', 'Mengedit Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_lab</b> dengan value <b>Fis1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Fisika</b></li><li><b>kor_lab</b> dengan value <b>Tito</b></li><li><b>laboran</b> dengan value <b>Rita</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/fisika.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(614, '::1', '', '2020-06-28 22:11:57', 'Mengedit Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3459</b></li><li><b>nama_lab</b> dengan value <b>Biologi1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Biologi</b></li><li><b>kor_lab</b> dengan value <b>Hendra</b></li><li><b>laboran</b> dengan value <b>Heni</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/bio.jpg</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(615, '::1', '', '2020-06-28 22:13:52', 'Mengedit Kelola Laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3459</b></li><li><b>nama_lab</b> dengan value <b>Biologi1</b></li><li><b>alamat_lab</b> dengan value <b>Sekaran</b></li><li><b>tipe_lab</b> dengan value <b>Biologi</b></li><li><b>kor_lab</b> dengan value <b>Hendra</b></li><li><b>laboran</b> dengan value <b>Heni</b></li><li><b>foto_lab</b> dengan value <b>files/2020/01/bio.jpg</b></li><li><b>status</b> dengan value <b>Layak</b></li></ul>', '1243140001'),
(616, '::1', '', '2020-06-28 22:17:36', 'Mengedit Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK03</b></li><li><b>alat_bahan</b> dengan value <b>Mikroskop</b></li><li><b>tanggal</b> dengan value <b>2020-09-16</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(617, '::1', '', '2020-06-28 22:21:53', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>alat_bahan</b> dengan value <b>Gunting</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(618, '::1', '', '2020-06-28 22:26:07', 'Mengedit Kelola lokasi_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lokasi_penyimpanan</b> dengan value <b>Lab Kimia</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(619, '::1', '', '2020-06-28 22:27:01', 'Menambah Kelola lokasi_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>nama_lokasi_penyimpanan</b> dengan value <b>Lab Fisika</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(620, '::1', '', '2020-06-28 22:27:15', 'Menambah Kelola lokasi_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>nama_lokasi_penyimpanan</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(621, '::1', '', '2020-06-28 22:34:59', 'Mengedit Kelola Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(622, '::1', '', '2020-06-28 22:35:25', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>6</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>2</b></li><li><b>stok</b> dengan value <b>8</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(623, '::1', '', '2020-06-28 22:36:45', 'Mengedit Kelola Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>6</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(624, '::1', '', '2020-06-28 22:36:54', 'Mengedit Kelola Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>6</b></li><li><b>kategori</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(625, '::1', '', '2020-06-28 22:37:26', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>nama_satuan</b> dengan value <b>6</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>4 Liter</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(626, '::1', '', '2020-06-28 22:40:45', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>4</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>3000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(627, '::1', '', '2020-06-28 22:41:17', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>12</b></li><li><b>stok_minimal</b> dengan value <b>6</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>5000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(628, '::1', '', '2020-06-28 22:41:27', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>12</b></li><li><b>stok_minimal</b> dengan value <b>6</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(629, '::1', '', '2020-06-28 22:42:28', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_alat</b> dengan value <b>3</b></li><li><b>satuan_alat</b> dengan value <b>3</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stok</b> dengan value <b>6</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>1</b></li><li><b>harga</b> dengan value <b>3000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(630, '::1', '', '2020-06-28 22:42:45', 'Mengedit Kelola Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>nama_alat</b> dengan value <b>1</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>3</b></li><li><b>stok</b> dengan value <b>12</b></li><li><b>stok_minimal</b> dengan value <b>6</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(631, '::1', '', '2020-06-28 22:43:12', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>4</b></li><li><b>stok</b> dengan value <b>20</b></li><li><b>stok_minimal</b> dengan value <b>10</b></li><li><b>lokasi</b> dengan value <b>3</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>5000</b></li><li><b>kondisi</b> dengan value <b>Bagus</b></li></ul>', '1243140001'),
(632, '::1', '', '2020-06-28 22:45:26', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>2356850007</b></li><li><b>nama_lengkap</b> dengan value <b>Dadang</b></li><li><b>tanggal</b> dengan value <b>2020-07-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>jabatan</b> dengan value <b>Ketua Laboratorium</b></li></ul>', '1243140001'),
(633, '::1', '', '2020-06-28 22:50:28', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-07-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(634, '::1', '', '2020-06-28 22:51:02', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-07-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(635, '::1', '', '2020-06-28 22:51:25', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(636, '::1', '', '2020-06-28 22:54:37', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>7871260001</b></li><li><b>nama_lengkap</b> dengan value <b>Kevinhugo</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(637, '::1', '', '2020-06-28 22:55:07', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>7871260002</b></li><li><b>nama_lengkap</b> dengan value <b>Bilal</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Interaksi Manusia dan Komputer</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(638, '::1', '', '2020-06-28 22:56:56', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690001</b></li><li><b>nama_lengkap</b> dengan value <b>Diva Kratya</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(639, '::1', '', '2020-06-28 22:57:49', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690001</b></li><li><b>nama_lengkap</b> dengan value <b>Lala</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(640, '::1', '', '2020-06-28 22:58:05', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690002</b></li><li><b>nama_lengkap</b> dengan value <b>Lala</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(641, '::1', '', '2020-06-28 22:58:40', 'Menambah absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690003</b></li><li><b>nama_lengkap</b> dengan value <b>Rere</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(642, '::1', '', '2020-06-28 22:59:16', 'Menambah absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690004</b></li><li><b>nama_lengkap</b> dengan value <b>Budi</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(643, '::1', '', '2020-06-28 22:59:48', 'Menambah absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690005</b></li><li><b>nama_lengkap</b> dengan value <b>Bilal</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(644, '::1', '', '2020-06-28 23:00:00', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690001</b></li><li><b>nama_lengkap</b> dengan value <b>Diva Kratya</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(645, '::1', '', '2020-06-28 23:00:06', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690002</b></li><li><b>nama_lengkap</b> dengan value <b>Lala</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(646, '::1', '', '2020-06-28 23:01:18', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>7871260001</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(647, '::1', '', '2020-06-28 23:01:49', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>7871260001</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(648, '::1', '', '2020-06-28 23:01:58', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>2147483647</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>8</b></li></ul>', '1243140001'),
(649, '::1', '', '2020-06-28 23:02:17', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>2147483647</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>8</b></li></ul>', '1243140001'),
(650, '::1', '', '2020-06-28 23:02:23', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>2147483647</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(651, '::1', '', '2020-06-28 23:04:23', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>2147483647</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(652, '::1', '', '2020-06-28 23:07:45', 'Menambah absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_pegawai</b> dengan value <b>7871260001</b></li><li><b>nama_lengkap</b> dengan value <b>Kevinhugo</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(653, '::1', '', '2020-06-28 23:08:34', 'Menambah absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk_pegawai</b> dengan value <b>7871260001</b></li><li><b>nama_lengkap</b> dengan value <b>Sutaesi</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Basis Data</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(654, '::1', '', '2020-06-28 23:09:07', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>2147483647</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pemrograman</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(655, '::1', '', '2020-06-28 23:13:25', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P01</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Basa</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>12000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(656, '::1', '', '2020-06-28 23:13:42', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P01</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Basa</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>12000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(657, '::1', '', '2020-06-28 23:13:54', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_bahan</b> dengan value <b>Pelarut</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>10</b></li><li><b>harga_grosir</b> dengan value <b>30000</b></li><li><b>estimasi_jumlah</b> dengan value <b>0</b></li><li><b>harga_dasar</b> dengan value <b>30000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(658, '::1', '', '2020-06-28 23:14:10', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Basa</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(659, '::1', '', '2020-06-28 23:14:34', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Asam</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(660, '::1', '', '2020-06-28 23:14:49', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P01</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Asam</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(661, '::1', '', '2020-06-28 23:15:16', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>pengajuan_alat</b> dengan value <b>P01</b></li><li><b>no_induk</b> dengan value <b>2325235</b></li><li><b>nama_alat</b> dengan value <b>sdfseg</b></li><li><b>seri</b> dengan value <b>sdgs</b></li><li><b>merk</b> dengan value <b>sdgg</b></li><li><b>satuan_grosir</b> dengan value <b>2</b></li><li><b>jumlah_grosir</b> dengan value <b>2134</b></li><li><b>harga_grosir</b> dengan value <b>124</b></li><li><b>estimasi_jumlah</b> dengan value <b>124</b></li><li><b>harga_dasar</b> dengan value <b>21421</b></li><li><b>nama_lab</b> dengan value <b>sdfsw</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(662, '::1', '', '2020-06-28 23:16:24', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P01</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Asam</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(663, '::1', '', '2020-06-28 23:17:26', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(664, '::1', '', '2020-06-28 23:18:02', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(665, '::1', '', '2020-06-28 23:20:50', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengajuan_alat</b> dengan value <b>P02</b></li><li><b>no_induk</b> dengan value <b>7871260001</b></li><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>seri</b> dengan value <b>V12</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>Pcs</b></li><li><b>jumlah_grosir</b> dengan value <b>12</b></li><li><b>harga_grosir</b> dengan value <b>5000</b></li><li><b>estimasi_jumlah</b> dengan value <b>24</b></li><li><b>harga_dasar</b> dengan value <b>6000</b></li><li><b>nama_lab</b> dengan value <b>Kimia1</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(666, '::1', '', '2020-06-28 23:22:15', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>pengajuan_alat</b> dengan value <b>P01</b></li><li><b>no_induk</b> dengan value <b>6121980001</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>seri</b> dengan value <b>V11</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>Pcs</b></li><li><b>jumlah_grosir</b> dengan value <b>12</b></li><li><b>harga_grosir</b> dengan value <b>50000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Biologi1</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(667, '::1', '', '2020-06-28 23:28:27', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_bahan</b> dengan value <b>Tanaman</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>0</b></li><li><b>jumlah_grosir</b> dengan value <b>12</b></li><li><b>harga_grosir</b> dengan value <b>20000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>25000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(668, '::1', '', '2020-06-28 23:28:42', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Asam</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(669, '::1', '', '2020-06-28 23:28:54', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_bahan</b> dengan value <b>Tanaman</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>12</b></li><li><b>harga_grosir</b> dengan value <b>20000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>25000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(670, '::1', '', '2020-06-28 23:29:58', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode_pengajuan</b> dengan value <b>P01</b></li><li><b>semester</b> dengan value <b>Antara</b></li><li><b>bulan</b> dengan value <b>Desember</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-28</b></li><li><b>pajak</b> dengan value <b>2</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(671, '::1', '', '2020-06-28 23:30:08', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>periode_pengajuan</b> dengan value <b>P02</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>bulan</b> dengan value <b>Maret</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-21</b></li><li><b>pajak</b> dengan value <b>3</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(672, '::1', '', '2020-06-28 23:30:16', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>periode_pengajuan</b> dengan value <b>P03</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>bulan</b> dengan value <b>Februari</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-14</b></li><li><b>pajak</b> dengan value <b>1</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(673, '::1', '', '2020-06-28 23:33:44', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-28</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(674, '::1', '', '2020-06-28 23:36:35', 'Menambah Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01237</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(675, '::1', '', '2020-06-28 23:39:10', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK04</b></li><li><b>alat_bahan</b> dengan value <b>Alkohol</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(676, '::1', '', '2020-06-28 23:39:31', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK05</b></li><li><b>alat_bahan</b> dengan value <b>Asam Sulfat</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(677, '::1', '', '2020-06-28 23:40:02', 'Menambah Master inven_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK06</b></li><li><b>alat_bahan</b> dengan value <b>Asam Nitrat</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', '1243140001'),
(678, '::1', '', '2020-06-28 23:40:35', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>P01237</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>2147483647</b></li><li><b>kode</b> dengan value <b>4</b></li><li><b>pinjam_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(679, '::1', '', '2020-06-28 23:41:27', 'Menambah Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>6</b></li><li><b>pinjam_bahan</b> dengan value <b>1</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-29</b></li><li><b>keperluan</b> dengan value <b>praktikum Kimia</b></li></ul>', '1243140001'),
(680, '::1', '', '2020-06-28 23:43:10', 'Menambah Data Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum Biologi</b></li><li><b>tanggal_peminjaman</b> dengan value <b>2020-06-29</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-30</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(681, '::1', '', '2020-06-28 23:46:25', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-29</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-29</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(682, '::1', '', '2020-06-28 23:47:40', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>id_peminjaman</b> dengan value <b>P01235</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-21</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-28</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(683, '::1', '', '2020-06-28 23:48:29', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>P01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-12-21</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-29</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(684, '::1', '', '2020-06-28 23:54:58', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(685, '::1', '', '2020-06-28 23:55:34', 'Login  by Dadang', '2356850007'),
(686, '::1', '', '2020-06-29 00:01:36', 'Logout EDLABS by Dadang', '2356850007'),
(687, '::1', '', '2020-06-29 00:02:12', 'Login  by Sasa', '3241670001'),
(688, '::1', '', '2020-06-29 00:05:40', 'Logout EDLABS by Sasa', '3241670001'),
(689, '::1', '', '2020-06-29 00:06:58', 'Login  by Susi', '4982160001'),
(690, '::1', '', '2020-06-29 00:10:51', 'Logout EDLABS by Susi', '4982160001'),
(691, '::1', '', '2020-06-29 00:11:41', 'Login  by Suciningtyas P', '5863730001'),
(692, '::1', '', '2020-06-29 00:12:39', 'Logout EDLABS by Suciningtyas P', '5863730001'),
(693, '::1', '', '2020-06-29 00:13:15', 'Login  by Deddy Sudrajat', '6121980001'),
(694, '::1', '', '2020-06-29 00:14:56', 'Logout EDLABS by Deddy Sudrajat', '6121980001'),
(695, '::1', '', '2020-06-29 00:15:26', 'Login  by Kevin Hugo', '7871260001'),
(696, '::1', '', '2020-06-29 00:15:38', 'Logout EDLABS by Kevin Hugo', '7871260001'),
(697, '::1', '', '2020-06-29 00:16:05', 'Login  by Diva Kratya', '8112690001'),
(698, '::1', '', '2020-06-29 00:17:24', 'Logout EDLABS by Diva Kratya', '8112690001'),
(699, '::1', '', '2020-06-29 06:46:51', 'Login  by Erika Noor Dianti', '1243140001'),
(700, '::1', '', '2020-06-29 06:47:10', 'Mengedit Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>id_peminjaman</b> dengan value <b>P01235</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(701, '::1', '', '2020-06-29 06:51:02', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>R01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>2147483647</b></li><li><b>kode</b> dengan value <b>6</b></li><li><b>pinjam_bahan</b> dengan value <b>1</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-29</b></li><li><b>keperluan</b> dengan value <b>praktikum Kimia</b></li></ul>', '1243140001'),
(702, '::1', '', '2020-06-29 06:51:14', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>R01237</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>2147483647</b></li><li><b>kode</b> dengan value <b>4</b></li><li><b>pinjam_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(703, '::1', '', '2020-06-29 06:52:12', 'Mengedit Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>id_peminjaman</b> dengan value <b>R01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>2147483647</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Tugas</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-12-21</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-29</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(704, '::1', '', '2020-06-29 06:53:41', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>R01237</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum Biologi</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-28</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-30</b></li><li><b>status_peminjaman</b> dengan value <b>Sedang Dipinjam</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(705, '::1', '', '2020-06-29 06:54:14', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>R01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>6</b></li><li><b>pinjam_bahan</b> dengan value <b>1</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-29</b></li><li><b>keperluan</b> dengan value <b>praktikum Kimia</b></li></ul>', '1243140001'),
(706, '::1', '', '2020-06-29 06:54:34', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>R01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>6</b></li><li><b>pinjam_bahan</b> dengan value <b>1</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-29</b></li><li><b>keperluan</b> dengan value <b>praktikum Kimia</b></li></ul>', '1243140001'),
(707, '::1', '', '2020-06-29 06:58:40', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>R01237</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>kode</b> dengan value <b>4</b></li><li><b>pinjam_bahan</b> dengan value <b>5</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(708, '::1', '', '2020-06-29 06:58:51', 'Mengedit Peminjaman Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>R01238</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>6</b></li><li><b>pinjam_bahan</b> dengan value <b>1</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-29</b></li><li><b>keperluan</b> dengan value <b>praktikum Kimia</b></li></ul>', '1243140001'),
(709, '::1', '', '2020-06-29 07:19:15', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama_peminjam</b> dengan value <b>Diva</b></li><li><b>nomor_induk</b> dengan value <b>8112690001</b></li><li><b>kode</b> dengan value <b>3</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>3</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>2</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-30</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(710, '::1', '', '2020-06-29 07:20:16', 'Menambah Peminjaman Alat Dan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01235</b></li><li><b>nama_peminjam</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>kode</b> dengan value <b>5</b></li><li><b>pinjam_alat_bahan</b> dengan value <b>2</b></li><li><b>kategori_pinjam</b> dengan value <b>Tugas</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>tanggal</b> dengan value <b>2020-06-21</b></li><li><b>tgl_kembali</b> dengan value <b>2020-06-28</b></li><li><b>keperluan</b> dengan value <b>praktikum biologi</b></li></ul>', '1243140001'),
(711, '::1', '', '2020-06-29 07:22:08', 'Menambah Data Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum Biologi</b></li><li><b>tanggal_peminjaman</b> dengan value <b>2020-06-29</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-30</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(712, '::1', '', '2020-06-29 07:23:55', 'Menambah Data Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum Biologi</b></li><li><b>tanggal_peminjaman</b> dengan value <b>2020-06-29</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-30</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(713, '::1', '', '2020-06-29 07:25:27', 'Menambah Data Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>P01235</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum Biologi</b></li><li><b>tanggal_peminjaman</b> dengan value <b>2020-06-21</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-28</b></li><li><b>status_peminjaman</b> dengan value <b>Peminjaman Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(714, '::1', '', '2020-06-29 07:27:43', 'Mengedit penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>P01234</b></li><li><b>nama</b> dengan value <b>Kevinhugo</b></li><li><b>nomor_induk</b> dengan value <b>7871260001</b></li><li><b>jenis</b> dengan value <b>Alat</b></li><li><b>nama_barang</b> dengan value <b>Pipet</b></li><li><b>merk_barang</b> dengan value <b>Viva</b></li><li><b>seri_barang</b> dengan value <b>v21</b></li><li><b>sistem_penggantian</b> dengan value <b>Belum Diganti</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(715, '::1', '', '2020-06-29 07:31:26', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>periode</b> dengan value <b>R01</b></li><li><b>nama_bahan</b> dengan value <b>Larutan Asam</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>15</b></li><li><b>jumlah_grosir</b> dengan value <b>15</b></li><li><b>harga_grosir</b> dengan value <b>10000</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>harga_dasar</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(716, '::1', '', '2020-06-29 07:31:39', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode</b> dengan value <b>R02</b></li><li><b>nama_bahan</b> dengan value <b>Pelarut</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>-</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>10</b></li><li><b>harga_grosir</b> dengan value <b>30000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>30000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(717, '::1', '', '2020-06-29 07:31:48', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode</b> dengan value <b>R02</b></li><li><b>nama_bahan</b> dengan value <b>Pelarut</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>V</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>10</b></li><li><b>harga_grosir</b> dengan value <b>30000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>30000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(718, '::1', '', '2020-06-29 07:31:54', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode</b> dengan value <b>R02</b></li><li><b>nama_bahan</b> dengan value <b>Pelarut</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>10</b></li><li><b>harga_grosir</b> dengan value <b>30000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>30000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(719, '::1', '', '2020-06-29 07:32:11', 'Mengedit pengajuan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>periode</b> dengan value <b>R03</b></li><li><b>nama_bahan</b> dengan value <b>Tanaman</b></li><li><b>seri</b> dengan value <b>Baru</b></li><li><b>merk</b> dengan value <b>Visa</b></li><li><b>satuan_grosir</b> dengan value <b>10</b></li><li><b>jumlah_grosir</b> dengan value <b>12</b></li><li><b>harga_grosir</b> dengan value <b>20000</b></li><li><b>estimasi_jumlah</b> dengan value <b>12</b></li><li><b>harga_dasar</b> dengan value <b>25000</b></li><li><b>nama_lab</b> dengan value <b>Lab Biologi</b></li><li><b>status</b> dengan value <b>Ajukan</b></li></ul>', '1243140001'),
(720, '::1', '', '2020-06-29 07:36:15', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>periode_pengajuan</b> dengan value <b>R01</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>bulan</b> dengan value <b>Maret</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>tanggal_pendanaan</b> dengan value <b>2020-06-21</b></li><li><b>pajak</b> dengan value <b>3</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', '1243140001'),
(721, '::1', '', '2020-06-29 07:37:31', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>kosong</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(722, '::1', '', '2020-06-29 07:38:22', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>4982160001</b></li><li><b>nama_lengkap</b> dengan value <b>sUSI</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(723, '::1', '', '2020-06-29 07:38:50', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>4982160001</b></li><li><b>nama_lengkap</b> dengan value <b>Susi</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(724, '::1', '', '2020-06-29 07:42:35', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(725, '::1', '', '2020-06-29 07:43:47', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>5863730001</b></li><li><b>nama_lengkap</b> dengan value <b>Sucining</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(726, '::1', '', '2020-06-29 07:44:17', 'Menambah absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>nomor_induk</b> dengan value <b>6121980001</b></li><li><b>nama_lengkap</b> dengan value <b>Deddy</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jabatan</b> dengan value <b>Asisten Laboratorium</b></li></ul>', '1243140001'),
(727, '::1', '', '2020-06-29 07:46:12', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>7871260002</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Basis Data</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(728, '::1', '', '2020-06-29 07:46:28', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>7871260001</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(729, '::1', '', '2020-06-29 07:46:42', 'Mengedit absen dosen dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_pegawai</b> dengan value <b>7871260003</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>0</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>Pemrograman</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '1243140001'),
(730, '::1', '', '2020-06-29 07:51:02', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nomor_induk</b> dengan value <b>6121980001</b></li><li><b>nama_lengkap</b> dengan value <b>Deddy</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>keterangan</b> dengan value <b>Masuk</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>jabatan</b> dengan value <b>Aslab</b></li></ul>', '1243140001'),
(731, '::1', '', '2020-06-29 07:51:22', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nomor_induk</b> dengan value <b>5863730001</b></li><li><b>nama_lengkap</b> dengan value <b>Sucining</b></li><li><b>tanggal</b> dengan value <b>2020-06-29</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>jabatan</b> dengan value <b>Koor Laboratorium</b></li></ul>', '1243140001'),
(732, '::1', '', '2020-06-29 07:51:36', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk</b> dengan value <b>3241670001</b></li><li><b>nama_lengkap</b> dengan value <b>Sasa</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>4</b></li><li><b>jabatan</b> dengan value <b>Kepala Laboratorium</b></li></ul>', '1243140001'),
(733, '::1', '', '2020-06-29 07:51:49', 'Mengedit absen tim lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk</b> dengan value <b>4982160001</b></li><li><b>nama_lengkap</b> dengan value <b>Susi</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>jabatan</b> dengan value <b>Laboran</b></li></ul>', '1243140001'),
(734, '::1', '', '2020-06-29 07:52:38', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(735, '::1', '', '2020-06-29 07:54:08', 'Login  by Dadang', '2356850007'),
(736, '::1', '', '2020-06-29 08:13:08', 'Logout EDLABS by Dadang', '2356850007'),
(737, '::1', '', '2020-06-29 08:13:55', 'Login  by Sasa', '3241670001'),
(738, '::1', '', '2020-06-29 08:15:51', 'Logout EDLABS by Sasa', '3241670001'),
(739, '::1', '', '2020-06-29 08:16:59', 'Login  by Susi', '4982160001'),
(740, '::1', '', '2020-06-29 08:17:16', 'Logout EDLABS by Susi', '4982160001'),
(741, '::1', '', '2020-06-29 08:17:45', 'Login  by Susi', '4982160001'),
(742, '::1', '', '2020-06-29 08:34:07', 'Logout EDLABS by Susi', '4982160001'),
(743, '::1', '', '2020-06-29 08:34:46', 'Login  by Suciningtyas P', '5863730001'),
(744, '::1', '', '2020-06-29 08:36:12', 'Logout EDLABS by Suciningtyas P', '5863730001'),
(745, '::1', '', '2020-06-29 08:36:37', 'Login  by Deddy Sudrajat', '6121980001'),
(746, '::1', '', '2020-06-29 08:38:03', 'Logout EDLABS by Deddy Sudrajat', '6121980001'),
(747, '::1', '', '2020-06-29 08:38:18', 'Login  by Susi', '4982160001'),
(748, '::1', '', '2020-06-29 08:38:28', 'Logout EDLABS by Susi', '4982160001'),
(749, '::1', '', '2020-06-29 08:39:43', 'Login  by Suciningtyas P', '5863730001'),
(750, '::1', '', '2020-06-29 08:49:58', 'Logout EDLABS by Suciningtyas P', '5863730001'),
(751, '::1', '', '2020-06-29 08:50:18', 'Login  by Erika Noor Dianti', '1243140001'),
(752, '::1', '', '2020-06-29 08:58:28', 'Logout EDLABS by Erika Noor Dianti', '1243140001'),
(753, '::1', '', '2020-06-29 09:01:19', 'Login  by Deddy Sudrajat', '6121980001');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(754, '::1', '', '2020-06-29 09:02:11', 'Logout EDLABS by Deddy Sudrajat', '6121980001'),
(755, '::1', '', '2020-06-29 09:02:55', 'Login  by Kevin Hugo', '7871260001'),
(756, '::1', '', '2020-06-29 09:06:05', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690005</b></li><li><b>nama_lengkap</b> dengan value <b>Bilal</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '7871260001'),
(757, '::1', '', '2020-06-29 09:06:11', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690004</b></li><li><b>nama_lengkap</b> dengan value <b>Budi</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '7871260001'),
(758, '::1', '', '2020-06-29 09:06:18', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690003</b></li><li><b>nama_lengkap</b> dengan value <b>Rere</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '7871260001'),
(759, '::1', '', '2020-06-29 09:06:25', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690001</b></li><li><b>nama_lengkap</b> dengan value <b>Diva Kratya</b></li><li><b>tanggal</b> dengan value <b>2020-06-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '7871260001'),
(760, '::1', '', '2020-06-29 09:06:33', 'Mengedit absen mahasiswa dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nomor_induk_mahasiswa</b> dengan value <b>8112690002</b></li><li><b>nama_lengkap</b> dengan value <b>Lala</b></li><li><b>tanggal</b> dengan value <b>2020-09-28</b></li><li><b>jumlah_kehadiran</b> dengan value <b>3</b></li><li><b>prodi</b> dengan value <b>Teknik Informatika</b></li><li><b>mata_kuliah</b> dengan value <b>RPL</b></li><li><b>rombel</b> dengan value <b>7</b></li></ul>', '7871260001'),
(761, '::1', '', '2020-06-29 09:07:29', 'Logout EDLABS by Kevin Hugo', '7871260001'),
(762, '::1', '', '2020-06-29 09:07:50', 'Login  by Diva Kratya', '8112690001'),
(763, '::1', '', '2020-06-29 09:13:59', 'Logout EDLABS by Diva Kratya', '8112690001'),
(764, '::1', '', '2020-06-29 09:14:12', 'Login  by Erika Noor Dianti', '1243140001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(14, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 1, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(11, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 2, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2),
(132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2),
(131, 'kategori_alat', 'Kategori Alat', '-', '+1+2+', 'master/kategori_alat', 1, 4, 2),
(19, 'pengajuan_bahan', 'Pengajuan Bahan', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_bahan', 1, 3, 5),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(5, 'kelola_user', 'Kelola User', '-', '+1+2+', 'Kelola/kelola_user', 1, 1, 4),
(8, 'lokasi_penyimpanan', 'Lokasi Penyimpanan', '-', '+1+4+', 'kelola/lokasi_penyimpanan', 1, 4, 4),
(10, 'absen_mahasiswa', 'Absen Mahasiswa', '-', '+1+2+7+', 'kelola/absen_mahasiswa', 1, 2, 4),
(12, 'inven_alat_bahan', 'Inventaris', '-', '+1+4+', 'master/inven_alat_bahan', 1, 7, 4),
(13, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(15, 'pinjam_alat_bahan', 'Peminjaman Alat', '-', '+1+4+5+6+7+8+', 'peminjaman/pinjam_alat_bahan', 1, 1, 6),
(136, 'satuan', 'Satuan', '', '+1+2+4+', 'master/satuan', 1, 9, 2),
(137, 'jatuh_tempo', 'Jatuh Tempo', '-', '+1+4+5+6+7+8+', 'master/jatuh_tempo', 1, 2, 6),
(160, 'validasi', 'Validasi Absen Mahasiswa', '-', '+1+8+', 'kelola/validasi', 1, 10, 4),
(139, 'periode_pengajuan', 'Periode Pengajuan', 'periode dalam pengajuan', '+1+3+4+5+7+', 'pengajuan/periode_pengajuan', 1, 1, 5),
(140, 'absen_dosen', 'Absen Dosen', '-', '+1+2+7+', 'kelola/absen_dosen', 1, 3, 4),
(141, 'absen_tim_lab', 'Absen Tim Laboratorium', '-', '+1+2+3+4+5+6+', 'kelola/absen_tim_lab', 1, 3, 4),
(18, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_alat', 1, 2, 5),
(143, 'cek_status', 'Cek Status', '-', '+1+4+5+6+7+8+', 'peminjaman/cek_status', 1, 3, 6),
(142, 'kelola_alat', 'Kelola Alat', '-', '+1+4+', 'master/kelola_alat', 1, 6, 4),
(145, 'servis_alat_bahan', 'Inventaris Alat dan Bahan Yang Perlu Diservice', '-', '+1+4+', 'master/servis_alat_bahan', 1, 14, 4),
(154, 'kelola_lab', 'Kelola Laboratorium', '-', '+1+3+4+', 'kelola/kelola_lab', 1, 9, 4),
(24, 'kelola_bahan', 'Kelola Bahan', '-', '+1+4+', 'kelola/kelola_bahan', 1, 6, 4),
(162, 'kategori_bahan', 'Kategori Bahan', '-', '+1+2+', 'master/kategori_bahan', 1, 4, 2),
(163, 'pinjam_bahan', 'Peminjaman Bahan', '-', '+1+4+5+6+7+8+', 'peminjaman/pinjam_bahan', 1, 2, 6),
(164, 'penggantian', 'Penggantian', '-', '+1+4+', 'peminjaman/penggantian', 1, 5, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(4, 'Kelola', 'fa fa-fw fa-tasks'),
(6, 'Peminjaman', 'fa fa-fw fa-pencil'),
(5, 'Pengajuan', 'fa fa-fw fa-envelope');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

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
  `jenis_kelamin` varchar(11) DEFAULT NULL,
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
(1, 'Erika Noor Dianti', '', '1243140001', 'erikanoordianti@gmail.com', 'Perempuan', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, '2020-06-29 09:14:12'),
(2, 'Dadang', 'files/2020/06/a9a6c10dc174b92ca9b40b41194671cb.jpg', '2356850007', 'Dadang@gmail.com', 'Laki-Laki', '*99A48EE3E5C6CF531A99449253112D8D1AF9F1D5', 2, 1, '081233', '2020-06-29 07:54:08'),
(3, 'Sasa', 'files/2020/06/49020755deec6e05d30cccec2a0b2d2b.jpg', '3241670001', 'Kepala Lab', 'Perempuan', '*ABBCE0DC21270E1E75ECB04E678AFED41A07753D', 3, 1, '081234', '2020-06-29 08:13:55'),
(4, 'Susi', 'files/2020/06/9475bcff51f687a821143981c6281da3.jpeg', '4982160001', 'susi@gmail.com', 'Perempuan', '*84ADF8879B84C93C88731516C75DE0CB7CB9A35D', 4, 1, '081231', '2020-06-29 08:38:18'),
(5, 'Suciningtyas P', '', '5863730001', 'suciningtyas@gmail.com', 'Perempuan', '*7956DEFCBCCE7F72E923CDB001D2D099AD066460', 5, 1, '085812562', '2020-06-29 08:39:43'),
(6, 'Deddy Sudrajat', '', '6121980001', 'Deddy@gmail.com', 'Laki-Laki', '*A6FC7D53CD15051B4D30AE2A9343C34663D5BF78', 6, 1, '0876215381263', '2020-06-29 09:01:19'),
(7, 'Kevin Hugo', '', '7871260001', 'kepin@gmail.com', 'Laki-Laki', '*76AE24F68F2829BB483C9CB61A3CBBD66CA40FE0', 7, 1, '086235251732', '2020-06-29 09:02:55'),
(8, 'Diva Kratya', '', '8112690001', 'Divakratya@gmail.com', 'Perempuan', '*27B72806A6C98B72EA854A29BC018848729C7CE6', 8, 1, '085376513613', '2020-06-29 09:07:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jatuh_tempo`
--

CREATE TABLE `jatuh_tempo` (
  `id` int(255) NOT NULL,
  `id_peminjaman` varchar(11) DEFAULT NULL,
  `nama_peminjam` varchar(100) DEFAULT NULL,
  `nomor_induk` int(11) DEFAULT NULL,
  `status_user` varchar(100) DEFAULT NULL,
  `kategori_peminjaman` varchar(100) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` varchar(100) DEFAULT NULL,
  `cetak` varchar(100) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jatuh_tempo`
--

INSERT INTO `jatuh_tempo` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `status_user`, `kategori_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `status_peminjaman`, `cetak`, `status`) VALUES
(7, 'R01238', 'Diva', 2147483647, 'Bebas Tanggungan', 'Tugas', '2020-12-21', '2020-06-29', 'Sedang Dipinjam', NULL, 'Ada'),
(8, 'P01235', 'Diva', 2147483647, 'Bebas Tanggungan', 'Tugas', '2020-06-21', '2020-06-28', 'Sedang Dipinjam', NULL, 'Ada'),
(9, 'P01234', 'Kevinhugo', 2147483647, 'Bebas Tanggungan', 'Tugas', '2020-06-29', '2020-06-29', 'Sedang Dipinjam', NULL, 'Ada'),
(10, 'R01237', 'Kevinhugo', 2147483647, 'Bebas Tanggungan', 'Praktikum Biologi', '2020-06-28', '2020-06-30', 'Sedang Dipinjam', NULL, 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori_alat_bahan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_alat_bahan`, `keterangan`) VALUES
(1, 'kategori1', 'alat'),
(4, 'katgeori 2', 'bahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_absen_dosen`
--

CREATE TABLE `kelola_absen_dosen` (
  `id` int(100) NOT NULL,
  `nomor_induk_pegawai` varchar(11) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah_kehadiran` int(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `rombel` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_absen_dosen`
--

INSERT INTO `kelola_absen_dosen` (`id`, `nomor_induk_pegawai`, `nama_lengkap`, `tanggal`, `keterangan`, `jumlah_kehadiran`, `prodi`, `mata_kuliah`, `rombel`) VALUES
(1, '7871260003', 'Sri Hastatati', '2020-09-28', 'Masuk', 0, 'Teknik Informatika', 'Pemrograman', 7),
(2, '7871260001', 'Kevinhugo', '2020-06-28', 'Masuk', 0, 'Teknik Informatika', 'RPL', 7),
(3, '7871260002', 'Sutaesi', '2020-06-28', 'Masuk', 0, 'Teknik Informatika', 'Basis Data', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_absen_mahasiswa`
--

CREATE TABLE `kelola_absen_mahasiswa` (
  `id` int(11) NOT NULL,
  `nomor_induk_mahasiswa` varchar(100) DEFAULT NULL,
  `nama_lengkap` text,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah_kehadiran` int(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `rombel` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_absen_mahasiswa`
--

INSERT INTO `kelola_absen_mahasiswa` (`id`, `nomor_induk_mahasiswa`, `nama_lengkap`, `tanggal`, `keterangan`, `jumlah_kehadiran`, `prodi`, `mata_kuliah`, `rombel`) VALUES
(1, '8112690002', 'Lala', '2020-09-28', 'Masuk', 3, 'Teknik Informatika', 'RPL', 7),
(2, '8112690001', 'Diva Kratya', '2020-06-28', 'Masuk', 3, 'Teknik Informatika', 'RPL', 7),
(3, '8112690003', 'Rere', '2020-06-28', 'Masuk', 3, 'Teknik Informatika', 'RPL', 7),
(4, '8112690004', 'Budi', '2020-06-28', 'Masuk', 3, 'Teknik Informatika', 'RPL', 7),
(5, '8112690005', 'Bilal', '2020-06-28', 'Masuk', 3, 'Teknik Informatika', 'RPL', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_absen_tim_lab`
--

CREATE TABLE `kelola_absen_tim_lab` (
  `id` int(11) NOT NULL,
  `nomor_induk` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah_kehadiran` int(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_absen_tim_lab`
--

INSERT INTO `kelola_absen_tim_lab` (`id`, `nomor_induk`, `nama_lengkap`, `tanggal`, `keterangan`, `jumlah_kehadiran`, `jabatan`) VALUES
(2, '4982160001', 'Susi', '2020-06-28', 'Masuk', 3, 'Laboran'),
(3, '3241670001', 'Sasa', '2020-06-28', 'Masuk', 4, 'Kepala Laboratorium'),
(4, '5863730001', 'Sucining', '2020-06-29', 'Masuk', 4, 'Koor Laboratorium'),
(5, '6121980001', 'Deddy', '2020-06-29', 'Masuk', 3, 'Aslab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(255) NOT NULL,
  `nama_alat` varchar(100) DEFAULT NULL,
  `satuan_alat` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `stok` int(100) DEFAULT NULL,
  `stok_minimal` int(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `pendanaan` varchar(100) DEFAULT NULL,
  `harga` int(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `nama_alat`, `satuan_alat`, `kategori`, `stok`, `stok_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`) VALUES
(1, '2', '', '3', 5, 2, '3', '1', 2000, 'baryu'),
(4, '1', '2', '2', 4, 2, '2', '1', 2000, 'baru'),
(5, '3', '3', '1', 6, 2, '3', '1', 3000, 'Bagus'),
(6, '1', '3', '5', 2, 1, '3', '1', 5000, 'Bagus'),
(7, '1', '1', '3', 12, 6, '5', '2', 50000, 'Bagus'),
(8, '2', '1', '4', 20, 10, '3', '3', 5000, 'Bagus');

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
(4, '5', '3', '1', 'LX', '102', 4, '3', 'Baik', 'Ada'),
(5, '5', '6', '2', 'Visa', '1', 2, '5', 'Bagus', 'Ada'),
(6, '4', '6', '3', 'Visa', '2', 8, '3', 'Bagus', 'Ada'),
(7, '1', '6', '3', 'Visa', '1', 4, '3', 'Bagus', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_lab`
--

CREATE TABLE `kelola_lab` (
  `id` int(255) NOT NULL,
  `nama_lab` varchar(255) NOT NULL,
  `alamat_lab` text NOT NULL,
  `tipe_lab` varchar(255) NOT NULL,
  `kor_lab` varchar(255) NOT NULL,
  `laboran` varchar(255) NOT NULL,
  `foto_lab` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_lab`
--

INSERT INTO `kelola_lab` (`id`, `nama_lab`, `alamat_lab`, `tipe_lab`, `kor_lab`, `laboran`, `foto_lab`, `status`) VALUES
(2, 'Fis1', 'Sekaran', 'Fisika', 'Tito', 'Rita', 'files/2020/01/fisika.jpg', 'Layak'),
(3457, 'Lab Kom1', 'Sekaran', 'Komputer', 'Suci', 'Susi', 'files/2020/01/labilkom.jpg', 'Layak'),
(3458, 'Kimia1', 'Sekaran', 'Kimia', 'Sisi', 'Rendi', 'files/2020/01/lab.jpg', 'Layak'),
(3459, 'Biologi1', 'Sekaran', 'Biologi', 'Hendra', 'Heni', 'files/2020/01/bio.jpg', 'Layak');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_penyimpanan`
--

CREATE TABLE `kelola_penyimpanan` (
  `id` int(10) NOT NULL,
  `Nama_penyimpanan` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_penyimpanan`
--

INSERT INTO `kelola_penyimpanan` (`id`, `Nama_penyimpanan`, `status`) VALUES
(3, 'laci', 'penuh'),
(4, 'rak5', 'tersedia'),
(5, 'Almari', 'penuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_seri_alat`
--

CREATE TABLE `kelola_seri_alat` (
  `id` int(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `seri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `sop_pengoperasian` varchar(255) NOT NULL,
  `sop_pemeliharaan` varchar(255) NOT NULL,
  `sop_pemeriksaan` varchar(255) NOT NULL,
  `sop_kalibrasi` varchar(255) NOT NULL,
  `sop_uji_fungsi` varchar(255) NOT NULL,
  `stok` int(255) NOT NULL,
  `stok_minimal` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_seri_alat`
--

INSERT INTO `kelola_seri_alat` (`id`, `kategori`, `merk`, `seri`, `gambar`, `sop_pengoperasian`, `sop_pemeliharaan`, `sop_pemeriksaan`, `sop_kalibrasi`, `sop_uji_fungsi`, `stok`, `stok_minimal`, `status`) VALUES
(3456, 'Pemotong', 'Visa', 'P12', 'files/2020/01/gunting.jpg', 'ada.doc', 'ada.doc', 'ada.doc', 'ada.doc', 'ada.doc', 8, 6, 'Ada');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_penyimpanan`
--

CREATE TABLE `lokasi_penyimpanan` (
  `id` int(11) NOT NULL,
  `nama_lokasi_penyimpanan` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi_penyimpanan`
--

INSERT INTO `lokasi_penyimpanan` (`id`, `nama_lokasi_penyimpanan`, `status`) VALUES
(2, 'Lab Ilkom', 'Ada'),
(3, 'Lab Kimia', 'Ada'),
(4, 'Lab Fisika', 'Ada'),
(5, 'Lab Biologi', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_bagian`
--

CREATE TABLE `master_bagian` (
  `id` int(11) NOT NULL,
  `bagian` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_bagian`
--

INSERT INTO `master_bagian` (`id`, `bagian`) VALUES
(0, 'NonAktif'),
(1, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `nama_satuan`, `status`) VALUES
(1, 'B01', 'Cairan', 'Asam Nitrat', 'Liter', 'Stok Menipis'),
(4, 'B02', 'Cairan', 'Asam Sulfat', 'Liter', 'Stok Menipis'),
(5, 'B03', 'Cairan', 'Alkolhol', 'Liter', 'Stok Menipis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_inven`
--

CREATE TABLE `master_inven` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `alat_bahan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_inven`
--

INSERT INTO `master_inven` (`id`, `kode`, `alat_bahan`, `tanggal`, `keterangan`) VALUES
(1, 'MK02', 'Pipet', '2020-06-27', 'Ada dan Kondisi Baik'),
(2, 'MK03', 'Mikroskop', '2020-09-16', 'Ada dan Kondisi Baik'),
(3, 'MK01', 'Gunting', '2020-06-28', 'Ada dan Kondisi Baik'),
(4, 'MK04', 'Alkohol', '2020-06-28', 'Ada dan Kondisi Baik'),
(5, 'MK05', 'Asam Sulfat', '2020-06-28', 'Ada dan Kondisi Baik'),
(6, 'MK06', 'Asam Nitrat', '2020-06-28', 'Ada dan Kondisi Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_alat`
--

CREATE TABLE `master_kategori_alat` (
  `id` int(10) NOT NULL,
  `Kategori` varchar(30) NOT NULL,
  `nama_alat` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori_alat`
--

INSERT INTO `master_kategori_alat` (`id`, `Kategori`, `nama_alat`, `status`) VALUES
(1, 'Pemotong', 'Gunting', 'Ada'),
(3, 'Praktikum Virus', 'Mikroskop', 'Ada'),
(4, 'Praktikum Molekul', 'Pipet', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_bahan`
--

CREATE TABLE `master_kategori_bahan` (
  `id` int(11) NOT NULL,
  `Kategori` varchar(255) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori_bahan`
--

INSERT INTO `master_kategori_bahan` (`id`, `Kategori`, `nama_bahan`, `status`) VALUES
(1, 'Cairan', 'Asam Nitrat', 'Ada'),
(2, 'Cairan', 'Asam Sulfat', 'Ada'),
(3, 'Cairan', 'Alkohol', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Kepala Lab'),
(4, 'Laboran'),
(5, 'Koordinator Lab'),
(6, 'Asisten'),
(7, 'Dosen'),
(8, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `kode`, `nama_alat`, `keterangan`) VALUES
(1, 'A03', 'Mikroskop', 'Ada'),
(2, 'A02', 'Pipet', 'Ada'),
(3, 'A01', 'Gunting', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_no_induk`
--

CREATE TABLE `master_no_induk` (
  `id` int(11) NOT NULL,
  `kategori_no_induk` varchar(100) NOT NULL,
  `no_induk` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_no_induk`
--

INSERT INTO `master_no_induk` (`id`, `kategori_no_induk`, `no_induk`, `nama`, `keterangan`) VALUES
(1, 'Mahasiswa', '8112690001', 'Diva Kratya', 'Aktif'),
(2, 'Dosen', '7871260001', 'Kevinhugo', 'Aktif'),
(3, 'Aslab', '6121980001', 'Deddy', 'Aktif'),
(4, 'Koor Laboratorium', '5863730001', 'Sucining', 'Aktif'),
(5, 'Laboran', '4982160001', 'Susi', 'Aktif'),
(6, 'Kepala Laboratorium', '3241670001', 'Sasa', 'Aktif'),
(7, 'Super Admin', '1243140001', 'Erika', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(250) NOT NULL,
  `Kode` varchar(8) DEFAULT NULL,
  `Nama` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `Kode`, `Nama`) VALUES
(1, 'A02', 'Centimeter'),
(2, 'B01', 'Gram'),
(3, 'A01', 'Meter'),
(4, 'B02', 'Liter'),
(5, 'A03', 'Gram'),
(6, 'B03', 'Liter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_servis`
--

CREATE TABLE `master_servis` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `alat_bahan` varchar(255) NOT NULL,
  `tgl_servis` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_servis`
--

INSERT INTO `master_servis` (`id`, `kode`, `alat_bahan`, `tgl_servis`, `tgl_selesai`, `status`, `keterangan`) VALUES
(1, 'MK02', 'Pipet', '2020-06-27', '2020-06-30', 'Belum Diservice', 'Kerusakan Ringan'),
(2, 'MK03', 'Mikroskop', '2020-06-20', '2020-06-27', 'Sudah Diservice', 'Kerusakan Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_status`
--

CREATE TABLE `master_status` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_status`
--

INSERT INTO `master_status` (`id`, `status`) VALUES
(1, 'Aktif'),
(2, 'Non Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_sumber_pendanaan`
--

CREATE TABLE `master_sumber_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(255) NOT NULL,
  `sejumlah` int(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_sumber_pendanaan`
--

INSERT INTO `master_sumber_pendanaan` (`id`, `sumber_pendanaan`, `sejumlah`, `keterangan`) VALUES
(1, 'Fakultas', 2000000, 'Sudah Masuk'),
(2, 'Universitas', 3000000, 'Sudah Masuk'),
(3, 'Jurusan', 1000000, 'Belum Masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tipe_lab`
--

CREATE TABLE `master_tipe_lab` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `tipe_lab` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_tipe_lab`
--

INSERT INTO `master_tipe_lab` (`id`, `kode`, `tipe_lab`, `keterangan`) VALUES
(1, 'K1', 'Komputer', 'Lab Kom 1'),
(2, 'F1', 'FISIKA', 'Fis 1'),
(3, 'M1', 'Kimia', 'Kimia 1'),
(4, 'B1', 'Biologi', 'Biologi 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_alat`
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
-- Dumping data untuk tabel `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `pengajuan_alat`, `no_induk`, `nama_alat`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`, `harga_dasar`, `nama_lab`, `status`) VALUES
(2, 'P02', '7871260001', 'Pipet', 'V12', 'Visa', 'Pcs', '12', '5000', '24', '6000', 'Kimia1', 'Ajukan'),
(3, 'P01', '6121980001', 'Mikroskop', 'V11', 'Visa', 'Pcs', '12', '50000', '12', '60000', 'Biologi1', 'Ajukan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(11) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `nama_bahan` varchar(15) NOT NULL,
  `seri` varchar(10) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `satuan_grosir` int(10) NOT NULL,
  `jumlah_grosir` int(5) NOT NULL,
  `harga_grosir` int(10) NOT NULL,
  `estimasi_jumlah` int(10) NOT NULL,
  `harga_dasar` int(10) NOT NULL,
  `nama_lab` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `periode`, `nama_bahan`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`, `harga_dasar`, `nama_lab`, `status`) VALUES
(3, 'R03', 'Tanaman', 'Baru', 'Visa', 10, 12, 20000, 12, 25000, 'Lab Biologi', 'Ajukan'),
(4, 'R02', 'Pelarut', 'Baru', 'Visa', 10, 10, 30000, 12, 30000, 'Lab Biologi', 'Ajukan'),
(5, 'R01', 'Larutan Asam', 'Baru', 'Visa', 15, 15, 10000, 15, 10000, 'Lab Biologi', 'Ajukan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggantian`
--

CREATE TABLE `penggantian` (
  `id` int(255) NOT NULL,
  `id_peminjaman` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor_induk` int(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merk_barang` varchar(255) NOT NULL,
  `seri_barang` varchar(255) NOT NULL,
  `sistem_penggantian` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penggantian`
--

INSERT INTO `penggantian` (`id`, `id_peminjaman`, `nama`, `nomor_induk`, `jenis`, `nama_barang`, `merk_barang`, `seri_barang`, `sistem_penggantian`, `status`) VALUES
(3, 'P01234', 'Kevinhugo', 2147483647, 'Alat', 'Pipet', 'Viva', 'v21', 'Belum Diganti', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` int(11) NOT NULL,
  `periode_pengajuan` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `sumber_pendanaan` varchar(20) NOT NULL,
  `tanggal_pendanaan` date NOT NULL,
  `pajak` int(10) NOT NULL,
  `status_pengajuan` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `periode_pengajuan`, `semester`, `bulan`, `tahun`, `sumber_pendanaan`, `tanggal_pendanaan`, `pajak`, `status_pengajuan`, `status`) VALUES
(1, 'P03', 'Ganjil', 'Februari', 2020, 'Universitas', '2020-06-14', 1, 'Sudah Disetujui', 'Ada'),
(2, 'R01', 'Genap', 'Maret', 2020, 'Fakultas', '2020-06-21', 3, 'Sudah Disetujui', 'Ada'),
(4, 'P01', 'Antara', 'Desember', 2020, 'Jurusan', '2020-06-28', 2, 'Sudah Disetujui', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam_alat_bahan`
--

CREATE TABLE `pinjam_alat_bahan` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(100) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `nomor_induk` varchar(100) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `pinjam_alat_bahan` varchar(100) DEFAULT NULL,
  `kategori_pinjam` varchar(100) DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `keperluan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam_alat_bahan`
--

INSERT INTO `pinjam_alat_bahan` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `kode`, `pinjam_alat_bahan`, `kategori_pinjam`, `jumlah`, `tanggal`, `tgl_kembali`, `keperluan`) VALUES
(1, '234254', 'sfsdfs', '24242', '234234', 'wef', 'Alat', 1, '2020-01-01', '2020-01-02', 'sdfv'),
(2, '24234', 'fdbfd', '21344', '234', 'fsv', 'Alat', 2, '0000-00-00', '0000-00-00', 'wefve'),
(3, '656767', 'afsdf', '12421', '1', '14', 'Alat', 2, '2020-01-01', '2020-01-03', 'fewfwe'),
(9, 'P01235', 'Kevinhugo', '7871260001', '3', '5', 'Tugas', 2, '2020-06-29', '2020-06-30', 'praktikum biologi'),
(10, 'P01234', 'Diva', '8112690001', '3', '5', 'Tugas', 2, '2020-06-21', '2020-06-28', 'praktikum biologi'),
(11, 'P01234', 'Diva', '8112690001', '3', '3', 'Tugas', 2, '2020-06-29', '2020-06-30', 'praktikum biologi'),
(12, 'P01235', 'Kevinhugo', '7871260001', '5', '2', 'Tugas', 1, '2020-06-21', '2020-06-28', 'praktikum biologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam_bahan`
--

CREATE TABLE `pinjam_bahan` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(20) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `nomor_induk` varchar(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `pinjam_bahan` varchar(20) NOT NULL,
  `kategori_pinjam` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `keperluan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam_bahan`
--

INSERT INTO `pinjam_bahan` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `kode`, `pinjam_bahan`, `kategori_pinjam`, `jumlah`, `tanggal`, `tgl_kembali`, `keperluan`) VALUES
(2, 'R01237', 'Kevinhugo', '7871260001', 4, '5', 'Tugas', 2, '2020-06-28', '2020-06-30', 'praktikum biologi'),
(3, 'R01238', 'Diva', '8112690001', 6, '1', 'Tugas', 1, '2020-06-21', '2020-06-29', 'praktikum Kimia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(3, 'penuh'),
(4, 'belum penuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_penggantian`
--

CREATE TABLE `status_penggantian` (
  `id` int(11) NOT NULL,
  `status_penggantian` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_penggantian`
--

INSERT INTO `status_penggantian` (`id`, `status_penggantian`) VALUES
(1, 'sudah diganti'),
(2, 'belum diganti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `validasi`
--

CREATE TABLE `validasi` (
  `id` int(11) NOT NULL,
  `nomor_induk_mahasiswa` varchar(20) NOT NULL,
  `nama_lengkap` text NOT NULL,
  `tanggal` date NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `mata_kuliah` varchar(20) NOT NULL,
  `rombel` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `validasi`
--

INSERT INTO `validasi` (`id`, `nomor_induk_mahasiswa`, `nama_lengkap`, `tanggal`, `prodi`, `mata_kuliah`, `rombel`, `keterangan`, `status`) VALUES
(1, '8112690001', 'Diva Kratya', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Ijin', '0'),
(2, '8112690002', 'Lala', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Masuk', '0'),
(3, '8112690003', 'Rere', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Tidak Masuk', '0'),
(4, '8112690004', 'Budi', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Ijin', '0'),
(6, '8112690005', 'Bilal', '2000-06-26', 'Teknik Informatika', 'RPL', '7', 'Masuk', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cek_status`
--
ALTER TABLE `cek_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indeks untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indeks untuk tabel `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_absen_dosen`
--
ALTER TABLE `kelola_absen_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_absen_mahasiswa`
--
ALTER TABLE `kelola_absen_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_absen_tim_lab`
--
ALTER TABLE `kelola_absen_tim_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_bahan` (`nama_bahan`);

--
-- Indeks untuk tabel `kelola_lab`
--
ALTER TABLE `kelola_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_seri_alat`
--
ALTER TABLE `kelola_seri_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_user`
--
ALTER TABLE `kelola_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_penyimpanan`
--
ALTER TABLE `lokasi_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_bagian`
--
ALTER TABLE `master_bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_inven`
--
ALTER TABLE `master_inven`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kategori_alat`
--
ALTER TABLE `master_kategori_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kategori_bahan`
--
ALTER TABLE `master_kategori_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_no_induk`
--
ALTER TABLE `master_no_induk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `master_servis`
--
ALTER TABLE `master_servis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penggantian`
--
ALTER TABLE `penggantian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam_alat_bahan`
--
ALTER TABLE `pinjam_alat_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam_bahan`
--
ALTER TABLE `pinjam_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_penggantian`
--
ALTER TABLE `status_penggantian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cek_status`
--
ALTER TABLE `cek_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3514;

--
-- AUTO_INCREMENT untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kelola_absen_dosen`
--
ALTER TABLE `kelola_absen_dosen`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelola_absen_mahasiswa`
--
ALTER TABLE `kelola_absen_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelola_absen_tim_lab`
--
ALTER TABLE `kelola_absen_tim_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kelola_lab`
--
ALTER TABLE `kelola_lab`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3460;

--
-- AUTO_INCREMENT untuk tabel `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelola_seri_alat`
--
ALTER TABLE `kelola_seri_alat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3457;

--
-- AUTO_INCREMENT untuk tabel `kelola_user`
--
ALTER TABLE `kelola_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasi_penyimpanan`
--
ALTER TABLE `lokasi_penyimpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_bagian`
--
ALTER TABLE `master_bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_inven`
--
ALTER TABLE `master_inven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_kategori_alat`
--
ALTER TABLE `master_kategori_alat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_kategori_bahan`
--
ALTER TABLE `master_kategori_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_no_induk`
--
ALTER TABLE `master_no_induk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_servis`
--
ALTER TABLE `master_servis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_status`
--
ALTER TABLE `master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penggantian`
--
ALTER TABLE `penggantian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pinjam_alat_bahan`
--
ALTER TABLE `pinjam_alat_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pinjam_bahan`
--
ALTER TABLE `pinjam_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `status_penggantian`
--
ALTER TABLE `status_penggantian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `validasi`
--
ALTER TABLE `validasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
