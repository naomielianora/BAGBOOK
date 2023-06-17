-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 07:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bagbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `idBag` int(11) NOT NULL,
  `bag_name` varchar(20) NOT NULL,
  `bag_photo` blob DEFAULT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `color` varchar(20) NOT NULL,
  `idSubCat` int(11) NOT NULL,
  `idBrand` int(11) NOT NULL,
  `idDes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bag`
--

INSERT INTO `bag` (`idBag`, `bag_name`, `bag_photo`, `length`, `width`, `height`, `color`, `idSubCat`, `idBrand`, `idDes`) VALUES
(1, 'Neverfull GM', NULL, 39, 32, 19, 'Beige', 6, 2, 1),
(2, 'Lady Dior', NULL, 24, 20, 11, 'Black', 4, 4, 3),
(3, 'Faye Day', NULL, 29, 23, 14, 'Grey', 7, 3, 2),
(4, 'Puzzle', NULL, 23, 19, 12, 'White', 8, 5, 4),
(5, 'Mini City', NULL, 23, 18, 10, 'Black', 9, 7, 5),
(6, 'Graffiti Backpack', NULL, 28, 32, 15, 'Multicolor', 10, 3, 2),
(7, 'Le Pliage Neo', NULL, 30, 28, 20, 'Navy Blue', 11, 2, 6),
(8, 'Classic Backpack', NULL, 25, 30, 12, 'Brown', 9, 2, 1),
(9, 'Speedy 35', NULL, 35, 23, 18, 'Monogram', 12, 2, 1),
(10, 'Medium Phantom', NULL, 37, 29, 16, 'Cognac', 13, 5, 4),
(11, 'Rivington PM', NULL, 32, 28, 16, 'Damier Ebene', 12, 2, 1),
(12, 'Striped Tote', NULL, 40, 35, 14, 'Black/White', 14, 4, 3),
(13, 'Soho Disco', NULL, 21, 15, 7, 'Red', 15, 3, 2),
(14, 'Envelope Wristlet', NULL, 27, 17, 2, 'Blush Pink', 16, 7, 5),
(15, 'Box Clutch', NULL, 19, 12, 4, 'Gold', 17, 4, 3),
(16, 'Satin Clutch', NULL, 24, 11, 6, 'Navy Blue', 18, 3, 2),
(17, 'Mini Luggage', NULL, 22, 21, 12, 'Blue', 19, 5, 4),
(18, 'Camera Bag', NULL, 18, 22, 8, 'Beige', 20, 2, 1),
(19, 'Dionysus Mini', NULL, 16, 10, 4, 'Pink', 21, 3, 2),
(20, 'Saddle Crossbody', NULL, 21, 18, 6, 'Brown', 22, 4, 3),
(21, 'Large Shopper Tote', NULL, 38, 32, 20, 'Taupe', 12, 9, 1),
(22, 'Structured Work Tote', NULL, 36, 27, 16, 'Black', 12, 10, 1),
(23, 'Metallic Evening Clu', NULL, 20, 12, 5, 'Silver', 15, 5, 1),
(24, 'Satin Box Clutch', NULL, 18, 10, 4, 'Red', 17, 4, 1),
(25, 'Mini Crossbody', NULL, 22, 20, 10, 'Caramel', 18, 2, 1),
(26, 'Leather Saddle Bag', NULL, 26, 24, 11, 'Burgundy', 21, 5, 1),
(27, 'Convertible Chain Ba', NULL, 20, 16, 8, 'White', 23, 7, 1),
(28, 'Quilted Mini Bag', NULL, 18, 15, 6, 'Pink', 24, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(11) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idBrand`, `brand_name`) VALUES
(1, 'Coach'),
(2, 'Louis Vuitton'),
(3, 'Gucci'),
(4, 'Chanel'),
(5, 'Prada'),
(6, 'Hermès'),
(7, 'Michael Kors'),
(8, 'Fendi'),
(9, 'Burberry'),
(10, 'Givenchy');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCat` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCat`, `cat_name`) VALUES
(1, 'Handbags'),
(2, 'Backpacks'),
(3, 'Tote Bags'),
(4, 'Clutches'),
(5, 'Crossbody Bags');

-- --------------------------------------------------------

--
-- Table structure for table `designer`
--

CREATE TABLE `designer` (
  `idDes` int(11) NOT NULL,
  `des_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designer`
--

INSERT INTO `designer` (`idDes`, `des_name`) VALUES
(1, 'No Designer'),
(2, 'Nicolas Ghesquière'),
(3, 'Alessandro Michele'),
(4, 'Virginie Viard'),
(5, 'Miuccia Prada'),
(6, 'Nadège Vanhee-Cybuls');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `idU1` int(11) NOT NULL,
  `idU2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `idReview` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idBag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`idReview`, `desc`, `value`, `idUser`, `idBag`) VALUES
(241, 'Great size for everyday use.', 5, 1, 1),
(242, 'Not as spacious as expected.', 3, 2, 1),
(243, 'Excellent quality and craftsmanship.', 5, 3, 1),
(244, 'Love the iconic design.', 4, 4, 1),
(245, 'Comfortable and practical.', 5, 1, 5),
(246, 'Vibrant colors, perfect for travel.', 4, 2, 5),
(247, 'Durable and lightweight.', 4, 3, 5),
(248, 'Could use more internal pockets.', 3, 4, 5),
(249, 'Spacious and versatile.', 5, 1, 9),
(250, 'Beautiful and elegant.', 4, 2, 9),
(251, 'Not suitable for heavy items.', 3, 3, 9),
(252, 'Classic design that never goes out of style.', 5, 4, 9),
(253, 'Perfect for a night out.', 5, 1, 15),
(254, 'Compact and holds essentials.', 4, 2, 15),
(255, 'The color is more vibrant in person.', 5, 3, 15),
(256, 'Could be slightly larger.', 3, 4, 15),
(257, 'Ideal for daily use.', 4, 1, 19),
(258, 'Strap could be more adjustable.', 3, 2, 19),
(259, 'Love the unique details.', 4, 3, 19),
(260, 'Not enough room for essentials.', 3, 4, 19),
(261, 'Roomy and stylish.', 4, 1, 25),
(262, 'Great for work and travel.', 5, 2, 25),
(263, 'Not as sturdy as expected.', 3, 3, 25),
(264, 'Good value for the price.', 4, 4, 25),
(265, 'Eye-catching and glamorous.', 5, 1, 21),
(266, 'Compact and convenient.', 4, 2, 21),
(267, 'Received the wrong color.', 2, 3, 21),
(268, 'Stylish and elegant.', 4, 4, 21),
(269, 'Good quality, but the price is high.', 4, 1, 22),
(270, 'Versatile and easy to carry.', 5, 2, 22),
(271, 'Love the adjustable strap.', 4, 3, 22),
(272, 'Not suitable for larger items.', 3, 4, 22),
(273, 'Great value for the quality.', 5, 1, 2),
(274, 'The size is perfect for everyday use.', 4, 2, 2),
(275, 'The color is even more beautiful in person.', 5, 3, 2),
(276, 'The stitching is coming undone.', 2, 4, 2),
(277, 'Very sturdy and well-made.', 5, 1, 3),
(278, 'Not enough compartments for organization.', 3, 2, 3),
(279, 'The design is timeless and elegant.', 5, 3, 3),
(280, 'The strap is uncomfortable.', 2, 4, 3),
(281, 'I love the unique shape of this bag.', 4, 1, 4),
(282, 'The material feels luxurious.', 5, 2, 4),
(283, 'The bag arrived with a small stain.', 3, 3, 4),
(284, 'The white color gets dirty easily.', 2, 4, 4),
(285, 'Perfect size for everyday essentials.', 4, 1, 5),
(286, 'The backpack straps are adjustable and comfortable.', 5, 2, 5),
(287, 'The bag is starting to show signs of wear.', 3, 3, 5),
(288, 'The multicolor design is eye-catching.', 4, 4, 5),
(289, 'Great bag for travel and everyday use.', 5, 1, 6),
(290, 'The graffiti pattern is unique and fun.', 4, 2, 6),
(291, 'The zippers are not very smooth.', 3, 3, 6),
(292, 'The navy blue color is rich and beautiful.', 4, 4, 6),
(293, 'The bag has a classic and timeless design.', 4, 1, 7),
(294, 'The material feels durable and high-quality.', 5, 2, 7),
(295, 'The bag is larger than expected.', 3, 3, 7),
(296, 'The brown color goes with everything.', 4, 4, 7),
(297, 'The monogram print is iconic.', 5, 1, 8),
(298, 'The bag is spacious and holds a lot.', 4, 2, 8),
(299, 'The bag arrived with a minor scratch.', 3, 3, 8),
(300, 'The black and white stripes are chic.', 4, 4, 8),
(301, 'The red color is vibrant and eye-catching.', 5, 1, 10),
(302, 'The bag is lightweight and easy to carry.', 4, 2, 10),
(303, 'The strap is not adjustable.', 2, 3, 10),
(304, 'The gold color adds a touch of luxury.', 4, 4, 10),
(305, 'The navy blue satin is elegant and luxurious.', 5, 1, 11),
(306, 'The bag is spacious enough for essentials.', 4, 2, 11),
(307, 'The clutch arrived with a loose thread.', 2, 3, 11),
(308, 'The bag has a timeless and versatile design.', 4, 4, 11),
(309, 'The blue color is vibrant and beautiful.', 4, 1, 12),
(310, 'The bag is small and lightweight.', 3, 2, 12),
(311, 'The pink color is softer than expected.', 4, 3, 12),
(312, 'The brown color is versatile and goes with everything.', 4, 4, 12),
(313, 'The bag is perfect for travel.', 4, 1, 13),
(314, 'The strap is detachable and convenient.', 3, 2, 13),
(315, 'The bag arrived with a small scuff.', 2, 3, 13),
(316, 'The damier ebene pattern is classic.', 4, 4, 13),
(317, 'The bag is small and compact.', 4, 1, 14),
(318, 'The blush pink color is feminine and pretty.', 4, 2, 14),
(319, 'The bag arrived with a scratch on the hardware.', 2, 3, 14),
(320, 'The black leather is sleek and sophisticated.', 4, 4, 14),
(321, 'The taupe color is versatile and goes with everything.', 4, 1, 15),
(322, 'The bag is spacious and fits all my belongings.', 5, 2, 15),
(323, 'The stitching is starting to come loose.', 2, 3, 15),
(324, 'The price is reasonable for the quality.', 4, 4, 15),
(325, 'The black color is sleek and professional.', 4, 1, 16),
(326, 'The bag is sturdy and holds its shape.', 5, 2, 16),
(327, 'The bag arrived with a small stain.', 3, 3, 16),
(328, 'The bag is great for work and travel.', 4, 4, 16),
(329, 'The metallic finish adds a touch of glam.', 5, 1, 17),
(330, 'The bag is compact and holds all my essentials.', 4, 2, 17),
(331, 'Received the wrong color.', 2, 3, 17),
(332, 'The red satin is luxurious and elegant.', 4, 4, 17),
(333, 'The price is high for the quality.', 4, 1, 18),
(334, 'The bag is versatile and can be worn multiple ways.', 5, 2, 18),
(335, 'The strap is not adjustable.', 3, 3, 18),
(336, 'The pink color is soft and feminine.', 4, 4, 18),
(337, 'The bag is well-made and durable.', 4, 1, 19),
(338, 'The size is perfect for everyday use.', 4, 2, 19),
(339, 'The strap is not adjustable.', 2, 3, 19),
(340, 'The burgundy color is rich and beautiful.', 4, 4, 19),
(341, 'The bag is versatile and can be worn as a shoulder bag or crossbody.', 4, 1, 20),
(342, 'The leather is soft and smooth.', 5, 2, 20),
(343, 'The bag arrived with a scratch on the hardware.', 2, 3, 20),
(344, 'The white color is clean and fresh.', 4, 4, 20),
(345, 'The bag is small and compact.', 4, 1, 21),
(346, 'The chain strap is not very comfortable.', 3, 2, 21),
(347, 'The bag is versatile and can be dressed up or down.', 4, 3, 21),
(348, 'The quilted pattern adds a touch of luxury.', 4, 4, 21),
(349, 'The bag is a great size for everyday use.', 4, 1, 22),
(350, 'The material feels durable and high-quality.', 5, 2, 22),
(351, 'The bag arrived with a small stain.', 3, 3, 22),
(352, 'The strap is not adjustable.', 2, 4, 22),
(353, 'The bag is compact and holds essentials.', 4, 1, 23),
(354, 'The silver color is shiny and eye-catching.', 4, 2, 23),
(355, 'The bag arrived with a scratch on the hardware.', 2, 3, 23),
(356, 'The red color is vibrant and bold.', 4, 4, 23),
(357, 'The price is high for the quality.', 4, 1, 24),
(358, 'The bag is versatile and can be worn as a shoulder bag or crossbody.', 5, 2, 24),
(359, 'The strap is not adjustable.', 3, 3, 24),
(360, 'The pink color is feminine and pretty.', 4, 4, 24),
(361, 'Roomy and stylish.', 4, 1, 25),
(362, 'Great for work and travel.', 5, 2, 25),
(363, 'Not as sturdy as expected.', 3, 3, 25),
(364, 'Good value for the price.', 4, 4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `review_value`
--

CREATE TABLE `review_value` (
  `review_value` int(11) NOT NULL,
  `value_desc` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `review_value`
--

INSERT INTO `review_value` (`review_value`, `value_desc`) VALUES
(1, 'sangat jelek'),
(2, 'jelek'),
(3, 'biasa saja'),
(4, 'bagus'),
(5, 'sangat bagus');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `idSubCat` int(11) NOT NULL,
  `subCat_name` varchar(20) NOT NULL,
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`idSubCat`, `subCat_name`, `idCat`) VALUES
(1, 'Leather', 1),
(2, 'Satchel', 1),
(3, 'Hobo', 1),
(4, 'Shoulder', 1),
(5, 'Bucket', 1),
(6, 'Tote', 1),
(7, 'Messenger', 1),
(8, 'Crossbody', 1),
(9, 'Canvas', 2),
(10, 'Leather', 2),
(11, 'Travel', 2),
(12, 'Laptop', 2),
(13, 'Fashion', 2),
(14, 'Nylon', 3),
(15, 'Canvas', 3),
(16, 'Beach', 3),
(17, 'Designer', 3),
(18, 'Work', 3),
(19, 'Evening', 4),
(20, 'Box', 4),
(21, 'Envelope', 4),
(22, 'Hardcase', 4),
(23, 'Wristlet', 4),
(24, 'Chain', 5),
(25, 'Leather', 5),
(26, 'Mini', 5),
(27, 'Saddle', 5),
(28, 'Convertible', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(35) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `user_photo` blob DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `full_name`, `email`, `user_photo`, `status`) VALUES
(1, 'admin', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', NULL, NULL, NULL, 0),
(2, 'naomi_elianora', 'LhvDh4lyX/26hDNrW9XuPQQZisGax4MVxN4wt6bkOuk=', 'Naomi Elianora', 'naomielianora@gmail.com', NULL, 1),
(3, 'dianestrii', 'y7EiYvVivh2Xle7nveCsJLRMNuA8b7A7b0mn0Vxj2zg=', 'Dian Estri', 'dianestri@gmail.com', NULL, 1),
(4, 'ghabrielg', 'G4FgmSJilFrqgU4cdaBheNQHN50P5UqrwHwdn+hyC5k=', 'Ghabriel Galyndeo', 'ghabs@gmail.com', NULL, 1),
(5, 'john123', 'qF3JLrBcRGQibxd5wsNZycmQVh8I7q7LeJtQ4fET+0M=', 'John Doe', 'john123@gmail.com', NULL, 1),
(6, 'mary456', 'sq9xgSsy95oG2r4Q+VL2K8MXlaQW6Kx8aEYIdJ4QjVU=', 'Mary Smith', 'mary456@yahoo.com', NULL, 1),
(7, 'alex789', 'ONPQgI1ip3kGOn2l45b6r9sVqy6wR+4KnqUp02hwfCo=', 'Alex Johnson', 'alex789@gmail.com', NULL, 1),
(8, 'sarah12', 'z9/3IGZM3ApIYK1cM0T+f+uIopg3h/REwgLvTq3Fj3o=', 'Sarah Wilson', 'sarah12@yahoo.com', NULL, 1),
(9, 'mike34', 'ssFOn3y9bpWzFV82SwGKqev3WhzmFC9zq6eU1IRlnxM=', 'Mike Anderson', 'mike34@gmail.com', NULL, 1),
(10, 'emily56', 'ztKJrVfAtD6iZab3QOqK2qQ1Oz2F4PNtHxLXfgWLebM=', 'Emily Davis', 'emily56@yahoo.com', NULL, 1),
(11, 'david78', 'YzNSFtZ/IjvDylD6mmIaPXtQhUh2GWGvTlqf+/vT7jY=', 'David Taylor', 'david78@gmail.com', NULL, 1),
(12, 'lisa90', 'BmrXhO4p/5AHHr6KDI3txZddwZt3R6SSAblnMPrTdoQ=', 'Lisa Brown', 'lisa90@yahoo.com', NULL, 1),
(13, 'peter23', 'N+3EXwG5pqJZ80HJy/kz2mD9aJO6fYSmZcA99Gp5Lbo=', 'Peter Martinez', 'peter23@gmail.com', NULL, 1),
(14, 'julia45', 'j2/Edw/n7+XXvOeL4m+pDlE1TMFFkER+cxLO4STkCg4=', 'Julia Thompson', 'julia45@yahoo.com', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`idBag`),
  ADD KEY `fk_sc_bag` (`idSubCat`),
  ADD KEY `fk_brand_bag` (`idBrand`),
  ADD KEY `fk_des_brand` (`idDes`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`),
  ADD UNIQUE KEY `UK_brand` (`idBrand`,`brand_name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCat`),
  ADD UNIQUE KEY `UK_category` (`idCat`,`cat_name`);

--
-- Indexes for table `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`idDes`),
  ADD UNIQUE KEY `UK_des` (`idDes`,`des_name`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD KEY `fk_following` (`idU1`),
  ADD KEY `fk_followed` (`idU2`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idReview`),
  ADD KEY `fk_review_value` (`value`),
  ADD KEY `fk_user_review` (`idUser`),
  ADD KEY `fk_bag_review` (`idBag`);

--
-- Indexes for table `review_value`
--
ALTER TABLE `review_value`
  ADD PRIMARY KEY (`review_value`),
  ADD UNIQUE KEY `UK_review_value` (`review_value`,`value_desc`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`idSubCat`),
  ADD UNIQUE KEY `UK_sub_category` (`idSubCat`,`subCat_name`),
  ADD KEY `fk_sc_c` (`idCat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `UK_user` (`username`,`email`,`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `idBag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designer`
--
ALTER TABLE `designer`
  MODIFY `idDes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `idReview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `review_value`
--
ALTER TABLE `review_value`
  MODIFY `review_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `idSubCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bag`
--
ALTER TABLE `bag`
  ADD CONSTRAINT `fk_brand_bag` FOREIGN KEY (`idBrand`) REFERENCES `brand` (`idBrand`),
  ADD CONSTRAINT `fk_des_brand` FOREIGN KEY (`idDes`) REFERENCES `designer` (`idDes`),
  ADD CONSTRAINT `fk_sc_bag` FOREIGN KEY (`idSubCat`) REFERENCES `sub_category` (`idSubCat`);

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `fk_followed` FOREIGN KEY (`idU2`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `fk_following` FOREIGN KEY (`idU1`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_bag_review` FOREIGN KEY (`idBag`) REFERENCES `bag` (`idBag`),
  ADD CONSTRAINT `fk_review_value` FOREIGN KEY (`value`) REFERENCES `review_value` (`review_value`),
  ADD CONSTRAINT `fk_user_review` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `fk_sc_c` FOREIGN KEY (`idCat`) REFERENCES `category` (`idCat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
