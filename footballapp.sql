-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2017 lúc 07:27 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `footballapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `thoigian` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `score1` int(5) NOT NULL,
  `name2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `score2` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`id`, `thoigian`, `name1`, `score1`, `name2`, `score2`) VALUES
(21, 'day', 'MU', 0, 'Real1', 0),
(22, 'day', 'MU', 0, 'Real2', 0),
(23, 'day', 'MU', 0, 'MU3', 0),
(24, 'day', 'Real1', 0, 'Real2', 0),
(25, 'day', 'Real1', 0, 'MU3', 0),
(26, 'day', 'Barcalona', 0, 'Real', 0),
(27, 'day', 'Barcalona', 0, 'Barca3', 0),
(28, 'day', 'Barcalona', 0, 'Real3', 0),
(29, 'day', 'Real', 0, 'Barca3', 0),
(30, 'day', 'Real', 0, 'Real3', 0),
(31, 'day', 'MC', 0, 'MU1', 0),
(32, 'day', 'MC', 0, 'Barca2', 0),
(33, 'day', 'MC', 0, 'MC3', 0),
(34, 'day', 'MU1', 0, 'Barca2', 0),
(35, 'day', 'MU1', 0, 'MC3', 0),
(36, 'day', 'Barca1', 0, 'MC1', 0),
(37, 'day', 'Barca1', 0, 'MU2', 0),
(38, 'day', 'Barca1', 0, 'MC2', 0),
(39, 'day', 'MC1', 0, 'MU2', 0),
(40, 'day', 'MC1', 0, 'MC2', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `tgroup` varchar(45) DEFAULT NULL,
  `point` int(5) DEFAULT NULL,
  `win` int(5) DEFAULT NULL,
  `lost` int(5) DEFAULT NULL,
  `draw` int(5) DEFAULT NULL,
  `sdraw` int(11) DEFAULT NULL,
  `wgroup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `team`
--

INSERT INTO `team` (`id`, `name`, `tgroup`, `point`, `win`, `lost`, `draw`, `sdraw`, `wgroup`) VALUES
(1, 'Barcalona', 'B', 0, 0, 0, 0, NULL, NULL),
(2, 'Real', 'B', 0, 0, 0, 0, NULL, NULL),
(3, 'MU', 'A', 0, 0, 0, 0, NULL, NULL),
(4, 'MC', 'C', 0, 0, 0, 0, NULL, NULL),
(5, 'Barca1', 'D', 0, 0, 0, 0, NULL, NULL),
(6, 'Real1', 'A', 0, 0, 0, 0, NULL, NULL),
(7, 'MU1', 'C', 0, 0, 0, 0, NULL, NULL),
(8, 'MC1', 'D', 0, 0, 0, 0, NULL, NULL),
(9, 'Barca2', 'C', 0, 0, 0, 0, NULL, NULL),
(10, 'Real2', 'A', 0, 0, 0, 0, NULL, NULL),
(11, 'MU2', 'D', 0, 0, 0, 0, NULL, NULL),
(12, 'MC2', 'D', 0, 0, 0, 0, NULL, NULL),
(13, 'Barca3', 'B', 0, 0, 0, 0, NULL, NULL),
(14, 'Real3', 'B', 0, 0, 0, 0, NULL, NULL),
(15, 'MU3', 'A', 0, 0, 0, 0, NULL, NULL),
(16, 'MC3', 'C', 0, 0, 0, 0, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
