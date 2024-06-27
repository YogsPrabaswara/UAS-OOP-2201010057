-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 02:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_barang` varchar(255) NOT NULL,
  `Nama_Barang` varchar(100) NOT NULL,
  `Jenis` varchar(50) NOT NULL,
  `HargaBeli` decimal(10,0) NOT NULL,
  `HargaJual` decimal(10,0) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_barang`, `Nama_Barang`, `Jenis`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR002', 'Lenovo Legion 5 Pro', 'Laptop', '50000000', '20000000', 3),
('BR003', 'Asus Rog 7', 'Handphone', '18000000', '15000000', 2),
('BR004', 'LG G TV ', 'TV', '12000000', '150000000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(100) NOT NULL,
  `Tanggal` varchar(100) NOT NULL,
  `ID_Customer` varchar(100) NOT NULL,
  `TotalBeli` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('TR0001', '25-06-2024', 'CU001', '40000000'),
('TR0002', '27-06-2024', 'CU001', '300000000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(100) NOT NULL,
  `ID_barang` varchar(100) NOT NULL,
  `Nama_Barang` varchar(100) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Harga` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('TR0001', 'BR002', 'Lenovo Legion 5 Pro', 2, '20000000', '40000000'),
('TR0002', 'BR004', 'LG G TV ', 2, '150000000', '300000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
