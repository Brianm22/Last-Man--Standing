-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2016 at 11:55 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE IF NOT EXISTS `league` (
  `LeagueID` int(11) NOT NULL,
  `LeagueName` varchar(20) NOT NULL,
  `LeagueKey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE IF NOT EXISTS `selection` (
  `SelectionID` int(11) NOT NULL,
  `UserLeagueID` int(11) NOT NULL COMMENT 'F_K',
  `TeamID` int(11) NOT NULL COMMENT 'F_K'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table 6`
--

CREATE TABLE IF NOT EXISTS `table 6` (
  `id` int(1) DEFAULT NULL,
  `tablePosition` int(2) DEFAULT NULL,
  `teamName` varchar(20) DEFAULT NULL,
  `overallPlayed` int(1) DEFAULT NULL,
  `overallWon` int(1) DEFAULT NULL,
  `overallDraw` int(1) DEFAULT NULL,
  `overallLoss` int(1) DEFAULT NULL,
  `overallGoalsScored` int(1) DEFAULT NULL,
  `overallGoalsConceded` int(1) DEFAULT NULL,
  `homeWon` int(1) DEFAULT NULL,
  `homeDraw` int(1) DEFAULT NULL,
  `homeLoss` int(1) DEFAULT NULL,
  `homeGoalsScored` int(1) DEFAULT NULL,
  `homeGoalsConceded` int(1) DEFAULT NULL,
  `awayWon` int(1) DEFAULT NULL,
  `awayDraw` int(1) DEFAULT NULL,
  `awayLoss` int(1) DEFAULT NULL,
  `awayGoalsScored` int(1) DEFAULT NULL,
  `awayGoalsConceded` int(1) DEFAULT NULL,
  `goalDif` int(2) DEFAULT NULL,
  `points` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 6`
--

INSERT INTO `table 6` (`id`, `tablePosition`, `teamName`, `overallPlayed`, `overallWon`, `overallDraw`, `overallLoss`, `overallGoalsScored`, `overallGoalsConceded`, `homeWon`, `homeDraw`, `homeLoss`, `homeGoalsScored`, `homeGoalsConceded`, `awayWon`, `awayDraw`, `awayLoss`, `awayGoalsScored`, `awayGoalsConceded`, `goalDif`, `points`) VALUES
(0, 19, 'AFC Bournemouth', 3, 0, 1, 2, 2, 5, 0, 0, 1, 1, 3, 0, 1, 1, 1, 2, -3, 1),
(0, 8, 'Arsenal', 3, 1, 1, 1, 6, 5, 0, 0, 1, 3, 4, 1, 1, 0, 3, 1, 1, 4),
(0, 13, 'Burnley', 3, 1, 0, 2, 2, 4, 1, 0, 1, 2, 1, 0, 0, 1, 0, 3, -2, 3),
(0, 2, 'Chelsea', 3, 3, 0, 0, 7, 2, 2, 0, 0, 5, 1, 1, 0, 0, 2, 1, 5, 9),
(0, 17, 'Crystal Palace', 3, 0, 1, 2, 1, 3, 0, 1, 1, 1, 2, 0, 0, 1, 0, 1, -2, 1),
(0, 4, 'Everton', 3, 2, 1, 0, 4, 2, 1, 1, 0, 2, 1, 1, 0, 0, 2, 1, 2, 7),
(0, 5, 'Hull City', 3, 2, 0, 1, 4, 2, 1, 0, 1, 2, 2, 1, 0, 0, 2, 0, 2, 6),
(0, 9, 'Leicester City', 3, 1, 1, 1, 3, 3, 1, 1, 0, 2, 1, 0, 0, 1, 1, 2, 0, 4),
(0, 11, 'Liverpool', 3, 1, 1, 1, 5, 6, 0, 0, 0, 0, 0, 1, 1, 1, 5, 6, -1, 4),
(0, 1, 'Manchester City', 3, 3, 0, 0, 9, 3, 2, 0, 0, 5, 2, 1, 0, 0, 4, 1, 6, 9),
(0, 3, 'Manchester United', 3, 3, 0, 0, 6, 1, 1, 0, 0, 2, 0, 2, 0, 0, 4, 1, 5, 9),
(0, 6, 'Middlesbrough', 3, 1, 2, 0, 3, 2, 0, 1, 0, 1, 1, 1, 1, 0, 2, 1, 1, 5),
(0, 15, 'Southampton', 3, 0, 2, 1, 2, 4, 0, 2, 0, 2, 2, 0, 0, 1, 0, 2, -2, 2),
(0, 20, 'Stoke City', 3, 0, 1, 2, 2, 6, 0, 0, 1, 1, 4, 0, 1, 1, 1, 2, -4, 1),
(0, 16, 'Sunderland', 3, 0, 1, 2, 3, 5, 0, 0, 1, 1, 2, 0, 1, 1, 2, 3, -2, 1),
(0, 14, 'Swansea City', 3, 1, 0, 2, 2, 4, 0, 0, 1, 0, 2, 1, 0, 1, 2, 2, -2, 3),
(0, 7, 'Tottenham Hotspur', 3, 1, 2, 0, 3, 2, 1, 1, 0, 2, 1, 0, 1, 0, 1, 1, 1, 5),
(0, 18, 'Watford', 3, 0, 1, 2, 3, 6, 0, 0, 2, 2, 5, 0, 1, 0, 1, 1, -3, 1),
(0, 10, 'West Bromwich Albion', 3, 1, 1, 1, 2, 2, 0, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, 4),
(0, 12, 'West Ham United', 3, 1, 0, 2, 3, 5, 1, 0, 0, 1, 0, 0, 0, 2, 2, 5, -2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `TeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teamtest`
--

CREATE TABLE IF NOT EXISTS `teamtest` (
  `id` int(1) DEFAULT NULL,
  `tablePosition` int(2) DEFAULT NULL,
  `teamName` varchar(20) DEFAULT NULL,
  `overallPlayed` int(1) DEFAULT NULL,
  `overallWon` int(1) DEFAULT NULL,
  `overallDraw` int(1) DEFAULT NULL,
  `overallLoss` int(1) DEFAULT NULL,
  `overallGoalsScored` int(1) DEFAULT NULL,
  `overallGoalsConceded` int(1) DEFAULT NULL,
  `homeWon` int(1) DEFAULT NULL,
  `homeDraw` int(1) DEFAULT NULL,
  `homeLoss` int(1) DEFAULT NULL,
  `homeGoalsScored` int(1) DEFAULT NULL,
  `homeGoalsConceded` int(1) DEFAULT NULL,
  `awayWon` int(1) DEFAULT NULL,
  `awayDraw` int(1) DEFAULT NULL,
  `awayLoss` int(1) DEFAULT NULL,
  `awayGoalsScored` int(1) DEFAULT NULL,
  `awayGoalsConceded` int(1) DEFAULT NULL,
  `goalDif` int(2) DEFAULT NULL,
  `points` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamtest`
--

INSERT INTO `teamtest` (`id`, `tablePosition`, `teamName`, `overallPlayed`, `overallWon`, `overallDraw`, `overallLoss`, `overallGoalsScored`, `overallGoalsConceded`, `homeWon`, `homeDraw`, `homeLoss`, `homeGoalsScored`, `homeGoalsConceded`, `awayWon`, `awayDraw`, `awayLoss`, `awayGoalsScored`, `awayGoalsConceded`, `goalDif`, `points`) VALUES
(0, 19, 'AFC Bournemouth', 3, 0, 1, 2, 2, 5, 0, 0, 1, 1, 3, 0, 1, 1, 1, 2, -3, 1),
(0, 8, 'Arsenal', 3, 1, 1, 1, 6, 5, 0, 0, 1, 3, 4, 1, 1, 0, 3, 1, 1, 4),
(0, 13, 'Burnley', 3, 1, 0, 2, 2, 4, 1, 0, 1, 2, 1, 0, 0, 1, 0, 3, -2, 3),
(0, 2, 'Chelsea', 3, 3, 0, 0, 7, 2, 2, 0, 0, 5, 1, 1, 0, 0, 2, 1, 5, 9),
(0, 17, 'Crystal Palace', 3, 0, 1, 2, 1, 3, 0, 1, 1, 1, 2, 0, 0, 1, 0, 1, -2, 1),
(0, 4, 'Everton', 3, 2, 1, 0, 4, 2, 1, 1, 0, 2, 1, 1, 0, 0, 2, 1, 2, 7),
(0, 5, 'Hull City', 3, 2, 0, 1, 4, 2, 1, 0, 1, 2, 2, 1, 0, 0, 2, 0, 2, 6),
(0, 9, 'Leicester City', 3, 1, 1, 1, 3, 3, 1, 1, 0, 2, 1, 0, 0, 1, 1, 2, 0, 4),
(0, 11, 'Liverpool', 3, 1, 1, 1, 5, 6, 0, 0, 0, 0, 0, 1, 1, 1, 5, 6, -1, 4),
(0, 1, 'Manchester City', 3, 3, 0, 0, 9, 3, 2, 0, 0, 5, 2, 1, 0, 0, 4, 1, 6, 9),
(0, 3, 'Manchester United', 3, 3, 0, 0, 6, 1, 1, 0, 0, 2, 0, 2, 0, 0, 4, 1, 5, 9),
(0, 6, 'Middlesbrough', 3, 1, 2, 0, 3, 2, 0, 1, 0, 1, 1, 1, 1, 0, 2, 1, 1, 5),
(0, 15, 'Southampton', 3, 0, 2, 1, 2, 4, 0, 2, 0, 2, 2, 0, 0, 1, 0, 2, -2, 2),
(0, 20, 'Stoke City', 3, 0, 1, 2, 2, 6, 0, 0, 1, 1, 4, 0, 1, 1, 1, 2, -4, 1),
(0, 16, 'Sunderland', 3, 0, 1, 2, 3, 5, 0, 0, 1, 1, 2, 0, 1, 1, 2, 3, -2, 1),
(0, 14, 'Swansea City', 3, 1, 0, 2, 2, 4, 0, 0, 1, 0, 2, 1, 0, 1, 2, 2, -2, 3),
(0, 7, 'Tottenham Hotspur', 3, 1, 2, 0, 3, 2, 1, 1, 0, 2, 1, 0, 1, 0, 1, 1, 1, 5),
(0, 18, 'Watford', 3, 0, 1, 2, 3, 6, 0, 0, 2, 2, 5, 0, 1, 0, 1, 1, -3, 1),
(0, 10, 'West Bromwich Albion', 3, 1, 1, 1, 2, 2, 0, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, 4),
(0, 12, 'West Ham United', 3, 1, 0, 2, 3, 5, 1, 0, 0, 1, 0, 0, 0, 2, 2, 5, -2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `email` varchar(78) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Pass`, `email`, `Firstname`, `Lastname`) VALUES
(1, 'Brianm22', 'password', '0', 'Brian', 'Muir'),
(2, 'brian', 'password', 'b@mail.com', 'brian', 'muir');

-- --------------------------------------------------------

--
-- Table structure for table `userleague`
--

CREATE TABLE IF NOT EXISTS `userleague` (
  `UserLeagueID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL COMMENT 'F_K',
  `LeagueID` int(11) NOT NULL COMMENT 'F_K'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`LeagueID`),
  ADD UNIQUE KEY `Key` (`LeagueKey`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`SelectionID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `userleague`
--
ALTER TABLE `userleague`
  ADD PRIMARY KEY (`UserLeagueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `LeagueID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `selection`
--
ALTER TABLE `selection`
  MODIFY `SelectionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `userleague`
--
ALTER TABLE `userleague`
  MODIFY `UserLeagueID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
