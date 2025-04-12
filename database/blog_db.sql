-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 04:51 PM
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
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(2, 'LongAdmin', 'Phan', 'admin', '$2y$10$U5TIKdijgPcmiRRGtJZsL.0zl0XhQc1.WmBUE8bKdIWwvxWruPHBW');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Technology'),
(2, 'Lifestyle'),
(3, 'Travel'),
(4, 'Food'),
(5, 'Education');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `post_id`, `crated_at`) VALUES
(0, 'Giáo án tà đạo phết !!!', 4, 5, '2025-04-11 23:21:01'),
(0, 'Trông quả meme đúng chất thời đại luôn ấy chứ', 4, 3, '2025-04-11 23:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT ' default.jpg',
  `crated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(1, 'Sadmeow', 'anhon meow meow meow', '2', 1, 'COVER-67f93fcd1bd6c9.56483709.jpg', '0000-00-00 00:00:00'),
(2, 'nah Nokotan', 'Người Dong Nice ở Nhật', '3', 1, 'COVER-67f94024587311.19562372.jpg', '0000-00-00 00:00:00'),
(3, 'King Cheems', 'The new King of Century Memes', '2', 1, 'COVER-67f9404ce31311.91348800.jpg', '0000-00-00 00:00:00'),
(4, 'Shinny Smile with Watermelon', 'Nụ cười tỏa nắng khi ăn quả dưa hấu đầu mùa', '4', 1, 'COVER-67f940bab83119.03066901.jpg', '0000-00-00 00:00:00'),
(5, 'TFT Tactic', 'TFT Seasion 13', '5', 1, 'COVER-67f941350c1836.79912749.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`like_id`, `liked_by`, `post_id`, `liked_at`) VALUES
(0, 4, 5, '2025-04-11 23:20:46'),
(0, 4, 3, '2025-04-11 23:21:47'),
(0, 4, 1, '2025-04-11 23:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(2, 'longphan', 'long', '$2y$10$2FQ4g6BRvIvzpj6B0IGyjudPyskx7kdUEHsj.6xP7phfKWb7OMVjm'),
(3, 'vanduy', 'duy', '$2y$10$P0ZqYuFjoMSoYSMyRjAM.ORCbldpz1t79B4lw.3lQE..cmPml.i2i'),
(4, 'hoangngocvinhtoan', 'hoangngocvinhtoan', '$2y$10$3uwHoIsBxCB9.UpjxqKrGuQAVFmSdDWrLG8T7i0uqd/hQLtZpTh/u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
