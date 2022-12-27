-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 11:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlks`
--

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `Thanhpho` varchar(100) NOT NULL,
  `Makhachhang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`Thanhpho`, `Makhachhang`) VALUES
('Hà Nội', '1'),
('Nam Định', '3'),
('Ninh Bình', '4');

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `Madichvu` varchar(100) NOT NULL,
  `Tendichvu` varchar(100) NOT NULL,
  `Giatien` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`Madichvu`, `Tendichvu`, `Giatien`) VALUES
('DV1', 'Vệ sinh', 100),
('DV2', 'Ăn uống', 200),
('DV3', 'Giặt ủi', 50);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `Mahoadon` varchar(100) NOT NULL,
  `Makhachhang` varchar(100) NOT NULL,
  `Hinhthucthanhtoan` varchar(100) NOT NULL,
  `Ngaythanhtoan` date NOT NULL,
  `Thanhtien` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`Mahoadon`, `Makhachhang`, `Hinhthucthanhtoan`, `Ngaythanhtoan`, `Thanhtien`) VALUES
('HD1', '1', 'Online', '2022-10-30', 4000),
('HD2', '2', 'Online', '2022-04-02', 6000),
('HD3', '3', 'Trực tiếp', '2022-11-25', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `Makhachhang` varchar(100) NOT NULL,
  `Tenkhachhang` varchar(100) NOT NULL,
  `Diachi` varchar(100) NOT NULL,
  `SđtKH` varchar(16) NOT NULL,
  `Gioitinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Makhachhang`, `Tenkhachhang`, `Diachi`, `SđtKH`, `Gioitinh`) VALUES
('1', 'Nguyen Van A', 'Hà Nội', '0967743218', 'Nam'),
('2', 'Nguyen Van B', 'Hà Nội', '0963213217', 'Nam'),
('3', 'Nguyen Van C', 'Nam Định', '0852243798', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Manhanvien` varchar(100) NOT NULL,
  `Hoten` varchar(100) NOT NULL,
  `SđtNV` varchar(16) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Gioitinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`Manhanvien`, `Hoten`, `SđtNV`, `Ngaysinh`, `Gioitinh`) VALUES
('NV1', 'Nguyen Thi A', '0976546418', '1999-10-02', 'Nữ'),
('NV2', 'Nguyen Thi B', '0971236222', '2000-01-04', 'Nữ'),
('NV3', 'Nguyen Thi C', '0946536519', '1998-03-21', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `Maphong` varchar(100) NOT NULL,
  `Makhachhang` varchar(100) NOT NULL,
  `Loaiphong` varchar(100) NOT NULL,
  `Giathue` int(100) NOT NULL,
  `Dientich` int(200) NOT NULL,
  `Ngayvao` date NOT NULL,
  `Ngayra` date NOT NULL,
  `Ngaydat` date NOT NULL,
  `Datcoc` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`Maphong`, `Makhachhang`, `Loaiphong`, `Giathue`, `Dientich`, `Ngayvao`, `Ngayra`, `Ngaydat`, `Datcoc`) VALUES
('A1', '1', 'Standard', 3000, 50, '2022-10-09', '2022-10-30', '2022-09-30', 1000),
('A2', '2', 'Superior', 5000, 70, '2022-03-10', '2022-04-02', '2022-03-01', 4000),
('A3', '3', 'Standard', 7000, 100, '2022-11-12', '2022-11-25', '2022-10-29', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `phucvu`
--

CREATE TABLE `phucvu` (
  `Maphong` varchar(100) NOT NULL,
  `Manhanvien` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phucvu`
--

INSERT INTO `phucvu` (`Maphong`, `Manhanvien`) VALUES
('A1', 'NV2'),
('A2', 'NV1'),
('A3', 'NV3');

-- --------------------------------------------------------

--
-- Table structure for table `sudungdichvu`
--

CREATE TABLE `sudungdichvu` (
  `Makhachhang` varchar(100) NOT NULL,
  `Madichvu` varchar(100) NOT NULL,
  `Ngaysudung` date NOT NULL,
  `Dongia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sudungdichvu`
--

INSERT INTO `sudungdichvu` (`Makhachhang`, `Madichvu`, `Ngaysudung`, `Dongia`) VALUES
('1', 'DV2', '2022-10-25', '200'),
('2', 'DV1', '2022-03-11', '100'),
('3', 'DV3', '2022-11-13', '50');

-- --------------------------------------------------------

--
-- Table structure for table `sđtkh`
--

CREATE TABLE `sđtkh` (
  `Sodienthoai` varchar(16) NOT NULL,
  `Makhachhang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sđtkh`
--

INSERT INTO `sđtkh` (`Sodienthoai`, `Makhachhang`) VALUES
('0852243798', '3'),
('0963213217', '2'),
('0967743218', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sđtnv`
--

CREATE TABLE `sđtnv` (
  `Sodienthoai` varchar(16) NOT NULL,
  `Manhanvien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sđtnv`
--

INSERT INTO `sđtnv` (`Sodienthoai`, `Manhanvien`) VALUES
('0946536519', 'NV3'),
('0971236222', 'NV2'),
('0976546418', 'NV1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`Thanhpho`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`Madichvu`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`Mahoadon`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Makhachhang`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Manhanvien`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`Maphong`);

--
-- Indexes for table `phucvu`
--
ALTER TABLE `phucvu`
  ADD PRIMARY KEY (`Maphong`);

--
-- Indexes for table `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  ADD PRIMARY KEY (`Makhachhang`);

--
-- Indexes for table `sđtkh`
--
ALTER TABLE `sđtkh`
  ADD PRIMARY KEY (`Sodienthoai`);

--
-- Indexes for table `sđtnv`
--
ALTER TABLE `sđtnv`
  ADD PRIMARY KEY (`Sodienthoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
