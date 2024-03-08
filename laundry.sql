-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 03:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '01cfcd4f6b8770febfb40cb906715822');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(10000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `pakaian_transaksi` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `pakaian_transaksi`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'baju', 3),
(2, 1, 'celana pendek', 2),
(3, 1, 'kerudung', 3),
(4, 1, 'jaket', 1),
(5, 1, 'kaos dalam', 3),
(132, 6, 'karpet', 1),
(133, 6, 'hudi', 2),
(134, 6, 'kaos', 3),
(135, 6, 'kaos dalam', 4),
(148, 11, 'baju', 2),
(149, 11, 'celana', 3),
(150, 11, 'kemeja', 4),
(151, 11, 'topi', 5),
(154, 12, 'baju', 0),
(155, 7, 'seragam', 2),
(156, 7, 'rok pramuka', 3),
(157, 7, 'sepatu', 4),
(158, 7, 'dasi', 3),
(165, 13, 'sprai', 1),
(166, 13, 'sepatu', 1),
(167, 13, 'seragam', 1),
(175, 16, 'sprai', 2),
(182, 17, 'baju', 1),
(183, 17, 'celana', 1),
(184, 17, 'seragam', 2),
(185, 15, 'celana', 1),
(186, 15, 'sepatu', 1),
(187, 18, 'baju', 1),
(188, 18, 'baju', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(255) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(7, 'dede', '083100517480', 'citayem'),
(24, 'freya', '09876544', 'citayem'),
(25, 'aldii', '234333', 'citayem'),
(26, 'ica', '098776543', 'Pamokolan'),
(28, 'freya', '3333333', 'citayem');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `transaksi_pelanggan` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `transaksi_pelanggan`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(6, '2024-01-29', 9, 30000, 3, '2024-01-30', 2),
(7, '2024-01-29', 7, 80000, 8, '2024-01-30', 1),
(11, '2024-01-31', 17, 70000, 7, '2024-01-30', 1),
(12, '2024-01-31', 17, 70000, 7, '2024-01-31', 0),
(13, '2024-02-04', 22, 80000, 8, '2024-01-27', 0),
(15, '2024-02-04', 24, 90000, 9, '2024-02-05', 2),
(16, '2024-02-05', 25, 30000, 3, '2024-02-05', 0),
(17, '2024-02-05', 26, 20000, 2, '2024-02-04', 0),
(18, '2024-02-20', 24, 20000, 2, '2024-02-21', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
