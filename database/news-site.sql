-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 06:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(30, 'Sports', 1),
(32, 'Entertainment', 2),
(34, 'Politics', 2),
(36, 'Health', 3),
(37, 'Economic-test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(36, 'first test', 'This is some text for testing news', '32', '17 Nov, 2021', 42, 'entertaintment-news.jpg'),
(42, 'Health news', 'This is some text related to health. This is some text related to health. This is some text related to health. This is some text related to health. This is some text related to health. This is some text related to health. This is some text related to health. This is some text related to health.', '36', '21 Nov, 2021', 42, 'health1.jpg'),
(41, 'Politics news', 'this is some politics news for you to read. this is some politics news for you to read. this is some politics news for you to read. this is some politics news for you to read. this is some politics news for you to read. this is some politics news for you to read.', '34', '21 Nov, 2021', 42, 'politics1.jpg'),
(43, 'Sport news', 'This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news. This is some sport news.', '30', '21 Nov, 2021', 42, 'health2.jpg'),
(44, 'Politics news2', 'Politic is used to make aware us about situation around the world.Politic is used to make aware us about situation around the world.Politic is used to make aware us about situation around the world.Politic is used to make aware us about situation around the world.Politic is used to make aware us about situation around the world.', '34', '21 Nov, 2021', 42, 'politics2.jpg'),
(45, 'Health news2', 'health always comes first. health always comes first. health always comes first. health always comes first. health always comes first. health always comes first. health always comes first. health always comes first. health always comes first. health always comes first.', '36', '21 Nov, 2021', 30, 'business.jpg'),
(46, 'Sport news2', 'Sport is very essential for health. Sport is very essential for health. Sport is very essential for health. Sport is very essential for health. Sport is very essential for health. Sport is very essential for health. Sport is very essential for health.', '30', '21 Nov, 2021', 42, 'sport1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'News Website', 'news.jpg', '© Copyright 20121 News | Powered by Times Today.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(32, 'Nilla', 'Rahim', 'Nrahim', '03346657feea0490a4d4f677faa0583d', 1),
(23, 'Sajad', 'Anwari', 'Sanwari', '202cb962ac59075b964b07152d234b70', 0),
(34, 'Mustafa', 'Rahim', 'Mrahim', '250cf8b51c773f3f8dc8b4be867a9a02', 0),
(35, 'Soman', 'Ahmadi', 'Sahmadi', '68053af2923e00204c3ca7c6a3150cf7', 0),
(36, 'Muqtada', 'Rahim', 'MQrahim', '202cb962ac59075b964b07152d234b70', 1),
(42, 'Najlla', 'Meraj', 'Nmeraj', '21232f297a57a5a743894a0e4a801fc3', 1),
(38, 'Susan', 'Ahmadi', 'Sahmadi2', '68053af2923e00204c3ca7c6a3150cf7', 0),
(39, 'Mansoor', 'Sediqi', 'Msediqi', '202cb962ac59075b964b07152d234b70', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
