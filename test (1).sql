-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 01:34 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar_akhir`
--

CREATE TABLE `bayar_akhir` (
  `id_bayar` varchar(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `sisa_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bayar_atribut`
--

CREATE TABLE `bayar_atribut` (
  `id_bayar` varchar(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `sisa_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bayar_infaq`
--

CREATE TABLE `bayar_infaq` (
  `id_bayar` varchar(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bayar_lks`
--

CREATE TABLE `bayar_lks` (
  `id_bayar` varchar(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `sisa_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bayar_spp`
--

CREATE TABLE `bayar_spp` (
  `id_bayar` varchar(6) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bayar_ujian`
--

CREATE TABLE `bayar_ujian` (
  `id_bayar` varchar(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `ket` enum('Genap','Ganjil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(11) NOT NULL,
  `jenis_pembayaran` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tahun` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bayar`
--

CREATE TABLE `tbl_bayar` (
  `id_bayar` varchar(10) NOT NULL,
  `nis` char(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `ket` varchar(10) NOT NULL,
  `komentar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `tahun_masuk` char(4) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `nama_ayah`, `nama_ibu`, `tahun_masuk`, `jk`, `jurusan`) VALUES
('1000000000', 'Nur Sukma Pandawa', 'Mentaraman 1', 'Ayah', 'Ibu', '2019', 'L', 'RPL'),
('1000000001', 'Dita AM', 'Mentaraman', 'Bapak', 'Mama', '2020', 'P', 'TKR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bayar`
--
ALTER TABLE `tbl_bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
