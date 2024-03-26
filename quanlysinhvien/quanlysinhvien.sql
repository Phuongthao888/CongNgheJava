-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2023 lúc 07:19 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlysinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cn`
--

CREATE TABLE `cn` (
  `macn` varchar(20) NOT NULL,
  `tencn` varchar(100) NOT NULL,
  `makhoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cn`
--

INSERT INTO `cn` (`macn`, `tencn`, `makhoa`) VALUES
('cn1', 'Công nghệ phần mềm ', 'IT'),
('cn2', 'tin học môi trường ', 'GIS'),
('cn3', 'An ninh mạng', 'IT'),
('cn4', 'Quản lý đất đai', 'GIS'),
('cn5', 'Trí tuệ nhân tạo', 'IT'),
('cn6', 'Quản trị tài chính', 'QK'),
('cn7', 'Kỹ thuật Điện tử - Viễn thông', 'FET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` varchar(20) NOT NULL,
  `tenkhoa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`) VALUES
('FET', 'Công nghệ điện tử '),
('GIS', 'Hệ thống thông tin'),
('IT', 'Công nghệ thông tin'),
('QK', 'Quản trị kinh doanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(20) NOT NULL,
  `tenlop` varchar(50) NOT NULL,
  `macn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `macn`) VALUES
('cntt1', 'công nghệ thông tin 1', 'cn3'),
('cntt2', 'công nghệ thông tin 2', 'cn1'),
('cntt3', 'công nghệ thông tin 3', 'cn5'),
('fet1', 'Công nghệ điện tử 1', 'cn7'),
('qk1', 'Quản trị kinh doanh 1', 'cn6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `mamon` varchar(10) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `sotc` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`mamon`, `tenmon`, `sotc`) VALUES
('BDT', 'Big Data', 3),
('CNPM', 'Công nghệ phần mềm', 2),
('HDH', 'Hệ điều hành', 2),
('LTW', 'Lập trình Web', 3),
('TCC1', 'Toán cao cấp 1', 2),
('TCC2', 'Toán cao cấp 2', 2),
('TCC3', 'Toán cao cấp 3', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nienkhoa`
--

CREATE TABLE `nienkhoa` (
  `manienkhoa` varchar(20) NOT NULL,
  `tennienkhoa` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nienkhoa`
--

INSERT INTO `nienkhoa` (`manienkhoa`, `tennienkhoa`) VALUES
('k10', 'Khóa 10'),
('k7', 'Khóa 7'),
('k8', 'Khóa 8'),
('k9', 'Khóa 9');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masv` varchar(20) NOT NULL,
  `tensv` varchar(100) NOT NULL,
  `namsinh` datetime NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `tamtru` varchar(200) DEFAULT NULL,
  `quequan` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL DEFAULT 0,
  `anh` varchar(200) NOT NULL DEFAULT '0',
  `malop` varchar(20) NOT NULL,
  `manienkhoa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masv`, `tensv`, `namsinh`, `gioitinh`, `tamtru`, `quequan`, `email`, `sdt`, `anh`, `malop`, `manienkhoa`) VALUES
('01', 'Kim Jisoo', '1995-03-01 00:00:00', 'Nam', 'YG', 'tỉnh Gyeonggi, Hàn Quốc.', '01@sv.hcmunre.edu', 3473, 'imgJSP/jisoo.jpg', 'qk1', 'k8'),
('02', 'Lâm Thị Phương Thảo', '2003-06-08 00:00:00', 'Nam', 'Tân Phú', 'Tây Ninh', '02@sv.hcmunre.edu', 1324546, 'imgJSP/thao.jpg', 'cntt3', 'k10'),
('03', 'Kim Jennie', '1996-12-01 00:00:00', 'Nam', 'YG', 'Cheongdam-dong, Gangnam, Seoul', '03@sv.hcmunre.edu', 36735, 'imgJSP/jennie.jpg', 'qk1', 'k8'),
('04', 'Nguyễn Thị Thanh Nhi', '2023-12-12 00:00:00', 'Nữ', 'Tân Phú', 'Nhà Bè', '04@sv.hcmunre.edu', 8627, 'imgJSP/nhi.jpg', 'cntt3', 'k10'),
('05', 'Nguyễn Sơn Lâm', '2003-01-02 00:00:00', 'Nam', 'Thư Viện :>', 'Củ Chi', '05@sv.hcmunre.edu', 2342345, 'imgJSP/lam.jpg', 'cntt3', 'k10'),
('06', 'Hồ Tuấn Khanh', '2023-12-02 00:00:00', 'Nam', 'Tân Bình', 'Hồng Ngự', '06@sv.hcmunre.edu', 963852, 'imgJSP/khanh.jpg', 'cntt3', 'k10'),
('07', 'Nguyễn Hacker', '2002-11-11 00:00:00', 'Nam', 'Tân Bình', 'Hồng Ngự', '07@sv.hcmunre.edu', 797113, 'imgJSP/hacker2.jpg', 'cntt3', 'k9'),
('08', 'Lâm Phương Thảo', '2000-02-01 00:00:00', 'Nam', 'Tân Phú', 'Tây Ninh', '08@sv.hcmunre.edu', 4219984, 'imgJSP/pt.jpg', 'cntt3', 'k7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_account`
--

CREATE TABLE `user_account` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_account`
--

INSERT INTO `user_account` (`Username`, `Password`) VALUES
('lam', '1'),
('phuongthao', '2'),
('pt', 'adaf'),
('tam', '2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cn`
--
ALTER TABLE `cn`
  ADD PRIMARY KEY (`macn`),
  ADD KEY `FK__khoa` (`makhoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`makhoa`) USING BTREE;

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `FK__cn` (`macn`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`mamon`);

--
-- Chỉ mục cho bảng `nienkhoa`
--
ALTER TABLE `nienkhoa`
  ADD PRIMARY KEY (`manienkhoa`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masv`),
  ADD KEY `FK__lop` (`malop`),
  ADD KEY `FK_sinhvien_nienkhoa` (`manienkhoa`);

--
-- Chỉ mục cho bảng `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`Username`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cn`
--
ALTER TABLE `cn`
  ADD CONSTRAINT `FK__khoa` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`Makhoa`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK__cn` FOREIGN KEY (`macn`) REFERENCES `cn` (`macn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `FK__lop` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_sinhvien_nienkhoa` FOREIGN KEY (`manienkhoa`) REFERENCES `nienkhoa` (`manienkhoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
