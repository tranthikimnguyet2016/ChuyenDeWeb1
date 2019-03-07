-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2019 at 12:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `airline_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `airline_name`, `city_id`, `country_id`) VALUES
(1, 'Việt Nam airline', 1, 1),
(2, 'Vietjet', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_name` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`, `city_id`, `country_id`) VALUES
(1, 'Long Thành', 5, 0),
(2, 'Tân sơn nhất', 1, 0),
(3, 'Nội Bài', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `city_code` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_code`, `country_id`) VALUES
(1, 'Hồ Chí Minh', 'SG', 1),
(2, 'Hà Nội', 'HN', 1),
(3, 'Đà Nẵng', 'DDN', 1),
(4, 'Bình Dương', 'BD', 1),
(5, 'Đồng Nai', 'DNA', 1),
(6, 'Khánh Hòa', 'KH', 1),
(7, 'Hải Phòng', 'HP', 1),
(8, 'Long An', 'LA', 1),
(9, 'Quảng Nam', 'QNA', 1),
(10, 'Bà Rịa Vũng Tàu', 'VT', 1),
(11, 'Đắk Lắk', 'DDL', 1),
(12, 'Cần Thơ', 'CT', 1),
(13, 'Bình Thuận  ', 'BTH', 1),
(14, 'Lâm Đồng', 'LDD', 1),
(15, 'Thừa Thiên Huế', 'TTH', 1),
(16, 'Kiên Giang', 'KG', 1),
(17, 'Bắc Ninh', 'BN', 1),
(18, 'Quảng Ninh', 'QNI', 1),
(19, 'Thanh Hóa', 'TH', 1),
(20, 'Nghệ An', 'NA', 1),
(21, 'Hải Dương', 'HD', 1),
(22, 'Gia Lai', 'GL', 1),
(23, 'Bình Phước', 'BP', 1),
(24, 'Hưng Yên', 'HY', 1),
(25, 'Bình Định', 'BDD', 1),
(26, 'Tiền Giang', 'TG', 1),
(27, 'Thái Bình', 'TB', 1),
(28, 'Bắc Giang', 'BG', 1),
(29, 'Hòa Bình', 'HB', 1),
(30, 'An Giang', 'AG', 1),
(31, 'Vĩnh Phúc', 'VP', 1),
(32, 'Tây Ninh', 'TNI', 1),
(33, 'Thái Nguyên', 'TN', 1),
(34, 'Lào Cai', 'LCA', 1),
(35, 'Nam Định', 'NDD', 1),
(36, 'Quảng Ngãi', 'QNG', 1),
(37, 'Bến Tre', 'BTR', 1),
(38, 'Đắk Nông', 'DNO', 1),
(39, 'Cà Mau', 'CM', 1),
(40, 'Vĩnh Long', 'VL', 1),
(41, 'Ninh Bình', 'NB', 1),
(42, 'Phú Thọ', 'PT', 1),
(43, 'Ninh Thuận', 'NT', 1),
(44, 'Phú Yên', 'PY', 1),
(45, 'Hà Nam', 'HNA', 1),
(46, 'Hà Tĩnh', 'HT', 1),
(47, 'Đồng Tháp', 'DDT', 1),
(48, 'Sóc Trăng', 'ST', 1),
(49, 'Kon Tum', 'KT', 1),
(50, 'Quảng Bình', 'QB', 1),
(51, 'Quảng Trị', 'QT', 1),
(52, 'Trà Vinh', 'TV', 1),
(53, 'Hậu Giang', 'HGI', 1),
(54, 'Sơn La', 'SL', 1),
(55, 'Bạc Liêu', 'BL', 1),
(56, 'Yên Bái', 'YB', 1),
(57, 'Tuyên Quang', 'TQ', 1),
(58, 'Điện Biên', 'DDB', 1),
(59, 'Lai Châu', 'LCH', 1),
(60, 'Lạng Sơn', 'LS', 1),
(61, 'Hà Giang', 'HG', 1),
(62, 'Bắc Kạn', 'BK', 1),
(63, 'Cao Bằng', 'CB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Việt Nam'),
(2, 'Nhật Bản'),
(6, 'Trung Quốc'),
(8, 'Thai Lan'),
(10, 'Mỹ');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flight_code` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `airline_id` int(11) NOT NULL,
  `flight_class_id` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrive` date NOT NULL,
  `time_depart` time NOT NULL,
  `time_arrive` time NOT NULL,
  `duration` time NOT NULL,
  `city_depart_id` int(11) NOT NULL,
  `city_arrive_id` int(11) NOT NULL,
  `trainsit` int(11) NOT NULL,
  `time_trainsit` time NOT NULL,
  `total_person` int(11) NOT NULL,
  `flight_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_booking`
--

CREATE TABLE `flight_booking` (
  `flight_booking_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `price_detail` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight_class`
--

CREATE TABLE `flight_class` (
  `flight_class_id` int(11) NOT NULL,
  `flight_class_name` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL,
  `passenger_title` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `passenger_firstname` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `passenger_lastname` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `cart_number` int(55) NOT NULL,
  `name_card` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `ccv_code` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_email` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `users_name` varchar(55) COLLATE utf8_vietnamese_ci NOT NULL,
  `users_password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `users_birthday` date DEFAULT NULL,
  `users_gender` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `users_address` varchar(55) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `attempt` tinyint(4) DEFAULT NULL,
  `users_phone` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `timeCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_email`, `users_name`, `users_password`, `users_birthday`, `users_gender`, `users_address`, `last_access`, `attempt`, `users_phone`, `timeCreate`) VALUES
(2, 'dinhcao@outlook.com', 'đỉnh cao của tôi', '$2y$10$8LQ4YqkkfMqwklbDWBH3.uS556blGX2ZH9Hbz4gUjwi30JpT48WVe', NULL, NULL, NULL, '2019-03-02 10:03:09', 0, '346767602', '2019-03-02 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `flight_class_id` (`flight_class_id`),
  ADD KEY `city_arrive_id` (`city_arrive_id`),
  ADD KEY `city_depart_id` (`city_depart_id`),
  ADD KEY `flight_class_id_2` (`flight_class_id`),
  ADD KEY `airline_id` (`airline_id`);

--
-- Indexes for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD PRIMARY KEY (`flight_booking_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `price_detail` (`price_detail`),
  ADD KEY `price_detail_2` (`price_detail`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `flight_class`
--
ALTER TABLE `flight_class`
  ADD PRIMARY KEY (`flight_class_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_booking`
--
ALTER TABLE `flight_booking`
  MODIFY `flight_booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_class`
--
ALTER TABLE `flight_class`
  MODIFY `flight_class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airline`
--
ALTER TABLE `airline`
  ADD CONSTRAINT `airline_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`),
  ADD CONSTRAINT `airline_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`flight_class_id`) REFERENCES `flight_class` (`flight_class_id`),
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`city_depart_id`) REFERENCES `cities` (`city_id`),
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`city_arrive_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD CONSTRAINT `flight_booking_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`),
  ADD CONSTRAINT `flight_booking_ibfk_3` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `flight_booking_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
