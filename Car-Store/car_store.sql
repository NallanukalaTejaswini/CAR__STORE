-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 10:46 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Manaswi Guntupalli', 'manaswi@gmail.com', 'manaswi123', 'manaswi.jpg', 'India', '  I evaluate eCommerce transaction and provides support to all associate activities and ensure timely delivery to customers', '1234567890', 'Administrator'),
(4, 'Prem Sanka', 'prem@gmail.com', 'prem123', 'prem.jpg', 'India', ' I , the content marketing manager will spearhead the development and implementation of my team’s content strategy. This includes building a content calendar, creating a writing process and delivery strategy, managing writers, contributing to social media posts, and ultimately, crafting interesting and well-researched content that drives traffic and engages site visitors.', '0987654321', 'Content Marketing Manager'),
(5, 'Tejaswini Nallanukala', 'teju.nallanukala@gmail.com', 'teju123', 'teju.jpg', 'India', 'I ,Commerce Marketing Specialist is responsible for the presentation, content, SEO, maintenance, catalog and overall business health of key products and services being sold. ', '1212121212', 'Marketing Specialist');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'Best Prices', 'New Lorem  dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(3, '100 % Satisfaction ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(4, 'Amazing Discounts', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, aliquid veritatis amet ad saepe nesciunt eos? Quas ipsum laboriosam hic sunt fugit cumque maiores! Ducimus officiis commodi consequuntur rerum minima.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Diesel', 'yes', 'Diesel.jpg'),
(2, 'Petrol', 'yes', 'Petrol.jpg'),
(3, 'Electric', 'no', 'Electric.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Subhash Nallanukala', 'subhash@gmail.com', 'subhash123', 'India', 'Mangalagiri', '9494594739', 'Park Road, 7th line , Mangalagiri', 'member-1.jpg', '::1'),
(6, 'Tejaswini Nallanukala', 'teju@gmail.com', 'teju123', 'India', 'Mangalagiri', '9440533194', 'Mangalagiri, Guntur , Andhra Pradesh', 'member-2.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 6, 67516, 318106724, 1, '', '2021-04-27', 'pending'),
(2, 6, 67516, 1934591376, 1, 'Red', '2021-04-28', 'pending'),
(3, 6, 67516, 1915363894, 1, 'Black', '2021-04-28', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'BMW', 'yes', 'BMW.jpg'),
(2, 'Jaguar', 'yes', 'Jaguar.jpg'),
(3, 'Benz', 'no', 'Benz.jpg'),
(4, 'Rolls-Royce', 'no', 'RRoyce.jpg'),
(5, 'Audi', 'no', 'Audi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Western Union', 123123, 321321, '02-09-2019'),
(7, 1231231, 1313, 'Back Code', 123132, 123123, '123123');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `colour` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `colour`, `order_status`) VALUES
(3, 6, 1915363894, '21', 1, 'Black', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` text DEFAULT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(1, 1, 2, 1, '2021-04-25 07:24:19', 'BMW 8 Series ', 'BMW1-C-1.jpg', 'BMW1-C-2.jpg', 'BMW1-C-3.jpg', ' 111900', 'BMW, Coupe,Petrol', '<b> Key Specifications </b>\r\n<ul>\r\n<li>ARAI Mileage                 -     5.59 kmpl</li>\r\n<li>Fuel Type                        -     PetrolEngine </li>\r\n<li>Displacement (cc) - 4395</li>\r\n<li>Max Power (bhp@rpm) - 600bnp@6000rpm</li>\r\n<li>Max Torque (nm@rpm) -   750nm@1800-5600rpm</li>\r\n<li>SeatingCapacity              -    4</li>\r\n<li>TransmissionType           - Automatic</li>\r\n<li>Boot Space (Litres)         -    440</li>\r\n<li>Fuel Tank Capacity         -   68.0</li>\r\n</ul>\r\n<br>\r\n<b>Key Features </b>\r\n<ul>\r\n <li>Power Steering</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Driver Airbag </li>\r\n<li>Fog Lights- Front</li>\r\n<li>Alloy Wheels</li>\r\n</ul>\r\n\r\n', 'new', '0'),
(2, 1, 2, 2, '2021-04-27 05:24:52', 'Jaguar F-Type 2.0', 'Jaguar1-C-1.jpg', 'Jaguar1-C-2.jpg', 'Jaguar1-C-3.jpg', '126784.15', 'Jaguar, Coupe, Petrol', '<b>Key Features of Jaguar F-TYPE</b>\r\n<ul>\r\n<li>Fuel Type - Petrol</li>\r\n<li>Engine Displacement (cc) - 5000</li>\r\n<li>Max Power (bhp@rpm) - 567.25bhp@6500rpm</li>\r\n<li>Max Torque (nm@rpm)700nm@3500-5000rpm</li>\r\n<li>Seating Capacity - 2</li>\r\n<li>TransmissionType - AutomaticFuel </li>\r\n<li>Tank Capacity - 70.0</li>\r\n<li>Body Type - Coupe</li>\r\n</ul>\r\n<b>Key Features of Jaguar F-TYPE</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Automatic Climate Control</li>\r\n<li>Fog Lights - Front</li>\r\n<li>Alloy Wheels</li>\r\n</ul>', 'new', 'Rs.95.11 Lakh*'),
(12, 5, 2, 4, '2021-04-25 10:38:37', 'Rolls-Royce Cullian', 'R1-Suv-1.jpg', 'R1-Suv-2.jpg', 'R1-Suv-3.jpg', '927526.15', 'Rolls-Royce, SUV, Petrol', '<b>Key Specifications of Rolls-Royce Cullinan</b>\r\n<ul>\r\n<li>ARAI Mileage - 9.5 kmpl</li>\r\n<li>Fuel Type - Petrol</li>\r\n<li>Engine Displacement (cc) - 6750</li>\r\n<li>Max Power (bhp@rpm) - 563bhp@5000rpm</li>\r\n<li>Max Torque (nm@rpm) - 850Nm@1600rpm</li>\r\n<li>Seating Capacity - 5</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Boot Space (Litres) - 560</li>\r\n<li>Body Type - SUV</li>\r\n</ul>\r\n<b>Key Features of Rolls-Royce Cullinan</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Automatic Climate Control</li>\r\n<li>Fog Lights - Front</li>\r\n<li>Alloy Wheels</li>\r\n</ul>', 'new', '0'),
(13, 1, 2, 3, '2021-04-27 05:27:12', 'MERCEDES BENZ AMG GT\r\n\r\n', 'Benz1-C-1.jpg', 'Benz1-C-2.jpg', 'Benz1-C-3.jpg', '350991.91', 'Benz , SUV, Petrol', '<b>Key Specifications of Mercedes-Benz AMG GT</b>\r\n<ul>\r\n<li>ARAI Mileage - 12.65 kmpl</li>\r\n<li>Fuel Type - Petrol</li>\r\n<li>Engine Displacement (cc) - 3982</li>\r\n<li>Max Power (bhp@rpm) - 576.63bhp@6250rpm </li>\r\n<li>Max Torque(nm@rpm)- 700Nm@2100–5500rpm</li>\r\n<li>Seating Capacity - 2</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Boot Space (Litres) - 285</li>\r\n<li>Fuel Tank Capacity - 75.0</li>\r\n<li>Body Type - Coupe</li>\r\n</ul>\r\n<b>Key Features of Mercedes-Benz AMG GT</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li> Passenger Airbag</li>\r\n<li>Automatic Climate Control</li>\r\n<li>Alloy Wheels</li>\r\n</ul>\r\n', 'new', '0'),
(16, 5, 3, 3, '2021-04-25 10:54:05', 'Mercedes-Benz EQC', 'Benz2-Suv-1.jpg', 'Benz2-Suv-2.jpg', 'Benz2-Suv-3.jpg', '138795.28', 'Power Steering, Power Windows Front, Anti Lock Braking System, Air Conditioner, Driver Airbag, Passenger Airbag, Automatic Climate Control, Fog Lights - Front, Alloy Wheels', '<b>Key Specifications of Mercedes-Benz EQC</b>\r\n<ul>\r\n<li>Fuel Type - Electric</li>\r\n<li>Max Power (bhp@rpm) - 402.30Bhp</li>\r\n<li>Max Torque (nm@rpm) - 760Nm</li>\r\n<li>Seating Capacity - 5</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Body Type - SUV</li>\r\n</ul>\r\n<b>Key Features of Mercedes-Benz EQC</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Automatic Climate Control</li>\r\n<li>Fog Lights - Front</li>\r\n<li>Alloy Wheels</li>\r\n</ul>\r\n', 'new', '138795.28'),
(19, 5, 1, 1, '2021-04-27 05:26:16', 'BMW X7', 'BMW3-SUV-1.jpg', 'BMW3-SUV-2.jpg', 'BMW3-SUV-3.jpg', '124116', 'SUV, Diesel', '<b>Key Specifications of BMW X7</b>\r\n<ul>\r\n<li>ARAI Mileage - 10.54 kmpl</li>\r\n<li>Fuel Type - Diesel</li>\r\n<li>Engine Displacement (cc) - 2998</li>\r\n<li>Max Power (bhp@rpm) - 335.2bhp@5500-6500rpm</li>\r\n<li>Max Torque (nm@rpm)- 450Nm@1500-5200</li>\r\n<li>Seating Capacity - 7</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Fuel Tank Capacity - 80.0</li>\r\n<li>Body Type - SUV</li>\r\n</ul>\r\n<b>Key Features of BMW X7</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Fog Lights - Front</li>\r\n<li>Alloy Wheels</li>\r\n<li>Multi-function Steering Wheel</li>\r\n</ul>', 'new', '0'),
(20, 3, 1, 5, '2021-04-25 15:06:25', 'Audi Q2', 'Audi1-Se-1.jpg', 'Audi1-Se-2.jpg', 'Audi1-Se-3.jpg', '64059.36', 'Audi, SUV, Petrol', '<b>Key Specifications of Audi Q2</b>\r\n<ul>\r\n<li>Fuel Type - Petrol</li>\r\n<li>Engine Displacement (cc) - 1984</li>\r\n<li>Max Power (bhp@rpm) - 187.74bhp@4200-6000rpm</li>\r\n<li>Max Torque(nm@rpm) - 320nm@1500–4180rpm</li>\r\n<li>Seating Capacity - 5</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Boot Space (Litres) - 335</li>\r\n<li>Fuel Tank Capacity - 55.0</li>\r\n<li>Body Type - SUV</li>\r\n</ul>\r\n<b>Key Features of Audi Q2</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Automatic Climate Control</li>\r\n<li>Fog Lights - Front</li>\r\n<li>Alloy Wheels</li>\r\n</ul>\r\n\r\n\r\n', 'new', '0'),
(21, 2, 2, 5, '2021-04-25 10:09:08', 'Audi- A3-Cabriloet', 'Audi2-Con-1.jpg', 'Audi2-Con-2.jpg', 'Audi2-Con-3.jpg', '67515.90', 'Audi,Convertible,Petrol', '<b>Key Specifications of Audi A3 cabriolet</b>\r\n<ul>\r\n<li>ARAI Mileage19.2 kmpl</li>\r\n<li>City Mileage11.42 kmpl</li>\r\n<li>Fuel Type - Petrol</li>\r\n<li>Engine Displacement (cc) - 1395</li>\r\n<li>Max Power (bhp@rpm)150bhp@5000-6000bhp</li>\r\n<li>Max Torque (nm@rpm)250Nm@1500-3500rpm</li>\r\n<li>Seating Capacity - 4</li>\r\n<li>TransmissionType - Automatic</li>\r\n<li>Boot Space (Litres) - 320</li>\r\n<li>Fuel Tank Capacity - 50.0</li>\r\n<li>Body Type - Convertible</li>\r\n</ul>\r\n<b>Key Features of Audi A3 cabriolet</b>\r\n<ul>\r\n<li>Power Steering</li>\r\n<li>Power Windows Front</li>\r\n<li>Anti Lock Braking System</li>\r\n<li>Air Conditioner</li>\r\n<li>Driver Airbag</li>\r\n<li>Passenger Airbag</li>\r\n<li>Alloy Wheels</li>\r\n<li>Multi-function Steering Wheel</li>\r\n<li>Engine Start Stop Button</li>\r\n</ul>', 'new', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Coupe', 'yes', 'Coupe.jpg'),
(2, 'Convertible', 'no', 'Convertible.jpg'),
(3, 'Sedan', 'no', 'Sedan.jpg'),
(4, 'Sports', 'yes', 'Sports.jpg'),
(5, 'SUV', 'no', 'SUV.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(8, 'Slide Number 1', 'slide1.jpg', 'http://study.learnxt.com/login/index.php'),
(9, 'Slide Number 2', 'slide2.jpg', 'http://study.learnxt.com/login/index.php'),
(13, 'Editing Slide 3', 'slide3.jpg', 'http://study.learnxt.com/login/index.php'),
(14, 'Slide Number 4', 'slide4.jpg', 'http://study.learnxt.com/login/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(9, 'Rules & Regulations', 'link_1', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(10, 'Promo & Regulations', 'link_2', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(11, 'Refund Condition Policy', 'link_3', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
