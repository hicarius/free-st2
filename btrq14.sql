-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 01 Février 2016 à 22:25
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `btrq14`
--

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_assets`
--

CREATE TABLE `x8n17_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_assets`
--

INSERT INTO `x8n17_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 137, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 98, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 99, 102, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 103, 104, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 105, 106, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 107, 108, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 109, 110, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 111, 114, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 115, 116, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 100, 101, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 112, 113, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 117, 118, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 119, 120, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 121, 122, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 123, 124, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 125, 126, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 127, 128, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Popular Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 76, 77, 2, 'com_modules.module.89', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 78, 79, 2, 'com_modules.module.90', 'Latest Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 80, 81, 2, 'com_modules.module.91', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 82, 83, 2, 'com_modules.module.92', 'Ce qu''on fait (contenu)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(60, 18, 84, 85, 2, 'com_modules.module.93', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Etude de votre prêt immobilier', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 129, 130, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(63, 18, 86, 87, 2, 'com_modules.module.94', 'Blog des internautes', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(69, 18, 88, 89, 2, 'com_modules.module.97', 'Youtube Widget Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(70, 18, 90, 91, 2, 'com_modules.module.98', 'sd', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(71, 18, 92, 93, 2, 'com_modules.module.99', 'Ce qu''on fait', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(101, 18, 94, 95, 2, 'com_modules.module.100', 'Komento Activities', '{}'),
(102, 18, 96, 97, 2, 'com_modules.module.101', 'Komento Comments', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(103, 1, 131, 132, 1, 'com_komento', 'com_komento', '{}'),
(104, 1, 133, 134, 1, 'com_jdeveloper', 'JDeveloper', '{}'),
(109, 1, 135, 136, 1, 'com_rssfeed', 'com_rssfeed', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_associations`
--

CREATE TABLE `x8n17_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_banners`
--

CREATE TABLE `x8n17_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_banner_clients`
--

CREATE TABLE `x8n17_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_banner_tracks`
--

CREATE TABLE `x8n17_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_categories`
--

CREATE TABLE `x8n17_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_categories`
--

INSERT INTO `x8n17_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'non-categorise', 'com_content', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'non-categorise', 'com_banners', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'non-categorise', 'com_contact', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'non-categorise', 'com_newsfeeds', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'non-categorise', 'com_users', 'Non catégorisé', 'non-categorise', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 192, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_contact_details`
--

CREATE TABLE `x8n17_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_content`
--

CREATE TABLE `x8n17_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_content`
--

INSERT INTO `x8n17_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Etude de votre prêt immobilier', 'etude-de-votre-pret-immobilier', '<div class="bg-orange radius-8 bg-shadow-dark paypal_payer_button">Je commande par CB ou Paypal</div>', '', 1, 2, '2013-11-16 00:00:00', 192, '', '2016-01-30 20:51:50', 192, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 241, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_contentitem_tag_map`
--

CREATE TABLE `x8n17_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Contenu de la table `x8n17_contentitem_tag_map`
--

INSERT INTO `x8n17_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2016-01-30 20:51:50', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_content_frontpage`
--

CREATE TABLE `x8n17_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_content_rating`
--

CREATE TABLE `x8n17_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_content_types`
--

CREATE TABLE `x8n17_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_content_types`
--

INSERT INTO `x8n17_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_core_log_searches`
--

CREATE TABLE `x8n17_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_extensions`
--

CREATE TABLE `x8n17_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_extensions`
--

INSERT INTO `x8n17_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"fr-FR","site":"fr-FR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"df471559c344846a5704c6660821451f"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `x8n17_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'French (fr-FR)', 'language', 'fr-FR', '', 0, 1, 0, 0, '{"name":"French (fr-FR)","type":"language","creationDate":"October 2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/www.joomla.fr","version":"3.4.7.1","description":"French site language for Joomla 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'French (FR)', 'language', 'fr-FR', '', 1, 1, 0, 0, '{"name":"French (FR)","type":"language","creationDate":"October 2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/www.joomla.fr","version":"3.4.7.1","description":"French administrator language for Joomla 3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'French_fr-FR', 'package', 'pkg_fr-FR', '', 0, 1, 1, 0, '{"name":"French_fr-FR","type":"package","creationDate":"22\\/10\\/2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.4.7.1","description":"<div style=\\"text-align:left;\\">\\n\\n<h3>Joomla! 3.4.7 Full French (fr-FR) Language Package - Version 3.4.7.1<\\/h3>\\n\\n<h3>Paquet de langue Joomla! 3.4.7 fran\\u00e7ais (fr-FR) complet - Version 3.4.7.1<\\/h3>\\n\\n<\\/div>","group":"","filename":"pkg_fr-FR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'minimalist', 'template', 'minimalist', '', 0, 1, 1, 0, '{"name":"minimalist","type":"template","creationDate":"15\\/05\\/2014","author":"JoomSpirit","copyright":"","authorEmail":"contact@joomspirit.com","authorUrl":"http:\\/\\/www.joomspirit.com","version":"2.4","description":" \\n\\t<script src=\\"..\\/templates\\/minimalist\\/lib\\/js\\/jscolor\\/jscolor.js\\" type=\\"text\\/javascript\\"><\\/script>\\n\\t<link rel=\\"stylesheet\\" href=\\"..\\/templates\\/minimalist\\/css\\/admin.css\\" type=\\"text\\/css\\" \\/>\\n\\t<link href=''http:\\/\\/fonts.googleapis.com\\/css?family=Comfortaa:400,300,700|Abel|Arizonia|Berkshire+Swash|Cookie|Dosis:400,200,300,500,600,700,800|Droid+Sans:400,700|Francois+One|Gruppo|Playball|Italianno|Lato:400,100,300,400italic,300italic,100italic,700,700italic,900,900italic|Lobster|Lora:400,400italic,700,700italic|Montserrat:400,700|Oleo+Script|Open+Sans+Condensed:300,300italic,700|Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800italic,800|Oswald:400,300,700|Oxygen:400,300,700|PT+Sans+Narrow:400,700|PT+Sans:400,400italic,700,700italic|Prosto+One|Quicksand:400,300,700|Roboto+Condensed:400,300,300italic,400italic,700,700italic|Rokkitt:400,700|Share:400,400italic,700,700italic|Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic|Ubuntu+Condensed|Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic|Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic-ext,latin-ext,cyrillic'' rel=''stylesheet'' type=''text\\/css''>\\n\\tIMPORTANT : Read the settings for this template\\n\\tAll informations is in your manual. You must double click on the file manual.html\\n\\tYou will find in how to configure the template, use the typography and the module positions for your modules.\\n\\t","group":"","filename":"templateDetails"}', '{"bg_general":"stripe01","uppercase":"no","sticky_menu":"yes","scroll_to_top":"yes","color_text_general":"555555","border_image":"js-border","width_website":"980px","width_left":"200px","width_right":"200px","user1_width":"32","user3_width":"32","user4_width":"32","user6_width":"32","website_title":"Minimalist","color_website_title":"ff0000","font_website_title":"Comfortaa","custom_font_website_title":"","website_title_fontsize":"50px","color_main_menu_item":"999999","color_main_menu_item_active":"ff0000","font_menu":"Dosis","custom_font_menu":"","main_menu_fontsize":"100%","text_menu":"menu","colorh1":"D73C64","font_h1":"Dosis","custom_font_h1":"","h1_fontsize":"220%","colorh2":"663D26","font_h2":"Dosis","custom_font_h2":"","module_title_fontsize":"130%","h2_fontsize":"150%","h3_fontsize":"115%","h4_fontsize":"110%","h5_fontsize":"100%","font_content":"Helvetica","custom_font_content":"","fontSize":"0.85em","color_link":"D73C64","color_link_hover":"ff0000","text_social_icons":"","color_text_social":"555555","twitter":"","facebook":"","rss":"","linkedin":"","google":"","instagram":"","pinterest":"","renren":"","weibo":"","xing":"","flickr":"","youtube":"","vimeo":"","tumblr":"","google1":"no","custom_icon01":"","custom_icon01_text":"","custom_icon01_img":"","custom_icon02":"","custom_icon02_text":"","custom_icon02_img":"","custom_icon03":"","custom_icon03_text":"","custom_icon03_img":"","custom_icon04":"","custom_icon04_text":"","custom_icon04_img":"","responsive":"yes","column_responsive":"no","animation":"yes","animation_social":"yes","animation_social_text":"enter top move 10px after 1.5s over 1.33s","animation_translate":"yes","animation_translate_text":"enter top move 10px after 1.5s over 1.33s","animation_logo":"no","animation_logo_text":"enter left wait 0.3s move 20px over 1.33s","animation_menu":"no","animation_menu_text":"enter top move 0px over 2s","animation_breadcrumb":"yes","animation_breadcrumb_text":"enter top move 12px over 1.33s","animation_left":"yes","animation_left_text":"enter top move 12px over 1.33s","animation_right":"yes","animation_right_text":"enter top move 12px over 1.33s","animation_top":"yes","animation_top_text":"enter top move 12px over 1.33s","animation_user1":"yes","animation_user1_text":"enter left move 12px over 1.33s","animation_user2":"yes","animation_user2_text":"enter top move 10px over 1.33s","animation_user3":"yes","animation_user3_text":"enter right move 12px over 1.33s","animation_article":"yes","animation_article_text":"enter top move 12px over 1.33s","animation_user4":"yes","animation_user4_text":"enter left move 12px over 1.33s","animation_user5":"yes","animation_user5_text":"enter bottom move 10px over 1.33s","animation_user6":"yes","animation_user6_text":"enter right move 12px over 1.33s","animation_bottom":"yes","animation_bottom_text":"enter top move 10px over 1.33s","animation_search":"yes","animation_search_text":"enter left move 12px over 1.33s","animation_address":"yes","animation_address_text":"enter left move 12px over 1s","animation_bottom_menu":"yes","animation_bottom_menu_text":"enter right move 12px over 1s","google_code":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'J-lites Fancy Testimonial', 'module', 'mod_jfancytestimonial', '', 0, 1, 0, 0, '{"name":"J-lites Fancy Testimonial","type":"module","creationDate":"June 2014","author":"Joomlaites","copyright":"Copyright (C) 2014 - 2020 Joomlaites","authorEmail":"joomlaites@gmail.com","authorUrl":"www.joomlaites.com","version":"3.1","description":"\\n\\t <h3 style=\\"color:#009bd4\\">Joomlaites Fancy Testimonial by Joomlaites <\\/h3>\\n\\t      <p>Important, For more information, documentation and support, please visit at <a href=\\"http:\\/\\/www.joomlaites.com\\/forum\\" target=\\"_blank\\">Joomlaites<\\/a><\\/p>\\n\\t\\t\\n\\t","group":"","filename":"mod_jfancytestimonial"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_content_rssfactory', 'plugin', 'rssfactory', 'content', 0, 1, 1, 0, '{"name":"plg_content_rssfactory","type":"plugin","creationDate":"July 2009","author":"thePHPfactory","copyright":"SKEPSIS Consult SRL","authorEmail":"contact@thephpfactory.com","authorUrl":"http:\\/\\/www.thephpfactory.com","version":"4.1.3","description":"Rss Factory content plugin for Rss Factory component from thePHPfactory.com","group":"","filename":"rssfactory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_system_rssfactory', 'plugin', 'rssfactory', 'system', 0, 0, 1, 0, '{"name":"plg_system_rssfactory","type":"plugin","creationDate":"July 2009","author":"thePHPfactory","copyright":"SKEPSIS Consult SRL","authorEmail":"contact@thephpfactory.com","authorUrl":"http:\\/\\/www.thephpfactory.com","version":"4.1.3","description":"Rss Factory system plugin for Rss Factory component from thePHPfactory.com","group":"","filename":"rssfactory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_search_rssfactory', 'plugin', 'rssfactory', 'search', 0, 0, 1, 0, '{"name":"plg_search_rssfactory","type":"plugin","creationDate":"July 2009","author":"thePHPfactory","copyright":"SKEPSIS Consult SRL","authorEmail":"contact@thephpfactory.com","authorUrl":"http:\\/\\/www.thephpfactory.com","version":"4.1.3","description":"Rss Factory search plugin for Rss Factory component from thePHPfactory.com","group":"","filename":"rssfactory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Content - InstantPaypal', 'plugin', 'instantpaypal', 'content', 0, 1, 1, 0, '{"name":"Content - InstantPaypal","type":"plugin","creationDate":"November 2015","author":"Joomla! Extensions Store","copyright":"Copyright (C) 2015 - Joomla! Extensions Store. All Rights Reserved.","authorEmail":"ecommerce@storejoomla.org","authorUrl":"http:\\/\\/storejoomla.org","version":"1.3","description":"INSTANTPAYPAL_DESCRIPTION","group":"","filename":"instantpaypal"}', '{"button_type":"pay","showxtdinfo":"1","paypal_email":"","currency_code":"USD","country_code":"US","button_path":"en_US","default_btnsize":"_SM","default_productname":"ProductDemo","default_price":"0","global_taxamount":"0","global_taxtext":"Tax +","global_taxtype":"fixed","global_shippingamount":"0","global_shippingtext":"Shipping +","global_shippingtype":"single","global_unique_shipping":"1","auto_url":"1","return_url":"","cancel_url":"","quantity_text":"Quantity:","global_showquantity":"0","email_notify_send":"1","email_notify_subject":"Order placed, require your attention.","email_notify_body":"An order has been placed and require your attention. Please check your Paypal account for payment confirmation.","email_notify_address":"","showinput_miniform":"0","showinput_name":"1","showinput_email":"3","showinput_note":"0","open_window":"_floating","floating_width":"960","floating_height":"480","showonly_viewarticle":"0","css_form_class":"","css_infoxtd_class":"","includeevent":"onContentAfterDisplay","sandbox_mode":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Youtube Widget Slider', 'module', 'mod_youtubeslider', '', 0, 1, 0, 0, '{"name":"Youtube Widget Slider","type":"module","creationDate":"June 2013","author":"Alonzo Weatherby","copyright":"Copyright (C)2013 highschooldiploma.us","authorEmail":"widgets@highschooldiploma.us","authorUrl":"www.highschooldiploma.us","version":"1.0","description":"Thanks for installing Youtube Widget Slider","group":"","filename":"mod_youtubeslider"}', '{"yt_username":"disney","video_url":"qUGnu0gXtn4","margintop":"250","ywidth":"290","yheight":"270","position":"left","loadjquery":"0","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'com_komento', 'component', 'com_komento', '', 1, 1, 0, 0, '{"name":"com_komento","type":"component","creationDate":"Jan 2012","author":"Stack Ideas","copyright":"Copyright 2012 Stack Ideas. All rights reserved","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"2.0.5","description":"\\n\\t\\tKomento is a Joomla! comment component.\\n\\t","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'Content - Komento', 'plugin', 'komento', 'content', 0, 1, 1, 0, '{"name":"Content - Komento","type":"plugin","creationDate":"01\\/01\\/2012","author":"StackIdeas","copyright":"Copyright (C) 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0","description":"This plugin adds a discussion\\/comment interface at the bottom of the article","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'System - Komento', 'plugin', 'komento', 'system', 0, 1, 1, 0, '{"name":"System - Komento","type":"plugin","creationDate":"07\\/01\\/2012","author":"StackIdeas","copyright":"Copyright (C) 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0","description":"This plugin adds a discussion\\/comment interface at the bottom of the article","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'User - Komento Users', 'plugin', 'komentousers', 'user', 0, 1, 1, 0, '{"name":"User - Komento Users","type":"plugin","creationDate":"February 2012","author":"StackIdeas","copyright":"Copyright 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.0","description":"Komento user plugin. This plugin is responsible to delete user''s related records.","group":"","filename":"komentousers"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Komento Activities', 'module', 'mod_komento_activities', '', 0, 1, 0, 0, '{"name":"Komento Activities","type":"module","creationDate":"May 2012","author":"StackIdeas","copyright":"Copyright 2009 - 2012 Stack Ideas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.4","description":"Display activities from Komento","group":"","filename":"mod_komento_activities"}', '{"limit":"5","component":"all","includelikes":"1","includecomments":"1","includereplies":"1","showcomment":"1","maxcommentlength":"100","maxtitlelength":"30","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Komento Comments', 'module', 'mod_komento_comments', '', 0, 1, 0, 0, '{"name":"Komento Comments","type":"module","creationDate":"May 2012","author":"StackIdeas","copyright":"Copyright 2009 - 2012 Stack Ideas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.7","description":"Display comments from Komento","group":"","filename":"mod_komento_comments"}', '{"limit":"5","component":"all","filter":"all","category":"","articleId":"","userId":"","sort":"latest","random":"0","filtersticked":"0","showtitle":"1","showcomponent":"1","showavatar":"1","showauthor":"1","maxcommentlength":"100","maxtitlelength":"30","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'VirtueMart_Plugins_Language_Pack - fr-FR', 'file', 'VirtueMart_Plugins_Language_Pack-fr-FR', '', 0, 1, 0, 0, '{"name":"VirtueMart_Plugins_Language_Pack - fr-FR","type":"file","creationDate":"24.11.2015","author":"VirtueMart language team","copyright":"\\u00a9 2008-2015 - compojoom-com. All rights reserved!","authorEmail":"max@virtuemart.net","authorUrl":"https:\\/\\/virtuemart.net","version":"2015-11-24-05-17-38","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to our translation team at (https:\\/\\/www.transifex.com\\/projects\\/p\\/virtuemart\\/) for helping with this VirtueMart translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'JDeveloper', 'component', 'com_jdeveloper', '', 1, 1, 0, 0, '{"name":"JDeveloper","type":"component","creationDate":"May 2014","author":"Tilo-Lars Flasche","copyright":"Tilo-Lars Flasche","authorEmail":"jcms.development@gmail.com","authorUrl":"www.joommaster.bplaced.org","version":"3.10.2.1","description":"COM_JDEVELOPER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'JCMS Library', 'library', 'jcms', '', 0, 1, 1, 0, '{"name":"JCMS Library","type":"library","creationDate":"May 2014","author":"Tilo-Lars Flasche","copyright":"Tilo-Lars Flasche","authorEmail":"jcms.development@gmail.com","authorUrl":"www.joommaster.bplaced.org","version":"3.0.1","description":"LIB_JCMS_XML_DESCRIPTION","group":"","filename":"jcms"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'jdeveloper', 'package', 'pkg_jdeveloper', '', 0, 1, 1, 0, '{"name":"jdeveloper","type":"package","creationDate":"Jul 2015","author":"Unknown","copyright":"Copyright (C) 2014, Tilo-Lars Flasche. All rights reserved.","authorEmail":"","authorUrl":"","version":"3.10.2.1","description":"JDeveloper","group":"","filename":"pkg_jdeveloper"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'com_rssfeed', 'component', 'com_rssfeed', '', 1, 1, 0, 0, '{"name":"com_rssfeed","type":"component","creationDate":"2016 february 01","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"COM_RSSFEED_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_feed`
--

CREATE TABLE `x8n17_feed` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_filters`
--

CREATE TABLE `x8n17_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links`
--

CREATE TABLE `x8n17_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms0`
--

CREATE TABLE `x8n17_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms1`
--

CREATE TABLE `x8n17_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms2`
--

CREATE TABLE `x8n17_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms3`
--

CREATE TABLE `x8n17_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms4`
--

CREATE TABLE `x8n17_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms5`
--

CREATE TABLE `x8n17_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms6`
--

CREATE TABLE `x8n17_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms7`
--

CREATE TABLE `x8n17_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms8`
--

CREATE TABLE `x8n17_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_terms9`
--

CREATE TABLE `x8n17_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termsa`
--

CREATE TABLE `x8n17_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termsb`
--

CREATE TABLE `x8n17_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termsc`
--

CREATE TABLE `x8n17_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termsd`
--

CREATE TABLE `x8n17_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termse`
--

CREATE TABLE `x8n17_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_links_termsf`
--

CREATE TABLE `x8n17_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_taxonomy`
--

CREATE TABLE `x8n17_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_finder_taxonomy`
--

INSERT INTO `x8n17_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_taxonomy_map`
--

CREATE TABLE `x8n17_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_terms`
--

CREATE TABLE `x8n17_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_terms_common`
--

CREATE TABLE `x8n17_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_finder_terms_common`
--

INSERT INTO `x8n17_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('alors', 'fr'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('au', 'fr'),
('aucuns', 'fr'),
('aussi', 'fr'),
('autre', 'fr'),
('avant', 'fr'),
('avec', 'fr'),
('avoir', 'fr'),
('be', 'en'),
('bon', 'fr'),
('but', 'en'),
('by', 'en'),
('car', 'fr'),
('ce', 'fr'),
('cela', 'fr'),
('ces', 'fr'),
('ceux', 'fr'),
('chaque', 'fr'),
('ci', 'fr'),
('comme', 'fr'),
('comment', 'fr'),
('dans', 'fr'),
('début', 'fr'),
('dedans', 'fr'),
('dehors', 'fr'),
('depuis', 'fr'),
('des', 'fr'),
('deux', 'fr'),
('devrait', 'fr'),
('doit', 'fr'),
('donc', 'fr'),
('dos', 'fr'),
('droite', 'fr'),
('du', 'fr'),
('elle', 'fr'),
('elles', 'fr'),
('en', 'fr'),
('encore', 'fr'),
('essai', 'fr'),
('est', 'fr'),
('et', 'fr'),
('eu', 'fr'),
('fait', 'fr'),
('faites', 'fr'),
('fois', 'fr'),
('font', 'fr'),
('for', 'en'),
('force', 'fr'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('haut', 'fr'),
('hors', 'fr'),
('how', 'en'),
('ici', 'fr'),
('if', 'en'),
('il', 'fr'),
('ils', 'fr'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('je', 'fr'),
('juste', 'fr'),
('la', 'fr'),
('là', 'fr'),
('le', 'fr'),
('les', 'fr'),
('leur', 'fr'),
('ma', 'fr'),
('maintenant', 'fr'),
('mais', 'fr'),
('me', 'en'),
('même', 'fr'),
('mes', 'fr'),
('mine', 'fr'),
('moins', 'fr'),
('mon', 'fr'),
('more', 'en'),
('most', 'en'),
('mot', 'fr'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('ni', 'fr'),
('no', 'en'),
('nommés', 'fr'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('notre', 'fr'),
('nous', 'fr'),
('nouveaux', 'fr'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('ou', 'fr'),
('où', 'fr'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('par', 'fr'),
('parce', 'fr'),
('parole', 'fr'),
('pas', 'fr'),
('personnes', 'fr'),
('peu', 'fr'),
('peut', 'fr'),
('pièce', 'fr'),
('plupart', 'fr'),
('pour', 'fr'),
('pourquoi', 'fr'),
('quand', 'fr'),
('que', 'fr'),
('quel', 'fr'),
('quelle', 'fr'),
('quelles', 'fr'),
('quels', 'fr'),
('qui', 'fr'),
('sa', 'fr'),
('sans', 'fr'),
('ses', 'fr'),
('seulement', 'fr'),
('she', 'en'),
('should', 'en'),
('si', 'fr'),
('sien', 'fr'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('son', 'fr'),
('sont', 'fr'),
('sous', 'fr'),
('soyez', 'fr'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_tokens`
--

CREATE TABLE `x8n17_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_tokens_aggregate`
--

CREATE TABLE `x8n17_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_finder_types`
--

CREATE TABLE `x8n17_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_components`
--

CREATE TABLE `x8n17_jdeveloper_components` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `site` tinyint(1) DEFAULT NULL,
  `display_name` varchar(100) NOT NULL,
  `description` tinytext,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_jdeveloper_components`
--

INSERT INTO `x8n17_jdeveloper_components` (`id`, `ordering`, `name`, `version`, `site`, `display_name`, `description`, `params`, `created_by`) VALUES
(1, 0, 'rssfeed', '1.0.0', 0, 'Rss Feed', 'this is the rss feefd reader', '{"author":"","author_email":"","author_url":"","copyright":"","languages":["fr-FR"],"license":""}', 192);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_fields`
--

CREATE TABLE `x8n17_jdeveloper_fields` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(40) NOT NULL,
  `table` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `dbtype` varchar(10) NOT NULL,
  `rule` varchar(50) NOT NULL,
  `label` varchar(40) NOT NULL,
  `description` tinytext,
  `maxlength` smallint(5) NOT NULL,
  `options` text NOT NULL,
  `attributes` text NOT NULL,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_formfields`
--

CREATE TABLE `x8n17_jdeveloper_formfields` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `name` varchar(40) NOT NULL,
  `source` text NOT NULL,
  `params` text NOT NULL COMMENT 'JSON encoded params'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_formrules`
--

CREATE TABLE `x8n17_jdeveloper_formrules` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `name` varchar(40) NOT NULL,
  `source` text NOT NULL,
  `params` text NOT NULL COMMENT 'JSON encoded params'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_forms`
--

CREATE TABLE `x8n17_jdeveloper_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rgt` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `relation` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL COMMENT 'Field name',
  `type` varchar(50) NOT NULL COMMENT 'Field type',
  `label` varchar(50) NOT NULL COMMENT 'Field label',
  `description` mediumtext NOT NULL COMMENT 'Field Description',
  `default` varchar(100) NOT NULL COMMENT 'Field default value',
  `class` varchar(100) NOT NULL COMMENT 'Field CSS class',
  `maxlength` int(10) NOT NULL COMMENT 'Field size',
  `validation` varchar(50) NOT NULL COMMENT 'Field validation',
  `filter` varchar(50) NOT NULL COMMENT 'Field filter',
  `disabled` tinyint(1) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `options` text NOT NULL,
  `attributes` text NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_jdeveloper_forms`
--

INSERT INTO `x8n17_jdeveloper_forms` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `relation`, `tag`, `name`, `type`, `label`, `description`, `default`, `class`, `maxlength`, `validation`, `filter`, `disabled`, `readonly`, `required`, `options`, `attributes`, `alias`, `ordering`, `created_by`, `params`) VALUES
(1, 0, 0, 17, 0, '', '', '', 'Root', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'root', 0, 0, ''),
(2, 1, 1, 2, 1, 'component-1-access', 'component.1.access', 'access', 'component.1.access', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'component-1-access', 1, 192, ''),
(3, 1, 3, 4, 1, 'component-1-config', 'component.1.config', 'config', 'component.1.config', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'component-1-config', 2, 192, ''),
(4, 1, 5, 14, 1, 'table-1-form', 'table.1.form', 'form', 'table.1.form', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'table-1-form', 3, 192, ''),
(5, 4, 6, 9, 2, 'table-1-form/params', 'table.1.form', 'fields', 'params', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'params', 4, 192, ''),
(6, 5, 7, 8, 3, 'table-1-form/params/params', 'table.1.form', 'fieldset', 'params', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'params', 5, 192, ''),
(7, 4, 10, 13, 2, 'table-1-form/images', 'table.1.form', 'fields', 'images', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'images', 6, 192, ''),
(8, 7, 11, 12, 3, 'table-1-form/images/images', 'table.1.form', 'fieldset', 'images', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', 'images', 7, 192, ''),
(9, 1, 15, 16, 1, 'import-file', '', 'form', 'import_file', 'file', 'Import file', '', '', 'inputbox', 0, '', '', 0, 0, 1, '{"keys":[],"values":[]}', '{"keys":[],"values":[]}', 'import-file', 8, 192, '');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_libraries`
--

CREATE TABLE `x8n17_jdeveloper_libraries` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `name` varchar(40) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` tinytext,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_modules`
--

CREATE TABLE `x8n17_jdeveloper_modules` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(40) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `table` varchar(100) NOT NULL,
  `description` tinytext,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_overrides`
--

CREATE TABLE `x8n17_jdeveloper_overrides` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `item_id` int(11) NOT NULL COMMENT 'prmary key of the item',
  `type` varchar(50) NOT NULL COMMENT 'extension / element type',
  `name` varchar(255) NOT NULL COMMENT 'template name',
  `source` mediumtext NOT NULL COMMENT 'template override',
  `params` text NOT NULL COMMENT 'JSON encoded params'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_plugins`
--

CREATE TABLE `x8n17_jdeveloper_plugins` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(40) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `folder` varchar(40) NOT NULL,
  `description` tinytext,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_tables`
--

CREATE TABLE `x8n17_jdeveloper_tables` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(40) NOT NULL,
  `component` int(11) NOT NULL,
  `plural` varchar(40) NOT NULL,
  `singular` varchar(40) NOT NULL,
  `pk` varchar(40) NOT NULL,
  `jfields` text NOT NULL COMMENT 'JSON encoded jfields',
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_jdeveloper_tables`
--

INSERT INTO `x8n17_jdeveloper_tables` (`id`, `ordering`, `name`, `component`, `plural`, `singular`, `pk`, `jfields`, `params`, `created_by`) VALUES
(1, 1, 'feed', 1, 'Feeds', 'Feed', 'id', '{"access":"0","alias":"1","asset_id":"0","catid":"1","checked_out":"0","created":"1","created_by":"1","created_by_alias":"0","hits":"0","images":"0","language":"0","metadata":"0","metadesc":"0","metakey":"0","modified":"0","modified_by":"0","ordering":"0","params":"0","publish_down":"1","publish_up":"1","published":"0","tags":"0","version":"0"}', '{"frontend":"1","frontend_categories":"0","frontend_details":"0","frontend_edit":"1","frontend_feed":"0"}', 192);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_jdeveloper_templates`
--

CREATE TABLE `x8n17_jdeveloper_templates` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `ordering` smallint(5) NOT NULL COMMENT 'Table ordering',
  `name` varchar(40) NOT NULL,
  `version` varchar(20) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `description` tinytext,
  `params` text NOT NULL COMMENT 'JSON encoded params',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_acl`
--

CREATE TABLE `x8n17_komento_acl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cid` varchar(255) NOT NULL,
  `component` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_acl`
--

INSERT INTO `x8n17_komento_acl` (`id`, `cid`, `component`, `type`, `rules`) VALUES
(1, '1', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(2, '9', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":false,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":false,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(3, '2', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(4, '6', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(5, '7', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":true,"delete_all_comment":true,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":true}'),
(6, '3', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(7, '4', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(8, '5', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":false}'),
(9, '8', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":true,"delete_all_comment":true,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":true}');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_actions`
--

CREATE TABLE `x8n17_komento_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `action_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `actioned` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_activities`
--

CREATE TABLE `x8n17_komento_activities` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_activities`
--

INSERT INTO `x8n17_komento_activities` (`id`, `type`, `comment_id`, `uid`, `created`, `published`) VALUES
(2, 'comment', 4, 192, '2016-01-30 15:32:25', 1),
(3, 'reply', 10, 192, '2016-02-01 13:46:39', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_captcha`
--

CREATE TABLE `x8n17_komento_captcha` (
  `id` int(11) NOT NULL,
  `response` varchar(5) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_comments`
--

CREATE TABLE `x8n17_komento_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component` varchar(255) NOT NULL,
  `cid` bigint(20) UNSIGNED NOT NULL,
  `comment` text,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  `created_by` bigint(20) UNSIGNED DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) UNSIGNED DEFAULT '0',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `deleted_by` bigint(20) UNSIGNED DEFAULT '0',
  `deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `flag` tinyint(1) DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime DEFAULT '0000-00-00 00:00:00',
  `sticked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sent` tinyint(1) DEFAULT '0',
  `parent_id` int(11) UNSIGNED DEFAULT '0',
  `lft` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rgt` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text,
  `params` text,
  `ratings` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_comments`
--

INSERT INTO `x8n17_komento_comments` (`id`, `component`, `cid`, `comment`, `name`, `title`, `email`, `url`, `ip`, `created_by`, `created`, `modified_by`, `modified`, `deleted_by`, `deleted`, `flag`, `published`, `publish_up`, `publish_down`, `sticked`, `sent`, `parent_id`, `lft`, `rgt`, `depth`, `latitude`, `longitude`, `address`, `params`, `ratings`) VALUES
(4, 'com_content', 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipis', 'Super Utilisateur', '', 'test.admin@site.com', '', '127.0.0.1', 192, '2016-01-30 15:32:25', 0, '2016-01-30 15:32:25', 0, '0000-00-00 00:00:00', 0, 1, '2016-02-01 13:46:39', '0000-00-00 00:00:00', 0, 0, 0, 9, 14, 0, '', '', '', '{}', 0),
(10, 'com_content', 1, 'merci', 'Super Utilisateur', '', 'test.admin@site.com', '', '127.0.0.1', 192, '2016-02-01 13:45:56', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1, '2016-02-01 13:46:39', '0000-00-00 00:00:00', 0, 0, 4, 12, 13, 1, '', '', '', '{}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_configs`
--

CREATE TABLE `x8n17_komento_configs` (
  `component` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_configs`
--

INSERT INTO `x8n17_komento_configs` (`component`, `params`) VALUES
('com_komento_comments_columns', '{"column_comment":1,"column_published":1,"column_sticked":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento_pending_columns', '{"column_comment":1,"column_published":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento_reports_columns', '{"column_comment":1,"column_published":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento', '{"profile_enable":"1","profile_tab_comments":"1","profile_tab_activities":"1","profile_tab_popular":"1","profile_tab_sticked":"1","name_type":"default","layout_avatar_integration":"gravatar","layout_phpbb_path":"","layout_phpbb_url":"","profile_activities_comments":"1","profile_activities_replies":"1","profile_activities_likes":"1"}'),
('com_content', '{"enable_komento":"1","disable_komento_on_tmpl_component":"1","allowed_categories_mode":"1","allowed_categories":["2"],"enable_orphanitem_convert":"1","orphanitem_ownership":"0","enable_login_form":"1","login_provider":"joomla","enable_moderation":"1","requires_moderation":["9","6","7","2","3","4","5","8"],"subscription_auto":"1","subscription_confirmation":"0","pagebreak_load":"last","antispam_akismet":"0","antispam_akismet_key":"","antispam_akismet_trackback":"0","antispam_flood_control":"1","antispam_flood_interval":"10","antispam_min_length_enable":"0","antispam_min_length":"10","antispam_max_length_enable":"0","antispam_max_length":"300","filter_word":"0","filter_word_text":"","blacklist_ip":"","antispam_captcha_enable":"1","antispam_captcha_type":"1","show_captcha":["2"],"antispam_recaptcha_ssl":"0","antispam_recaptcha_public_key":"6Ldg4xYTAAAAABHIhqONi7avnktxGSF8NZYI0exh","antispam_recaptcha_private_key":"6Ldg4xYTAAAAAPY1ZYF5np97E9jxLWa","antispam_recaptcha_theme":"clean","antispam_recaptcha_lang":"fr","layout_theme":"kuro","enable_responsive":"1","tabbed_comments":"1","max_threaded_level":"5","enable_threaded":"1","thread_indentation":"60","show_sort_buttons":"0","default_sort":"oldest","load_previous":"0","max_comments_per_page":"10","layout_template_override":"0","layout_component_override":"0","layout_inherit_kuro_css":"0","layout_css_admin":"kmt-comment-item-admin","layout_css_registered":"kmt-comment-item-registered","layout_css_author":"kmt-comment-item-author","layout_css_public":"kmt-comment-item-public","name_type":"default","guest_label":"0","auto_hyperlink":"1","links_nofollow":"0","datetime_permalink":"0","date_format":"l, M j Y g:i:sa","max_image_width":"300","max_image_height":"300","allow_video":"1","bbcode_video_width":"350","bbcode_video_height":"350","layout_frontpage_comment":"1","layout_frontpage_readmore":"0","layout_frontpage_readmore_use_joomla":"0","layout_frontpage_hits":"0","layout_frontpage_alignment":"left","enable_lapsed_time":"1","layout_avatar_enable":"1","enable_guest_link":"1","enable_permalink":"0","enable_share":"0","enable_likes":"0","enable_reply":"1","enable_report":"1","enable_location":"1","enable_info":"1","enable_syntax_highlighting":"1","enable_id":"0","enable_reply_reference":"1","enable_rank_bar":"1","enable_live_notification":"1","live_notification_interval":"30","form_position":"1","form_toggle_button":"1","autohide_form_notification":"0","form_show_moderate_message":"1","scroll_to_comment":"1","show_location":"0","enable_bbcode":"1","enable_subscription":"0","show_tnc":["1"],"tnc_text":"Before submitting the comment, you agree that:\\r\\n\\r\\na. To accept full responsibility for the comment that you submit.\\r\\nb. To use this function only for lawful purposes.\\r\\nc. Not to post defamatory, abusive, offensive, racist, sexist, threatening, vulgar, obscene, hateful or otherwise inappropriate comments, or to post comments which will constitute a criminal offense or give rise to civil liability.\\r\\nd. Not to post or make available any material which is protected by copyright, trade mark or other proprietary right without the express permission of the owner of the copyright, trade mark or any other proprietary right.\\r\\ne. To evaluate for yourself the accuracy of any opinion, advice or other content.","show_name":"1","show_email":"1","show_website":"0","require_name":"2","require_email":"1","require_website":"0","enable_email_regex":"1","email_regex":["%5CS%2B%40%5CS%2B"],"enable_website_regex":"1","website_regex":["%28http%3A%2F%2F%7Cftp%3A%2F%2F%7Cwww%29%5CS%2B"],"layout_avatar_integration":"gravatar","use_komento_profile":"0","easysocial_profile_popbox":"0","gravatar_default_avatar":"identicon","layout_phpbb_path":"","layout_phpbb_url":"","bbcode_bold":"1","bbcode_italic":"1","bbcode_underline":"1","bbcode_link":"1","bbcode_picture":"1","bbcode_video":"1","bbcode_bulletlist":"1","bbcode_numericlist":"1","bbcode_bullet":"1","bbcode_quote":"1","bbcode_code":"1","bbcode_clean":"1","bbcode_smile":"1","bbcode_happy":"1","bbcode_surprised":"1","bbcode_tongue":"1","bbcode_unhappy":"1","bbcode_wink":"1","smileycode":[],"smileypath":[],"share_facebook":"1","share_twitter":"1","share_googleplus":"1","share_linkedin":"0","share_tumblr":"0","share_digg":"0","share_delicious":"0","share_reddit":"0","share_stumbleupon":"0","enable_conversation_bar":"0","conversation_bar_max_authors":"10","conversation_bar_include_guest":"0","enable_stickies":"0","max_stickies":"5","enable_lovies":"0","minimum_likes_lovies":"0","max_lovies":"5","syntaxhighlighter_theme":"default","notification_enable":"1","notification_sendmailonpageload":"1","notification_sendmailinhtml":"1","notification_event_new_comment":"1","notification_event_new_reply":"1","notification_event_new_pending":"1","notification_event_reported_comment":"1","notification_to_author":"1","notification_to_subscribers":"1","activities_comment":"1","activities_reply":"1","activities_like":"1","trigger_method":"component","target":"com_content","tnc":"","notification_to_usergroup_comment":[],"notification_to_usergroup_reply":[],"notification_to_usergroup_pending":[],"notification_to_usergroup_reported":[],"notification_es_to_usergroup_comment":[],"notification_es_to_usergroup_reply":[],"notification_es_to_usergroup_like":[]}');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_hashkeys`
--

CREATE TABLE `x8n17_komento_hashkeys` (
  `id` bigint(11) NOT NULL,
  `uid` bigint(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `key` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_hashkeys`
--

INSERT INTO `x8n17_komento_hashkeys` (`id`, `uid`, `type`, `state`, `key`) VALUES
(1, 5, 'comment', 0, '4bdad19c9471'),
(2, 6, 'comment', 0, 'a2d2f67c29b5'),
(3, 7, 'comment', 0, 'a4b6d5fef7b5'),
(4, 8, 'comment', 0, 'b9046dd0f719'),
(5, 9, 'comment', 0, 'e802e415cdf9'),
(6, 10, 'comment', 0, '28c6ea71b973');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_ipfilter`
--

CREATE TABLE `x8n17_komento_ipfilter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_mailq`
--

CREATE TABLE `x8n17_komento_mailq` (
  `id` int(11) NOT NULL,
  `mailfrom` varchar(255) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'text',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_mailq`
--

INSERT INTO `x8n17_komento_mailq` (`id`, `mailfrom`, `fromname`, `recipient`, `subject`, `body`, `created`, `type`, `status`) VALUES
(1, 'test.admin@site.com', 'Test', 'test.admin@site.com', 'A new comment is posted (Etude de votre prêt)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title></title>\n</head>\n\n<body style="margin:0;padding:0;background:#ddd;">\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\n\n	<center style="display:block;padding:30px 0">\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\n			<tbody>\n				<tr>\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\n						Good day Super Utilisateur,\n						<br /><br />\n						A new comment is posted on:						<br />\n						<a href="http://www.sit2.loc/index.php" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt</a>\n						<br />\n						<br />\n						Below is a snippet from the comment that has been posted.					</td>\n				</tr>\n				<tr>\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\n							<img src="http://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?s=100&amp;d=mm" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\n							<div style="margin-left:60px">\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Guest - heri</span>\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 1:08:27pm</span>\n								<div style="font-size:12px;margin-top:3px;">\n									test comment								</div>\n							</div>\n						</div>\n\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\n							<a href="http://www.sit2.loc/index.php#kmt-1" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\n								View Comment &nbsp; &raquo;							</a>\n						</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n\n			</center>\n\n	</div>\n</body>\n</html>\n', '2016-01-30 13:08:27', 'html', 1),
(2, 'test.admin@site.com', 'Test', 'test.admin@site.com', 'A new comment is posted (Etude de votre prêt)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title></title>\n</head>\n\n<body style="margin:0;padding:0;background:#ddd;">\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\n\n	<center style="display:block;padding:30px 0">\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\n			<tbody>\n				<tr>\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\n						Good day Super Utilisateur,\n						<br /><br />\n						A new comment is posted on:						<br />\n						<a href="http://www.sit2.loc/index.php" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt</a>\n						<br />\n						<br />\n						Below is a snippet from the comment that has been posted.					</td>\n				</tr>\n				<tr>\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\n							<img src="http://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\n							<div style="margin-left:60px">\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Guest - dsqdqs</span>\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 2:08:08pm</span>\n								<div style="font-size:12px;margin-top:3px;">\n									d dqsdqsdqsd dq								</div>\n							</div>\n						</div>\n\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\n							<a href="http://www.sit2.loc/index.php#kmt-2" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\n								View Comment &nbsp; &raquo;							</a>\n						</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n\n			</center>\n\n	</div>\n</body>\n</html>\n', '2016-01-30 14:08:08', 'html', 1),
(3, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title></title>\n</head>\n\n<body style="margin:0;padding:0;background:#ddd;">\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\n\n	<center style="display:block;padding:30px 0">\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\n			<tbody>\n				<tr>\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\n						Good day dsqdqs,\n						<br /><br />\n						A new comment is posted on:						<br />\n						<a href="http://www.sit2.loc/index.php" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt</a>\n						<br />\n						<br />\n						Below is a snippet from the comment that has been posted.					</td>\n				</tr>\n				<tr>\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\n							<div style="margin-left:60px">\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 2:35:26pm</span>\n								<div style="font-size:12px;margin-top:3px;">\n									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad m								</div>\n							</div>\n						</div>\n\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\n							<a href="http://www.sit2.loc/index.php#kmt-3" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\n								View Comment &nbsp; &raquo;							</a>\n						</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n\n				<p>\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.sit2.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\n		</p>\n			</center>\n\n	</div>\n</body>\n</html>\n', '2016-01-30 14:35:26', 'html', 1),
(4, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title></title>\n</head>\n\n<body style="margin:0;padding:0;background:#ddd;">\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\n\n	<center style="display:block;padding:30px 0">\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\n			<tbody>\n				<tr>\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\n						Good day dsqdqs,\n						<br /><br />\n						A new comment is posted on:						<br />\n						<a href="http://www.sit2.loc/index.php" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt</a>\n						<br />\n						<br />\n						Below is a snippet from the comment that has been posted.					</td>\n				</tr>\n				<tr>\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\n							<div style="margin-left:60px">\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 3:32:25pm</span>\n								<div style="font-size:12px;margin-top:3px;">\n									Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipis								</div>\n							</div>\n						</div>\n\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\n							<a href="http://www.sit2.loc/index.php#kmt-4" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\n								View Comment &nbsp; &raquo;							</a>\n						</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n\n				<p>\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.sit2.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\n		</p>\n			</center>\n\n	</div>\n</body>\n</html>\n', '2016-01-30 15:32:25', 'html', 1),
(5, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on lundi, Fév 1 2016 1:45:56pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									merci								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-10" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1),
(6, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on lundi, Fév 1 2016 1:45:38pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									okd								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-9" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1),
(7, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on lundi, Fév 1 2016 1:45:25pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									sdd sdsqd qsd qsd								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-8" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1),
(8, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on lundi, Fév 1 2016 1:45:03pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									asd dqsd q								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-7" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1),
(9, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 3:55:41pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									teststsdsd qs qdq ssqdqsdqs								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-6" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1),
(10, 'test.admin@site.com', 'Test', 'ddqdd@dsd.com', 'A new comment is posted (Etude de votre prêt immobilier)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title></title>\r\n</head>\r\n\r\n<body style="margin:0;padding:0;background:#ddd;">\r\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\r\n\r\n	<center style="display:block;padding:30px 0">\r\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\r\n			<tbody>\r\n				<tr>\r\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\r\n						Good day dsqdqs,\r\n						<br /><br />\r\n						A new comment is posted on:						<br />\r\n						<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">Etude de votre prêt immobilier</a>\r\n						<br />\r\n						<br />\r\n						Below is a snippet from the comment that has been posted.					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\r\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\r\n							<img src="http://www.gravatar.com/avatar/616982535852e75220612838970b7a02?s=100&amp;d=identicon" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\r\n							<div style="margin-left:60px">\r\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super Utilisateur</span>\r\n								<span style="color:#999">- Posted on samedi, Jan 30 2016 3:33:56pm</span>\r\n								<div style="font-size:12px;margin-top:3px;">\r\n									qd dq dqsdqdq								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\r\n							<a href="http://www.p-etech.loc/index.php?option=com_content&amp;view=article&amp;id=1:etude-de-votre-pret-immobilier&amp;catid=2:non-categorise&amp;Itemid=101#kmt-5" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\r\n								View Comment &nbsp; &raquo;							</a>\r\n						</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n\r\n				<p>\r\n			This email was sent to you because you have subscribed to comments update<br />To unsubscribe, <a href="http://www.p-etech.loc/index.php?option=com_komento&task=unsubscribe&id=1" style="color:#477fda">click here</a>.\r\n		</p>\r\n			</center>\r\n\r\n	</div>\r\n</body>\r\n</html>\r\n', '2016-02-01 13:46:39', 'html', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_subscription`
--

CREATE TABLE `x8n17_komento_subscription` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `component` varchar(255) NOT NULL,
  `cid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_komento_subscription`
--

INSERT INTO `x8n17_komento_subscription` (`id`, `type`, `component`, `cid`, `userid`, `fullname`, `email`, `created`, `published`) VALUES
(1, 'comment', 'com_content', 1, 0, 'dsqdqs', 'ddqdd@dsd.com', '2016-01-30 14:08:08', 1),
(2, 'comment', 'com_content', 1, 192, 'Super Utilisateur', 'test.admin@site.com', '2016-01-30 14:35:26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_komento_uploads`
--

CREATE TABLE `x8n17_komento_uploads` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `filename` text NOT NULL,
  `hashname` text NOT NULL,
  `path` text,
  `created` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  `mime` text NOT NULL,
  `size` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_languages`
--

CREATE TABLE `x8n17_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_languages`
--

INSERT INTO `x8n17_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 2),
(2, 'fr-FR', 'Français (FR)', 'Français (FR)', 'fr', 'fr', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_menu`
--

CREATE TABLE `x8n17_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_menu`
--

INSERT INTO `x8n17_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 105, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 21, 26, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 22, 23, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 24, 25, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 27, 32, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 28, 29, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 30, 31, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 33, 38, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 34, 35, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 36, 37, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 39, 40, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 41, 42, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 43, 44, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 49, 50, 0, '*', 1),
(101, 'mainmenu', 'Accueil', 'accueil', '', 'accueil', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 1, '*', 0),
(102, 'usermenu', 'Votre profil', 'votre-profil', '', 'votre-profil', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(103, 'usermenu', 'Administration', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 15, 16, 0, '*', 0),
(104, 'usermenu', 'Créer un article', 'creer-un-article', '', 'creer-un-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(106, 'usermenu', 'Paramètres du template', 'parametres-du-template', '', 'parametres-du-template', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(107, 'usermenu', 'Paramètres du site', 'parametre-du-site', '', 'parametre-du-site', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(118, 'main', 'Komento', 'komento', '', 'komento', 'index.php?option=com_komento', 'component', 0, 1, 1, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/komento-favicon.png', 0, '{}', 53, 72, 0, '', 1),
(119, 'main', 'COM_KOMENTO_MENU_COMMENTS', 'com-komento-menu-comments', '', 'komento/com-komento-menu-comments', 'index.php?option=com_komento&view=comments', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/comments-favicon.png', 0, '{}', 54, 55, 0, '', 1),
(120, 'main', 'COM_KOMENTO_MENU_PENDINGS', 'com-komento-menu-pendings', '', 'komento/com-komento-menu-pendings', 'index.php?option=com_komento&view=pending', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/pending-favicon.png', 0, '{}', 56, 57, 0, '', 1),
(121, 'main', 'COM_KOMENTO_MENU_REPORTS', 'com-komento-menu-reports', '', 'komento/com-komento-menu-reports', 'index.php?option=com_komento&view=reports', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/reports-favicon.png', 0, '{}', 58, 59, 0, '', 1),
(122, 'main', 'COM_KOMENTO_MENU_SUBSCRIBERS', 'com-komento-menu-subscribers', '', 'komento/com-komento-menu-subscribers', 'index.php?option=com_komento&view=subscribers', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/subscribers-favicon.png', 0, '{}', 60, 61, 0, '', 1),
(123, 'main', 'COM_KOMENTO_MENU_INTEGRATIONS', 'com-komento-menu-integrations', '', 'komento/com-komento-menu-integrations', 'index.php?option=com_komento&view=integrations', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/integrations-favicon.png', 0, '{}', 62, 63, 0, '', 1),
(124, 'main', 'COM_KOMENTO_MENU_CONFIGURATION', 'com-komento-menu-configuration', '', 'komento/com-komento-menu-configuration', 'index.php?option=com_komento&view=system', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/system-favicon.png', 0, '{}', 64, 65, 0, '', 1),
(125, 'main', 'COM_KOMENTO_MENU_ACL', 'com-komento-menu-acl', '', 'komento/com-komento-menu-acl', 'index.php?option=com_komento&view=acl', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/acls-favicon.png', 0, '{}', 66, 67, 0, '', 1),
(126, 'main', 'COM_KOMENTO_MENU_MIGRATORS', 'com-komento-menu-migrators', '', 'komento/com-komento-menu-migrators', 'index.php?option=com_komento&view=migrators', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/migrators-favicon.png', 0, '{}', 68, 69, 0, '', 1),
(127, 'main', 'COM_KOMENTO_MENU_MAILQ', 'com-komento-menu-mailq', '', 'komento/com-komento-menu-mailq', 'index.php?option=com_komento&view=mailq', 'component', 0, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/mailq-favicon.png', 0, '{}', 70, 71, 0, '', 1),
(128, 'main', 'JDeveloper', 'jdeveloper', '', 'jdeveloper', 'index.php?option=com_jdeveloper', 'component', 0, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 73, 98, 0, '', 1),
(129, 'main', 'JDeveloper', 'jdeveloper', '', 'jdeveloper/jdeveloper', 'index.php?option=com_jdeveloper&view=cpanel', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(130, 'main', 'Components', 'components', '', 'jdeveloper/components', 'index.php?option=com_jdeveloper&view=components', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(131, 'main', 'Modules', 'modules', '', 'jdeveloper/modules', 'index.php?option=com_jdeveloper&view=modules', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(132, 'main', 'Templates', 'templates', '', 'jdeveloper/templates', 'index.php?option=com_jdeveloper&view=templates', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(133, 'main', 'Plugins', 'plugins', '', 'jdeveloper/plugins', 'index.php?option=com_jdeveloper&view=plugins', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1),
(134, 'main', 'Packages', 'packages', '', 'jdeveloper/packages', 'index.php?option=com_jdeveloper&view=packages', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1),
(135, 'main', 'Libraries', 'libraries', '', 'jdeveloper/libraries', 'index.php?option=com_jdeveloper&view=libraries', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1),
(136, 'main', 'Forms', 'forms', '', 'jdeveloper/forms', 'index.php?option=com_jdeveloper&view=forms', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1),
(137, 'main', 'Formfields', 'formfields', '', 'jdeveloper/formfields', 'index.php?option=com_jdeveloper&view=formfields', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 90, 91, 0, '', 1),
(138, 'main', 'Formrules', 'formrules', '', 'jdeveloper/formrules', 'index.php?option=com_jdeveloper&view=formrules', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 92, 93, 0, '', 1),
(139, 'main', 'Extensions', 'extensions', '', 'jdeveloper/extensions', 'index.php?option=com_jdeveloper&view=extensions', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 94, 95, 0, '', 1),
(140, 'main', 'Import', 'import', '', 'jdeveloper/import', 'index.php?option=com_jdeveloper&view=import', 'component', 0, 128, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 96, 97, 0, '', 1),
(150, 'main', 'Rssfeed', 'rssfeed', '', 'rssfeed', 'index.php?option=com_rssfeed', 'component', 0, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 99, 104, 0, '', 1),
(151, 'main', 'Feeds', 'feeds', '', 'rssfeed/feeds', 'index.php?option=com_rssfeed&view=feeds', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 100, 101, 0, '', 1),
(152, 'main', 'JCATEGORIES', 'jcategories', '', 'rssfeed/jcategories', 'index.php?option=com_categories&view=categories&extension=com_rssfeed', 'component', 0, 150, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 102, 103, 0, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_menu_types`
--

CREATE TABLE `x8n17_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_menu_types`
--

INSERT INTO `x8n17_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menu principal', 'Le menu principal du site'),
(2, 'usermenu', 'Menu utilisateur', 'Menu pour les utilisateurs connectés');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_messages`
--

CREATE TABLE `x8n17_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_messages_cfg`
--

CREATE TABLE `x8n17_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_modules`
--

CREATE TABLE `x8n17_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_modules`
--

INSERT INTO `x8n17_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu principal', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Connexion', '', '', 1, 'connexion', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Article populaire', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Article ajoutés récemments', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Barre d''outils', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Utilisateurs connectés', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Connexion', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Fil de navigation', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Statut multilingue', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Version de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Tags populaires', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Informations du site', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{"serverinfo":"1","siteinfo":"1","counter":"0","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(89, 56, 'Mises à jours', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 57, 'Derniers articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 58, 'Menu utilisateur', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 59, 'Ce qu''on fait (contenu)', '', '<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ..."</p>\r\n<p> </p>\r\n<ol class="labels">\r\n<li>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, ..."</li>\r\n<li>"...sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</li>\r\n</ol>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 60, 'Recherche', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 63, 'Blog des internautes', '', '', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jfancytestimonial', 1, 1, '{"j_style":"1","jfancytestimonial":[{"image":"","name":"JonDoe","work":"","star":"4","title":"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fu"},{"image":"","name":"Jane Doe","work":"","star":"3","title":"natur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"}],"autorun":"yes","contenttopbottom":"up","background":"#eeeeee","padding":"10","margin":"0","nameweight":"600","namesize":"15","namecolor":"12","workweight":"600","worksize":"15","workcolor":"#eeeeee","contenttextmargin":"10","contenttextpadding":"10","contenttextsize":"12","contenttextcolor":"#999999","contenttextstyle":"normal","contentimagevisible":"Yes","contentimagewidth":"120","contentimageheight":"100","contentimageopacity":".6","arrowbackground":"#eeeeee","arrowwidth":"15","arrowmargin":"15","arrowdownbackground":"#eeeeee","arrowdownwidth":"15","arrowdownmargin":"15","viewportbackgroundcolor":"#rrggbb","viewportborderpx":"0","viewportbordercolor":"#rrggbb","viewportshadowpx":"0","viewportshadowcolor":"#rrggbb","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"","style":"0"}', 0, '*'),
(97, 69, 'Youtube Widget Slider', '', '', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_youtubeslider', 1, 0, '{"yt_username":"h.rakotosoa","video_url":"V42uCBMAunk","margintop":"250","ywidth":"365","yheight":"325","position":"right","loadjquery":"0","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 70, 'sd', '', '<p><object data="http://www.youtube.com/embed/V42uCBMAunk" width="365" height="325">\r\n			</object></p>', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 71, 'Ce qu''on fait', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"","style":"0"}', 0, '*'),
(100, 101, 'Komento Activities', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_komento_activities', 1, 1, '', 0, '*'),
(101, 102, 'Komento Comments', '', '', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_komento_comments', 1, 1, '{"limit":"5","component":"com_content","filter":"all","category":"","articleId":"","userId":"","sort":"latest","random":"0","filtersticked":"0","showtitle":"1","showcomponent":"1","showavatar":"1","showauthor":"1","maxcommentlength":"100","maxtitlelength":"30","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_modules_menu`
--

CREATE TABLE `x8n17_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_modules_menu`
--

INSERT INTO `x8n17_modules_menu` (`moduleid`, `menuid`) VALUES
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
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 101),
(93, 0),
(94, 101),
(97, 101),
(98, 101),
(99, 101),
(101, 101);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_newsfeeds`
--

CREATE TABLE `x8n17_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_overrider`
--

CREATE TABLE `x8n17_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_postinstall_messages`
--

CREATE TABLE `x8n17_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_postinstall_messages`
--

INSERT INTO `x8n17_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_redirect_links`
--

CREATE TABLE `x8n17_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_schemas`
--

CREATE TABLE `x8n17_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_schemas`
--

INSERT INTO `x8n17_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10015, 'install.mysql.utf8'),
(10022, '3.10.2.1'),
(10028, '1.0.0');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_session`
--

CREATE TABLE `x8n17_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_session`
--

INSERT INTO `x8n17_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('1d3j71ii0mirbj7cr8gbleoro5', 1, 1, '1454361890', 'joomla|s:1520:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NDM2MTg4OTtzOjQ6Imxhc3QiO2k6MTQ1NDM2MTg4OTtzOjM6Im5vdyI7aToxNDU0MzYxODg5O31zOjU6InRva2VuIjtzOjMyOiI5YTdiY2UxMTVlN2ZlMzE0MTRhN2YwNmIxNDA4ZTIyZSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtOO3M6MjoiaWQiO2k6MDtzOjQ6Im5hbWUiO047czo4OiJ1c2VybmFtZSI7TjtzOjU6ImVtYWlsIjtOO3M6ODoicGFzc3dvcmQiO047czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtOO3M6OToic2VuZEVtYWlsIjtpOjA7czoxMjoicmVnaXN0ZXJEYXRlIjtOO3M6MTM6Imxhc3R2aXNpdERhdGUiO047czoxMDoiYWN0aXZhdGlvbiI7TjtzOjY6InBhcmFtcyI7TjtzOjY6Imdyb3VwcyI7YToxOntpOjA7czoxOiI5Ijt9czo1OiJndWVzdCI7aToxO3M6MTM6Imxhc3RSZXNldFRpbWUiO047czoxMDoicmVzZXRDb3VudCI7TjtzOjEyOiJyZXF1aXJlUmVzZXQiO047czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO047czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('v884qplvat56trm33ea661fdc6', 0, 1, '1454361925', 'joomla|s:1552:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0Njg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDU0MzQ3NjQ0O3M6NDoibGFzdCI7aToxNDU0MzYxODk0O3M6Mzoibm93IjtpOjE0NTQzNjE5MjQ7fXM6NToidG9rZW4iO3M6MzI6IjlhYWQ0OGE0NjFjYTM5ODk0YTQ2MmY4MmQ0MWMyMDI4Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MToiOSI7fXM6NToiZ3Vlc3QiO2k6MTtzOjEzOiJsYXN0UmVzZXRUaW1lIjtOO3M6MTA6InJlc2V0Q291bnQiO047czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6OTt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_tags`
--

CREATE TABLE `x8n17_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_tags`
--

INSERT INTO `x8n17_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 192, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 192, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_template_styles`
--

CREATE TABLE `x8n17_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_template_styles`
--

INSERT INTO `x8n17_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'minimalist', 0, '1', 'minimalist - Par défaut', '{"bg_general":"stripe01","uppercase":"no","sticky_menu":"yes","scroll_to_top":"yes","color_text_general":"555555","border_image":"js-border","width_website":"980px","width_left":"200px","width_right":"200px","user1_width":"60","user3_width":"32","user4_width":"32","user6_width":"32","website_title":"DEMO site","color_website_title":"FF4A4A","font_website_title":"Comfortaa","custom_font_website_title":"","website_title_fontsize":"70px","color_main_menu_item":"999999","color_main_menu_item_active":"FF0000","font_menu":"Dosis","custom_font_menu":"","main_menu_fontsize":"100%","text_menu":"menu","colorh1":"D73C64","font_h1":"Dosis","custom_font_h1":"","h1_fontsize":"220%","colorh2":"663D26","font_h2":"Dosis","custom_font_h2":"","module_title_fontsize":"130%","h2_fontsize":"150%","h3_fontsize":"115%","h4_fontsize":"110%","h5_fontsize":"100%","font_content":"Helvetica","custom_font_content":"","fontSize":"0.85em","color_link":"D73C64","color_link_hover":"FF0000","text_social_icons":"","color_text_social":"555555","twitter":"http:\\/\\/www.twitter.com\\/#","facebook":"http:\\/\\/www.facebook.com\\/#","rss":"","linkedin":"","google":"http:\\/\\/www.google.com\\/#","instagram":"","pinterest":"","renren":"","weibo":"","xing":"","flickr":"","youtube":"","vimeo":"","tumblr":"","google1":"yes","custom_icon01":"","custom_icon01_text":"","custom_icon01_img":"","custom_icon02":"","custom_icon02_text":"","custom_icon02_img":"","custom_icon03":"","custom_icon03_text":"","custom_icon03_img":"","custom_icon04":"","custom_icon04_text":"","custom_icon04_img":"","responsive":"yes","column_responsive":"no","animation":"yes","animation_social":"no","animation_social_text":"enter top move 10px after 1.5s over 1.33s","animation_translate":"yes","animation_translate_text":"enter top move 10px after 1.5s over 1.33s","animation_logo":"no","animation_logo_text":"enter left wait 0.3s move 20px over 1.33s","animation_menu":"no","animation_menu_text":"enter top move 0px over 2s","animation_breadcrumb":"yes","animation_breadcrumb_text":"enter top move 12px over 1.33s","animation_left":"yes","animation_left_text":"enter top move 12px over 1.33s","animation_right":"yes","animation_right_text":"enter top move 12px over 1.33s","animation_top":"yes","animation_top_text":"enter top move 12px over 1.33s","animation_user1":"yes","animation_user1_text":"enter left move 12px over 1.33s","animation_user2":"yes","animation_user2_text":"enter top move 10px over 1.33s","animation_user3":"yes","animation_user3_text":"enter right move 12px over 1.33s","animation_article":"yes","animation_article_text":"enter top move 12px over 1.33s","animation_user4":"yes","animation_user4_text":"enter left move 12px over 1.33s","animation_user5":"yes","animation_user5_text":"enter bottom move 10px over 1.33s","animation_user6":"yes","animation_user6_text":"enter right move 12px over 1.33s","animation_bottom":"yes","animation_bottom_text":"enter top move 10px over 1.33s","animation_search":"yes","animation_search_text":"enter left move 12px over 1.33s","animation_address":"yes","animation_address_text":"enter left move 12px over 1s","animation_bottom_menu":"yes","animation_bottom_menu_text":"enter right move 12px over 1s","google_code":""}');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_ucm_base`
--

CREATE TABLE `x8n17_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_ucm_base`
--

INSERT INTO `x8n17_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_ucm_content`
--

CREATE TABLE `x8n17_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

--
-- Contenu de la table `x8n17_ucm_content`
--

INSERT INTO `x8n17_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Etude de votre prêt immobilier', 'etude-de-votre-pret-immobilier', '<div class="bg-orange radius-8 bg-shadow-dark paypal_payer_button">Je commande par CB ou Paypal</div>', 1, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 192, '', '2013-11-16 00:00:00', 192, '2016-01-30 20:51:50', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 229, 6, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_ucm_history`
--

CREATE TABLE `x8n17_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_ucm_history`
--

INSERT INTO `x8n17_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 192, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"Joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"0000-00-00 00:00:00","access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"849","created_time":"2013-11-16 00:00:00","created_by_alias":"","modified_user_id":"0","modified_time":"0000-00-00 00:00:00","images":null,"urls":null,"hits":"0","language":"*","version":"1","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 192, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{"id":1,"asset_id":54,"title":"Getting Started","alias":"getting-started","introtext":"<p>It''s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\"Submit Article\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\"Template Settings\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\"Site Settings\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\"Site Administrator\\" link on the \\"User Menu\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\"http:\\/\\/docs.joomla.org\\" target=\\"_blank\\">Joomla! documentation site<\\/a> and on the<a href=\\"http:\\/\\/forum.joomla.org\\" target=\\"_blank\\"> Joomla! forums<\\/a>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"849","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2016-01-30 12:29:13', 192, 1776, '4cb2474b33cf2f5ec25674a7106cc055019f2f65', '{"id":1,"asset_id":"61","title":"Etude de votre pr\\u00eat","alias":"comment-debuter","introtext":"<p><a class=\\"bg-orange radius-8 bg-shadow-dark\\">Payer avec Paypal<\\/a><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"192","created_by_alias":"","modified":"2016-01-30 12:29:13","modified_by":"192","checked_out":"192","checked_out_time":"2016-01-30 12:24:01","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"59","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 1, 1, '', '2016-01-30 12:31:10', 192, 1817, 'afba32b904da7ae8a6ee02d59714441b4b9cdab6', '{"id":1,"asset_id":"61","title":"Etude de votre pr\\u00eat","alias":"comment-debuter","introtext":"<div class=\\"bg-orange radius-8 bg-shadow-dark\\" style=\\"text-align: center; width: 100px:;\\">Payer avec Paypal<\\/div>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"192","created_by_alias":"","modified":"2016-01-30 12:31:10","modified_by":"192","checked_out":"192","checked_out_time":"2016-01-30 12:29:13","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"60","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 1, 1, '', '2016-01-30 12:46:56', 192, 1792, 'ca522099710a039dc1fdb93b08f5a21ea0f2b1d1', '{"id":1,"asset_id":"61","title":"Etude de votre pr\\u00eat","alias":"comment-debuter","introtext":"<div class=\\"bg-orange radius-8 bg-shadow-dark paypal_payer_button\\">Payer avec Paypal<\\/div>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"192","created_by_alias":"","modified":"2016-01-30 12:46:56","modified_by":"192","checked_out":"192","checked_out_time":"2016-01-30 12:46:31","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"62","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 1, 1, '', '2016-01-30 16:42:31', 192, 1804, 'fad1037c4780c57179e102763b2c7aae32fe7e72', '{"id":1,"asset_id":"61","title":"Etude de votre pr\\u00eat","alias":"comment-debuter","introtext":"<div class=\\"bg-orange radius-8 bg-shadow-dark paypal_payer_button\\">Je commande par CB ou Paypal<\\/div>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"192","created_by_alias":"","modified":"2016-01-30 16:42:31","modified_by":"192","checked_out":"192","checked_out_time":"2016-01-30 16:42:02","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"198","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 1, 1, '', '2016-01-30 20:51:50', 192, 1830, '545dfe7634642e500ea097be9c785b90c8eb9346', '{"id":1,"asset_id":"61","title":"Etude de votre pr\\u00eat immobilier","alias":"etude-de-votre-pret-immobilier","introtext":"<div class=\\"bg-orange radius-8 bg-shadow-dark paypal_payer_button\\">Je commande par CB ou Paypal<\\/div>","fulltext":"","state":1,"catid":"2","created":"2013-11-16 00:00:00","created_by":"192","created_by_alias":"","modified":"2016-01-30 20:51:50","modified_by":"192","checked_out":"192","checked_out_time":"2016-01-30 20:51:38","publish_up":"2013-11-16 00:00:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"229","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_updates`
--

CREATE TABLE `x8n17_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Contenu de la table `x8n17_updates`
--

INSERT INTO `x8n17_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(2, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(3, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(4, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(5, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(6, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(7, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(8, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(9, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(10, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(11, 3, 0, 'English', '', 'pkg_en-AU', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(13, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(14, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(15, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(16, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(17, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(18, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(19, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(20, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(21, 3, 0, 'English', '', 'pkg_en-US', 'package', '', 0, '3.4.6.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(22, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(23, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(24, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.8.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(25, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(26, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(27, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(28, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(29, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(30, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(31, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(32, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(33, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(34, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(35, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(36, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(37, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(38, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(39, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(40, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(41, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(42, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(43, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(44, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(45, 3, 0, 'English', '', 'pkg_en-CA', 'package', '', 0, '3.4.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(46, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(47, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(48, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(49, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(50, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.4.5.2', '', 'http://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(51, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(52, 5, 0, 'Installer - Install from Web', 'This plugin offers functionality for the ''Install from Web'' tab.', 'webinstaller', 'plugin', 'installer', 0, '1.0.5', '', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 'http://docs.joomla.org/Install_from_Web', '');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_update_sites`
--

CREATE TABLE `x8n17_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Contenu de la table `x8n17_update_sites`
--

INSERT INTO `x8n17_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1454334380, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1454334378, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1454334378, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1454334378, ''),
(6, 'JDeveloper Update Site', 'extension', 'http://joommaster.bplaced.net/updates/jdeveloper-update.xml', 1, 1454334378, ''),
(7, 'JDeveloper Update Site', 'extension', 'http://joommaster.bplaced.net/updates/lib_jcms_update.xml', 1, 1454334378, '');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_update_sites_extensions`
--

CREATE TABLE `x8n17_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Contenu de la table `x8n17_update_sites_extensions`
--

INSERT INTO `x8n17_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 605),
(6, 10022),
(7, 10023);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_usergroups`
--

CREATE TABLE `x8n17_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_usergroups`
--

INSERT INTO `x8n17_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Enregistré'),
(3, 2, 9, 14, 'Auteur'),
(4, 3, 10, 13, 'Rédacteur'),
(5, 4, 11, 12, 'Validateur'),
(6, 1, 4, 7, 'Gestionnaire'),
(7, 6, 5, 6, 'Administrateur'),
(8, 1, 16, 17, 'Super Utilisateur'),
(9, 1, 2, 3, 'Invité');

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_users`
--

CREATE TABLE `x8n17_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_users`
--

INSERT INTO `x8n17_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(192, 'Super Utilisateur', 'admin', 'test.admin@site.com', '$2y$10$cCvZv2qjCuIkND5UKZ9dge2reS1lLPaMeAseDBcS.xjbZxlyzhP1u', 0, 1, '2016-01-28 16:57:27', '2016-02-01 17:27:30', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_user_keys`
--

CREATE TABLE `x8n17_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_user_notes`
--

CREATE TABLE `x8n17_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_user_profiles`
--

CREATE TABLE `x8n17_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_user_usergroup_map`
--

CREATE TABLE `x8n17_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_user_usergroup_map`
--

INSERT INTO `x8n17_user_usergroup_map` (`user_id`, `group_id`) VALUES
(192, 8);

-- --------------------------------------------------------

--
-- Structure de la table `x8n17_viewlevels`
--

CREATE TABLE `x8n17_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `x8n17_viewlevels`
--

INSERT INTO `x8n17_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Accès public', 0, '[1]'),
(2, 'Accès enregistré', 1, '[6,2,8]'),
(3, 'Accès spécial', 2, '[6,3,8]'),
(5, 'Accès invité', 0, '[9]'),
(6, 'Accès super utilisateur', 0, '[8]');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `x8n17_assets`
--
ALTER TABLE `x8n17_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Index pour la table `x8n17_associations`
--
ALTER TABLE `x8n17_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Index pour la table `x8n17_banners`
--
ALTER TABLE `x8n17_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `x8n17_banner_clients`
--
ALTER TABLE `x8n17_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Index pour la table `x8n17_banner_tracks`
--
ALTER TABLE `x8n17_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Index pour la table `x8n17_categories`
--
ALTER TABLE `x8n17_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `x8n17_contact_details`
--
ALTER TABLE `x8n17_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `x8n17_content`
--
ALTER TABLE `x8n17_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `x8n17_contentitem_tag_map`
--
ALTER TABLE `x8n17_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Index pour la table `x8n17_content_frontpage`
--
ALTER TABLE `x8n17_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `x8n17_content_rating`
--
ALTER TABLE `x8n17_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `x8n17_content_types`
--
ALTER TABLE `x8n17_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Index pour la table `x8n17_extensions`
--
ALTER TABLE `x8n17_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Index pour la table `x8n17_feed`
--
ALTER TABLE `x8n17_feed`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_finder_filters`
--
ALTER TABLE `x8n17_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Index pour la table `x8n17_finder_links`
--
ALTER TABLE `x8n17_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Index pour la table `x8n17_finder_links_terms0`
--
ALTER TABLE `x8n17_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms1`
--
ALTER TABLE `x8n17_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms2`
--
ALTER TABLE `x8n17_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms3`
--
ALTER TABLE `x8n17_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms4`
--
ALTER TABLE `x8n17_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms5`
--
ALTER TABLE `x8n17_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms6`
--
ALTER TABLE `x8n17_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms7`
--
ALTER TABLE `x8n17_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms8`
--
ALTER TABLE `x8n17_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_terms9`
--
ALTER TABLE `x8n17_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termsa`
--
ALTER TABLE `x8n17_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termsb`
--
ALTER TABLE `x8n17_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termsc`
--
ALTER TABLE `x8n17_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termsd`
--
ALTER TABLE `x8n17_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termse`
--
ALTER TABLE `x8n17_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_links_termsf`
--
ALTER TABLE `x8n17_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `x8n17_finder_taxonomy`
--
ALTER TABLE `x8n17_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Index pour la table `x8n17_finder_taxonomy_map`
--
ALTER TABLE `x8n17_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Index pour la table `x8n17_finder_terms`
--
ALTER TABLE `x8n17_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Index pour la table `x8n17_finder_terms_common`
--
ALTER TABLE `x8n17_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Index pour la table `x8n17_finder_tokens`
--
ALTER TABLE `x8n17_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Index pour la table `x8n17_finder_tokens_aggregate`
--
ALTER TABLE `x8n17_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Index pour la table `x8n17_finder_types`
--
ALTER TABLE `x8n17_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Index pour la table `x8n17_jdeveloper_components`
--
ALTER TABLE `x8n17_jdeveloper_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_fields`
--
ALTER TABLE `x8n17_jdeveloper_fields`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_formfields`
--
ALTER TABLE `x8n17_jdeveloper_formfields`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_formrules`
--
ALTER TABLE `x8n17_jdeveloper_formrules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_forms`
--
ALTER TABLE `x8n17_jdeveloper_forms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_libraries`
--
ALTER TABLE `x8n17_jdeveloper_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_modules`
--
ALTER TABLE `x8n17_jdeveloper_modules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_overrides`
--
ALTER TABLE `x8n17_jdeveloper_overrides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_plugins`
--
ALTER TABLE `x8n17_jdeveloper_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_tables`
--
ALTER TABLE `x8n17_jdeveloper_tables`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_jdeveloper_templates`
--
ALTER TABLE `x8n17_jdeveloper_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_komento_acl`
--
ALTER TABLE `x8n17_komento_acl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_acl_content_type` (`type`);

--
-- Index pour la table `x8n17_komento_actions`
--
ALTER TABLE `x8n17_komento_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_actions` (`type`,`comment_id`,`action_by`),
  ADD KEY `komento_actions_comment_id` (`comment_id`);

--
-- Index pour la table `x8n17_komento_activities`
--
ALTER TABLE `x8n17_komento_activities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_komento_captcha`
--
ALTER TABLE `x8n17_komento_captcha`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_komento_comments`
--
ALTER TABLE `x8n17_komento_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_threaded` (`component`,`cid`,`published`,`lft`,`rgt`),
  ADD KEY `komento_threaded_reverse` (`component`,`cid`,`published`,`rgt`),
  ADD KEY `komento_module_comments` (`component`,`cid`,`published`,`created`),
  ADD KEY `komento_backend` (`parent_id`,`created`);

--
-- Index pour la table `x8n17_komento_hashkeys`
--
ALTER TABLE `x8n17_komento_hashkeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `type` (`type`);

--
-- Index pour la table `x8n17_komento_ipfilter`
--
ALTER TABLE `x8n17_komento_ipfilter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_ipfilter` (`component`,`ip`);

--
-- Index pour la table `x8n17_komento_mailq`
--
ALTER TABLE `x8n17_komento_mailq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_mailq_status` (`status`);

--
-- Index pour la table `x8n17_komento_subscription`
--
ALTER TABLE `x8n17_komento_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komento_subscription` (`type`,`component`,`cid`);

--
-- Index pour la table `x8n17_komento_uploads`
--
ALTER TABLE `x8n17_komento_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_languages`
--
ALTER TABLE `x8n17_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Index pour la table `x8n17_menu`
--
ALTER TABLE `x8n17_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `x8n17_menu_types`
--
ALTER TABLE `x8n17_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Index pour la table `x8n17_messages`
--
ALTER TABLE `x8n17_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Index pour la table `x8n17_messages_cfg`
--
ALTER TABLE `x8n17_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Index pour la table `x8n17_modules`
--
ALTER TABLE `x8n17_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `x8n17_modules_menu`
--
ALTER TABLE `x8n17_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Index pour la table `x8n17_newsfeeds`
--
ALTER TABLE `x8n17_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `x8n17_overrider`
--
ALTER TABLE `x8n17_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `x8n17_postinstall_messages`
--
ALTER TABLE `x8n17_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Index pour la table `x8n17_redirect_links`
--
ALTER TABLE `x8n17_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Index pour la table `x8n17_schemas`
--
ALTER TABLE `x8n17_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Index pour la table `x8n17_session`
--
ALTER TABLE `x8n17_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Index pour la table `x8n17_tags`
--
ALTER TABLE `x8n17_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `x8n17_template_styles`
--
ALTER TABLE `x8n17_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Index pour la table `x8n17_ucm_base`
--
ALTER TABLE `x8n17_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Index pour la table `x8n17_ucm_content`
--
ALTER TABLE `x8n17_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Index pour la table `x8n17_ucm_history`
--
ALTER TABLE `x8n17_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Index pour la table `x8n17_updates`
--
ALTER TABLE `x8n17_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Index pour la table `x8n17_update_sites`
--
ALTER TABLE `x8n17_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Index pour la table `x8n17_update_sites_extensions`
--
ALTER TABLE `x8n17_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Index pour la table `x8n17_usergroups`
--
ALTER TABLE `x8n17_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Index pour la table `x8n17_users`
--
ALTER TABLE `x8n17_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `x8n17_user_keys`
--
ALTER TABLE `x8n17_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `x8n17_user_notes`
--
ALTER TABLE `x8n17_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Index pour la table `x8n17_user_profiles`
--
ALTER TABLE `x8n17_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Index pour la table `x8n17_user_usergroup_map`
--
ALTER TABLE `x8n17_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Index pour la table `x8n17_viewlevels`
--
ALTER TABLE `x8n17_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `x8n17_assets`
--
ALTER TABLE `x8n17_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `x8n17_banners`
--
ALTER TABLE `x8n17_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_banner_clients`
--
ALTER TABLE `x8n17_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_categories`
--
ALTER TABLE `x8n17_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `x8n17_contact_details`
--
ALTER TABLE `x8n17_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_content`
--
ALTER TABLE `x8n17_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `x8n17_content_types`
--
ALTER TABLE `x8n17_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `x8n17_extensions`
--
ALTER TABLE `x8n17_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;
--
-- AUTO_INCREMENT pour la table `x8n17_feed`
--
ALTER TABLE `x8n17_feed`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_finder_filters`
--
ALTER TABLE `x8n17_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_finder_links`
--
ALTER TABLE `x8n17_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_finder_taxonomy`
--
ALTER TABLE `x8n17_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `x8n17_finder_terms`
--
ALTER TABLE `x8n17_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_finder_types`
--
ALTER TABLE `x8n17_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_components`
--
ALTER TABLE `x8n17_jdeveloper_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_fields`
--
ALTER TABLE `x8n17_jdeveloper_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_formfields`
--
ALTER TABLE `x8n17_jdeveloper_formfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_formrules`
--
ALTER TABLE `x8n17_jdeveloper_formrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_forms`
--
ALTER TABLE `x8n17_jdeveloper_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_libraries`
--
ALTER TABLE `x8n17_jdeveloper_libraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_modules`
--
ALTER TABLE `x8n17_jdeveloper_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_overrides`
--
ALTER TABLE `x8n17_jdeveloper_overrides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_plugins`
--
ALTER TABLE `x8n17_jdeveloper_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_tables`
--
ALTER TABLE `x8n17_jdeveloper_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `x8n17_jdeveloper_templates`
--
ALTER TABLE `x8n17_jdeveloper_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT pour la table `x8n17_komento_acl`
--
ALTER TABLE `x8n17_komento_acl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_actions`
--
ALTER TABLE `x8n17_komento_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_activities`
--
ALTER TABLE `x8n17_komento_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_captcha`
--
ALTER TABLE `x8n17_komento_captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_comments`
--
ALTER TABLE `x8n17_komento_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_hashkeys`
--
ALTER TABLE `x8n17_komento_hashkeys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_ipfilter`
--
ALTER TABLE `x8n17_komento_ipfilter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_mailq`
--
ALTER TABLE `x8n17_komento_mailq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_subscription`
--
ALTER TABLE `x8n17_komento_subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `x8n17_komento_uploads`
--
ALTER TABLE `x8n17_komento_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_languages`
--
ALTER TABLE `x8n17_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `x8n17_menu`
--
ALTER TABLE `x8n17_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT pour la table `x8n17_menu_types`
--
ALTER TABLE `x8n17_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `x8n17_messages`
--
ALTER TABLE `x8n17_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_modules`
--
ALTER TABLE `x8n17_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT pour la table `x8n17_newsfeeds`
--
ALTER TABLE `x8n17_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_overrider`
--
ALTER TABLE `x8n17_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT pour la table `x8n17_postinstall_messages`
--
ALTER TABLE `x8n17_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `x8n17_redirect_links`
--
ALTER TABLE `x8n17_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_tags`
--
ALTER TABLE `x8n17_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `x8n17_template_styles`
--
ALTER TABLE `x8n17_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `x8n17_ucm_content`
--
ALTER TABLE `x8n17_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `x8n17_ucm_history`
--
ALTER TABLE `x8n17_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `x8n17_updates`
--
ALTER TABLE `x8n17_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `x8n17_update_sites`
--
ALTER TABLE `x8n17_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `x8n17_usergroups`
--
ALTER TABLE `x8n17_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `x8n17_users`
--
ALTER TABLE `x8n17_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT pour la table `x8n17_user_keys`
--
ALTER TABLE `x8n17_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_user_notes`
--
ALTER TABLE `x8n17_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `x8n17_viewlevels`
--
ALTER TABLE `x8n17_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
