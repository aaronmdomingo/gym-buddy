-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2019 at 12:58 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym-buddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `sender` smallint(6) NOT NULL,
  `receiver` smallint(6) NOT NULL,
  `id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`sender`, `receiver`, `id`) VALUES
(1, 3, 1),
(3, 1, 2),
(1, 4, 5),
(4, 1, 6),
(2, 4, 7),
(4, 2, 8),
(2, 5, 9),
(5, 2, 10),
(1, 2, 17),
(2, 1, 18),
(65, 63, 19),
(63, 65, 20),
(62, 1, 21),
(1, 62, 22),
(62, 65, 23),
(65, 62, 24),
(63, 1, 25),
(1, 63, 26),
(63, 62, 27),
(62, 63, 28),
(3, 62, 31),
(62, 3, 32),
(3, 65, 33),
(65, 3, 34),
(32, 29, 35),
(29, 32, 36),
(20, 21, 37),
(21, 20, 38),
(33, 29, 39),
(29, 33, 40),
(33, 32, 41),
(32, 33, 42),
(28, 29, 43),
(29, 28, 44),
(28, 32, 45),
(32, 28, 46),
(28, 33, 47),
(33, 28, 48);

-- --------------------------------------------------------

--
-- Table structure for table `gyms`
--

DROP TABLE IF EXISTS `gyms`;
CREATE TABLE `gyms` (
  `id` smallint(6) NOT NULL,
  `name` varchar(200) NOT NULL,
  `placeid` varchar(500) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gyms`
--

INSERT INTO `gyms` (`id`, `name`, `placeid`, `lat`, `lng`) VALUES
(1, 'SIX Station Interval Xperience', 'ChIJz5Xx5Azn3IARdrS_A8X3Utg', 33.6460979, -117.7441491),
(2, 'CorePower Yoga', 'ChIJM2eheHro3IARnvBlgo9ijb0', 33.628771, -117.728482),
(3, 'OC Performance Coaches', 'ChIJwSm6HHro3IAR8hwfKDGsd34', 33.627603, -117.731175),
(4, 'CKO Kickboxing', 'ChIJ085hhHro3IARoz_84ioJmGM', 33.6287563, -117.7283147),
(5, 'Ashley Whitford, RYT-200', 'ChIJrS4pTGXn3IAR-wx3Ma9rdbk', 33.643929, -117.7373831),
(6, '24 Hour Fitness', 'ChIJexLPhuPn3IARxiRg4ByaBfY', 33.642992, -117.742743),
(7, 'Phenomenal Fitness Inc', 'ChIJOxdciWHo3IARA-2_vRaeSfI', 33.6241418, -117.7260218),
(8, 'Radiant Hot Yoga - Irvine', 'ChIJe64ileTn3IARzAGg1tAuBig', 33.6464939, -117.7453507),
(9, 'Ruination CrossFit', 'ChIJCY_EtIfp3IARqy-QE088Ldw', 33.6283939, -117.7273712),
(10, 'Ra Yoga Irvine Spectrum Center', 'ChIJE-I-7APn3IAR4vHzRGLI9L0', 33.6492998, -117.7418702),
(11, 'ProSport Physical Therapy & Performance', 'ChIJXYoHmnro3IARQKc3pQn1pO8', 33.6281294, -117.7273504),
(12, 'Upgrade Pilates', 'ChIJkY69c4Dp3IARXvXORjVHOD4', 33.6276476, -117.7243712),
(13, 'Gold\'s Gym', 'ChIJcQEaE-8asocRgbb7VUhIldQ', 35.5347145, -97.5827283),
(14, 'Diabetes Solution of Ok', 'ChIJ-WmcX_oasocRRyS7QgBfnMc', 35.5370657, -97.5763995),
(15, 'Planet Fitness', 'ChIJCWPVatwasocRBGbz4fAZm_A', 35.538633, -97.5958),
(16, 'A+ Fitness, LLC', 'ChIJz0qy0_casocRxE2RItLrS5M', 35.5334949, -97.568561),
(17, 'Tanning and Toning OKC Mademoiselle', 'ChIJ8cjb-1casocRiugDQm4LgUE', 35.5354118, -97.5674803),
(18, 'YMCA HEALTHY LIVING CENTER - INTEGRIS', 'ChIJD0Gzc_MasocRCEIyw6YqR48', 35.5269361, -97.5745946),
(19, 'Mom & Daughter Fitness Centers', 'ChIJjyrf81casocRuL47MXdD0aU', 35.5354118, -97.5674803),
(20, 'Mademoiselle Women\'s Only Fitness Center', 'ChIJ8cjb-1casocRV93Q0HZmnPw', 35.5354118, -97.5674803),
(21, 'Whole Body Vibration @ Mademoiselle Fitness', 'ChIJ8cjb-1casocRioK9Kagoeus', 35.535459, -97.5674668),
(22, 'Likeminded Therapies - Massage Clinic and School', 'ChIJc7U421gasocRau2yHFweEUg', 35.5316403, -97.5662777),
(23, 'SILVER SNEAKERS @ MADEMOISELLE FITNESS', 'ChIJ8cjb-1casocRrwVrUKkjPEo', 35.535459, -97.5674668),
(24, 'Toning Tables & Robotic Fitness @ Mademoiselle', 'ChIJ8cjb-1casocRrOjVS7ezlNA', 35.535459, -97.5674668),
(25, 'Womens Gym and Swim Oklahoma City', 'ChIJ8cjb-1casocRw54Td9FPp0I', 35.536509, -97.566196),
(26, 'Oklahoma Buddhist VihÄra', 'ChIJx_KclZMasocREjQSs3wlY-8', 35.520295, -97.5830128),
(27, 'South Anaheim Fit Body Boot Camp', 'ChIJV4R4Keop3YARZ4YZVz-lHjs', 33.7964012, -117.9403234),
(28, 'Achieve Fitness - Anaheim', 'ChIJuyPeCYwp3YARNDg6As-OIqk', 33.8025893, -117.9460374),
(29, 'Gold\'s Gym', 'ChIJN0NR4zko3YARzZNNzuknP5A', 33.8010001, -117.9434295),
(30, 'Crunch Fitness - Garden Grove', 'ChIJ6dW-uFEo3YARPtrylkd3fn8', 33.8023375, -117.9615535),
(31, 'Planet Fitness', 'ChIJCfCE4joo3YART3f6rvae6Tk', 33.802122, -117.938645),
(32, 'Phenomenal Nutrition', 'ChIJ2xLyVgMp3YARURlN_aYSPUA', 33.8035637, -117.9484197),
(33, 'Chuze Fitness', 'ChIJR9Haa2go3YARvfzPdEiPtcM', 33.7861119, -117.959675),
(34, 'Master Toddy LA Training Center Anaheim', 'ChIJiXi2P8wp3YARdLClhREPP6o', 33.8182738, -117.9405),
(35, 'Hilton Health Club and Spa', 'ChIJlYb13N3X3IARyBF1l-gMwbE', 33.8008282, -117.9183447),
(36, 'Muevelo Dance Fitness', 'ChIJ_Vlb59PX3IAR_la1qL29sXM', 33.7879509, -117.9231023),
(37, '24 Hour Fitness', 'ChIJJTWsf14o3YARjfgmzlLGDjo', 33.789939, -117.966178),
(38, 'StretchLab', 'ChIJ0a7zDJXn3IARKjEzSSCv-gk', 33.649056, -117.7420748),
(39, 'Hero Quarterback Development Program', 'ChIJx09KMync3IARjT9lFK9sdqg', 33.684494, -117.825296),
(40, '9Round Fitness Irvine', 'ChIJ8x6-zCbc3IAR0pbQ1iyPzZ4', 33.692522, -117.82694),
(41, 'Personal Evolutions Pilates', 'ChIJWzbv98bd3IARbyX1CU2oWx4', 33.6845673, -117.8265049),
(42, 'SeaFit', 'ChIJg3ORdIDe3IARd0gnrgT9Mfk', 33.6760492, -117.8325487),
(43, 'Destination Fitness OC', 'ChIJHyfV3vff3IARiMG3VMym6E4', 33.6760447, -117.8326022),
(44, 'Studio Fixx', 'ChIJWbqoip7e3IARCRKqkegvT7w', 33.69223, -117.834093),
(45, 'Hybrid fitness-OC personal training Irvine', 'ChIJNXE0VZbe3IARslMM7w4g5zU', 33.693126, -117.8329209),
(46, 'Primal Fitness Centers', 'ChIJCxIAW2Tf3IARc8rrfGziHYg', 33.6931403, -117.8329003),
(47, 'Black Label Athletics', 'ChIJNUU8Jl7e3IARY8NNeuj5E2I', 33.6931403, -117.8329003),
(48, 'Union Ryde', 'ChIJO3HQ_qTd3IAR8SE325FpLU8', 33.697285, -117.8280648),
(49, 'OC CryoCare', 'ChIJY2H312Lo3IAR65o5zgauyfo', 33.622036, -117.724891),
(50, 'ProConnic Natural Health', 'ChIJ5UhAoV3p3IARybhL0O670iY', 33.6229496, -117.7235645),
(51, 'Subfighter MMA', 'ChIJexrcbGPo3IARZwlMRWcWRho', 33.6237798, -117.723688),
(52, 'Hard Core Fitness Studio', 'ChIJnSbWZGbo3IARRTvIjuW5N2w', 33.6296171, -117.7192395),
(53, 'Fighter Girls', 'ChIJvXyu0mjo3IARZ4cGCzGpD_w', 33.6327337, -117.7193475),
(54, 'Russ Miura Jiu Jitsu - Next Generation OC', 'ChIJ57Sd52Lo3IARqIKIF9I0uBw', 33.62178, -117.7240799),
(55, '24 Hour Fitness', 'ChIJISvvp_nn3IARYyjkgDSVhHc', 33.652764, -117.746139),
(56, 'Xynergy Mind Body & Soul (Corporate Wellness Company)', 'ChIJ5Yl_ylfd3IAR6Cz3OyuZJ3Y', 33.657126, -117.746395),
(57, 'Fit by Cy', 'ChIJbRqZ3Rzn3IARj1c--K5cSnA', 33.653342, -117.751789),
(58, 'KINETIC', 'ChIJoeNKXffn3IARb-jiR-bw4nY', 33.6515478, -117.7504168),
(59, 'The Village Fitness', 'ChIJOVkDxPfn3IARTTFIqbnF2Jc', 33.6535841, -117.7509831),
(60, '24 Hour Fitness Ultra Sport', 'ChIJ7Ye7BY3e3IARowKXeNXL6nc', 33.679577, -117.852114),
(61, 'Richway Amethyst Far-Infrared Biomat Center', 'ChIJ0ZK6tLzf3IARPIcidbo9fM0', 33.6878461, -117.855365),
(62, 'æ¢µè°·ç‘œä¼½è¿žé”ä¼šé¦† - å°”æ¹¾åº— iF Yoga in Irvine', 'ChIJt_37IRnf3IARlY2mhXjv_Qw', 33.6866536, -117.8575964),
(63, 'Jungle Fitness', 'ChIJkYTEyOre3IAR-6n0EidheAc', 33.6879501, -117.8598496),
(64, 'Hamabe Dojo: Beachside Boxing School in Irvine', 'ChIJsWtxCoPf3IAR2PpPDqB--98', 33.6876128, -117.8587491),
(65, 'Equinox Sports Club Orange County', 'ChIJd_f8NpPe3IARRl8WktLzSSs', 33.6836103, -117.8544035),
(66, 'South Coast Gymnastics', 'ChIJ2WLLK8De3IARV2x13O2qa6U', 33.6905697, -117.8572422),
(67, 'Core Plus Pilates', 'ChIJ4b0XD-re3IAR65a5cYkANro', 33.6897119, -117.8594309),
(68, 'Crossfit Brit', 'ChIJq1P5A-ve3IAREgKyniIgqkE', 33.6906436, -117.8540339),
(69, 'SoCal Powerlifting', 'ChIJz3JHKlTe3IARllM5WLemv8w', 33.690613, -117.8537625);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `senderid` mediumint(8) UNSIGNED NOT NULL,
  `receiverid` mediumint(8) UNSIGNED NOT NULL,
  `messageval` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `senderid`, `receiverid`, `messageval`) VALUES
(1, 1, 2, 'Hello! I am looking for someone to workout with :)'),
(2, 1, 3, 'Hello, Im looking for someone to workout with! '),
(3, 3, 1, 'Hello, Im looking for someone to workout with! '),
(4, 3, 2, 'Hello, Im looking for someone to workout with! '),
(5, 2, 3, 'Hello, Im looking for someone to workout with! '),
(6, 3, 1, 'Hello?'),
(7, 2, 1, 'Hello Do you still use this app?'),
(9, 5, 1, 'Dont reply to this, its a test'),
(10, 1, 5, 'Hey!'),
(11, 1, 5, 'Hello Again'),
(12, 1, 5, 'Hello Again'),
(41, 1, 5, 'Test'),
(42, 1, 5, 'Hello'),
(43, 1, 5, 'Whats going on bro haha'),
(44, 1, 5, 'Testing'),
(45, 1, 5, 'Testing'),
(46, 1, 5, 'test'),
(47, 1, 5, 'tes'),
(48, 1, 5, 'tes'),
(49, 1, 5, 'tset'),
(50, 2, 1, 'I want to check to see if the order of messages update'),
(51, 1, 3, 'Testing'),
(55, 1, 16, 'Hello!'),
(56, 16, 1, 'Hey there'),
(57, 8, 1, 'Yo whats up bro'),
(58, 1, 8, 'Hey Dan can I get a CSS question'),
(60, 1, 8, 'Thanks'),
(61, 1, 8, 'Whats going on Dan'),
(62, 8, 1, 'Hey Aaron, youre not good'),
(63, 1, 8, 'Thanks Dan'),
(64, 1, 8, 'Sup Dan'),
(65, 3, 1, 'Yo aaron, this app is tight son'),
(66, 1, 3, 'Thanks Jan, you the OG'),
(67, 8, 1, 'Hello Aaron'),
(68, 8, 1, 'How are you doing'),
(69, 1, 5, 'Another Test bro'),
(70, 7, 5, 'Hey Tony'),
(71, 1, 7, 'Hello Chump Supreme'),
(73, 6, 1, 'Hello Aaron! I want to get stronger at benching and I saw that you workout on most weekdays, I was w'),
(74, 6, 1, 'Hello again Aaron, just checking again to see how many letters I can fit in this dialogue box before it actually overflo'),
(81, 1, 22, 'Hello'),
(82, 28, 33, 'Hey Pooh, Whats up?'),
(83, 33, 28, 'nothin much'),
(84, 28, 33, 'wanna get some honey?'),
(85, 28, 33, 'did you get my message? :('),
(86, 33, 28, 'im getting your messages!!!'),
(87, 28, 33, 'you sure?'),
(88, 33, 28, 'yes!!'),
(89, 28, 33, 'WHERES MY HONEY??'),
(90, 33, 28, 'ITS MINE');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` smallint(50) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `day` varchar(50) CHARACTER SET utf8 NOT NULL,
  `starttime` int(100) UNSIGNED NOT NULL,
  `endtime` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `username`, `day`, `starttime`, `endtime`) VALUES
(22, 'SunnyDays', 'Friday', 800, 1000),
(23, 'SunnyDays', 'Friday', 1400, 1800),
(25, 'CorgiChristine', 'Friday', 800, 1000),
(29, 'CorgiChristine', 'Thursday', 800, 1100),
(30, 'CorgiChristine', 'Wednesday', 1300, 1500),
(31, 'CorgiChristine', 'Sunday', 1100, 1300),
(32, 'CorgiChristine', 'Wednesday', 1300, 1500),
(33, 'CorgiChristine', 'Sunday', 1100, 1300),
(34, 'CorgiChristine', 'Saturday', 500, 1000),
(35, 'CorgiChristine', 'Monday', 300, 1400),
(36, 'CorgiChristine', 'Saturday', 500, 1000),
(37, 'CorgiChristine', 'Monday', 300, 1400),
(40, 'ChanningTatum', 'Thursday', 500, 1700),
(41, 'ChanningTatum', 'Sunday', 500, 1700),
(42, 'ChanningTatum', 'Tuesday', 500, 1700),
(43, 'ChanningTatum', 'Monday', 500, 1700),
(44, 'ChanningTatum', 'Wednesday', 500, 1700),
(45, 'ChanningTatum', 'Friday', 500, 1700),
(46, 'ChanningTatum', 'Saturday', 500, 1700),
(47, 'MrAmerica', 'Sunday', 500, 500),
(48, 'MrAmerica', 'Tuesday', 500, 1700),
(49, 'MrAmerica', 'Monday', 500, 1700),
(50, 'MrAmerica', 'Thursday', 500, 1700),
(51, 'MrAmerica', 'Wednesday', 500, 1700),
(52, 'MrAmerica', 'Friday', 500, 1700),
(53, 'MrAmerica', 'Saturday', 500, 1700),
(54, 'DontTouchMyHon', 'Sunday', 800, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `weightlifting` varchar(20) NOT NULL,
  `cardio` varchar(20) NOT NULL,
  `yoga` varchar(20) NOT NULL,
  `bodybuilding` varchar(20) NOT NULL,
  `swimming` varchar(20) NOT NULL,
  `photo` varchar(1200) NOT NULL,
  `gymid` varchar(50) NOT NULL,
  `gymname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `age`, `weightlifting`, `cardio`, `yoga`, `bodybuilding`, `swimming`, `photo`, `gymid`, `gymname`) VALUES
(1, 'SunnyDayss', 'Aaron', 'Domingo', 25, 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', '', 'ChIJexLPhuPn3IARxiRg4ByaBfY', '24 Hour Fitness'),
(2, 'EdwardLee', 'Edward', 'Lee', 25, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', '', 'ChIJE-I-7APn3IAR4vHzRGLI9L0', 'Ra Yoga Irvine Spectrum Center'),
(3, 'rjaytea', 'Richard', 'Tea', 25, 'Intermediate', 'Intermediate', 'Intermediate', 'Intermediate', 'Intermediate', '', 'ChIJexLPhuPn3IARxiRg4ByaBfY', '24 Hour Fitness'),
(5, 'skyen', 'Kenneth', 'Keiu', 26, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', '', '', ''),
(6, 'taruntula', 'Tarun', 'Padath', 25, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', 'https://media.licdn.com/dms/image/C4D0BAQFgmh2pajt3jQ/company-logo_200_200/0?e=2159024400&v=beta&t=PvgNnkl06fFOyEuieerGDaPk9Gk7xZLaXit4ePzszhs', 'ChIJCY_EtIfp3IARqy-QE088Ldw', 'Ruination CrossFit'),
(7, 'CorgiChristine', 'Christine', 'Le', 28, 'Intermediate', 'Expert', 'Expert', 'Expert', 'Expert', 'https://upload.wikimedia.org/wikipedia/commons/2/2b/WelshCorgi.jpeg', 'ChIJCY_EtIfp3IARqy-QE088Ldw', 'Ruination CrossFit'),
(8, 'Addy', 'Adison', 'Ly', 28, 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'https://yt3.ggpht.com/a/AGF-l7_WkQqGTL_xIsc1fCFiOv3OhQ0zaVZzgo8MuA=s900-c-k-c0xffffffff-no-rj-mo', 'ChIJOxdciWHo3IARA-2_vRaeSfI', 'Phenomenal Fitness Inc'),
(9, 'JanNaaasty', 'Jan', 'To-Ong', 30, 'Beginner', 'Expert', 'Expert', 'Expert', 'Beginner', 'https://i.pinimg.com/originals/2a/8d/8c/2a8d8c7456cca97a2788fff2a84a1ee1.jpg', 'ChIJe64ileTn3IARzAGg1tAuBig', 'Radiant Hot Yoga - Irvine'),
(10, 'HorseRace4lyfe', 'Dan', 'P.', 18, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', 'https://www.insidehook.com/wp-content/uploads/2019/03/Arnold_Header_1496168849.jpg?fit=1200%2C750', 'ChIJexLPhuPn3IARxiRg4ByaBfY', '24 Hour Fitness'),
(11, 'Ligmaas', 'Uzair', 'Ashraf', 25, 'Intermediate', 'Intermediate', 'Expert', 'Beginner', 'Beginner', 'https://i.imgur.com/WVlIbbC.png', 'ChIJz5Xx5Azn3IARdrS_A8X3Utg', 'KINETIC'),
(12, 'Crispy', 'Christie', 'Hui', 22, 'Expert', 'Beginner', 'Intermediate', 'Expert', 'Beginner', 'https://www.dollargeneral.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/0/0/00834601_kellogg_rice_krispies_cereal_12oz_right_facing_1.jpg', 'ChIJrS4pTGXn3IAR-wx3Ma9rdbk', 'Ashley Whitford, RYT-200'),
(13, 'Sean', 'Sean', 'H.', 21, 'Beginner', 'Expert', 'Expert', 'Intermediate', 'Beginner', 'https://www.geek.com/wp-content/uploads/2018/04/Call-of-Duty-Modern-Warfare-2-625x352.jpg', 'ChIJz5Xx5Azn3IARdrS_A8X3Utg', 'SIX Station Interval Xperience'),
(14, 'GIJoe', 'Joe', 'Moberly', 26, 'Beginner', 'Intermediate', 'Intermediate', 'Expert', 'Expert', 'https://www.ssbwiki.com/images/thumb/0/03/Samus_SSBU.png/250px-Samus_SSBU.png', 'ChIJe64ileTn3IARzAGg1tAuBig', 'Radiant Hot Yoga - Irvine'),
(15, 'MamaP', 'Brena', 'Patel', 28, 'Expert', 'Intermediate', 'Intermediate', 'Beginner', 'Intermediate', 'http://m.quickmeme.com/img/3e/3ee905234a49fe22ba0fd57f9f603e068dc727bd17b0a44d4b1dcae7d166a1cc.jpg', 'ChIJM2eheHro3IARnvBlgo9ijb0', 'CorePower Yoga'),
(16, 'LanaDelRay', 'Lena', 'Porina', 21, 'Expert', 'Intermediate', 'Intermediate', 'Expert', 'Beginner', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFeh76iK4Co5TqDtiO7gogA6RSJriKhrcvc9bh1na3hUEqAZeLaQ&s', 'ChIJM2eheHro3IARnvBlgo9ijb0', 'CorePower Yoga'),
(17, 'NiceKeyboard', 'Anjaleena', 'Barclay', 21, 'Expert', 'Expert', 'Beginner', 'Beginner', 'Intermediate', 'https://images-na.ssl-images-amazon.com/images/I/81PLqxtrJ3L._SX466_.jpg', 'ChIJexLPhuPn3IARxiRg4ByaBfY', '24 Hour Fitness'),
(20, 'LoverOfDogs', 'Heondo', 'Kim', 24, 'Beginner', 'Beginner', 'Intermediate', 'Expert', 'Intermediate', 'https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2016/07/0001-h_2016.jpg', 'ChIJXYoHmnro3IARQKc3pQn1pO8', 'ProSport Physical Therapy & Performance'),
(21, 'DaneTheGreat', 'Dane', 'Maison', 25, 'Beginner', 'Expert', 'Intermediate', 'Intermediate', 'Expert', 'https://si.wsj.net/public/resources/images/BN-XF140_0129EM_574V_20180129031614.jpg', 'ChIJXYoHmnro3IARQKc3pQn1pO8', 'ProSport Physical Therapy & Performance'),
(24, 'Jimothy', 'James', 'Cho', 34, 'Expert', 'Beginner', 'Intermediate', 'Expert', 'Beginner', 'https://cdn10.bigcommerce.com/s-npe4l/products/1157/images/1335/B-MZ-SMSHD---HIGH__85441.1477602947.1280.1280.jpg?c=2', 'ChIJe64ileTn3IARzAGg1tAuBig', 'Radiant Hot Yoga - Irvine'),
(25, 'OldManIAm', 'Kevin', 'Ihm', 30, 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Expert', 'https://cdn-s3.si.com/images/Michael-Phelps-SI-cover-shoot-SI523_TK1_00272.jpg', 'ChIJCY_EtIfp3IARqy-QE088Ldw', 'Ruination CrossFit'),
(26, 'MrMitch', 'Mitch', 'O\'Hair', 21, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxKE1ochLqy5RfZNgvk5AiS0Vujh0-tRCvJdNSThBdBsrk5UrJYQ&s', 'ChIJkY69c4Dp3IARXvXORjVHOD4', 'Upgrade Pilates'),
(27, 'FlexBoxGuru', 'Cody', 'Miller', 30, 'Expert', 'Expert', 'Expert', 'Expert', 'Expert', '', 'ChIJoeNKXffn3IARb-jiR-bw4nY', 'KINETIC'),
(28, 'LeonOnirac', 'Noel', 'Carino', 25, 'Expert', 'Beginner', 'Intermediate', 'Expert', 'Beginner', 'https://upload.wikimedia.org/wikipedia/en/1/13/Stick_figure.png', 'ChIJz5Xx5Azn3IARdrS_A8X3Utg', 'SIX Station Interval Xperience'),
(29, 'ChanningTatum', 'Channing', 'Tatum', 21, 'Expert', 'Beginner', 'Beginner', 'Expert', 'Expert', 'https://images.fandango.com/ImageRenderer/0/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/p419915/dearjohn-pm-channingtatum-1.jpg', 'ChIJd_f8NpPe3IARRl8WktLzSSs', 'Equinox Sports Club Orange County'),
(32, 'MrAmerica', 'Chris', 'Evans', 21, 'Expert', 'Expert', 'Beginner', 'Expert', 'Expert', 'https://d.newsweek.com/en/full/857534/captain-america-avengers.jpg?w=1600&h=1600&q=88&f=bacbc8948b0288ce8266643d5a0b1814', 'ChIJd_f8NpPe3IARRl8WktLzSSs', 'Equinox Sports Club Orange County'),
(33, 'MyHoney', 'Winnie', 'Pooh', 93, 'Expert', 'Beginner', 'Beginner', 'Intermediate', 'Expert', 'https://i.kym-cdn.com/entries/icons/original/000/029/060/cover3.jpg', 'ChIJd_f8NpPe3IARRl8WktLzSSs', 'Equinox Sports Club Orange County');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` smallint(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
