-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 06:58 AM
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
-- Database: `ebookmaker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `password`) VALUES
('aayush', 'Admin', '16e3012aebb10bd15f076e9a63712e8d21bb5cf0'),
('admin', 'Admin User', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(255) NOT NULL,
  `aid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `aid`, `name`, `password`, `email`) VALUES
(3, '123', 'chittu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'chittu@gmail.com'),
(4, '3211', 'aayush', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'aayush@gmail.com'),
(5, '66', 'rishi', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'rishi@gmail.com'),
(6, '4545', 'ak', '66aa1cb9a469f74f6057878a4dcaaf9dbabd9529', 'ak@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `id` int(11) NOT NULL,
  `Article_title` varchar(255) NOT NULL,
  `Article_content` text NOT NULL,
  `Date_published` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`id`, `Article_title`, `Article_content`, `Date_published`) VALUES
(1, 'how to create ebook', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">On the Insert tab, the galleries include items that are designed to coordinate with the overall look of your document. You can use these galleries to insert tables, headers, footers, lists, cover pages, and other document building blocks. When you create pictures, charts, or diagrams, they also coordinate with your current document look. You can easily change the formatting of selected text in the document text by choosing a look for the selected text from the Quick Styles gallery on the Home tab. You can also format text directly by using the other controls on the Home tab.</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Most controls offer a choice of using the look from the current theme or using a format that you specify directly. To change the overall look of your document, choose new Theme elements on the Page Layout tab. To change the looks available in the Quick Style gallery, use the Change Current Quick Style Set command. Both the Themes gallery and the Quick Styles gallery provide reset commands so that you can always restore the look of your document to the original contained in your current template. On the Insert tab, the galleries include items that are designed to coordinate with the overall look of your document.</span></span></p>\r\n', '2022-07-03 12:54:20'),
(2, 'What is html ?', '<ul>\r\n	<li>HTML stands for Hyper Text Markup Language</li>\r\n	<li>HTML is the standard markup language for creating Web pages</li>\r\n	<li>HTML describes the structure of a Web page</li>\r\n	<li>HTML consists of a series of elements</li>\r\n	<li>HTML elements tell the browser how to display the content</li>\r\n	<li>HTML elements label pieces of content such as &quot;this is a heading&quot;, &quot;this is a paragraph&quot;, &quot;this is a link&quot;, etc.</li>\r\n</ul>\r\n', '2022-07-03 18:10:30'),
(6, 'What is BCA ?', '<p>Bachelor of Computer Application (BCA)&nbsp;is a 3-year undergraduate&nbsp;course that imparts knowledge on the basics of computer application and software development. BCA subjects include&nbsp;database management systems, software engineering, operating systems, web technology and computer languages such as HTML, C, C++, Java.</p>\r\n\r\n<p><a href=\"http://collegedunia.com/courses/bachelor-of-computer-applications-bca/bca-admission-2021\" target=\"_blank\">BCA Admission 2022</a>&nbsp;is granted through both merit-based and entrance exam-based admission processes. The minimum BCA eligibility criteria followed across all&nbsp;<a href=\"https://collegedunia.com/courses/bachelor-of-computer-applications-bca-colleges-in-india\" target=\"_blank\">Top BCA Colleges</a>&nbsp;is 50% marks in 10+2 or equivalent examination with computer application/computer science as an additional or core subject.&nbsp;<strong>Learn More:</strong>&nbsp;<a href=\"https://collegedunia.com/courses/computer-applications\" target=\"_blank\">Computer Application Courses</a>&nbsp;</p>\r\n\r\n<p>BCA Course Fees range between INR 80,000 to INR 3,00,000 in private colleges and INR 20,000 to INR 80,000 in Government colleges. Course Fees for&nbsp;<a href=\"https://collegedunia.com/courses/bachelor-of-computer-applications-bca-colleges-in-delhi-ncr\" target=\"_blank\">BCA Colleges in Delhi</a>&nbsp;range between INR 70,000 to INR 3,00,000.&nbsp;<a href=\"https://collegedunia.com/bca/government-colleges\" target=\"_blank\">Top BCA Govt Colleges</a>&nbsp;are Loyola College, University of Baroda,&nbsp; Ewing Christian College, St Bede&rsquo;s College etc</p>\r\n', '2022-07-05 18:20:58'),
(7, 'fsdf', '<p>aayush</p>\r\n', '2022-07-05 18:21:56'),
(8, 'What is a BBA course?', '<p>&nbsp;</p>\r\n\r\n<p>Bachelor of Business Administration (BBA) in India is&nbsp;<strong>a graduate degree which equips the students with professional management qualification leading to acquiring the business leadership roles</strong>. With the growing Indian economy and businesses, BBA education is growing too.</p>\r\n', '2022-07-06 04:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `author`) VALUES
(2, 'aayush', 'gh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sid` (`aid`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
