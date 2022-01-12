-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 08:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_information`
--

CREATE TABLE `hotel_information` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `hotel_name` varchar(500) NOT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `stars` varchar(50) DEFAULT NULL,
  `cost` varchar(50) DEFAULT NULL,
  `star_1` varchar(100) DEFAULT NULL,
  `cost_1` varchar(100) DEFAULT NULL,
  `star_2` varchar(100) DEFAULT NULL,
  `cost_2` varchar(100) DEFAULT NULL,
  `facility` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_information`
--

INSERT INTO `hotel_information` (`id`, `location`, `hotel_name`, `rating`, `stars`, `cost`, `star_1`, `cost_1`, `star_2`, `cost_2`, `facility`, `url`) VALUES
(1, 'New-Delhi', 'Holiday Inn New Delhi International Airport, An IHG Hotel', '8.3', '5', '100', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/dd/cd/82/leonardo-1252636-DELAP_3215939325_O-029319.jpg'),
(2, 'New-Delhi', 'Radisson Blu Plaza Delhi', '8.3', '5', '116', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/7a/70/62/ice-114048-72183831_3XL-105259.jpg'),
(3, 'New-Delhi', 'Taj Palace, New Delhi', '8.8', '5', '162', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/60/73/81/leonardo-5013121-IMG_1043_O-534157.jpg'),
(4, 'New-Delhi', 'Novotel New Delhi Aerocity', '7.8', '5', '95', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/6d/c6/6d/ice-49389-68655821_3XL-443623.jpg'),
(5, 'New-Delhi', 'The Lalit New Delhi', '8.1', '5', '104', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/42/32/b5/agoda-43775-43775_15082616120035116082-448025.jpg'),
(6, 'New-Delhi', 'Shangri-La Eros, New Delhi', '8.6', '5', '141', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/1a/9e/e3/ice-73944-63297923_3XL-679134.jpg'),
(7, 'New-Delhi', 'The Leela Ambience Convention Hotel Delhi', '8.4', '5', '109', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/cb/64/dd/ice-78843-1583269_3XL-947418.jpg'),
(8, 'New-Delhi', 'The Metropolitan Hotel and Spa New Delhi', '7.8', '5', '89', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/44/65/84/arbisoftimages-99124-20180424112144_craft_house1-image.jpg'),
(9, 'New-Delhi', 'Roseate House', '8.6', '5', '175', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/85/fa/d9/leonardo-2021258-01.pres.suite_bathroom_opt2_O-064683.jpg'),
(10, 'New-Delhi', 'JW Marriott Hotel New Delhi Aerocity', '8.7', '5', '209', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/09/37/67/leonardo-1306287-delap-guestroom-0036-hor-clsc_O-719644.jpg'),
(11, 'New-Delhi', 'The Park New Delhi', '6.1', '5', '86', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/f7/97/d7/ice-140106-70631222_3XL-467176.jpg'),
(12, 'New-Delhi', 'Andaz Delhi Aerocity- Concept by Hyatt', '8.2', '5', '143', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/b1/87/1d/hotelsdotcom-424539360-91d05645_w-311648.jpg'),
(13, 'New-Delhi', 'Vivanta New Delhi, Dwarka', '8.4', '5', '127', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/2b/ae/6c/leonardo-94034066-TIPPLE_1_O-344066.jpg'),
(14, 'New-Delhi', 'The Leela Palace New Delhi', '9.2', '5', '244', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/e7/37/01/ice-157685056-0754606_3XL-338167.jpg'),
(15, 'New-Delhi', 'Airport Hotel Mayank Residency', '7.3', '3', '12', '', '', '', '', 'Parking+Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/6a/4b/96/revato-1405-13254413-684628.jpg'),
(16, 'New-Delhi', 'The Claridges New Delhi', '8.3', '5', '132', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/6b/1e/41/arbisoftimages-56597-image_2018-02-07-04-50-34_5a7a859a453f1-image.jpg'),
(17, 'New-Delhi', 'ITC Maurya, a Luxury Collection Hotel, New Delhi', '8', '5', '277', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/91/ca/74/leonardo-1124227-dellc-spa-7316-ver-clsc_O-361477.jpg'),
(18, 'New-Delhi', 'Pullman New Delhi Aerocity', '8.2', '5', '138', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/c7/81/15/ice-67592-62247419_3XL-079810.jpg'),
(19, 'New-Delhi', 'Crowne Plaza New Delhi Okhla', '8.2', '5', '111', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/ad/ff/85/leonardo-67211801-NDEOL_6493090001_O-543485.jpg'),
(20, 'Germany', '\nBerlin\n', '', '', '', '\n3', '1,107', '\n4+', '3,763', '', 'https://www.kayak.co.in/rimg/dimg/66/73/57707be7-city-9109-162d3eba142.jpg'),
(21, 'Germany', '\nFrankfurt am Main\n', '', '', '', '\n3', '3,247', '\n4+', '3,099', '', 'https://www.kayak.co.in/rimg/dimg/25/8d/6d61f059-city-26939-1774e97fb38.jpg'),
(22, 'Germany', '\nMunich\n', '', '', '', '\n3', '1,845', '\n4+', '3,689', '', 'https://www.kayak.co.in/rimg/dimg/63/e1/a2a99d53-city-14057-54e213d9.jpg'),
(23, 'Germany', '\nDüsseldorf\n', '', '', '', '\n3', '3,025', '\n4+', '3,320', '', 'https://www.kayak.co.in/rimg/dimg/c2/09/f8e0c920-city-15317-177952a7ef2.jpg'),
(24, 'Germany', '\nCologne\n', '', '', '', '\n3', '2,951', '\n4+', '4,648', '', 'https://www.kayak.co.in/rimg/dimg/9f/42/040fca99-city-14508-16400141744.jpg'),
(25, 'Germany', '\nHamburg\n', '', '', '', '\n3', '3,099', '\n4+', '4,648', '', 'https://www.kayak.co.in/rimg/dimg/4d/27/32380e7d-city-32131-17763eca165.jpg'),
(26, 'Germany', 'Hotel Hirsch', '\n8.5', '', '5,829+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/b8/12/c2/ostrovok-7583989-0a7b22b0302ce32fcc0220036b617ab701b5e54e-788585.jpg'),
(27, 'Germany', 'Hotel Haverkamp', '\n8.5', '', '10,035+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/2e/8a/73/leonardo-1108610-10605r452120_O-367615.jpg'),
(28, 'Germany', 'NH Collection Köln Mediapark', '\n8.4', '', '7,084+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/5c/1e/f5/ice-138370688-62930753_3XL-222391.jpg'),
(29, 'Germany', 'Dorint City-Hotel Bremen', '\n8.3', '', '7,305+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/fb/d4/c7/ice-121561-79597724_3XL-833992.jpg'),
(30, 'Germany', 'Achat Hotel Bremen City', '\n8.3', '', '5,461+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/kimg/cf/af/90b98a3f-5bbf34bb-15.jpg'),
(31, 'Germany', 'Hotel am Hopfensee', '\n8.1', '', '13,208+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/c9/bf/0a/ostrovok-7585303-191da16a45205908750c205f7daaa3de00bf1ffb-251155.jpg'),
(32, 'Germany', 'B&B Hotel Köln-West', '\n8.1', '', '4,206+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/ba/2e/68/ice-142447-72431393_3XL-025930.jpg'),
(33, 'Germany', 'Hotel Bannwaldsee', '\n8.0', '', '6,272+', '', '', '', '', '', 'https://content.r9cdn.net/res/images/horizon/hotels/cityhotels_v2/hotel-photo-placeholder-retina.png'),
(34, 'Germany', 'Maritim Hotel Bremen', '\n8.0', '', '5,461+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/fc/e2/d9/ice-102764-69562983_3XL-813212.jpg'),
(35, 'Germany', 'Wasserturm Hotel Cologne, Curio Collection by Hilton', '\n7.9', '', '10,404+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/f5/2e/27/ice-143325-72211161_3XL-508511.jpg'),
(36, 'Dubai', 'Atlantis, The Palm', '8.8', '5', '596', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/20/74/aa/revato-10251-12063420-871082.jpg'),
(37, 'Dubai', 'Five Palm Jumeirah Dubai', '8.9', '5', '598', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/67/c1/ec/ice-142152580-69922313_3XL-482635.jpg'),
(38, 'Dubai', 'Atana Hotel', '8.2', '4', '101', '', '', '', '', 'Parking+Free Wi-Fi+Pool', 'https://content.r9cdn.net/rimg/himg/84/a9/4d/revato-1042915-6948709-802926.jpg'),
(39, 'Dubai', 'Burj Al Arab Jumeirah', '9', '5', '1710', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/3f/d9/1d/leonardo-1125824-Burj_Al_Arab_-_Sky_One_Bedroom_Suite_-_Living_Room_O-673683.jpg'),
(40, 'Dubai', 'Sofitel Dubai Jumeirah Beach', '8.7', '5', '391', '', '', '', '', 'Parking+Free Wi-Fi+Pool', 'https://content.r9cdn.net/rimg/himg/6c/09/87/ice-37787-65381522_3XL-654875.jpg'),
(41, 'Dubai', 'Gevora Hotel', '8', '4', '156', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/6d/65/26/revato-2064383-13251780-037419.jpg'),
(42, 'Dubai', 'Dubai International Hotel', '8.9', '5', '236', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/bb/bc/d1/ice-52418-3991571_3XL-674807.jpg'),
(43, 'Dubai', 'Anantara The Palm Dubai Resort', '8.6', '5', '512', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/a3/fb/20/ice-140656-71187444_3XL-664940.jpg'),
(44, 'Dubai', 'Hyatt Regency Dubai Creek Heights', '8', '5', '172', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/78/13/09/ice-100205434-63003489_3XL-863362.jpg'),
(45, 'Dubai', 'Fairmont The Palm', '8.2', '5', '403', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/70/88/fa/ice-73711-71718621_3XL-344307.jpg'),
(46, 'Dubai', 'Rixos Premium Dubai Jbr', '9.1', '5', '446', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/d7/eb/0e/ice-132447516-79316389_3XL-813729.jpg'),
(47, 'Dubai', 'Jumeirah Beach Hotel', '8.5', '5', '669', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/6a/5e/b7/leonardo-1125825-Jumeirah_Beach_Hotel__Pearl_Lounge_O-919309.jpg'),
(48, 'Dubai', 'JW Marriott Marquis Hotel Dubai', '8.7', '5', '246', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/cc/07/d0/leonardo-67279111-dxbjw-dubai-9676-hor-clsc_O-260179.jpg'),
(49, 'Dubai', 'Dukes The Palm, a Royal Hideaway Hotel', '8.2', '5', '282', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/92/57/dc/ice-206164074-65956866_3XL-049879.jpg'),
(50, 'Dubai', 'Hyatt Regency Dubai', '8.1', '5', '165', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/c3/a7/23/ice-49823-62410044_3XL-342957.jpg'),
(51, 'Dubai', 'Taj Dubai', '9', '5', '290', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/63/57/9d/revato-875940-12291951-253506.jpg'),
(52, 'Dubai', 'Jumeirah Al Qasr', '9', '5', '825', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/65/59/a8/leonardo-2692916-Jumeirah_Al_Qasr_Royal_Suite_Dining_Room_O-730133.jpg'),
(53, 'Dubai', 'Grand Millennium Dubai', '7.9', '5', '184', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/dc/cd/c0/leonardo-31407955-Presidential_Suite_Sitting_Room_2_O-518389.jpg'),
(54, 'Dubai', 'Millennium Plaza Hotel Dubai', '8', '5', '192', '', '', '', '', 'Parking+Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/04/ce/b3/leonardo-123248486-Swimming_Pool_-_Evening_Shot_(6)_O-818204.jpg'),
(55, 'London', 'The Savoy', '9.4', '5', '759', '', '', '', '', 'Free Wi-Fi+Pool+Pet-friendly+Spa', 'https://content.r9cdn.net/rimg/himg/e9/e2/3b/ice-73725-71602306_3XL-866986.jpg'),
(56, 'London', 'Park Plaza Westminster Bridge London', '8.5', '4', '256', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/kimg/15/4e/0c846ad5-15e113fef94.jpg'),
(57, 'London', 'St Giles Hotel - London', '7.7', '3', '119', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/f1/90/26/leonardo-215550756-FACADE-NIGHT-VIEW_O-465708.jpg'),
(58, 'London', 'Britannia The International Hotel London, Canary Wharf', '6.6', '4', '95', '', '', '', '', 'Free Wi-Fi+Pet-friendly', 'https://content.r9cdn.net/rimg/kimg/8b/1d/23c8e99a8ce80328.jpg'),
(59, 'London', 'The Tower Hotel', '8.3', '4', '188', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/95/e3/fd/leonardo-1113067-VICINITY_0048_1__O-779880.jpg'),
(60, 'London', 'DoubleTree by Hilton Hotel London -Tower of London', '8.1', '4', '144', '', '', '', '', 'Free Wi-Fi+Pet-friendly+Spa', 'https://content.r9cdn.net/rimg/himg/fc/ee/a4/ice-122328974-67296709_3XL-255998.jpg'),
(61, 'London', 'Copthorne Tara Hotel London Kensington', '7.2', '4', '105', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/4a/43/cb/revato-7074-12295047-786558.jpg'),
(62, 'London', 'The Strand Palace Hotel', '8.2', '4', '222', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/kimg/ab/ca/c735ba33-5ad0c718-33.jpg'),
(63, 'London', 'Sunborn London', '8.3', '4', '253', '', '', '', '', 'Free Wi-Fi+Spa', 'https://content.r9cdn.net/rimg/himg/a8/d7/ab/arbisoftimages-37083-Sky-Lounge-Lunch-Event-image.jpg'),
(64, 'London', 'Generator London', '7.4', '3', '97', '', '', '', '', 'Free Wi-Fi+Pet-friendly', 'https://content.r9cdn.net/rimg/kimg/3f/6b/643a1337aa8f4837.jpg'),
(65, 'London', 'Shangri-La The Shard, London', '9.1', '5', '754', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/ae/b8/4e/ice-100053250-68528282_3XL-298102.jpg'),
(66, 'London', 'Ramada London North M1', '7.2', '4', '54', '', '', '', '', 'Parking+Free Wi-Fi+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/73/c9/b2/ice-32163-64399425_3XL-263111.jpg'),
(67, 'London', 'Smart Hyde Park View - Hostel', '7.3', '1', '74', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/b1/52/db/revato-15200-13258275-863676.jpg'),
(68, 'London', 'Safestay London Kensington Holland Park', '7.7', '4', '56', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/55/5e/e6/hotelsdotcom-557618-86253f02_w-117056.jpg'),
(69, 'London', 'Montcalm Royal London House - City Of London', '8.6', '5', '224', '', '', '', '', 'Free Wi-Fi+Pool+Spa', 'https://content.r9cdn.net/rimg/himg/4a/ab/42/arbisoftimages-2662298-CD1_6310-HDR-image.jpg'),
(70, 'London', 'Smart Hyde Park Inn', '6.9', '1', '72', '', '', '', '', 'Free Wi-Fi', 'https://content.r9cdn.net/rimg/himg/10/42/1e/arbisoftimages-390923-98662f_949e7e0d62a64c6192079f3ae970a9cf_mv2__1_-image.jpg'),
(71, 'London', 'St. James\' Court, A Taj Hotel, London', '8.9', '4', '274', '', '', '', '', 'Free Wi-Fi+Spa', 'https://content.r9cdn.net/rimg/himg/29/3e/06/leonardo-1297763-St._James__Court_A_Taj_Hotel_-_Lobby_O-464992.jpg'),
(72, 'London', 'Corbigoe Hotel', '4.2', '2', '52', '', '', '', '', 'Parking', 'https://content.r9cdn.net/rimg/himg/51/f4/f4/hotelsdotcom-222209-c197870f_w-788014.jpg'),
(73, 'London', 'easyHotel London Victoria', '6.3', '3', '60', '', '', '', '', '', 'https://content.r9cdn.net/rimg/kimg/b3/7e/72c2ca77-16d88d23650.png'),
(74, 'London', 'The Rubens at the Palace', '8.8', '5', '264', '', '', '', '', 'Free Wi-Fi+Pet-friendly', 'https://content.r9cdn.net/rimg/himg/1c/ef/d2/leonardo-2146626-The_Rubens_Master_Suite_2_O-673697.jpg'),
(75, 'Thailand', '\nBangkok\n', '', '', '', '\n3', '885', '\n4+', '664', '', 'https://www.kayak.co.in/rimg/dimg/21/e1/c054fc24-city-26166-176726042eb.jpg'),
(76, 'Thailand', '\nPattaya\n', '', '', '', '\n3', '1,107', '\n4+', '1,033', '', 'https://www.kayak.co.in/rimg/dimg/c8/42/17f3ed49-city-25054-17dd9c9c1c7.jpg'),
(77, 'Thailand', '\nPhuket City\n', '', '', '', '\n3', '590', '\n4+', '1,549', '', 'https://www.kayak.co.in/rimg/dimg/31/df/973ece32-city-23911-160989f51a5.jpg'),
(78, 'Thailand', '\nKrabi\n', '', '', '', '\n3', '738', '\n4+', '1,107', '', 'https://www.kayak.co.in/rimg/dimg/d7/d3/e9304e90-city-44862-164ae4695bf.jpg'),
(79, 'Thailand', '\nPatong\n', '', '', '', '\n3', '664', '\n4+', '1,107', '', 'https://www.kayak.co.in/rimg/dimg/f7/a1/59af95f8-city-47078-167c2ce6444.jpg'),
(80, 'Thailand', '\nKoh Samui\n', '', '', '', '\n3', '738', '\n4+', '1,623', '', 'https://www.kayak.co.in/rimg/dimg/75/a7/44202281-city-56280-163f4d053df.jpg'),
(81, 'Thailand', 'Hua Hin Marriott Resort and Spa', '\n9.1', '', '11,585+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/e6/0e/cf/leonardo-2013069-hhqmr-suite-0028-hor-clsc_O-641876.jpg'),
(82, 'Thailand', 'Lareena Resort Koh Larn Pattaya', '\n8.8', '', '2,804+', '', '', '', '', '', 'https://content.r9cdn.net/res/images/horizon/hotels/cityhotels_v2/hotel-photo-placeholder-retina.png'),
(83, 'Thailand', 'Madera Residence Sriracha', '\n8.8', '', '1,550+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/50/c0/d9/hotelsdotcom-615919-a05814d0_w-099436.jpg'),
(84, 'Thailand', 'J Park Hotel', '\n8.6', '', '1,698+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/62/55/df/hotelsdotcom-621488-0ff19e1a_w-990685.jpg'),
(85, 'Thailand', 'Tinidee Golf Resort Phuket', '\n8.5', '', '1,402+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/e1/a8/a1/revato-288624-12447986-891415.jpg'),
(86, 'Thailand', 'Aonang Villa Resort', '\n8.5', '', '3,911+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/37/c9/c0/arbisoftimages-132883-photo.dataphoto.145-378839.jpg'),
(87, 'Thailand', 'Deevana Plaza Krabi', '\n8.5', '', '2,952+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/9c/2a/9b/revato-12917-227043-777313.jpg'),
(88, 'Thailand', 'Baan Virog Koh Larn', '\n8.4', '', '4,132+', '', '', '', '', '', 'https://content.r9cdn.net/res/images/horizon/hotels/cityhotels_v2/hotel-photo-placeholder-retina.png'),
(89, 'Thailand', 'Green Forest Resort', '\n8.2', '', '3,247+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/97/a9/fa/agoda-7473963-7473963_19052910270074789650-463372.jpg'),
(90, 'Thailand', 'Phi Phi Relax Beach Resort', '\n8.2', '', '2,214+', '', '', '', '', '', 'https://content.r9cdn.net/rimg/himg/15/6e/af/hotelsdotcom-79252498-45219019_w-613251.jpg'),
(91, 'Thailand', 'The Par Phuket(Sha Plus+)', '\n7.9', '', '1,402+', '', '', '', '', '', 'https://content.r9cdn.net/res/images/horizon/hotels/cityhotels_v2/hotel-photo-placeholder-retina.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_information`
--
ALTER TABLE `hotel_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_information`
--
ALTER TABLE `hotel_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
