-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2013 at 10:28 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `democomsof_bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_assets`
--

CREATE TABLE IF NOT EXISTS `kre2y_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Dumping data for table `kre2y_assets`
--

INSERT INTO `kre2y_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 456, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 13, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 14, 15, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 16, 17, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 18, 19, 1, 'com_config', 'com_config', '{}'),
(7, 1, 20, 91, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 92, 331, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"12":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 332, 333, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 334, 335, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.create":[],"core.delete":[],"core.edit.state":[]}'),
(11, 1, 336, 337, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 338, 339, 1, 'com_login', 'com_login', '{}'),
(13, 1, 340, 341, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 342, 343, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 344, 345, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 346, 347, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 350, 351, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 352, 359, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 360, 361, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 362, 363, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 364, 365, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 366, 367, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 368, 369, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 370, 387, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 388, 389, 1, 'com_wrapper', 'com_wrapper', '{}'),
(39, 8, 125, 210, 2, 'com_content.category.14', 'Nhân sự', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(38, 25, 377, 378, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 355, 356, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 25, 26, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 8, 109, 124, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 27, 88, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 357, 358, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 379, 386, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 8, 289, 310, 2, 'com_content.category.19', 'Cựu sinh viên', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(45, 8, 311, 312, 2, 'com_content.category.20', 'Liên hệ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(46, 39, 130, 141, 3, 'com_content.category.21', 'Cán bộ cơ hữu', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(47, 39, 142, 195, 3, 'com_content.category.22', 'Cán bộ công tác', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(48, 39, 196, 207, 3, 'com_content.category.23', 'Thạc sĩ khoa học', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(49, 39, 208, 209, 3, 'com_content.category.24', 'Nghiên cứu sinh', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(50, 184, 226, 239, 3, 'com_content.category.25', 'Nhóm nghiên cứu', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(51, 184, 240, 241, 3, 'com_content.category.26', 'Đề tài nghiên cứu', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(52, 186, 246, 257, 3, 'com_content.category.27', 'Thông báo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(53, 186, 258, 279, 3, 'com_content.category.28', 'Sự kiện', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(54, 186, 280, 287, 3, 'com_content.category.29', 'Tuyển dụng', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(55, 8, 313, 320, 2, 'com_content.category.30', 'Giới thiệu', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(56, 43, 380, 381, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 382, 385, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 383, 384, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 28, 29, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 30, 87, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 31, 32, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 33, 86, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 34, 35, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 36, 37, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 38, 39, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 40, 41, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 42, 43, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 44, 45, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 46, 47, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 48, 49, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 50, 51, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 52, 53, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 54, 55, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 56, 57, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 58, 59, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 60, 61, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 62, 63, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 64, 65, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 66, 67, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 68, 69, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 70, 71, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 72, 73, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 74, 75, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 76, 77, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 78, 79, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 80, 81, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 82, 83, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 84, 85, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 55, 318, 319, 3, 'com_content.article.1', 'Giới thiệu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 52, 251, 252, 4, 'com_content.article.2', 'Thông báo lịch Project1 + Project 2 + Project 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 52, 253, 254, 4, 'com_content.article.3', 'Thông báo phân công đồ án HTTT', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 52, 255, 256, 4, 'com_content.article.4', 'Kế hoạch nộp quyển của sinh viên HTTT K53', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(93, 47, 143, 152, 4, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 153, 160, 4, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 161, 172, 4, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 173, 186, 4, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 197, 198, 4, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 199, 200, 4, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 201, 202, 4, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 203, 204, 4, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 187, 322, 323, 3, 'com_content.article.5', 'Comsoft', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 187, 324, 325, 3, 'com_content.article.6', 'Á Châu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 46, 139, 140, 4, 'com_content.article.7', 'Cán bộ cơ hữu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 47, 193, 194, 4, 'com_content.article.8', 'Cán bộ công tác', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 187, 326, 327, 3, 'com_content.article.9', 'http://soict.hut.edu.vn/', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 187, 328, 329, 3, 'com_content.article.10', 'http://www.hust.edu.vn', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(107, 109, 270, 271, 5, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 259, 268, 4, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 269, 278, 4, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 162, 163, 5, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 281, 282, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 227, 228, 4, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 229, 230, 4, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 164, 165, 5, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 247, 248, 4, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 249, 250, 4, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 166, 167, 5, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 283, 284, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 290, 291, 3, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 292, 293, 3, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 314, 315, 3, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 294, 295, 3, 'com_content.article.24', 'Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 260, 261, 5, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 174, 175, 5, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 144, 145, 5, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 154, 155, 5, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 190, 191, 5, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 146, 147, 5, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 148, 149, 5, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 296, 297, 3, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 262, 263, 5, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 272, 273, 5, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 298, 299, 3, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 168, 169, 5, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 150, 151, 5, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 300, 301, 3, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 131, 132, 4, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 176, 177, 5, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 231, 232, 4, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 126, 127, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 264, 265, 5, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 178, 179, 5, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 180, 181, 5, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 233, 234, 4, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 302, 303, 3, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 304, 305, 3, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 205, 206, 4, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 306, 307, 3, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 235, 236, 4, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 133, 134, 4, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 308, 309, 3, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 135, 136, 4, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 170, 171, 5, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 156, 157, 5, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 266, 267, 5, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 316, 317, 3, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 182, 183, 5, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 137, 138, 4, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 96, 184, 185, 5, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 237, 238, 4, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 274, 275, 5, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 276, 277, 5, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 158, 159, 5, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 189, 192, 4, 'com_content.category.75', 'Menu Module', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(167, 54, 285, 286, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(168, 34, 110, 111, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 176, 220, 221, 3, 'com_content.article.69', 'Joomla 2.5, the community effort!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(170, 176, 214, 215, 3, 'com_content.article.70', 'We are Volunteers', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(171, 176, 218, 219, 3, 'com_content.article.71', 'Security in Joomla 2.5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 176, 216, 217, 3, 'com_content.article.72', 'Joomla! License Guidelines', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(173, 176, 212, 213, 3, 'com_content.article.73', 'Smiles for Joomla 2.5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(174, 34, 112, 113, 3, 'com_content.article.74', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(175, 3, 11, 12, 2, 'com_banners.category.77', 'Text Ads', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(176, 8, 211, 222, 2, 'com_content.category.78', 'Joomla 2.5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(177, 1, 452, 453, 1, 'com_jaextmanager', 'com_jaextmanager', '{}'),
(178, 34, 114, 115, 3, 'com_content.article.75', 'What''s New in 2.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(179, 34, 116, 117, 3, 'com_content.article.76', 'Mega Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(180, 34, 118, 119, 3, 'com_content.article.77', 'Dropline Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 34, 120, 121, 3, 'com_content.article.78', 'Split Menu ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 34, 122, 123, 3, 'com_content.article.79', 'Css Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 8, 223, 224, 2, 'com_content.category.15', 'Đào tạo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(184, 8, 225, 242, 2, 'com_content.category.16', 'Nghiên cứu', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(185, 8, 243, 244, 2, 'com_content.category.17', 'Công trình xuất bản', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(186, 8, 245, 288, 2, 'com_content.category.18', 'Tin tức', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(187, 8, 321, 330, 2, 'com_content.category.31', 'Liên kết website', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}'),
(188, 1, 454, 455, 1, 'com_jce', 'jce', '{}'),
(189, 7, 89, 90, 2, 'com_contact.category.32', 'Liên hệ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"3":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_associations`
--

CREATE TABLE IF NOT EXISTS `kre2y_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_banners`
--

CREATE TABLE IF NOT EXISTS `kre2y_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_banner_clients`
--

CREATE TABLE IF NOT EXISTS `kre2y_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `kre2y_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_categories`
--

CREATE TABLE IF NOT EXISTS `kre2y_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned default NULL,
  `params` text,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `kre2y_categories`
--

INSERT INTO `kre2y_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 177, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 34, 1, 133, 134, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-07-10 13:52:03', 42, '2010-07-12 16:09:07', 0, '*'),
(10, 35, 1, 131, 132, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-07-10 13:52:16', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 36, 1, 127, 128, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-07-10 13:53:00', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 37, 1, 63, 64, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-07-10 13:53:28', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 38, 1, 59, 60, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-07-10 13:53:59', 0, '0000-00-00 00:00:00', 0, '*'),
(14, 39, 1, 139, 148, 1, 'nhan-su', 'com_content', 'Nhân sự', 'nhan-su', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:44:58', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 183, 1, 149, 150, 1, 'dao-tao', 'com_content', 'Đào tạo', 'dao-tao', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:45:15', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 184, 1, 151, 156, 1, 'nghien-cuu', 'com_content', 'Nghiên cứu', 'nghien-cuu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:45:31', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 185, 1, 157, 158, 1, 'cong-trinh-xuat-ban', 'com_content', 'Công trình xuất bản', 'cong-trinh-xuat-ban', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:45:48', 0, '0000-00-00 00:00:00', 0, '*'),
(18, 186, 1, 159, 166, 1, 'tin-tuc', 'com_content', 'Tin tức', 'tin-tuc', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:46:04', 0, '0000-00-00 00:00:00', 0, '*'),
(19, 44, 1, 167, 168, 1, 'cuu-sinh-vien', 'com_content', 'Cựu sinh viên', 'cuu-sinh-vien', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:46:22', 0, '0000-00-00 00:00:00', 0, '*'),
(20, 45, 1, 169, 170, 1, 'lien-he', 'com_content', 'Liên hệ', 'lien-he', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:46:39', 0, '0000-00-00 00:00:00', 0, '*'),
(21, 46, 14, 140, 141, 2, 'nhan-su/can-bo-co-huu', 'com_content', 'Cán bộ cơ hữu', 'can-bo-co-huu', '', '', 1, 42, '2013-05-28 04:35:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:47:36', 0, '0000-00-00 00:00:00', 0, '*'),
(30, 55, 1, 171, 172, 1, 'gioi-thieu', 'com_content', 'Giới thiệu', 'gioi-thieu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-27 03:25:38', 0, '0000-00-00 00:00:00', 0, '*'),
(22, 47, 14, 142, 143, 2, 'nhan-su/can-bo-cong-tac', 'com_content', 'Cán bộ công tác', 'can-bo-cong-tac', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:52:54', 0, '0000-00-00 00:00:00', 0, '*'),
(23, 48, 14, 144, 145, 2, 'nhan-su/thac-si-khoa-hoc', 'com_content', 'Thạc sĩ khoa học', 'thac-si-khoa-hoc', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:53:16', 0, '0000-00-00 00:00:00', 0, '*'),
(24, 49, 14, 146, 147, 2, 'nhan-su/nghien-cuu-sinh', 'com_content', 'Nghiên cứu sinh', 'nghien-cuu-sinh', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:53:36', 0, '0000-00-00 00:00:00', 0, '*'),
(25, 50, 16, 152, 153, 2, 'nghien-cuu/nhom-nghien-cuu', 'com_content', 'Nhóm nghiên cứu', 'nhom-nghien-cuu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:54:01', 0, '0000-00-00 00:00:00', 0, '*'),
(26, 51, 16, 154, 155, 2, 'nghien-cuu/de-tai-nghien-cuu', 'com_content', 'Đề tài nghiên cứu', 'de-tai-nghien-cuu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:54:43', 0, '0000-00-00 00:00:00', 0, '*'),
(27, 52, 18, 160, 161, 2, 'tin-tuc/thong-bao', 'com_content', 'Thông báo', 'thong-bao', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:55:33', 0, '0000-00-00 00:00:00', 0, '*'),
(28, 53, 18, 162, 163, 2, 'tin-tuc/su-kien', 'com_content', 'Sự kiện', 'su-kien', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:55:57', 0, '0000-00-00 00:00:00', 0, '*'),
(29, 54, 18, 164, 165, 2, 'tin-tuc/tuyen-dung', 'com_content', 'Tuyển dụng', 'tuyen-dung', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-24 03:56:15', 0, '0000-00-00 00:00:00', 0, '*'),
(31, 187, 1, 173, 174, 1, 'lien-k-t-website', 'com_content', 'Liên kết website', 'lien-k-t-website', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-27 07:56:29', 0, '0000-00-00 00:00:00', 0, '*'),
(32, 189, 1, 175, 176, 1, 'liên-hệ', 'com_contact', 'Liên hệ', 'liên-hệ', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-05-28 08:18:29', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_contact_details`
--

CREATE TABLE IF NOT EXISTS `kre2y_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned default NULL,
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kre2y_contact_details`
--

INSERT INTO `kre2y_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Thông tin liên hệ', 'thông-tin-liên-hệ', '', '', '', '', '', '', '', '', '<table>\r\n<tbody>\r\n<tr>\r\n<td colspan="2">\r\n<h2 class="h2_contact"><strong>Bộ môn Hệ Thống Thông Tin - Viện Công nghệ Thông tin và Truyền thông</strong></h2>\r\n</td>\r\n<td rowspan="8">\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="left_td" width="80">Địa chỉ</td>\r\n<td>:&nbsp;P604 Nhà B1</td>\r\n<td rowspan="8">\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="left_td" height="25">Điện thoại</td>\r\n<td>: <strong>(84-4) 3 8692463</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="left_td" height="25">Fax</td>\r\n<td>: (84-4) 3 8692906</td>\r\n</tr>\r\n<tr>\r\n<td class="left_td" height="25">Email</td>\r\n<td><a href="mailto:httt@soict.hut.edu.vn"> : </a><a href="mailto:httt@soict.hut.edu.vn">httt@soict.hut.edu.vn</a></td>\r\n</tr>\r\n<tr>\r\n<td class="left_td" height="25">Website</td>\r\n<td>: <a href="http://is.hut.edu.vn">http://is.hut.edu.vn</a></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', NULL, 'httt@soict.hut.edu.vn', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 32, 1, '', '', '', '', '', '*', '2013-05-28 08:28:37', 42, '', '2013-06-07 02:57:42', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_content`
--

CREATE TABLE IF NOT EXISTS `kre2y_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kre2y_content`
--

INSERT INTO `kre2y_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Giới thiệu', 'gioi-thieu', '', '<p><img src="images/img_3420_7_02.jpg" border="0" alt="" width="264" height="185" style="float: left;" /></p>\r\n<p>Bộ môn Hệ thống Thông tin (HTTT) là một đơn vị thuộc Viện Công nghệ thông tin  và  Truyền thông ra đời ngay từ những ngày đầu thành lập Khoa CNTT  trước đây (năm 1995)  với đội ngũ các thầy cô có trình độ chuyên môn cao và tâm huyết với nghề.    <br />Bộ môn đảm nhận chức năng giảng dạy các môn học chuyên ngành Hệ thống thông tin của các loại hình đào tạo đại học,và sau đại học thuộc ngành CNTT. Bên cạnh đó, Bộ môn tham gia các hoạt động nghiên cứu khoa học, chuyển giao công nghệ, hợp tác trong nước và quốc tế. Các hoạt động của Bộ môn tập trung chủ yếu vào lĩnh vực công nghệ xử lý dữ liệu và tri thức (Data and Knowledge Engineering).</p>\r\n<p> </p>', '', 1, 0, 0, 30, '2013-05-27 03:30:51', 42, '', '2013-05-27 03:39:24', 42, 0, '0000-00-00 00:00:00', '2013-05-27 03:30:51', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(2, 90, 'Thông báo lịch Project1 + Project 2 + Project 3', 'thong-bao-l-ch-project1-project-2-project-3', '', '<p>Bộ môn đang tiến hành xếp lịch gặp các môn học Project 1, Project 2, Project3. Thông tin phân công và lịch gặp giáo viên hướng dẫn sẽ được cập nhật trên website của bộ môn (khoảng thứ 5).</p>', '', 1, 0, 0, 27, '2013-05-27 04:20:33', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-27 04:20:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Thông báo phân công đồ án HTTT', 'thong-bao-phan-cong-d-an-httt', '', '<p>Bộ môn đã có phân công đồ án HTTT theo danh sách đính kèm.</p>\r\n<p><a href="20122_DA_HTTT.pdf">Đồ án HTTT</a></p>', '', 1, 0, 0, 27, '2013-05-27 04:24:11', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-27 04:24:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Kế hoạch nộp quyển của sinh viên HTTT K53', 'k-ho-ch-n-p-quy-n-c-a-sinh-vien-httt-k53', '', '<p style="text-align: center;">KẾ HOẠCH NỘP QUYỂN ĐỒ ÁN TỐT NGHIỆP<br />Lớp hệ thống thông tin K53</p>\r\n<ul>\r\n<li>Sinh viên chuẩn bị quyển + CD gồm chương trình + bản mềm đồ án theo quy định chung của Viện  (http:soict.hut.edu.vn - mục Quy trình - Biểu mẫu).</li>\r\n<li>Sinh viên cần xin chữ ký xác nhận của giáo viên hướng dẫn trên quyển đồ án trước khi nộp và trực tiếp chuyển 1 quyển tới giáo viên hướng dẫn.</li>\r\n<li>Bộ môn tiến hành thu quyển vào ngày 31/5/2013 (Sáng: 9h00 : 11h30;  Chiều: 14h45 :16h00)tại văn phòng bộ môn B1-603 (gặp c. Giang): sinh viên cần nộp 2 quyển đồ án có xác nhận của giáo viên + 1CD theo quy định.</li>\r\n</ul>\r\n<p> </p>', '', 1, 0, 0, 27, '2013-05-27 04:33:56', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-27 04:33:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Comsoft', 'comsoft', '', '<p><img src="images/comsoftvn.jpg" border="0" alt="" /></p>', '', 0, 0, 0, 31, '2013-05-27 07:57:47', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-27 07:57:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 102, 'Á Châu', 'a-chau', '', '<p><img src="images/doitac_1.jpg" border="0" alt="" /></p>', '', 0, 0, 0, 31, '2013-05-27 07:58:53', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-27 07:58:53', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Cán bộ cơ hữu', 'can-bo-co-huu', '', '<p style="text-align: center;"><strong>Danh sách cán bộ cơ hữu bộ môn Kỹ Thuật Hệ Thống Thông Tin - Viện Công Nghệ Thông Tin và Truyền Thông Đại học Bách Khoa Hà Nội<br /></strong></p>\r\n<p style="text-align: center;"><strong></strong></p>\r\n', '\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;">\r\n<table class="table_custom">\r\n<tbody>\r\n<tr class="row0">\r\n<td>PGS.TS Nguyễn Kim Anh<br /> Trưởng bộ môn<br /> Email : anhnk@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>TS Vũ Tuyết Trinh<br /> Phó trưởng bộ môn<br /> Email : trinhvt@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>PGS.TS Trần Đình Khang<br /> Phó Viện trưởng Viện CNTT&amp;TT<br /> Email : khangtd@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>TS Nguyễn Hữu Đức<br /> Giám đốc trung tâm tính toán hiệu năng cao (HPC)<br /> Email : ducnh@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>PGS.TS. Lê Thanh Hương<br /> Giảng viên<br /> Email : huonglt@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>TS Trần Đức Khánh<br /> Phó Viện trưởng Viện CNTT&amp;TT<br /> Email : khanhtd@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>TS Nguyễn Nhật Quang<br /> Giảng viên<br /> Email : quangnn@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>TS Nguyễn Thị Oanh<br /> Giảng viên<br /> Email : oanhnt@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>ThS Nguyễn Hồng Phương<br /> Giảng viên<br /> Email : phuongnh@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>ThS Phạm Hồng Phong<br /> Giảng viên<br /> Email : phongph@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>ThS Đỗ Bá Lâm<br /> Giảng viên<br /> Email : lamdb@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>ThS Phạm Thị Phương Giang<br /> Cán bộ phục vụ giảng dạy<br /> Email : giangptp@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>KS Ngô Văn Linh<br /> Giảng viên<br /> Email : linhnv@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td>ThS Đỗ Bích Diệp<br /> Giảng viên<br /> Email : diepdb@soict.hut.edu.vn<br /> Đang làm PhD tại Úc</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>ThS Ngô Tuấn Phong<br /> Giảng viên<br /> Email : phongnt@soict.hut.edu.vn<br /> Đang làm MsC ở Thụy Điển</td>\r\n<td>KS Đỗ Đức Thành<br /> Giảng viên<br /> Email : thanhdd@soict.hut.edu.vn<br /> Đang làm PhD tại Mỹ</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>ThS Đào Trần Minh<br /> Giảng viên<br /> Email : minhdt@soict.hut.edu.vn<br /> Đang làm PhD tại Áo</td>\r\n<td>ThS Đỗ Thị Ngọc Quỳnh<br /> Giảng viên<br /> Email : quynhdtn@soict.hut.edu.vn<br /> Đang làm PhD tại Bỉ</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>TS Nguyễn Bá Ngọc<br /> Giảng viên<br /> Email : ngocnb@soict.hut.edu.vn<br /> Điện thoại CQ : (+84) 3 869 6124</td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>', 1, 0, 0, 21, '2013-05-28 04:26:48', 42, '', '2013-05-28 04:42:44', 42, 0, '0000-00-00 00:00:00', '2013-05-28 04:26:48', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 104, 'Cán bộ công tác', 'cán-bộ-công-tác', '', '<p style="text-align: center;"><strong>Danh sách cán bộ của Bộ môn Hệ Thống Thông Tin - Viện Công nghệ Thông tin và Truyền thông Đại học Bách Khoa Hà Nội</strong></p>\r\n', '\r\n<p style="text-align: center;">&nbsp;</p>\r\n<table class="table_custom2">\r\n<tbody>\r\n<tr class="row1 headerq">\r\n<td>\r\n<div align="center">STT</div>\r\n</td>\r\n<td colspan="2">Họ và tên</td>\r\n<td>Nơi công tác</td>\r\n<td>Ghi chú</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>\r\n<div align="center">1</div>\r\n</td>\r\n<td>TS.Tạ Tuấn Anh</td>\r\n<td><img src="images/anhtt-1.jpg" alt="" />&nbsp;</td>\r\n<td>Trung tâm tin học – Viện KHCNVN</td>\r\n<td>Chuyển công tác từ năm 2011</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>\r\n<div align="center">2</div>\r\n</td>\r\n<td>GS.NGUT.Nguyễn Thanh Thủy</td>\r\n<td>&nbsp;<img src="images/thuynt.jpg" alt="" /></td>\r\n<td>Đại học Công nghệ – ĐHQG Hà Nội</td>\r\n<td>Chuyển công tác từ năm 2011</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>\r\n<div align="center">3</div>\r\n</td>\r\n<td>PGS.NGUT.Nguyễn Văn Ba</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Nghỉ hưu từ năm 1997</td>\r\n</tr>\r\n<tr class="row1">\r\n<td>\r\n<div align="center">4</div>\r\n</td>\r\n<td>PGS.NGUT.Đỗ Xuân Lôi</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Nghỉ hưu từ năm 1995</td>\r\n</tr>\r\n<tr class="row0">\r\n<td>\r\n<div align="center">5</div>\r\n</td>\r\n<td>ThS.GVC.Tô Văn Nam</td>\r\n<td>&nbsp;<img src="images/namtv.jpg" alt="" /></td>\r\n<td>&nbsp;</td>\r\n<td>Nghỉ hưu từ năm 2011</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 0, 0, 22, '2013-05-28 07:42:20', 42, '', '2013-05-28 07:59:09', 42, 0, '0000-00-00 00:00:00', '2013-05-28 07:42:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 105, 'http://soict.hut.edu.vn/', 'viện-công-nghệ-thông-tin-và-truyền-thông', '', '<p><img src="images/SoICT_ logo.png" alt="" /></p>', '', 1, 0, 0, 31, '2013-06-06 08:51:27', 42, '', '2013-06-07 09:09:27', 42, 42, '2013-06-07 09:09:27', '2013-06-06 08:51:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'http://www.hust.edu.vn', 'trường-đại-học-bách-khoa-hà-nội', '', '<p><a href="http://www.hust.edu.vn" target="_blank"><img src="images/HUST_logo.png" alt="" /></a></p>', '', 1, 0, 0, 31, '2013-06-06 08:53:24', 42, '', '2013-06-07 09:07:34', 42, 0, '0000-00-00 00:00:00', '2013-06-06 08:53:24', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `kre2y_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_content_frontpage`
--

INSERT INTO `kre2y_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_content_rating`
--

CREATE TABLE IF NOT EXISTS `kre2y_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `kre2y_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_extensions`
--

CREATE TABLE IF NOT EXISTS `kre2y_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned default NULL,
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10036 ;

--
-- Dumping data for table `kre2y_extensions`
--

INSERT INTO `kre2y_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10485760","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"0","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"0","multi_column_order":"1","show_subcategory_content":"-1","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"rounded"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(425, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(429, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `kre2y_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(430, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"0","register-require_address2":"0","register-require_city":"0","register-require_region":"0","register-require_country":"0","register-require_postal_code":"0","register-require_phone":"0","register-require_website":"0","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(431, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(501, 'rhuk_milkyway', 'template', 'rhuk_milkyway', '', 0, 1, 1, 0, 'false', '{"colorVariation":"white","backgroundVariation":"blue","widthStyle":"fmax"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 1, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 1, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"April 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.11","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'ja_t3_blank', 'template', 'ja_t3_blank', '', 0, 1, 1, 0, '{"legacy":false,"name":"ja_t3_blank","type":"template","creationDate":"May 2012","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.5.6","description":"\\t\\n\\t\\n<p>The <strong>Joomlart T3 Framework<\\/strong>  and <strong>JA T3 Blank Template<\\/strong> have been updated for Joomla 2.5.<\\/p>\\n\\n<p>JA T3 Blank Template for Joomla 2.5 is the base template for JA T3 V2 Framework. If you are a developer and wish to use JA  T3 Framework to develop your own themes then its the right choice.<\\/p>\\n<p>With the JA T3 Blank Template it is easy to start developing templates right away.  But do not let the simplicity fool you, as JAT3 comes packed with power.  You now have the ability to use multiple themes simultaneously or mix and match them as you see fit.  And with the JA T3 Template Administration Panel, you can edit your files, upload your themes and customize your settings all in one window. Read more on our wiki.<\\/p>\\n<\\/br>\\n\\n<p><strong>Resources :<\\/strong><\\/p>\\n\\n<p>\\n<a href=''http:\\/\\/www.joomlart.com\\/demo\\/#demo.t3.joomlart.com\\/joomla25'' title=''Demo'' target=''_blank'' > Demo<\\/a> |\\n<a href=''http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?241'' title=''forum'' target=''_blank'' >Forum<\\/a> |\\n<a href=''http:\\/\\/wiki.joomlart.com\\/wiki\\/JA_T3_Framework_2\\/Overview'' title=''T3 wiki'' target=''_blank'' >T3 Framework Wiki<\\/a> |\\n<a href=''http:\\/\\/update.joomlart.com'' title=''Updates'' target=''_blank'' >Updates<\\/a> |\\n<a href=''http:\\/\\/pm.joomlart.com\\/browse\\/JATCTIIIVIIJOOMLAIVI'' title=''Changelog'' target=''_blank'' >JIRA<\\/a> |\\n<a href=''http:\\/\\/www.joomlart.com\\/forums\\/downloads.php?do=cat&id=361'' title=''Downloads'' target=''_blank'' >Downloads<\\/a> <\\/p>\\n\\t\\t\\n\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'JA T3 Framework', 'plugin', 'jat3', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"JA T3 Framework","type":"plugin","creationDate":"May 2013","author":"www.JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.6.2","description":"\\n\\t\\n\\t\\t<h1>T3 Framework - JoomlArt Template Framework for Joomla 2.5 and Joomla 3.0<\\/h1>\\n\\t\\t<div style=''font-weight: normal''>\\n\\t\\t<p><span style=''color: #ff6600;''>\\n\\t\\t<strong>Features:<\\/strong><\\/span>\\n\\t\\tThis plugin is required for JA T3 Framework based templates to work.<\\/p>\\n\\t\\t\\n\\t\\t<strong><span style=''color: #ff0000;''>Usage Instruction:<\\/span><\\/strong><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li>Enable the JA T3 plugin in Plugin manager<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<strong><span style=''color: #ff0000;''>Upgrade Method:<\\/span><br \\/><\\/strong>\\n\\t\\t<ul>\\n\\t\\t  <li>You can install new version directly over this version. Uninstallation is not required. <\\/li>\\n\\t\\t  <li>Follow upgrade instructions and backup site \\/ plugin before upgrading<\\/li>\\n\\t\\t  <\\/ul>\\n\\t\\n\\t\\t<span style=''color: #008000;''><strong>Links:<\\/strong><\\/span><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/wiki.joomlart.com\\/wiki\\/JA_T3_Framework_2\\/Overview\\">Wiki Userguide<\\/a><\\/li>\\n\\t\\t <li><a target=''_blank'' href=''http:\\/\\/update.joomlart.com\\/''>Updates &amp; Versions<\\/a><\\/li>\\n\\t\\t <li><a target=''_blank'' href=''http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?241''>JA T3 Framework Forum<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p>Copyright 2004 - 2012 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1000, 0),
(10002, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_jaextmanager","type":"component","creationDate":"November 2012","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.5.3","description":"JA Extension Manager Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'JA Typo', 'plugin', 'jatypo', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"JA Typo","type":"plugin","creationDate":"May 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"\\n\\t\\n\\t<div style=''text-align: left;''>\\n\\t<h1>JA Typo Plugin for Joomla! 2.5<\\/h1>\\n\\t<p><span style=\\"color: #ff6600;\\"><strong>Features:<\\/strong><\\/span><\\/p>\\n\\t<img border=\\"0\\" alt=\\"JA Typography Plugin\\" src=\\"http:\\/\\/asset.joomlart.com\\/images\\/stories\\/extensions\\/joomla\\/jaec_typo_plg.png\\" style=\\"float: left;\\">\\n\\tBonus Typography styles for your content. Choose styles right from your editor window. \\n\\tColorful buttons, tables, forms, tags, headings, lists, badges, icons, CSS3 buttons and more styles will come up...\\n\\t<p><strong><span style=\\"color: #ff0000;\\">Important Instruction:<\\/span><br \\/><\\/strong><\\/p>\\n\\t<ul><li>Install JA Typo Button Plugin for this to be seen in the Editor<\\/li>\\n\\t<li>You can use many types to load from a popup<\\/li>\\n\\t<\\/ul>\\n\\t<p><strong><span style=\\"color: #ff0000;\\">Upgrade Method:<\\/span><br \\/><\\/strong><\\/p>\\n\\t<ol><li>You can install new version directly over this version. Uninstallation is not required. Backup any customized files before upgrading.<\\/li><\\/ol>\\n\\t<p><span style=\\"color: #008000;\\"><strong>Links :<\\/strong><\\/span><\\/p>\\n\\t<ul>\\n\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/www.joomlart.com\\/forums\\/showthread.php?49821\\">General Userguide<\\/a><\\/li>\\n\\t\\t <li><a target=''_blank'' href=''http:\\/\\/update.joomlart.com\\/''>Updates &amp; Versions<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<p>Copyright 2004 - 2012 <a href=\\"http:\\/\\/www.joomlart.com\\/\\" title=\\"Visit Joomlart.com!\\">JoomlArt.com<\\/a>.<\\/p>\\n\\t<\\/div>\\n\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Editor Button - JA Typo Button', 'plugin', 'jatypobutton', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Editor Button - JA Typo Button","type":"plugin","creationDate":"November 2012","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"www.joomlart.com","version":"2.5.6","description":"\\n\\n\\t\\t<h1>JA Typo Button Plugin for Joomla! 2.5<\\/h1>\\n\\t\\t<div style=''font-weight: normal''>\\n\\t\\t<p><span style=''color: #ff6600;''><strong>Features:<\\/strong><\\/span>\\n\\t\\tPlease install plugin JA Typo.<\\/p>\\n\\t\\t\\n\\t\\t<strong><span style=''color: #ff0000;''>Usage Instruction:<\\/span><\\/strong><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li>Upon installation of this plugin, JA Typo button can be accessed in the editor.<\\/li><\\/ul>\\n\\t\\t<strong><span style=''color: #ff0000;''>Upgrade Method:<\\/span><br \\/><\\/strong>\\n\\t\\t<ul>\\n\\t\\t  <li>You can install new version directly over this version. Uninstallation is not required. <\\/li>\\n\\t\\t  <li>Backup any customized files before upgrading.<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<span style=''color: #008000;''><strong>Links:<\\/strong><\\/span><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/www.joomlart.com\\/forums\\/showthread.php?49821\\">General Userguide<\\/a><\\/li>\\n\\t\\t <li><a target=''_blank'' href=''http:\\/\\/update.joomlart.com\\/''>Updates &amp; Versions<\\/a><\\/li>\\n\\t\\n\\t\\t<\\/ul>\\n\\t\\t<p>Copyright 2004 - 2012 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'com_finder', 'component', 'com_finder', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","moduleclass_sfx":"","field_size":"25","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"header":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'French (FR)', 'language', 'fr-FR', '', 0, 1, 1, 0, '{"legacy":false,"name":"French (FR)","type":"language","creationDate":"2010-08-01","author":"French translation team : Joomla!fr","copyright":"Copyright (C) 2005 - 2010 Open Source Matters &  Joomla.fr. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"www.joomla.fr","version":"1.6","description":"French administrator language for Joomla 1.6","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'French (FR)', 'language', 'fr-FR', '', 1, 1, 1, 0, '{"legacy":false,"name":"French (FR)","type":"language","creationDate":"2010-08-01","author":"French translation team : Joomla!fr","copyright":"Copyright (C) 2005 - 2010 Open Source Matters &  Joomla.fr. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"www.joomla.fr","version":"1.6","description":"French administrator language for Joomla 1.6","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Autson Slideshow', 'module', 'mod_AutsonSlideShow', '', 0, 1, 0, 0, '{"legacy":false,"name":"Autson Slideshow","type":"module","creationDate":"September 2011","author":"xing","copyright":"Copyright (C) 2010 - 2011 Autson.com. All rights reserved.","authorEmail":"info@autson.com","authorUrl":"www.autson.com","version":"1.2","description":"\\n\\n\\n\\n\\n\\n\\n\\nAutson Skitter Slideshow For Joomla! module Let your joomla more elegant Autson Skitter Slideshow! With numerous customization options, is one that will bode well for your theme. .HaveFun! http:\\/\\/www.AUTSON.com\\n\\n\\n\\n<br\\/>\\n\\n\\n\\n<p>\\n\\n\\n\\n\\n\\n\\n\\n","group":""}', '{"moduleclass_sfx":"","slidewidth":"800","slideheight":"300","menu_style":"list","timeinterval":"2500","velocity":"1","align":"center","backgroundcolor":"#000","linktarget":"_self","linkedtitle":"no","navigation":"list","navigationalign":"left","arrows":"yes","hidetools":"no","arrowspos":"default","numberspos":"default","border":"0","bordercolor":"#000","labelcolor":"#fff","labelsize":"22","titlefont":"BebasNeueRegular","desccolor":"#fff","descsize":"10","descfont":"arial","bgout":"#333","colorout":"#fff","bgover":"#000","colorover":"#fff","bgactive":"#cc3333","coloractive":"#fff","show_jquery":"yes","jver":"1.5.2","load":"onmod","img1":"modules\\/mod_AutsonSlideShow\\/images\\/001.jpg","label1":"","desc1":"","link1":"","@spacer":"","img2":"modules\\/mod_AutsonSlideShow\\/images\\/002.jpg","label2":"","desc2":"","link2":"","img3":"","label3":"","desc3":"","link3":"","img4":"","label4":"","desc4":"","link4":"","img5":"","label5":"","desc5":"","link5":"","img6":"","label6":"","desc6":"","link6":"","img7":"","label7":"","desc7":"","link7":"","img8":"","label8":"","desc8":"","link8":"","img9":"","label9":"","desc9":"","link9":"","img10":"","label10":"","desc10":"","link10":"","img11":"","label11":"","desc11":"","link11":"","img12":"","label12":"","desc12":"","link12":"","img13":"","label13":"","desc13":"","link13":"","img14":"","label14":"","desc14":"","link14":"","img15":"","label15":"","desc15":"","link15":"","img16":"","label16":"","desc16":"","link16":"","img17":"","label17":"","desc17":"","link17":"","img18":"","label18":"","desc18":"","link18":"","img19":"","label19":"","desc19":"","link19":"","img20":"","label20":"","desc20":"","link20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'BT Content Slider', 'module', 'mod_bt_contentslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Content Slider","type":"module","creationDate":"Sep 2011","author":"www.bowthemes.com","copyright":"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.4","description":"<style>.bt_description h3{\\ttext-transform: uppercase;\\tmargin: 20px 0px 10px 0px;\\t}\\t.bt_description img{\\tfloat:left;\\tmargin:5px 10px 5px 0px;\\t}\\t.bt_description p,.bt_description li{\\tpadding: 5px 5px 5px 30px;\\t\\tlist-style: none outside none;\\t\\t\\t\\t\\t}\\t\\t.bt_description ul.list-style li{\\tbackground:url(..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\tpadding-left:30px;\\tline-height:15px;\\t}<\\/style><div class=\\"bt_description\\"><h3>BT content slider Module Version 1.4<\\/h3>\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/bt-slider.png\\"><\\/a><p>Helps to slide your articles from Joomla! categories with cool effects, rich backend configs covering layout, animation control, auto thumbnail creating, images resizing, numbering articles, sorting ect...<\\/p><br clear=\\"both\\" \\/><h3>Features<\\/h3><ul class=\\"list-style\\"><li>Compatibility with Joomla 1.5, 1.6, 1.7 and Joomla 2.5<\\/li><li>Content control display from any section, category or article ID''s<\\/li><li>Support for K2 component<\\/li><li>Scalable size of the module<\\/li><li>Horizontal and vertical news presentation (columns and rows configuration).<\\/li><li>Show text, image, author, date, section\\/category name and button \\"read more\\" option, with order customization.<\\/li><li>Image Cropping<\\/li><li>On\\/Off front page articles display in modules<\\/li><li>Easy and friendly back-end administration.<\\/li><li>Used Javascript Framework:  Jquery latest version<\\/li><li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\t\\t<\\/ul><h3>UPgrade versions<\\/h3><p>Your current versions is 1.4. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\">Find our latest versions now<\\/a><\\/p><h3>Userful links<\\/h3><ul><li>Video tutorials<\\/li><li>Report bug<\\/li><li>Forum support<\\/li><\\/ul><h3>About bow themes & copyright<\\/h3>\\t<p>Bow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization<\\/p>Copyright 2004 - 2011 <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\">http:\\/\\/bowthemes.com<\\/a>\\t<\\/div>","group":""}', '{"moduleclass_sfx":"","content_title":"","NAVIGATION_SETTING":"NAVIGATION_SETTING","butlet":"1","next_back":"1","navigation_top":"0","navigation_right":"0","GIRD_SETTING":"GIRD_SETTING","module_width":"640","auto_height":"1","items_per_cols":"1","items_per_rows":"3","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":"","btportfolio_category":"","limit_items":"12","user_id":"0","show_featured":"1","ordering":"created-asc","title_option":"TITLE_OPTION","show_title":"1","limit_title_by":"word","title_max_chars":"8","intro_text_option":"INTRO_TEXT_OPTION","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","image_option":"IMAGE_OPTION","show_image":"1","check_image_exist":"1","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","default_thumb":"1","hovereffect":"1","next_back_effect":"slide","bullet_effect":"slide","pause_hover":"1","interval":"5000","duration":"500","effect":"easeInQuad","auto_start":"1","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors_jce","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.2.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":false,"name":"JCE","type":"component","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'BT Google Maps', 'module', 'mod_bt_googlemaps', '', 0, 1, 0, 0, '{"legacy":false,"name":"BT Google Maps","type":"module","creationDate":"Jun 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.1.0","description":"\\n\\t\\n\\t\\t<style>\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Google Maps Module Version 1.1.0<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/mod_bt_googlemaps.png\\"><\\/a>\\n\\t\\t\\t<p>Bring google maps to your website by the simplest & easiest way. Using Google Maps version 3 services, BT Google Maps support you input both Address and Coordinate, create your custom marker with title, images, description...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Maps Version 3 (Latest)<\\/li>\\n\\t\\t\\t\\t<li>Support both input types: Address and Coordinate <\\/li>\\n\\t\\t\\t\\t<li>Retrieving lat\\/long of location using Geocoder<\\/li>\\n\\t\\t\\t\\t<li>Auto-Detect Language<\\/li>\\n\\t\\t\\t\\t<li>Streetview, MapOverview, ZoomControl, PanControl, ScaleControl, MapTypeControl<\\/li>\\n\\t\\t\\t\\t<li>Support Marker( Easy customize title, icon, shadow, description popup)<\\/li>\\n\\t\\t\\t\\t<li>Multiple module instances<\\/li>\\t\\n\\t\\t\\t\\t<li>The configuration is very easy and simple<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6 Joomla 1.7 & Joomla 2.5<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 1.1.0. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map-module\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map-module\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{"inputType":"1","address":"A2DN3 Nguyen Khanh Toan, Cau Giay, Ha Noi","latitue":"","longtitue":"","mapType":"roadmap","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","marker":"1","title":"Bowthemes","image":"","shadow":"","contentInfo":"","showContentOnload":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'MOD_JGMAP', 'module', 'mod_JGMap', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_JGMAP","type":"module","creationDate":"June 13, 2010","author":"Kermode Bear Software - James Hansen","copyright":"Copyright 2011 Notice","authorEmail":"kermode@kermodesoftware.com","authorUrl":"www.kermodesoftware.com","version":"0.16.35","description":"MOD_JGMAP_XML_DESCRIPTION","group":""}', '{"width":"200","height":"150","mapName":"map","smallmap":"1","static":"0","lat":"48.5747","lng":"-123","zoom":"3","marker_title":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'Content Article Plus', 'plugin', 'articleplus', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content Article Plus","type":"plugin","creationDate":"2011-07-26","author":"Nguy\\u1ec5n V\\u0103n Trung","copyright":"Copyright \\u00a9 2011 Nguy\\u1ec5n V\\u0103n Trung (S\\u1ed1 CMND: 111712060). All rights reserved.","authorEmail":"trungnv84@ymail.com","authorUrl":"http:\\/\\/www.timbds.com","version":"2.1.1","description":"PLG_CONTENT_ARTICLEPLUS_DESCRIPTION","group":""}', '{"ap_latest_article":"6","ap_latest_title":"Tin c\\u0169 h\\u01a1n","ap_other_article":"6","ap_other_title":"Tin li\\u00ean quan","categories":["20","31"]}', '', '', 42, '2013-06-04 04:15:42', 0, 0),
(10035, 'mod_highlighter_gk4', 'module', 'mod_highlighter_gk4', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_highlighter_gk4","type":"module","creationDate":"20\\/11\\/2011","author":"Gavick.com","copyright":"(C) 2008-2011 Gavick.com","authorEmail":"info@gavick.com","authorUrl":"www.gavick.com","version":"GK4 1.9","description":"\\n        \\t<style type=\\"text\\/css\\">\\n        \\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n        \\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n        \\tspan.readonly p { margin: 0 26px 10px }\\n        \\t#gk_about_us a,\\n        \\tspan.readonly p a { color: #6c7d0a }\\n        \\tspan.readonly p.homepage { margin-top: 30px }\\n        \\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n        \\t<\\/style>\\n        \\t<span class=\\"readonly\\"><h1>Highlighter GK4<small>ver. 1.9<\\/small><\\/h1><p>GK4 is new generation of our extensions dedicated to Joomla! 1.6+.<\\/p><p>Highlighter GK4 is news rotator which allows to present chosen articles headers in an attractive way. Thanks to multiple options, users may adjust it to their needs. Additionally, Highlighter GK4 can be integrated with any source of information.<\\/p> <p class=''homepage''><a href=''http:\\/\\/tools.gavick.com\\/highlighter.html'' target=''_blank''>Learn more at the Highlighter GK4 project website.<\\/a><\\/p><p class=''license''>Weather GK4 is released under the <a target=\\"_blank\\" href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span>\\n        ","group":""}', '{"moduleclass_sfx":"","automatic_module_id":"1","module_unique_id":"newshighlighter1","data_source":"com_sections","com_categories":"","com_articles":"","xmlfile":"","k2multicategories":"","k2tags":"","k2items":"","news_amount":"10","news_sort_value":"created","news_sort_order":"DESC","news_since":"","news_frontpage":"1","unauthorized":"0","only_frontpage":"0","startposition":"0","time_offset":"0","news_as_links":"1","show_title":"1","show_desc":"1","use_title_alias":"0","title_limit_type":"chars","title_limit":"20","desc_limit_type":"chars","desc_limit":"40","interface":"1","interface_bg":"#819510","interface_radius":"26","introtext":"1","introtext_color":"#ffffff","introtext_value":"HOT NEWS","animation_type":"1","hover_anim":"0","animation_speed":"350","animation_interval":"5000","animation_fun":"Fx.Transitions.linear","clean_xhtml":"1","parse_plugins":"0","clean_plugins":"1","useCSS":"1","useScript":"2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_filters`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_finder_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termse`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_finder_taxonomy`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_terms`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_finder_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_terms_common`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_finder_types`
--

CREATE TABLE IF NOT EXISTS `kre2y_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_finder_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_jaem_log`
--

CREATE TABLE IF NOT EXISTS `kre2y_jaem_log` (
  `id` int(11) NOT NULL auto_increment,
  `ext_id` varchar(50) default NULL,
  `service_id` int(11) default NULL,
  `check_date` datetime default NULL,
  `check_info` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_jaem_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_jaem_services`
--

CREATE TABLE IF NOT EXISTS `kre2y_jaem_services` (
  `id` int(11) NOT NULL auto_increment,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL default 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL default '0',
  `ws_core` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kre2y_jaem_services`
--

INSERT INTO `kre2y_jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 1, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_languages`
--

CREATE TABLE IF NOT EXISTS `kre2y_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL,
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kre2y_languages`
--

INSERT INTO `kre2y_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 0),
(3, 'xx-XX', 'xx (Test)', 'xx (Test)', 'xx', 'br', '', '', '', '', -2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_menu`
--

CREATE TABLE IF NOT EXISTS `kre2y_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned default NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=566 ;

--
-- Dumping data for table `kre2y_menu`
--

INSERT INTO `kre2y_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 13, 22, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 51, 52, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 41, 42, 0, '*', 1),
(538, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 45, 50, 0, '*', 1),
(537, 'main', 'COM_FINDER', 'com-finder', '', 'explore/layout/com-finder', 'index.php?option=com_finder', 'component', 0, 1, 1, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:finder', 0, NULL, 283, 326, 0, '', 1),
(539, 'main', 'com_joomlaupdate', 'com-joomlaupdate', '', 'explore/layout/com-joomlaupdate', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 10024, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 327, 328, 0, '', 1),
(536, 'main', 'com_jaextmanager', 'ja-ext-manager', '', 'explore/layout/ja-ext-manager', 'index.php?option=com_jaextmanager', 'component', 0, 1, 1, 10002, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '', 281, 282, 0, '', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 14, 15, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 16, 17, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 18, 19, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 20, 21, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 48, 49, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 46, 47, 0, '*', 1),
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 325, 0, '*', 0),
(101, 'mainmenu', 'Trang chủ', 'trang-chu', '', 'News Feeds/Categories/trang-chu', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 39, 40, 1, '*', 0),
(540, 'mainmenu', 'Nhân sự', 'nhan-su', '', 'com-finder/nhan-su', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"-1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 283, 292, 0, '*', 0),
(541, 'mainmenu', 'Cán bộ cơ hữu', 'can-bo-co-huu', '', 'com-finder/nhan-su/can-bo-co-huu', 'index.php?option=com_content&view=article&id=7', 'component', 1, 540, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 284, 285, 0, '*', 0),
(565, 'mainmenu', 'Liên hệ', 'lien-he', '', 'com-finder/lien-he', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 323, 324, 0, '*', 0),
(542, 'mainmenu', 'Cán bộ công tác', 'can-bo-cong-tac', '', 'com-finder/nhan-su/can-bo-cong-tac', 'index.php?option=com_content&view=category&layout=blog&id=22', 'component', 1, 540, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 286, 287, 0, '*', 0),
(543, 'mainmenu', 'Thạc sĩ khoa học', 'thac-si-khoa-hoc', '', 'com-finder/nhan-su/thac-si-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=23', 'component', 1, 540, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 288, 289, 0, '*', 0),
(544, 'mainmenu', 'Nghiên cứu sinh', 'nghien-cuu-sinh', '', 'com-finder/nhan-su/nghien-cuu-sinh', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', 1, 540, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 290, 291, 0, '*', 0),
(545, 'mainmenu', 'Đào tạo', 'dao-tao', '', 'com-finder/dao-tao', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 293, 294, 0, '*', 0),
(546, 'mainmenu', 'Nghiên cứu', 'nghien-cuu', '', 'com-finder/nghien-cuu', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 295, 300, 0, '*', 0),
(547, 'mainmenu', 'Nhóm nghiên cứu', 'nhom-nghien-cuu', '', 'com-finder/nghien-cuu/nhom-nghien-cuu', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', 1, 546, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 296, 297, 0, '*', 0),
(548, 'mainmenu', 'Đề tài nghiên cứu', 'de-tai-nghien-cuu', '', 'com-finder/nghien-cuu/de-tai-nghien-cuu', 'index.php?option=com_content&view=category&layout=blog&id=26', 'component', 1, 546, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 298, 299, 0, '*', 0),
(549, 'mainmenu', 'Công trình xuất bản', 'cong-trinh-xuat-ban', '', 'com-finder/cong-trinh-xuat-ban', 'index.php?option=com_content&view=category&layout=blog&id=17', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 301, 302, 0, '*', 0),
(550, 'mainmenu', 'Tin tức', 'tin-tuc', '', 'com-finder/tin-tuc', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', 1, 1, 1, 22, 0, 42, '2013-06-03 02:33:16', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 303, 310, 0, '*', 0),
(551, 'mainmenu', 'Thông báo', 'thong-bao', '', 'com-finder/tin-tuc/thong-bao', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 550, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 304, 305, 0, '*', 0),
(552, 'mainmenu', 'Sự kiện', 'su-kien', '', 'com-finder/tin-tuc/su-kien', 'index.php?option=com_content&view=category&layout=blog&id=28', 'component', 1, 550, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 306, 307, 0, '*', 0),
(553, 'mainmenu', 'Tuyển dụng', 'tuyen-dung', '', 'com-finder/tin-tuc/tuyen-dung', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', 1, 550, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 308, 309, 0, '*', 0),
(554, 'mainmenu', 'Cựu sinh viên', 'cuu-sinh-vien', '', 'com-finder/cuu-sinh-vien', 'index.php?option=com_content&view=category&layout=blog&id=19', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0"}', 311, 312, 0, '*', 0),
(564, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'com-finder/jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 560, 2, 10031, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, NULL, 320, 321, 0, '', 1),
(563, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'com-finder/jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 560, 2, 10031, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, NULL, 318, 319, 0, '', 1),
(562, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'com-finder/jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 560, 2, 10031, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, NULL, 316, 317, 0, '', 1),
(560, 'main', 'JCE', 'jce', '', 'com-finder/jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10031, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, NULL, 313, 322, 0, '', 1),
(561, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'com-finder/jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 560, 2, 10031, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, NULL, 314, 315, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_menu_types`
--

CREATE TABLE IF NOT EXISTS `kre2y_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kre2y_menu_types`
--

INSERT INTO `kre2y_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'top', 'Top', 'Links for major types of users'),
(4, 'aboutjoomla', 'About Joomla', 'All about Joomla!'),
(5, 'parks', 'Australian Parks', 'Main menu for a site about Australian  parks'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(7, 'fruitshop', 'Fruit Shop', 'Menu for the sample shop site.');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_messages`
--

CREATE TABLE IF NOT EXISTS `kre2y_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `kre2y_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_modules`
--

CREATE TABLE IF NOT EXISTS `kre2y_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned default NULL,
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `kre2y_modules`
--

INSERT INTO `kre2y_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Banners', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["27"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(19, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 2, 1, '{"menutype":"usermenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(20, 'Top', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","maxdepth":"10","window_open":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(22, 'Australian Parks ', '', '', 2, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"parks","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB'),
(23, 'About Joomla!', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(68, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 'Extensions', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"6","showAllChildren":"0","tag_id":"","class_sfx":"-menu","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 'Site Map', '', '', 1, 'sitemapload', 42, '2013-05-28 02:51:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'This Site', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest News', '', '', 1, 'articleslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash: Latest', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 'News Flash: Random', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"rand()","layout":"vertical","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, 'search', 42, '2013-05-24 07:17:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"1","button_text":" ","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, 'userslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","linktowhat":"0","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, 'wrapperload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/fsf.org","add":"1","scrolling":"auto","width":"100%","height":"200","height_auto":"1","target":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_footer', 1, 1, '{"moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Login', '', '', 1, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 'Menu', '', '', 1, 'menuload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Latest Park Blogs', '', '', 6, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, 'en-GB'),
(48, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, 'customload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Weblinks', '', '', 1, 'user8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(56, 'Banners', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(57, 'Fruit Shop', '', '', 1, 'user9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"fruitshop","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articles Category', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(71, 'Top Menu (Atomic Template)', '', '', 1, 'atomic-topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 'Top Quote (Atomic Template)', '', '<hr />\r\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'What is Joomla?', '', '<img src="images/stories/demo/sam-6.png" border="0" alt="Global" align="left" style="margin-right: 10px;" /> <a href="http://www.joomla.org" target="_blank" title="Joomla">Joomla</a> is an award-winning content management system (CMS), which enables you to build Web sites and powerful online applications <a href="http://www.joomla.org" target="_blank" title="Joomla">...</a>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(78, 'What''s Module?', '', '<img src="images/stories/demo/sam-8.png" border="0" alt="Global" align="left" style="margin-right: 10px;" /> <a href="http://docs.joomla.org/What_is_module_chrome%3F" target="_blank" title="Module chrome">Module chrome</a> allows template designers to have a certain amount of control over the way the output from a Module is displayed in their <a href="http://docs.joomla.org/What_is_module_chrome%3F" target="_blank" title="Module chrome">...</a>', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(79, 'What is Component?', '', '<img src="images/stories/demo/sam-7.png" border="0" alt="Global" align="left" style="margin-right: 10px;" /> A component is a kind of Joomla! <a href="http://docs.joomla.org/Extension" target="_blank" title="Extension">extension</a>. Ultrices justo lorem ante pede scelerisque sodales accumsan...', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(80, 'What is plugin?', '', '<img src="images/stories/demo/sam-9.png" border="0" alt="Global" align="left" style="margin-right: 10px;" /> <a href="http://docs.joomla.org/Plugin" target="_blank" title="Plugin">A plugin</a> is a kind of Joomla! extension. Plugins provide routines which are associated with trigger events within Joomla.When a particular <a href="http://docs.joomla.org/Plugin" target="_blank" title="Plugin">...</a>', 1, 'user4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(81, 'Joomla Tutorial', '', '<p><strong>How to Apply a Module Class Suffix in Joomla! 1.6?</strong></p>\r\n<ol>\r\n<li>Login to backend</li>\r\n<li>Go to the Module Manager</li>\r\n<li>Select the Module you want to edit</li>\r\n<li>Type the Module Class Suffix into the parameters to the right</li>\r\n<li>Save the Setting</li>\r\n</ol>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(82, 'Download', '', 'T3 framework is free. <a href="http://www.joomlart.com/forums/forumdisplay.php?f=170" title="Go to our Forum for more information">Visit our Forum</a> for more information', 1, 'mega1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(83, 'Features Highlight', '', '<p>JA T3 template frameworks, you can:</p>\r\n<p><strong>- Support multi &amp; flexible layout</strong></p>\r\n<p><strong>- Iphone + Handheld support</strong></p>\r\n<p><strong>- Menu system is second to none</strong></p>\r\n<p><strong>- SEO &amp; Fast loading..</strong></p>\r\n<p><a href="http://www.joomlart.com/forums/downloads.php?do=cat&amp;id=145" title="download t3 framework">Download</a> - <a href="http://wiki.joomlart.com/wiki/JA_T3_Framework_2/Overview" title="wiki">wiki</a></p>', 1, 'mega2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(84, 'Vimeo', '', '<param name="width" value="300" />\r\n<param name="height" value="170" />\r\n<param name="allowfullscreen" value="true" />\r\n<param name="allowscriptaccess" value="always" />\r\n<param name="wmode" value="transparent" />\r\n<param name="src" value="http://vimeo.com/moogaloop.swf?clip_id=7047863&server=vimeo.com&show_title=1&show_byline=1&show_portrait=0&color=&fullscreen=1" />\r\n', 1, 'vimeo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(85, 'Advertisement', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"0","count":"4","cid":"1","catid":["77"],"tag_search":"0","ordering":"0","header_text":"Featured Links:","footer_text":"<a href=\\"http:\\/\\/www.joomla.org\\">Ads by Joomla!<\\/a>","moduleclass_sfx":"_text","cache":"1","cache_time":"900"}', 0, '*'),
(86, 'Top Message', '', 'This is the Blank & Clean template of JoomlArt T3 Framework. <a href="http://demo.t3.joomlart.com">Live demo</a> - <a href="http://www.joomlart.com/joomla/t3-framework-and-ja-purity-templates">More Info</a> - <a href="http://wiki.joomlart.com/wiki/JA_T3_Framework_2/Overview">Documentation</a> - <a href="http://wiki.joomlart.com/wiki/JA_T3_Framework_2/Guides">Developer Guide</a><br /> This demo will be refreshed every hour. You can access <a href="../../../../joomla16/administrator/index.php" title="administrator"><strong>Joomla Back-end Administration</strong></a> with user <span style="color:blue;"><strong>admin</strong></span>, password <span style="color:blue;"><strong>admin</strong></span>\r\n<a target="_blank" href="http://www.joomlart.com/joomla/jat3-framework/" class="ja-icon-video"><span>Video</span></a>', 1, 'top-panel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 'Advertisement', '', '<div class="bannergroup_text">\r\n<div class="bannerheader">Featured Links:</div>\r\n<div class="banneritem_text"><a href="../../../../joomla16/index.php?option=com_banners&task=click&bid=3" target="_blank">Joomla!</a> <br /> Joomla! The most popular and widely used Open Source CMS Project in the world.</div>\r\n<div class="banneritem_text"><a href="../../../../joomla16/index.php?option=com_banners&task=click&bid=4" target="_blank">JoomlaCode</a> <br /> JoomlaCode, development and distribution made easy.</div>\r\n<div class="banneritem_text"><a href="../../../../joomla16/index.php?option=com_banners&task=click&bid=5" target="_blank">Joomla! Extensions</a> <br /> Joomla! Components, Modules, Plugins and Languages by the bucket load.</div>\r\n<div class="banneritem_text"><a href="../../../../joomla16/index.php?option=com_banners&task=click&bid=6" target="_blank">Joomla! Shop</a> <br /> For all your Joomla! merchandise.</div>\r\n<div class="bannerfooter_text"><a href="http://www.joomla.org">Ads by Joomla!</a></div>\r\n</div>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"_text","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'Absolute', '', '<a href="http://demo.t3.joomlart.com/joomla15/" target="_blank" title="Switch to Joomla 1.5">Switch to Joomla 1.5</a>', 1, 'absolute', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"_absolute","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Joomla 2.5 Tutorial', '', '<p><strong>How to Apply a Module Class Suffix in Joomla! 2.5?</strong></p>\r\n<ol>\r\n<li>Login to backend</li>\r\n<li>Go to the Module Manager</li>\r\n<li>Select the Module you want to edit</li>\r\n<li>Type the Module Class Suffix into the parameters to the right</li>\r\n<li>Save the Setting</li>\r\n</ol>', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Absolute', '', '<a href="../joomla15/" target="_blank" title="Switch to Joomla 1.5">Switch to Joomla 1.5</a>', 0, 'absolute', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Top Message', '', 'This is the Blank &amp; Clean template of JoomlArt T3 Framework. <a href="../">Live demo</a> - <a href="http://www.joomlart.com/joomla/t3-framework-and-ja-purity-templates">More Info</a> - <a href="http://wiki.joomlart.com/wiki/JA_T3_Framework_2/Overview">Documentation</a> - <a href="http://wiki.joomlart.com/wiki/JA_T3_Framework_2/Guides">Developer Guide</a><br /> This demo will be refreshed every hour. You can access <a href="administrator/index.php" title="administrator"><strong>Joomla Back-end Administration</strong></a> with user <span style="color: blue;"><strong>admin</strong></span>, password <span style="color: blue;"><strong>admin</strong></span> <a class="ja-icon-video" href="http://www.joomlart.com/joomla/jat3-framework/" target="_blank"><span>Video</span></a>', 0, 'top-panel', 42, '2012-03-19 03:07:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(93, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(94, 'Thông báo', '', '', 0, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["27"],"count":"5","show_featured":"0","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(95, 'Autson Slideshow', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_AutsonSlideShow', 1, 1, NULL, 0, '*'),
(96, 'Slide trang chủ', '', '', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_AutsonSlideShow', 1, 0, '{"moduleclass_sfx":"","slidewidth":"620","slideheight":"300","menu_style":"0","timeinterval":"3000","velocity":"1","align":"center","backgroundcolor":"#000","linktarget":"_self","linkedtitle":"no","navigation":"hide","navigationalign":"left","arrows":"no","hidetools":"no","arrowspos":"default","numberspos":"default","border":"0","bordercolor":"#000","labelcolor":"#fff","labelsize":"22","titlefont":"BebasNeueRegular","desccolor":"#fff","descsize":"10","descfont":"arial","bgout":"#333","colorout":"#fff","bgover":"#000","colorover":"#fff","bgactive":"#cc3333","coloractive":"#fff","show_jquery":"yes","jver":"1.5.2","load":"onmod","img1":"images\\/slide_trangchu\\/slide_01.jpg","label1":"","desc1":"","link1":"","img2":"images\\/slide_trangchu\\/slide_02.jpg","label2":"","desc2":"","link2":"","img3":"images\\/slide_trangchu\\/slide_03.jpg","label3":"","desc3":"","link3":"","img4":"","label4":"","desc4":"","link4":"","img5":"","label5":"","desc5":"","link5":"","img6":"","label6":"","desc6":"","link6":"","img7":"","label7":"","desc7":"","link7":"","img8":"","label8":"","desc8":"","link8":"","img9":"","label9":"","desc9":"","link9":"","img10":"","label10":"","desc10":"","link10":"","img11":"","label11":"","desc11":"","link11":"","img12":"","label12":"","desc12":"","link12":"","img13":"","label13":"","desc13":"","link13":"","img14":"","label14":"","desc14":"","link14":"","img15":"","label15":"","desc15":"","link15":"","img16":"","label16":"","desc16":"","link16":"","img17":"","label17":"","desc17":"","link17":"","img18":"","label18":"","desc18":"","link18":"","img19":"","label19":"","desc19":"","link19":"","img20":"","label20":"","desc20":"","link20":""}', 0, '*'),
(97, 'Giới thiệu', '', '', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["30"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(98, 'Giới thiệu', '', '', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["30"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"1","introtext_limit":"1000","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(99, 'Tin cũ hơn', '', '', 1, 'content-bottom', 42, '2013-05-30 10:21:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["14","21","22","23","24","15","16","25","26","17","18","27","28","29","19"],"count":"5","show_featured":"0","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'BT Content Slider', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentslider', 1, 1, NULL, 0, '*'),
(101, 'Hoạt động ngoại khóa', '', '', 1, 'position-5', 42, '2013-06-07 03:35:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_AutsonSlideShow', 1, 1, '{"moduleclass_sfx":"","slidewidth":"300","slideheight":"230","menu_style":"0","timeinterval":"5000","velocity":"1","align":"center","backgroundcolor":"#000","linktarget":"_self","linkedtitle":"no","navigation":"hide","navigationalign":"left","arrows":"no","hidetools":"no","arrowspos":"default","numberspos":"default","border":"0","bordercolor":"#F52A2D","labelcolor":"#fff","labelsize":"14","titlefont":"arial","desccolor":"#fff","descsize":"11","descfont":"arial","bgout":"#333","colorout":"#fff","bgover":"#000","colorover":"#fff","bgactive":"#cc3333","coloractive":"#fff","show_jquery":"yes","jver":"1.5.2","load":"onmod","img1":"images\\/slide_hoatdong\\/slide_01.jpg","label1":"L\\u1ec5 k\\u00fd k\\u1ebft v\\u0103n b\\u1ea3n h\\u1ee3p t\\u00e1c gi\\u1eefa \\u0110HBKHN v\\u00e0 \\u0110H qu\\u1ed1c gia Formosa \\u0110\\u00e0i Loan ","desc1":"","link1":"","img2":"images\\/slide_hoatdong\\/slide_02.jpg","label2":"Gi\\u1ea3i b\\u00f3ng \\u0111\\u00e1 n\\u1eef sinh vi\\u00ean 2013 - Tr\\u01b0\\u1eddng \\u0111\\u1ea1i h\\u1ecdc B\\u00e1ch Khoa H\\u00e0 N\\u1ed9i ","desc2":"","link2":"","img3":"images\\/slide_hoatdong\\/slide_03.jpg","label3":"Tr\\u01b0\\u1eddng \\u0111\\u1ea1i h\\u1ecdc B\\u00e1ch Khoa H\\u00e0 N\\u1ed9i x\\u00e9t tuy\\u1ec3n th\\u1eb3ng ch\\u01b0\\u01a1ng tr\\u00ecnh Cao \\u0111\\u1eb3ng ngh\\u1ec1 Qu\\u1ed1c t\\u1ebf","desc3":"","link3":"","img4":"","label4":"","desc4":"","link4":"","img5":"","label5":"","desc5":"","link5":"","img6":"","label6":"","desc6":"","link6":"","img7":"","label7":"","desc7":"","link7":"","img8":"","label8":"","desc8":"","link8":"","img9":"","label9":"","desc9":"","link9":"","img10":"","label10":"","desc10":"","link10":"","img11":"","label11":"","desc11":"","link11":"","img12":"","label12":"","desc12":"","link12":"","img13":"","label13":"","desc13":"","link13":"","img14":"","label14":"","desc14":"","link14":"","img15":"","label15":"","desc15":"","link15":"","img16":"","label16":"","desc16":"","link16":"","img17":"","label17":"","desc17":"","link17":"","img18":"","label18":"","desc18":"","link18":"","img19":"","label19":"","desc19":"","link19":"","img20":"","label20":"","desc20":"","link20":""}', 0, '*'),
(102, 'Góc thư giãn', '', '<p><a href="https://www.facebook.com/groups/130985890393195/" target="_blank"><img src="images/bach-khoa-3_03.jpg" alt="" border="0" /></a></p>', 1, 'position-5', 42, '2013-06-06 03:57:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Liên hệ', '', '<p><a href="?option=com_contact&amp;view=contact&amp;id=1&amp;Itemid=565"><img src="images/bach-khoa-3_06.jpg" alt="" border="0" /></a></p>', 1, 'position-5', 42, '2013-06-04 07:14:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'Liên kết website', '', '', 1, 'position-5', 42, '2013-06-07 03:04:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentslider', 1, 1, '{"moduleclass_sfx":"","content_title":"","butlet":"0","next_back":"0","navigation_top":"0","navigation_right":"0","module_width":"305","auto_height":"1","items_per_cols":"2","items_per_rows":"1","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["31"],"limit_items":"12","user_id":"0","show_featured":"1","ordering":"created-asc","itemid":"101","show_title":"0","limit_title_by":"word","title_max_chars":"8","show_intro":"0","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","check_image_exist":"1","image_align":"center","image_thumb":"0","thumbnail_width":"150","thumbnail_height":"70","default_thumb":"0","hovereffect":"1","next_back_effect":"slide","bullet_effect":"slide","pause_hover":"1","interval":"5000","duration":"500","effect":"easeInQuad","auto_start":"1","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(105, 'Thông tin footer', '', '<table style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<h2 align="center" class="h2_footer">Bộ Môn Hệ Thống Thông tin - Viện Công nghệ Thông tin  & Truyền thông <br /> Đại học Bách Khoa Hà Nôi</h2>\r\n				\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<div class="div_footer_l">Địa chỉ :	P.604 Nhà B1 | Điện thoại : (84-4) 3 8692463 | Website : http:\\\\is.hut.edu.vn	</div></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 'footer', 42, '2013-06-07 08:28:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'BT Google Maps', '', '', 0, '', 42, '2013-05-28 02:32:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_googlemaps', 1, 1, NULL, 0, '*'),
(109, 'google map footer', '', '', 1, 'googlemap', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_JGMap', 1, 0, '{"width":"320","height":"160","mapName":"map","mapType":"ROADMAP","smallmap":"1","static":"0","lat":"21.005872205833377","lng":"105.84455214054036","zoom":"16","marker":"1","marker_lat":"21.00603245914303","marker_lng":"105.84287844211508","marker_title":"\\u0110\\u1ea1i h\\u1ecdc B\\u00e1ch Khoa H\\u00e0 N\\u1ed9i","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Google map', '', '', 1, 'kiencon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 1, '{"inputType":"address","address":"A2DN3 Nguyen Khanh Toan, Cau Giay, Ha Noi","latitue":"","longtitue":"","mapType":"roadmap","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","marker":"1","title":"Bowthemes","image":"","shadow":"","contentInfo":"","showContentOnload":"1","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(108, 'MOD_JGMAP', '', '', 0, '', 42, '2013-05-28 02:44:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_JGMap', 1, 1, NULL, 0, '*'),
(110, 'News', '', '', 1, 'content-top', 42, '2013-06-06 08:15:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_highlighter_gk4', 1, 1, '{"moduleclass_sfx":"","automatic_module_id":"1","module_unique_id":"newshighlighter1","data_source":"com_categories","com_categories":["18","27","28","29"],"com_articles":"","xmlfile":"","k2items":"","news_amount":"1","news_sort_value":"created","news_sort_order":"DESC","news_since":"","news_frontpage":"1","unauthorized":"0","only_frontpage":"0","startposition":"0","time_offset":"0","news_as_links":"1","show_title":"1","show_desc":"0","use_title_alias":"0","title_limit_type":"words","title_limit":"200","desc_limit_type":"chars","desc_limit":"40","interface":"0","interface_bg":"#819510","interface_radius":"26","introtext":"0","introtext_color":"#ffffff","introtext_value":"HOT NEWS","animation_type":"linear","hover_anim":"0","animation_speed":"35","animation_interval":"500","animation_fun":"Fx.Transitions.linear","clean_xhtml":"1","parse_plugins":"0","clean_plugins":"1","useCSS":"1","useScript":"2"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_modules_menu`
--

CREATE TABLE IF NOT EXISTS `kre2y_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_modules_menu`
--

INSERT INTO `kre2y_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 205),
(16, 435),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 234),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(22, 435),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 0),
(36, 304),
(37, 311),
(38, 300),
(39, 201),
(39, 207),
(39, 227),
(39, 229),
(39, 234),
(39, 242),
(39, 243),
(39, 244),
(39, 249),
(39, 251),
(39, 252),
(39, 253),
(39, 254),
(39, 255),
(39, 256),
(39, 257),
(39, 259),
(39, 260),
(39, 262),
(39, 263),
(39, 265),
(39, 266),
(39, 267),
(39, 268),
(39, 270),
(39, 271),
(39, 272),
(39, 273),
(39, 274),
(39, 275),
(39, 276),
(39, 277),
(39, 278),
(39, 279),
(39, 280),
(39, 281),
(39, 282),
(39, 283),
(39, 284),
(39, 285),
(39, 286),
(39, 296),
(39, 300),
(39, 301),
(39, 302),
(39, 303),
(39, 304),
(39, 305),
(39, 306),
(39, 307),
(39, 309),
(39, 310),
(39, 311),
(39, 312),
(39, 313),
(39, 316),
(39, 317),
(39, 318),
(39, 319),
(39, 320),
(39, 321),
(39, 322),
(39, 323),
(39, 324),
(39, 325),
(39, 326),
(39, 399),
(39, 400),
(39, 402),
(39, 403),
(39, 404),
(39, 405),
(39, 406),
(39, 409),
(39, 410),
(39, 411),
(39, 412),
(39, 413),
(39, 414),
(39, 415),
(39, 416),
(39, 417),
(39, 418),
(39, 419),
(39, 421),
(39, 422),
(39, 423),
(39, 424),
(39, 427),
(39, 429),
(39, 430),
(39, 431),
(39, 432),
(39, 433),
(39, 435),
(39, 436),
(39, 437),
(39, 443),
(39, 444),
(39, 447),
(39, 449),
(39, 450),
(39, 451),
(39, 452),
(39, 453),
(39, 456),
(39, 457),
(39, 458),
(39, 459),
(39, 462),
(39, 463),
(39, 464),
(39, 506),
(39, 507),
(39, 508),
(39, 509),
(39, 510),
(39, 511),
(39, 512),
(39, 513),
(39, 514),
(39, 515),
(39, 517),
(39, 518),
(39, 519),
(39, 520),
(39, 521),
(39, 522),
(39, 523),
(39, 524),
(39, 525),
(39, 526),
(39, 527),
(39, 528),
(39, 529),
(39, 530),
(39, 531),
(39, 532),
(39, 533),
(39, 534),
(39, 535),
(40, 313),
(41, 0),
(44, 312),
(45, 303),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(47, 435),
(48, 418),
(49, 417),
(49, 435),
(52, 294),
(52, 416),
(56, 0),
(57, 435),
(57, 464),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(60, 227),
(60, 229),
(60, 249),
(60, 251),
(60, 252),
(60, 253),
(60, 254),
(60, 255),
(60, 256),
(60, 257),
(60, 259),
(60, 260),
(60, 262),
(60, 263),
(60, 265),
(60, 266),
(60, 267),
(60, 270),
(60, 271),
(60, 272),
(60, 273),
(60, 274),
(60, 275),
(60, 276),
(60, 281),
(60, 282),
(60, 283),
(60, 284),
(60, 285),
(60, 286),
(60, 300),
(60, 301),
(60, 302),
(60, 303),
(60, 304),
(60, 305),
(60, 306),
(60, 307),
(60, 309),
(60, 310),
(60, 311),
(60, 312),
(60, 313),
(60, 314),
(60, 316),
(60, 317),
(60, 318),
(60, 319),
(60, 320),
(60, 321),
(60, 322),
(60, 323),
(60, 324),
(60, 325),
(60, 326),
(60, 402),
(60, 403),
(60, 404),
(60, 405),
(60, 406),
(60, 409),
(60, 410),
(60, 411),
(60, 412),
(60, 413),
(60, 414),
(60, 415),
(60, 416),
(60, 417),
(60, 418),
(60, 419),
(60, 420),
(60, 421),
(60, 422),
(60, 423),
(60, 424),
(60, 425),
(60, 426),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 435),
(78, 435),
(79, 435),
(80, 435),
(82, 0),
(83, 0),
(85, 201),
(85, 207),
(85, 227),
(85, 229),
(85, 234),
(85, 242),
(85, 243),
(85, 244),
(85, 249),
(85, 251),
(85, 252),
(85, 253),
(85, 254),
(85, 255),
(85, 256),
(85, 257),
(85, 259),
(85, 260),
(85, 262),
(85, 263),
(85, 265),
(85, 266),
(85, 267),
(85, 268),
(85, 270),
(85, 271),
(85, 272),
(85, 273),
(85, 274),
(85, 275),
(85, 276),
(85, 277),
(85, 278),
(85, 279),
(85, 280),
(85, 281),
(85, 282),
(85, 283),
(85, 284),
(85, 285),
(85, 286),
(85, 296),
(85, 300),
(85, 301),
(85, 302),
(85, 303),
(85, 304),
(85, 305),
(85, 306),
(85, 307),
(85, 309),
(85, 310),
(85, 311),
(85, 312),
(85, 313),
(85, 316),
(85, 317),
(85, 318),
(85, 319),
(85, 320),
(85, 321),
(85, 322),
(85, 323),
(85, 324),
(85, 325),
(85, 326),
(85, 399),
(85, 400),
(85, 402),
(85, 403),
(85, 404),
(85, 405),
(85, 406),
(85, 409),
(85, 410),
(85, 411),
(85, 412),
(85, 413),
(85, 414),
(85, 415),
(85, 416),
(85, 417),
(85, 418),
(85, 419),
(85, 421),
(85, 422),
(85, 423),
(85, 424),
(85, 427),
(85, 429),
(85, 430),
(85, 431),
(85, 432),
(85, 433),
(85, 435),
(85, 436),
(85, 437),
(85, 443),
(85, 444),
(85, 447),
(85, 449),
(85, 450),
(85, 451),
(85, 452),
(85, 453),
(85, 456),
(85, 457),
(85, 458),
(85, 459),
(85, 462),
(85, 463),
(85, 464),
(85, 506),
(85, 507),
(85, 508),
(85, 509),
(85, 510),
(85, 511),
(85, 512),
(85, 513),
(85, 514),
(85, 515),
(85, 517),
(85, 518),
(85, 519),
(85, 520),
(85, 521),
(85, 522),
(85, 523),
(85, 524),
(85, 525),
(85, 526),
(85, 527),
(85, 528),
(85, 529),
(85, 530),
(85, 531),
(85, 532),
(85, 533),
(85, 534),
(85, 535),
(87, 201),
(87, 207),
(87, 227),
(87, 229),
(87, 234),
(87, 242),
(87, 243),
(87, 244),
(87, 249),
(87, 251),
(87, 252),
(87, 253),
(87, 254),
(87, 255),
(87, 256),
(87, 257),
(87, 259),
(87, 260),
(87, 262),
(87, 263),
(87, 265),
(87, 266),
(87, 267),
(87, 268),
(87, 270),
(87, 271),
(87, 272),
(87, 273),
(87, 274),
(87, 275),
(87, 276),
(87, 277),
(87, 278),
(87, 279),
(87, 280),
(87, 281),
(87, 282),
(87, 283),
(87, 284),
(87, 285),
(87, 286),
(87, 296),
(87, 300),
(87, 301),
(87, 302),
(87, 303),
(87, 304),
(87, 305),
(87, 306),
(87, 307),
(87, 309),
(87, 310),
(87, 311),
(87, 312),
(87, 313),
(87, 316),
(87, 317),
(87, 318),
(87, 319),
(87, 320),
(87, 321),
(87, 322),
(87, 323),
(87, 324),
(87, 325),
(87, 326),
(87, 399),
(87, 400),
(87, 402),
(87, 403),
(87, 404),
(87, 405),
(87, 406),
(87, 409),
(87, 410),
(87, 411),
(87, 412),
(87, 413),
(87, 414),
(87, 415),
(87, 416),
(87, 417),
(87, 418),
(87, 419),
(87, 421),
(87, 422),
(87, 423),
(87, 424),
(87, 427),
(87, 429),
(87, 430),
(87, 431),
(87, 432),
(87, 433),
(87, 435),
(87, 436),
(87, 437),
(87, 443),
(87, 444),
(87, 447),
(87, 449),
(87, 450),
(87, 451),
(87, 452),
(87, 453),
(87, 456),
(87, 457),
(87, 458),
(87, 459),
(87, 462),
(87, 463),
(87, 464),
(87, 506),
(87, 507),
(87, 508),
(87, 509),
(87, 510),
(87, 511),
(87, 512),
(87, 513),
(87, 514),
(87, 515),
(87, 517),
(87, 518),
(87, 519),
(87, 520),
(87, 521),
(87, 522),
(87, 523),
(87, 524),
(87, 525),
(87, 526),
(87, 527),
(87, 528),
(87, 529),
(87, 530),
(87, 531),
(87, 532),
(87, 533),
(87, 534),
(87, 535),
(89, 201),
(89, 207),
(89, 227),
(89, 229),
(89, 234),
(89, 242),
(89, 243),
(89, 244),
(89, 249),
(89, 251),
(89, 252),
(89, 253),
(89, 254),
(89, 255),
(89, 256),
(89, 257),
(89, 259),
(89, 260),
(89, 262),
(89, 263),
(89, 265),
(89, 266),
(89, 267),
(89, 268),
(89, 270),
(89, 271),
(89, 272),
(89, 273),
(89, 274),
(89, 275),
(89, 276),
(89, 277),
(89, 278),
(89, 279),
(89, 280),
(89, 281),
(89, 282),
(89, 283),
(89, 284),
(89, 285),
(89, 286),
(89, 296),
(89, 300),
(89, 301),
(89, 302),
(89, 303),
(89, 304),
(89, 305),
(89, 306),
(89, 307),
(89, 309),
(89, 310),
(89, 311),
(89, 312),
(89, 313),
(89, 316),
(89, 317),
(89, 318),
(89, 319),
(89, 320),
(89, 321),
(89, 322),
(89, 323),
(89, 324),
(89, 325),
(89, 326),
(89, 399),
(89, 400),
(89, 402),
(89, 403),
(89, 404),
(89, 405),
(89, 406),
(89, 409),
(89, 410),
(89, 411),
(89, 412),
(89, 413),
(89, 414),
(89, 415),
(89, 416),
(89, 417),
(89, 418),
(89, 419),
(89, 421),
(89, 422),
(89, 423),
(89, 424),
(89, 427),
(89, 429),
(89, 430),
(89, 431),
(89, 432),
(89, 433),
(89, 435),
(89, 436),
(89, 437),
(89, 443),
(89, 444),
(89, 447),
(89, 449),
(89, 450),
(89, 451),
(89, 452),
(89, 453),
(89, 456),
(89, 457),
(89, 458),
(89, 459),
(89, 462),
(89, 463),
(89, 464),
(89, 506),
(89, 507),
(89, 508),
(89, 509),
(89, 510),
(89, 511),
(89, 512),
(89, 513),
(89, 514),
(89, 515),
(89, 517),
(89, 518),
(89, 519),
(89, 520),
(89, 521),
(89, 522),
(89, 523),
(89, 524),
(89, 525),
(89, 526),
(89, 527),
(89, 528),
(89, 529),
(89, 530),
(89, 531),
(89, 532),
(89, 533),
(89, 534),
(89, 535),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(96, 101),
(97, 0),
(98, 0),
(99, 101),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(107, 0),
(109, 0),
(110, 101);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `kre2y_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned default NULL,
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_overrider`
--

CREATE TABLE IF NOT EXISTS `kre2y_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_redirect_links`
--

CREATE TABLE IF NOT EXISTS `kre2y_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) default NULL,
  `new_url` varchar(255) default NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kre2y_redirect_links`
--

INSERT INTO `kre2y_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/bachkhoa/index.php/com-finder/index.php', '', 'http://localhost/bachkhoa/index.php/com-finder/lien-he', '', 11, 0, '2013-05-28 18:01:31', '0000-00-00 00:00:00'),
(2, 'http://demo.ipress.vn/bachkhoa/index.php/com-finder/modules/mod_bt_contentslider/tmpl/images/loading.gif', '', 'http://demo.ipress.vn/bachkhoa/index.php/com-finder/nhan-su', '', 15, 0, '2013-06-06 09:24:58', '0000-00-00 00:00:00'),
(3, 'http://demo.ipress.vn/bachkhoa/index.php/com-finder/nghien-cuu/modules/mod_bt_contentslider/tmpl/images/loading.gif', '', 'http://demo.ipress.vn/bachkhoa/index.php/com-finder/nghien-cuu/nhom-nghien-cuu', '', 1, 0, '2013-06-07 04:55:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_schemas`
--

CREATE TABLE IF NOT EXISTS `kre2y_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_schemas`
--

INSERT INTO `kre2y_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.11');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_session`
--

CREATE TABLE IF NOT EXISTS `kre2y_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_session`
--

INSERT INTO `kre2y_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('e575881c787064f8eee08543cd380bba', 0, 1, '1370661771', '__default|a:7:{s:15:"session.counter";i:13;s:19:"session.timer.start";i:1370661433;s:18:"session.timer.last";i:1370661771;s:17:"session.timer.now";i:1370661771;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:1:{i:0;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_template_styles`
--

CREATE TABLE IF NOT EXISTS `kre2y_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `kre2y_template_styles`
--

INSERT INTO `kre2y_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(1, 'rhuk_milkyway', 0, '0', 'Milkyway - Default', '{"colorVariation":"blue","backgroundVariation":"blue","widthStyle":"fmax"}'),
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management Beta","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","highContrast":"0","boldText":"0","altMenu":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}'),
(114, 'beez_20', 0, '0', 'Beez2 - Parks Site', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"","sitetitle":"Australian Parks","sitedescription":"Parks Sample Site","navposition":"center","templatecolor":"nature"}'),
(115, 'ja_t3_blank', 0, '1', 'JA_T3_Blank - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_updates`
--

CREATE TABLE IF NOT EXISTS `kre2y_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=474 ;

--
-- Dumping data for table `kre2y_updates`
--

INSERT INTO `kre2y_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(268, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(2, 3, 0, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', ''),
(3, 3, 0, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', ''),
(4, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(5, 3, 0, 0, 'JA Comment Package for Joomla 2.5 & 3.0', '', 'com_jacomment', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', ''),
(6, 3, 0, 0, 'JA Extenstion Manager Component for J25 & J31', '', 'com_jaextmanager', 'component', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', ''),
(7, 3, 0, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', ''),
(8, 3, 0, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', ''),
(9, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(10, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', ''),
(11, 3, 0, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', ''),
(12, 3, 0, 0, 'JA Voice component for Joomla 1.7', '', 'com_javoice', 'component', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(13, 3, 0, 0, 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', ''),
(14, 3, 0, 0, 'JA Argo Template', '', 'ja_argo', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', ''),
(15, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(16, 3, 0, 0, 'JA Blazes Template for J25 & J30', '', 'ja_blazes', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', ''),
(17, 3, 0, 0, 'JA Brisk Template', '', 'ja_brisk', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', ''),
(18, 3, 0, 0, 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', ''),
(19, 3, 0, 0, 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', ''),
(20, 3, 0, 0, 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', ''),
(21, 3, 0, 0, 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', ''),
(22, 3, 0, 0, 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', ''),
(23, 3, 0, 0, 'JA Elastica Template for Joomla 2.5', '', 'ja_elastica', 'template', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', ''),
(24, 3, 0, 0, 'JA Erio Template for Joomla 2.5', '', 'ja_erio', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', ''),
(25, 3, 0, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', ''),
(26, 3, 0, 0, 'JA Fubix Template for J25 & J30', '', 'ja_fubix', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', ''),
(27, 3, 0, 0, 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', ''),
(28, 3, 0, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', ''),
(29, 3, 0, 0, 'JA Ironis Template for Joomla 2.5', '', 'ja_ironis', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', ''),
(30, 3, 0, 0, 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', ''),
(31, 3, 0, 0, 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', ''),
(32, 3, 0, 0, 'Ja Lime Template for Joomla 2.5', '', 'ja_lime', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', ''),
(33, 3, 0, 0, 'JA Mendozite Template for J25 & J30', '', 'ja_mendozite', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', ''),
(34, 3, 0, 0, 'JA Mero Template', '', 'ja_mero', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', ''),
(35, 3, 0, 0, 'JA Mers Template for J25 & J30', '', 'ja_mers', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', ''),
(36, 3, 0, 0, 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', ''),
(37, 3, 0, 0, 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', ''),
(38, 3, 0, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', ''),
(39, 3, 0, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', ''),
(40, 3, 0, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', ''),
(41, 3, 0, 0, 'JA Norite Template for Joomla 2.5', '', 'ja_norite', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', ''),
(42, 3, 0, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', ''),
(43, 3, 0, 0, 'JA ores template for Joomla 2.5', '', 'ja_ores', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', ''),
(44, 3, 0, 0, 'JA Orisite Template  for J25 & J30', '', 'ja_orisite', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', ''),
(45, 3, 0, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', ''),
(46, 3, 0, 0, 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', ''),
(47, 3, 0, 0, 'JA Puresite Template for J25 & J30', '', 'ja_puresite', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', ''),
(48, 3, 0, 0, 'JA Purity II template for Joomla 2.5', '', 'ja_purity_ii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', ''),
(49, 3, 0, 0, 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', ''),
(50, 3, 0, 0, 'JA Rasite Template for Joomla 2.5', '', 'ja_rasite', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', ''),
(51, 3, 0, 0, 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', ''),
(52, 3, 0, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', ''),
(53, 3, 0, 0, 'JA System Pager plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(272, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(55, 3, 0, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', ''),
(56, 3, 0, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', ''),
(57, 3, 0, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', ''),
(58, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(59, 3, 0, 0, 'JA Tiris Template for J25 & J30', '', 'ja_tiris', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', ''),
(60, 3, 0, 0, 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', ''),
(61, 3, 0, 0, 'JA University Template for J25 & J31', '', 'ja_university', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', ''),
(62, 3, 0, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', ''),
(63, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(64, 3, 0, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', ''),
(65, 3, 0, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', ''),
(66, 3, 0, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', ''),
(67, 3, 0, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', ''),
(68, 3, 0, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', ''),
(69, 3, 0, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', ''),
(70, 3, 0, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', ''),
(71, 3, 0, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', ''),
(72, 3, 0, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', ''),
(73, 3, 0, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', ''),
(74, 3, 0, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', ''),
(75, 3, 0, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', ''),
(76, 3, 0, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', ''),
(77, 3, 0, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', ''),
(78, 3, 0, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', ''),
(79, 3, 0, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', ''),
(80, 3, 0, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', ''),
(81, 3, 0, 0, 'JA Tabs Plugin for Joomla 2.5', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', ''),
(82, 3, 0, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', ''),
(83, 3, 0, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', ''),
(84, 3, 0, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', ''),
(85, 3, 0, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', ''),
(86, 3, 0, 0, 'JA Tiris Jshopping theme for J25 & J30', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', ''),
(87, 3, 0, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', ''),
(88, 3, 0, 0, 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', ''),
(89, 3, 0, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', ''),
(90, 3, 0, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', ''),
(91, 3, 0, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', ''),
(92, 3, 0, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', ''),
(93, 3, 0, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', ''),
(94, 3, 0, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', ''),
(95, 3, 0, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', ''),
(96, 3, 0, 0, 'JA Accordion Module for J25 & J31', '', 'mod_jaaccordion', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', ''),
(97, 3, 0, 0, 'JA Animation module for Joomla 2.5 & 3.0', '', 'mod_jaanimation', 'module', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', ''),
(98, 3, 0, 0, 'JA Bulletin Module for J25 & J31', '', 'mod_jabulletin', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', ''),
(99, 3, 0, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.0', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', ''),
(100, 3, 0, 0, 'JA Content Popup Module for J25 & J31', '', 'mod_jacontentpopup', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', ''),
(101, 3, 0, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', ''),
(102, 3, 0, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', ''),
(103, 3, 0, 0, 'JA Content Slider Module for J25 & J31', '', 'mod_jacontentslider', 'module', '', 0, '2.6.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', ''),
(104, 3, 0, 0, 'JA CountDown Module for J25 & J31', '', 'mod_jacountdown', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', ''),
(105, 3, 0, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', ''),
(106, 3, 0, 0, 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', ''),
(107, 3, 0, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', ''),
(108, 3, 0, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', ''),
(109, 3, 0, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', ''),
(110, 3, 0, 0, 'JAEC Halloween Module for Joomla 2.5 & 3.0', '', 'mod_jahalloween', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', ''),
(111, 3, 0, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.0 stab', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', ''),
(112, 3, 0, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', ''),
(113, 3, 0, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', ''),
(114, 3, 0, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', ''),
(115, 3, 0, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', ''),
(116, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(117, 3, 0, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', ''),
(118, 3, 0, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', ''),
(119, 3, 0, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', ''),
(120, 3, 0, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', ''),
(121, 3, 0, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', ''),
(122, 3, 0, 0, 'JA Login module for J25 & J31', '', 'mod_jalogin', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', ''),
(123, 3, 0, 0, 'JA Masshead Module for J25 & J31', '', 'mod_jamasshead', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', ''),
(124, 3, 0, 0, 'JA News Featured Module for J25 & J31', '', 'mod_janews_featured', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', ''),
(125, 3, 0, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', ''),
(126, 3, 0, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', ''),
(127, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(128, 3, 0, 0, 'JA Newsticker Module for J25 & J31', '', 'mod_janewsticker', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', ''),
(129, 3, 0, 0, 'JA Quick Contact Module for J25 & J31', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', ''),
(130, 3, 0, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.0 stab', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', ''),
(131, 3, 0, 0, 'JA SideNews Module for J25 & J31', '', 'mod_jasidenews', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', ''),
(132, 3, 0, 0, 'JA Slideshow Module for J25 & J31', '', 'mod_jaslideshow', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', ''),
(133, 3, 0, 0, 'JA Slideshow Lite Module for J25 & J31', '', 'mod_jaslideshowlite', 'module', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', ''),
(134, 3, 0, 0, 'JA Soccerway Module for J25 & J30', '', 'mod_jasoccerway', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', ''),
(135, 3, 0, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', ''),
(136, 3, 0, 0, 'JA Toppanel Module for Joomla 2.5', '', 'mod_jatoppanel', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', ''),
(137, 3, 0, 0, 'JA Twitter Module for J25 & J31', '', 'mod_jatwitter', 'module', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', ''),
(138, 3, 0, 0, 'JA Voice: Module List of Voices J17', '', 'mod_javlist_voices', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(139, 3, 0, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', ''),
(140, 3, 0, 0, 'JA Voice: Module Work Flow J17', '', 'mod_javwork_flow', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(141, 3, 0, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.0', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', ''),
(142, 3, 0, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.0', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', ''),
(143, 3, 0, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.0', '', 'jacommenton', 'plugin', 'button', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', ''),
(144, 3, 0, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.0', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', ''),
(145, 3, 0, 0, 'JA Bookmark plugin for J2.5 & J3.1', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', ''),
(146, 3, 0, 0, 'JA Comment Plugin for Joomla 2.5 & 3.0', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', ''),
(147, 3, 0, 0, 'JA Disqus Debate Echo plugin for J2.5 & J3.1', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', ''),
(148, 3, 0, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', ''),
(149, 3, 0, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', ''),
(150, 3, 0, 0, 'JA Thumbnail Plugin for J25 & J30', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', ''),
(151, 3, 0, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', ''),
(152, 3, 0, 0, 'JA Typo Button Plugin for J25 & J31', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', ''),
(153, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(154, 3, 0, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', ''),
(155, 3, 0, 0, 'Multi Capcha Engine Plugin for J25 & J30', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', ''),
(156, 3, 0, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', ''),
(157, 3, 0, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', ''),
(158, 3, 0, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', ''),
(159, 3, 0, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', ''),
(160, 3, 0, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', ''),
(161, 3, 0, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', ''),
(162, 3, 0, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.0', '', 'jacomment', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', ''),
(163, 3, 0, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', ''),
(164, 3, 0, 0, 'JA System Google Map plugin for J2.5 & J3.1', '', 'jagooglemap', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', ''),
(165, 3, 0, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', ''),
(166, 3, 0, 0, 'JA System Lazyload Plugin for J25 & J31', '', 'jalazyload', 'plugin', 'system', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', ''),
(167, 3, 0, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.0', '', 'janrain', 'plugin', 'system', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', ''),
(168, 3, 0, 0, 'JA Popup Plugin for J25 & J31', '', 'japopup', 'plugin', 'system', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', ''),
(169, 3, 0, 0, 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', ''),
(170, 3, 0, 0, 'JA System Social Feed Plugin for J25 & J31', '', 'jasocial_feed', 'plugin', 'system', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', ''),
(271, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(172, 3, 0, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', ''),
(173, 3, 0, 0, 'JA Tabs Plugin for J25 & J30', '', 'jatabs', 'plugin', 'system', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', ''),
(269, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(175, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(176, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.4', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(177, 3, 0, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', ''),
(178, 4, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(179, 4, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(180, 4, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(181, 4, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(182, 4, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(183, 4, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(184, 4, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(185, 4, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(186, 4, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(187, 4, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(188, 4, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(189, 4, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(190, 4, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(191, 4, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(192, 4, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(193, 4, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(194, 4, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(195, 4, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(196, 4, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(197, 4, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(198, 4, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(199, 4, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(200, 4, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(201, 4, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(202, 4, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.9.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(203, 4, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(204, 4, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(205, 4, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(206, 4, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(207, 4, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(208, 4, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(209, 4, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(210, 4, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(211, 4, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(212, 4, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(213, 4, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(214, 4, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(215, 4, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(216, 4, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(217, 4, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(218, 4, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(219, 4, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(220, 4, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(221, 4, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(222, 4, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(223, 4, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(224, 4, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(225, 4, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(226, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(227, 4, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(228, 4, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(229, 4, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(230, 4, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(231, 4, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(232, 4, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(233, 4, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(234, 4, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(235, 4, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(236, 4, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(237, 4, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(238, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(239, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(240, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(241, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(242, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(243, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(244, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(245, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(246, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(247, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(248, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(249, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(250, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(251, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(252, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(253, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(254, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(255, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(256, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(257, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(258, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(259, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(260, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(261, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(262, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(270, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(264, 3, 0, 0, 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', ''),
(265, 3, 0, 0, 'JA K2 Filter Module for J25 & J30', '', 'mod_jak2filter', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', ''),
(266, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(267, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(273, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(274, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(275, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(276, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(277, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(278, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(279, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(280, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(281, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(282, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(283, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.1', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(284, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(285, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(286, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(287, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(288, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(289, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(290, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.1', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(291, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(292, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(293, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '');
INSERT INTO `kre2y_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(294, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(295, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(296, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(297, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(298, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(299, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.1', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(300, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(301, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(302, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(303, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(304, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(305, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(306, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(307, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(308, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.1', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(309, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(310, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(311, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(312, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(313, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(314, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(315, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(316, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(317, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(318, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.1', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(319, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(320, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(321, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(322, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(323, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(324, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(325, 3, 0, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.0.0b', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', ''),
(326, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(327, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(328, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(329, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(330, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(331, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(332, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(333, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(334, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(335, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(336, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(337, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(338, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(339, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(340, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(341, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(342, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(343, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(344, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(345, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(346, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(347, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(348, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(349, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(350, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(351, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(352, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(353, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(354, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(355, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(356, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(357, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(358, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(359, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(360, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(361, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(362, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(363, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(364, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(365, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(366, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(367, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(368, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(369, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(370, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(371, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(372, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(373, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(374, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(375, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(376, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(377, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(378, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(379, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(380, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(381, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(382, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(383, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(384, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(385, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(386, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(387, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(388, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(389, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(390, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(391, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(392, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(393, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(394, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(395, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(396, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(397, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(398, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(399, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(400, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(401, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(402, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(403, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(404, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(405, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(406, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(407, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(408, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(409, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(410, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(411, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(412, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(413, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(414, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(415, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(416, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(417, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(418, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(419, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(420, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(421, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(422, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(423, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(424, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(425, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(426, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(427, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(428, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(429, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(430, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(431, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(432, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(433, 3, 0, 0, 'JA Bookmark plugin for J2.5 & J3.1', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', ''),
(434, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(435, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(436, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(437, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(438, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(439, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(440, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(441, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(442, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(443, 3, 0, 0, 'JA Puresite Template for J25 & J30', '', 'ja_puresite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', ''),
(444, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(445, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(446, 3, 0, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', ''),
(447, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(448, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(449, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(450, 3, 0, 0, 'JA Bookmark plugin for J2.5 & J3.1', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', ''),
(451, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(452, 3, 10001, 0, 'JA T3v2 System Plugin for J25 & J31', '', 'jat3', 'plugin', 'system', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', ''),
(453, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(454, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(455, 3, 0, 0, 'JA Amazon S3 for joomla 2.5 & 3.0', '', 'com_jaamazons3', 'component', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', ''),
(456, 3, 0, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2filter', 'component', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', ''),
(457, 3, 0, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', ''),
(458, 3, 0, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', ''),
(459, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(460, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(461, 3, 0, 0, 'JA Puresite Template for J25 & J30', '', 'ja_puresite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', ''),
(462, 3, 0, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', ''),
(463, 3, 0, 0, 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', ''),
(464, 3, 0, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', ''),
(465, 3, 0, 0, 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', ''),
(466, 3, 0, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', ''),
(467, 3, 0, 0, 'JA Voice  Work Flow Module for J2.5 & J3.1', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', ''),
(468, 3, 0, 0, 'JA Bookmark plugin for J2.5 & J3.1', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', ''),
(469, 3, 0, 0, 'JA K2 Filter Plg for J25 & J30', '', 'jak2filter', 'plugin', 'k2', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', ''),
(470, 3, 0, 0, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '1.2.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', ''),
(471, 3, 0, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', ''),
(472, 4, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(473, 4, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_update_categories`
--

CREATE TABLE IF NOT EXISTS `kre2y_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_update_sites`
--

CREATE TABLE IF NOT EXISTS `kre2y_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kre2y_update_sites`
--

INSERT INTO `kre2y_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1370660618),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1370660618),
(3, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1370660620),
(4, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1370660620),
(5, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        ', 0, 1370490033),
(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 1, 1370660618);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `kre2y_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `kre2y_update_sites_extensions`
--

INSERT INTO `kre2y_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(3, 10001),
(5, 10031),
(6, 10031);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_usergroups`
--

CREATE TABLE IF NOT EXISTS `kre2y_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kre2y_usergroups`
--

INSERT INTO `kre2y_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(12, 2, 15, 16, 'Customer Group'),
(10, 3, 12, 13, 'Shop Suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_users`
--

CREATE TABLE IF NOT EXISTS `kre2y_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `kre2y_users`
--

INSERT INTO `kre2y_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(42, 'Super User', 'quantri', 'admin@gmail.com', 'f9d2db430063613d7a62fdac30091f89:AYIKekM8wajE2uAuWwnBEUvuhrfoErsx', 'deprecated', 0, 1, '2013-05-24 02:40:31', '2013-06-08 03:03:36', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_user_notes`
--

CREATE TABLE IF NOT EXISTS `kre2y_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_user_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_user_profiles`
--

CREATE TABLE IF NOT EXISTS `kre2y_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `kre2y_user_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `kre2y_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kre2y_user_usergroup_map`
--

INSERT INTO `kre2y_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_viewlevels`
--

CREATE TABLE IF NOT EXISTS `kre2y_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kre2y_viewlevels`
--

INSERT INTO `kre2y_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,7,8]'),
(4, 'Customer Access Level', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `kre2y_weblinks`
--

CREATE TABLE IF NOT EXISTS `kre2y_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kre2y_weblinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `kre2y_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `kre2y_wf_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text,
  `users` text NOT NULL,
  `types` text,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) default NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kre2y_wf_profiles`
--

INSERT INTO `kre2y_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,10,6,7,8', '', 0, NULL, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap', 1, 1, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5,10', '', 1, NULL, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap', 0, 2, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]}}'),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,10,6,7,8', '', 0, NULL, 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,charmap', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"},"lists":{"buttons":["numlist","bullist"]}}');
