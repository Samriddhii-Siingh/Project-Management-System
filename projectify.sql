-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 09:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `projectify`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned`
--

CREATE TABLE `assigned` (
  `p_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned`
--

INSERT INTO `assigned` (`p_id`, `s_id`, `t_id`, `start_date`, `end_date`) VALUES
(1101, 209302338, 109340382, '2022-06-30', '2022-07-06'),
(125, 190356287, 190346297, '2022-07-24', '2022-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `name`, `domain`, `language`, `description`, `duration`) VALUES
(125, 'Airline Reservation ', '', 'Java', 'The proposed airline reservation system is a web-based Java project. It is an online platform that c', '4 days'),
(1101, 'Hotel Management Sys', '', 'C++', 'The project, Hotel Management System is a web-based application that allows the hotel manager to han', '1 week');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(16) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `password`, `domain`, `language`, `status`, `gender`, `email`) VALUES
(29834095, 'user', 'root', '', '', '', '', 'user23@gmail.com'),
(190356287, 'Lucy', 'lucy10*', '', '', '', '', 'lucy123@gmail.com'),
(209301278, 'Samriddhi', 'samriddhi101*', '', '', '', '', 'ss901739@gmail.com'),
(209302338, 'Samriddhi', 'heelo20', '', '', '', '', 'samriddhi.209302338@muj.manipa'),
(239103832, 'Edmund ', 'eddie', '', '', '', '', 'ed2019@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(16) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `name`, `password`, `domain`, `language`, `status`, `gender`, `email`) VALUES
(109340382, 'Peter', 'peternew', '', '', '', '', 'pete701@hotmail.com'),
(190346297, 'Ojasvi', 'ojasvi200', '', '', '', '', 'joseph89@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);
COMMIT;
