-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 09:56 AM
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
-- Database: `admin_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admin_type` varchar(50) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `password`, `email`, `admin_type`, `id`) VALUES
('admin', 'password', 'test@admin.com', 'OPadmin', 1),
('officer', 'password', 'test@officer.com', 'officer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `name` varchar(50) NOT NULL,
  `id_card` varchar(13) NOT NULL,
  `id_notify` int(10) NOT NULL,
  `day_card_start` date NOT NULL,
  `day_card_end` date NOT NULL,
  `hearing` varchar(50) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `adress_main` text NOT NULL,
  `county` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `training` varchar(100) NOT NULL,
  `training_other` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`name`, `id_card`, `id_notify`, `day_card_start`, `day_card_end`, `hearing`, `skill`, `address`, `adress_main`, `county`, `contact`, `training`, `training_other`) VALUES
('น.ส.วรินทร สมตน', '1000000000001', 30, '2023-01-01', '2026-01-01', 'หูดี', 'ภาษามือไทย', '169 หมู่ที่ 10 ต.แม่นาวาง อ.แม่อาย จ.เชียงใหม่', '49/125 ซ.เสรีไทย 41 แยก 3-2 แขวงคลองกุ่ม เขตบึงกุม จ.กรุงเทพมหานคร', 'กรุงเทพมหานคร', '0800000001', 'ล่ามกระบวนการยุติธรรม', 'ล่ามโทรทัศน์'),
('น.ส.อรอุมา นินทกาล', '1000000000002', 31, '2023-04-30', '2026-04-30', 'หูดี', 'ล่ามมือภาษาอังกฤษ', '62 หมู่ที่ 3 ต.นาโส่ อ.กุดชุม จ.ยโสธร', '2/11 หมู่ที่ 7 ต.สัตหีบ อ.สัตหีบ จ.ชลบุรี', 'ชลบุรี', '0912345678', 'ล่ามภาษามือในประเด็นเศษรฐกิจการเงิน', 'ล่ามกฎหมาย'),
('น.ส.ภัทรวดี ปานขาว', '1000000000003', 32, '2023-05-01', '2026-05-01', 'หูดี', 'ภาษามือไทย ภาษามือธรรมชาติ', '45/1 หมู่ที่ 1 ต.บางพึ่ง อ.บ้านหมี่ จ.ลพบุรี', '29/3 หมู่ที่ 1 ต.บางแสน อ.บางใหญ่ จ.นนทบุรี', 'นนทบุรี', '0651234567', '-', '-'),
('น.เฉลิม ขันดงลิง', '1000000000004', 33, '2023-02-12', '2023-02-12', 'หูหนวก', 'ภาษามือไทย ภาษามือสากล ภาษามือ อเมริกัน', '169 หมู่ที่ 1 ต.บ้านพริก อ.บ้านนา จ.นครนายก', '15 ซ.เพชรเกษม 17 แยก 2 แขวงวัดท่าพระ เขตบางใหญ่ จ.กรุงเทพมหานคร', 'กรุงเทพมหานคร', '0979988776 / Line:ABCDEF', 'ล่ามแปลภาษา', '-'),
('น.อิทธิพันธ์ คำเพ็ชร', '1000000000005', 34, '2001-02-12', '2003-02-12', 'หูดี', 'ภาษามืออเมริกัน', '76/2 หมู่ที่ 1 ต.ท่าตะโก อ.ท่าตะโก จ.นครสวรรค์', '76/2 หมู่ที่ 1 ต.ท่าตะโก อ.ท่าตะโก จ.นครสวรรค์', 'นครสวรรค์', 'Email:nutzaza123@testgmail.com', '-', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_notify`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id_notify` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
