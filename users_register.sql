-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 03:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `constituencyNumber` int(100) NOT NULL,
  `idnumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `password`, `usertype`, `email`, `firstname`, `lastname`, `constituencyNumber`, `idnumber`) VALUES
(1, '$2y$10$cDvphzdH6Fh4J30P60uDLOTEFpWPuuiWkzYiCfb292vKDQRjb80N6', 'MAIN ADMIN', 'admin@admin.com', 'admin', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bursaryapplications`
--

CREATE TABLE `bursaryapplications` (
  `id` int(100) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `idNumber` int(100) NOT NULL,
  `subcounty` varchar(100) NOT NULL,
  `constituencyNumber` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `feebalance` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `applicationdate` varchar(255) NOT NULL,
  `registrationnumber` varchar(255) NOT NULL,
  `applicationcode` varchar(50) DEFAULT NULL,
  `constituencyName` varchar(255) NOT NULL,
  `admissionletter` varchar(255) NOT NULL,
  `idcertificate` varchar(255) NOT NULL,
  `wards` varchar(100) NOT NULL,
  `supportingdocs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bursaryapplications`
--

INSERT INTO `bursaryapplications` (`id`, `studentname`, `phone`, `idNumber`, `subcounty`, `constituencyNumber`, `email`, `address`, `school`, `course`, `feebalance`, `year`, `reason`, `applicationdate`, `registrationnumber`, `applicationcode`, `constituencyName`, `admissionletter`, `idcertificate`, `wards`, `supportingdocs`) VALUES
(88, 'werty', 0, 4567890, '1', 5, 'peterkimindu2@gmail.com', '5\r\n90138', 'Egerton', 'AGED', '667', '1', 'ghjk', '2024-04-23', 'aswe', 'APP88', 'Kibwezi West', 'Bursary Applications.pdf', 'Bursary Applications.pdf', '1', 'Bursary Applications.pdf'),
(91, 'peter', 741999159, 56577645, '5', 5, 'peterkem@gmail.com', '5\r\n90138', 'Egerton primary', 'AGED', '667', '2', 'IM FROM HUMBLE BACKGROUND', '2024-04-24', 'S13/02222', 'APP91', '', 'Applicant_details (3).pdf', 'Projects Report.pdf', '4', 'tender (1).pdf'),
(87, 'Kiminduu', 741000159, 56589654, '1', 5, 'peterkimindu2@gmail.com', '5\r\n90138', 'Egerton', 'Bsc.COMPUTER SCIENCE ', '1234', '3', 'wertyui', '2024-04-03', 'sa/75/717', 'APP87', 'Kibwezi West', 'Concept.pdf', 'S13_02616_20-admission_letter.pdf', '4', 'comp 436  assignment.docx'),
(89, 'Kiminduu', 741999159, 38963074, '1', 5, 'peterkimindu2@gmail.com', '5\r\n90138', 'Egerton', 'Bsc.COMPUTER SCIENCE ', '667', '1', 'hjkl', '2024-04-24', 'ty/567/20', 'APP89', '', 'Applicant_details (1).pdf', 'Bursary Applications.pdf', '1', 'tender (3).pdf'),
(86, 'Kiminduu', 741999159, 56577654, '1', 5, 'peterkimindu2@gmail.com', '5\r\n90138', 'Egerton', 'AGED', '667', '2', 'dfghjkl', '2024-04-03', 'ty/567/310', 'APP86', 'Kibwezi West', 'Case Study.pdf', 'Comp 413 project proposal.pdf', '1', 'Binance Quiz 19th October .doc'),
(90, 'benja', 741999159, 56577654, '1', 5, 'peterkimindu2@gmail.com', '5\r\n90138', 'jkkll', 'AGED', '667', '1', 'rtyuiop', '2024-04-24', 'ty/567/78', 'APP90', '', 'Applicant_details (1).pdf', 'Applicant_details (2).pdf', '1', 'Applicant_details (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `constituencyName` varchar(255) NOT NULL,
  `projectName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `created_at`, `constituencyName`, `projectName`) VALUES
(6, 'good', '2024-03-08 14:12:00', 'Kibwezi West', 'kmtc makindu'),
(7, 'Fair', '2024-03-08 14:33:49', 'Kibwezi West', 'kmtc makindu'),
(8, 'good', '2024-03-29 10:14:41', 'Kibwezi West', 'kmtc makindu');

-- --------------------------------------------------------

--
-- Table structure for table `conhelp`
--

CREATE TABLE `conhelp` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `constituencyNumber` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conhelp`
--

INSERT INTO `conhelp` (`id`, `message`, `email`, `created_at`, `constituencyNumber`) VALUES
(4, 'RTYUIO', 'peterkimindu2@gmail.com', '2024-04-21 13:34:53', 5),
(5, 'Not able to log in', 'jesica@yahoo.com', '2024-04-23 10:03:12', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cons`
--

CREATE TABLE `cons` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `constituencyNumber` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `projects` text NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `mpname` varchar(100) NOT NULL,
  `About Mp` text NOT NULL,
  `simage` text NOT NULL,
  `comchair` varchar(100) NOT NULL,
  `comvchair` varchar(100) NOT NULL,
  `wardrep1` varchar(100) NOT NULL,
  `wardrep2` varchar(100) NOT NULL,
  `fund` varchar(100) NOT NULL,
  `accountant` text NOT NULL,
  `ictmanager` text NOT NULL,
  `projectmanager` text NOT NULL,
  `secretary` text NOT NULL,
  `security` text NOT NULL,
  `disablerep` varchar(100) NOT NULL,
  `allocate` varchar(255) NOT NULL,
  `report` varchar(255) NOT NULL,
  `report2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cons`
--

INSERT INTO `cons` (`id`, `name`, `constituencyNumber`, `location`, `description`, `projects`, `image1`, `image2`, `image3`, `mpname`, `About Mp`, `simage`, `comchair`, `comvchair`, `wardrep1`, `wardrep2`, `fund`, `accountant`, `ictmanager`, `projectmanager`, `secretary`, `security`, `disablerep`, `allocate`, `report`, `report2`) VALUES
(1, 'KIBWEZI WEST CONSTITUENCY', 5, 'MAKUENI', 'Kibwezi West is a constituency I.E.B.C NO.087. It is one of the 6 constituencies in Makueni County. It was created in 2010 as per the Kenya Constitution 2010.It has an estimated population of 165,925 people. It has an estimated area of 2,100.7KM Squares Kibwezi West constituency conducted its recent general election in the year 2022.The election was won by Hon. Ecomas Mwengi Mutuse as the Area Member of Parliament as an independent candidate.\r\nOffice Headquaters are located at Makindu Town,Before Makindu Law Courts opposite Office of the governor Kibwezi west Constituency.', 'images/bursary.jpg', 'images2/kbzwst.jpg', 'images2/kbz.JPG', 'images2/mwengi.JPG', 'HON.ECKOMAS MWENGI MUTUSE', 'Hon. Mwengi Mutuse - Vice Chair, JLAC and Kibwezi member of Parliament, at the launch of The Assets Recovery Agency strategic plan 2022-27.', 'images2/user.png', 'MR.KISILU RICHARD', 'DIANA MAANZO', 'MR.ABUL HUSSEIN', 'KIEMA GLADYS', 'MR.JAPHETH', 'MR.TITUS', 'MR.DAREN', 'MR.DUOUGLAS', 'MRS.GRACE', 'MR.BERNARD KISELE', 'MR.NDOLO', ' FY 2023/24  248,000,000.00', 'REPORT ON THE USAGE OF ALLOCATED AMOUNT FY 2022/23', 'A GUIDE ON USE OF THE SYSTEM'),
(5, 'NJORO CONSTITUENCY', 7, 'NAKURU COUNTY', 'Njoro Constituency is one of the constituencies in Nakuru County, is a station on the meter gauge railway line between Nakuru and Kisumu. It has a population of approximately 208,300 people and covers 713 Sq.Km. the town is home to the Kenya Agricultural and Livestock Research Organization (KALRO) and Egerton University. It’s situated 5km south from the town center and is near the Mau Forest, which has become a global issue on environment.\r\nThe main economic activities is agro-based industries including vegetable and milk processing, large scale wheat and barley farming. Light manufacturing industries such as timber milling, canning and quarrying are also a mainstay of the local economy. The economic growth of the town has been hastened due to its proximity to the constituency capital, Nakuru.\r\nNjoro is a cosmopolitan area which has continued to attract immigration from outlying counties specifically due to its relative peace and rich agricultural potential.', 'images/bursary.jpg', 'images2/njoro.JPG', 'images2/njoromap.JPG', 'images2/charity.JPG', 'HON. CHARITY KATHAMBI', 'Hon. Charity Kathambi Chepkwony is the first female member of parliament for Njoro Constituency. She made her debut in politics running for parliament in Njoro in 2013, where she finished second. As a young mother in an inter-ethnic marriage, this was definitely no average feat. All manner of propaganda was thrown her way as questions were raised about her age, gender and ethnic background. Resources were also a challenge as she was running against male candidates with serious financial muscle. ', 'images2/user.png', 'MR.MAALIM', 'MD.SUSAN', 'MR.KIPTANUI', 'MRS.AISHA CHELAGAT', 'DR.MUCHEMI', 'MD.EVERLYN', 'MRS.CAREN', 'MR. KIMANI', 'MS.ROSE', 'MR.WAFULA', 'MS.CATHERINE', 'FY 2022/2023 KSH 200 MILLION', 'REPORT ON THE USAGE OF ALLOCATED AMOUNT FY 2022/23', 'A GUIDE ON USE OF THE SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `consadmin`
--

CREATE TABLE `consadmin` (
  `id` int(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `constituencyNumber` int(100) NOT NULL,
  `idnumber` int(255) NOT NULL,
  `constituencyName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consadmin`
--

INSERT INTO `consadmin` (`id`, `password`, `usertype`, `email`, `firstname`, `lastname`, `constituencyNumber`, `idnumber`, `constituencyName`) VALUES
(1, '$2y$10$cDvphzdH6Fh4J30P60uDLOTEFpWPuuiWkzYiCfb292vKDQRjb80N6', 'consadmin', 'cons@consadmin.com', 'cons', 'admin', 5, 55555555, 'Kibwezi West'),
(2, '$2y$10$cDvphzdH6Fh4J30P60uDLOTEFpWPuuiWkzYiCfb292vKDQRjb80N6', 'consadmin', 'cons7@consadmin.com', 'cons7', 'consadmin', 7, 77777777, 'Njoro');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `constituencyNumber` int(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `constituencyNumber`, `phone`, `email`) VALUES
(1, 5, '+254 70 123 456', 'kbziwest@gmail.com'),
(2, 7, '07000000009', 'ngcdfnjoro@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `message`, `email`, `created_at`) VALUES
(21, 'rtyuiop[poiuytr', 'abdumoh@gmail.com', '2024-03-22 12:51:46'),
(24, 'System too slow', 'sam@gmail.com', '2024-04-23 10:06:12'),
(26, 'System too slow', 'sam@gmail.com', '2024-04-23 10:07:13'),
(27, 'System too slow', 'sam@gmail.com', '2024-04-23 10:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `job_applied_for` varchar(100) NOT NULL,
  `constituency_name` varchar(100) NOT NULL,
  `resume_file_name` varchar(255) NOT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `idnumber` int(255) NOT NULL,
  `application_letter` varchar(255) NOT NULL,
  `constituencyNumber` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `full_name`, `email`, `phone`, `job_applied_for`, `constituency_name`, `resume_file_name`, `application_date`, `idnumber`, `application_letter`, `constituencyNumber`) VALUES
(8, 'KIMINDU PETER', 'jj@yahoo.com', '0741999159', 'ict', 'kibwezi', 'Applicant_details (2).pdf', '2024-04-24 03:42:26', 12121212, 'Applicant_details (2).pdf', 5),
(4, 'ascv', 'ascv@gmail.com', '0712332112', 'ict', 'Njoro', 'Attendance list.docx', '2024-03-29 19:50:25', 34554321, 'CERT AJIRA.xlsx', 7),
(7, 'KIMINDU PETER', 'peterkimindu2@gmail.com', '0741999159', 'ict', 'kibwezi', 'Exam Cards.pdf', '2024-04-02 13:43:07', 38963074, 'DOCTORS DATA FLOW DIAGRAM (2).docx', 5),
(2, 'KIMINDU PETER', 'abdumoh@gmail.com', '0741999159', 'ict', 'kibwezi', 'Applicant_details.pdf', '2024-03-09 12:16:20', 76541321, 'bursary_application.txt', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notification` varchar(255) NOT NULL,
  `constituencyNumber` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notification`, `constituencyNumber`) VALUES
('Bursary Applications ends on 21th April', 5),
('Bursary Applications ends on 24th April', 7);

-- --------------------------------------------------------

--
-- Table structure for table `overall`
--

CREATE TABLE `overall` (
  `id` int(255) NOT NULL,
  `hoover-text` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `mission` text NOT NULL,
  `implement` text NOT NULL,
  `objectives` text NOT NULL,
  `cdfprojects` text NOT NULL,
  `kasarani` text NOT NULL,
  `webuye` text NOT NULL,
  `bursary` text NOT NULL,
  `kapsowar` text NOT NULL,
  `news` text NOT NULL,
  `kabete` text NOT NULL,
  `board` text NOT NULL,
  `harambee` text NOT NULL,
  `boxno` text NOT NULL,
  `ngcdfno` text NOT NULL,
  `abtproj1` text NOT NULL,
  `abtproj2` text NOT NULL,
  `abtproj3` text NOT NULL,
  `abtproj4` text NOT NULL,
  `empowerment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overall`
--

INSERT INTO `overall` (`id`, `hoover-text`, `about`, `mission`, `implement`, `objectives`, `cdfprojects`, `kasarani`, `webuye`, `bursary`, `kapsowar`, `news`, `kabete`, `board`, `harambee`, `boxno`, `ngcdfno`, `abtproj1`, `abtproj2`, `abtproj3`, `abtproj4`, `empowerment`) VALUES
(1, 'SOME OF THE CDF PROJECTS!', 'The National Government Constituencies Development Fund (NG-CDF) formerly Constituencies Development Fund (CDF), is a fund established in 2003 through an Act of Parliament, the CDF Act 2003.<br> The Act was later reviewed by the CDF (Amendment) Act 2007, and repealed by CDF Act, 2013 which was subsequently succeeded by the current NG-CDF (Amendment) Act 2016.The Fund is domiciled within the ministry in charge of national economic policy and planning, currently the Ministry of Devolution and Planning.The main purpose of the Fund is to enhance infrastructural and socio-economic development at the grass root level in order to reduce poverty by dedicating a minimum of two and half per cent (2.5%) of all National Government’s share of annual revenue towards community projects identified at constituency level by the communities', 'Mission <br>To provide leadership and policy direction in optimal utilization of devolved funds for equitable development and poverty reduction at community level.<br><br>Vision <br>To be the leading institution in the efficient management of devolved funds.<br><br>Core Values<br>In an endeavor to professional execute its mandate, and achieve its vision and mission, the constituency shall uphold following core value;<br><br> Result oriented <br>Transparency<br>Team work<br>Equity<br> CommitmentExcellence in service.', 'The National Treasury and Planning.<br>NG-CDF Board is a fully fledged parastatal under the State Department responsible for National Economic Policy, Planning & Development under the National Treasury thus reports to the Cabinet Secretary who in turn reports to Parliament on matters touching on NG-CDF.<br><br>2.NG-CDF Board Functions:<br>To ensure timely and efficient disbursement of funds to every constituency <br>To ensure efficient management of the Fund <br>To consider project proposals submitted from various constituencies in accordance with the Act, approve for funding those project proposals that are consistent with the Act and send Funds to the respective constituency fund account of the approved projects<br>Co-ordinate the implementation of projects at the inter-constituency level<br><br>3.NG-CDF Committees Functions:<br>To prioritize and approve all project proposals from all wards in the constituency and any other projects which the Constituency Development Fund Committee consider beneficial to the constituency<br>Consult with the relevant government departments to ensure that the cost estimates for the projects are as realistic as possible.<br>Rank project proposals in order of priority provided that ongoing projects shall take precedence.<br>Ensure preparation of reports and financial statements and submission to the Board.<br>Ensure that projects proposed for funding comply with the Act.<br><br>4.Project Management Committees Functions:<br>To implement projects with the assistance of the relevant Government department.<br>To be in charge of sustenance of CDF financed projects after completion.<br>To prepare project work plan and budget.<br>To prepare documents e.g. drawings and designs , Bills of Quantity', 'The National Government Constituencies Development Fund (NGCDF) is established under the NG-CDF Act, 2015 as amended in 2016. The main purpose of the Fund is to address socio-economic development of the people at the constituency level in order to reduce poverty and enhance regional equity.<br> <br>With two of its main pillars based on the <h3> 1. Education  & Security Sectors.<br>2. National development.', 'The Constituency Development Fund (CDF) in Kenya, established through the CDF Act of 2003, aims to foster grassroots community development. Governed by the National Government Constituencies Development Fund (NG-CDF) Board, CDF projects are community-driven initiatives funded by the national government and allocated to constituencies based on population and development needs. Projects span various categories such as education, health, infrastructure, and social welfare. With an emphasis on transparency and accountability, CDF projects involve collaboration among the NG-CDF Board, local administration, and community members. While contributing to significant development, challenges include equitable fund distribution and the need for continuous improvement in project management.<br><br> <H6> TO KNOW MORE ABOUT VARIOUS PROJECTS LOG INTO YOUR CONSTITUENCY PAGE OR VISIT ON CONSTITUENCIES PAGE AS WELL.', 'images/65f2cdf3714ae_kasarani.jpg', 'images/65f2cc2358f72_webuye.jpeg', 'The Constituency Development Fund (CDF) Bursaries in Kenya are part of the broader CDF program, aiming to support students facing financial challenges in pursuing their education.<br> Students apply during specified periods, and the selection process considers academic performance and financial need. <br>The funds cover various educational expenses, and transparency and accountability are emphasized. Challenges may include ensuring fair distribution.<br> For the latest information, it\'s advisable to check with official government sources or local constituency offices.', 'images/65f2ce68370b7_kapsowar.jpg', 'Emerging Issues and Trends Related to Ng-cdf1.Amendment of NG-CDF in Kenyan Constitution</h3><p>The National Government Constituencies Development Fund (Amendment) Bill (National Assembly Bill No. 13 of 2023) was published on April 24, 2023.</p><h3>2.Release of 2023/24 FUNDS </h3><h3>3.Public participation on perfomance Schedule<br></h3><h3>4.Job Vacancies', 'images/65f2c7abf2c13_kabete.jpg', 'images/65f2c8e175389_board.jpeg', 'Harambee House Building<br>&nbsp &nbsp Haile Selassie Avenue   ', '&nbsp P.o Box 12342<br> &nbsp &nbsp &nbsp Nairobi Kenya', '&nbsp +254 712 345678', 'WEBUYE TVET WEBUYE EAST CONSTITUENCY', 'NG-CDF NATIONAL TOURNAMENT', 'KABETE VETERINARY LAB AT WESTLANDS CONSTITUENCY', 'WOMEN EMPOWERMENT AT KIBWEZI WEST CONSTITUENCY', 'images/65f2c814495a7_kbzwst.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `page_logs`
--

CREATE TABLE `page_logs` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ip` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `page_visited` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_logs`
--

INSERT INTO `page_logs` (`id`, `timestamp`, `user_ip`, `user_agent`, `page_visited`) VALUES
(2140, '2024-04-23 12:02:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2141, '2024-04-23 12:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2142, '2024-04-23 12:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2143, '2024-04-23 12:03:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2144, '2024-04-23 12:03:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2145, '2024-04-23 12:05:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2146, '2024-04-23 12:05:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2147, '2024-04-23 12:06:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2148, '2024-04-23 12:06:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2149, '2024-04-23 12:22:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2150, '2024-04-23 12:22:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2151, '2024-04-23 12:25:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2152, '2024-04-23 12:25:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2153, '2024-04-23 12:25:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2154, '2024-04-23 12:25:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2155, '2024-04-23 15:18:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2156, '2024-04-23 15:18:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2157, '2024-04-23 15:31:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2158, '2024-04-23 15:31:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2159, '2024-04-23 15:33:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2160, '2024-04-23 15:33:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2161, '2024-04-23 16:22:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2162, '2024-04-23 16:22:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2163, '2024-04-23 16:23:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2164, '2024-04-23 16:23:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2165, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2166, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2167, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2168, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2169, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2170, '2024-04-23 16:24:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2171, '2024-04-23 16:40:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2172, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2173, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2174, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2175, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2176, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2177, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2178, '2024-04-23 16:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2179, '2024-04-23 16:46:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2180, '2024-04-23 16:46:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2181, '2024-04-23 16:48:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2182, '2024-04-23 16:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2183, '2024-04-23 16:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2184, '2024-04-23 16:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2185, '2024-04-23 16:49:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2186, '2024-04-23 16:49:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2187, '2024-04-23 16:49:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2188, '2024-04-23 16:49:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2189, '2024-04-23 16:49:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2190, '2024-04-23 16:49:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2191, '2024-04-23 16:49:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2192, '2024-04-23 16:49:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2193, '2024-04-23 19:04:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2194, '2024-04-23 19:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2195, '2024-04-23 19:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2196, '2024-04-23 19:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2197, '2024-04-23 19:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2198, '2024-04-23 19:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2199, '2024-04-23 19:07:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2200, '2024-04-23 19:07:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2201, '2024-04-23 19:07:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2202, '2024-04-23 19:07:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2203, '2024-04-23 19:09:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2204, '2024-04-23 19:09:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2205, '2024-04-23 19:09:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2206, '2024-04-23 19:09:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2207, '2024-04-23 19:09:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2208, '2024-04-23 19:09:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2209, '2024-04-23 19:09:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2210, '2024-04-23 19:09:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2211, '2024-04-23 19:19:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2212, '2024-04-23 19:19:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2213, '2024-04-23 19:19:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2214, '2024-04-23 19:19:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2215, '2024-04-23 19:19:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2216, '2024-04-23 19:19:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2217, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2218, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2219, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2220, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2221, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2222, '2024-04-23 19:22:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2223, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2224, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2225, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2226, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2227, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2228, '2024-04-23 19:25:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2229, '2024-04-23 19:27:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2230, '2024-04-23 19:27:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2231, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2232, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2233, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2234, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2235, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2236, '2024-04-23 19:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2237, '2024-04-23 19:28:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2238, '2024-04-23 19:28:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2239, '2024-04-23 19:32:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2240, '2024-04-23 19:32:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2241, '2024-04-23 19:32:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2242, '2024-04-23 19:32:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2243, '2024-04-23 19:32:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2244, '2024-04-23 19:32:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2245, '2024-04-23 19:33:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2246, '2024-04-23 19:33:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2247, '2024-04-23 19:33:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2248, '2024-04-23 19:33:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2249, '2024-04-23 19:33:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2250, '2024-04-23 19:33:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2251, '2024-04-23 19:33:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2252, '2024-04-23 19:33:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2253, '2024-04-23 19:33:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2254, '2024-04-23 19:42:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2255, '2024-04-23 19:42:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2256, '2024-04-23 19:42:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2257, '2024-04-23 19:42:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2258, '2024-04-23 19:42:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2259, '2024-04-23 19:42:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2260, '2024-04-23 19:42:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2261, '2024-04-23 19:42:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2262, '2024-04-23 19:44:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2263, '2024-04-23 19:44:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2264, '2024-04-23 19:44:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2265, '2024-04-23 19:44:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2266, '2024-04-23 19:44:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2267, '2024-04-23 19:44:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2268, '2024-04-23 19:46:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2269, '2024-04-23 19:46:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2270, '2024-04-23 19:46:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2271, '2024-04-23 19:46:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2272, '2024-04-23 19:48:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2273, '2024-04-23 19:48:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2274, '2024-04-23 19:49:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2275, '2024-04-23 19:49:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2276, '2024-04-23 19:49:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2277, '2024-04-23 19:49:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2278, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2279, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2280, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2281, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2282, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2283, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2284, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2285, '2024-04-23 19:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2286, '2024-04-23 19:49:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2287, '2024-04-23 19:49:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2288, '2024-04-23 19:49:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2289, '2024-04-23 19:49:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2290, '2024-04-23 19:50:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2291, '2024-04-23 19:50:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2292, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2293, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2294, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2295, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2296, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2297, '2024-04-23 19:50:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2298, '2024-04-23 19:50:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2299, '2024-04-23 19:50:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2300, '2024-04-23 19:50:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2301, '2024-04-23 19:50:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2302, '2024-04-23 19:51:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2303, '2024-04-23 19:51:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2304, '2024-04-23 19:51:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2305, '2024-04-23 19:51:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2306, '2024-04-24 02:16:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2307, '2024-04-24 02:16:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2308, '2024-04-24 02:16:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2309, '2024-04-24 02:16:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2310, '2024-04-24 02:16:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2311, '2024-04-24 02:16:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2312, '2024-04-24 03:04:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2313, '2024-04-24 03:04:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2314, '2024-04-24 03:05:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2315, '2024-04-24 03:05:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2316, '2024-04-24 06:15:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2317, '2024-04-24 06:15:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2318, '2024-04-24 07:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2319, '2024-04-24 07:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2320, '2024-04-24 07:05:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2321, '2024-04-24 07:05:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2322, '2024-04-24 07:06:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2323, '2024-04-24 07:06:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2324, '2024-04-24 07:06:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2325, '2024-04-24 07:06:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2326, '2024-04-24 07:06:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2327, '2024-04-24 07:06:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2328, '2024-04-24 07:07:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2329, '2024-04-24 07:07:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2330, '2024-04-24 07:08:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2331, '2024-04-24 07:08:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2332, '2024-04-24 07:36:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2333, '2024-04-24 07:36:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2334, '2024-04-24 07:36:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2335, '2024-04-24 07:36:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2336, '2024-04-24 07:40:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2337, '2024-04-24 07:40:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2338, '2024-04-24 07:41:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2339, '2024-04-24 07:41:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2340, '2024-04-24 07:50:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2341, '2024-04-24 07:50:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2342, '2024-04-24 08:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2343, '2024-04-24 08:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2344, '2024-04-29 10:48:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2345, '2024-04-29 10:48:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2346, '2024-04-29 11:01:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2347, '2024-04-29 11:01:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2348, '2024-04-29 11:01:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2349, '2024-04-29 11:01:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2350, '2024-04-29 11:03:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2351, '2024-04-29 11:03:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2352, '2024-04-29 11:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2353, '2024-04-29 11:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2354, '2024-04-29 11:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2355, '2024-04-29 11:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2356, '2024-04-29 11:05:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2357, '2024-04-29 11:05:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2358, '2024-04-29 11:05:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2359, '2024-04-29 11:05:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2360, '2024-04-29 11:05:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2361, '2024-04-29 11:05:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2362, '2024-04-29 11:08:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2363, '2024-04-29 11:08:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2364, '2024-04-29 11:08:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2365, '2024-04-29 11:08:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2366, '2024-04-29 11:08:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2367, '2024-04-29 11:08:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2368, '2024-04-30 08:15:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2369, '2024-04-30 08:15:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2370, '2024-04-30 08:23:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2371, '2024-04-30 08:23:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2372, '2024-05-02 12:45:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2373, '2024-05-02 12:45:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2374, '2024-05-02 12:48:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2375, '2024-05-02 12:48:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2376, '2024-05-02 12:48:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2377, '2024-05-02 12:48:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2378, '2024-05-02 12:48:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2379, '2024-05-02 12:48:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2380, '2024-05-02 12:53:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2381, '2024-05-02 12:53:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2382, '2024-05-02 12:54:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2383, '2024-05-02 12:54:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2384, '2024-05-02 12:55:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2385, '2024-05-02 12:55:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2386, '2024-05-02 12:57:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2387, '2024-05-02 12:57:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2388, '2024-05-02 12:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2389, '2024-05-02 12:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2390, '2024-05-02 13:27:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2391, '2024-05-02 13:27:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2392, '2024-05-02 13:28:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2393, '2024-05-02 13:28:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2394, '2024-05-02 13:28:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2395, '2024-05-02 13:28:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2396, '2024-05-02 13:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2397, '2024-05-02 13:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2398, '2024-05-02 13:38:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2399, '2024-05-02 13:38:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2400, '2024-05-02 13:38:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2401, '2024-05-02 13:38:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2402, '2024-05-02 13:38:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2403, '2024-05-02 13:38:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2404, '2024-05-02 13:40:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2405, '2024-05-02 13:40:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2406, '2024-05-02 13:43:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2407, '2024-05-02 13:43:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2408, '2024-05-02 13:43:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2409, '2024-05-02 13:43:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2410, '2024-05-03 10:14:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2411, '2024-05-03 10:14:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php');
INSERT INTO `page_logs` (`id`, `timestamp`, `user_ip`, `user_agent`, `page_visited`) VALUES
(2412, '2024-05-03 11:05:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2413, '2024-05-03 11:05:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2414, '2024-05-03 11:05:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2415, '2024-05-03 11:05:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2416, '2024-05-03 11:06:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2417, '2024-05-03 11:06:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2418, '2024-05-03 11:22:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2419, '2024-05-03 11:22:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2420, '2024-05-04 11:52:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2421, '2024-05-04 11:52:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2422, '2024-05-04 11:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2423, '2024-05-04 11:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2424, '2024-05-04 11:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2425, '2024-05-04 11:57:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2426, '2024-05-04 11:57:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2427, '2024-05-04 11:57:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2428, '2024-05-04 12:19:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2429, '2024-05-04 12:19:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2430, '2024-05-04 12:24:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2431, '2024-05-04 12:24:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2432, '2024-05-04 12:31:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2433, '2024-05-04 12:31:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2434, '2024-05-08 14:33:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2435, '2024-05-08 14:33:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2436, '2024-05-08 14:34:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2437, '2024-05-08 14:34:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2438, '2024-05-08 14:34:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2439, '2024-05-08 14:34:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2440, '2024-05-08 14:34:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2441, '2024-05-08 14:34:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2442, '2024-05-09 11:29:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2443, '2024-05-09 11:29:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2444, '2024-05-09 11:29:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2445, '2024-05-09 11:29:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2446, '2024-05-09 11:30:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2447, '2024-05-09 11:30:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2448, '2024-05-09 15:43:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2449, '2024-05-09 15:43:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2450, '2024-05-14 09:01:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2451, '2024-05-14 09:01:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2452, '2024-05-14 09:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2453, '2024-05-14 09:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2454, '2024-05-14 09:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2455, '2024-05-14 09:02:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2456, '2024-05-14 12:48:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2457, '2024-05-14 12:48:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2458, '2024-05-14 12:56:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2459, '2024-05-14 12:56:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2460, '2024-05-14 12:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2461, '2024-05-14 12:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2462, '2024-05-14 12:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2463, '2024-05-14 12:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2464, '2024-05-14 13:00:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2465, '2024-05-14 13:00:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2466, '2024-05-14 13:00:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2467, '2024-05-14 13:00:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2468, '2024-05-16 07:42:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2469, '2024-05-16 07:42:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2470, '2024-05-16 08:11:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2471, '2024-05-16 08:11:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2472, '2024-05-16 08:11:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2473, '2024-05-16 08:11:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2474, '2024-05-16 08:49:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2475, '2024-05-16 08:49:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2476, '2024-05-16 08:49:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2477, '2024-05-16 08:49:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2478, '2024-05-16 08:50:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2479, '2024-05-16 08:50:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2480, '2024-05-16 08:56:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2481, '2024-05-16 08:56:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2482, '2024-05-16 08:57:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php'),
(2483, '2024-05-16 08:57:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '/Comp493/indexpage/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `constituencyNumber` int(100) NOT NULL,
  `projimg1` text NOT NULL,
  `summary1` text NOT NULL,
  `status1` text NOT NULL,
  `start1` text NOT NULL,
  `complete1` text NOT NULL,
  `amount1` text NOT NULL,
  `ward` varchar(255) NOT NULL,
  `usedamount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `constituencyNumber`, `projimg1`, `summary1`, `status1`, `start1`, `complete1`, `amount1`, `ward`, `usedamount`) VALUES
(1, 5, 'images2/kmtcproj.JPG', 'CONSTRUCTION OF MAKINDU KMTC ADMINISTRATION BLOCK.', 'COMPLETED', '01/02/2023', '22/12/2023', '7,000,000.00', 'MAKINDU', '6,950,000'),
(2, 7, 'images2/Njoro police.JPG', 'RENOVATION OF NJORO POLICE STATION', 'COMPLETED', '06/06/2023', '09/12/2023', '1,350,000.00', 'MAUCHE', '0'),
(3, 7, 'images2/borehole.JPG', 'MAUCHE BOREHOLE DRILLING AND SOLAR INSTALLATION.', 'ON-PROGRESS', '02-12-2023', 'NOT YET', '2,300,000.00', 'KIHINGO', 'ON-PROGRESS'),
(4, 5, 'images2/mikuyuni.JPG', 'CONSTRUCTION OF MIKUYUNI DISPENSARY', 'COMPLETED', '02/02/2023', '13/12/2023', '4,500,000.00', 'KIBWEZI', '4,450,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `subcounties`
--

CREATE TABLE `subcounties` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `constituencyNumber` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcounties`
--

INSERT INTO `subcounties` (`id`, `name`, `constituencyNumber`) VALUES
(1, 'Makindu', 5),
(2, 'Kibwezi', 5),
(3, 'Njoro', 7),
(4, 'Egerton', 7),
(5, 'EMALI', 5),
(6, 'Mauche', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` int(255) NOT NULL,
  `constituencyNumber` int(255) NOT NULL,
  `tender1des` text NOT NULL,
  `tender1` text NOT NULL,
  `tender2des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `constituencyNumber`, `tender1des`, `tender1`, `tender2des`) VALUES
(1, 5, 'tenders/tender.pdf', 'Tender for Construction of Makindu Boys High School', 'tenders/USER MANUAL.pdf'),
(2, 7, 'tenders/tender.pdf', 'Tender for Njoro Town Street lights set up.', ''),
(3, 5, 'tenders/tender.pdf', 'Tender for Construction of Makindu kmtc Administration Block', ''),
(4, 5, 'tenders/tender.pdf', 'Tender for Construction of Mikuyuni dispensary', ''),
(5, 5, 'tenders/tender.pdf', 'Tender for Construction of Advanced Makindu Market Shade', ''),
(6, 7, 'tenders/tender.pdf', 'Tender for Construction of Class rooms at Njoro mixed High school', ''),
(7, 7, 'tenders/tender.pdf', 'Tender for Construction of Mauche borehole', ''),
(8, 7, 'tenders/tender.pdf', 'Tender for Construction of Kihingo Market Shed', '');

-- --------------------------------------------------------

--
-- Table structure for table `tender_applications`
--

CREATE TABLE `tender_applications` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `company` varchar(100) NOT NULL,
  `tender_name` varchar(100) NOT NULL,
  `constituency` varchar(100) NOT NULL,
  `kra_pin` varchar(255) NOT NULL,
  `business_registration` varchar(255) NOT NULL,
  `application_letter` varchar(255) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `constituencyNumber` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_applications`
--

INSERT INTO `tender_applications` (`id`, `fullname`, `email`, `phone`, `company`, `tender_name`, `constituency`, `kra_pin`, `business_registration`, `application_letter`, `submission_date`, `constituencyNumber`) VALUES
(10, 'KIMINDU PETER', 'peterkimindu2@gmail.com', '0741999159', 'HOSCON', 'FOUNDATION', 'kibwezi', 'Case Study.pdf', 'comp 436  assignment.docx', 'ATTACHMENT APPLICATION LETTER.pdf', '2024-04-03 08:38:45', 5),
(11, 'KIMINDU PETER', 'abdumoh@gmail.com', '0741999159', 'HOSCON', 'FOUNDATION', 'kibwezi', 'Bursary Applications.pdf', 'tender (3).pdf', 'tender (3).pdf', '2024-04-24 03:43:17', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `idnumber` int(10) NOT NULL,
  `constituencyNumber` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(50) NOT NULL DEFAULT 'user',
  `id` int(10) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `email`, `idnumber`, `constituencyNumber`, `password`, `usertype`, `id`, `status`) VALUES
('werty', 'sdfgh', '', 0, '0', '$2y$10$NiTUa7rgsmWFdV34QrStnuCw2ApBK/7uKdrtZ2jfOf8..zeeXm4xK', 'user', 25, 'active'),
('jessica', 'PETER', 'jesica@yahoo.com', 4555678, '6', '$2y$10$nXdYgzWm9RGanXV85PccbOcvf2arbdCei6cM9yFc5QGZ5SwAxqDB.', 'user', 21, 'active'),
('peter', 'kemei', 'peterkem@gmail.com', 7802351, '5', '$2y$10$1cK9sKIvZ5bN8cI0eYi22uEdYFCqFRCPYn6J.FZhusBqJ/KPe7tiS', 'user', 27, 'active'),
('ABDUL', 'MOHA', 'abdumoh@gmail.com', 11111111, '7', '$2y$10$cDvphzdH6Fh4J30P60uDLOTEFpWPuuiWkzYiCfb292vKDQRjb80N6', 'user', 2, 'active'),
('EMANUEL ', 'PETER', 'peterkimindu2@gmail.com', 12345678, '5', '$2y$10$5e9s51vfV5VKLp8F7p8GIe/pCOZHbGOFimg9v1ZyyMzsoIc0LJnhy', 'user', 8, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(255) NOT NULL,
  `constituencyNumber` int(255) NOT NULL,
  `vacancy1` varchar(255) NOT NULL,
  `jobrequirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`id`, `constituencyNumber`, `vacancy1`, `jobrequirements`) VALUES
(1, 5, 'Security Officer', 'tenders/tender.pdf'),
(3, 7, 'Office secretary', 'tenders/tender.pdf'),
(5, 5, 'Project Manager', 'tenders/tender.pdf'),
(7, 7, 'Ict Officer', 'tenders/tender.pdf'),
(12, 5, 'chaircdf', '../uploads/greekalphabet.docx');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `constituencyNumber` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `name`, `constituencyNumber`) VALUES
(1, 'Makindu', 5),
(2, 'Kiboko', 5),
(3, 'Emali', 5),
(4, 'Nzaui', 5),
(5, 'Twaandu', 5),
(6, 'kibwezi', 5),
(7, 'Nguumo', 5),
(8, 'Egerton', 7),
(8, 'Kihingo', 7),
(9, 'Mauche', 7),
(10, 'Nesuit', 7),
(11, 'Lari', 7),
(12, 'Ngata', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bursaryapplications`
--
ALTER TABLE `bursaryapplications`
  ADD PRIMARY KEY (`registrationnumber`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conhelp`
--
ALTER TABLE `conhelp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cons`
--
ALTER TABLE `cons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consadmin`
--
ALTER TABLE `consadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`idnumber`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`constituencyNumber`);

--
-- Indexes for table `overall`
--
ALTER TABLE `overall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_logs`
--
ALTER TABLE `page_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcounties`
--
ALTER TABLE `subcounties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_applications`
--
ALTER TABLE `tender_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idnumber`),
  ADD UNIQUE KEY `UNIQUE` (`id`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bursaryapplications`
--
ALTER TABLE `bursaryapplications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conhelp`
--
ALTER TABLE `conhelp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cons`
--
ALTER TABLE `cons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `consadmin`
--
ALTER TABLE `consadmin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `constituencyNumber` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `overall`
--
ALTER TABLE `overall`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_logs`
--
ALTER TABLE `page_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2484;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcounties`
--
ALTER TABLE `subcounties`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tender_applications`
--
ALTER TABLE `tender_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
