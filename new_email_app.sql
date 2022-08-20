-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2022 at 07:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_email_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `loginDevice` varchar(20) NOT NULL,
  `isLogout` tinyint(1) NOT NULL DEFAULT 0,
  `loginCreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `loginModifiedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginId`, `userId`, `loginDevice`, `isLogout`, `loginCreatedAt`, `loginModifiedAt`) VALUES
(1, 2, 'web', 0, '2022-08-19 18:47:03', '2022-08-20 08:44:37'),
(2, 1, 'web', 0, '2022-08-19 18:47:49', '2022-08-19 18:47:49'),
(3, 3, 'web', 0, '2022-08-19 18:48:05', '2022-08-19 18:48:05'),
(4, 1, 'web', 0, '2022-08-20 06:09:07', '2022-08-20 06:09:07'),
(5, 1, 'web', 0, '2022-08-20 07:33:00', '2022-08-20 14:23:17'),
(6, 1, 'web', 0, '2022-08-20 08:30:46', '2022-08-20 08:30:46'),
(7, 3, 'web', 0, '2022-08-20 08:34:01', '2022-08-20 08:34:01'),
(8, 2, 'web', 0, '2022-08-20 08:44:37', '2022-08-20 08:44:37'),
(9, 1, 'web', 0, '2022-08-20 14:23:17', '2022-08-20 14:23:17'),
(10, 3, 'web', 1, '2022-08-20 14:40:06', '2022-08-20 16:57:40'),
(11, 2, 'web', 0, '2022-08-20 16:15:22', '2022-08-20 16:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `replied` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `author_id`, `subject`, `body`, `created_at`, `updated_at`, `replied`) VALUES
(1, 1, 'subject thread 1', 'this is thread 1 msg 1', '2022-08-20 14:39:38', '2022-08-20 15:16:30', 1),
(2, 3, 'this is thread 2', 'thread 2 msg', '2022-08-20 15:47:15', '2022-08-20 16:15:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mail_messages`
--

CREATE TABLE `mail_messages` (
  `msg_id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `msg_from` varchar(60) NOT NULL,
  `msg` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail_messages`
--

INSERT INTO `mail_messages` (`msg_id`, `mail_id`, `msg_from`, `msg`, `created_at`, `updated_at`) VALUES
(1, 1, 'alisher@gmail.com', 'this is thread 1 msg 1', '2022-08-20 15:25:46', '2022-08-20 15:25:46'),
(2, 1, 'hamza@gmail.com', 'this is thread 1 reply 1', '2022-08-20 15:25:46', '2022-08-20 15:25:46'),
(3, 1, 'hamza@gmail.com', 'ok this thread 1 reply 2', '2022-08-20 15:25:46', '2022-08-20 15:25:46'),
(4, 1, 'hamza@gmail.com', 'ok this thread 1 reply 3', '2022-08-20 15:25:46', '2022-08-20 15:25:46'),
(5, 1, 'hamza@gmail.com', 'ok this thread 1 reply 4', '2022-08-20 15:25:46', '2022-08-20 15:25:46'),
(6, 1, 'alisher@gmail.com', 'ok reply from author 5', '2022-08-20 15:45:53', '2022-08-20 15:45:53'),
(7, 2, 'hamza@gmail.com', 'thread 2 msg', '2022-08-20 15:47:15', '2022-08-20 15:47:15'),
(8, 2, 'ahmad@gmail.com', 'thread 2 reply 1', '2022-08-20 16:15:53', '2022-08-20 16:15:53'),
(9, 2, 'hamza@gmail.com', 'ok', '2022-08-20 16:16:13', '2022-08-20 16:16:13'),
(10, 2, 'alisher@gmail.com', 'or snao bhai ', '2022-08-20 16:47:40', '2022-08-20 16:47:40'),
(11, 2, 'hamza@gmail.com', 'sab badiya ha ', '2022-08-20 16:49:02', '2022-08-20 16:49:02'),
(12, 2, 'hamza@gmail.com', 'i am coming islamabad', '2022-08-20 16:56:27', '2022-08-20 16:56:27'),
(13, 1, 'ahmad@gmail.com', 'this msg from ahmad thread 1 msg 6', '2022-08-20 16:57:18', '2022-08-20 16:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `mail_to`
--

CREATE TABLE `mail_to` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `type` enum('to','cc','reply','sent') NOT NULL DEFAULT 'to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail_to`
--

INSERT INTO `mail_to` (`id`, `mail_id`, `email`, `type`) VALUES
(1, 1, 'hamza@gmail.com', 'to'),
(2, 1, 'ahmad@gmail.com', 'to'),
(3, 1, 'hh@gmail.com', 'cc'),
(4, 2, 'alisher@gmail.com', 'to'),
(5, 2, 'ahmad@gmail.com', 'cc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1 COMMENT '1 = Active , 0 = Not Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ali Sher', 'alisher@gmail.com', '$2y$10$zoSwRlZw4Sth4F6ehKZ6LO6kQsBivuo82qvdtfdmnwddJnu5pLal2', 1, '2022-08-18 15:32:31', '2022-08-18 15:32:31'),
(2, 'Anonymous', 'ahmad@gmail.com', '$2y$10$RlGkqK/TotYNaDcCNhcqDuPOsEH/Rq/9dOdJk.TKY2/YWCRSxeVVS', 1, '2022-08-18 15:33:57', '2022-08-19 18:46:31'),
(3, 'Hamza', 'hamza@gmail.com', '$2y$10$FWLOzW5DlYwldrZ15MwDVuz5RN.9uWiav.A7h6seYCy0ru4XscFIu', 1, '2022-08-18 15:34:33', '2022-08-18 15:34:33'),
(4, 'Anonymous', 'admin@gmail.com', '$2y$10$mFhpQClnl86YL7WqPsmlf.490Hz/taOkY9GcvnZwIxUMh2Z5INVm6', 1, '2022-08-18 18:55:07', '2022-08-19 18:46:35'),
(5, 'Anonymous', 'ali@gmail.com', '$2y$10$.ZMVeaF0OnyxN0leTJlYTO0voT5WHSXKPjgP4R.u0KV9lNbGXTZLK', 1, '2022-08-18 18:57:28', '2022-08-19 18:46:37'),
(6, 'Anonymous', 'hh@gmail.com', '$2y$10$mbmtCeVDbacpfMSnBWvmXeLVxcReNSe07Caa7Y.zDRNmHgd6FitFS', 1, '2022-08-18 19:02:31', '2022-08-19 18:46:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginId`),
  ADD KEY `loginUserId` (`userId`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_messages`
--
ALTER TABLE `mail_messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `mail_to`
--
ALTER TABLE `mail_to`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mail_messages`
--
ALTER TABLE `mail_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mail_to`
--
ALTER TABLE `mail_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
