-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2012 at 01:39 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `salesforce`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE IF NOT EXISTS `chapters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `address`) VALUES
(1, 'IIT Kanpur', 'IIT Kanpur'),
(2, 'MAMC', NULL),
(3, 'IIT Madras', NULL),
(4, 'IIT Madras -  Pondicherry', NULL),
(5, 'IIT Roorkee', NULL),
(6, 'IIT Bombay', NULL),
(7, 'VJTI', NULL),
(8, 'IIT Delhi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fellows`
--

CREATE TABLE IF NOT EXISTS `fellows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `roll_number` varchar(100) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_mentees_chapter1_idx` (`chapter_id`),
  KEY `fk_mentees_mentor1_idx` (`mentor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=396 ;

--
-- Dumping data for table `fellows`
--

INSERT INTO `fellows` (`id`, `name`, `roll_number`, `chapter_id`, `mentor_id`) VALUES
(4, 'Jamuna Rani Bhunya', '14DM14', 2, 6),
(5, 'Shivam Arora', '14DM02', 2, 7),
(6, 'Rahul Shaha', '14DM11', 2, 8),
(7, 'Kalpana', '14DM13', 2, 9),
(8, 'Shubham Thakur', '14DM06', 2, 10),
(9, 'Nikhil Kumar', '14DM04', 2, 11),
(10, 'Deepak Kumar Mandal', '14DM01', 2, 12),
(11, 'Sachin Dagar', '14DM12', 2, 13),
(12, 'Shahbaj Hussain', '14DM09', 2, 14),
(13, 'Himank Bansal', '14DM07', 2, 15),
(14, 'Pooja Jha', '14DM05', 2, 16),
(15, 'Arun Bajaj', '14DM03', 2, 17),
(16, 'Sahil Vij', '14DM08', 2, 18),
(17, 'Rashmi Pathak', '14DM10', 2, 19),
(18, 'R Abhilash', '13M07', 3, 20),
(19, 'Ashish Kumar Dwivedi', '13M09', 3, 21),
(20, 'R Srinidhi', '13M06', 3, 22),
(21, 'Roopesh', '13M08', 3, 23),
(22, 'T K Akash', '13M10', 3, 24),
(23, 'S Sindhu', '13M04', 3, 25),
(24, 'Vinod Kumar', '13M02', 3, 26),
(25, 'S A  Vasuki ', '13M01', 3, 27),
(26, 'R Mohan Kumar ', '13M05', 3, 28),
(27, 'C  Yashwanth Kumar', '13M03', 3, 29),
(28, 'S Akash', '14M05', 3, 30),
(29, 'Rakshika R', '14M01', 3, 31),
(30, 'V. Vasanth', '14M02', 3, 32),
(31, 'N Swathi', '14M06', 3, 33),
(32, 'M.B.Pratyusha', '14M04', 3, 34),
(33, 'Vishnu Mohan', '14M03', 3, 35),
(74, 'Smruti Sagarika Swain ', '14MP06', 4, 51),
(75, 'Niyaz Kauser', '14MP18', 4, 50),
(76, 'Rajarshi Sahu', '14MP08', 4, 50),
(77, 'Ritesh S. Agrawal', '14MP13', 4, 49),
(78, 'Ronit Raj Anand', '14MP09', 4, 49),
(79, 'Nilesh kumar Yadav', '14MP14', 4, 48),
(80, 'Prince Bharti', '14MP19', 4, 48),
(81, 'Pratyush Kumarchayani', '14MP10', 4, 47),
(82, 'Ela Shresth', '14MP03', 4, 46),
(83, 'Jatin Bhatnagar', '14MP12', 4, 45),
(84, 'Suraj Mehra', '14MP11', 4, 45),
(85, 'Happy Mol K P', '14MP05', 4, 27),
(86, 'Shikha Kumari', '14MP04', 4, 27),
(87, 'Anjanee Kumar Mishra', '14MP07', 4, 44),
(88, 'Shubham Mishra', '14MP22', 4, 44),
(89, 'Nisha Jha', '14MP02', 4, 43),
(90, 'Nishi Shree', '14MP01', 4, 43),
(91, 'Manish Kumar', '14MP15', 4, 42),
(92, 'Vedant Somani', '14MP23', 4, 42),
(93, 'Piyush Kumar Rai', '14MP20', 4, 41),
(94, 'Satyam Peeyush ', '14MP21', 4, 41),
(95, 'Ajay Kumar', '14MP17', 4, 40),
(96, 'Md.Sabir Alam', '14MP16', 4, 40),
(97, 'Darshan S J', '13MP05', 4, 39),
(98, 'Uttam Kumar P', '13MP02', 4, 39),
(99, 'Prakash A N', '13MP06', 4, 38),
(100, 'Rakesh S P', '13MP16', 4, 38),
(101, 'Ankit Trival', '13MP09', 4, 37),
(102, 'Manoj Kumar', '13MP07', 4, 37),
(103, 'D Vekata Gandhi', '13MP15', 4, 36),
(104, 'Manohar Gupta K', '13MP08', 4, 36),
(105, 'Sumit Kumar ', '13MP04', 4, 52),
(106, 'Sunil Kumar Rana', '13MP14', 4, 52),
(107, 'Vinay Gupta', '13MP17', 4, 53),
(108, 'Anoop Kumar', '13MP12', 4, 54),
(109, 'Chetan S.G', '13MP01', 4, 54),
(110, 'Abhishek Tomy', '13MP10', 4, 55),
(111, 'Ashok Kumar E', '13MP13', 4, 55),
(112, 'Ashwani Kumar', '13MP11', 4, 56),
(113, 'Ram Bibiyan', '13MP03', 4, 56),
(114, 'Abhishek Kumar', '14RD06', 5, 64),
(115, 'Akshay Kumar', '14RD01', 5, 65),
(116, 'Aman Goyal', '14RD04', 5, 66),
(117, 'Anup Singh', '13RD02', 5, 67),
(118, 'Anup SinghTomar', '14RD03', 5, 68),
(119, 'Deeksha Singh', '13RD03', 5, 69),
(120, 'Deepu Tiwari', '13RD04', 5, 70),
(121, 'Gourav Kumar', '13RD06', 5, 71),
(122, 'Pooja Yadav', '14RD05', 5, 72),
(123, 'Rajat Joshi', '13RD07', 5, 69),
(124, 'Rajat Sharma', '14RD02', 5, 73),
(125, 'Sourabh Singh', '13RD01', 5, 74),
(126, 'Vikas Kumar', '14RD07', 5, 75),
(127, 'Vinayak Lohan', '14RD08', 5, 76),
(128, 'Vishal Singh', '14RD09', 5, 77),
(129, 'Vishal Tyagi', '13RD05', 5, 78),
(264, 'Abhishek Narvekar', '13BB07', 6, 79),
(265, 'Ahad Siddiqui', '13BB08', 6, 79),
(266, 'Ajay Chavan', '13BB06', 6, 79),
(267, 'Ashish Ghadge', '13BB03', 6, 79),
(268, 'Dabir Mohd', '13BB04', 6, 79),
(269, 'Rahul Natu', '13BB02', 6, 79),
(270, 'Rushikesh Kalokhe', '13BB01', 6, 79),
(271, 'Siddhi Pawar', '13BB05', 6, 79),
(272, 'Anshuman Pashupalak', '14BB06', 6, 80),
(273, 'Mohit Patel', '14BB05', 6, 80),
(274, 'Nitesh Yadav', '14BB10', 6, 81),
(275, 'Sagar Thorat', '14BB16', 6, 82),
(276, 'Shripal Purohit', '14BB02', 6, 83),
(277, 'Shukdev Yadav', '14BB03', 6, 84),
(278, 'Sivaramakrishnan', '14BB17', 6, 82),
(279, 'Tanveer Shaikh', '14BB04', 6, 84),
(280, 'Viraj Jangam', '14BB01', 6, 83),
(281, 'Atul Gawade', '14BV11', 7, 85),
(282, 'Deepak Thorat', '14BV14', 7, 86),
(283, 'Dipali Dilip Komurlekar', '14BV16', 7, 87),
(284, 'K.P. Anandanarayanan', '14BV10', 7, 88),
(285, 'Manohar Jaiswar', '14BV06', 7, 89),
(286, 'Shaikh Abdul Rauf', '14BV01', 7, 90),
(287, 'Suraj Sawant', '14BV05', 7, 91),
(288, 'Suryansh Tiwari', '14BV07', 7, 92),
(289, 'Ajinkya Teli', '13BV06', 7, 93),
(290, 'Ankit Mohite', '13BV05', 7, 94),
(291, 'Jaypal Shinde', '13BV01', 7, 95),
(292, 'Kajal Pawale', '13BV04', 7, 96),
(293, 'Mihir Tari', '13BV03', 7, 97),
(294, 'Mukesh Ahire', '13BV07', 7, 93),
(295, 'Pratik More', '13BV08', 7, 98),
(296, 'Ronak Ashar', '13BV02', 7, 99),
(297, 'Aniket Arun Chavan', '14BV12', 7, 100),
(298, 'Bhavesh Satam', '14BV15', 7, 101),
(299, 'Dhiraj Nivalkar', '14BV08', 7, 102),
(300, 'Dinesh Pandey', '14BV09', 7, 103),
(301, 'Jyoti Pandey', '14BV03', 7, 104),
(302, 'Samadhan Niwate', '14BV02', 7, 105),
(303, 'Sandesh Gawade', '14BV13', 7, 106),
(304, 'Shubham Ande', '14BV04', 7, 107),
(305, 'Joylen Saldanha', '13BB12', 6, 108),
(306, 'Poshraj Sharma', '13BB11', 6, 108),
(307, 'Priyanka Palshetkar', '13BB10', 6, 109),
(308, 'Roshan Hande', '13BB13', 6, 110),
(309, 'Vinay Rane', '13BB09', 6, 100),
(310, 'Aishwarya Bhat', '14BB18', 6, 111),
(311, 'Hanish Shetty', '14BB14', 6, 112),
(312, 'Sumit Shashikant Mene', '14BB08', 6, 113),
(313, 'Sushant Ipte', '14BB12', 6, 114),
(314, 'Tarun Varma', '14BB13', 6, 112),
(315, 'V. R. Krishnaunni', '14BB15', 6, 115),
(316, 'Varun Murkar', '14BB11', 6, 114),
(317, 'Vishal Lad', '14BB07', 6, 116),
(318, 'Vishal Raiker', '14BB09', 6, 113),
(319, 'Adarsh Tripathi', '2013K04', 1, 117),
(320, 'Aman Mehrotra', '2013K09', 1, 118),
(321, 'Amit Tripathi', '2013K05', 1, 117),
(322, 'Devpriya Madhukar', '2013K10', 1, 118),
(323, 'Mohit Gupta', '2013K13', 1, 119),
(324, 'Nikhil Shukla', '2013K02', 1, 120),
(325, 'Shashwat Awasthi', '2013K08', 1, 121),
(326, 'Umesh Shukla', '2013K07', 1, 121),
(327, 'Abhishek Kumar', '2013K15', 1, 122),
(328, 'Abhishek Shukla', '2013K11', 1, 123),
(329, 'Ankesh Jha', '2013K01', 1, 124),
(330, 'Ravi Singh', '2013K03', 1, 125),
(331, 'Rishabh Pandey', '2013K14', 1, 126),
(332, 'Rishabh Tewari', '2013K12', 1, 123),
(333, 'Vaibhav Varish', '2013K06', 1, 127),
(334, 'Abhishek Nigam', '2014K05', 1, 128),
(335, 'Adarsh Trivedi', '2014K04', 1, 128),
(336, 'Aman Sapra', '2014K03', 1, 129),
(337, 'Amit Kumar Shrivastava', '2014K08', 1, 130),
(338, 'Ankit Singh', '2014K09', 1, 131),
(339, 'Divyansh Tiwari', '2014K02', 1, 129),
(340, 'Gaurav Agarwal', '2014K12', 1, 132),
(341, 'Nidhi Kesarwani', '2014K14', 1, 133),
(342, 'Sanjay Nathani', '2014K11', 1, 134),
(343, 'Vishal Yadav', '2014K13', 1, 133),
(344, 'Ankur kushwaha', '2014K07', 1, 135),
(345, 'Manish Kumar', '2014K16', 1, 136),
(346, 'Mayank Shrivastava', '2014K10', 1, 137),
(347, 'Om Ji Agnihotri', '2014K06', 1, 138),
(348, 'Pratham Dev', '2014K01', 1, 139),
(349, 'Rishabh Nigam-1', '2014K17', 1, 161),
(350, 'Rishabh Nigam-2', '2014K15', 1, 140),
(351, 'Ankesh Jha', '2014K18', 1, 141),
(352, 'Mohit Sharma', '10P13BD0113', 8, 142),
(353, 'Vineet Garg', '10P13BD0114', 8, 143),
(354, 'Gaurav Pahuja ', '10P13BD0115', 8, 144),
(355, 'Ankur Dabas', '10P13BD0116', 8, 145),
(356, 'Ramanpreet Singh', '10P13BD0117', 8, 146),
(357, 'Nitin Sharma', '10P13BD0118', 8, 147),
(358, 'Priti Gupta', '10P13BD0119', 8, 148),
(359, 'Pooja Mishra', '10P13BD0123', 8, 148),
(360, 'Vinay Shakya', '10P13DD0149', 8, 149),
(361, 'Akshay Bhandari', '10p13ee0013', 8, 150),
(362, 'Kashish Rajput', '10P13ee0014', 8, 151),
(363, 'Pradeep Kumar', '10P13ee0015', 8, 150),
(364, 'Prateek Roy', '10p13ee0016', 8, 152),
(365, 'Rajat Singhal', '10p13ee0017', 8, 153),
(366, 'Saket Sourabh', '10P13ee0018', 8, 154),
(367, 'Shubham Agarwal', '10p13ee0019', 8, 155),
(368, 'Shubham Agarwal 2', '10p13ee0020', 8, 144),
(369, 'Upasana Singh', '10p13ee0021', 8, 156),
(370, 'Vipul Tiwari', '10p13ee0022', 8, 156),
(371, 'Aakash Gupta ', '10p14sv0060', 8, 157),
(372, 'Abhay kumar', '10p14sv0062', 8, 157),
(373, 'Aman Jain', '10p14ek0004', 8, 158),
(374, 'Anjali Gupta', '10p14gj0062', 8, 159),
(375, 'Ankur Goel ', '10p14aa0073', 8, 160),
(376, 'Ankush Bhardwaj', '10P14gj0061', 8, 161),
(377, 'Anuj Rathore', '10p14ek0008', 8, 162),
(378, 'Chahat Malhotra', '10p14ss0100', 8, 163),
(379, 'Chandan', '10p14gj0059', 8, 164),
(380, 'Devendra', '10p14gj0063', 8, 165),
(381, 'Govind Chaturvedi ', '10p14ek0013', 8, 159),
(382, 'Harsh Kaushik ', '10p14ek0006', 8, 166),
(383, 'Krishan Gupta', '10p14gj0064', 8, 165),
(384, 'Manjeet Kumar ', '10p14ek0009', 8, 167),
(385, 'Md. Asif', '13D01', 8, 168),
(386, 'Neha Jha', '10p14ek0005', 8, 169),
(387, 'Raj Kumar', '14D01', 8, 162),
(388, 'Ram Gopal Kanaujia', '10p14ek0012', 8, 169),
(389, 'Rohan Singh', '14D02', 8, 170),
(390, 'Sahil Singhal', '10p14gj0060', 8, 161),
(391, 'Satyam Rai ', '10p14ek003', 8, 171),
(392, 'Shubham Aggarwal', '10p14sv0059', 8, 172),
(393, 'Vipin Phogat', '10p14ek0010', 8, 171),
(394, 'Vishal Kocher', '10p14gj0058', 8, 164),
(395, 'Yogesh Yadav', '10p14ek0007', 8, 173);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE IF NOT EXISTS `mentors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_mentor_chapter1_idx` (`chapter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`id`, `chapter_id`, `user_id`) VALUES
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 10),
(13, 2, 11),
(14, 2, 12),
(15, 2, 13),
(16, 2, 14),
(17, 2, 15),
(18, 2, 16),
(19, 2, 17),
(20, 3, 18),
(21, 3, 19),
(22, 3, 20),
(23, 3, 21),
(24, 3, 22),
(25, 3, 23),
(26, 3, 24),
(27, 3, 25),
(28, 3, 26),
(29, 3, 27),
(30, 3, 28),
(31, 3, 29),
(32, 3, 30),
(33, 3, 31),
(34, 3, 32),
(35, 3, 33),
(36, 4, 72),
(37, 4, 71),
(38, 4, 70),
(39, 4, 69),
(40, 4, 68),
(41, 4, 67),
(42, 4, 66),
(43, 4, 65),
(44, 4, 64),
(45, 4, 62),
(46, 4, 61),
(47, 4, 60),
(48, 4, 59),
(49, 4, 58),
(50, 4, 57),
(51, 4, 56),
(52, 4, 73),
(53, 4, 74),
(54, 4, 75),
(55, 4, 76),
(56, 4, 77),
(64, 5, 78),
(65, 5, 79),
(66, 5, 80),
(67, 5, 81),
(68, 5, 82),
(69, 5, 83),
(70, 5, 84),
(71, 5, 85),
(72, 5, 86),
(73, 5, 88),
(74, 5, 89),
(75, 5, 90),
(76, 5, 91),
(77, 5, 92),
(78, 5, 93),
(79, 6, 94),
(80, 6, 95),
(81, 6, 96),
(82, 6, 97),
(83, 6, 98),
(84, 6, 99),
(85, 7, 103),
(86, 7, 104),
(87, 7, 105),
(88, 7, 106),
(89, 7, 107),
(90, 7, 108),
(91, 7, 109),
(92, 7, 110),
(93, 7, 111),
(94, 7, 112),
(95, 7, 113),
(96, 7, 114),
(97, 7, 115),
(98, 7, 117),
(99, 7, 118),
(100, 7, 119),
(101, 7, 120),
(102, 7, 121),
(103, 7, 122),
(104, 7, 123),
(105, 7, 124),
(106, 7, 125),
(107, 7, 126),
(108, 6, 127),
(109, 6, 128),
(110, 6, 129),
(111, 6, 131),
(112, 6, 132),
(113, 6, 133),
(114, 6, 136),
(115, 6, 135),
(116, 6, 137),
(117, 1, 139),
(118, 1, 140),
(119, 1, 141),
(120, 1, 142),
(121, 1, 143),
(122, 1, 144),
(123, 1, 145),
(124, 1, 146),
(125, 1, 147),
(126, 1, 148),
(127, 1, 150),
(128, 1, 151),
(129, 1, 3),
(130, 1, 153),
(131, 1, 154),
(132, 1, 156),
(133, 1, 157),
(134, 1, 158),
(135, 1, 160),
(136, 1, 161),
(137, 1, 162),
(138, 1, 163),
(139, 1, 2),
(140, 1, 165),
(141, 1, 166),
(142, 8, 167),
(143, 8, 168),
(144, 8, 169),
(145, 8, 170),
(146, 8, 171),
(147, 8, 172),
(148, 8, 173),
(149, 8, 174),
(150, 8, 175),
(151, 8, 176),
(152, 8, 178),
(153, 8, 179),
(154, 8, 180),
(155, 8, 181),
(156, 8, 183),
(157, 8, 184),
(158, 8, 185),
(159, 8, 186),
(160, 8, 187),
(161, 8, 188),
(162, 8, 189),
(163, 8, 190),
(164, 8, 191),
(165, 8, 192),
(166, 8, 194),
(167, 8, 196),
(168, 8, 197),
(169, 8, 198),
(170, 8, 200),
(171, 8, 202),
(172, 8, 203),
(173, 8, 205);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'administrator', 'c37896d2792177ef497040384a551ac9391c519d', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1348210516, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '\0\0', 'abhgupta@iitk.ac.in  .', 'c37896d2792177ef497040384a551ac9391c519d', NULL, 'abhgupta@iitk.ac.in', NULL, NULL, NULL, NULL, 1347120294, 1347120294, 1, 'abhgupta@iitk.ac.in ', '.', 'Avanti Fellows', '123-456-8900'),
(3, '\0\0', 'abhisss@iitk.ac.in .', 'c37896d2792177ef497040384a551ac9391c519d', NULL, 'abhisss@iitk.ac.in', NULL, NULL, NULL, NULL, 1347120789, 1348211520, 1, 'abhisss@iitk.ac.in', '.', 'Avanti Fellows', '123-456-8909'),
(4, '', 'Akshay Kohli', 'c37896d2792177ef497040384a551ac9391c519d', '', 'akshayk1@gmail.com', '', '', 0, '', 0, 0, 0, 'Akshay', ' Kohli', 'Avanti Fellows', '       '),
(5, '', 'Amiya Anshu', 'c37896d2792177ef497040384a551ac9391c519d', '', 'amiyaanshu160510@gmail.com', '', '', 0, '', 0, 0, 0, 'Amiya ', 'Anshu', 'Avanti Fellows', ''),
(6, '', 'Angad Uberoi', 'c37896d2792177ef497040384a551ac9391c519d', '', 'angad1992@gmail.com', '', '', 0, '', 0, 0, 0, 'Angad ', 'Uberoi', 'Avanti Fellows', ''),
(7, '', 'Karandeep Singh', 'c37896d2792177ef497040384a551ac9391c519d', '', 'doctorkdsingh@gmail.com', '', '', 0, '', 0, 0, 0, 'Karandeep ', 'Singh', 'Avanti Fellows', ''),
(8, '', 'Vagata Ram', 'c37896d2792177ef497040384a551ac9391c519d', '', 'dr.vagata@gmail.com', '', '', 0, '', 0, 0, 0, 'Vagata ', 'Ram', 'Avanti Fellows', ''),
(9, '', 'Shreya Garg', 'c37896d2792177ef497040384a551ac9391c519d', '', 'drshreyagarg@gmail.com', '', '', 0, '', 0, 0, 0, 'Shreya ', 'Garg', 'Avanti Fellows', ''),
(10, '', 'Vipul Gidwani', 'c37896d2792177ef497040384a551ac9391c519d', '', 'gidwani30@gmail.com', '', '', 0, '', 0, 0, 0, 'Vipul ', 'Gidwani', 'Avanti Fellows', ''),
(11, '', 'Gopal Garg', 'c37896d2792177ef497040384a551ac9391c519d', '', 'gopalgarg21@yahoo.com', '', '', 0, '', 0, 0, 0, 'Gopal ', 'Garg', 'Avanti Fellows', ''),
(12, '', 'Kirti Pal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'kirtipalb@gmail.com', '', '', 0, '', 0, 0, 0, 'Kirti ', 'Pal', 'Avanti Fellows', ''),
(13, '', 'Molisha Bhandari', 'c37896d2792177ef497040384a551ac9391c519d', '', 'molishabhandari@yahoo.com', '', '', 0, '', 0, 0, 0, 'Molisha ', 'Bhandari', 'Avanti Fellows', ''),
(14, '', 'Tany Chandra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'tanychandra@yahoo.com', '', '', 0, '', 0, 0, 0, 'Tany ', 'Chandra', 'Avanti Fellows', ''),
(15, '', 'Tripti Aneja', 'c37896d2792177ef497040384a551ac9391c519d', '', 'triptianeja@yahoo.in', '', '', 0, '', 0, 0, 0, 'Tripti ', 'Aneja', 'Avanti Fellows', ''),
(16, '', 'Vatika Jain', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vatika14@yahoo.com', '', '', 0, '', 0, 0, 0, 'Vatika ', 'Jain', 'Avanti Fellows', ''),
(17, '', 'Vinod Kumar Dhakar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vksurra@gmail.com', '', '', 0, '', 0, 0, 0, 'Vinod Kumar ', 'Dhakar', 'Avanti Fellows', ''),
(18, '', 'Naveen A K', 'c37896d2792177ef497040384a551ac9391c519d', '', 'aknaveen007@gmail.com', '', '', 0, '', 0, 0, 0, 'Naveen A ', ' K', 'Avanti Fellows', '     '),
(19, '', 'Akshay Soni', 'c37896d2792177ef497040384a551ac9391c519d', '', 'aksoni393@gmail.com', '', '', 0, '', 0, 0, 0, 'Akshay', 'Soni', 'Avanti Fellows', ''),
(20, '', 'Shivangi Tiwary', 'c37896d2792177ef497040384a551ac9391c519d', '', 'shivangi290892@gmail.com', '', '', 0, '', 0, 0, 0, 'Shivangi Tiwary', 'Tiwari', 'Avanti Fellows', ''),
(21, '', 'R Sankara Narayanan', 'c37896d2792177ef497040384a551ac9391c519d', '', 'splitshan@gmail.com', '', '', 0, '', 0, 0, 0, 'R Sankara', ' Narayanan', 'Avanti Fellows', ''),
(22, '', 'Vishwanath S R V', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vishwa.hyd@gmail.com', '', '', 0, '', 0, 0, 0, 'Vishwanath S R', 'V', 'Avanti Fellows', ''),
(23, '', 'Karuna Agarwal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'karuna1125@gmail.com', '', '', 0, '', 0, 0, 0, 'Karuna', 'Agarwal', 'Avanti Fellows', ''),
(24, '', 'Ankit Nama', 'c37896d2792177ef497040384a551ac9391c519d', '', 'n.ankit061192@gmail.com', '', '', 0, '', 0, 0, 0, 'Ankit ', 'Nama', 'Avanti Fellows', ''),
(25, '', 'Navyata Sanghvi N', 'c37896d2792177ef497040384a551ac9391c519d', '', 'navysanghvi@gmail.com', '', '', 0, '', 0, 0, 0, 'Navyata Sanghvi ', 'N', 'Avanti Fellows', ''),
(26, '', 'Sathwik Akula', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sathwik3112@gmail.com', '', '', 0, '', 0, 0, 0, 'Sathwik ', 'Akula', 'Avanti Fellows', ''),
(27, '', 'J Vegnesh', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vegnesh@gmail.com', '', '', 0, '', 0, 0, 0, 'J ', 'Vegnesh', 'Avanti Fellows', ''),
(28, '', 'Addarsh C', 'c37896d2792177ef497040384a551ac9391c519d', '', 'addarsh.cherokie@gmail.com', '', '', 0, '', 0, 0, 0, 'Addarsh', 'C', 'Avanti Fellows', ''),
(29, '', 'Aishwarya P', 'c37896d2792177ef497040384a551ac9391c519d', '', 'aishwarya.padmakumar.9.6@yahoo.com', '', '', 0, '', 0, 0, 0, 'Aishwarya', 'p', 'Avanti Fellows', ''),
(30, '', 'Adhithyan K', 'c37896d2792177ef497040384a551ac9391c519d', '', 'k.adhithyan@gmail.com', '', '', 0, '', 0, 0, 0, 'Adhithyan', 'k', 'Avanti Fellows', ''),
(31, '', 'Neha Joshi H', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nehajoshi1309@gmail.com', '', '', 0, '', 0, 0, 0, 'Neha Joshi', 'H', 'Avanti Fellows', ''),
(32, '', 'Raghavi Rao K', 'c37896d2792177ef497040384a551ac9391c519d', '', 'raghavi.kodati@gmail.com', '', '', 0, '', 0, 0, 0, 'Raghavi Rao ', 'K', 'Avanti Fellows', ''),
(33, '', 'Atul Kaushik', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rala.atulk@gmail.com', '', '', 0, '', 0, 0, 0, 'Atul ', 'Kaushik', 'Avanti Fellows', ''),
(72, '', 'Parivarthan Reddy', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bparivarthan@gmail.com', '', '', 0, '', 0, 0, 0, 'Parivarthan Reddy', '', 'Avanti Fellows', ''),
(71, '', 'Ayush Bharghava', 'c37896d2792177ef497040384a551ac9391c519d', '', 'aayushperk@gmail.com', '', '', 0, '', 0, 0, 0, 'Ayush Bharghava', '', 'Avanti Fellows', ''),
(70, '', 'Ashwin Kamat', 'c37896d2792177ef497040384a551ac9391c519d', '', 'kamatiit@gmail.com', '', '', 0, '', 0, 0, 0, 'Ashwin Kamat', '', 'Avanti Fellows', ''),
(69, '', 'Akash Mahajan', 'c37896d2792177ef497040384a551ac9391c519d', '', 'akash7190@gmail.com', '', '', 0, '', 0, 0, 0, 'Akash Mahajan', '', 'Avanti Fellows', ''),
(68, '', 'Yashwanth', 'c37896d2792177ef497040384a551ac9391c519d', '', 'yashu.tadikonda@gmail.com', '', '', 0, '', 0, 0, 0, 'Yashwanth', '', 'Avanti Fellows', ''),
(67, '', 'Vasanth', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vasanthgod93@gmail.com', '', '', 0, '', 0, 0, 0, 'Vasanth', '', 'Avanti Fellows', ''),
(66, '', 'Suganthan', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sugaciitm@gmail.com', '', '', 0, '', 0, 0, 0, 'Suganthan', '', 'Avanti Fellows', ''),
(65, '', 'Praphulla', 'c37896d2792177ef497040384a551ac9391c519d', '', 'praphulla.n24@gmail.com', '', '', 0, '', 0, 0, 0, 'Praphulla', '', 'Avanti Fellows', ''),
(64, '', 'Nishad Acharaya', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nishad16acharya@gmail.com', '', '', 0, '', 0, 0, 0, 'Nishad Acharaya', '', 'Avanti Fellows', ''),
(78, '', 'Aiman Khan', 'c37896d2792177ef497040384a551ac9391c519d', '', 'quasiphysi15@gmail.com', '', '', 0, '', 0, 0, 0, 'Aiman Khan', ' ', 'Avanti Fellows', '    '),
(62, '', 'Mahesh Meena', 'c37896d2792177ef497040384a551ac9391c519d', '', 'meenasiit2011@gmail.com', '', '', 0, '', 0, 0, 0, 'Mahesh Meena', '', 'Avanti Fellows', ''),
(61, '', 'G Ankhitha', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sankitha17@gmail.com', '', '', 0, '', 0, 0, 0, 'G Ankhitha', '', 'Avanti Fellows', ''),
(60, '', 'Asish Jha', 'c37896d2792177ef497040384a551ac9391c519d', '', 'funkyash99@gmail.com', '', '', 0, '', 0, 0, 0, 'Asish Jha', '', 'Avanti Fellows', ''),
(59, '', 'Anubhav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'anubhavm10@gmail.com', '', '', 0, '', 0, 0, 0, 'Anubhav', '', 'Avanti Fellows', ''),
(58, '', 'Ajay Vaghul', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ajaysvaghul@gmail.com', '', '', 0, '', 0, 0, 0, 'Ajay Vaghul', '', 'Avanti Fellows', ''),
(57, '', 'Aditya V S', 'c37896d2792177ef497040384a551ac9391c519d', '', 'adithyavs@gmail.com', '', '', 0, '', 0, 0, 0, 'Aditya V S', '', 'Avanti Fellows', ''),
(56, '', 'A.Swapnika', 'c37896d2792177ef497040384a551ac9391c519d', '', 'swapnika29593@gmail.com', '', '', 0, '', 0, 0, 0, 'A.Swapnika', '', 'Avanti Fellows', '      '),
(73, '', 'Rahul Maheshwari', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rrm1306@gmail.com', '', '', 0, '', 0, 0, 0, 'Rahul Maheshwari', '', 'Avanti Fellows', ''),
(74, '', 'Ravi Gondolia', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ravigondalia1992@gmail.com', '', '', 0, '', 0, 0, 0, 'Ravi Gondolia', '', 'Avanti Fellows', ''),
(75, '', 'Shivam Prabhakar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'shivamshu.prabhakar@gmail.com', '', '', 0, '', 0, 0, 0, 'Shivam Prabhakar', '', 'Avanti Fellows', ''),
(76, '', 'Shreyas Nair', 'c37896d2792177ef497040384a551ac9391c519d', '', 'shreyasnair2493@gmail.com', '', '', 0, '', 0, 0, 0, 'Shreyas Nair', '', 'Avanti Fellows', ''),
(77, '', 'Siddarth', 'c37896d2792177ef497040384a551ac9391c519d', '', 'siddash9@gmail.com', '', '', 0, '', 0, 0, 0, 'Siddarth', '', 'Avanti Fellows', ''),
(79, '', 'Raunak', 'c37896d2792177ef497040384a551ac9391c519d', '', '17raunak@gmail.com', '', '', 0, '', 0, 0, 0, 'Raunak', ' ', 'Avanti Fellows', ''),
(80, '', 'Prateek Sharma', 'c37896d2792177ef497040384a551ac9391c519d', '', 'prateek.sharma1792@gmail.com', '', '', 0, '', 0, 0, 0, 'Prateek Sharma', ' ', 'Avanti Fellows', ''),
(81, '', 'Vijay Nehra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vijay.nehra5072@gmail.com', '', '', 0, '', 0, 0, 0, 'Vijay Nehra', ' ', 'Avanti Fellows', ''),
(82, '', 'debasmit das', 'c37896d2792177ef497040384a551ac9391c519d', '', 'debasmit.das@gmail.com', '', '', 0, '', 0, 0, 0, 'debasmit das', ' ', 'Avanti Fellows', ''),
(83, '', 'Aarushi Goyal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'arushigoyal1@gmail.com', '', '', 0, '', 0, 0, 0, 'Aarushi Goyal', ' ', 'Avanti Fellows', ''),
(84, '', 'Lavlesh Shukla', 'c37896d2792177ef497040384a551ac9391c519d', '', 'lavleshs@gmail.com', '', '', 0, '', 0, 0, 0, 'Lavlesh Shukla', ' ', 'Avanti Fellows', ''),
(85, '', 'Pravesh Kumar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'praveshsmrn@gmail.com', '', '', 0, '', 0, 0, 0, 'Pravesh Kumar', ' ', 'Avanti Fellows', ''),
(86, '', 'Swati', 'c37896d2792177ef497040384a551ac9391c519d', '', 'swatismarty2592@gmail.com', '', '', 0, '', 0, 0, 0, 'Swati', ' ', 'Avanti Fellows', ''),
(88, '', 'Atindra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bandiatindra@gmail.com', '', '', 0, '', 0, 0, 0, 'Atindra', ' ', 'Avanti Fellows', ''),
(89, '', 'Ankur Bansal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bansaliit108@gmail.com', '', '', 0, '', 0, 0, 0, 'Ankur Bansal', ' ', 'Avanti Fellows', ''),
(90, '', 'Akash Kumar Modi', 'c37896d2792177ef497040384a551ac9391c519d', '', 'gourav.akash75@gmail.com', '', '', 0, '', 0, 0, 0, 'Akash Kumar Modi', ' ', 'Avanti Fellows', ''),
(91, '', 'Chandra Kumar Jat', 'c37896d2792177ef497040384a551ac9391c519d', '', 'chandrakant.jat@gmail.com', '', '', 0, '', 0, 0, 0, 'Chandra Kumar Jat', ' ', 'Avanti Fellows', ''),
(92, '', 'Anurag', 'c37896d2792177ef497040384a551ac9391c519d', '', 'chalda111@gmail.com', '', '', 0, '', 0, 0, 0, 'Anurag', ' ', 'Avanti Fellows', ''),
(93, '', 'Pawan Kumar Verma', 'c37896d2792177ef497040384a551ac9391c519d', '', 'pawanheartmail@gmail.com', '', '', 0, '', 0, 0, 0, 'Pawan Kumar Verma', ' ', 'Avanti Fellows', ''),
(94, '', 'Abbas Dadla', 'c37896d2792177ef497040384a551ac9391c519d', '9462e8eee0', 'abbasdadla@gmail.com', '', NULL, NULL, NULL, 1268889823, 1348210516, 1, 'Abbas Dadla', '', '', '0'),
(95, '', 'Divyansh Gupta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'discoverdivy06@gmail.com', '', '', 0, '', 0, 0, 0, 'Divyansh Gupta', '', '', ''),
(96, '', 'Madalsa Singh', 'c37896d2792177ef497040384a551ac9391c519d', '', 'madalsa.singh09@gmail.com', '', '', 0, '', 0, 0, 0, 'Madalsa Singh', '', '', ''),
(97, '', 'Rewa Mehta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rewamehta15@gmail.com', '', '', 0, '', 0, 0, 0, 'Rewa Mehta', '', '', ''),
(98, '', 'Aditya Mandaliya', 'c37896d2792177ef497040384a551ac9391c519d', '', 'aditya2491@gmail.com', '', '', 0, '', 0, 0, 0, 'Aditya Mandaliya', '', '', ''),
(99, '', 'Dhruv Parikh', 'c37896d2792177ef497040384a551ac9391c519d', '', 'dhruvparikh01@gmail.com', '', '', 0, '', 0, 0, 0, 'Dhruv Parikh', '', '', ''),
(144, '', 'Virendra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'virensbiitk@gmail.com', '', '', 0, '', 0, 0, 0, 'Virendra', '', '', ''),
(142, '', 'Amendra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'amendra@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Amendra', '', '', ''),
(143, '', 'Sahil Bhandari', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ashok37b@gmail.com', '', '', 0, '', 0, 0, 0, 'Sahil Bhandari', '', '', ''),
(103, '', 'Nishaad Patel', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nishaadpatel@gmail.com', '', '', 0, '', 0, 0, 0, 'Nishaad Patel', '', '', ''),
(104, '', 'Pranay Bhabera', 'c37896d2792177ef497040384a551ac9391c519d', '', 'pranaybhabhera93@gmail.com', '', '', 0, '', 0, 0, 0, 'Pranay Bhabera', '', '', ''),
(105, '', 'Surabhi Motghare', 'c37896d2792177ef497040384a551ac9391c519d', '', 'surabhimotghare@gmail.com', '', '', 0, '', 0, 0, 0, 'Surabhi Motghare', '', '', ''),
(106, '', 'Neha Shukla', 'c37896d2792177ef497040384a551ac9391c519d', '', 'neha91192@gmail.com', '', '', 0, '', 0, 0, 0, 'Neha Shukla', '', '', ''),
(107, '', 'Gauri Mukadam', 'c37896d2792177ef497040384a551ac9391c519d', '', 'gymukadam@gmail.com', '', '', 0, '', 0, 0, 0, 'Gauri Mukadam', '', '', ''),
(108, '', 'Aditya Patwardhan', 'c37896d2792177ef497040384a551ac9391c519d', '', 'adibpat@gmail.com', '', '', 0, '', 0, 0, 0, 'Aditya Patwardhan', '', '', ''),
(109, '', 'Dhruven Shah', 'c37896d2792177ef497040384a551ac9391c519d', '', 'dhruven08@gmail.com', '', '', 0, '', 0, 0, 0, 'Dhruven Shah', '', '', ''),
(110, '', 'Harshal Kantale', 'c37896d2792177ef497040384a551ac9391c519d', '', 'kantale.harshal@yahoo.com', '', '', 0, '', 0, 0, 0, 'Harshal Kantale', '', '', ''),
(111, '', 'Ridham Mehta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ridham.mehta029@gmail.com', '', '', 0, '', 0, 0, 0, 'Ridham Mehta', '', '', ''),
(112, '', 'Rahul Dubey', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rahuldubey.vjti@gmail.com', '', '', 0, '', 0, 0, 0, 'Rahul Dubey', '', '', ''),
(113, '', 'Akash Dhotre', 'c37896d2792177ef497040384a551ac9391c519d', '', 'akashdhotre92@gmail.com', '', '', 0, '', 0, 0, 0, 'Akash Dhotre', '', '', ''),
(114, '', 'Purva Kulkarni', 'c37896d2792177ef497040384a551ac9391c519d', '', 'purva_410@yahoo.co.in', '', '', 0, '', 0, 0, 0, 'Purva Kulkarni', '', '', ''),
(115, '', 'Neha Sankhe', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nehasankhe16@gmail.com', '', '', 0, '', 0, 0, 0, 'Neha Sankhe', '', '', ''),
(141, '', 'Swapnil', 'c37896d2792177ef497040384a551ac9391c519d', '', 'swapnil060992@gmail.com', '', '', 0, '', 0, 0, 0, 'Swapnil', '', '', ''),
(117, '', 'Sejal Bharati', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sejalgbharati@gmail.com', '', '', 0, '', 0, 0, 0, 'Sejal Bharati', '', '', ''),
(118, '', 'Harshini Shah', 'c37896d2792177ef497040384a551ac9391c519d', '', 'harshini307@gmail.com', '', '', 0, '', 0, 0, 0, 'Harshini Shah', '', '', ''),
(119, '', 'Noopur Sane', 'c37896d2792177ef497040384a551ac9391c519d', '', 'noopursane10@gmail.com', '', '', 0, '', 0, 0, 0, 'Noopur Sane', '', '', ''),
(120, '', 'Shridhar Bhattad', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bhattadsid009@gmail.com', '', '', 0, '', 0, 0, 0, 'Shridhar Bhattad', '', '', ''),
(121, '', 'Kedar Joshi', 'c37896d2792177ef497040384a551ac9391c519d', '', 'kedarjoshi0511@gmail.com', '', '', 0, '', 0, 0, 0, 'Kedar Joshi', '', '', ''),
(122, '', 'Mrunmai Jadhav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'mruni09@gmail.com', '', '', 0, '', 0, 0, 0, 'Mrunmai Jadhav', '', '', ''),
(123, '', 'Anuja Waikar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'anuwaikar03@gmail.com', '', '', 0, '', 0, 0, 0, 'Anuja Waikar', '', '', ''),
(124, '', 'Allish Jain', 'c37896d2792177ef497040384a551ac9391c519d', '', 'allish.jain92@gmail.com', '', '', 0, '', 0, 0, 0, 'Allish Jain', '', '', ''),
(125, '', 'Pooja Patil', 'c37896d2792177ef497040384a551ac9391c519d', '', 'pooja.patil.543@gmail.com', '', '', 0, '', 0, 0, 0, 'Pooja Patil', '', '', ''),
(126, '', 'Debanshu Das', 'c37896d2792177ef497040384a551ac9391c519d', '', 'debanshudas_92@yahoo.co.in', '', '', 0, '', 0, 0, 0, 'Debanshu Das', '', '', ''),
(127, '', 'Prasanna Raut', 'c37896d2792177ef497040384a551ac9391c519d', '', 'prasannaraut36@gmail.com', '', '', 0, '', 0, 0, 0, 'Prasanna Raut', '', '', ''),
(128, '', 'Nooruddin Kapadia', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nooruddin04051993@gmail.com', '', '', 0, '', 0, 0, 0, 'Nooruddin Kapadia', '', '', ''),
(129, '', 'Shashank Bansal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sb040408@gmail.com', '', '', 0, '', 0, 0, 0, 'Shashank Bansal', '', '', ''),
(140, '', 'Saurabh Baranwal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'saurabhbrn@gmail.com', '', '', 0, '', 0, 0, 0, 'Saurabh Baranwal', '', '', ''),
(131, '', 'Yamini Bansal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'yamini63bansal@gmail.com', '', '', 0, '', 0, 0, 0, 'Yamini Bansal', '', '', ''),
(132, '', 'Pratyush Nalla', 'c37896d2792177ef497040384a551ac9391c519d', '', 'pratyushnalla@gmail.com', '', '', 0, '', 0, 0, 0, 'Pratyush Nalla', '', '', ''),
(133, '', 'Lavish Ordia', 'c37896d2792177ef497040384a551ac9391c519d', '', 'lavishordia@gmail.com', '', '', 0, '', 0, 0, 0, 'Lavish Ordia', '', '', ''),
(135, '', 'Pulkit Agrawal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'genrelquanta@gmail.com', '', '', 0, '', 0, 0, 0, 'Pulkit Agrawal', '', '', ''),
(136, '', 'Nivvedan S', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nivvedan@gmail.com', '', '', 0, '', 0, 0, 0, 'Nivvedan S', '', '', ''),
(137, '', 'Kunal Mehta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'kunalmehta603@gmail.com', '', '', 0, '', 0, 0, 0, 'Kunal Mehta', '', '', ''),
(139, '', 'Ishan Bose', 'c37896d2792177ef497040384a551ac9391c519d', '9462e8eee0', 'bose.ishan4392@gmail.com', '', NULL, NULL, NULL, 1268889823, 1348210516, 1, 'Ishan Bose', '', '', '0'),
(145, '', 'Sumit Sinha', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sumit.sinha3193@gmail.com', '', '', 0, '', 0, 0, 0, 'Sumit Sinha', '', '', ''),
(146, '', 'Akarshan Sarkar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ak27ar01sh19an93@gmail.com', '', '', 0, '', 0, 0, 0, 'Akarshan Sarkar', '', '', ''),
(147, '', 'Chandan Kumar ', 'c37896d2792177ef497040384a551ac9391c519d', '', 'chandank@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Chandan Kumar ', '', '', ''),
(148, '', 'Vijaya Rani', 'c37896d2792177ef497040384a551ac9391c519d', '', 'vijaya.rani.iitk@gmail.com', '', '', 0, '', 0, 0, 0, 'Vijaya Rani', '', '', ''),
(150, '', 'Poonam Raut', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rautpoonamb@gmail.com', '', '', 0, '', 0, 0, 0, 'Poonam Raut', '', '', ''),
(151, '', 'Antriksh Sareen', 'c37896d2792177ef497040384a551ac9391c519d', '', 'antriksh@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Antriksh Sareen', '', '', ''),
(169, '', 'Prasoon Priyank', 'c37896d2792177ef497040384a551ac9391c519d', '', 'prasoonlikes@gmail.com', '', '', 0, '', 0, 0, 0, 'Prasoon Priyank', '', '', ''),
(153, '', 'Chirag Gagrani', 'c37896d2792177ef497040384a551ac9391c519d', '', 'cgagrani@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Chirag Gagrani', '', '', ''),
(154, '', 'Karmveer Singh ', 'c37896d2792177ef497040384a551ac9391c519d', '', 'karms@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Karmveer Singh ', '', '', ''),
(168, '', 'Anubhav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'anubhavkumar.iitd@gmail.com', '', '', 0, '', 0, 0, 0, 'Anubhav', '', '', ''),
(156, '', 'Nitish Kumar Shrivastava', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nitishks@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Nitish Kumar Shrivastava', '', '', ''),
(157, '', 'Reema Kumari', 'c37896d2792177ef497040384a551ac9391c519d', '', 'reemak@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Reema Kumari', '', '', ''),
(158, '', 'Meenakshi Khosla', 'c37896d2792177ef497040384a551ac9391c519d', '', 'mkhosla@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Meenakshi Khosla', '', '', ''),
(167, '', 'Rashmi Kumari', 'c37896d2792177ef497040384a551ac9391c519d', '9462e8eee0', 'heavenonearth.1991@gmail.com', '', NULL, NULL, NULL, 1268889823, 1348210516, 1, 'Rashmi Kumari', '', '', '0'),
(160, '', 'Chetan Dalal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'chetand@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Chetan Dalal', '', '', ''),
(161, '', 'Siddhansh Arora', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sidarora@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Siddhansh Arora', '', '', ''),
(162, '', 'Lakshya Khandelwal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'lakshyak@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Lakshya Khandelwal', '', '', ''),
(163, '', 'Anurag Vaishnav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'anurg@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Anurag Vaishnav', '', '', ''),
(165, '', 'Rishika Garg', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rishika@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Rishika Garg', '', '', ''),
(166, '', 'Siddharth Rawat', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sidraw@iitk.ac.in', '', '', 0, '', 0, 0, 0, 'Siddharth Rawat', '', '', ''),
(170, '', 'Rahul Kumar', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rahulkumar.iitd57@gmail.com', '', '', 0, '', 0, 0, 0, 'Rahul Kumar', '', '', ''),
(171, '', 'Siddhant Sachdeva', 'c37896d2792177ef497040384a551ac9391c519d', '', 'siddhant.sachdeva@gmail.com', '', '', 0, '', 0, 0, 0, 'Siddhant Sachdeva', '', '', ''),
(172, '', 'Akshay Srivastav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'akshay1511@gmail.com', '', '', 0, '', 0, 0, 0, 'Akshay Srivastav', '', '', ''),
(173, '', 'Khyatti Gupta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'khyattigupta@gmail.com', '', '', 0, '', 0, 0, 0, 'Khyatti Gupta', '', '', ''),
(174, '', 'Ujjawal Gupta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ujjawalgupta@gmail.com', '', '', 0, '', 0, 0, 0, 'Ujjawal Gupta', '', '', ''),
(175, '', 'Abhishek Sinha', 'c37896d2792177ef497040384a551ac9391c519d', '', 'abhishek4096@gmail.com', '', '', 0, '', 0, 0, 0, 'Abhishek Sinha', '', '', ''),
(176, '', 'Dhruv Tayal ', 'c37896d2792177ef497040384a551ac9391c519d', '', 'rockingguy92@gmail.com', '', '', 0, '', 0, 0, 0, 'Dhruv Tayal ', '', '', ''),
(178, '', 'Vatsal Dusad', 'c37896d2792177ef497040384a551ac9391c519d', '', 'dusadvatsal@gmail.com', '', '', 0, '', 0, 0, 0, 'Vatsal Dusad', '', '', ''),
(179, '', 'Siddharth Mandal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'siddhakasuperboy@gmail.com', '', '', 0, '', 0, 0, 0, 'Siddharth Mandal', '', '', ''),
(180, '', 'akshay arora ', 'c37896d2792177ef497040384a551ac9391c519d', '', 'akshaye18@gmail.com', '', '', 0, '', 0, 0, 0, 'akshay arora ', '', '', ''),
(181, '', 'Mayank Garg ', 'c37896d2792177ef497040384a551ac9391c519d', '', 'maysun01@gmail.com', '', '', 0, '', 0, 0, 0, 'Mayank Garg ', '', '', ''),
(183, '', 'Ishana Shekhawat', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ishana.shekhawat@gmail.com', '', '', 0, '', 0, 0, 0, 'Ishana Shekhawat', '', '', ''),
(184, '', 'Suddatta', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sudatta.mohanty.0993@gmail.com', '', '', 0, '', 0, 0, 0, 'Suddatta', '', '', ''),
(185, '', 'Surbhi Garg', 'c37896d2792177ef497040384a551ac9391c519d', '', 'surbhigarg1991@gmail.com', '', '', 0, '', 0, 0, 0, 'Surbhi Garg', '', '', ''),
(186, '', 'Sanya Ohri', 'c37896d2792177ef497040384a551ac9391c519d', '', 'sanyaohri@gmail.com', '', '', 0, '', 0, 0, 0, 'Sanya Ohri', '', '', ''),
(187, '', 'Abhay Goyal', 'c37896d2792177ef497040384a551ac9391c519d', '', 'abhay.iitd19@gmail.com', '', '', 0, '', 0, 0, 0, 'Abhay Goyal', '', '', ''),
(188, '', 'Naman', 'c37896d2792177ef497040384a551ac9391c519d', '', 'namangarg29@gmail.com', '', '', 0, '', 0, 0, 0, 'Naman', '', '', ''),
(189, '', 'Vivek', 'c37896d2792177ef497040384a551ac9391c519d', '', 'viveknautiyal135@gmail.com', '', '', 0, '', 0, 0, 0, 'Vivek', '', '', ''),
(190, '', 'Aastha', 'c37896d2792177ef497040384a551ac9391c519d', '', 'duaaastha3@gmail.com', '', '', 0, '', 0, 0, 0, 'Aastha', '', '', ''),
(191, '', 'Bahadur Prasad', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bpmeena662@gmail.com', '', '', 0, '', 0, 0, 0, 'Bahadur Prasad', '', '', ''),
(192, '', 'Utkarsh', 'c37896d2792177ef497040384a551ac9391c519d', '', 'goel.utkarsh@gmail.com', '', '', 0, '', 0, 0, 0, 'Utkarsh', '', '', ''),
(194, '', 'Garvit', 'c37896d2792177ef497040384a551ac9391c519d', '', 'bansal30031992@gmail.com', '', '', 0, '', 0, 0, 0, 'Garvit', '', '', ''),
(196, '', 'Arpit Jain', 'c37896d2792177ef497040384a551ac9391c519d', '', 'jainarpit908@gmail.com', '', '', 0, '', 0, 0, 0, 'Arpit Jain', '', '', ''),
(197, '', 'Surbhi Goel', 'c37896d2792177ef497040384a551ac9391c519d', '', 'surbhi18@gmail.com', '', '', 0, '', 0, 0, 0, 'Surbhi Goel', '', '', ''),
(198, '', 'Ekta Yadav', 'c37896d2792177ef497040384a551ac9391c519d', '', 'ektasisodiya@gmail.com', '', '', 0, '', 0, 0, 0, 'Ekta Yadav', '', '', ''),
(200, '', 'Pulkit Sapra', 'c37896d2792177ef497040384a551ac9391c519d', '', 'pulkitsapra.iitd@gmail.com', '', '', 0, '', 0, 0, 0, 'Pulkit Sapra', '', '', ''),
(202, '', 'Anupam', 'c37896d2792177ef497040384a551ac9391c519d', '', 'thisidismine007@gmail.com', '', '', 0, '', 0, 0, 0, 'Anupam', '', '', ''),
(203, '', 'Deepak Vijay', 'c37896d2792177ef497040384a551ac9391c519d', '', 'me2100914@mech.iitd.ac.in', '', '', 0, '', 0, 0, 0, 'Deepak Vijay', '', '', ''),
(205, '', 'Mohd Imran', 'c37896d2792177ef497040384a551ac9391c519d', '', 'nihal2193@gmail.com', '', '', 0, '', 0, 0, 0, 'Mohd Imran', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fellows`
--
ALTER TABLE `fellows`
  ADD CONSTRAINT `fk_mentees_chapter1` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mentees_mentor1` FOREIGN KEY (`mentor_id`) REFERENCES `mentors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mentors`
--
ALTER TABLE `mentors`
  ADD CONSTRAINT `fk_mentor_chapter1` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
