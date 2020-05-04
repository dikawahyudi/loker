-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2019 at 08:57 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_loker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daftar_loker`
--

DROP TABLE IF EXISTS `tbl_daftar_loker`;
CREATE TABLE IF NOT EXISTS `tbl_daftar_loker` (
  `id_daftar_loker` int(10) NOT NULL AUTO_INCREMENT,
  `id_loker` int(10) DEFAULT NULL,
  `id_pencari_kerja` int(10) DEFAULT NULL,
  `file_cv` text,
  `ket_daftar_loker` text,
  `status` text,
  `tgl_daftar_loker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_daftar_loker`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daftar_loker`
--

INSERT INTO `tbl_daftar_loker` (`id_daftar_loker`, `id_loker`, `id_pencari_kerja`, `file_cv`, `ket_daftar_loker`, `status`, `tgl_daftar_loker`) VALUES
(5, 6, 3, 'file/2e4c9bc2a012effce4675405aaeac8da.pdf', 'a, b ,c ds\r\n\r\nasf\r\naf\r\nasf\r\nas\r\nf', '2', '2019-07-19 23:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loker`
--

DROP TABLE IF EXISTS `tbl_loker`;
CREATE TABLE IF NOT EXISTS `tbl_loker` (
  `id_loker` int(10) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int(10) DEFAULT NULL,
  `judul` text,
  `loker` text,
  `ket_loker` text,
  `status_loker` text,
  `tgl_loker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_loker`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_loker`
--

INSERT INTO `tbl_loker` (`id_loker`, `id_perusahaan`, `judul`, `loker`, `ket_loker`, `status_loker`, `tgl_loker`) VALUES
(2, 7, 'IT Programmer', 'PHP, CI', 'bisa ini bisa itu', '1', '2019-07-18 20:02:11'),
(3, 7, 'Office Boy', 'OB', 'bisa ini, bisa itu', '1', '2019-07-18 20:11:24'),
(4, 7, 'IT - Server &amp; Database', 'Server &amp; Database', 'bisa Server &amp; Database, dll', '1', '2019-07-18 20:12:27'),
(5, 7, 'Backend PHP', 'PHP, HTML, BOOTSTRAP, CI', 'Bisa PHP, HTML, BOOTSTRAP, CI dll', '1', '2019-07-18 20:13:10'),
(6, 7, 'Frontend PHP', 'PHP, HTML, BOOTSTRAP, CI', 'Bisa PHP, HTML, BOOTSTRAP, CI dll', '1', '2019-07-18 20:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pencari_kerja`
--

DROP TABLE IF EXISTS `tbl_pencari_kerja`;
CREATE TABLE IF NOT EXISTS `tbl_pencari_kerja` (
  `id_pencari_kerja` int(10) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `jk` text,
  `email` text,
  `telp` text,
  `alamat` text,
  `foto` text,
  `id_user` int(10) DEFAULT NULL,
  `tgl_pencari_kerja` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pencari_kerja`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pencari_kerja`
--

INSERT INTO `tbl_pencari_kerja` (`id_pencari_kerja`, `nama`, `jk`, `email`, `telp`, `alamat`, `foto`, `id_user`, `tgl_pencari_kerja`) VALUES
(3, 'as', 'Laki-Laki', 'a@a.d', '233', 'sdf', NULL, 11, '2019-07-18 20:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perusahaan`
--

DROP TABLE IF EXISTS `tbl_perusahaan`;
CREATE TABLE IF NOT EXISTS `tbl_perusahaan` (
  `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,
  `nama` text,
  `email` text,
  `telp` varchar(16) DEFAULT NULL,
  `alamat` text,
  `pendiri` text,
  `deskripsi` text,
  `logo` text,
  `id_user` int(10) DEFAULT NULL,
  `tgl_perusahaan` datetime DEFAULT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perusahaan`
--

INSERT INTO `tbl_perusahaan` (`id_perusahaan`, `nama`, `email`, `telp`, `alamat`, `pendiri`, `deskripsi`, `logo`, `id_user`, `tgl_perusahaan`) VALUES
(2, 'Esotechno', 'admin@esotechno.com', '0812', 'Jambi', '-', 'Perusahaan Web Developer', 'img/perusahaan/137599086fcc3113c0a05dd037b578a4.jpg', 7, '2019-07-10 19:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` text,
  `username` text,
  `password` text,
  `level` text,
  `tgl_user` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `level`, `tgl_user`) VALUES
(1, 'Anwar-kun', 'admin', 'admin', 'admin', '2019-05-02 16:00:00'),
(7, 'Esotechno', '1', '1', 'perusahaan', '2019-07-10 19:46:22'),
(11, 'as', '2', '2', 'user', '2019-07-18 20:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

DROP TABLE IF EXISTS `tbl_web`;
CREATE TABLE IF NOT EXISTS `tbl_web` (
  `id_web` int(10) NOT NULL AUTO_INCREMENT,
  `autor` text,
  `judul_web` text,
  `judul_web2` text,
  `nama_app` text,
  `deskripsi` text,
  `keyword` text,
  `footer` text,
  `favicon` text,
  `logo` text,
  `tgl_web` datetime DEFAULT NULL,
  PRIMARY KEY (`id_web`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `autor`, `judul_web`, `judul_web2`, `nama_app`, `deskripsi`, `keyword`, `footer`, `favicon`, `logo`, `tgl_web`) VALUES
(1, 'Anwar Saputra', 'Aplikasi Lowongan Kerja', '', 'Lowongan Kerja', 'Aplikasi Lowongan Kerja', 'Aplikasi Lowongan Kerja', 'Copyright &copy; 2019 | Developer by <a href=\'https://esotechno.com/\' target=\'_blank\'>CV. Esotechno</a>', 'img/favicon.png', 'img/logo.png', '2019-07-07 08:02:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
