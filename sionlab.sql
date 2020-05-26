/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : sionlab

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 08/05/2020 10:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_captcha
-- ----------------------------
DROP TABLE IF EXISTS `cms_captcha`;
CREATE TABLE `cms_captcha`  (
  `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE,
  INDEX `word`(`word`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3210 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_captcha
-- ----------------------------
INSERT INTO `cms_captcha` VALUES (3208, 1588905380, '::1', '046105');
INSERT INTO `cms_captcha` VALUES (3209, 1588905453, '::1', '834508');

-- ----------------------------
-- Table structure for cms_log
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log`  (
  `id_log` int(30) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mac_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kegiatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_log
-- ----------------------------
INSERT INTO `cms_log` VALUES (1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin');
INSERT INTO `cms_log` VALUES (11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin');
INSERT INTO `cms_log` VALUES (13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq');
INSERT INTO `cms_log` VALUES (14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq');

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `allowed_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT 1,
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES (3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1);
INSERT INTO `cms_menu` VALUES (89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3);
INSERT INTO `cms_menu` VALUES (102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1);
INSERT INTO `cms_menu` VALUES (136, 'satuan', 'Satuan', '-', '+1+2+', 'master/satuan', 1, 9, 2);
INSERT INTO `cms_menu` VALUES (104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101);
INSERT INTO `cms_menu` VALUES (135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+', 'master/master_bahan', 1, 8, 2);
INSERT INTO `cms_menu` VALUES (134, 'nama_alat', 'Nama Alat', '-', '+1+2+', 'master/nama_alat', 1, 7, 2);
INSERT INTO `cms_menu` VALUES (133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2);
INSERT INTO `cms_menu` VALUES (132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2);
INSERT INTO `cms_menu` VALUES (131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2);
INSERT INTO `cms_menu` VALUES (130, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2);
INSERT INTO `cms_menu` VALUES (129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2);
INSERT INTO `cms_menu` VALUES (128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2);

-- ----------------------------
-- Table structure for cms_menu_grup
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu_grup`;
CREATE TABLE `cms_menu_grup`  (
  `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_grup_menu`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 172 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu_grup
-- ----------------------------
INSERT INTO `cms_menu_grup` VALUES (3, 'Hidden Menu', NULL);
INSERT INTO `cms_menu_grup` VALUES (1, 'Manajemen', 'fa fa-fw fa-book');
INSERT INTO `cms_menu_grup` VALUES (2, 'Master', 'fa fa-fw fa-archive');
INSERT INTO `cms_menu_grup` VALUES (101, 'Dashboard', 'fa fa-dashboard');

-- ----------------------------
-- Table structure for cms_online
-- ----------------------------
DROP TABLE IF EXISTS `cms_online`;
CREATE TABLE `cms_online`  (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_online
-- ----------------------------
INSERT INTO `cms_online` VALUES (2, '');
INSERT INTO `cms_online` VALUES (3, '');

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(10) NULL DEFAULT NULL,
  `bagian` int(11) NULL DEFAULT 1,
  `no_hp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES (1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-05-08 09:37:33');
INSERT INTO `cms_user` VALUES (2, 'RENSI EKA PRATTISTIA', 'files/2016/10/197f1fe92d49367824b4ec55d06af614.jpg', 'rensi', '*711CD8D9847EE80DEDC2B331ADB185CD0100EA86', 2, 1, '-', '-', '2017-03-01 18:05:17');
INSERT INTO `cms_user` VALUES (3, 'Damas Fahmi Assena', 'files/2016/09/062918947f59511ed8824be8462b2669.jpg', 'damas', '*A8244C6E6B51D4D7C6F89A1D145CE244EF9A12A5', 2, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2017-03-02 11:27:31');
INSERT INTO `cms_user` VALUES (7, 'Suparno', 'files/2016/09/15322f731347f50f18ceee0b7e5d346a.jpg', 'parno', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-01-20 13:28:02');
INSERT INTO `cms_user` VALUES (8, 'Anto', 'files/2016/10/a9a1c61937e5c422841f2f95360dfda7.jpg', 'anto', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2017-03-01 08:26:51');
INSERT INTO `cms_user` VALUES (9, 'Admin Supplier', 'files/2016/10/5d1a93bc69ca0cbc6777f940955285ba.png', 'admin', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 3, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 14:28:19');
INSERT INTO `cms_user` VALUES (10, 'Staff Kalingga', 'files/2016/10/6f8c1070cf71eaca2fa5c544f6fb2bfa.png', 'kalinggajati', '*63B6331B1B9E1A7D8BA3B2B5666EDD5EE2C460CC', 5, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52');
INSERT INTO `cms_user` VALUES (11, 'Admin Outstanding', 'files/2016/10/e511c2db7c393226effc9f303cf2a674.png', 'admin2', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36');
INSERT INTO `cms_user` VALUES (12, 'Bittaqwa', 'files/2017/01/850a0830a9fb703e55f1ef318d2195df.jpg', 'bittaqwa', '*2900EA52D759AACA10038BA767FDDA68A9F7853A', 6, 1, '', '', '2017-03-01 10:11:37');
INSERT INTO `cms_user` VALUES (13, 'coba', 'files/2017/04/f6b70ba5e4de413f8832472bef538c0d.JPG', 'coba', '*FD64E348EC9DCCE6525B358693A9CFDC733F5184', 3, 1, 'qq', 'qq', '2017-04-25 09:27:29');

-- ----------------------------
-- Table structure for master_bahan
-- ----------------------------
DROP TABLE IF EXISTS `master_bahan`;
CREATE TABLE `master_bahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_bahan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(4) NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_bahan
-- ----------------------------
INSERT INTO `master_bahan` VALUES (1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel');
INSERT INTO `master_bahan` VALUES (2, 'MK02', 'Mikroskop ', 'Mikroskop Besar', NULL, NULL);

-- ----------------------------
-- Table structure for master_instansi
-- ----------------------------
DROP TABLE IF EXISTS `master_instansi`;
CREATE TABLE `master_instansi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kementerian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_dekan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_fakultas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kajur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kalab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `peta_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zona_waktu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_instansi
-- ----------------------------
INSERT INTO `master_instansi` VALUES (1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- ----------------------------
-- Table structure for master_level
-- ----------------------------
DROP TABLE IF EXISTS `master_level`;
CREATE TABLE `master_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_level
-- ----------------------------
INSERT INTO `master_level` VALUES (1, 'Super Admin');
INSERT INTO `master_level` VALUES (2, 'Admin');
INSERT INTO `master_level` VALUES (3, 'Level 1');
INSERT INTO `master_level` VALUES (4, 'Level 2');
INSERT INTO `master_level` VALUES (5, 'Level 3');
INSERT INTO `master_level` VALUES (6, 'Level 0');

-- ----------------------------
-- Table structure for master_nama_alat
-- ----------------------------
DROP TABLE IF EXISTS `master_nama_alat`;
CREATE TABLE `master_nama_alat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_alat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_nama_alat
-- ----------------------------
INSERT INTO `master_nama_alat` VALUES (1, 'MK01', 'Mikroskop', 'lihat');
INSERT INTO `master_nama_alat` VALUES (2, 'MK02', 'Mikroskop Besar', 'Mikroskop Besar');

-- ----------------------------
-- Table structure for master_user
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_user
-- ----------------------------
INSERT INTO `master_user` VALUES (2, 'jihan', '1');

SET FOREIGN_KEY_CHECKS = 1;
