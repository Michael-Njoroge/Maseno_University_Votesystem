-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 10:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'mike', '$2y$10$kJLFN264IZTtia6GAKHCAO9HRL87mMbXx0k7H4RQR37b4bZtpxXIi', 'michael', 'nyambura', 'mike.jpg', '2021-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(27, 10, 'michael', 'kevo', '', ''),
(29, 11, 'diana', 'Njoroge', 'female3.jpg', ''),
(30, 12, 'dan', 'mwaura', 'male3.jpg', ''),
(31, 13, 'ken', 'gen', 'male3.jpg', '0716002152'),
(32, 14, 'carol', 'njeri', 'female3.jpg', ''),
(33, 15, 'faith', 'chep', 'female3.jpg', ''),
(34, 16, 'john', 'kiarie', 'male3.jpg', ''),
(35, 11, 'kim', 'maina', '', ''),
(36, 10, 'john', 'njoroge', '', ''),
(37, 12, 'cecilia', 'wanjiku', '', ''),
(38, 13, 'pius', 'wamburu', '', ''),
(39, 14, 'cyntia ', 'kiruthi', '', ''),
(40, 15, 'sylvia', 'wanjiku', '', ''),
(41, 16, 'witney', 'Njeri', '', ''),
(42, 10, 'samuel', 'Gitonga', '', ''),
(43, 10, 'john', 'mwangi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ids`
--

CREATE TABLE `ids` (
  `id_number` varchar(100) NOT NULL,
  `names` varchar(225) NOT NULL,
  `started` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids`
--

INSERT INTO `ids` (`id_number`, `names`, `started`) VALUES
('BFIN119', 'Finous Acculate', '2021-04-16'),
('BIT101', 'Wild Cat Three', '2019-02-09'),
('BIT110', 'Metoo Jack', '2015-01-09'),
('BIT112', 'Charles Mukupa', '2019-02-09'),
('BIT113', 'Wl Turner', '2019-02-11'),
('BIT114', 'Jamason Liquor', '2017-06-20'),
('BITED100', 'Joe Kay', '2019-02-14'),
('DS116', 'Devy Stud', '2019-02-12'),
('LLB115', 'Judy Court', '2017-07-16'),
('LLB118', 'Jackline Hamster', '2013-10-17'),
('PBH117', 'Publy Hether', '2018-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`user_id`, `username`, `login_time`) VALUES
(1, ' user', '2019-02-12 13:21:43'),
(2, ' user', '2019-02-12 13:37:32'),
(3, ' user', '2019-02-12 18:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'chair', 1, 2),
(11, 'vice chair', 1, 3),
(12, 'secretary', 1, 4),
(13, 'treasurer', 1, 1),
(14, 'gender', 1, 5),
(15, 'city rep', 1, 6),
(16, 'entertainment', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'bYmkvynMsdNcABK', '$2y$10$LoGMdhF/cKjMEyL5b/qX4OyaLOS5YN2OUPYH886ZsKu/oqvhXE..6', 'joan', 'nandokha', ''),
(3, '7ZnIwSyOkeNrxsH', '$2y$10$/zBQ8RBcRtCWrQxiVfSbUeqcvtpGi2oXpbCMEjcJsPt5muZHC2GXC', 'ken', 'kuria', 'hero.png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(135, 0, 31, 13),
(136, 0, 41, 16),
(137, 37, 36, 10),
(138, 37, 35, 11),
(139, 37, 30, 12),
(140, 37, 31, 13),
(141, 37, 32, 14),
(142, 37, 33, 15),
(143, 37, 41, 16),
(144, 38, 36, 10),
(145, 38, 35, 11),
(146, 38, 30, 12),
(147, 38, 31, 13),
(148, 38, 39, 14),
(149, 38, 33, 15),
(150, 38, 34, 16),
(151, 40, 36, 10),
(152, 40, 29, 11),
(153, 40, 30, 12),
(154, 40, 31, 13),
(155, 40, 32, 14),
(156, 40, 33, 15),
(157, 40, 34, 16),
(158, 41, 27, 10),
(159, 41, 35, 11),
(160, 41, 30, 12),
(161, 41, 31, 13),
(162, 41, 39, 14),
(163, 41, 40, 15),
(164, 41, 34, 16),
(165, 2, 36, 10),
(166, 2, 29, 11),
(167, 2, 30, 12),
(168, 2, 31, 13),
(169, 2, 39, 14),
(170, 2, 40, 15),
(171, 2, 41, 16),
(172, 3, 38, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
