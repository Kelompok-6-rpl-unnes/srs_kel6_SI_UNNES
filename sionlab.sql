--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3246, 1591841845, '::1', '608519'),
(3244, 1591841607, '::1', '488933'),
(3243, 1591841584, '::1', '088518'),
(3245, 1591841783, '::1', '073224'),
(3247, 1591842110, '::1', '171867'),
(3248, 1591842189, '::1', '715739'),
(3249, 1591842214, '::1', '226850'),
(3250, 1591842281, '::1', '103439'),
(3251, 1591842531, '::1', '798204');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
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
-- Dumping data for table `cms_log`
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
(15, '::1', '', '2020-05-13 00:21:38', 'Login  by Kholiq', 'kholiq'),
(16, '::1', '', '2020-05-14 12:12:52', 'Login  by Kholiq', 'kholiq'),
(17, '::1', '', '2020-05-14 16:03:44', 'Logout SIONLAB by Kholiq', 'kholiq'),
(18, '::1', '', '2020-05-14 21:09:22', 'Login  by Kholiq', 'kholiq'),
(19, '::1', '', '2020-05-14 23:37:34', 'Logout SIONLAB by Kholiq', 'kholiq'),
(20, '::1', '', '2020-05-15 08:56:49', 'Login  by Kholiq', 'kholiq'),
(21, '::1', '', '2020-05-15 09:29:29', 'Login  by Kholiq', 'kholiq'),
(22, '::1', '', '2020-05-15 09:37:59', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>no_induk</b> dengan value <b>123</b></li><li><b>nama</b> dengan value <b>hai</b></li><li><b>keterangan</b> dengan value <b>yoi</b></li></ul>', 'kholiq'),
(23, '::1', '', '2020-05-15 09:41:27', 'Logout SIONLAB by Kholiq', 'kholiq'),
(24, '::1', '', '2020-05-15 10:02:37', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>no_induk</b> dengan value <b>123</b></li><li><b>nama</b> dengan value <b>hai</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(25, '::1', '', '2020-05-15 11:03:51', 'Logout SIONLAB by Kholiq', 'kholiq'),
(26, '::1', '', '2020-05-21 12:13:08', 'Login  by Kholiq', 'kholiq'),
(27, '::1', '', '2020-05-21 12:22:06', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>D01</b></li><li><b>nama_alat</b> dengan value <b>Teleskop</b></li><li><b>keterangan</b> dengan value <b>Besar</b></li></ul>', 'kholiq'),
(28, '::1', '', '2020-05-21 12:23:31', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>D02</b></li><li><b>nama_alat</b> dengan value <b>Teleskop</b></li><li><b>keterangan</b> dengan value <b>Kecil</b></li></ul>', 'kholiq'),
(29, '::1', '', '2020-05-21 12:24:27', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>D01</b></li><li><b>nama_alat</b> dengan value <b>Penggaris</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(30, '::1', '', '2020-05-21 12:36:18', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MB01</b></li><li><b>nama_alat</b> dengan value <b>Teleskop</b></li><li><b>keterangan</b> dengan value <b>Besar</b></li></ul>', 'kholiq'),
(31, '::1', '', '2020-05-21 18:58:41', 'Login  by Kholiq', 'kholiq'),
(32, '::1', '', '2020-05-21 19:03:31', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(33, '::1', '', '2020-05-21 19:07:43', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>jenis_bahan</b> dengan value <b>Pengawet</b></li><li><b>nama_bahan</b> dengan value <b>Boraks</b></li><li><b>tahun</b> dengan value <b>2017</b></li></ul>', 'kholiq'),
(34, '::1', '', '2020-05-21 20:30:29', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>A01</b></li><li><b>jenis_bahan</b> dengan value <b>Asetosal</b></li><li><b>nama_bahan</b> dengan value <b>Zat aktif obat</b></li><li><b>tahun</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(35, '::1', '', '2020-05-21 20:31:07', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>A02</b></li><li><b>jenis_bahan</b> dengan value <b>talkum</b></li><li><b>nama_bahan</b> dengan value <b>zat tambahan</b></li><li><b>tahun</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(36, '::1', '', '2020-05-21 20:31:46', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>A03</b></li><li><b>jenis_bahan</b> dengan value <b>asam sulfat</b></li><li><b>nama_bahan</b> dengan value <b>bahan kimia</b></li><li><b>tahun</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(37, '::1', '', '2020-05-21 20:33:12', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>A04</b></li><li><b>jenis_bahan</b> dengan value <b>alat praktikum</b></li><li><b>nama_bahan</b> dengan value <b>gelas ukur</b></li><li><b>tahun</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(38, '::1', '', '2020-05-21 20:33:31', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>7</b></li><li><b>kode</b> dengan value <b>A04</b></li><li><b>jenis_bahan</b> dengan value <b>alat praktikum</b></li><li><b>nama_bahan</b> dengan value <b>gelas ukur</b></li><li><b>tahun</b> dengan value <b>0</b></li></ul>', 'kholiq'),
(39, '::1', '', '2020-05-21 20:34:09', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>A01</b></li><li><b>jenis_bahan</b> dengan value <b>zat obat aktif</b></li><li><b>nama_bahan</b> dengan value <b>asetosal</b></li><li><b>tahun</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(40, '::1', '', '2020-05-21 20:34:34', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>A02</b></li><li><b>jenis_bahan</b> dengan value <b>zat tambahan</b></li><li><b>nama_bahan</b> dengan value <b>talkum</b></li><li><b>tahun</b> dengan value <b>0</b></li></ul>', 'kholiq'),
(41, '::1', '', '2020-05-21 20:35:01', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>kode</b> dengan value <b>A03</b></li><li><b>jenis_bahan</b> dengan value <b>bahan kimia</b></li><li><b>nama_bahan</b> dengan value <b>asam sulfat</b></li><li><b>tahun</b> dengan value <b>0</b></li></ul>', 'kholiq'),
(42, '::1', '', '2020-05-21 21:19:54', 'Logout SIONLAB by Kholiq', 'kholiq'),
(43, '::1', '', '2020-05-27 21:49:45', 'Login  by Kholiq', 'kholiq'),
(44, '::1', '', '2020-05-27 22:51:41', 'Mengedit Kelola user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>NoInduk</b> dengan value <b>23456</b></li><li><b>Username</b> dengan value <b>Aldi</b></li><li><b>Nama</b> dengan value <b>Aldi Siregar</b></li><li><b>JenisKelamin</b> dengan value <b>Laki-Laki</b></li><li><b>Foto</b> dengan value <b>fotoaldiganteng.jpg</b></li><li><b>Email</b> dengan value <b>aldi@gmail.com</b></li><li><b>NoTelp</b> dengan value <b>1254367257</b></li><li><b>Level</b> dengan value <b>Aslab</b></li><li><b>Status</b> dengan value <b>Tidak</b></li></ul>', 'kholiq'),
(45, '::1', '', '2020-05-27 22:52:00', 'Mengedit Kelola user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>NoInduk</b> dengan value <b>12345</b></li><li><b>Username</b> dengan value <b>Dafa</b></li><li><b>Nama</b> dengan value <b>Dafa Najma</b></li><li><b>JenisKelamin</b> dengan value <b>Perempuan</b></li><li><b>Foto</b> dengan value <b>fotopalingcakep.jpg</b></li><li><b>Email</b> dengan value <b>dafa@gmail.com</b></li><li><b>NoTelp</b> dengan value <b>1234566215</b></li><li><b>Level</b> dengan value <b>Admin</b></li><li><b>Status</b> dengan value <b>Aktif</b></li></ul>', 'kholiq'),
(46, '::1', '', '2020-05-28 14:11:09', 'Login  by Kholiq', 'kholiq'),
(47, '::1', '', '2020-05-28 14:21:03', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Gudang Garam</b></li><li><b>keterangan</b> dengan value <b>Rp. 100.000.000</b></li></ul>', 'kholiq'),
(48, '::1', '', '2020-05-28 21:30:49', 'Logout EDLABS by ', 'Tamu'),
(49, '::1', '', '2020-05-28 21:31:04', 'Login  by Kholiq', 'kholiq'),
(50, '127.0.0.1', '', '2020-05-29 08:08:36', 'Login  by Kholiq', 'kholiq'),
(51, '127.0.0.1', '', '2020-06-04 09:06:27', 'Login  by Kholiq', 'kholiq'),
(52, '127.0.0.1', '', '2020-06-04 09:09:32', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>keterangan</b> dengan value <b>Rp. 100.000.000</b></li></ul>', 'kholiq'),
(53, '127.0.0.1', '', '2020-06-04 12:03:34', 'Mengedit pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>pengajuan_alat</b> dengan value <b>P12345</b></li><li><b>no_induk</b> dengan value <b>654321</b></li><li><b>nama_alat</b> dengan value <b>Infrared Ear Thermometer</b></li><li><b>seri</b> dengan value <b>OneMed</b></li><li><b>merk</b> dengan value <b>ThermoOne</b></li><li><b>jumlah_grosir</b> dengan value <b>100</b></li><li><b>harga_grosir</b> dengan value <b>Rp. 200.000</b></li><li><b>estimasi_jumlah</b> dengan value <b>5</b></li><li><b>harga_dasar</b> dengan value <b>RP 400.000</b></li><li><b>nama_lab</b> dengan value <b>Laboratorium kimia</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(54, '127.0.0.1', '', '2020-06-04 19:33:34', 'Login  by Kholiq', 'kholiq'),
(55, '127.0.0.1', '', '2020-06-04 19:33:54', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>keterangan</b> dengan value <b>Rp. 100.000.000</b></li></ul>', 'kholiq'),
(56, '127.0.0.1', '', '2020-06-04 19:35:40', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>06</b></li><li><b>tipe_lab</b> dengan value <b>FISIKA</b></li><li><b>keterangan</b> dengan value <b>Fis 1</b></li></ul>', 'kholiq'),
(57, '127.0.0.1', '', '2020-06-04 19:40:08', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Dekanat</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(58, '127.0.0.1', '', '2020-06-04 19:42:44', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>66</b></li><li><b>tipe_lab</b> dengan value <b>Komputer</b></li><li><b>keterangan</b> dengan value <b>Lam Kom 2</b></li></ul>', 'kholiq'),
(59, '127.0.0.1', '', '2020-06-04 19:42:57', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Dekanat</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(60, '127.0.0.1', '', '2020-06-04 19:44:45', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(61, '127.0.0.1', '', '2020-06-04 19:44:56', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(62, '127.0.0.1', '', '2020-06-04 19:46:20', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(63, '127.0.0.1', '', '2020-06-04 19:46:42', 'Menambah Master tipe_lab dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>22</b></li><li><b>tipe_lab</b> dengan value <b>FISIKA</b></li><li><b>keterangan</b> dengan value <b>Fis 1</b></li></ul>', 'kholiq'),
(64, '127.0.0.1', '', '2020-06-04 19:48:53', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Dekanat</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(65, '127.0.0.1', '', '2020-06-04 19:52:35', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>keterangan</b> dengan value <b>Rp 20.000.000</b></li></ul>', 'kholiq'),
(66, '127.0.0.1', '', '2020-06-04 19:57:36', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>101</b></li><li><b>sumber_pendanaan</b> dengan value <b>Dekanat</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(67, '::1', '', '2020-06-05 06:39:56', 'Login  by Kholiq', 'kholiq'),
(68, '::1', '', '2020-06-05 06:59:13', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>8016</b></li><li><b>provinsi</b> dengan value <b>Jawa Tengah</b></li><li><b>email</b> dengan value <b>humas@mail.unnes.ac.id</b></li><li><b>website</b> dengan value <b>https://unnes.ac.id</b></li><li><b>telepon</b> dengan value <b>(024) 8508093</b></li><li><b>kementerian</b> dengan value <b>Kementrian Pendidikan dan Kebudayaan</b></li><li><b>tahun_ajaran</b> dengan value <b>2019-2020</b></li><li><b>nama_fakultas</b> dengan value <b>Fakultas Matematika dan Ilmu Pengetahuan Alam</b></li><li><b>nama_dekan</b> dengan value <b>Dr Sugianto M.Si.</b></li><li><b>alamat_fakultas</b> dengan value <b>Sekaran, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50229</b></li><li><b>telepon_fakultas</b> dengan value <b>(024) 8508112</b></li><li><b>nama_jurusan</b> dengan value <b>Ilmu Komputer</b></li><li><b>nama_kajur</b> dengan value <b>Alamsyah S.Si.,M.Kom.</b></li><li><b>nama_kalab</b> dengan value <b>Much Aziz Muslim S.Kom., M.Kom.</b></li><li><b>telepon_jurusan</b> dengan value <b>(024) 8508028</b></li><li><b>alamat_jurusan</b> dengan value <b>Sekaran, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50229</b></li><li><b>deskripsi_jurusan</b> dengan value <b>-</b></li><li><b>peta_jurusan</b> dengan value <b>-</b></li><li><b>zona_waktu</b> dengan value <b>WIB</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-06-05 07:13:08', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>103</b></li><li><b>sumber_pendanaan</b> dengan value <b>Univ</b></li><li><b>keterangan</b> dengan value <b>Rp 10.000.000</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-06-11 09:13:28', 'Login  by Kholiq', 'kholiq'),
(71, '::1', '', '2020-06-11 09:16:21', 'Logout EDLABS by Kholiq', 'kholiq'),
(72, '::1', '', '2020-06-11 09:28:51', 'Login  by Kholiq', 'kholiq');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu`
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
-- Dumping data for table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(14, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+2+3+', 'master/sumber_pendanaan', 1, 1, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(11, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 2, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2),
(129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(5, 'user', 'user', '-', '+1+2+', 'Kelola/user', 1, 1, 4),
(8, 'lokasi_penyimpanan', 'Lokasi Penyimpanan', '-', '+1+4+', 'kelola/lokasi_penyimpanan', 1, 4, 4),
(10, 'absen', 'absen', '-', '+1+2+3+4+5+6+7+8+', 'kelola/absen', 1, 2, 4),
(12, 'master_inven', 'Inventaris', '-', '+1+2+4+', 'master/inven', 1, 7, 4),
(13, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(16, 'periode_pengajuan', 'Periode Pengajuan', '-', '+1+3+', 'pengajuan/periode_pengajuan', 1, 1, 5),
(17, 'satuan', 'Satuan', '-', '+1+2+', 'master/satuan', 1, 8, 2),
(18, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+', 'pengajuan/pengajuan_alat', 1, 2, 5),
(22, 'absen_tim_lab', 'Absen Tim Laboratorium', '-', '+1+2+3+4+5+6+7+8+', 'kelola/absen_tim_lab', 1, 3, 4),
(19, 'jatuh_tempo', 'Jatuh Tempo', '-', '+1+4+5+6+7+8+', 'master/jatuh_tempo', 1, 10, 2),
(141, 'cek_status', 'Cek Status', '-', '+1+4+5+6+7+8+', 'peminjaman/cek_status', 1, 3, 6),
(138, 'pinjam_alat_bahan', 'Peminjaman Alat dan Bahan', 'membuat peminjaman alat / bahan', '+1+2+3+4+5+6', 'peminjaman/pinjam_alat_bahan', 1, 4, 6),
(20, 'absen_mahasiswa', 'Absen Mahasiswa', '-', '+1+2+3+4+5+6+7+8+', 'kelola/absen_mahasiswa', 1, 2, 4),
(21, 'absen_dosen', 'Absen Dosen', '-', '+1+2+3+4+5+6+7+8+', 'kelola/absen_dosen', 1, 3, 4),
(24, 'kelola_alat', 'Kelola Alat', '-', '+1+2+3+4+5+6+7+8+', 'kelola/kelola_alat', 1, 6, 4),
(140, 'inven_alat_bahan', 'Inventaris Alat dan Bahan', 'Menambah Inventaris alat atau bahan', '+1+2+3+4+5+6+', 'master/inven_alat_bahan', 1, 13, 2),
(25, 'pengajuan_bahan', 'Pengajuan Bahan', '-', '+1+3+5+', 'pengajuan/pengajuan_bahan', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(4, 'Kelola', 'fa fa-fw fa-tasks'),
(6, 'Peminjaman', 'fa fa-fw fa-pen-square'),
(5, 'Pengajuan', 'fa fa-fw fa-envelope');

-- --------------------------------------------------------

--
-- Table structure for table `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `gambar`, `username`, `password`, `level`, `bagian`, `no_hp`, `alamat`, `last_login`) VALUES
(1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-06-11 09:28:51'),
(2, 'RENSI EKA PRATTISTIA', 'files/2016/10/197f1fe92d49367824b4ec55d06af614.jpg', 'rensi', '*711CD8D9847EE80DEDC2B331ADB185CD0100EA86', 2, 1, '-', '-', '2017-03-01 18:05:17'),
(3, 'Damas Fahmi Assena', 'files/2016/09/062918947f59511ed8824be8462b2669.jpg', 'damas', '*A8244C6E6B51D4D7C6F89A1D145CE244EF9A12A5', 2, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2017-03-02 11:27:31'),
(7, 'Suparno', 'files/2016/09/15322f731347f50f18ceee0b7e5d346a.jpg', 'parno', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-01-20 13:28:02'),
(8, 'Anto', 'files/2016/10/a9a1c61937e5c422841f2f95360dfda7.jpg', 'anto', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2017-03-01 08:26:51'),
(9, 'Admin Supplier', 'files/2016/10/5d1a93bc69ca0cbc6777f940955285ba.png', 'admin', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 3, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 14:28:19'),
(10, 'Staff Kalingga', 'files/2016/10/6f8c1070cf71eaca2fa5c544f6fb2bfa.png', 'kalinggajati', '*63B6331B1B9E1A7D8BA3B2B5666EDD5EE2C460CC', 5, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52'),
(11, 'Admin Outstanding', 'files/2016/10/e511c2db7c393226effc9f303cf2a674.png', 'admin2', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36'),
(12, 'Bittaqwa', 'files/2017/01/850a0830a9fb703e55f1ef318d2195df.jpg', 'bittaqwa', '*2900EA52D759AACA10038BA767FDDA68A9F7853A', 6, 1, '', '', '2017-03-01 10:11:37'),
(13, 'coba', 'files/2017/04/f6b70ba5e4de413f8832472bef538c0d.JPG', 'coba', '*FD64E348EC9DCCE6525B358693A9CFDC733F5184', 3, 1, 'qq', 'qq', '2017-04-25 09:27:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `kelola_user`
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
-- Dumping data for table `kelola_user`
--

INSERT INTO `kelola_user` (`id`, `NoInduk`, `Username`, `Nama`, `JenisKelamin`, `Foto`, `Email`, `NoTelp`, `Level`, `Status`) VALUES
(1, 12345, 'Dafa', 'Dafa Najma', 'Perempuan', 'fotopalingcakep.jpg', 'dafa@gmail.com', 1234566215, 'Admin', 'Aktif'),
(2, 23456, 'Aldi', 'Aldi Siregar', 'Laki-Laki', 'fotoaldiganteng.jpg', 'aldi@gmail.com', 1254367257, 'Aslab', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_penyimpanan`
--

CREATE TABLE `lokasi_penyimpanan` (
  `id` int(11) NOT NULL,
  `nama_lokasi_penyimpanan` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi_penyimpanan`
--

INSERT INTO `lokasi_penyimpanan` (`id`, `nama_lokasi_penyimpanan`, `status`) VALUES
(2, 'Lab Ilkom', 'Ada'),
(3, 'Lab IPA', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel'),
(4, 'A01', 'zat obat a', 'asetosal', 0, NULL),
(5, 'A02', 'zat tambah', 'talkum', 0, NULL),
(6, 'A03', 'bahan kimi', 'asam sulfat', 0, NULL),
(7, 'A04', 'alat prakt', 'gelas ukur', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
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
-- Dumping data for table `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '8016', 'Jawa Tengah', 'humas@mail.unnes.ac.id', 'https://unnes.ac.id', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '(024) 8508093', 'Kementrian Pendidikan dan Kebudayaan', '2019-2020', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 'Dr Sugianto M.Si.', 'Sekaran, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50229', '(024) 8508112', 'Ilmu Komputer', 'Alamsyah S.Si.,M.Kom.', 'Much Aziz Muslim S.Kom., M.Kom.', '(024) 8508028', 'Sekaran, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50229', '-', '-', NULL, 'WIB');

-- --------------------------------------------------------

--
-- Table structure for table `master_inven`
--

CREATE TABLE `master_inven` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `alat_bahan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_inven`
--

INSERT INTO `master_inven` (`id`, `kode`, `alat_bahan`, `tanggal`, `keterangan`) VALUES
(0, 'AL242', 'Magnesium', '22 Januari 2018', 'tambahan magnesium 500g'),
(1, 'AL242', 'Klorin', '18 Januari 2018', 'subsidi klorin pt kimia farma 500g');

-- --------------------------------------------------------

--
-- Table structure for table `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_level`
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
-- Table structure for table `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `kode`, `nama_alat`, `keterangan`) VALUES
(1, 'MK01', 'Mikroskop', 'lihat'),
(2, 'MK02', 'Mikroskop Besar', 'Mikroskop Besar'),
(3, 'D01', 'Teleskop', 'Besar'),
(4, 'D02', 'Teleskop', 'Kecil'),
(5, 'D01', 'Penggaris', '-'),
(6, 'MB01', 'Teleskop', 'Besar');

-- --------------------------------------------------------

--
-- Table structure for table `master_sumber_pendanaan`
--

CREATE TABLE `master_sumber_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sumber_pendanaan`
--

INSERT INTO `master_sumber_pendanaan` (`id`, `sumber_pendanaan`, `keterangan`) VALUES
(101, 'Dekanat', 'Rp 10.000.000'),
(103, 'Univ', 'Rp 10.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `master_tipe_lab`
--

CREATE TABLE `master_tipe_lab` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `tipe_lab` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tipe_lab`
--

INSERT INTO `master_tipe_lab` (`id`, `kode`, `tipe_lab`, `keterangan`) VALUES
(1, '66', 'Komputer', 'Lam Kom 2'),
(2, '22', 'FISIKA', 'Fis 1');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indexes for table `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kelola_absen`
--
ALTER TABLE `kelola_absen`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `kelola_user`
--
ALTER TABLE `kelola_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_penyimpanan`
--
ALTER TABLE `lokasi_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_inven`
--
ALTER TABLE `master_inven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3252;
--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kelola_absen`
--
ALTER TABLE `kelola_absen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kelola_user`
--
ALTER TABLE `kelola_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lokasi_penyimpanan`
--
ALTER TABLE `lokasi_penyimpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
