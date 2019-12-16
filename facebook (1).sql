-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 02:13 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmt_table`
--

CREATE TABLE `cmt_table` (
  `comment_id` int(11) NOT NULL,
  `post_id` varchar(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmt_table`
--

INSERT INTO `cmt_table` (`comment_id`, `post_id`, `user_id`, `comment`) VALUES
(14, '3', '8', 'very good morning'),
(15, '10', '8', 'very sad day'),
(16, '5', '4', 'very good'),
(17, '5', '4', 'very good'),
(18, '11', '7', 'sam'),
(19, '15', '7', 'comment'),
(20, '15', '7', 'very '),
(21, '1', '2', 'asm'),
(22, '1', '2', 'very good\n'),
(23, '1', '2', 'very good\n'),
(24, '1', '2', 'kmimjik');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `message`) VALUES
(1, 'sekar', 'hijkui'),
(2, 's:0:\"\";', 's:0:\"\";'),
(3, 's:5:\"staff\";', 's:9:\"very nice\";');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(155) NOT NULL,
  `email` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `email`, `msg`, `status`) VALUES
(3, 'sekar', 'sr@email.com', 'hi', '0'),
(4, 'sambath', 'sm@email.com', 'very slow', '0'),
(8, 'anwar', 'mr@email.com', 'very slow', '0'),
(9, 'anwar', 'mr@email.com', 'very slow', '0'),
(10, 'anwar', 'mr@email.com', 'very slow', '0'),
(11, 'anwar', 'mr@email.com', 'very fast', '0'),
(12, 'anwar', 'mr@email.com', 'very fast', '0');

-- --------------------------------------------------------

--
-- Table structure for table `frd_req`
--

CREATE TABLE `frd_req` (
  `id` int(11) NOT NULL,
  `from_user` varchar(200) NOT NULL,
  `to_user` varchar(200) NOT NULL,
  `code` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_name`) VALUES
(1, '01572950927.jpg'),
(2, '01572952739.jpg,11572952739.jpg'),
(3, '01572952902.jpg,11572952902.jpg'),
(4, '01572952902.jpg,11572952902.jpg'),
(5, '01573124253.jpg'),
(6, '01573124308.jpg'),
(7, '01573124321.jpg'),
(8, '01573452144.jpg,11573452144.jpg,21573452144.jpg,31573452144.jpg'),
(9, '01574260078.jpg,11574260078.jpg,21574260078.jpg,31574260078.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 3),
(4, 1, 7),
(5, 2, 7),
(6, 1, 3),
(7, 7, 5),
(8, 4, 3),
(9, 6, 4),
(10, 5, 7),
(11, 6, 7),
(12, 8, 7),
(13, 15, 7),
(14, 14, 1),
(15, 3, 1),
(16, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(155) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `flag`) VALUES
(1, '', 0),
(2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`) VALUES
(1, ''),
(2, '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_image`, `date`, `time`) VALUES
(1, 2, '01575545156.jpg', '2019-12-05', '4:55 pm'),
(2, 2, '01575545163.jpg', '2019-12-05', '4:56 pm'),
(3, 3, '01575545195.jpg', '2019-12-05', '4:56 pm'),
(4, 3, '01575545201.png', '2019-12-05', '4:56 pm'),
(5, 4, '01575545238.jpg', '2019-12-05', '4:57 pm'),
(6, 4, '01575545244.jpg', '2019-12-05', '4:57 pm'),
(7, 5, '01575545279.jpg', '2019-12-05', '4:57 pm'),
(8, 5, '01575545286.jpg', '2019-12-05', '4:58 pm'),
(9, 6, '01575545336.jpg', '2019-12-05', '4:58 pm'),
(10, 6, '01575545344.jpg', '2019-12-05', '4:59 pm'),
(11, 7, '01575545381.jpg', '2019-12-05', '4:59 pm'),
(12, 7, '01575545391.jpg', '2019-12-05', '4:59 pm'),
(13, 8, '01575545451.jpg', '2019-12-05', '5:00 pm'),
(14, 8, '01575545459.jpg', '2019-12-05', '5:00 pm'),
(15, 7, '01575555067.jpg', '2019-12-05', '7:41 pm');

-- --------------------------------------------------------

--
-- Table structure for table `smd`
--

CREATE TABLE `smd` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `imagefile` varchar(250) NOT NULL,
  `phoneno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smd`
--

INSERT INTO `smd` (`id`, `firstname`, `email`, `password`, `gender`, `address`, `imagefile`, `phoneno`) VALUES
(1, 'admin', 'admin@email.com', 'asdasd', 'male', 'admin cross street', '01575525963.jpg', '0101010101'),
(2, 'chandrasekar', 'cs@email.com', '147852', 'male', 'new jail road', '01575555067.jpg', '8124254228'),
(3, 'sivakumar', 'sk@email.com', '965520', 'male', 'cross new street', '01575545286.jpg', '6354563214'),
(4, 'karthick', 'ka@email.com', '978623', 'male', 'new pillai street', '01575545195.jpg', '123456789'),
(5, 'muthu', 'mk@email.com', '635987', 'male', 'bhathaiyar cross street', '01575545238.jpg', '9145637821'),
(6, 'vickram', 'vm@email.com', '978954', 'male', 'erode new street', '01575526932.jpg', '9976402072'),
(7, 'anwar', 'mr@email.com', '852963', 'male', 'new jersery street', '01575545381.jpg', '7658321471'),
(8, 'sambath', 'sm@email.com', '745623', 'male', '77  anna nagar road', '01575545451.jpg', '8883562173');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmt_table`
--
ALTER TABLE `cmt_table`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frd_req`
--
ALTER TABLE `frd_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `smd`
--
ALTER TABLE `smd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmt_table`
--
ALTER TABLE `cmt_table`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `frd_req`
--
ALTER TABLE `frd_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `smd`
--
ALTER TABLE `smd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
