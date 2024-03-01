-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 04:02 AM
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
-- Database: `url_shortner`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `S.No` int(11) NOT NULL,
  `Original_Url` text NOT NULL,
  `Short_Url` varchar(255) NOT NULL,
  `Created_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`S.No`, `Original_Url`, `Short_Url`, `Created_Date`) VALUES
(69, 'https://music.youtube.com/watch?v=ThLNrp58JIs&list=RDAMVMHqZFjXhpGmY', 'l1wCzQE31', '2024-02-26 11:03:32'),
(70, 'https://www.youtube.com/watch?v=q1EGXJDt4SY&ab_channel=CodeBlessYou', 'Ct1xWLuH_', '2024-02-26 11:58:45'),
(71, 'https://www.youtube.com/', 'jIS3e3MHD', '2024-02-29 18:47:40'),
(72, 'https://www.youtube.com/watch?v=b5RVAjOD0Pg', 'JTQ_Vwlpo', '2024-02-29 20:13:26'),
(73, 'https://www.youtube.com/watch?v=-TxS3XTz3hQ&ab_channel=ritishhh.', 'KzXaJuydR', '2024-02-29 23:22:38'),
(74, 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=url_shortner&table=history', '7PmCG3Iv8', '2024-02-29 23:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `S.No` int(11) NOT NULL,
  `short_URL` varchar(255) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`S.No`, `short_URL`, `Date`) VALUES
(47, 'l1wCzQE31', '2024-02-26 11:03:59'),
(48, 'jIS3e3MHD', '2024-02-29 18:47:49'),
(49, 'jIS3e3MHD', '2024-02-29 18:48:15'),
(50, 'JTQ_Vwlpo', '2024-02-29 20:13:32'),
(51, 'KzXaJuydR', '2024-02-29 23:22:50'),
(52, 'KzXaJuydR', '2024-02-29 23:24:55'),
(53, 'KzXaJuydR', '2024-02-29 23:24:57'),
(54, 'KzXaJuydR', '2024-02-29 23:25:00'),
(55, 'KzXaJuydR', '2024-02-29 23:25:02'),
(56, 'KzXaJuydR', '2024-02-29 23:25:05'),
(57, 'KzXaJuydR', '2024-02-29 23:25:08'),
(58, 'KzXaJuydR', '2024-02-29 23:25:11'),
(59, 'KzXaJuydR', '2024-02-29 23:25:31'),
(60, 'KzXaJuydR', '2024-02-29 23:25:33'),
(61, 'KzXaJuydR', '2024-02-29 23:25:35'),
(62, 'KzXaJuydR', '2024-02-29 23:25:38'),
(63, 'KzXaJuydR', '2024-02-29 23:25:40'),
(64, 'KzXaJuydR', '2024-02-29 23:25:42'),
(65, 'KzXaJuydR', '2024-02-29 23:25:44'),
(66, 'KzXaJuydR', '2024-02-29 23:25:46'),
(67, 'KzXaJuydR', '2024-02-29 23:25:48'),
(68, '7PmCG3Iv8', '2024-02-29 23:43:19'),
(69, 'KzXaJuydR', '2024-02-29 23:43:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`S.No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
