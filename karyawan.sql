-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 09:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id_jeniskelamin` int(11) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id_jeniskelamin`, `jenis_kelamin`) VALUES
(1, 'Laki - Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(15) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` text,
  `tempat` varchar(45) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nik`, `nama`, `alamat`, `tempat`, `tgl_lahir`, `status`, `jenis_kelamin`) VALUES
(9, 'SAE000001', 'chakim', 'desa gunung asri', 'gresik', '1995-07-14', 'Belum Menikah', 'Laki-Laki'),
(10, 'SAE000002', 'roni', 'randuagung', 'malang', '2019-12-19', 'Menikah', 'Laki-Laki'),
(11, 'SAE000003', 'ucup', 'bungah', 'gresik', '2019-12-19', 'Belum Menikah', 'Laki-Laki'),
(12, 'SAE000004', 'habibi', 'manyar', 'gresik', '1995-07-14', 'Belum Menikah', 'Laki-Laki'),
(13, 'SAE000005', 'hasta', 'cerme', 'gresik', '1995-07-14', 'Menikah', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(15) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `bagian` varchar(30) DEFAULT NULL,
  `aktif` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `nik`, `username`, `password`, `bagian`, `aktif`) VALUES
(1, '', 'admin-hrd', 'acaf483f5ae94df85957d6d1b5258408', 'hrd', 'Y'),
(2, '', 'admin-direktur', '61f3ee83355523a36fb467b29f18e26c', 'direktur', ''),
(10, 'SAE000001', 'chakim', '24aad6e3a8a05ef1db6cfb51ac50ef76', 'karyawan', 'Y'),
(11, 'SAE000002', 'roni ', 'd2bb5f3d731b5145211aefdb41a2de07', 'karyawan', 'N'),
(12, 'SAE000003', 'ucup', '52f2a19731c1131318e5bb6230f41b52', 'karyawan', ''),
(13, 'SAE000004', 'habibi', '3c9a488007e82c47be04e17aff3a05a3', 'karyawan', ''),
(14, 'SAE000005', 'hasta', '30b34ba5e2b97c7982c7d8db2c38b666', 'karyawan', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id_jeniskelamin`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id_jeniskelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
