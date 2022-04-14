-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 05:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(11, 'admin', '2020-12-21 08:37:51', 'Add Subject 1234'),
(12, 'admin', '2021-01-20 16:19:54', 'Add School Year 2019-2020'),
(13, 'admin', '2021-01-20 16:20:02', 'Add School Year 2020-2021'),
(14, 'admin', '2021-02-05 16:17:45', 'Add User Pk21452'),
(15, 'admin', '2021-02-05 16:18:08', 'Add User Anju0101'),
(16, 'admin', '2021-02-05 16:18:26', 'Add User GarimaRaj'),
(17, 'admin', '2021-02-06 22:21:20', 'Edit Subject TCT 301'),
(18, 'admin', '2021-02-06 22:23:37', 'Edit Subject TCT 302'),
(19, 'admin', '2021-02-06 22:28:13', 'Edit Subject TCT 306'),
(20, 'admin', '2021-02-06 22:28:52', 'Edit Subject TCT 203'),
(21, 'admin', '2021-02-06 22:30:02', 'Edit Subject TCT 428'),
(22, 'admin', '2021-02-06 22:30:23', 'Edit Subject TCT 304'),
(23, 'admin', '2021-02-06 22:34:41', 'Add Subject TCT 301'),
(24, 'admin', '2021-02-06 22:36:14', 'Add Subject TCT 304');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd'),
(33, 'admin/uploads/9854_File_Programming_practicals.pdf', '2021-02-07 11:09:37', 'chvdeicgfybch\r\ncjed', 20, 192, 'Pp');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, '3rd year(Computer  Engineering)'),
(26, '2nd Year (Computer Enginnering)'),
(27, '4rth  year(Computer Engineering)'),
(28, '3rd year(Civil Engineering)'),
(29, '4rth year(Civil Engineering)'),
(30, '2nd year(Civil Engineering)'),
(31, '	3rd year(Information Technology)'),
(32, '2nd year(Information Technology)'),
(33, '4rth year(Information Technology)'),
(34, '2nd year (Electronics & Communication Engineering)'),
(35, '3rd year(Electronics & Communication Engineering)'),
(36, '4rth year (Electronics & Communication Engineering)');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n'),
(2, 190, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:372px\">\r\n			<p><strong>Title of the course </strong></p>\r\n\r\n			<p><strong>No. of the Course </strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:336px\">\r\n			<p><strong>System Programming</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n			<p><strong>TCT-304</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:391px\">\r\n			<p><strong>Credits</strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:353px\">\r\n			<p><strong>3(2-0-2)</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:-7.1pt\">CATALOGUE DESCRIPTION</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Introduction, system software -definition, components of system software, evaluation of system software, introduction to software processors, assembly language&nbsp; &amp; machine language- 8086 languages-a review, Assemblers, Macros, Macroprocessors, Introduction to compilers, loaders &amp; linkage Editors, introduction to operating system, virtual memory concept.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Syllabus:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:637px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p><strong>Topics</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:42px; width:637px\">\r\n			<p>INTRODUCTION: System software definition, components of system software, evaluation of system software, model of computer system.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:66px; width:637px\">\r\n			<p>INTRODUCTION TO SOFTWARE PROCESSOR: Translators &amp; software processors.</p>\r\n\r\n			<p>ASSEMBLY LANGUAGE &amp; MACHINE LANGUAGE: A review of IBM 360/370 assembly language and 8086 assembly language.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:42px; width:637px\">\r\n			<p>ASSEMBLERS: Overview of Assembly process.&nbsp; Designs of Two pass assemblers. Single pass assemblers for IBM PC, Macros &amp; Macro processor, Table management, Sorting.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:87px; width:637px\">\r\n			<p>COMPILERS, LOADERS &amp; LINKAGE EDITORS: An Introduction to Compilers, Loaders and Linkage Editors, Loader Schemes - Compile &amp; Go loaders, General loader schemes, Absolute loaders, Relocating loaders, Direct linking loaders, Other loader schemes. Binders, linking loaders, overlays.&nbsp; Dynamic binders, design of absolute loader, design of direct linking loader, Sub routine linkages.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:43px; width:637px\">\r\n			<p>OPERATING SYSTEM: Introduction, Batch processing, Multi programming, time sharing system and design concepts of Operating system.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p>Laboratory Topics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p>Related practical aspects from Syllabus</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Text Books and References:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. System Programming by John J Donovan Mcgraw Hill Int</p>\r\n\r\n<p>2. System Programming &amp; operating system by DM Dhamdhare Tata Mcgraw Hill</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. System Programming by Beck(Wiley)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(4, 192, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:372px\">\r\n			<p><strong>Title of the course </strong></p>\r\n\r\n			<p><strong>&nbsp;No. of the Course</strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:336px\">\r\n			<p><strong>Programming Languages</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n			<p><strong>TCT-301</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:372px\">\r\n			<p style=\"margin-left:-6.75pt\"><strong>&nbsp; Credits</strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:336px\">\r\n			<p><strong>3(2-0-2)</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:-21.3pt\"><strong>Catalogue Description:</strong></p>\r\n\r\n<p style=\"margin-left:-22.5pt\">&nbsp;</p>\r\n\r\n<p>Programming languages, Describing syntax and semantics, Lexical and syntax analysis, Names, Binding, Type checking, scope, visibility&nbsp; and lifetime, Function call and return, implementation, recursive functions and activation records, Memory management, Introduction of imperative, functional, object oriented and logic programming.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:-21.3pt\"><strong>Syllabus:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p><strong>Topics</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p style=\"margin-left:.1in\">Programming languages: Preliminaries, history and evolution.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p style=\"margin-left:.1in\">Describing syntax and semantics: Backus &ndash; Naur Form (BNF), Extended BNF, syntax diagrams, parse trees, ambiguity, and unambiguous grammar.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p style=\"margin-left:.1in\">Lexical and syntax analysis: Lexical analysis, parsing (top-down, bottom-up, recursive-descent, LL and LR).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p style=\"margin-left:.1in\">Names, Binding, Type checking, scope, visibility and lifetime.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p style=\"margin-left:.1in\">Data types, expressions, statements and semantics.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21px; width:690px\">\r\n			<p>Function call and return, implementation, recursive functions and activation records.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p>Memory management: Heap, dynamic arrays and garbage collection.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p>Introduction of imperative, functional, object oriented and logic programming</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p>Properties, syntax and comparative study of selected programming languages:</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i. Procedural languages (C language)</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ii. Functional languages (Scheme, Haskell)</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; iii. Object-oriented languages (Java, C++)</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; iv. Declarative languages (Prolog)</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v. Latest languages (Python)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p>Concurrency and synchronization: Events, threads, message passing and locks.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:690px\">\r\n			<p>Exception handling.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Text Books</strong>:</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:744px\">\r\n			<p>1. Programming Languages Design &amp; Implementation by Terrance W. Pratt, PHI Pub</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:13px; width:744px\">\r\n			<p style=\"margin-left:12.6pt\">2. Programming Languages: Principles and Paradigms by Allen B. Tucker and Robert E. Noonan (TMH Pub)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:13px; width:744px\">\r\n			<p style=\"margin-left:12.6pt\">3. Concept of Programming Language by Sebesta (Addition Wesley Pub.)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:13px; width:744px\">\r\n			<p style=\"margin-left:12.6pt\">4. Programming Language by Ravi Sethi (Addition Wesley Pub.)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:13px; width:744px\">\r\n			<p style=\"margin-left:12.6pt\">5. Fundamentals of Programming Language by E. Horowitz (Galgotia Pub.)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<div class=\"manage-classroom-manage\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-grid flexible-content-columns gfe-grid--row-align-middle\" style=\"box-sizing: border-box; margin: 0px -20px; padding: 0px; display: flex; flex-wrap: wrap; -webkit-box-align: center !important; align-items: center !important;\">\r\n<div class=\"gfe-grid__col--span-12-sm gfe-grid__col--span-6-md gfe-grid__col--span-6-lg gfe-grid__col--span-6-xl gfe-mod-order-1 gfe-mod-order-2-sm gfe-mod-spacer-5-top-sm-only\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 20px; min-height: 1px; position: relative; width: 442.5px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; -webkit-box-ordinal-group: 2; order: 1;\">\r\n<div class=\"classroom-manage-classroom-manage\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-copy-intro gfe-mod-text- \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-head-intro \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<h2>Simplify teaching and learning</h2>\r\n</div>\r\n\r\n<ul>\r\n	<li>The teacher can create his/her Class</li>\r\n	<li>After creating a class the teacher &nbsp;View the students for that particular class</li>\r\n	<li>Upload Downloadable materials for his/her class</li>\r\n	<li>Grade students assignment&nbsp;</li>\r\n	<li>Post announcements</li>\r\n	<li>Message co-teacher or students</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"measure-classroom-measure\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-grid flexible-content-columns gfe-grid--row-align-middle\" style=\"box-sizing: border-box; margin: 0px -20px; padding: 0px; display: flex; flex-wrap: wrap; -webkit-box-align: center !important; align-items: center !important;\">\r\n<div class=\"gfe-grid__col--span-12-sm gfe-grid__col--span-6-md gfe-grid__col--span-6-lg gfe-grid__col--span-6-xl gfe-mod-spacer-5-top-sm-only\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 20px; min-height: 1px; position: relative; width: 442.5px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\">\r\n<div class=\"classroom-measure-classroom-measure\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-copy-intro gfe-mod-text- \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-head-intro \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<h2>Move students forward</h2>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Sign up for his / her account</li>\r\n	<li>Can view &nbsp;classmates in &nbsp;his / her class</li>\r\n	<li>View evaluation of assignment </li>\r\n	<li>Download &nbsp;downloadable materials in a class</li>\r\n	<li>Message a teacher or his/ her classmate</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(2, 'Vision', '<pre>\r\n<span style=\"font-size:16px\"><strong>Vision</strong></span></pre>\r\n\r\n<div class=\"manage-classroom-manage\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-grid flexible-content-columns gfe-grid--row-align-middle\" style=\"box-sizing: border-box; margin: 0px -20px; padding: 0px; display: flex; flex-wrap: wrap; -webkit-box-align: center !important; align-items: center !important;\">\r\n<div class=\"gfe-grid__col--span-12-sm gfe-grid__col--span-6-md gfe-grid__col--span-6-lg gfe-grid__col--span-6-xl gfe-mod-order-1 gfe-mod-order-2-sm gfe-mod-spacer-5-top-sm-only\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 20px; min-height: 1px; position: relative; width: 442.5px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; -webkit-box-ordinal-group: 2; order: 1;\">\r\n<div class=\"classroom-manage-classroom-manage\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-copy-intro gfe-mod-text- \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-head-intro \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<p>The modern learning management system often has built-in tools and resources that help administrators to develop course lessons, activities, and assessments. Administrators can assign new user credentials and schedule courses to be completed. They can also track learner progress with reporting features. A good LMS helps to make learning interesting, engaging learners so they take a more active role in their own development. An LMS should be simple to access and use in order to encourage learners to participate. The design of the LMS should be friendly in appearance and functionality -- based on user requirements.</p>\r\n\r\n<h3>The advantages of e-Learning Management System&nbsp;in any educational setting can include:</h3>\r\n\r\n<ul>\r\n	<li>Teachers can use established pedagogical models to deliver more personalized lessons and increase the engagement level of students</li>\r\n	<li>Students respond well to micro-learning and the E-LMS is a perfect platform for facilitating this format of learning</li>\r\n	<li>Students can learn on their own via computers, laptops, and mobile devices to keep learning alive 24/7</li>\r\n	<li>An LMS increases the flexibility and creativity of the learning materials, which enhances the student experience and encourages shared collaboration</li>\r\n	<li>Student progression through lessons and assessments becomes more self-driven -- tapping into the natural way humans learn</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"measure-classroom-measure\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-grid flexible-content-columns gfe-grid--row-align-middle\" style=\"box-sizing: border-box; margin: 0px -20px; padding: 0px; display: flex; flex-wrap: wrap; -webkit-box-align: center !important; align-items: center !important;\">\r\n<div class=\"gfe-grid__col--span-12-sm gfe-grid__col--span-6-md gfe-grid__col--span-6-lg gfe-grid__col--span-6-xl gfe-mod-spacer-5-top-sm-only\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 20px; min-height: 1px; position: relative; width: 442.5px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\">\r\n<div class=\"classroom-measure-classroom-measure\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-copy-intro gfe-mod-text- \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<div class=\"gfe-head-intro \" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n<h2>&nbsp;</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Jan, 2021 to june&nbsp;11, 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>feb 10, 2021&nbsp;to Feb&nbsp;15, 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>feb 16, 2021&nbsp;to June&nbsp;27, 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>March 27, 2021&nbsp;to April 8, 2021</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>April 8 , 2021&nbsp;to May 24, 2021</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>June 5, 2013 to October 11, 2013 &ndash; First Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 4, 2013 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with the Parents of the College&nbsp;Freshmen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>College Personnel General Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 6,7</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 10</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students by College/Campus/Department</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 19,20,21</p>\r\n			</td>\r\n			<td>\r\n			<p>Branch/Campus Visit for Administrative / Academic/Accreditation/ Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n			<p>June</p>\r\n			</td>\r\n			<td>\r\n			<p>Club Organizations (By Discipline/Programs)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Student Affiliation/Induction Programs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July</p>\r\n			</td>\r\n			<td>\r\n			<p>Nutrition Month (Sponsor: Laboratory School)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp; 8, 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 19</p>\r\n			</td>\r\n			<td>\r\n			<p>ArawngLahi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grade Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition Program (Dean&rsquo;s List)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 26</p>\r\n			</td>\r\n			<td>\r\n			<p>National Heroes Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 28, 29, 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Sports and Cultural Meet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>Nov. 4, 2013 to March 27, 2014 &ndash; Second Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 6, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>Classes Resume</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 9, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 29</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grades Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>February 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 6, 7</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Non-Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 17, 18, 19, 20, 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition / Graduation Rites</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 27</p>\r\n			</td>\r\n			<td>\r\n			<p>Last Day of Service for Faculty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service for SY 2014-2015</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>FLAG RAISING CEREMONY-TALISAY CAMPUS</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MONTHS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>UNIT-IN-CHARGE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June, Sept. and Dec. 2013, March 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>COE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July and October 2013, Jan. 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>SAS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August and November 2013, Feb. 2014</p>\r\n\r\n			<p>April and May 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>CIT</p>\r\n\r\n			<p>GASS</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<div><span style=\"font-size:13px\">Directorate of Experiment Station</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Directorate of Communication</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Extension Education</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Student Welfare</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Placement &amp; Counselling</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Directorate of Legal</span></div>\r\n\r\n<div><span style=\"font-size:13px\">Directorate of Publication</span></div>\r\n\r\n<div><span style=\"font-size:13px\">University Farm</span></div>\r\n</div>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>College Of Agriculture</li>\r\n	<li>College of Technology</li>\r\n	<li>College Of Home Science</li>\r\n	<li>College Of Fisheries</li>\r\n	<li>College Of Agribussiness Management</li>\r\n	<li>College of Basic Science and Humanties</li>\r\n	<li>College of Vaterinary &amp; Animal Science</li>\r\n	<li>College of Post Graduate studies&nbsp;</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(14, 'Civil Engineering', 'Dr. P.S.Mahar'),
(15, 'Electronics & Communication Engineering', 'Dr. Sanjay Mathur'),
(18, 'Computer Engineering', 'Dr.S.D.Samantaray'),
(19, 'Electrical Engineering', 'Dr. A.k.Swami'),
(20, 'Mechanical Engineering', 'Dr. Lokesh  Varshney'),
(21, 'Industrial & Production Engineering', 'Dr. Ajay'),
(22, 'Information technology', 'Dr. H.L Mandoria'),
(23, 'Farm Machinery & Power Engineering', 'Dr. T.P.Singh'),
(25, 'Iriigation & Drainage Engineering', 'Dr. Rajesh P. Singh'),
(26, 'Agribusiness and Rural Management', ''),
(27, 'Agriculutural  Communication', 'Dr. Neelam Bhardwaj');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020'),
(19, 'Semester start', 0, '02/15/2021', '02/20/2021'),
(20, 'Due date of assignment', 192, '02/15/2021', '02/16/2021');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(144, 'admin/uploads/8476_File_encryptile-01.png', '2021-02-07 11:08:34', 'download', 20, 192, 'Encrypt', 'SukhwinderSingh'),
(142, 'admin/uploads/1572_File_2848_File_sample.pdf', '2021-01-20 16:25:12', 'download', 20, 187, 'Sample', 'SukhwinderSingh'),
(143, 'admin/uploads/1311_File_62621693-course-lms-student-subscription-addon-license.pdf', '2021-01-20 17:05:28', 'please download for refference', 20, 187, 'assignement', 'SukhwinderSingh');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(31, 20, 'gbvf', '2021-02-07 11:16:39', 228, 'Sukhwinder Singh', 'Anjali Raj', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(16, 20, 'gbvf', '2021-02-07 11:16:39', 228, 'Sukhwinder Singh', 'Anjali Raj');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(27, 187, 'Add Assignment file name <b></b>', '2021-02-04 00:19:54', 'assignment_student.php'),
(28, 192, 'Add Downloadable Materials file name <b>Encrypt</b>', '2021-02-07 11:08:34', 'downloadable_student.php'),
(29, 192, 'Add Assignment file name <b>Pp</b>', '2021-02-07 11:09:37', 'assignment_student.php'),
(30, 192, 'Add Annoucements', '2021-02-07 11:10:17', 'announcements_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 220, 'yes', 25),
(7, 220, 'yes', 24),
(8, 228, 'yes', 27),
(10, 228, 'yes', 30),
(11, 228, 'yes', 29);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2019-2020'),
(5, '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(228, 'Anjali', 'Raj', 25, '549199', '1234567890', 'uploads/images (45).jpeg', 'Registered'),
(231, 'kinrul', 'ragvir', 25, '54918', '1234567890', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(234, 'Pransant', 'Kumar', 28, '54917', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(233, 'lms', 'el', 25, '12345', '1234567890', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(2, 33, 'admin/uploads/6489_File_Programming_practicals.docx', '2021-02-07 11:14:20', 'completed', 'assignement', 228, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(43, 'TCT 301', 'Programming Languge', '', '', 10, '', '5th'),
(44, 'TCT 304', 'System Programming', '', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:372px\">\r\n			<p><strong>Title of the course </strong></p>\r\n\r\n			<p><strong>No. of the Course </strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:336px\">\r\n			<p><strong>System Programming</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n			<p><strong>TCT-304</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:744px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:13px; width:391px\">\r\n			<p><strong>Credits</strong></p>\r\n			</td>\r\n			<td style=\"height:13px; width:353px\">\r\n			<p><strong>3(2-0-2)</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:-7.1pt\">CATALOGUE DESCRIPTION</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Introduction, system software -definition, components of system software, evaluation of system software, introduction to software processors, assembly language&nbsp; &amp; machine language- 8086 languages-a review, Assemblers, Macros, Macroprocessors, Introduction to compilers, loaders &amp; linkage Editors, introduction to operating system, virtual memory concept.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Syllabus:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:637px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p><strong>Topics</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:42px; width:637px\">\r\n			<p>INTRODUCTION: System software definition, components of system software, evaluation of system software, model of computer system.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:66px; width:637px\">\r\n			<p>INTRODUCTION TO SOFTWARE PROCESSOR: Translators &amp; software processors.</p>\r\n\r\n			<p>ASSEMBLY LANGUAGE &amp; MACHINE LANGUAGE: A review of IBM 360/370 assembly language and 8086 assembly language.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:42px; width:637px\">\r\n			<p>ASSEMBLERS: Overview of Assembly process.&nbsp; Designs of Two pass assemblers. Single pass assemblers for IBM PC, Macros &amp; Macro processor, Table management, Sorting.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:87px; width:637px\">\r\n			<p>COMPILERS, LOADERS &amp; LINKAGE EDITORS: An Introduction to Compilers, Loaders and Linkage Editors, Loader Schemes - Compile &amp; Go loaders, General loader schemes, Absolute loaders, Relocating loaders, Direct linking loaders, Other loader schemes. Binders, linking loaders, overlays.&nbsp; Dynamic binders, design of absolute loader, design of direct linking loader, Sub routine linkages.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:43px; width:637px\">\r\n			<p>OPERATING SYSTEM: Introduction, Batch processing, Multi programming, time sharing system and design concepts of Operating system.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p>Laboratory Topics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23px; width:637px\">\r\n			<p>Related practical aspects from Syllabus</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Text Books and References:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. System Programming by John J Donovan Mcgraw Hill Int</p>\r\n\r\n<p>2. System Programming &amp; operating system by DM Dhamdhare Tata Mcgraw Hill</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. System Programming by Beck(Wiley)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, '', '5th');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(34, '12345', '1234567890', 'Bupesh ', 'Singh', 26, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(20, 'Sukhwinder', '1234567890', 'Sukhwinder', 'Singh', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(28, '', '', 'Jalal', 'Sharma', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(27, 'TCT301', '1234567890', 'Rajeev ', 'Singh', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(26, 'Chetan', '1234567890', 'Chetan Singh', 'Negi', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(30, '', '', 'Sunita', 'Jalal', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(31, '', '', 'Pankaj ', 'Mishra', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(32, '', '', 'Deepak ', 'Kumar', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(33, '', '', 'Dr. S.D ', 'Samantray', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(35, '5678', '1234567890', 'S.D ', 'Samantray', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(188, 21, 25, 37, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(190, 15, 26, 44, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(192, 20, 25, 43, 'admin/uploads/thumbnails.jpg', '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00'),
(41, '<p>All Submit assignment timely.</p>\r\n', '20', 192, '2021-02-07 11:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(391, 190, 228, 15),
(392, 190, 231, 15),
(393, 192, 228, 20),
(394, 192, 231, 20),
(395, 192, 233, 20);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(18, 186, 'Submit Assignment file name <b>asdasd</b>', '2020-12-21 10:12:04', 'view_submit_assignment.php', 219, 31),
(19, 192, 'Submit Assignment file name <b>assignement</b>', '2021-02-07 11:14:20', 'view_submit_assignment.php', 228, 33);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin'),
(16, 'Pk21452', '7895674256', 'Priyanka ', 'Kumari'),
(17, 'Anju0101', '7895674256', 'Anjali ', 'Bisht'),
(18, 'GarimaRaj', '7895674256', 'Garima', 'Raj');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(84, 'Admin', '2020-12-21 08:32:51', '2021-02-09 09:57:32', 15),
(85, 'admin', '2020-12-21 08:48:23', '2021-02-09 09:57:32', 15),
(86, 'admin', '2021-01-20 07:59:14', '2021-02-09 09:57:32', 15),
(87, 'admin', '2021-01-20 09:52:16', '2021-02-09 09:57:32', 15),
(88, 'admin', '2021-01-20 11:37:40', '2021-02-09 09:57:32', 15),
(89, 'admin', '2021-01-20 15:49:40', '2021-02-09 09:57:32', 15),
(90, 'admin', '2021-01-20 16:16:19', '2021-02-09 09:57:32', 15),
(91, 'admin', '2021-01-20 21:27:34', '2021-02-09 09:57:32', 15),
(92, 'admin', '2021-01-20 21:30:52', '2021-02-09 09:57:32', 15),
(93, 'admin', '2021-01-21 09:02:17', '2021-02-09 09:57:32', 15),
(94, 'admin', '2021-01-21 09:24:47', '2021-02-09 09:57:32', 15),
(95, 'admin', '2021-01-21 09:48:20', '2021-02-09 09:57:32', 15),
(96, 'admin', '2021-01-21 10:46:00', '2021-02-09 09:57:32', 15),
(97, 'admin', '2021-01-21 10:51:25', '2021-02-09 09:57:32', 15),
(98, 'admin', '2021-01-21 11:58:35', '2021-02-09 09:57:32', 15),
(99, 'admin', '2021-01-21 12:03:21', '2021-02-09 09:57:32', 15),
(100, 'admin', '2021-01-24 23:09:24', '2021-02-09 09:57:32', 15),
(101, 'admin', '2021-01-25 15:42:45', '2021-02-09 09:57:32', 15),
(102, 'admin', '2021-01-25 16:43:58', '2021-02-09 09:57:32', 15),
(103, 'admin', '2021-01-25 16:45:45', '2021-02-09 09:57:32', 15),
(104, 'admin', '2021-01-25 16:54:15', '2021-02-09 09:57:32', 15),
(105, 'admin', '2021-01-25 16:55:13', '2021-02-09 09:57:32', 15),
(106, 'admin', '2021-01-25 23:19:11', '2021-02-09 09:57:32', 15),
(107, 'admin', '2021-01-26 00:36:11', '2021-02-09 09:57:32', 15),
(108, 'admin', '2021-01-26 00:39:49', '2021-02-09 09:57:32', 15),
(109, 'admin', '2021-01-26 00:42:01', '2021-02-09 09:57:32', 15),
(110, 'admin', '2021-01-29 13:12:27', '2021-02-09 09:57:32', 15),
(111, 'admin', '2021-01-29 13:31:37', '2021-02-09 09:57:32', 15),
(112, 'admin', '2021-01-29 13:57:14', '2021-02-09 09:57:32', 15),
(113, 'admin', '2021-01-29 14:04:39', '2021-02-09 09:57:32', 15),
(114, 'admin', '2021-01-29 16:03:35', '2021-02-09 09:57:32', 15),
(115, 'admin', '2021-01-30 13:35:34', '2021-02-09 09:57:32', 15),
(116, 'admin', '2021-01-30 23:36:07', '2021-02-09 09:57:32', 15),
(117, 'admin', '2021-02-02 18:36:30', '2021-02-09 09:57:32', 15),
(118, 'admin', '2021-02-02 18:43:32', '2021-02-09 09:57:32', 15),
(119, 'admin', '2021-02-02 19:21:33', '2021-02-09 09:57:32', 15),
(120, 'admin', '2021-02-02 20:20:24', '2021-02-09 09:57:32', 15),
(121, 'admin', '2021-02-02 20:22:51', '2021-02-09 09:57:32', 15),
(122, 'admin', '2021-02-02 20:38:59', '2021-02-09 09:57:32', 15),
(123, 'admin', '2021-02-02 20:59:42', '2021-02-09 09:57:32', 15),
(124, 'admin', '2021-02-02 21:17:06', '2021-02-09 09:57:32', 15),
(125, 'admin', '2021-02-02 21:57:33', '2021-02-09 09:57:32', 15),
(126, 'admin', '2021-02-02 22:07:03', '2021-02-09 09:57:32', 15),
(127, 'admin', '2021-02-02 22:37:21', '2021-02-09 09:57:32', 15),
(128, 'admin', '2021-02-03 00:08:39', '2021-02-09 09:57:32', 15),
(129, 'admin', '2021-02-03 10:31:00', '2021-02-09 09:57:32', 15),
(130, 'admin', '2021-02-03 10:36:06', '2021-02-09 09:57:32', 15),
(131, 'admin', '2021-02-03 11:40:37', '2021-02-09 09:57:32', 15),
(132, 'admin', '2021-02-03 11:45:59', '2021-02-09 09:57:32', 15),
(133, 'admin', '2021-02-03 19:24:56', '2021-02-09 09:57:32', 15),
(134, 'admin', '2021-02-03 23:59:05', '2021-02-09 09:57:32', 15),
(135, 'admin', '2021-02-04 00:00:42', '2021-02-09 09:57:32', 15),
(136, 'admin ', '2021-02-05 16:16:50', '2021-02-09 09:57:32', 15),
(137, 'pk21452', '2021-02-05 17:55:15', '', 16),
(138, 'admin', '2021-02-05 21:54:31', '2021-02-09 09:57:32', 15),
(139, 'admin', '2021-02-05 21:57:26', '2021-02-09 09:57:32', 15),
(140, 'ADMIN', '2021-02-05 22:21:55', '2021-02-09 09:57:32', 15),
(141, 'Admin', '2021-02-05 22:23:32', '2021-02-09 09:57:32', 15),
(142, 'Admin', '2021-02-05 22:23:57', '2021-02-09 09:57:32', 15),
(143, 'admin', '2021-02-05 23:00:50', '2021-02-09 09:57:32', 15),
(144, 'admin', '2021-02-06 02:01:58', '2021-02-09 09:57:32', 15),
(145, 'admin', '2021-02-06 21:55:43', '2021-02-09 09:57:32', 15),
(146, 'admin', '2021-02-06 22:22:28', '2021-02-09 09:57:32', 15),
(147, 'admin', '2021-02-06 22:32:20', '2021-02-09 09:57:32', 15),
(148, 'admin', '2021-02-06 22:46:12', '2021-02-09 09:57:32', 15),
(149, 'admin', '2021-02-07 15:26:12', '2021-02-09 09:57:32', 15),
(150, 'admin', '2021-02-08 15:35:08', '2021-02-09 09:57:32', 15),
(151, 'admin', '2021-02-08 20:49:52', '2021-02-09 09:57:32', 15),
(152, 'admin', '2021-02-09 02:28:14', '2021-02-09 09:57:32', 15),
(153, 'admin', '2021-02-09 02:46:07', '2021-02-09 09:57:32', 15),
(154, 'admin', '2021-02-09 09:38:52', '2021-02-09 09:57:32', 15),
(155, 'admin', '2021-02-09 09:52:16', '2021-02-09 09:57:32', 15),
(156, 'admin', '2021-02-09 11:38:32', '', 15),
(157, 'admin', '2021-02-09 11:47:51', '', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
