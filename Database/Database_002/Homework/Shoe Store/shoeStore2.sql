-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 19, 2022 at 07:59 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeStore2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Adidas');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `gender_id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `gender_id`, `name`) VALUES
(1, 1, 'Original'),
(2, 1, 'bóng đá'),
(3, 1, 'chạy'),
(4, 1, 'tập luyện'),
(5, 1, 'bóng rổ'),
(6, 1, 'quần vợt'),
(7, 2, 'Original'),
(8, 2, 'chạy'),
(9, 2, 'tập luyện'),
(10, 2, 'quần vợt'),
(11, 2, 'essential');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(2, 'Đen'),
(5, 'Đỏ'),
(6, 'Hồng'),
(1, 'Trắng'),
(4, 'Xám'),
(3, 'Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `color_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`color_id`, `product_id`) VALUES
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(5, 3),
(6, 3),
(2, 4),
(4, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Nam'),
(2, 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` bigint NOT NULL,
  `date` date DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `product_id`, `price`, `date`, `description`) VALUES
(1, 1, 2500000, NULL, NULL),
(2, 2, 3600000, NULL, NULL),
(3, 3, 5000000, NULL, NULL),
(4, 4, 3500000, NULL, NULL),
(5, 5, 1995000, NULL, 'Khuyến mãi'),
(6, 5, 2850000, NULL, NULL),
(7, 6, 2400000, NULL, NULL),
(8, 7, 3000000, NULL, NULL),
(9, 8, 1800000, NULL, NULL),
(10, 9, 2850000, NULL, 'giá gốc'),
(11, 9, 1995000, NULL, 'khuyến mãi'),
(12, 10, 3800000, NULL, 'giá gốc'),
(13, 10, 2660000, NULL, 'khuyến mãi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `status` text NOT NULL,
  `gender_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `image`, `category_id`, `brand_id`, `status`, `gender_id`, `quantity`) VALUES
(1, 'GIÀY SUPERSTAR', 'Lớp lót bằng vải jersey', NULL, 1, 1, 'Còn hàng', 1, 50),
(2, 'GIÀY NMD_R1 PRIMEBLUE', 'Thân giày bằng vải dệt kim co giãn', NULL, 1, 1, 'Còn hàng', 1, 20),
(3, 'GIÀY ĐÁ BÓNG PREDATOR EDGE.1 LOW FIRM GROUND', 'Thân giày adidas PRIMEKNIT', NULL, 2, 1, 'Còn hàng', 1, 30),
(4, 'GIÀY ULTRABOOST 21', 'Thân giày adidas Primeknit+', NULL, 3, 1, 'Còn hàng', 1, 50),
(5, 'GIÀY ALPHATORSION 2.0', 'Các chi tiết phủ ngoài bằng TPU tạo độ nâng đỡ', NULL, 4, 1, 'Còn hàng', 1, 50),
(6, 'GIÀY STAN SMITH', 'Lớp lót bằng chất liệu tổng hợp', NULL, 7, 1, 'Còn hàng', 2, 50),
(7, 'GIÀY ALPHABOUNCE', 'Thân giày bằng vải lưới thoáng khí, co giãn và không đường may', NULL, 8, 1, 'Còn hàng', 2, 25),
(8, 'GIÀY LITE RACER REBOLD', 'Đế giữa Cloudfoam chạm khắc', NULL, 11, 1, 'Còn hàng', 2, 40),
(9, 'GIÀY ALPHATORSION 2.0', 'Đế giữa chất liệu EVA và Bounce mật độ kép', NULL, 9, 1, 'Còn hàng', 2, 1),
(10, 'GIÀY BARRICADE', 'Các miếng đệm mút xốp ở gót giày', NULL, 10, 1, 'Còn hàng', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`) VALUES
(1, '8 UK'),
(2, '9 UK'),
(3, '10 UK'),
(4, '11 UK'),
(5, '3 UK'),
(6, '4 UK'),
(7, '5 UK'),
(8, '6 UK');

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `size_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `size_product`
--

INSERT INTO `size_product` (`size_id`, `product_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(7, 1),
(8, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(7, 2),
(1, 3),
(2, 3),
(3, 3),
(5, 3),
(6, 3),
(7, 3),
(1, 4),
(4, 4),
(5, 4),
(8, 6),
(8, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color` (`color`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`color_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`size_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`);

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `color_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Constraints for table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `size_product_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`),
  ADD CONSTRAINT `size_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
