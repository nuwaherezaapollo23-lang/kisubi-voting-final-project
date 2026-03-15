-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2026 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kisubi_voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$0nYhHh7P2gBqUe5xF1kRGOe8XqGm3Z7Jx9nE5cK7zY3Lq6cQWj0Bi'),
(2, 'Apollo', '$2y$10$KYqRdAtOCChQgorOPlGNqub229.aLTRXvbDCOhiEZoLXvy62hNkBG');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `position_id` int(11) NOT NULL,
  `votes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_id`, `name`, `reg_no`, `faculty`, `position_id`, `votes`) VALUES
(1, 'Ogwenyi Jacob ', 'UNIK5006FGT', 'Faculty Of ICT', 1, 2),
(2, 'Okello Solomon', 'UNIK5007DFG', 'Faculty Of ICT', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`position_id`, `position_name`) VALUES
(1, 'Guild President');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voter_id` int(11) NOT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `voted` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voter_id`, `reg_no`, `name`, `password`, `gender`, `email`, `voted`) VALUES
(1, 'UNIK8082ZCG', 'Mulabbi Misairi', '$2y$10$nPGSdDEZuNlvfGM5tOUT1OeCD/sKF9s2MWT62cDNSB66aQTXyYiNu', 'Male', 'misairi@gmail.com', 1),
(3, 'UNIK1327OKV', 'Kirya Denish', '$2y$10$TX.A21fT7pkIrSeOGoZ6tuI4asjKqXrvwJjgQTF4x6ZmviL/S11lC', 'Male', 'denish@gmail.com', 1),
(4, 'UNIK9331SPD', 'Delly Monisha', '$2y$10$KxuLGGIOyiHNqqLHFYUNROPlVRXh7Q.01DjNoz92MY8WtXf3k9c7m', 'Female', 'delly@gmail.com', 1),
(5, 'UNIK4488BEC', 'Hero Melchy', '$2y$10$bILlfD3bxRKCvA1z57e7deirWcydBKLIgPuATBa0FBgOMqeejbNi6', 'Male', 'hero@gmail.com', 1),
(6, 'UNIK1617SYO', 'Kanyoga Monisha', '$2y$10$80p3DdF/OAyFwDT/otVEIuXO6j3x8TkxFmEqX6ql.hpKGJG7Sg14.', 'Female', 'monisha@gmail.com', 1),
(7, 'UNIK6439SWV', 'Kemba Ronald', '$2y$10$jHqySYs3WsFpAr5pkCSRGOJ5BBjQGNmFIE4Dx2TfMJA9GtHkLm5/K', 'Male', 'ronald@gmail.com', 1),
(8, 'UNIK7793OBO', 'amanya timothy', '$2y$10$.KfFyFl3QgHp9CrlZ1JhBOYe8zKDakNWgumkJOvpuroriBbSlYUgS', 'Male', 'timothy@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `vote_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `voter_id`, `candidate_id`, `position_id`, `vote_date`) VALUES
(2, 3, 1, 1, '2026-03-14 20:16:57'),
(3, 1, 2, 1, '2026-03-14 20:23:43'),
(4, 4, 2, 1, '2026-03-14 20:30:34'),
(5, 5, 2, 1, '2026-03-14 20:39:37'),
(6, 6, 2, 1, '2026-03-14 20:45:28'),
(7, 7, 2, 1, '2026-03-14 20:56:03'),
(8, 8, 1, 1, '2026-03-15 07:57:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voter_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `reg_no_2` (`reg_no`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `unique_vote` (`voter_id`,`position_id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `position_id` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`voter_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
