-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 02, 2026 at 04:54 PM
-- Server version: 11.4.9-MariaDB
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egrocery_shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Cart_ID` varchar(10) NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Cart_ID`),
  KEY `fk_cart_user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_ID`, `User_ID`, `Quantity`, `Status`) VALUES
('A001', 7, 4, 'Active'),
('A002', 3, 1, 'Ordered'),
('A003', 12, 4, 'Active'),
('A004', 5, 2, 'Cancelled'),
('A005', 1, 8, 'Active'),
('A006', 9, 6, 'Ordered'),
('A007', 14, 5, 'Active'),
('A008', 2, 1, 'Cancelled'),
('A009', 10, 3, 'Active'),
('A010', 6, 10, 'Ordered'),
('A011', 15, 2, 'Active'),
('A012', 8, 4, 'Ordered'),
('A013', 4, 1, 'Cancelled'),
('A014', 11, 3, 'Active'),
('A015', 20, 2, 'Ordered'),
('A016', 13, 5, 'Active'),
('A017', 18, 2, 'Cancelled'),
('A018', 16, 10, 'Active'),
('A019', 19, 9, 'Ordered'),
('A020', 17, 2, 'Active'),
('A021', 1, 4, 'Active'),
('A022', 4, 2, 'Active'),
('A023', 11, 10, 'Cancelled'),
('A024', 9, 3, 'Ordered'),
('A025', 20, 2, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `cart_prod`
--

DROP TABLE IF EXISTS `cart_prod`;
CREATE TABLE IF NOT EXISTS `cart_prod` (
  `Cart_ID` varchar(10) NOT NULL,
  `Product_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Cart_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_prod`
--

INSERT INTO `cart_prod` (`Cart_ID`, `Product_ID`) VALUES
('A001', 'P001'),
('A006', 'P002'),
('A003', 'P003'),
('A007', 'P004'),
('A002', 'P005'),
('A008', 'P006'),
('A009', 'P007'),
('A010', 'P008'),
('A011', 'P009'),
('A004', 'P010'),
('A004', 'P011'),
('A012', 'P012'),
('A013', 'P013'),
('A014', 'P014'),
('A001', 'P015'),
('A015', 'P016'),
('A016', 'P017'),
('A017', 'P018'),
('A018', 'P019'),
('A005', 'P020'),
('A019', 'P021'),
('A002', 'P022'),
('A020', 'P023'),
('A021', 'P024'),
('A005', 'P025'),
('A022', 'P026'),
('A023', 'P027'),
('A024', 'P028'),
('A001', 'P030'),
('A003', 'P040');

-- --------------------------------------------------------

--
-- Table structure for table `local_supplier`
--

DROP TABLE IF EXISTS `local_supplier`;
CREATE TABLE IF NOT EXISTS `local_supplier` (
  `Supplier_ID` int(10) UNSIGNED NOT NULL,
  `Store_Name` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `local_supplier`
--

INSERT INTO `local_supplier` (`Supplier_ID`, `Store_Name`, `City`) VALUES
(1, 'Tatka Mart BD', 'Dhaka'),
(4, 'Fresh Cook', 'Dhaka'),
(7, 'Ghor Bazar Shop', 'Dhaka'),
(8, 'BD Bazar.com', 'Savar'),
(9, 'Supply BD Basket', 'Savar'),
(10, 'Prime Grocery Point', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `Order_ID` varchar(10) NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Order_Date` date NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_ID`, `User_ID`, `Order_Date`, `Type`) VALUES
('001', 3, '2026-01-05', 'Online'),
('002', 7, '2026-01-06', 'COD'),
('003', 1, '2026-01-07', 'COD'),
('004', 5, '2026-01-08', 'COD'),
('005', 3, '2026-01-09', 'COD'),
('006', 9, '2026-01-10', 'COD'),
('007', 1, '2026-01-11', 'Online'),
('008', 4, '2026-01-12', 'COD'),
('009', 7, '2026-02-13', 'Online'),
('010', 2, '2026-02-14', 'COD'),
('011', 6, '2026-02-15', 'Online'),
('012', 8, '2026-02-16', 'COD'),
('013', 3, '2026-03-17', 'Online'),
('014', 10, '2026-03-18', 'COD'),
('015', 5, '2026-03-19', 'COD'),
('016', 1, '2026-03-20', 'COD'),
('017', 2, '2026-03-21', 'Online'),
('018', 9, '2026-03-22', 'COD'),
('019', 7, '2026-03-23', 'COD'),
('020', 4, '2026-03-24', 'COD'),
('021', 4, '2026-04-14', 'COD'),
('022', 4, '2026-04-10', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `order_prod`
--

DROP TABLE IF EXISTS `order_prod`;
CREATE TABLE IF NOT EXISTS `order_prod` (
  `Order_ID` varchar(10) NOT NULL,
  `Product_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Order_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_prod`
--

INSERT INTO `order_prod` (`Order_ID`, `Product_ID`) VALUES
('001', 'P001'),
('001', 'P002'),
('004', 'P003'),
('005', 'P004'),
('002', 'P005'),
('006', 'P006'),
('007', 'P007'),
('008', 'P008'),
('009', 'P009'),
('001', 'P010'),
('010', 'P011'),
('011', 'P012'),
('012', 'P013'),
('013', 'P014'),
('003', 'P015'),
('014', 'P016'),
('015', 'P017'),
('016', 'P018'),
('017', 'P019'),
('002', 'P020'),
('018', 'P021'),
('019', 'P022'),
('020', 'P023'),
('021', 'P024'),
('003', 'P025'),
('022', 'P040');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Order_ID` varchar(10) NOT NULL,
  `Payment_ID` varchar(10) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Pay_date` date NOT NULL,
  `Method` varchar(20) NOT NULL,
  PRIMARY KEY (`Order_ID`,`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Order_ID`, `Payment_ID`, `Amount`, `Pay_date`, `Method`) VALUES
('001', 'P001', 520.00, '2026-01-05', 'Online'),
('002', 'P002', 180.00, '2026-01-06', 'COD'),
('003', 'P003', 120.00, '2026-01-07', 'COD'),
('004', 'P004', 45.00, '2026-01-08', 'COD'),
('005', 'P005', 220.00, '2026-01-09', 'COD'),
('006', 'P006', 340.00, '2026-01-10', 'COD'),
('007', 'P007', 160.00, '2026-01-11', 'Online'),
('008', 'P008', 280.00, '2026-01-12', 'COD'),
('009', 'P009', 90.00, '2026-02-13', 'Online'),
('010', 'P010', 150.00, '2026-02-14', 'COD'),
('011', 'P011', 450.00, '2026-02-15', 'Online'),
('012', 'P012', 80.00, '2026-02-16', 'COD'),
('013', 'P013', 520.00, '2026-03-17', 'Online'),
('014', 'P014', 600.00, '2026-03-18', 'COD'),
('015', 'P015', 140.00, '2026-03-19', 'COD'),
('016', 'P016', 50.00, '2026-03-20', 'COD'),
('017', 'P017', 110.00, '2026-03-21', 'Online'),
('018', 'P018', 260.00, '2026-03-22', 'COD'),
('019', 'P019', 70.00, '2026-03-23', 'COD'),
('020', 'P020', 300.00, '2026-03-24', 'COD'),
('021', 'P021', 220.00, '2026-04-14', 'COD'),
('022', 'P022', 250.00, '2026-04-10', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Supplier_ID` int(10) UNSIGNED NOT NULL,
  `Product_name` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `Supplier_ID` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Supplier_ID`, `Product_name`, `Price`, `Category`) VALUES
('P001', 1, 'Rice 5kg', 520.00, 'Grocery'),
('P002', 2, 'Wheat Flour 2kg', 180.00, 'Grocery'),
('P003', 5, 'Sugar 1kg', 120.00, 'Grocery'),
('P004', 4, 'Salt 1kg', 45.00, 'Grocery'),
('P005', 5, 'Cooking Oil 1L', 220.00, 'Grocery'),
('P006', 3, 'Milk Powder 500g', 340.00, 'Dairy'),
('P007', 7, 'Butter 200g', 160.00, 'Dairy'),
('P008', 3, 'Cheese 250g', 280.00, 'Dairy'),
('P009', 9, 'Yogurt 500g', 90.00, 'Dairy'),
('P010', 10, 'Eggs 12 pcs', 150.00, 'Dairy'),
('P011', 1, 'Soap Pack', 110.00, 'Personal Care'),
('P012', 2, 'Shampoo 200ml', 180.00, 'Personal Care'),
('P013', 2, 'Toothpaste', 95.00, 'Personal Care'),
('P014', 4, 'Toothbrush Set', 120.00, 'Personal Care'),
('P015', 5, 'Face Wash', 250.00, 'Personal Care'),
('P016', 6, 'Biscuit Pack', 60.00, 'Snacks'),
('P017', 3, 'Chips Pack', 40.00, 'Snacks'),
('P018', 1, 'Chocolate Bar', 90.00, 'Snacks'),
('P019', 8, 'Cold Drink 1L', 70.00, 'Beverage'),
('P020', 10, 'Juice 1L', 130.00, 'Beverage'),
('P021', 1, 'Green Tea Box', 200.00, 'Beverage'),
('P022', 2, 'Coffee Jar', 450.00, 'Beverage'),
('P023', 9, 'Hand Wash', 160.00, 'Hygiene'),
('P024', 4, 'Detergent Powder', 300.00, 'Cleaning'),
('P025', 5, 'Dish Wash Liquid', 140.00, 'Cleaning'),
('P026', 6, 'Floor Cleaner', 220.00, 'Cleaning'),
('P027', 7, 'Tissue Box', 80.00, 'Hygiene'),
('P028', 7, 'Sanitizer 100ml', 100.00, 'Hygiene'),
('P029', 9, 'Rice Bran Oil', 260.00, 'Grocery'),
('P030', 10, 'Olive Oil', 600.00, 'Grocery'),
('P031', 1, 'Noodles Pack', 50.00, 'Snacks'),
('P032', 2, 'Spices Mix', 110.00, 'Grocery'),
('P033', 7, 'Red Lentil 1kg', 140.00, 'Grocery'),
('P034', 4, 'Green Lentil 1kg', 150.00, 'Grocery'),
('P035', 5, 'Black Pepper', 90.00, 'Spices'),
('P036', 6, 'Turmeric Powder', 70.00, 'Spices'),
('P037', 7, 'Cumin Powder', 85.00, 'Spices'),
('P038', 6, 'Chili Powder', 95.00, 'Spices'),
('P039', 9, 'Energy Drink', 120.00, 'Beverage'),
('P040', 10, 'Mineral Water', 30.00, 'Beverage');

-- --------------------------------------------------------

--
-- Table structure for table `prod_supp`
--

DROP TABLE IF EXISTS `prod_supp`;
CREATE TABLE IF NOT EXISTS `prod_supp` (
  `Product_ID` varchar(10) NOT NULL,
  `Supplier_ID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Product_ID`,`Supplier_ID`),
  KEY `Supplier_ID` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prod_supp`
--

INSERT INTO `prod_supp` (`Product_ID`, `Supplier_ID`) VALUES
('P001', 1),
('P002', 1),
('P003', 1),
('P004', 1),
('P005', 2),
('P006', 2),
('P007', 2),
('P008', 2),
('P009', 3),
('P010', 3),
('P011', 3),
('P012', 3),
('P013', 4),
('P014', 4),
('P015', 4),
('P016', 4),
('P017', 5),
('P018', 5),
('P019', 5),
('P020', 5),
('P021', 6),
('P022', 6),
('P023', 6),
('P024', 6),
('P025', 7),
('P026', 7),
('P027', 7),
('P028', 7),
('P029', 8),
('P030', 8),
('P031', 8),
('P032', 8),
('P033', 9),
('P034', 9),
('P035', 9),
('P036', 9),
('P037', 10),
('P038', 10),
('P039', 10),
('P040', 10);

-- --------------------------------------------------------

--
-- Table structure for table `regional_supplier`
--

DROP TABLE IF EXISTS `regional_supplier`;
CREATE TABLE IF NOT EXISTS `regional_supplier` (
  `Supplier_ID` int(10) UNSIGNED NOT NULL,
  `Region_name` varchar(100) NOT NULL,
  `Vendor_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regional_supplier`
--

INSERT INTO `regional_supplier` (`Supplier_ID`, `Region_name`, `Vendor_name`) VALUES
(2, 'Chittagong Division', 'Bay Bengal CTG'),
(5, 'Sylhet Division', 'Tea Garden LTD.');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

DROP TABLE IF EXISTS `reward`;
CREATE TABLE IF NOT EXISTS `reward` (
  `Reward_ID` int(10) UNSIGNED NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Reward_name` varchar(50) NOT NULL,
  `points` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Reward_ID`),
  KEY `fk_user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`Reward_ID`, `User_ID`, `Reward_name`, `points`) VALUES
(1, 5, 'Cashback Reward', 80),
(2, 12, 'Welcome Bonus', 50),
(3, 3, 'Referral Bonus', 150),
(4, 8, 'Purchase Reward', 100),
(5, 19, 'Loyalty Bonus', 200),
(6, 1, 'Welcome Bonus', 50),
(7, 14, 'Cashback Reward', 80),
(8, 6, 'Purchase Reward', 100),
(9, 10, 'Referral Bonus', 150),
(10, 17, 'Welcome Bonus', 50),
(11, 2, 'Loyalty Bonus', 200),
(12, 9, 'Purchase Reward', 100),
(13, 15, 'Cashback Reward', 80),
(14, 4, 'Welcome Bonus', 50),
(15, 20, 'Referral Bonus', 150),
(16, 7, 'Loyalty Bonus', 200),
(17, 11, 'Cashback Reward', 80),
(18, 13, 'Purchase Reward', 100),
(19, 18, 'Welcome Bonus', 50),
(20, 16, 'Referral Bonus', 150),
(21, 5, 'Welcome Bonus', 50),
(22, 3, 'Cashback Reward', 80),
(23, 8, 'Referral Bonus', 150),
(24, 12, 'Purchase Reward', 100),
(25, 1, 'Loyalty Bonus', 200);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `Supplier_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Manager_initial` varchar(10) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Supplier_ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_ID`, `Manager_initial`, `Start_date`, `End_date`, `Email`) VALUES
(1, 'ASR', '2025-12-30', NULL, 'tatkabd@gmail.com'),
(2, 'MRA', '2025-12-28', NULL, 'allfresh@yahoo.com'),
(3, 'TK', '2025-12-30', '2026-01-30', 'bdbazar@gmail.com'),
(4, 'NH', '2025-12-29', NULL, 'freshcook@gmail.com'),
(5, 'RB', '2025-12-30', NULL, 'allgood66@yahoo.com'),
(6, 'SAM', '2026-01-20', NULL, 'chaldal@gmail.com'),
(7, 'KIA', '2026-01-25', NULL, 'ghorbazar55@gmail.com'),
(8, 'FR', '2026-01-17', '2026-01-27', 'bdbazar55@gmail.com'),
(9, 'JRD', '2026-02-05', NULL, 'supplybd@gmail.com'),
(10, 'LMM', '2026-02-12', NULL, 'supplydhk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `User_email` varchar(100) NOT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_email` (`User_email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `First_name`, `Last_name`, `User_email`) VALUES
(1, 'Tasmia', 'Rahman', 'trahman006@gmail.com'),
(2, 'Arif', 'Hossain', 'arif.h@gmail.com'),
(3, 'Sara', 'Islam', 'sara_islam@gmail.com'),
(4, 'Tanvir', 'Ahmed', 'iamtanveer44@yahoo.com'),
(5, 'Nusrat', 'Jahan', 'nusrat.j@yahoo.com'),
(6, 'Fahim', 'Muntasir', 'fahim.m@gmail.com'),
(7, 'Sadia', 'Afrin', 'sadia.afri123n@example.com'),
(8, 'Rakib', 'Hasan', 'rakib.h88@gmail.com'),
(9, 'Anika', 'Tabassum', 'anika.tab2@gmail.com'),
(10, 'Siam', 'Sarker', 'siam.engr@gmail.com'),
(11, 'Mehedi', 'Hasan', 'mehedi.ishere@gmail.com'),
(12, 'Farhana', 'Akter', 'farhana.akter@gmail.com'),
(13, 'Mahmud', 'Khan', 'mahmud.khan99@gmail.com'),
(14, 'Ishrat', 'Zaman', 'ishrat.zoe@gmail.com'),
(15, 'Tamim', 'Iqbal', 'tamim.iqbal@yahoo.com'),
(16, 'Laila', 'Nur', 'laila.nurin67@gmail.com'),
(17, 'Sajid', 'Rahman', 'sajid.r.rahman@gmail.com'),
(18, 'Nabila', 'Chowdhury', 'nabilaishere.007@gmail.com'),
(19, 'Kamrul', 'Islam', 'kamrulislambd@yahoo.com'),
(20, 'Sumaiya', 'Anjum', 'sumaiya.a77@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_phonenumber`
--

DROP TABLE IF EXISTS `user_phonenumber`;
CREATE TABLE IF NOT EXISTS `user_phonenumber` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`User_ID`,`Phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_phonenumber`
--

INSERT INTO `user_phonenumber` (`User_ID`, `Phone_number`) VALUES
(1, '01710000011'),
(1, '01812341111'),
(2, '01720000222'),
(3, '01633333333'),
(4, '01744444444'),
(5, '01855345655'),
(6, '01766666666'),
(6, '01955555555'),
(7, '0167780777'),
(8, '01877543777'),
(9, '01788113888'),
(9, '01999999999'),
(10, '01610101010'),
(11, '0177711111'),
(12, '01811231111'),
(13, '01722222222'),
(13, '019333000333'),
(14, '01633093333'),
(15, '01744444444'),
(15, '01855555555'),
(16, '01955555555'),
(17, '01711111111'),
(18, '018111188111'),
(19, '01722222222'),
(20, '01933388333');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `cart_prod`
--
ALTER TABLE `cart_prod`
  ADD CONSTRAINT `cart_prod_ibfk_1` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_prod_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `local_supplier`
--
ALTER TABLE `local_supplier`
  ADD CONSTRAINT `local_supplier_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_prod`
--
ALTER TABLE `order_prod`
  ADD CONSTRAINT `order_prod_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_prod_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prod_supp`
--
ALTER TABLE `prod_supp`
  ADD CONSTRAINT `prod_supp_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prod_supp_ibfk_2` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regional_supplier`
--
ALTER TABLE `regional_supplier`
  ADD CONSTRAINT `regional_supplier_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reward`
--
ALTER TABLE `reward`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `user_phonenumber`
--
ALTER TABLE `user_phonenumber`
  ADD CONSTRAINT `user_phonenumber_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
