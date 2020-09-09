-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 03:38 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `contribution`
--

CREATE TABLE `contribution` (
  `id` int(50) NOT NULL,
  `id_user` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `prix` double NOT NULL,
  `nbr_copie` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contribution`
--

INSERT INTO `contribution` (`id`, `id_user`, `nom`, `location`, `description`, `image`, `prix`, `nbr_copie`) VALUES
(72, 52, 'yuccccc', 'ccccctt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ', '15996004805dbfe63759658.png', 80, 77),
(73, 56, 'oioio', 'oioioi', 'oioioio', '1583108667wifi-pro.png', 77, 77),
(74, 54, 'LOREM', 'LOREM', 'LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM', '15831087135dbfe63759658.png', 88, 88),
(75, 52, 'jkjj', 'kjkjlkjDDDD', 'lkjlkjkljljsssss', '1583109917p020-1000x1000.jpg', 99, 99),
(76, 55, 'uiuiuiu', 'iuiuiu', 'iiuoiuoiu', '15831617335dbfe5eb257e4.png', 77, 77),
(77, 52, 'ioioio', 'popopo', 'posdhskdsldkjslkdjslkdjskl', '15996004455dc0a52819c88.png', 23, 44);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `nom`, `email`, `password`, `role`) VALUES
(52, '4b210226978f8832f3fd048d60465253.jpg', 'Rebecca jems', 'rebecca99@gmail.com', 'icreative@2019', NULL),
(54, 'imrs.png', 'jimmy leggar', 'jimmy@gmail.com', 'icreative@2019', NULL),
(55, 'OTk2NjQuanBn.jpg', 'sofia lara', 'sofy@gmail.com', 'icreative@2019', NULL),
(56, 'portrait-faces-and-photography-french-woman-cover.jpg', 'emma lovis', 'emma@gmail.com', 'icreative@2019', NULL),
(57, 'p020-1000x1000.jpg', 'ismail bourhim', 'ismailbourhim9@gmail.com', 'ismail123', 'admin'),
(64, '5dbfe63759658.png', 'sofia polland', 'sofia99@gmail.com', 'sofia99', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contribution`
--
ALTER TABLE `contribution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contribution`
--
ALTER TABLE `contribution`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contribution`
--
ALTER TABLE `contribution`
  ADD CONSTRAINT `contribution_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
