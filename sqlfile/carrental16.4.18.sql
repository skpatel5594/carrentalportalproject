-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 07:40 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2018-01-01 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estimatedKms` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `estimatedKms`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43', NULL),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-26 20:15:43', NULL),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06', NULL),
(4, 'test@gmail.com', 1, '12/12/12', '12/12/13', 'TEST', 2, '2018-03-08 08:32:10', NULL),
(5, 'skpatel@gmail.com', 6, '22/03/2018', '28/03/2018', 'family tour to rajasthan', 1, '2018-03-14 14:04:04', NULL),
(6, NULL, 5, '20/03/2018', '24/03/2018', 'family trip', 0, '2018-03-15 12:51:51', NULL),
(7, 'afaz@gmail.com', 2, '16/03/2018', '18/03/2018', 'meeting at mumbai', 1, '2018-03-15 16:42:46', NULL),
(8, 'skpatel5594@gmail.com', 5, '22/03/2018', '24/03/2018', 'visit to a resort at polo forest', 0, '2018-03-15 16:44:31', NULL),
(9, 'skpatel5594@gmail.com', 6, '19/03/2018', '25/03/2018', 'family tour to rajasthan', 2, '2018-03-15 16:45:59', NULL),
(10, 'afaz@gmail.com', 1, '18/03/2018', '19/03/2018', 'picnic', 1, '2018-03-16 04:28:28', NULL),
(11, 'afaz@gmail.com', 6, 'kjjkl', 'oikmokln', 'nkjklnkl', 0, '2018-04-16 05:31:55', '89789');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2018-01-18 16:24:50', NULL),
(3, 'Audi', '2018-01-18 16:25:03', NULL),
(4, 'Nissan', '2018-01-18 16:25:13', NULL),
(5, 'Toyota', '2018-01-18 16:25:24', NULL),
(7, 'Maruti Suzuki', '2018-01-19 06:22:13', '2018-03-15 11:58:22'),
(8, 'TATA', '2018-03-14 17:38:49', NULL),
(9, 'Mercedez', '2018-03-16 04:34:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '4th Floor, 403, \"Raindrops\" Opposite\r\n Cargo Motors, C.G. Road, \r\nAhmedabad - 380006', 'support@carrentalportal.com', '7383207713');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Afaz', 'khatriafaz@gmail.com', 'eroikfkjswe', 'asedgvfsrdrfvws', '2018-03-10 12:14:18', 1),
(3, 'rakshit patel', 'rakshit@gmail.com', '9876543210', 'testing ', '2018-03-15 16:48:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">User privacy is of paramount importance to Car Rental Portal.&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">Car Rental Portal&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">has developed this&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">Privacy Policy</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;to explain the manner in which&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">Car Rental Portal</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;collects, uses, discloses, transfers, and stores User information. Users are advised to familiarize themselves with&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">Car Rental Portal</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;privacy practices and keep themselves updated with the changes hereto from time to time.</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\"><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">By mere use of the Platform, the User expressly consents to&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">Car Rental Portal&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">use and disclosure of Users Personal Information (</span><span style=\"margin: 0px; padding: 0px; font-family: icomoon; speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); font-size: 13px; text-align: justify;\">as defined below</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">) in accordance with this Privacy Policy. This Privacy Policy shall be deemed to be incorporated into the Terms and Conditions and shall be read in addition to and in conjunction with the Terms and Conditions. In the event of any inconsistency or ambiguity arising between the Terms and Conditions and the terms of this Privacy Policy, the provisions in this Privacy Policy to the extent of such inconsistency or ambiguity, shall prevail.</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\"><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 13px; text-align: justify;\">For the purpose of this Privacy Policy, all capitalised terms shall have the meaning so assigned to them in the Terms and Conditions.</span>'),
(3, 'About Us ', 'aboutus', '<div><h1 class=\"section-heading\" style=\"text-align: center; margin-top: 0px; margin-bottom: 40px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: 600; color: rgba(0, 0, 0, 0.92); font-family: Gentona; letter-spacing: 0.3px;\">Redefining Mobility for Billions</h1></div>																																																																						<p class=\"MsoNormal\"></p><span style=\"font-family: &quot;times new roman&quot;; font-size: large; letter-spacing: 0.25pt; color: inherit; font-weight: bold;\">Car Rental Portal</span><span style=\"font-family: &quot;times new roman&quot;; font-size: large; letter-spacing: 0.25pt; color: inherit;\"> is one of the world’s largest\r\nride-sharing companies. Car Rental Portal integrates city transportation for\r\ncustomers and driver-partners onto a web technology platform ensuring\r\nconvenient, transparent, and quick service fulfilment. Car Rental Portal is\r\nfocused on leveraging the best of technology and building innovative solutions\r\nground-up, that are relevant at global scale.&nbsp;</span><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large; letter-spacing: 0.333333px;\"><br></span></div><div><span style=\"font-family: &quot;times new roman&quot;; font-size: large; letter-spacing: 0.333333px;\"><br></span><h5 style=\"text-align: left;\"><span style=\"letter-spacing: 0.25pt; font-size: large; font-family: &quot;times new roman&quot;;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgba(0, 0, 0, 0.92);\">Notably, in 2017, <span style=\"font-weight: bold;\">Car Rental Portal</span> Play the\r\nworld’s first connected car platform for ride-sharing was launched,\r\ntransforming commuting experiences and setting the tone for global innovation\r\nin this space. Beyond offering a highly personal experience for users during their\r\nrides, Car Rental Portal &nbsp;Play also\r\nallows its partners like Microsoft, Apple Music, Sony Liv amongst others, to\r\nbuild a high quality interactive and productive experience for its users. Using\r\nthe Car Rental Portal , users across 110+ cities, can connect with over 1,000,000\r\ndriver-partners across cabs, and taxis. Driven by a hyperlocal approach, Car Rental\r\nPortal is committed to its mission of building mobility for a billion people.</span></span></span></h5><p></p>\r\n										\r\n										\r\n										\r\n										\r\n										</div>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '										<h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\"><span style=\"font-size: 13.5pt;\"><a href=\"https://volercars.com/ahmedabad/faqs#collapse1\"><span style=\"color: windowtext; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1)&nbsp;<span itemprop=\"text\">Where do we operate?</span></span></a><o:p></o:p></span></h4><h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\">\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\"><span itemprop=\"text\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Our Self-Drive\r\nCar Rental services are present in Ahmedabad.</span></span></p><p style=\"margin-bottom: 0.0001pt;\"><span itemprop=\"text\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><br></span></span></p></h4><h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\"><span style=\"font-size: 13.5pt;\"><a href=\"https://volercars.com/ahmedabad/faqs#collapse2\"><span style=\"color: windowtext; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2)&nbsp;<span itemprop=\"text\">Where in India can I travel?</span></span></a><o:p></o:p></span></h4><h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\"><p style=\"margin-bottom: 0.0001pt;\"><span itemprop=\"text\">\r\n\r\n</span></p><p style=\"margin-bottom: 0.0001pt;\" itemprop=\"suggestedAnswer\" itemscope=\"\" itemtype=\"http://schema.org/Answer\"><span itemprop=\"text\"><span style=\"font-size:13.5pt\">You can travel\r\nanywhere in India as our cars have All India Permit.</span><o:p></o:p></span></p><p style=\"margin-bottom: 0.0001pt;\" itemprop=\"suggestedAnswer\" itemscope=\"\" itemtype=\"http://schema.org/Answer\"><span itemprop=\"text\"><span style=\"font-size:13.5pt\"><br></span></span></p></h4><h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\"><span style=\"font-size: 13.5pt;\"><a href=\"https://volercars.com/ahmedabad/faqs#collapse4\"><span style=\"color: windowtext; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3)&nbsp;<span itemprop=\"text\">What are the basic Vehicle\r\nDocuments?</span></span></a><o:p></o:p></span></h4><h4 style=\"margin:0in;margin-bottom:.0001pt;vertical-align:middle\"><p style=\"margin-bottom: 0.0001pt;\" itemprop=\"suggestedAnswer\" itemscope=\"\" itemtype=\"http://schema.org/Answer\"><span itemprop=\"text\">\r\n\r\n</span></p><p style=\"margin-bottom: 0.0001pt;\" itemprop=\"suggestedAnswer\" itemscope=\"\" itemtype=\"http://schema.org/Answer\"><span itemprop=\"text\"><span style=\"font-size:13.5pt\">Smart Card,\r\nInsurance, Authorisation, All India Permit, Pollution Certificate, State Tax\r\nCertificate, Rent A Cab License, Rent A Cab Gazette.</span><o:p></o:p></span></p></h4>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'abc@xyz.com', '2018-03-10 12:17:58'),
(3, 'kevin@gmail.com', '2018-03-15 16:47:13'),
(4, 'rakshit@gmail.com', '2018-03-16 04:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 0),
(3, 'test@gmail.com', 'xfcgevdsfgvedrfgtverdf', '2018-03-10 12:05:53', NULL),
(4, 'skpatel5594@gmail.com', 'documents needed to be submitted?', '2018-03-15 16:51:38', 1),
(5, 'afaz@gmail.com', 'Awesome App', '2018-03-16 04:33:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(6, 'saurabh', 'skpatel5594@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7383207713', NULL, NULL, NULL, NULL, '2018-03-15 12:44:56', NULL),
(7, 'afaz', 'afaz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', NULL, NULL, NULL, NULL, '2018-03-15 16:41:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `PricePerKM` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `MP3player` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `PricePerKM`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `MP3player`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Fortuner', 5, 'Fortuner Diesel engine specification include an engine of 2755cc, which musters up a torque measuring to 450Nm@1600-2400rpm and maximum power of 174.5bhp@3400. ... Toyota Fortuner Automatic comes in diesel & petrol engine options.', 1200000656, 100, 'CNG', 2017, 4, '28276331_1836705119695987_7362923323461183645_n.jpg', '31969_Toyota-Fortuner-2016_005.JPG', '28277174_1836705169695982_7015137208812212158_n.jpg', '15380668_1359461604087010_3332938293926406820_n.jpg', '', 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, '2018-01-19 11:46:23', '2018-04-16 05:12:43'),
(2, 'i8', 2, 'couple car for long ride , Luxorious car ', 35000, 5000, 'petrol', 2017, 2, '2329523.jpg', '2017-bmw-i8-interior-review-car-and-driver-photo-676175-s-original.jpg', 'BMWI8SIDE.jpg', 'bmw-i8-rear-view.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, '2018-01-19 16:16:17', '2018-04-16 05:16:30'),
(3, '350Z', 4, '350Z amazing sports car ', 25000, NULL, 'petrol', 2016, 2, 'featured-img-3.jpg', 'nissan-350z-interior-7.jpg', 'modp_0910_07_o+2005_nissan_350z+side_view.jpg', 'IMG_5932.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2018-03-15 17:38:52'),
(5, 'Innova-Crysta', 5, 'Innova-Crysta', 6500, NULL, 'Petrol', 2017, 7, 'Toyota-Innova-Crysta-12.jpg', 'l_innova-1470777689_835x547.jpg', 'innova-crysta-review-dashboard-interior.jpg', 'Toyota-Innova-Crysta-Interior-104287.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-01-20 17:57:09', '2018-03-15 12:58:18'),
(6, 'Eartiga', 7, 'Maruti Suzuki Ertiga enables you to enjoy your moments together while adding a touch of style to them. With its exciting features, Maruti Suzuki Ertiga makes every journey look elegant.', 5000, 120, 'Petrol', 2018, 7, 'ertiga_web.jpg', 'images.jpg', 'suzuki-ertiga-dreza-dashboard-view-574022.jpg', 'Chevrolet-Spin-Interior-Seats.jpg', 'maruti-ertiga-6-driver.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2018-03-14 13:21:46', '2018-04-16 05:17:01'),
(7, 'Etios', 5, 'family car', 4000, NULL, 'CNG', 2015, 4, 'etios.jpg', 'images12.jpg', 'Toyota-Etios5.jpg', 'Toyota-Etios-taxi.jpg', '', 1, 1, NULL, 1, 1, 1, NULL, 1, 1, NULL, NULL, 1, '2018-03-15 17:19:00', '2018-03-15 17:21:22'),
(8, 'C Class', 9, 'New Car', 40000, NULL, 'Diesel', 2018, 4, '01-mercedes-benz-mbsocialcar-c-class-c-350-e-w-205-calendar-march-2018-3400x1440.jpg', '2015-Mercedes-C-Class-interior.jpg', 'mercedes-benz-c-class-review-2015_46.jpg', 'mercedes-benz-c-class-silver-exterior-back-2.jpg', '', 1, 1, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, '2018-03-16 04:36:48', '2018-03-18 11:53:38'),
(9, 'A3', 3, 'The Audi A3 is one of the most affordable cars from the German automaker. Its compact dimensions, responsive motor and great driving dynamics does make the car an appealing option for the enthusiasts. When it was first launched in 2014, it left us quite impressed with its fun-to-drive nature. Fast forward to today and the car standing in front of us is the new and improved (refreshed) Audi A3. It boasts a host of upgrades but the engine we’re not sure can be considered one. ', 12000, NULL, 'Petrol', 2014, 5, 'audi-a3-diesel-review-pictures-test-drive-zigwheels-14072014-g0_640x480.jpg', 'audi-a3-diesel-review-pictures-test-drive-zigwheels-14072014-g20_640x480.jpg', 'audi-a3-diesel-review-pictures-test-drive-zigwheels-14072014-g27_640x480.jpg', 'audi-a3-diesel-review-pictures-test-drive-zigwheels-14072014-g18_640x480.jpg', 'audi-a3-diesel-review-pictures-test-drive-zigwheels-14072014-g2_640x480.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, '2018-03-20 05:29:13', NULL),
(10, 'Q7', 3, 'Audi has added a petrol engine to the Q7 lineup. The Q7 40 TFSI joins the lineup more than a year after the all-new Q7 was launched in India. The highlight of the launch is the new 2.0-litre, 4-cylinder turbocharged motor that develops 252PS of maximum power and 370Nm of peak torque paired with a 8-speed automatic transmission and the company\'s critically acllaimed \'quattro\' AWD system.', 15000, NULL, 'Petrol', 2016, 7, 'audi-q7-review-zigwheels-india-g16_640x480.jpg', 'audi-q7-review-zigwheels-india-g34_640x480.jpg', 'audi-q7-review-zigwheels-india-g50_640x480.jpg', 'audi-q7-review-zigwheels-india-g15_640x480.jpg', 'audi-q7-review-zigwheels-india-g07_640x480.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-03-20 05:39:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
