-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 12:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `BookName` varchar(45) NOT NULL,
  `BookId` varchar(20) NOT NULL,
  `AuthorId` varchar(20) NOT NULL,
  `AuthorName` varchar(45) NOT NULL,
  `PublishYear` year(4) NOT NULL,
  `PublisherName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`BookName`, `BookId`, `AuthorId`, `AuthorName`, `PublishYear`, `PublisherName`) VALUES
('Clean Code', '01', '22', 'Kashif', 2000, 'Taj Publishers'),
('Refactoring', '02', '33', 'Bilal', 2001, 'Java Publishers'),
('Code Complete', '03', '44', 'Abdullah', 2002, 'Attique Publishers'),
('Effective Java', '04', '55', 'Ahmed', 2003, 'Java Publishers'),
('Programming Pearls', '05', '66', 'Syed Ahtasham', 2004, 'Pak Publishers');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `BookName` varchar(45) NOT NULL,
  `BookId` varchar(20) NOT NULL,
  `AuthorName` varchar(45) NOT NULL,
  `IssueDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `ApplicantName` varchar(45) NOT NULL,
  `ApplicantContactNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`BookName`, `BookId`, `AuthorName`, `IssueDate`, `ReturnDate`, `ApplicantName`, `ApplicantContactNumber`) VALUES
('Clean Code', '01', 'Kashif', '2005-10-22', '2005-12-22', 'Syed Ahtasham', '03112628826'),
('Refactoring', '02', 'Bilal', '2006-08-17', '2006-09-22', 'Abdullah', '03112628826'),
('Code Complete', '03', 'Abdullah', '2008-10-15', '2008-11-22', 'Rafay', '090078601'),
('Effective Java', '04', 'Ahmed', '2009-04-15', '2009-05-12', 'Moiz', '03112567879'),
('Programming Pearls', '05', 'Syed Ahtasham', '2010-05-20', '2010-06-17', 'Sameer', '03458798672');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `BookName` varchar(45) NOT NULL,
  `BookId` varchar(45) NOT NULL,
  `ReturnDate` date NOT NULL,
  `ApplicantName` varchar(45) NOT NULL,
  `ApplicantId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`BookName`, `BookId`, `ReturnDate`, `ApplicantName`, `ApplicantId`) VALUES
('Clean Code', '01', '2005-12-22', 'Syed Ahtasham', '1001'),
('Refactoring', '02', '2006-09-22', 'Abdullah', '1002'),
('Code Complete', '03', '2008-11-22', 'Rafay', '1003'),
('Effective Java', '04', '2009-05-12', 'Moiz', '1004'),
('Programming Pearls', '05', '2010-06-17', 'Sameer', '1005');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
