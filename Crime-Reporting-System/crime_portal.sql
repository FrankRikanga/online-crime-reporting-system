-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2024 at 01:01 PM
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
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(5, 123344444444, 'Makongeni', 'Theft', '2024-06-07', 'purse stolen', 'Unassigned', 'null', 'Null'),
(6, 234567898765, 'MKU', 'Missing Person', '2023-09-12', '7 days without returning home with no communication', 'Assigned', 'In Process', 'a255'),
(7, 123344444448, 'MKU', 'Pick Pocket', '2024-01-07', 'stolen jewery', 'Assigned', 'In Process', 'a255'),
(8, 123344444448, 'MKU', 'Murder', '2024-02-07', 'somebody killed', 'Assigned', 'In Process', 'a255'),
(9, 123344444448, 'MKU', 'Robbery', '2024-08-09', 'mpesa place robbery', 'Assigned', 'In Process', 'a255'),
(10, 123344444450, 'Blue post', 'Theft', '2024-08-15', 'some stole a bike', 'Unassigned', 'null', 'Null'),
(11, 123344444450, 'Chania Falls', 'Missing Person', '2024-08-15', 'no communication in two weeks', 'Unassigned', 'null', 'Null'),
(12, 234567898765, 'MKU', 'Theft', '2024-08-15', 'theft', 'Assigned', 'ChargeSheet Filed', 'a256'),
(13, 345678976543, 'MKU', 'Theft', '2024-08-06', 'stolen goods in a shop', 'Assigned', 'ChargeSheet Filed', 'a255'),
(14, 345678976543, 'MKU', 'Missing Person', '2024-08-23', 'Days with no communication', 'Assigned', 'In Process', 'a256'),
(15, 123344444450, 'MKU', 'Pick Pocket', '2024-08-21', 'Money Pick pocketing around MKU ', 'Assigned', 'In Process', 'a256'),
(16, 123344444450, 'MKU', 'Robbery', '2024-08-21', 'robbery in a resturant', 'Assigned', 'In Process', 'a255'),
(17, 123344444448, 'MKU', 'Theft', '2024-08-23', 'Group of people going around robbing people', 'Assigned', 'In Process', 'a256'),
(18, 123344098789, 'MKU', 'Theft', '2024-08-23', 'theft', 'Assigned', 'In Process', 'a255'),
(19, 123344098789, 'Blue post', 'Theft', '2024-08-21', 'theft', 'Unassigned', 'null', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('MUSSA SAID', 'a255', 'murder', 'MKU', '123456789'),
('Obedi Mokua', 'a256', 'Molestation', 'MKU', '123456789'),
('Robert Njiru', 'a257', 'Theft', 'Runda west', '123456789'),
('Ivonn Ombiro', 'a258', 'Murder', 'Runda west', '123456789'),
('Wayne Matila', 'a259', 'Pick Pocket', 'Runda East', '123456789'),
('John Kiragu', 'a260', 'THEFT', 'Runda East', '123456789'),
('Augustin Odongo', 'a261', 'THEFT', 'Mukireti', '123456789'),
('Ifrah A', 'a262', 'Molestation', 'Mukireti', '123456789'),
('Nicole M', 'a263', 'Kidnaping', 'Chania Falls', '123456789'),
('Chege mv', 'a264', 'Robbery', 'Chania Falls', '123456789'),
('Joshua Mbunda', 'a265', 'Theft', 'Chania Falls', '123456789'),
('Erick Bwire', 'a266', 'Murder', 'Blue post', '123456789'),
('Clare Jamaica', 'a267', 'Pick Pocket', 'Thika Town', '123456789'),
('Clever Tarimo', 'a269', 'murder', 'Makongeni', '123456789'),
('Adam Loti', 'a270', 'Theft', 'MKU', '123456789'),
('Juliana Chengula', 'a271', 'Pick Pocket', 'MKU', '123456789'),
('Imani Robert', 'a272', 'Murder', 'MKU', '123456789'),
('Sinza Mori', 'a273', 'Molestation', 'MKU', '123456789'),
('Suvendu Ghosh', 't101', 'Robbery', 'Tollygunge', 'suvendu');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('a112', 'Njoroge', 'Thika Town', '123456789'),
('a113', 'HUGUETTE', 'Makongeni', '123456789'),
('a777', 'Frank R', 'MKU', '123456789'),
('a778', 'Eddy oscar', 'Runda west', '123456789'),
('a779', 'Rukia Ally', 'Runda East', '123456789'),
('a800', 'Michael John', 'Mukireti', '123456789'),
('a801', 'Magret Mndolwa', 'Chania Falls', '123456789'),
('a802', 'Kenny Rikanga', 'Blue post', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(12, '2024-08-15 11:35:50', 'Crimianal sent to jail (4month)'),
(9, '2024-08-23 14:36:58', 'Criminal Verified'),
(13, '2024-08-23 14:38:14', 'Thet heif was sentensed to 6 Months in Jail'),
(13, '2024-08-24 10:01:53', 'Thet heif was sentensed to 6 Months in Jail');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Kago Njuguna', 'kago@gmail.com', '123456789', '123ABD', 23456784, 'Male', 710678345),
('MISHEL MMARI', 'MISHEL@GMAIL.COM', '123456789', 'GHT5676', 123344098789, 'Female', 7867543909),
('frank john rikanga', 'frankjohnrikanga@gmail.com', '123456789', '1Runda', 123344444444, 'Male', 9854123655),
('Brian Lee', 'brianlee@gmail.com', '123456789', 'abc123', 123344444446, 'Male', 9456786788),
('kenney Rikanga', 'KENNY@gmail.com', '123456789', '123ABC', 123344444448, 'Male', 9854123659),
('FRANK JR', 'FRANK@GMAIL.COM', '123456789', '2Runda', 123344444450, 'Male', 9456786790),
('JOAN', 'JOAN@GMAIL.COM', '123456789', 'QWER56', 123344444453, 'Female', 7677677544),
('JOHN', 'JOHN@GMAIL.COM', '123456789', '128ABHJ', 123344444475, 'Male', 9456786778),
('Mary Macharia', 'mary@gmail.com', '123456789', '2Runda', 123344444544, 'Male', 9845632812),
('ENINKA M', 'ENINKA@GMAIL.COM', '123456789', 'RWS1234', 123344444564, 'Female', 7657870987),
('LATIFA AHMED MNYANGA', 'LAM@GMAIL.COM', '123456789', 'MO0045', 123344444908, 'Female', 7897654378),
('FURAHA A', 'FURAHAA@GMAIL.COM', '123456789', 'DOD234', 123344447867, 'Female', 7865340987),
('ALBERT JKR', 'ALBERT@GMAIL.COM', '123456789', 'ARS453', 123344448975, 'Male', 7667543412),
('HILDA MNDOLWA', 'HILDA@GMAIL.COM', '123456789', 'ARS3457', 123344489642, 'Female', 7865432598),
('ELIZA MN', 'ELIZA@GMAIL.COM', '123456789', '4567DFGH', 123347864654, 'Female', 7867540987),
('janeth j', 'janeth@gmail.com', '123456789', 'abc345', 234567898765, 'Female', 9456786789),
('Kago', 'kagoj@gmail.com', '123456789', '123ABD', 345678976543, 'Male', 9854123651);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
