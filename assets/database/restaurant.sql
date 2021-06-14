-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 06:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`id`, `type_id`, `category_name`) VALUES
(1, 1, 'Burger'),
(2, 1, 'Pizza'),
(3, 2, 'Tandoori'),
(4, 3, 'Soup'),
(5, 1, 'Sandwich'),
(6, 2, 'Pasta'),
(7, 1, 'Fried Items'),
(8, 4, 'Faloda');

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` int(11) NOT NULL,
  `calorie` int(11) NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`id`, `type_id`, `category_id`, `title`, `description`, `unit_price`, `calorie`, `ingredients`) VALUES
(1, 1, 1, 'Classic Burger', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officia facilis voluptates iste veritatis vel debitis a excepturi esse unde accusamus nemo, eius rem quaerat adipisci?', 16, 472, 'Fat-26g Saturates-10g Sugar-18g Salt-1g'),
(2, 1, 1, 'Double Burger', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officia facilis voluptates iste veritatis vel debitis a excepturi esse unde accusamus nemo, eius rem quaerat adipisci?', 18, 336, 'Fat-26g Saturates-10g Sugar-18g Salt-1g'),
(3, 1, 1, 'Green Burger', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officia facilis voluptates iste veritatis vel debitis a excepturi esse unde accusamus nemo, eius rem quaerat adipisci?', 20, 210, 'Fat-26g Saturates-10g Sugar-18g Salt-1g'),
(4, 3, 4, 'Corn Soup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.', 20, 340, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(5, 3, 4, 'Vegetable Soup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.', 25, 340, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(6, 1, 5, 'Egg Sandwich', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 19, 400, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(7, 1, 5, 'Club Sandwich', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 21, 400, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(8, 2, 2, 'Chicken Pizza', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 24, 350, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(9, 2, 2, 'Tandoori Pizza', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 26, 450, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(10, 3, 8, 'Royel Faloda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 14, 480, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(11, 3, 8, 'Fruits Faloda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 17, 490, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(12, 3, 6, 'Sweet Chili Pasta', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 24, 330, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(13, 3, 6, 'Red Chili Pasta', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 26, 370, 'Fat-26g, Saturates-10g, Sugar-18g, Salt-1g'),
(14, 3, 7, 'Chicken Fry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 26, 440, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(15, 3, 7, 'Chicken Toast', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 20, 410, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(16, 4, 4, 'Corn Soup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 19, 210, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(17, 4, 4, 'Special Corn Soup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 24, 250, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(18, 2, 3, 'Tandoori', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 20, 330, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(19, 2, 3, 'Chicken Tandoori', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 26, 450, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(20, 4, 1, 'Chicken Burger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 24, 430, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g'),
(21, 4, 1, 'Beef cheese Burger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 28, 460, 'Fat-26g,Saturates-10g, Sugar-18g, Salt-1g');

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_type`
--

INSERT INTO `food_type` (`id`, `type_name`) VALUES
(1, 'fast food'),
(2, 'Indian'),
(3, 'Thai'),
(4, 'Chinese');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_category`
--
ALTER TABLE `food_category`
  ADD CONSTRAINT `food_category_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `food_type` (`id`);

--
-- Constraints for table `food_item`
--
ALTER TABLE `food_item`
  ADD CONSTRAINT `food_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`id`),
  ADD CONSTRAINT `food_item_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `food_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
