-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2022 at 01:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `ActID` int(10) UNSIGNED NOT NULL,
  `Lieu` varchar(100) NOT NULL,
  `Bus` int(10) UNSIGNED NOT NULL,
  `Theme` varchar(100) NOT NULL,
  `Jour` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`ActID`, `Lieu`, `Bus`, `Theme`, `Jour`) VALUES
(33, 'NICE', 50, 'ART', 15),
(44, 'METZ', 60, 'SPORT', 30),
(55, 'CANNE', 70, 'ART', 15),
(66, 'TOULOUSE', 70, 'ART', 24),
(77, 'LYON', 50, 'SPORT', 24),
(88, 'NANCY', 70, 'ART', 30),
(99, 'ALBI', 50, 'SPORT', 24),
(0, 'PARIS', 70, 'SPORT', 30);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ClassID` int(10) UNSIGNED NOT NULL,
  `Enseignant` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ClassID`, `Enseignant`) VALUES
(100, 'LINA'),
(110, 'NABIL'),
(120, 'CLERE'),
(130, 'ROBERT'),
(140, 'FEDERIQ'),
(150, 'JULY');

-- --------------------------------------------------------

--
-- Table structure for table `eleves`
--

CREATE TABLE `eleves` (
  `ElevID` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Ville` varchar(100) NOT NULL,
  `ClassID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleves`
--

INSERT INTO `eleves` (`ElevID`, `Nom`, `Age`, `Ville`, `ClassID`) VALUES
(1, 'ASSAD', 23, 'NANCY', 100),
(2, 'BARA', 22, 'PARIS', 110),
(3, 'AJRED', 23, 'LILLE', 120),
(4, 'BAKKALI', 21, 'CANNE', 110),
(5, 'CHATIBY', 20, 'NICE', 150),
(6, 'AZZAM', 19, 'PARIS', 130),
(7, 'GAZZAOUI', 18, 'METZ', 140),
(8, 'FRIKACH', 23, 'NANCY', 140),
(9, 'BENJI', 24, 'PARIS', 100),
(10, 'BENMEHDI', 20, 'NICE', 110),
(11, 'ATTOU', 22, 'CANNE', 120),
(12, 'HABIBY', 22, 'PARIS', 120),
(13, 'NACCER', 21, 'NICE', 130),
(14, 'CHAKIK', 19, 'METZ', 140),
(15, 'BOUJAOAUI', 20, 'PARIS', 100),
(16, 'ARBI', 20, 'LILLE', 140),
(17, 'OURRAI', 21, 'DOUAI', 150),
(18, 'KHADIRI', 19, 'ALBI', 150),
(19, 'HABBATY', 18, 'ALBI', 130),
(20, 'HAKIMI', 23, 'PARIS', 120),
(21, 'CHAFNI', 24, 'TOULOUSE', 150),
(22, 'HILLAL', 20, 'LYON', 110),
(23, 'KHARBOUCH', 21, 'LYON', 100),
(24, 'SAMI', 22, 'TOULOUSE', 110),
(25, 'LINY', 22, 'LYON', 120);

-- --------------------------------------------------------

--
-- Table structure for table `repartition`
--

CREATE TABLE `repartition` (
  `ElevID` int(10) UNSIGNED NOT NULL,
  `ActID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repartition`
--


