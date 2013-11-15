-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2013 at 09:15 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tablefind`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `booking_timestamp` datetime NOT NULL,
  `date` date NOT NULL,
  `time` char(255) NOT NULL,
  `number_of_people` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `confirmed` enum('yes','no','hold') NOT NULL DEFAULT 'hold',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `venue_id`, `booking_timestamp`, `date`, `time`, `number_of_people`, `room_id`, `confirmed`) VALUES
(1, 2, 7, '2011-06-22 13:02:17', '2011-06-23', '12-15 pm', 2, 2, 'no'),
(2, 5, 7, '2011-06-22 13:13:20', '2011-06-30', '18-22 pm', 12, 1, 'yes'),
(3, 4, 7, '2011-06-23 01:20:21', '2011-06-28', '22-05 pm', 3, 0, 'hold'),
(4, 4, 7, '2011-06-23 01:20:56', '2011-09-09', '10-12 am', 4, 0, 'yes'),
(5, 6, 7, '2013-08-01 02:23:20', '2010-01-22', '12-15 pm', 2, 1, 'yes'),
(6, 6, 7, '2013-08-01 02:23:20', '2010-01-22', '12-15 pm', 5, 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `cusines`
--

DROP TABLE IF EXISTS `cusines`;
CREATE TABLE IF NOT EXISTS `cusines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusine` char(255) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `cusines`
--

INSERT INTO `cusines` (`id`, `cusine`, `display_name`, `description`) VALUES
(1, 'Contemporary', 'Contemporary Cuisine', 'This is wonderful cuisine.'),
(2, 'Eclectic', '', ''),
(3, 'Mediterranean', '', ''),
(4, 'Irish', '', ''),
(5, 'Thai', '', ''),
(6, 'Cajun', '', ''),
(7, 'Creole', '', ''),
(8, 'Comfort Food', '', ''),
(9, 'Indian', '', ''),
(10, 'Canadian', '', ''),
(11, 'Korean', '', ''),
(12, 'Peruvian', '', ''),
(13, 'Chinese', '', ''),
(14, 'Japanese', '', ''),
(15, 'Diner', '', ''),
(16, 'Vegetarian', '', ''),
(17, 'European', '', ''),
(18, 'Grill', '', ''),
(19, 'Bistro', '', ''),
(20, 'Greek', '', ''),
(21, 'Asian', 'Asian', 'Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est.\r\n\r\nSuspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(22, 'Barbecue', '', ''),
(23, 'South American', '', ''),
(24, 'Eastern European', '', ''),
(25, 'Caribbean', '', ''),
(26, 'Middle Eastern', '', ''),
(27, 'Wraps', '', ''),
(28, 'International', '', ''),
(29, 'Global', '', ''),
(30, 'Desserts', '', ''),
(31, 'Italian', '', ''),
(32, 'Deli', '', ''),
(33, 'Charcuterie', '', ''),
(34, 'Mexican', '', ''),
(35, 'Latin American', '', ''),
(36, 'Mediterranea', '', ''),
(37, 'Fish & Chip', '', ''),
(38, 'Malaysian', '', ''),
(39, 'Sushi', '', ''),
(40, 'Global', '', ''),
(41, 'Seafood', '', ''),
(42, 'French', '', ''),
(43, 'Continental', '', ''),
(44, 'Vietnamese', '', ''),
(45, 'Fusion', '', ''),
(46, 'Health Food', '', ''),
(47, 'Tapas', '', ''),
(48, 'Small Plate', '', ''),
(49, 'English', '', ''),
(50, 'American', '', ''),
(51, 'Hungarian', '', ''),
(52, 'Persian', '', ''),
(53, 'French', '', ''),
(54, 'Portuguese', '', ''),
(55, 'Spanish', '', ''),
(56, 'Grill', '', ''),
(57, 'Seafood', '', ''),
(58, 'Regional', '', ''),
(59, 'Swiss', '', ''),
(60, 'Argentinean', '', ''),
(61, 'Algerian', '', ''),
(62, 'Mediterranean', '', ''),
(63, 'Regional', '', ''),
(64, 'Algerian', '', ''),
(65, 'French', '', ''),
(66, 'Asian', 'Asian', 'Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est.'),
(67, 'Organic', '', ''),
(68, 'Latin', '', ''),
(69, 'Continental', '', ''),
(70, 'Bistro', '', ''),
(71, 'Cr?pes', '', ''),
(72, 'Italian', '', ''),
(73, 'French', '', ''),
(74, 'Moroccan', '', ''),
(75, 'Lebanese', '', ''),
(76, 'Steakhouse', '', ''),
(77, 'International-Global', '', ''),
(78, 'Afghan', '', ''),
(79, 'Latin', '', ''),
(80, 'Hamburgers', '', ''),
(81, 'Pub', '', ''),
(82, 'Brewery', '', ''),
(83, 'Chinese', '', ''),
(84, 'Vegetarian', '', ''),
(85, 'Pizza', '', ''),
(86, 'Breakfast', '', ''),
(87, 'Brunch', '', ''),
(88, 'Szechuan', '', ''),
(89, 'Pizza', '', ''),
(90, 'Bakery', '', ''),
(91, 'Dim sum', '', ''),
(92, 'Sushi', '', ''),
(93, 'Cafe', '', ''),
(94, 'Hawaiian', '', ''),
(95, 'Diner', '', ''),
(96, 'Family', '', ''),
(97, 'Cafe', '', ''),
(98, 'Eastern European', '', ''),
(99, 'African', '', ''),
(100, 'Ethiopian', '', ''),
(101, 'Fast food', '', ''),
(102, 'Mexican', '', ''),
(103, 'Steaks', '', ''),
(104, 'Tapas', '', ''),
(105, 'Japanese', '', ''),
(106, 'Bubble tea', '', ''),
(107, 'Soup', '', ''),
(108, 'Pakistani', '', ''),
(109, 'Korean', '', ''),
(110, 'Indian', '', ''),
(112, 'British', '', ''),
(113, 'Fish & chips', '', ''),
(114, 'Halal', '', ''),
(115, 'Indian', '', ''),
(116, 'Filipino', '', ''),
(117, 'Thai', '', ''),
(118, 'Pacific northwest', '', ''),
(119, 'Coffee', '', ''),
(120, 'Crepes', '', ''),
(121, 'Middle Eastern', '', ''),
(122, 'Turkish', '', ''),
(123, 'Spanish', '', ''),
(124, 'Canadian', '', ''),
(125, 'Continental', '', ''),
(126, 'Cambodian', '', ''),
(127, 'Japanese', '', ''),
(128, 'Korean Tapas', '', ''),
(129, 'Fast food', '', ''),
(130, 'Tea house', '', ''),
(131, 'Greek', '', ''),
(132, 'Izakaya', '', ''),
(134, 'Chinese', '', ''),
(135, 'Fusion', '', ''),
(136, 'Southwestern', '', ''),
(137, 'Fine dining', '', ''),
(138, 'Barbeque', '', ''),
(139, 'Filipino', '', ''),
(140, 'Pacific northwest', '', ''),
(141, 'Dessert', '', ''),
(142, 'Ice Cream', '', ''),
(143, 'Cafe', '', ''),
(144, 'Vietnamese', '', ''),
(145, 'Greek', '', ''),
(146, 'Sandwiches', '', ''),
(147, 'Italian', '', ''),
(148, 'Pub', '', ''),
(149, 'Continental', '', ''),
(150, 'Deli', '', ''),
(151, 'International', '', ''),
(152, 'Deli', '', ''),
(153, 'Vietnamese', '', ''),
(154, 'Rotisserie', '', ''),
(155, 'Brazilian', '', ''),
(156, 'Russian', '', ''),
(157, 'Deli', '', ''),
(158, 'Sandwiches', '', ''),
(159, 'Pub Food', '', ''),
(160, 'Hamburgers', '', ''),
(161, 'Cajun', '', ''),
(162, 'Pakistani', '', ''),
(163, 'Syrian', '', ''),
(164, 'Armenian', '', ''),
(165, 'Lebanese', '', ''),
(166, 'Exotic', '', ''),
(167, 'Caf?-Coffee Shop', '', ''),
(168, 'Market', '', ''),
(169, 'Market', '', ''),
(170, 'Regional', '', ''),
(171, 'Market', '', ''),
(172, 'International-Global', '', ''),
(173, 'BBQ', '', ''),
(174, 'Rotisserie', '', ''),
(175, 'Comfort Food', '', ''),
(176, 'Deli', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cusines_venues`
--

DROP TABLE IF EXISTS `cusines_venues`;
CREATE TABLE IF NOT EXISTS `cusines_venues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cusine_id` int(10) unsigned NOT NULL,
  `venue_id` int(10) unsigned NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mediae`
--

DROP TABLE IF EXISTS `mediae`;
CREATE TABLE IF NOT EXISTS `mediae` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `youtube_id` char(255) NOT NULL,
  `flickr_username` char(255) NOT NULL,
  `twitter_username` char(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `venue_id` char(255) NOT NULL,
  `detail` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `price` char(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `venue_id`, `detail`, `type`, `price`) VALUES
(1, '2', 'Menu details for Harbord room', 'fixed', '12'),
(2, '2', 'Menu details for Harbord room 2', 'fixed type', '33');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `detail` blob NOT NULL,
  `average` float NOT NULL,
  `food` float NOT NULL,
  `atmosphere` float NOT NULL,
  `service` char(255) NOT NULL,
  `value` char(255) NOT NULL,
  `recommended` char(255) NOT NULL,
  `good_for` char(255) NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `venue_id`, `heading`, `detail`, `average`, `food`, `atmosphere`, `service`, `value`, `recommended`, `good_for`, `date_stamp`) VALUES
(1, 1, 2, 'Awesome Food', 0x476f6f6420466f6f64, 75, 75, 75, '75', '75', '75', ' |  |  |  |  |  |  |  |  |  |', '2011-04-22 04:20:29'),
(7, 1, 2, 'Nice venue', 0x576520617265206c6f6f6b696e6720666f727761726420746f20766973697420746869732076656e756520616761696e20696e206675747572652e205468697320697320776f6e646572277320706c61636520666f72206b69647320616e6420616c6c206167652070656f706c65, 20, 20, 20, '20', '20', 'yes', 'visit', '2013-11-12 06:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `review_comments`
--

DROP TABLE IF EXISTS `review_comments`;
CREATE TABLE IF NOT EXISTS `review_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NOT NULL,
  `comment` blob NOT NULL,
  `review_like` enum('yes','no') NOT NULL,
  `ip_address` char(250) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `review_comments`
--

INSERT INTO `review_comments` (`id`, `review_id`, `comment`, `review_like`, `ip_address`) VALUES
(1, 7, 0x6c696b65207468697320636f6d6d656e74203a29, 'yes', '103.103.103.1');

-- --------------------------------------------------------

--
-- Table structure for table `review_pictures`
--

DROP TABLE IF EXISTS `review_pictures`;
CREATE TABLE IF NOT EXISTS `review_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NOT NULL,
  `file_name` char(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `review_pictures`
--

INSERT INTO `review_pictures` (`id`, `review_id`, `file_name`) VALUES
(3, 1, 'test.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `venue_id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `seating` char(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `venue_id`, `name`, `seating`) VALUES
(3, '15', 'Single', '220'),
(4, '7', 'Super  Single', '30'),
(5, '13', 'Double', '44'),
(6, '2', 'Single', '22'),
(7, '16', 'Double', '300');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(255) NOT NULL,
  `last_name` char(255) NOT NULL,
  `phone_number` char(255) NOT NULL,
  `image` char(255) NOT NULL,
  `location` char(255) NOT NULL,
  `dob_day` char(250) NOT NULL,
  `dob_month` char(250) NOT NULL,
  `dob_year` char(250) NOT NULL,
  `receive_email` enum('yes','no') DEFAULT 'no',
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `address_city` varchar(255) NOT NULL,
  `address_postcode` varchar(255) NOT NULL,
  `user_pass` varchar(65) NOT NULL,
  `user_email` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `phone_number`, `image`, `location`, `dob_day`, `dob_month`, `dob_year`, `receive_email`, `address_1`, `address_2`, `address_city`, `address_postcode`, `user_pass`, `user_email`) VALUES
(1, 'Vikas', 'Gupta', '9594191664', 'Test', 'Mumbai', '15', '03', '1986', '', '123', '23456', 'mumbai', '12ed', '', ''),
(2, 'Rahul', 'Test', '9876543210', 'no image', 'Mumbai', '15', '1', '1980', 'yes', '123, marol', 'maroshi, vijay nagar', 'mumbai', '462003', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
CREATE TABLE IF NOT EXISTS `venues` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` char(255) CHARACTER SET latin1 NOT NULL,
  `address` char(255) CHARACTER SET latin1 NOT NULL,
  `city` char(255) CHARACTER SET latin1 NOT NULL DEFAULT 'London',
  `country` char(255) CHARACTER SET latin1 NOT NULL DEFAULT 'United Kingdom',
  `postcode` char(255) CHARACTER SET latin1 NOT NULL,
  `average_price` char(255) CHARACTER SET latin1 NOT NULL,
  `nearest_station` char(255) CHARACTER SET latin1 NOT NULL,
  `cuisine` char(255) CHARACTER SET latin1 NOT NULL,
  `dress_code` char(255) CHARACTER SET latin1 NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `address_avail` char(30) CHARACTER SET latin1 DEFAULT 'find',
  `featured` tinyint(1) NOT NULL,
  `user_id` char(255) CHARACTER SET latin1 NOT NULL,
  `bookable` enum('yes','no') CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `take_away` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `venueCuisine` (`cuisine`(6)),
  KEY `venuName` (`name`(3)),
  KEY `venueCode` (`postcode`(3)),
  FULLTEXT KEY `venueSearch` (`name`,`address`,`postcode`,`average_price`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15249 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `city`, `country`, `postcode`, `average_price`, `nearest_station`, `cuisine`, `dress_code`, `lat`, `lng`, `address_avail`, `featured`, `user_id`, `bookable`, `take_away`) VALUES
(2, 'The Harbord Room', '89 Harbord St.', 'Toronto', 'Canada', 'M5S 1G4', '13', 'Harbord St., Spadina Ave.', 'Contemporary, Eclectic', '', 43.6627713, -79.4034237, 'valid', 0, '', 'no', 'no'),
(3, 'Insomnia', '563 Bloor St. W', 'Toronto', 'Canada', 'M5S 1Y6', '8', 'Bloor St., Bathurst St.', 'Mediterranean', '', 43.665166, -79.410955, 'valid', 0, '', 'no', 'no'),
(4, 'The Pour House', '182 Dupont Ave.', 'Toronto', 'Canada', 'M5R 2E6', '10', 'Dupont', 'Irish', '', 43.6755695, -79.4037188, 'valid', 0, '', 'no', 'no'),
(5, 'Thai Spring Roll', '525 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1Y4', '6', 'Bathurst?, Spadina', 'Thai', '', 43.6655109, -79.4092857, 'valid', 0, '', 'no', 'no'),
(6, 'Gallery Grill', 'Hart House (U of T), 7 Hart House Circle', 'Toronto', 'Canada', 'M5S 3H3', '', 'Museum, St. George?', 'Contemporary, Eclectic', '', 43.6636103, -79.394648, 'valid', 0, '', 'no', 'no'),
(7, 'By The Way Cafe', '400 Bloor St. W', 'Toronto', 'Canada', 'M5S 1X5', '8', 'Bathurst, Spadina', 'Mediterranean,', 'Blue and Green', 43.6659888, -79.4075525, 'valid', 0, '', 'no', 'no'),
(8, 'Southern Accent', '595 Markham St.', 'Toronto', 'Canada', 'M6G 2L7', '18', 'Bloor St, Bathurst St.', 'Cajun, Creole', '', 43.6641337, -79.4121134, 'valid', 0, '', 'no', 'no'),
(9, 'Master''s Buffeteria Catering', '310 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1W4', '', '', 'Comfort Food', '', 43.667067, -79.4025151, 'valid', 0, '', 'no', 'no'),
(10, 'Mt. Everest Restaurant', '469 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1X9', '10', 'Bathurst, Spadina', 'Indian', '', 43.6659752, -79.4067809, 'valid', 0, '', 'no', 'no'),
(11, 'Harbord House', '150 Harbord St.', 'Toronto', 'Canada', 'M5S 1H2', '10', 'Bathurst, Spadina', 'Canadian', '', 43.6624641, -79.4054584, 'valid', 0, '', 'no', 'no'),
(12, 'Onara Onara', '648 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K9', '', 'Bathurst?, Beer', 'Korean', '', 43.6642949, -79.4153269, 'valid', 1, '', 'no', 'yes'),
(13, 'Indian Curry House', '563 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y6', '', 'Bathurst, Beer', 'Indian', '', 43.665166, -79.410955, 'valid', 0, '', 'no', 'no'),
(14, 'Over Easy Breakfast Restaurant', '208 Bloor St. W.', 'Toronto', 'Canada', 'M5S 3B4', '', 'St. George, Museum', 'Canadian', '', 43.6685033, -79.3957804, 'valid', 0, '', 'no', 'no'),
(15, 'Boulevard Cafe', '161 Harbord St.', 'Toronto', 'Canada', 'M5S 1H1', '', 'Bathurst, Beer', 'Peruvian', '', 43.6619832, -79.4070696, 'valid', 0, '', 'no', 'no'),
(16, 'Shin Chon Hong Cho Barbecue Chicken', '712 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L4', '', 'Bathurst, Beer', 'Chinese', '', 43.6637372, -79.4178757, 'valid', 0, '', 'no', 'no'),
(17, 'Shanghai Restaurant', '409 Spadina Ave', 'Toronto', 'Canada', 'M5T 2G6', '', 'No. 8 Hose, Patrick', 'Chinese', '', 43.6568726, -79.3993426, 'valid', 0, '', 'no', 'no'),
(18, 'Rolu', '320 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1W5', '', 'Spadina, George', 'Japanese', '', 43.6669153, -79.4032218, 'valid', 0, '', 'no', 'no'),
(19, 'Mulraepang Restaurant', '3 Christie Street', 'Toronto', 'Canada', 'M6G 3B1', '', '', 'Korean', '', 43.6638152, -79.4184795, 'valid', 0, '', 'no', 'no'),
(20, 'Moya Restaurant', '620 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K7', '', 'Ossington, Bathurst', 'Diner', '', 43.6646179, -79.4141224, 'valid', 0, '', 'no', 'no'),
(21, 'Yellow Brick', '258 Dupont St.', 'Toronto', 'Canada', 'M5R 1V7', '', 'Dupont, Spadina', 'Vegetarian', '', 43.6750858, -79.4065459, 'valid', 0, '', 'no', 'no'),
(22, 'Imonay House Restaurant', '665 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L1', '', 'Bathurst, Beer', 'Comfort Food', '', 43.6641039, -79.4158414, 'valid', 0, '', 'no', 'no'),
(23, 'Splendido Restaurant', '88 Harbord St.', 'Toronto', 'Canada', 'M5S 1G5', '20', 'Harbord, Spadina', 'European', '', 43.6629902, -79.4028953, 'valid', 0, '', 'no', 'no'),
(24, 'Indian Rice Factory', '414 Dupont', 'Toronto', 'Canada', 'M5R 1V9', '12', 'Dupont , Bathurst', 'Indian', '', 43.6738059, -79.4117298, 'valid', 0, '', 'no', 'no'),
(25, 'Country Style Hungarian', '450 Bloor St W', 'Toronto', 'Canada', 'M5S 1X8', '', 'Bathurst, Beer', 'Comfort Food', '', 43.6657038, -79.4090183, 'valid', 0, '', 'no', 'no'),
(26, 'Fresh by Juice For Life', '326 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1W5', '', 'Bathurst, Beer', 'Vegetarian', '', 43.6667506, -79.4034142, 'valid', 0, '', 'no', 'no'),
(27, 'Il Bun Ji', '668 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L2', '', 'Bathurst, Beer', 'Japanese', '', 43.6640864, -79.4163258, 'valid', 0, '', 'no', 'no'),
(28, 'Happy Harbour', '451 Dupont St', 'Toronto', 'Canada', 'M5R 1W5', '', '', 'Grill', '', 43.6731332, -79.4139187, 'valid', 0, '', 'no', 'no'),
(29, 'Bistro Tournesol', '406 Dupont St.', 'Toronto', 'Canada', 'M5R 1V9', '8', 'Dupont, Bathurst', 'Bistro', '', 43.6738795, -79.4114591, 'valid', 0, '', 'no', 'no'),
(30, 'Ionian', '350 Bloor St W', 'Toronto', 'Canada', 'M5S 1W9', '', '', 'Greek', '', 43.666577, -79.4046873, 'valid', 0, '', 'no', 'no'),
(31, 'China Garden', '200 Bloor Street W.', 'Toronto', 'Canada', 'M5S 1T8', '', 'George, Museum', 'Asian', '', 43.6685632, -79.3954595, 'valid', 0, '', 'no', 'no'),
(32, 'Tati Bistro', '124 Harbord St.', 'Toronto', 'Canada', 'M5S1G8', '', 'Spadina, Bathurst', 'Bistro', '', 43.6627045, -79.4043414, 'valid', 0, '', 'no', 'no'),
(33, 'B.B.Ques Gourmet Grill', '650 Spadina Ave.', 'Toronto', 'Canada', 'M5S 2H7', '15', 'Harbord, Spadina Ave', 'Barbecue', '', 43.6631886, -79.402424, 'valid', 0, '', 'no', 'no'),
(34, 'Fonda Colombiana Restaurant', '623 Bloor St W', 'Toronto', 'Canada', 'M6G 1K8', '', '', 'South American', '', 43.6643547, -79.414188, 'valid', 0, '', 'no', 'no'),
(35, 'Swiss Chalet Rotisserie & Grill', '230 Bloor St W', 'Toronto', 'Canada', 'M5S 1T8', '', '', 'Barbecue', '', 43.6681966, -79.3966052, 'valid', 0, '', 'no', 'no'),
(36, 'Lucky Dragon', '418 Spadina Ave', 'Toronto', 'Canada', 'M5T 2G7', '', 'College, Spadina Ave', 'Chinese', '', 43.6563495, -79.3995298, 'valid', 0, '', 'no', 'no'),
(37, 'Misto Fine Dining', '1088 Bathurst Street', 'Toronto', 'Canada', 'M5R 3G9', '', 'Dupont?, Bathurst', 'Eastern European', '', 43.6726307, -79.4143087, 'valid', 0, '', 'no', 'no'),
(38, 'Tokyo Sushi', '362 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1X2', '', 'Spadina, Bathurst', 'Asian', '', 43.6664151, -79.405789, 'valid', 0, '', 'no', 'no'),
(39, 'Caribbean Roti Palace', '744 Bathurst St.', 'Toronto', 'Canada', 'M5S 2R6', '6', 'Bathurst, Beer', 'Caribbean', '', 43.6640568, -79.4108945, 'valid', 0, '', 'no', 'no'),
(40, 'Ghazale', '504 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1Y3', '', 'Bathurst, Beer', 'Middle Eastern', '', 43.6653715, -79.4103601, 'valid', 0, '', 'no', 'no'),
(41, 'Korean Village Han Kuk Kwan', '628 Bloor St W', 'Toronto', 'Canada', 'M6G 1K7', '', 'Bathurst, Beer', 'Korean', '', 43.6645016, -79.4143877, 'valid', 0, '', 'no', 'no'),
(42, 'Pita Q', '750 Spadina Ave.', 'Toronto', 'Canada', 'M5S 2J2', '', 'Spadina, George', 'Wraps', '', 43.6666291, -79.4038155, 'valid', 0, '', 'no', 'no'),
(43, 'Royal Thai Garden', '524 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1Y3', '', 'Bathurst, Beer', 'Thai', '', 43.665312, -79.4108983, 'valid', 0, '', 'no', 'no'),
(44, 'Apollo 11', '1093 Bathurst Street', 'Toronto', 'Canada', 'M5R 3G8', '', 'Dupont, Bathurst?', 'Diner', '', 43.6729763, -79.4141824, 'valid', 0, '', 'no', 'no'),
(45, 'Loire Casual Gourmet', '119 Harbord St.', 'Toronto', 'Canada', 'M5S 1G7', '15', 'Harbord, Bathurst', 'International, Global', '', 43.6624996, -79.4047542, 'valid', 0, '', 'no', 'no'),
(46, 'Live', '264 Dupont St.', 'Toronto', 'Canada', 'M5R 1V7', '12', 'Dupont, Spadina Ave.', 'Vegetarian', '', 43.6747158, -79.4082998, 'valid', 0, '', 'no', 'no'),
(47, 'Kashmir', '605 Bloor St W', 'Toronto', 'Canada', 'M6G 1K6', '', '', 'Indian', '', 43.664582, -79.4131364, 'valid', 0, '', 'no', 'no'),
(48, 'Momo''s Restaurant & Grocerteria', '196 Robert Street', 'Toronto', 'Canada', 'M5S 2K7', '', 'Spadina, Bathurst', 'Middle Eastern', '', 43.6627789, -79.4038911, 'valid', 0, '', 'no', 'no'),
(49, 'Madoka Japanese', '252 Dupont St', 'Toronto', 'Canada', 'M5R 1V7', '', 'Dupont, Spadina', 'Asian', '', 43.6750315, -79.4063005, 'valid', 0, '', 'no', 'no'),
(50, 'Davenport Garden', '643 Dupont Street', 'Toronto', 'Canada', 'M6G 1Z4', '', 'Bathurst, Dupont', 'Asian', '', 43.6716595, -79.4208379, 'valid', 0, '', 'no', 'no'),
(51, 'Ka-chi', '612 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K7', '', 'Bathurst, Beer', 'Asian', '', 43.6647615, -79.4137949, 'valid', 0, '', 'no', 'no'),
(52, 'Seoul Sam Mi', '621 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K8', '', 'Bathurst, Beer', 'Korean', '', 43.6643827, -79.4140628, 'valid', 0, '', 'no', 'no'),
(53, 'Dessert Trends', '154 Harbord St.', 'Toronto', 'Canada', 'M5S 1H2', '10', 'Bathurst, Spadina', 'Desserts', '', 43.6624189, -79.4057464, 'valid', 0, '', 'no', 'no'),
(54, 'Satay-satay', '700 Bloor St W', 'Toronto', 'Canada', 'M6G 1L4', '', '', 'Asian', '', 43.6637846, -79.4174716, 'valid', 0, '', 'no', 'no'),
(55, 'Bar Mercurio', '270 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1V8', '', 'Bloor Yonge, Sherbourne', 'Italian', '', 43.6675386, -79.400434, 'valid', 0, '', 'no', 'no'),
(56, 'Toronto Gom-tang', '694 Bloor St W', 'Toronto', 'Canada', 'M6G 1L4', '', '', 'Asian', '', 43.6638263, -79.4172955, 'valid', 0, '', 'no', 'no'),
(57, 'Grapefruit Moon', '968 Bathurst St.', 'Toronto', 'Canada', 'M5R 3G6', '', 'Bloor, Bathurst', 'Vegetarian', '', 43.6697473, -79.4131425, 'valid', 0, '', 'no', 'no'),
(58, 'Sunny Dragon', '584 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K4', '', '', 'Asian', '', 43.6648423, -79.4125923, 'valid', 0, '', 'no', 'no'),
(59, 'Yummy Bar-B-Q', '561 Bloor St. West', 'Toronto', 'Canada', 'M5S 1Y6', '', 'Bloor,  Bathurst', 'Korean', '', 43.6650971, -79.4107282, 'valid', 0, '', 'no', 'no'),
(60, 'Green Room , The', '296 Brunswick Ave.', 'Toronto', 'Canada', 'M5S 2M7', '', 'Bloor,  Brunswick', 'Canadian', '', 43.6654905, -79.4074505, 'valid', 0, '', 'no', 'no'),
(61, 'Thai Basil', '467 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1X9', '', 'Bloor, Spadina', 'Thai', '', 43.6659893, -79.4066722, 'valid', 0, '', 'no', 'no'),
(62, 'Sunny Cafe', '322 Bloor St W.', 'Toronto', 'Canada', 'M5S 1W5', '', '', 'Diner', '', 43.6668932, -79.4032688, 'valid', 0, '', 'no', 'no'),
(63, 'Flip, Toss and Thai Kitchen', '141 Harbord St.', 'Toronto', 'Canada', 'M5S 1H1', '', 'Harbord, Spadina Ave.', 'Thai', '', 43.6621282, -79.4062694, 'valid', 0, '', 'no', 'no'),
(64, 'Huron Deli', '364 Huron St', 'Toronto', 'Canada', 'M5S 2G4', '', '', 'Deli, Charcuterie', '', 43.6643838, -79.4005311, 'valid', 0, '', 'no', 'no'),
(65, 'Rocco''s Plum Tomato', '585 Bloor St.W', 'Toronto', 'Canada', 'M6G 1K5', '', 'Bathurst, Beer', 'Italian', '', 43.6648329, -79.4124699, 'valid', 0, '', 'no', 'no'),
(66, 'Erl''s Bistro and Bar', '700 University Ave', 'Toronto', 'Canada', 'M5G 1X7', '', 'Patrick, Toronto Coach Terminal', 'Bistro', '', 43.6590858, -79.3914771, 'valid', 0, '', 'no', 'no'),
(67, 'Mumbo Jumbo', '527 Bloor St. W', 'Toronto', 'Canada', 'M5S 1Y5', '', 'Sherbourne?, Castle Frank', 'International, Global', '', 43.6654798, -79.4094336, 'valid', 0, '', 'no', 'no'),
(68, 'Siam Thai Garden', '549 Bloor Street West', 'Toronto', 'Canada', 'M5S 1Y6', '', 'Bathurst, Beer', 'Asian', '', 43.6652055, -79.410216, 'valid', 0, '', 'no', 'no'),
(69, 'Double Happiness', '599 Bloor Street West', 'Toronto', 'Canada', 'M6G 1K5', '', 'Bathurst, Beer', 'Diner', '', 43.6646173, -79.4129686, 'valid', 0, '', 'no', 'no'),
(70, 'Maroli', '630 Bloor St. W.', 'Toronto', 'Canada', 'M6G 1K7', '10', 'Bathurst, Beer', 'Indian', '', 43.6644437, -79.4144542, 'valid', 0, '', 'no', 'no'),
(71, 'Szechuan Garden', '259 College St', 'Toronto', 'Canada', 'M5T 1R5', '', 'No. 8 Hose, Patrick', 'Chinese', '', 43.6579958, -79.3994127, 'valid', 0, '', 'no', 'no'),
(72, 'Hweng-jing E', '708 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L4', '', 'Bathurst, Beer', 'Asian', '', 43.663859, -79.4177195, 'valid', 0, '', 'no', 'no'),
(73, 'Five Two Five West Bar & Grill', '525 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y4', '', '', 'Grill', '', 43.6655109, -79.4092857, 'valid', 0, '', 'no', 'no'),
(74, 'Tacos El Asador', '690 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L2', '', 'Bathurst, Beer', 'Mexican', '', 43.6638669, -79.4171184, 'valid', 0, '', 'no', 'no'),
(75, 'Paldo Kangsan', '694 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L4', '', '', 'Korean', '', 43.6638263, -79.4172955, 'valid', 0, '', 'no', 'no'),
(76, 'Crystal Rolls', '372 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1X2', '8', 'Spadina, Bathurst?', 'Asian', '', 43.6662689, -79.4060378, 'valid', 0, '', 'no', 'no'),
(77, 'The Tap Bar & Grill', '517 Bloor Street West', 'Toronto', 'Canada', 'M5S 1Y4', '', '', 'Grill', '', 43.6654681, -79.4089465, 'valid', 0, '', 'no', 'no'),
(78, 'Nataraj', '394 Bloor St. W', 'Toronto', 'Canada', 'M5S 1X4', '9', 'Bathurst, Spadina?', 'Indian', '', 43.6660188, -79.4072163, 'valid', 0, '', 'no', 'no'),
(79, 'Comparsita', '515 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y4', '', '', 'Latin American', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(80, 'Sarah''s Falafel and Shawarma', '487 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1Y2', '', 'Bathurst, Spadina', 'Middle Eastern', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(81, 'Dynasty', '131 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1R1', '', 'Bay, Museum', 'Chinese', '', 43.6687565, -79.3928026, 'valid', 0, '', 'no', 'no'),
(82, 'Dos Amigos', '1201 Bathurst St.', 'Toronto', 'Canada', 'M5R 3H3', '9', 'Dupont, Clair West', 'Mexican', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(83, 'Amnesia Bar & Grill', '526 Bloor Street West', 'Toronto', 'Canada', 'M5S 1Y3', '', 'Bathurst, Beer', 'Grill', '', 43.6652054, -79.4109351, 'valid', 0, '', 'no', 'no'),
(84, 'Omero Ristorante', '194 Bloor St W', 'Toronto', 'Canada', 'M5S 1T8', '', '', 'Italian', '', 43.6685346, -79.3953066, 'valid', 0, '', 'no', 'no'),
(85, 'Sridevi', '551 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y6', '', 'Bathurst, Beer', 'Indian', '', 43.6652928, -79.4103342, 'valid', 0, '', 'no', 'no'),
(86, 'Island Thyme', '872 Bathurst St.', 'Toronto', 'Canada', 'M5R 3G3', '', 'Bathurst, Beer', 'Caribbean', '', 43.66715, -79.4120197, 'valid', 0, '', 'no', 'no'),
(87, 'China Garden', '7071 Airport Rd, #1', 'Mississauga', 'Canada', 'L4T 4J3', '', 'Malton GO, Malton', 'Chinese', '', 43.7042614, -79.6431113, 'valid', 0, '', 'no', 'no'),
(88, 'Mariela Lopera', '648 Bloor St W', 'Toronto', 'Canada', 'M6G 1K9', '', '', 'Comfort Food', '', 43.6642949, -79.4153269, 'valid', 0, '', 'no', 'no'),
(89, 'Mulraepang', '3 Christie Street', 'Toronto', 'Canada', 'M6G 3B1', '', '', 'Korean', '', 43.6638152, -79.4184795, 'valid', 0, '', 'no', 'no'),
(90, 'Tasty', '692 Bloor Street West', 'Toronto', 'Canada', 'M6G 1L4', '', 'Bathurst, Beer', 'Diner', '', 43.6639602, -79.4173785, 'valid', 0, '', 'no', 'no'),
(91, 'Aida''s Falafel', '553 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y6', '', '', 'Middle Eastern', '', 43.6651725, -79.4103714, 'valid', 0, '', 'no', 'no'),
(92, 'Over Easy', '208 Bloor St. W.', 'Toronto', 'Canada', 'M5S 3B4', '10', 'George, Museum', 'Canadian', '', 43.6685033, -79.3957804, 'valid', 0, '', 'no', 'no'),
(93, 'Sejong', '658 Bloor ST W', 'Toronto', 'Canada', 'M6G 1K9', '', 'Bathurst, Beer', 'Korean', '', 43.6641884, -79.4156081, 'valid', 0, '', 'no', 'no'),
(94, 'Annona At The Park Hyatt Toronto', '4 Avenue Road', 'Toronto', 'Canada', 'M5R 2E8', '20', 'Museum, George', 'Mediterranea', '', 43.6687178, -79.3941567, 'valid', 0, '', 'no', 'no'),
(95, 'Serra Pizza & Pasta', '378 Bloor St.', 'Toronto', 'Canada', 'M5S 1X2', '10', 'Spadina, Bathurst', 'Italian', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(96, 'Pho Hung', '200 Bloor St. W.', 'Toronto', 'Canada', 'M5S 1T8', '', 'George, Museum', 'Asian', '', 43.6685632, -79.3954595, 'valid', 0, '', 'no', 'no'),
(97, 'Wing Lee Garden', '641 Dupont St', 'Toronto', 'Canada', 'M6G 1Z4', '', '', 'Asian', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(98, 'Caz''s Great Fish!', '287 Davenport Rd.', 'Toronto', 'Canada', 'M5R 1J9', '', 'Dupont, George', 'Fish & Chip', '', 0, 0, 'invalid', 0, '', 'no', 'no'),
(99, 'Rio Brava Cantina Y Grill', '487 Bloor St W', 'Toronto', 'Canada', 'M5S 1Y2', '', '', 'Grill', '', 43.665723, -79.407718, 'valid', 0, '', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `venue_pictures`
--

DROP TABLE IF EXISTS `venue_pictures`;
CREATE TABLE IF NOT EXISTS `venue_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_id` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
