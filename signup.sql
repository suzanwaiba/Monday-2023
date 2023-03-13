-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `recipient_type` enum('admin','user') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_details` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `member1` varchar(255) NOT NULL,
  `member2` varchar(255) NOT NULL,
  `member3` varchar(255) NOT NULL,
  `member4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_details`, `objective`, `scope`, `project_type`, `supervisor`, `member1`, `member2`, `member3`, `member4`) VALUES
(6, 'Weather app', 'Recording weather data into database', 'To develop a system capable of recording weather data', 'Scope', 'webApplication', 'supervisor2', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `project_requests`
--

CREATE TABLE `project_requests` (
  `project_id` int(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_details` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `member1` varchar(255) NOT NULL,
  `member2` varchar(255) NOT NULL,
  `member3` varchar(255) NOT NULL,
  `member4` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_requests`
--

INSERT INTO `project_requests` (`project_id`, `project_name`, `project_details`, `objective`, `project_type`, `member1`, `member2`, `member3`, `member4`, `status`) VALUES
(3, 'Weather App', 'Recording weather data into database', 'to develop', 'ecommerce', '2', '1', '1', '1', 'pending'),
(4, 'Weather app', 'Recording weateher data', 'ajiae', 'webApplication', '1', '1', '2', '1', 'pending'),
(5, 'Weather App', 'Recording weateher data', 'To develop a system capable of recording weather data into database', 'webApplication', '1', '1', '2', '3', 'pending'),
(6, 'Weather app', 'Recording weateher data', 'aaa', 'ecommerce', '1', '2', '3', '1', 'pending'),
(7, 'Weather App', 'Recording weateher data', 'aljefa', 'webApplication', '1', '1', '3', '1', 'pending'),
(8, 'jaoihi', 'ahaifa', 'jafhaioeha', 'ecommerce', '3', '1', '2', '4', 'pending'),
(9, 'ajifah', 'iahia', 'ahiah', 'webApplication', '1', '3', '2', '2', 'pending'),
(10, 'ahoiah', 'ahaioa', 'akhaioh', 'ecommerce', '2', '1', '4', '5', 'pending'),
(11, 'Weather app', 'Recording weateher data', 'To develop a system capable of recording weather data into database', 'webApplication', '7', '7', '7', '7', 'pending'),
(12, 'Weather app', 'aahifafehaoi', 'kajifahia', 'ecommerce', '7', '9', '10', '8', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor_name` varchar(255) NOT NULL,
  `supervisor_email` varchar(255) NOT NULL,
  `supervisor_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`supervisor_id`, `supervisor_name`, `supervisor_email`, `supervisor_password`) VALUES
(1, 'Supervisor1', 'supervisor1@gmail.com', '$2y$10$.7c9195JMhswm080CosTe.XjaWLWy4Ga1SNtTb1eEtdqLshAgQ8Ay'),
(2, 'Supervisor2', 'supervisor2@gmail.com', '$2y$10$0qAXtIbwIA3BIbrphB5Tme6vnB7gob2bY18fqAsXWQgpRQp3KFRP6'),
(3, 'Supervisor3', 'supervisor3@gmail.com', '$2y$10$fwTEObb5yzDUP1450HS7X.0g1WeEn0xgktF7jw2lgtKDl9Lznp2K.'),
(4, 'Supervisor4', 'supervisor4@gmail.com', '$2y$10$wA6Jp.yDLQVwP6DbA1KCUOYiCWboGtEeAq/Bt1vkzWALEwCmPsaDm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `batch` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `cpassword`, `faculty`, `batch`) VALUES
(7, 'sujan', 'sujan@gmail.com', '$2y$10$91PrVgRcBIol4F0siE24m.G3iHEBGyXW1Snk9kfDql/.c9..ATQWi', '$2y$10$ZjG5qkebvTunErnKk6Bz1exv712Xpd3PUysX/R6ne077htaxXqU9e', 'dit', 2076),
(8, 'John Doe', 'john@gmail.com', '$2y$10$9HRtMGB3Y0EdHNHHx1eWEOjz.sopyftuJo/.wnv3WPBIGAXck8NPi', '$2y$10$HRIhADu5CEo/nVWf3OU2PefNtkqHH76RczkOr8Qfz6GTtFRS.bo4a', 'dit', 2076),
(9, 'Luke Davidson', 'luke@gmail.com', '$2y$10$j2k86rSSanEwY8JGnP4uAOU17Iq9DP3ifWgjPCrJK7BnOD7JQ9.UG', '$2y$10$DmFEnj1L/cGOFdhgGPZwD.vzGQ4PaJmlPBdX2GqJVUnr8Exw2Mum.', 'dit', 2076),
(10, 'Jalex Rosa', 'jalex@gmail.com', '$2y$10$uNGh9B6MLu.aYliRFrl8ue6IaGxvDXq9wCoN..wpr.AF4vMfrpCP2', '$2y$10$OWVx2PUtRh.sroCHdvRww.SEkwv.2fR34l5M.4lCsOCShQrlyX9du', 'dit', 2076);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_requests`
--
ALTER TABLE `project_requests`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_requests`
--
ALTER TABLE `project_requests`
  MODIFY `project_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
