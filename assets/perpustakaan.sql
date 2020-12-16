-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2017 at 03:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `PASSWORD` mediumtext,
  `LAST_LOGIN` varchar(40) DEFAULT NULL,
  `ROLE` varchar(15) DEFAULT NULL,
  `FULLNAME` varchar(128) DEFAULT NULL,
  `JENKEL` char(1) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext,
  `PHOTO` mediumtext,
  `DTE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ROLE`, `FULLNAME`, `JENKEL`, `NO_TELP`, `ALAMAT`, `PHOTO`, `DTE_CREATED`) VALUES
('AD001', 'admin', '21232f297a57a5a743894a0e4a801fc3', '16-07-2017 14:54:47', 'superadmin', 'siti', NULL, NULL, NULL, 'default.png', '2017-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext,
  `GENDER` char(1) DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` mediumtext,
  `D_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('AGT016', 'AD001', 'siti', 'Jakarta', '07/09/2001', 'Jl. Alun alun', 'P', '08766754123', 'stdmp.png', '2017-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TITLE` varchar(150) DEFAULT NULL,
  `AUTHOR` varchar(128) DEFAULT NULL,
  `PUBLISHER` varchar(128) DEFAULT NULL,
  `YEAR` char(4) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `KELUAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_ADMIN`, `TITLE`, `AUTHOR`, `PUBLISHER`, `YEAR`, `QTY`, `KELUAR`) VALUES
('BKO004', 'AD003', 'Mikrotik Kung Fu : Kitab 1', 'Rendra Towidjojo', 'Jasakom', '2016', 2, 2),
('BKO005', 'AD001', 'Windows 10 : Panduan Lengkap', 'Indra Susanto', 'Jasakom', '2013', 4, 1),
('BKO006', 'AD001', 'Bisnis Online Revolution', 'Iwan Kenrianto', 'Gramedia', '2015', 2, 1),
('BKO007', 'AD001', '3 Tools Facebook Graph Gratisan', 'Suryadin Laoddang', 'Dosen Jualan', '2015', 1, 2),
('BKO008', 'AD001', 'Mengolah Database Excel', 'Sumonggo Surya', 'Andi Publisher', '2001', 0, 2),
('BKO009', 'AD001', 'Mahir Corel Draw Dalam 4 Hari', 'Yuli Kristanto S', 'Izuka Komp', '2008', 1, 2),
('BKO010', 'AD001', 'The Magic of Photoshop', 'Hendri Hendratama', 'Informatika', '2013', 4, 2),
('BKO011', 'AD001', 'Teknik Profesional Photoshop CS3', 'Rahmat Widiyanto', 'Elex Media Computindo', '2009', 3, 3),
('BKO012', 'AD001', 'Jago SEO', 'Hidayat Rahmad', 'Elex Media Computindo', '2011', 1, 2),
('BKO013', 'AD001', 'Hacking Wireless Network', 'Suryatama Udin', 'Jasakom', '2014', 6, 3),
('BKO014', 'AD001', 'Blender 3D Modelling', 'Hendri Hendratama', 'Informatika', '2015', 0, 2),
('BKO015', 'AD001', 'Aplikasi Berbasis Android', 'Hyua Hendra La', 'Moklet Publisher', '2019', 3, 1),
('BKO016', 'AD001', 'Membangun Aplikasi ASP', 'Hendro SPd', 'Moklet Publisher', '2020', 2, 2),
('BKO017', 'AD001', 'Basis Data Kebun Binatang', 'Ifa Khoirunnisa', 'Moklet Publisher', '2018', 3, 0),
('BKO018', 'AD001', 'Buku Panduan ASUS', 'Herman Dzumavo', 'Samsara', '2008', 3, 0),
('BKO019', 'AD001', 'The Power of Microsoft Edge', 'Steven Reward', 'Duston Magz', '2017', 5, 1),
('BKO020', 'AD001', 'MySQL Dasar dan Implementasi', 'Supratman Efendi', 'Ilmukom', '2014', 3, 2),
('BKO021', 'AD001', 'Nippon Against World', 'Hasirama Tadashi', 'Sung Yang', '2009', 0, 2),
('BKO022', 'AD001', 'Konfigursi Router Cisco', 'Solikin', 'Safari pub', '2019', 2, 1),
('BKO023', 'AD001', 'Fashion Paris', 'Amire Melaine', 'FranceTime', '2018', 2, 0),
('BKO024', 'AD001', 'Unreleashed Journal', 'Timothy Law', 'Askars', '2017', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `ID_DIPINJAM` int(11) NOT NULL,
  `ID_PINJAM` varchar(10) DEFAULT NULL,
  `ID_BUKU` varchar(10) DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `DENDA` int(11) DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`ID_DIPINJAM`, `ID_PINJAM`, `ID_BUKU`, `TGL_KEMBALI`, `DENDA`, `STATUS`) VALUES
(49, 'P170709002', 'BKO021', NULL, 0, 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `ID_NOTIF` int(11) NOT NULL,
  `ID_ADMIN` varchar(128) NOT NULL,
  `JUDUL` varchar(128) NOT NULL,
  `ISI` varchar(128) NOT NULL,
  `DT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`ID_NOTIF`, `ID_ADMIN`, `JUDUL`, `ISI`, `DT`) VALUES
(10, 'AD001', 'Hello', 'Hello World', '2017-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PINJAM` varchar(10) NOT NULL,
  `ID_ANGGOTA` varchar(10) DEFAULT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `JML_BUKU` int(11) NOT NULL,
  `STATS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PINJAM`, `ID_ANGGOTA`, `ID_ADMIN`, `TGL_PINJAM`, `JML_BUKU`, `STATS`) VALUES
('P170709002', 'AGT016', 'AD006', '2017-07-09', 2, 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `perpus`
--

CREATE TABLE `perpus` (
  `ID_PERPUS` int(11) NOT NULL,
  `NAMA_P` varchar(128) DEFAULT NULL,
  `ALAMAT_P` mediumtext,
  `ABOUT` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD UNIQUE KEY `ANGGOTA_PK` (`ID_ANGGOTA`),
  ADD KEY `MAKE_FK` (`ID_ADMIN`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD UNIQUE KEY `BUKU_PK` (`ID_BUKU`),
  ADD KEY `CREATE_FK` (`ID_ADMIN`);

--
-- Indexes for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD PRIMARY KEY (`ID_DIPINJAM`),
  ADD UNIQUE KEY `DETAIL_PINJAM_PK` (`ID_DIPINJAM`),
  ADD KEY `MEMILIKI_FK` (`ID_PINJAM`),
  ADD KEY `MENGAMBIL_FK` (`ID_BUKU`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`ID_NOTIF`),
  ADD KEY `FK_NOTIF_MEMBUAT_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PINJAM`),
  ADD UNIQUE KEY `PEMINJAMAN_PK` (`ID_PINJAM`),
  ADD KEY `MELAKUKAN_FK` (`ID_ANGGOTA`),
  ADD KEY `MELAYANI_FK` (`ID_ADMIN`);

--
-- Indexes for table `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`ID_PERPUS`),
  ADD UNIQUE KEY `PERPUS_PK` (`ID_PERPUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  MODIFY `ID_DIPINJAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `ID_NOTIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `perpus`
--
ALTER TABLE `perpus`
  MODIFY `ID_PERPUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_ANGGOTA_MAKE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_BUKU_CREATE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD CONSTRAINT `FK_DETAIL_P_MEMILIKI_PEMINJAM` FOREIGN KEY (`ID_PINJAM`) REFERENCES `peminjaman` (`ID_PINJAM`),
  ADD CONSTRAINT `FK_DETAIL_P_MENGAMBIL_BUKU` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `FK_NOTIF_MEMBUAT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_MELAKUKAN_ANGGOTA` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`),
  ADD CONSTRAINT `FK_PEMINJAM_MELAYANI_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
