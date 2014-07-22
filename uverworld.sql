-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 22, 2014 at 08:31 AM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `uverworlddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_account`
--

CREATE TABLE `dtb_api_account` (
  `api_account_id` int(11) NOT NULL,
  `api_access_key` text COLLATE utf8_bin NOT NULL,
  `api_secret_key` text COLLATE utf8_bin NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`api_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_account_api_account_id_seq`
--

CREATE TABLE `dtb_api_account_api_account_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_config`
--

CREATE TABLE `dtb_api_config` (
  `api_config_id` int(11) NOT NULL,
  `operation_name` text COLLATE utf8_bin NOT NULL,
  `operation_description` text COLLATE utf8_bin,
  `auth_types` text COLLATE utf8_bin NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `is_log` smallint(6) NOT NULL DEFAULT '0',
  `sub_data` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`api_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_config_api_config_id_seq`
--

CREATE TABLE `dtb_api_config_api_config_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_baseinfo`
--

CREATE TABLE `dtb_baseinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `company_name` text COLLATE utf8_bin,
  `company_kana` text COLLATE utf8_bin,
  `zip01` text COLLATE utf8_bin,
  `zip02` text COLLATE utf8_bin,
  `zipcode` text COLLATE utf8_bin,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text COLLATE utf8_bin,
  `addr02` text COLLATE utf8_bin,
  `tel01` text COLLATE utf8_bin,
  `tel02` text COLLATE utf8_bin,
  `tel03` text COLLATE utf8_bin,
  `fax01` text COLLATE utf8_bin,
  `fax02` text COLLATE utf8_bin,
  `fax03` text COLLATE utf8_bin,
  `business_hour` text COLLATE utf8_bin,
  `law_company` text COLLATE utf8_bin,
  `law_manager` text COLLATE utf8_bin,
  `law_zip01` text COLLATE utf8_bin,
  `law_zip02` text COLLATE utf8_bin,
  `law_zipcode` text COLLATE utf8_bin,
  `law_pref` smallint(6) DEFAULT NULL,
  `law_addr01` text COLLATE utf8_bin,
  `law_addr02` text COLLATE utf8_bin,
  `law_tel01` text COLLATE utf8_bin,
  `law_tel02` text COLLATE utf8_bin,
  `law_tel03` text COLLATE utf8_bin,
  `law_fax01` text COLLATE utf8_bin,
  `law_fax02` text COLLATE utf8_bin,
  `law_fax03` text COLLATE utf8_bin,
  `law_email` text COLLATE utf8_bin,
  `law_url` text COLLATE utf8_bin,
  `law_term01` text COLLATE utf8_bin,
  `law_term02` text COLLATE utf8_bin,
  `law_term03` text COLLATE utf8_bin,
  `law_term04` text COLLATE utf8_bin,
  `law_term05` text COLLATE utf8_bin,
  `law_term06` text COLLATE utf8_bin,
  `law_term07` text COLLATE utf8_bin,
  `law_term08` text COLLATE utf8_bin,
  `law_term09` text COLLATE utf8_bin,
  `law_term10` text COLLATE utf8_bin,
  `tax` decimal(10,0) NOT NULL DEFAULT '5',
  `tax_rule` smallint(6) NOT NULL DEFAULT '1',
  `email01` text COLLATE utf8_bin,
  `email02` text COLLATE utf8_bin,
  `email03` text COLLATE utf8_bin,
  `email04` text COLLATE utf8_bin,
  `email05` text COLLATE utf8_bin,
  `free_rule` decimal(10,0) DEFAULT NULL,
  `shop_name` text COLLATE utf8_bin,
  `shop_kana` text COLLATE utf8_bin,
  `shop_name_eng` text COLLATE utf8_bin,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `welcome_point` decimal(10,0) NOT NULL DEFAULT '0',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `top_tpl` text COLLATE utf8_bin,
  `product_tpl` text COLLATE utf8_bin,
  `detail_tpl` text COLLATE utf8_bin,
  `mypage_tpl` text COLLATE utf8_bin,
  `good_traded` text COLLATE utf8_bin,
  `message` text COLLATE utf8_bin,
  `regular_holiday_ids` text COLLATE utf8_bin,
  `latitude` text COLLATE utf8_bin,
  `longitude` text COLLATE utf8_bin,
  `downloadable_days` decimal(10,0) DEFAULT '30',
  `downloadable_days_unlimited` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_baseinfo`
--

INSERT INTO `dtb_baseinfo` (`id`, `company_name`, `company_kana`, `zip01`, `zip02`, `zipcode`, `pref`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `business_hour`, `law_company`, `law_manager`, `law_zip01`, `law_zip02`, `law_zipcode`, `law_pref`, `law_addr01`, `law_addr02`, `law_tel01`, `law_tel02`, `law_tel03`, `law_fax01`, `law_fax02`, `law_fax03`, `law_email`, `law_url`, `law_term01`, `law_term02`, `law_term03`, `law_term04`, `law_term05`, `law_term06`, `law_term07`, `law_term08`, `law_term09`, `law_term10`, `tax`, `tax_rule`, `email01`, `email02`, `email03`, `email04`, `email05`, `free_rule`, `shop_name`, `shop_kana`, `shop_name_eng`, `point_rate`, `welcome_point`, `update_date`, `top_tpl`, `product_tpl`, `detail_tpl`, `mypage_tpl`, `good_traded`, `message`, `regular_holiday_ids`, `latitude`, `longitude`, `downloadable_days`, `downloadable_days_unlimited`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0x61646d696e40676d61696c2e636f6d, 0x61646d696e40676d61696c2e636f6d, 0x61646d696e40676d61696c2e636f6d, 0x61646d696e40676d61696c2e636f6d, 0x61646d696e40676d61696c2e636f6d, NULL, 0x55766572776f726c64, NULL, NULL, 0, 0, '2014-07-15 10:50:54', 0x64656661756c7431, 0x64656661756c7431, 0x64656661756c7431, 0x64656661756c7431, NULL, NULL, NULL, NULL, NULL, 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_best_products`
--

CREATE TABLE `dtb_best_products` (
  `best_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin,
  `comment` text COLLATE utf8_bin,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`best_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_best_products`
--

INSERT INTO `dtb_best_products` (`best_id`, `category_id`, `rank`, `product_id`, `title`, `comment`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0, 1, 2, NULL, 0x54686520636f6c6f7220726564206d616b657320616c6c206f662074686520646966666572656e63652e, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(2, 0, 2, 1, NULL, 0x546865206d696e7420677265656e20636f6c6f72696e67206272696e6773206f75742074686520e28098726574726fe2809920696e20796f752e, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(4, 0, 3, 4, NULL, 0x476f6f642050726f64756374, 2, '2014-07-16 07:19:31', '2014-07-16 07:19:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_best_products_best_id_seq`
--

CREATE TABLE `dtb_best_products_best_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dtb_best_products_best_id_seq`
--

INSERT INTO `dtb_best_products_best_id_seq` (`sequence`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bkup`
--

CREATE TABLE `dtb_bkup` (
  `bkup_name` text COLLATE utf8_bin NOT NULL,
  `bkup_memo` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bkup_name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bloc`
--

CREATE TABLE `dtb_bloc` (
  `device_type_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_name` text COLLATE utf8_bin,
  `tpl_path` text COLLATE utf8_bin,
  `filename` text COLLATE utf8_bin NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `php_path` text COLLATE utf8_bin,
  `deletable_flg` smallint(6) NOT NULL DEFAULT '1',
  `plugin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_type_id`,`bloc_id`),
  UNIQUE KEY `device_type_id` (`device_type_id`,`filename`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_bloc`
--

INSERT INTO `dtb_bloc` (`device_type_id`, `bloc_id`, `bloc_name`, `tpl_path`, `filename`, `create_date`, `update_date`, `php_path`, `deletable_flg`, `plugin_id`) VALUES
(1, 1, 0x53697465206c6f676f, 0x736974655f6c6f676f2e74706c, 0x736974655f6c6f676f, '2014-07-15 10:50:47', '2014-07-15 10:50:47', NULL, 0, NULL),
(1, 2, 0x4e657720696e666f726d6174696f6e, 0x6e6577732e74706c, 0x6e657773, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6e6577732e706870, 0, NULL),
(1, 3, 0x5265636f6d6d656e6465642070726f64756374, 0x7265636f6d6d656e642e74706c, 0x7265636f6d6d656e64, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f7265636f6d6d656e642e706870, 0, NULL),
(1, 4, 0x43617465676f7279, 0x63617465676f72792e74706c, 0x63617465676f7279, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f63617465676f72792e706870, 0, NULL),
(2, 1, 0x4e657720696e666f726d6174696f6e, 0x6e6577732e74706c, 0x6e657773, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6e6577732e706870, 0, NULL),
(2, 2, 0x4c6f67696e, 0x6c6f67696e2e74706c, 0x6c6f67696e, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6c6f67696e2e706870, 0, NULL),
(2, 3, 0x5265636f6d6d656e6465642070726f64756374, 0x7265636f6d6d656e642e74706c, 0x7265636f6d6d656e64, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f7265636f6d6d656e642e706870, 0, NULL),
(2, 4, 0x43617465676f7279, 0x63617465676f72792e74706c, 0x63617465676f7279, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f63617465676f72792e706870, 0, NULL),
(2, 5, 0x5b4865616465725d204c6f67696e, 0x6c6f67696e5f6865616465722e74706c, 0x6c6f67696e5f686561646572, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6c6f67696e5f6865616465722e706870, 0, NULL),
(2, 6, 0x5b4865616465725d204e617669, 0x6e6176695f6865616465722e74706c, 0x6e6176695f686561646572, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6e6176695f6865616465722e706870, 0, NULL),
(2, 7, 0x5b466f6f7465725d204c6f67696e, 0x6c6f67696e5f666f6f7465722e74706c, 0x6c6f67696e5f666f6f746572, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6c6f67696e5f666f6f7465722e706870, 0, NULL),
(2, 8, 0x5b466f6f7465725d204e617669, 0x6e6176695f666f6f7465722e74706c, 0x6e6176695f666f6f746572, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6e6176695f666f6f7465722e706870, 0, NULL),
(10, 1, 0x43617465676f7279, 0x63617465676f72792e74706c, 0x63617465676f7279, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f63617465676f72792e706870, 0, NULL),
(10, 2, 0x5573616765206775696465, 0x67756964652e74706c, 0x6775696465, '2014-07-15 10:50:47', '2014-07-15 10:50:47', NULL, 0, NULL),
(10, 3, 0x496e73696465206f662063617274, 0x636172742e74706c, 0x63617274, '2014-07-15 10:50:47', '2014-07-18 07:58:15', 0x66726f6e7470617274732f626c6f632f636172742e706870, 0, NULL),
(10, 4, 0x50726f6475637420736561726368, 0x7365617263685f70726f64756374732e74706c, 0x7365617263685f70726f6475637473, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f7365617263685f70726f64756374732e706870, 0, NULL),
(10, 5, 0x4e657720696e666f726d6174696f6e, 0x6e6577732e74706c, 0x6e657773, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6e6577732e706870, 0, NULL),
(10, 6, 0x4c6f67696e, 0x6c6f67696e2e74706c, 0x6c6f67696e, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6c6f67696e2e706870, 0, NULL),
(10, 7, 0x5265636f6d6d656e6465642070726f64756374, 0x7265636f6d6d656e642e74706c, 0x7265636f6d6d656e64, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f7265636f6d6d656e642e706870, 0, NULL),
(10, 8, 0x43616c656e646172, 0x63616c656e6461722e74706c, 0x63616c656e646172, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f63616c656e6461722e706870, 0, NULL),
(10, 9, 0x5b4865616465725d204c6f67696e, 0x6c6f67696e5f6865616465722e74706c, 0x6c6f67696e5f686561646572, '2014-07-15 10:50:47', '2014-07-15 10:50:47', 0x66726f6e7470617274732f626c6f632f6c6f67696e5f6865616465722e706870, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_blocposition`
--

CREATE TABLE `dtb_blocposition` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_row` int(11) DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`device_type_id`,`page_id`,`target_id`,`bloc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_blocposition`
--

INSERT INTO `dtb_blocposition` (`device_type_id`, `page_id`, `target_id`, `bloc_id`, `bloc_row`, `anywhere`) VALUES
(1, 1, 2, 2, 1, 0),
(1, 1, 2, 3, 2, 0),
(1, 1, 2, 4, 3, 0),
(1, 1, 10, 1, 1, 0),
(2, 1, 4, 1, 4, 0),
(2, 1, 4, 2, 1, 0),
(2, 1, 4, 3, 2, 0),
(2, 1, 4, 4, 3, 0),
(2, 1, 6, 7, 2, 0),
(2, 1, 6, 8, 1, 0),
(2, 1, 10, 5, 1, 0),
(2, 2, 6, 7, 2, 0),
(2, 2, 6, 8, 1, 0),
(2, 2, 10, 6, 1, 0),
(2, 3, 6, 7, 2, 0),
(2, 3, 6, 8, 1, 0),
(2, 3, 10, 6, 1, 0),
(2, 4, 6, 7, 2, 0),
(2, 4, 6, 8, 1, 0),
(2, 4, 10, 6, 1, 0),
(2, 5, 6, 7, 2, 0),
(2, 5, 6, 8, 1, 0),
(2, 5, 10, 6, 1, 0),
(2, 6, 6, 7, 2, 0),
(2, 6, 6, 8, 1, 0),
(2, 6, 10, 6, 1, 0),
(2, 7, 6, 7, 2, 0),
(2, 7, 6, 8, 1, 0),
(2, 7, 10, 6, 1, 0),
(2, 8, 6, 7, 2, 0),
(2, 8, 6, 8, 1, 0),
(2, 8, 10, 6, 1, 0),
(2, 9, 6, 7, 2, 0),
(2, 9, 6, 8, 1, 0),
(2, 9, 10, 6, 1, 0),
(2, 10, 6, 7, 2, 0),
(2, 10, 6, 8, 1, 0),
(2, 10, 10, 6, 1, 0),
(2, 11, 6, 7, 2, 0),
(2, 11, 6, 8, 1, 0),
(2, 11, 10, 6, 1, 0),
(2, 12, 6, 7, 2, 0),
(2, 12, 6, 8, 1, 0),
(2, 12, 10, 6, 1, 0),
(2, 13, 6, 7, 2, 0),
(2, 13, 6, 8, 1, 0),
(2, 13, 10, 6, 1, 0),
(2, 14, 6, 7, 2, 0),
(2, 14, 6, 8, 1, 0),
(2, 14, 10, 6, 1, 0),
(2, 15, 6, 7, 2, 0),
(2, 15, 6, 8, 1, 0),
(2, 15, 10, 6, 1, 0),
(2, 16, 6, 7, 2, 0),
(2, 16, 6, 8, 1, 0),
(2, 16, 10, 6, 1, 0),
(2, 17, 6, 7, 2, 0),
(2, 17, 6, 8, 1, 0),
(2, 17, 10, 6, 1, 0),
(2, 18, 6, 7, 2, 0),
(2, 18, 6, 8, 1, 0),
(2, 18, 10, 6, 1, 0),
(2, 19, 6, 7, 2, 0),
(2, 19, 6, 8, 1, 0),
(2, 19, 10, 6, 1, 0),
(2, 20, 6, 7, 2, 0),
(2, 20, 6, 8, 1, 0),
(2, 20, 10, 6, 1, 0),
(2, 21, 6, 7, 2, 0),
(2, 21, 6, 8, 1, 0),
(2, 21, 10, 6, 1, 0),
(2, 22, 6, 7, 2, 0),
(2, 22, 6, 8, 1, 0),
(2, 22, 10, 6, 1, 0),
(2, 23, 6, 7, 2, 0),
(2, 23, 6, 8, 1, 0),
(2, 23, 10, 6, 1, 0),
(2, 24, 6, 7, 2, 0),
(2, 24, 6, 8, 1, 0),
(2, 24, 10, 6, 1, 0),
(2, 25, 6, 7, 2, 0),
(2, 25, 6, 8, 1, 0),
(2, 25, 10, 6, 1, 0),
(2, 26, 6, 7, 2, 0),
(2, 26, 6, 8, 1, 0),
(2, 26, 10, 6, 1, 0),
(2, 27, 6, 7, 2, 0),
(2, 27, 6, 8, 1, 0),
(2, 27, 10, 6, 1, 0),
(2, 28, 6, 7, 2, 0),
(2, 28, 6, 8, 1, 0),
(2, 28, 10, 6, 1, 0),
(2, 29, 6, 7, 2, 0),
(2, 29, 6, 8, 1, 0),
(2, 29, 10, 6, 1, 0),
(10, 1, 3, 1, 2, 1),
(10, 1, 3, 3, 1, 0),
(10, 1, 3, 4, 4, 1),
(10, 1, 3, 6, 3, 1),
(10, 1, 3, 8, 5, 1),
(10, 1, 4, 5, 2, 0),
(10, 1, 4, 7, 1, 0),
(10, 1, 10, 9, 1, 1),
(10, 2, 1, 1, 2, 0),
(10, 2, 1, 2, 3, 0),
(10, 2, 1, 3, 1, 0),
(10, 3, 1, 1, 2, 0),
(10, 3, 1, 2, 3, 0),
(10, 3, 1, 3, 1, 0),
(10, 4, 1, 1, 2, 0),
(10, 4, 1, 2, 3, 0),
(10, 4, 1, 3, 1, 0),
(10, 5, 1, 1, 2, 0),
(10, 5, 1, 2, 3, 0),
(10, 5, 1, 3, 1, 0),
(10, 6, 1, 1, 2, 0),
(10, 6, 1, 2, 3, 0),
(10, 6, 1, 3, 1, 0),
(10, 7, 1, 1, 2, 0),
(10, 7, 1, 2, 3, 0),
(10, 7, 1, 3, 1, 0),
(10, 8, 1, 1, 2, 0),
(10, 8, 1, 2, 3, 0),
(10, 8, 1, 3, 1, 0),
(10, 9, 1, 1, 2, 0),
(10, 9, 1, 2, 3, 0),
(10, 9, 1, 3, 1, 0),
(10, 10, 1, 1, 2, 0),
(10, 10, 1, 2, 3, 0),
(10, 10, 1, 3, 1, 0),
(10, 11, 1, 1, 2, 0),
(10, 11, 1, 2, 3, 0),
(10, 11, 1, 3, 1, 0),
(10, 12, 1, 1, 2, 0),
(10, 12, 1, 2, 3, 0),
(10, 12, 1, 3, 1, 0),
(10, 13, 1, 1, 2, 0),
(10, 13, 1, 2, 3, 0),
(10, 13, 1, 3, 1, 0),
(10, 14, 1, 1, 2, 0),
(10, 14, 1, 2, 3, 0),
(10, 14, 1, 3, 1, 0),
(10, 15, 1, 1, 2, 0),
(10, 15, 1, 2, 3, 0),
(10, 15, 1, 3, 1, 0),
(10, 16, 1, 1, 2, 0),
(10, 16, 1, 2, 3, 0),
(10, 16, 1, 3, 1, 0),
(10, 17, 1, 1, 2, 0),
(10, 17, 1, 2, 3, 0),
(10, 17, 1, 3, 1, 0),
(10, 18, 1, 1, 2, 0),
(10, 18, 1, 2, 3, 0),
(10, 18, 1, 3, 1, 0),
(10, 19, 1, 1, 2, 0),
(10, 19, 1, 2, 3, 0),
(10, 19, 1, 3, 1, 0),
(10, 20, 1, 1, 2, 0),
(10, 20, 1, 2, 3, 0),
(10, 20, 1, 3, 1, 0),
(10, 21, 1, 1, 2, 0),
(10, 21, 1, 2, 3, 0),
(10, 21, 1, 3, 1, 0),
(10, 22, 1, 1, 2, 0),
(10, 22, 1, 2, 3, 0),
(10, 22, 1, 3, 1, 0),
(10, 23, 1, 1, 2, 0),
(10, 23, 1, 2, 3, 0),
(10, 23, 1, 3, 1, 0),
(10, 24, 1, 1, 2, 0),
(10, 24, 1, 2, 3, 0),
(10, 24, 1, 3, 1, 0),
(10, 25, 1, 1, 2, 0),
(10, 25, 1, 2, 3, 0),
(10, 25, 1, 3, 1, 0),
(10, 26, 1, 1, 2, 0),
(10, 26, 1, 2, 3, 0),
(10, 26, 1, 3, 1, 0),
(10, 27, 1, 1, 2, 0),
(10, 27, 1, 2, 3, 0),
(10, 27, 1, 3, 1, 0),
(10, 28, 1, 1, 2, 0),
(10, 28, 1, 2, 3, 0),
(10, 28, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bloc_bloc_id_seq`
--

CREATE TABLE `dtb_bloc_bloc_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dtb_bloc_bloc_id_seq`
--

INSERT INTO `dtb_bloc_bloc_id_seq` (`sequence`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category`
--

CREATE TABLE `dtb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` text COLLATE utf8_bin,
  `parent_category_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_category`
--

INSERT INTO `dtb_category` (`category_id`, `category_name`, `parent_category_id`, `level`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0x546f7073, 0, 1, 6, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(2, 0x4163636573736f7279, 0, 1, 7, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(3, 0x50616e7473, 1, 2, 4, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(4, 0x542d736869727473, 1, 2, 5, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(5, 0x4f74686572, 0, 1, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(6, 0x5061747465726e, 5, 2, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(7, 0x53706f72742d536869727473, 1, 2, 3, 2, '2014-07-16 03:51:59', '2014-07-16 03:51:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_category_id_seq`
--

CREATE TABLE `dtb_category_category_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `dtb_category_category_id_seq`
--

INSERT INTO `dtb_category_category_id_seq` (`sequence`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_count`
--

CREATE TABLE `dtb_category_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_category_count`
--

INSERT INTO `dtb_category_count` (`category_id`, `product_count`, `create_date`) VALUES
(4, 2, '2014-07-15 10:50:48'),
(6, 1, '2014-07-15 10:50:48'),
(7, 1, '2014-07-16 04:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_total_count`
--

CREATE TABLE `dtb_category_total_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_category_total_count`
--

INSERT INTO `dtb_category_total_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 3, '2014-07-16 04:07:18'),
(2, NULL, '2014-07-15 10:50:48'),
(3, NULL, '2014-07-15 10:50:48'),
(4, 2, '2014-07-15 10:50:48'),
(5, 1, '2014-07-15 10:50:48'),
(6, 1, '2014-07-15 10:50:48'),
(7, 1, '2014-07-16 04:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class`
--

CREATE TABLE `dtb_class` (
  `class_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_class`
--

INSERT INTO `dtb_class` (`class_id`, `name`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0x5461737465, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(2, 0x53697a65, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(3, 0x436f6c6f72, 3, 2, '2014-07-16 04:21:14', '2014-07-16 04:21:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_classcategory`
--

CREATE TABLE `dtb_classcategory` (
  `classcategory_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin,
  `class_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_classcategory`
--

INSERT INTO `dtb_classcategory` (`classcategory_id`, `name`, `class_id`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(0, NULL, 0, 0, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(1, 0x56616e696c6c61, 1, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(2, 0x43686f636f6c617465, 1, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(3, 0x4d6174636861, 1, 3, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(4, 0x4c, 2, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(5, 0x4d, 2, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(6, 0x53, 2, 3, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(7, 0x584c, 2, 4, 2, '2014-07-16 04:19:59', '2014-07-16 04:19:59', 0),
(8, 0x5768697465, 3, 1, 2, '2014-07-16 04:21:25', '2014-07-16 04:21:25', 0),
(9, 0x426c7565, 3, 2, 2, '2014-07-16 04:21:29', '2014-07-16 04:21:29', 0),
(10, 0x426c61636b, 3, 3, 2, '2014-07-16 04:21:45', '2014-07-16 04:21:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_classcategory_classcategory_id_seq`
--

CREATE TABLE `dtb_classcategory_classcategory_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `dtb_classcategory_classcategory_id_seq`
--

INSERT INTO `dtb_classcategory_classcategory_id_seq` (`sequence`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_class_id_seq`
--

CREATE TABLE `dtb_class_class_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dtb_class_class_id_seq`
--

INSERT INTO `dtb_class_class_id_seq` (`sequence`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv`
--

CREATE TABLE `dtb_csv` (
  `no` int(11) NOT NULL DEFAULT '0',
  `csv_id` int(11) NOT NULL,
  `col` text COLLATE utf8_bin,
  `disp_name` text COLLATE utf8_bin,
  `rank` int(11) DEFAULT NULL,
  `rw_flg` smallint(6) DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_convert_kana_option` text COLLATE utf8_bin,
  `size_const_type` text COLLATE utf8_bin,
  `error_check_types` text COLLATE utf8_bin,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_csv`
--

INSERT INTO `dtb_csv` (`no`, `csv_id`, `col`, `disp_name`, `rank`, `rw_flg`, `status`, `create_date`, `update_date`, `mb_convert_kana_option`, `size_const_type`, `error_check_types`) VALUES
(1, 1, 0x70726f647563745f6964, 0x50726f64756374204944, 1, 3, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(2, 1, 0x70726f647563745f636c6173735f6964, 0x50726f647563742073706563696669636174696f6e204944, 2, 3, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(3, 1, 0x706172656e745f636c61737363617465676f72795f6964, 0x4e65772073706563696669636174696f6e2063617465676f7279204944, 3, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(4, 1, 0x636c61737363617465676f72795f6964, 0x73706563696669636174696f6e2063617465676f7279204944, 4, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(5, 1, 0x706172656e745f636c61737363617465676f72795f6e616d65, 0x4e65772073706563696669636174696f6e2063617465676f7279206e616d65, 5, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(6, 1, 0x636c61737363617465676f72795f6e616d65, 0x5374616e646172642063617465676f7279206e616d65, 6, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(7, 1, 0x6d616b65725f6964, 0x4d616e756661637475726572204944, 7, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(8, 1, 0x2853454c454354206e616d65206173206d616b65725f6e616d652046524f4d206474625f6d616b657220574845524520707264636c732e6d616b65725f6964203d206474625f6d616b65722e6d616b65725f696429206173206d616b65725f6e616d65, 0x4d616e756661637475726572206e616d65, 8, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(9, 1, 0x6e616d65, 0x50726f64756374206e616d65, 9, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(10, 1, 0x737461747573, 0x446973706c61792073746174757320287075626c69632f6e6f6e2d7075626c696329, 10, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(11, 1, 0x636f6d6d656e7431, 0x4d616e7566616374757265722055524c2028436f6d6d656e74203129, 11, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x55524c5f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c55524c5f434845434b),
(12, 1, 0x636f6d6d656e7432, 0x436f6d6d656e742032, 12, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(13, 1, 0x636f6d6d656e7433, 0x53656172636820776f72642028636f6d6d656e74203329, 13, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(14, 1, 0x636f6d6d656e7434, 0x436f6d6d656e742034, 14, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(15, 1, 0x636f6d6d656e7435, 0x436f6d6d656e742035, 15, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(16, 1, 0x636f6d6d656e7436, 0x436f6d6d656e742036, 16, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(17, 1, 0x6e6f7465, 0x52656d61726b7320636f6c756d6e2028666f722053484f5029, 17, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(18, 1, 0x6d61696e5f6c6973745f636f6d6d656e74, 0x4c697374202d204d61696e20636f6d6d656e7473, 18, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4d544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(19, 1, 0x6d61696e5f6c6973745f696d616765, 0x4c697374202d204d61696e20696d61676573, 19, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(20, 1, 0x6d61696e5f636f6d6d656e74, 0x44657461696c73202d204d61696e20636f6d6d656e74, 20, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b2c48544d4c5f5441475f434845434b),
(21, 1, 0x6d61696e5f696d616765, 0x44657461696c73202d204d61696e20696d616765, 21, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(22, 1, 0x6d61696e5f6c617267655f696d616765, 0x44657461696c73202d204d61696e20656e6c617267656420696d616765, 22, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(23, 1, 0x7375625f7469746c6531, 0x44657461696c73202d205375627469746c65283129, 23, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(24, 1, 0x7375625f636f6d6d656e7431, 0x44657461696c73202d2053756220636f6d6d656e7420283129, 24, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c48544d4c5f5441475f434845434b),
(25, 1, 0x7375625f696d61676531, 0x44657461696c73202d2053756220696d61676520283129, 25, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(26, 1, 0x7375625f6c617267655f696d61676531, 0x44657461696c73202d2053756220656e6c617267656420696d61676520283129, 26, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(27, 1, 0x7375625f7469746c6532, 0x44657461696c73202d205375627469746c65283229, 27, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(28, 1, 0x7375625f636f6d6d656e7432, 0x44657461696c73202d2053756220636f6d6d656e7420283229, 28, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(29, 1, 0x7375625f696d61676532, 0x44657461696c73202d2053756220696d61676520283229, 29, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(30, 1, 0x7375625f6c617267655f696d61676532, 0x44657461696c73202d2053756220656e6c617267656420696d61676520283229, 30, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(31, 1, 0x7375625f7469746c6533, 0x44657461696c73202d205375627469746c65283329, 31, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(32, 1, 0x7375625f636f6d6d656e7433, 0x44657461696c73202d2053756220636f6d6d656e7420283329, 32, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(33, 1, 0x7375625f696d61676533, 0x44657461696c73202d2053756220696d61676520283329, 33, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(34, 1, 0x7375625f6c617267655f696d61676533, 0x44657461696c73202d2053756220656e6c617267656420696d61676520283329, 34, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(35, 1, 0x7375625f7469746c6534, 0x44657461696c73202d205375627469746c65283429, 35, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(36, 1, 0x7375625f636f6d6d656e7434, 0x44657461696c73202d2053756220636f6d6d656e7420283429, 36, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(37, 1, 0x7375625f696d61676534, 0x44657461696c73202d2053756220696d61676520283429, 37, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(38, 1, 0x7375625f6c617267655f696d61676534, 0x44657461696c73202d2053756220656e6c617267656420696d61676520283429, 38, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(39, 1, 0x7375625f7469746c6535, 0x44657461696c73202d205375627469746c65283529, 39, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(40, 1, 0x7375625f636f6d6d656e7435, 0x44657461696c73202d2053756220636f6d6d656e7420283529, 40, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(41, 1, 0x7375625f696d61676535, 0x44657461696c73202d2053756220696d61676520283529, 41, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(42, 1, 0x7375625f6c617267655f696d61676535, 0x44657461696c73202d2053756220656e6c617267656420696d61676520283529, 42, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c46494c455f455849535453),
(43, 1, 0x64656c69765f646174655f6964, 0x4573742e2064656c6976657279204944, 43, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(44, 1, 0x64656c5f666c67, 0x44656c6574696f6e20666c6167, 44, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(45, 1, 0x70726f647563745f747970655f6964, 0x50726f647563742074797065204944, 45, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(46, 1, 0x70726f647563745f636f6465, 0x50726f6475637420636f6465, 46, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(47, 1, 0x73746f636b, 0x496e76656e746f727920636f756e74, 47, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x414d4f554e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(48, 1, 0x73746f636b5f756e6c696d69746564, 0x556e6c696d6974656420696e76656e746f727920666c6167, 48, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(49, 1, 0x73616c655f6c696d6974, 0x4e756d626572206f662073616c6573207265737472696374696f6e73, 49, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x414d4f554e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(50, 1, 0x70726963653031, 0x4e6f726d616c207072696365, 50, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(51, 1, 0x70726963653032, 0x53616c6573207072696365, 51, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(52, 1, 0x64656c69765f666565, 0x5368697070696e6720666565, 52, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(53, 1, 0x706f696e745f72617465, 0x506f696e74206772616e742072617465, 53, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50455243454e544147455f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(54, 1, 0x646f776e5f66696c656e616d65, 0x446f776e6c6f616465642066696c65206e616d65, 54, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(55, 1, 0x646f776e5f7265616c66696c656e616d65, 0x41637475616c20646f776e6c6f616465642066696c65, 55, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c444f574e5f46494c455f455849535453),
(56, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203029204153207265636f6d6d656e645f70726f647563745f696431, 0x52656c617465642070726f6475637420494420283129, 56, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(57, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203029204153207265636f6d6d656e645f636f6d6d656e7431, 0x52656c617465642070726f6475637420636f6d6d656e7420283129, 57, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(58, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203129204153207265636f6d6d656e645f70726f647563745f696432, 0x52656c617465642070726f6475637420494420283229, 58, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(59, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203129204153207265636f6d6d656e645f636f6d6d656e7432, 0x52656c617465642070726f6475637420636f6d6d656e7420283229, 59, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(60, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203229204153207265636f6d6d656e645f70726f647563745f696433, 0x52656c617465642070726f6475637420494420283329, 60, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(61, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203229204153207265636f6d6d656e645f636f6d6d656e7433, 0x52656c617465642070726f6475637420636f6d6d656e7420283329, 61, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(62, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203329204153207265636f6d6d656e645f70726f647563745f696434, 0x52656c617465642070726f6475637420494420283429, 62, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(63, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203329204153207265636f6d6d656e645f636f6d6d656e7434, 0x52656c617465642070726f6475637420636f6d6d656e7420283429, 63, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(64, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203429204153207265636f6d6d656e645f70726f647563745f696435, 0x52656c617465642070726f6475637420494420283529, 64, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(65, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203429204153207265636f6d6d656e645f636f6d6d656e7435, 0x52656c617465642070726f6475637420636f6d6d656e7420283529, 65, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(66, 1, 0x2853454c454354207265636f6d6d656e645f70726f647563745f69642046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203529204153207265636f6d6d656e645f70726f647563745f696436, 0x52656c617465642070726f6475637420494420283629, 66, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(67, 1, 0x2853454c45435420636f6d6d656e742046524f4d206474625f7265636f6d6d656e645f70726f647563747320574845524520707264636c732e70726f647563745f6964203d206474625f7265636f6d6d656e645f70726f64756374732e70726f647563745f6964204f524445522042592072616e6b20444553432c207265636f6d6d656e645f70726f647563745f69642044455343206c696d69742031206f6666736574203529204153207265636f6d6d656e645f636f6d6d656e7436, 0x52656c617465642070726f6475637420636f6d6d656e7420283629, 67, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(68, 1, 0x2853454c4543542041525241595f544f5f535452494e472841525241592853454c4543542070726f647563745f7374617475735f69642046524f4d206474625f70726f647563745f737461747573205748455245206474625f70726f647563745f7374617475732e70726f647563745f6964203d20707264636c732e70726f647563745f696420616e642064656c5f666c67203d2030204f52444552204259206474625f70726f647563745f7374617475732e70726f647563745f7374617475735f6964292c20272c2729292061732070726f647563745f7374617475736573, 0x50726f6475637420737461747573, 68, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(69, 1, 0x2853454c4543542041525241595f544f5f535452494e472841525241592853454c454354206e616d652046524f4d206474625f70726f647563745f737461747573204c454654204a4f494e206d74625f737461747573204f4e20206474625f70726f647563745f7374617475732e70726f647563745f7374617475735f6964203d206d74625f7374617475732e696420205748455245206474625f70726f647563745f7374617475732e70726f647563745f6964203d20707264636c732e70726f647563745f696420616e642064656c5f666c67203d2030204f52444552204259206474625f70726f647563745f7374617475732e70726f647563745f7374617475735f6964292c20272c2729292061732070726f647563745f7374617475735f6e616d6573, 0x50726f6475637420737461747573206e616d65, 69, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(70, 1, 0x2853454c4543542041525241595f544f5f535452494e472841525241592853454c4543542063617465676f72795f69642046524f4d206474625f70726f647563745f63617465676f72696573205748455245206474625f70726f647563745f63617465676f726965732e70726f647563745f6964203d20707264636c732e70726f647563745f6964204f52444552204259206474625f70726f647563745f63617465676f726965732e72616e6b292c20272c2729292061732063617465676f72795f696473, 0x43617465676f7279204944, 70, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(71, 1, 0x2853454c4543542041525241595f544f5f535452494e472841525241592853454c4543542063617465676f72795f6e616d652046524f4d206474625f70726f647563745f63617465676f72696573204c454654204a4f494e206474625f63617465676f7279204f4e206474625f70726f647563745f63617465676f726965732e63617465676f72795f6964203d206474625f63617465676f72792e63617465676f72795f6964205748455245206474625f70726f647563745f63617465676f726965732e70726f647563745f6964203d20707264636c732e70726f647563745f6964204f52444552204259206474625f70726f647563745f63617465676f726965732e72616e6b292c20272c2729292061732063617465676f72795f6e616d6573, 0x43617465676f7279206e616d65, 71, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(72, 2, 0x637573746f6d65725f6964, 0x4d656d626572204944, 1, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(73, 2, 0x6e616d653031, 0x4e616d6520286c617374206e616d6529, 2, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(74, 2, 0x6e616d653032, 0x4e616d6520286669727374206e616d6529, 3, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(75, 2, 0x6b616e613031, 0x4e616d6520286675726967616e612f6c617374206e616d6529, 4, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(76, 2, 0x6b616e613032, 0x4e616d6520286675726967616e612f6669727374206e616d6529, 5, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(77, 2, 0x7a69703031, 0x506f7374616c20636f64652031, 6, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(78, 2, 0x7a69703032, 0x506f7374616c20636f64652032, 7, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(79, 2, 0x7a6970636f6465, 0x7a6970636f6465, 8, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(80, 2, 0x616464723031, 0x416464726573732031, 9, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(81, 2, 0x616464723032, 0x416464726573732032, 10, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(82, 2, 0x656d61696c, 0x452d4d41494c, 11, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(83, 2, 0x74656c3031, 0x54454c31, 12, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(84, 2, 0x74656c3032, 0x54454c32, 13, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(85, 2, 0x74656c3033, 0x54454c33, 14, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(86, 2, 0x6661783031, 0x46415831, 15, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(87, 2, 0x6661783032, 0x46415832, 16, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(88, 2, 0x6661783033, 0x46415833, 17, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(89, 2, 0x2853454c454354206e616d652046524f4d206d74625f736578205748455245206d74625f7365782e6964203d206474625f637573746f6d65722e7365782920617320736578, 0x47656e646572, 18, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(90, 2, 0x2853454c454354206e616d652046524f4d206d74625f6a6f62205748455245206d74625f6a6f622e6964203d206474625f637573746f6d65722e6a6f6229206173206a6f62, 0x4f636375706174696f6e, 19, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(91, 2, 0x6269727468, 0x4269727468646179, 20, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(92, 2, 0x66697273745f6275795f64617465, 0x44617465206f66206669727374207075726368617365, 21, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(93, 2, 0x6c6173745f6275795f64617465, 0x46696e616c2070757263686173652064617465, 22, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(94, 2, 0x6275795f74696d6573, 0x5075726368617365206672657175656e6379, 23, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(95, 2, 0x706f696e74, 0x506f696e742062616c616e6365, 24, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(96, 2, 0x6e6f7465, 0x52656d61726b73, 25, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(97, 2, 0x6372656174655f64617465, 0x526567697374726174696f6e2064617465, 26, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(98, 2, 0x7570646174655f64617465, 0x44617465206f6620757064617465, 27, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, NULL),
(99, 3, 0x6f726465725f6964, 0x4f72646572206e756d626572, 1, 3, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(100, 3, 0x637573746f6d65725f6964, 0x4d656d626572204944, 2, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(101, 3, 0x6d657373616765, 0x52657175657374732c206574632e, 3, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(102, 3, 0x6f726465725f6e616d653031, 0x4e616d6520286c617374206e616d6529, 4, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(103, 3, 0x6f726465725f6e616d653032, 0x4e616d6520286669727374206e616d6529, 5, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(104, 3, 0x6f726465725f6b616e613031, 0x4e616d6520286675726967616e612f6c617374206e616d6529, 6, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b564361, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(105, 3, 0x6f726465725f6b616e613032, 0x4e616d6520286675726967616e612f6669727374206e616d6529, 7, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b564361, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(106, 3, 0x6f726465725f656d61696c, 0x452d6d61696c2061646472657373, 8, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x61, 0x6e756c6c, 0x4e4f5f53505441422c454d41494c5f434845434b2c454d41494c5f434841525f434845434b),
(107, 3, 0x6f726465725f74656c3031, 0x54656c6570686f6e65206e756d6265722031, 9, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(108, 3, 0x6f726465725f74656c3032, 0x54656c6570686f6e65206e756d6265722032, 10, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(109, 3, 0x6f726465725f74656c3033, 0x54656c6570686f6e65206e756d6265722033, 11, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(110, 3, 0x6f726465725f6661783031, 0x46415831, 12, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(111, 3, 0x6f726465725f6661783032, 0x46415832, 13, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(112, 3, 0x6f726465725f6661783033, 0x46415833, 14, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x54454c5f4954454d5f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(113, 3, 0x6f726465725f7a69703031, 0x506f7374616c20636f64652031, 15, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x5a495030315f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b2c4e554d5f434f554e545f434845434b),
(114, 3, 0x6f726465725f7a69703032, 0x506f7374616c20636f64652032, 16, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x5a495030325f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b2c4e554d5f434f554e545f434845434b),
(115, 3, 0x6f726465725f7a6970636f6465, 0x7a6970636f6465, 17, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x5a4950434f44455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b2c4e554d5f434f554e545f434845434b),
(116, 3, 0x6f726465725f616464723031, 0x416464726573732031, 18, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4d544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(117, 3, 0x6f726465725f616464723032, 0x416464726573732032, 19, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4d544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(118, 3, 0x6f726465725f736578, 0x47656e646572, 20, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(119, 3, 0x6f726465725f6269727468, 0x44617465206f66206269727468, 21, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(120, 3, 0x6f726465725f6a6f62, 0x427573696e6573732074797065, 22, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(121, 3, 0x737562746f74616c, 0x537562746f74616c, 38, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(122, 3, 0x646973636f756e74, 0x446973636f756e74, 39, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(123, 3, 0x64656c69765f666565, 0x5368697070696e6720666565, 40, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(124, 3, 0x636861726765, 0x50726f63657373696e6720666565, 41, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(125, 3, 0x7573655f706f696e74, 0x506f696e74732075736564, 42, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(126, 3, 0x6164645f706f696e74, 0x506f696e7473206164646564, 43, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(127, 3, 0x746178, 0x546178, 44, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(128, 3, 0x746f74616c, 0x546f74616c, 45, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(129, 3, 0x7061796d656e745f746f74616c, 0x5061796d656e7420746f74616c, 46, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x50524943455f4c454e, 0x4d41585f4c454e4754485f434845434b2c4e554d5f434845434b),
(130, 3, 0x64656c69765f6964, 0x44656c697665727920636f6d70616e79204944, 47, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(131, 3, 0x7061796d656e745f6d6574686f64, 0x5061796d656e74206d6574686f64, 48, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(132, 3, 0x6e6f7465, 0x53484f50206d656d6f, 50, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c4c544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(133, 3, 0x737461747573, 0x526573706f6e736520737461747573, 51, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(134, 3, 0x6372656174655f64617465, 0x4461746520616e642074696d65206f66206f72646572, 52, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x61, '', 0x434845434b5f44415445),
(135, 3, 0x7570646174655f64617465, 0x4461746520616e642074696d65206f6620757064617465, 53, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x61, '', 0x434845434b5f44415445),
(136, 3, 0x636f6d6d69745f64617465, 0x4461746520616e642074696d65206f6620736869706d656e7420636f6d706c6574696f6e, 54, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x61, '', 0x434845434b5f44415445),
(137, 3, 0x6465766963655f747970655f6964, 0x5465726d696e616c2074797065204944, 55, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(138, 3, 0x2853454c45435420434f554e54287368697070696e675f696429206173207368697070696e675f7461726765745f6e756d2046524f4d206474625f7368697070696e67205748455245206474625f7368697070696e672e6f726465725f6964203d206474625f6f726465722e6f726465725f696429206173207368697070696e675f6e756d, 0x4e756d626572206f662064656c69766572792064657374696e6174696f6e73, 56, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(139, 3, 0x2853454c4543542041525241595f544f5f535452494e472841525241592853454c454354207368697070696e675f69642046524f4d206474625f7368697070696e67205748455245206474625f7368697070696e672e6f726465725f6964203d206474625f6f726465722e6f726465725f6964292c20272c272929206173207368697070696e675f696473, 0x44656c697665727920696e666f726d6174696f6e204944, 57, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b),
(140, 4, 0x422e6e616d65, 0x50726f64756374206e616d65, 1, 2, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(141, 4, 0x2853454c454354206e616d652046524f4d206d74625f64697370205748455245206d74625f646973702e6964203d20412e7374617475732920617320737461747573, 0x52657669657720646973706c6179, 2, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(142, 4, 0x412e6372656174655f64617465, 0x506f73742064617465, 3, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x61, '', 0x434845434b5f444154452c45584953545f434845434b),
(143, 4, 0x412e72657669657765725f6e616d65, 0x506f73746572206e616d65, 4, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(144, 4, 0x2853454c454354206e616d652046524f4d206d74625f736578205748455245206d74625f7365782e6964203d20412e7365782920617320736578, 0x47656e646572, 5, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(145, 4, 0x2853454c454354206e616d652046524f4d206d74625f7265636f6d6d656e64205748455245206d74625f7265636f6d6d656e642e6964203d20412e7265636f6d6d656e645f6c6576656c29206173207265636f6d6d656e645f6c6576656c, 0x5265636f6d6d656e646174696f6e206c6576656c, 6, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(146, 4, 0x412e7469746c65, 0x5469746c65, 7, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(147, 4, 0x412e636f6d6d656e74, 0x436f6d6d656e74, 8, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x4c544558545f4c454e, 0x4d41585f4c454e4754485f434845434b),
(148, 5, 0x63617465676f72795f6964, 0x43617465676f7279204944, 1, 3, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(149, 5, 0x63617465676f72795f6e616d65, 0x43617465676f7279206e616d65, 2, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x4b5661, 0x53544558545f4c454e, 0x53505441425f434845434b2c4d41585f4c454e4754485f434845434b2c45584953545f434845434b),
(150, 5, 0x706172656e745f63617465676f72795f6964, 0x4e65772063617465676f7279204944, 3, 1, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(151, 5, 0x6c6576656c, 0x486965726172636879, NULL, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(152, 5, 0x72616e6b, 0x446973706c61792072616e6b, NULL, 2, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b),
(153, 5, 0x64656c5f666c67, 0x44656c6574696f6e20666c6167, NULL, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x6e, 0x494e545f4c454e, 0x4e554d5f434845434b2c4d41585f4c454e4754485f434845434b);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_no_seq`
--

CREATE TABLE `dtb_csv_no_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=154 ;

--
-- Dumping data for table `dtb_csv_no_seq`
--

INSERT INTO `dtb_csv_no_seq` (`sequence`) VALUES
(153);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_sql`
--

CREATE TABLE `dtb_csv_sql` (
  `sql_id` int(11) NOT NULL DEFAULT '0',
  `sql_name` text COLLATE utf8_bin NOT NULL,
  `csv_sql` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sql_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_sql_sql_id_seq`
--

CREATE TABLE `dtb_csv_sql_sql_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer`
--

CREATE TABLE `dtb_customer` (
  `customer_id` int(11) NOT NULL,
  `name01` text COLLATE utf8_bin NOT NULL,
  `name02` text COLLATE utf8_bin NOT NULL,
  `kana01` text COLLATE utf8_bin,
  `kana02` text COLLATE utf8_bin,
  `zip01` text COLLATE utf8_bin,
  `zip02` text COLLATE utf8_bin,
  `zipcode` text COLLATE utf8_bin,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text COLLATE utf8_bin,
  `addr02` text COLLATE utf8_bin,
  `email` text COLLATE utf8_bin NOT NULL,
  `email_mobile` text COLLATE utf8_bin,
  `tel01` text COLLATE utf8_bin,
  `tel02` text COLLATE utf8_bin,
  `tel03` text COLLATE utf8_bin,
  `fax01` text COLLATE utf8_bin,
  `fax02` text COLLATE utf8_bin,
  `fax03` text COLLATE utf8_bin,
  `sex` smallint(6) DEFAULT NULL,
  `job` smallint(6) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `password` text COLLATE utf8_bin,
  `reminder` smallint(6) DEFAULT NULL,
  `reminder_answer` text COLLATE utf8_bin,
  `salt` text COLLATE utf8_bin,
  `secret_key` text COLLATE utf8_bin NOT NULL,
  `first_buy_date` datetime DEFAULT NULL,
  `last_buy_date` datetime DEFAULT NULL,
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(10,0) DEFAULT '0',
  `point` decimal(10,0) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_bin,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `mobile_phone_id` text COLLATE utf8_bin,
  `mailmaga_flg` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `secret_key` (`secret_key`(255)),
  KEY `dtb_customer_mobile_phone_id_key` (`mobile_phone_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_customer`
--

INSERT INTO `dtb_customer` (`customer_id`, `name01`, `name02`, `kana01`, `kana02`, `zip01`, `zip02`, `zipcode`, `pref`, `addr01`, `addr02`, `email`, `email_mobile`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `sex`, `job`, `birth`, `password`, `reminder`, `reminder_answer`, `salt`, `secret_key`, `first_buy_date`, `last_buy_date`, `buy_times`, `buy_total`, `point`, `note`, `status`, `create_date`, `update_date`, `del_flg`, `mobile_phone_id`, `mailmaga_flg`) VALUES
(1, 0x6d6172, 0x4f686e, NULL, NULL, NULL, NULL, NULL, NULL, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 0x6f686e6d6172736f652e737340676d61696c2e636f6d, NULL, 0x3432, 0x35333433, 0x393538, NULL, NULL, NULL, 2, 3, '1987-04-26 00:00:00', 0x66633661323461656139623430613161653532313166323936366531636130386333663632363337366233616462653863363964306230643330353665623365, 7, 0x38373634656561393237393932323161373134313961363161386531393836353866613964333764646266653732633931623165396134653337643938663761, 0x72657261657065616672, 0x723533633565633334326563393055473959334a4879, '2014-07-16 03:08:41', '2014-07-16 03:08:41', 1, 19, 0, NULL, 2, '2014-07-16 03:06:28', '2014-07-16 05:01:56', 0, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_customer_id_seq`
--

CREATE TABLE `dtb_customer_customer_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_customer_customer_id_seq`
--

INSERT INTO `dtb_customer_customer_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_favorite_products`
--

CREATE TABLE `dtb_customer_favorite_products` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_deliv`
--

CREATE TABLE `dtb_deliv` (
  `deliv_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `service_name` text COLLATE utf8_bin,
  `remark` text COLLATE utf8_bin,
  `confirm_url` text COLLATE utf8_bin,
  `rank` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`deliv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_deliv`
--

INSERT INTO `dtb_deliv` (`deliv_id`, `product_type_id`, `name`, `service_name`, `remark`, `confirm_url`, `rank`, `status`, `del_flg`, `creator_id`, `create_date`, `update_date`) VALUES
(1, 1, 0x53616d706c65206f70657261746f72, 0x53616d706c65206f70657261746f72, NULL, NULL, 2, 1, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 2, 0x4e6f2064656c69766572792028666f7220646f776e6c6f616465642070726f647563747329, 0x4e6f6e65, NULL, NULL, 1, 1, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivfee`
--

CREATE TABLE `dtb_delivfee` (
  `deliv_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `pref` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`deliv_id`,`fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_delivfee`
--

INSERT INTO `dtb_delivfee` (`deliv_id`, `fee_id`, `fee`, `pref`) VALUES
(1, 1, 1000, 1),
(1, 2, 1000, 2),
(1, 3, 1000, 3),
(1, 4, 1000, 4),
(1, 5, 1000, 5),
(1, 6, 1000, 6),
(1, 7, 1000, 7),
(1, 8, 1000, 8),
(1, 9, 1000, 9),
(1, 10, 1000, 10),
(1, 11, 1000, 11),
(1, 12, 1000, 12),
(1, 13, 1000, 13),
(1, 14, 1000, 14),
(1, 15, 1000, 15),
(1, 16, 1000, 16),
(1, 17, 1000, 17),
(1, 18, 1000, 18),
(1, 19, 1000, 19),
(1, 20, 1000, 20),
(1, 21, 1000, 21),
(1, 22, 1000, 22),
(1, 23, 1000, 23),
(1, 24, 1000, 24),
(1, 25, 1000, 25),
(1, 26, 1000, 26),
(1, 27, 1000, 27),
(1, 28, 1000, 28),
(1, 29, 1000, 29),
(1, 30, 1000, 30),
(1, 31, 1000, 31),
(1, 32, 1000, 32),
(1, 33, 1000, 33),
(1, 34, 1000, 34),
(1, 35, 1000, 35),
(1, 36, 1000, 36),
(1, 37, 1000, 37),
(1, 38, 1000, 38),
(1, 39, 1000, 39),
(1, 40, 1000, 40),
(1, 41, 1000, 41),
(1, 42, 1000, 42),
(1, 43, 1000, 43),
(1, 44, 1000, 44),
(1, 45, 1000, 45),
(1, 46, 1000, 46),
(1, 47, 1000, 47),
(2, 1, 0, 1),
(2, 2, 0, 2),
(2, 3, 0, 3),
(2, 4, 0, 4),
(2, 5, 0, 5),
(2, 6, 0, 6),
(2, 7, 0, 7),
(2, 8, 0, 8),
(2, 9, 0, 9),
(2, 10, 0, 10),
(2, 11, 0, 11),
(2, 12, 0, 12),
(2, 13, 0, 13),
(2, 14, 0, 14),
(2, 15, 0, 15),
(2, 16, 0, 16),
(2, 17, 0, 17),
(2, 18, 0, 18),
(2, 19, 0, 19),
(2, 20, 0, 20),
(2, 21, 0, 21),
(2, 22, 0, 22),
(2, 23, 0, 23),
(2, 24, 0, 24),
(2, 25, 0, 25),
(2, 26, 0, 26),
(2, 27, 0, 27),
(2, 28, 0, 28),
(2, 29, 0, 29),
(2, 30, 0, 30),
(2, 31, 0, 31),
(2, 32, 0, 32),
(2, 33, 0, 33),
(2, 34, 0, 34),
(2, 35, 0, 35),
(2, 36, 0, 36),
(2, 37, 0, 37),
(2, 38, 0, 38),
(2, 39, 0, 39),
(2, 40, 0, 40),
(2, 41, 0, 41),
(2, 42, 0, 42),
(2, 43, 0, 43),
(2, 44, 0, 44),
(2, 45, 0, 45),
(2, 46, 0, 46),
(2, 47, 0, 47);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivtime`
--

CREATE TABLE `dtb_delivtime` (
  `deliv_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `deliv_time` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`deliv_id`,`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_delivtime`
--

INSERT INTO `dtb_delivtime` (`deliv_id`, `time_id`, `deliv_time`) VALUES
(1, 1, 0x412e4d2e),
(1, 2, 0x502e4d2e);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_deliv_deliv_id_seq`
--

CREATE TABLE `dtb_deliv_deliv_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dtb_deliv_deliv_id_seq`
--

INSERT INTO `dtb_deliv_deliv_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_holiday`
--

CREATE TABLE `dtb_holiday` (
  `holiday_id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `month` smallint(6) NOT NULL,
  `day` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_holiday`
--

INSERT INTO `dtb_holiday` (`holiday_id`, `title`, `month`, `day`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0x4e657720596561727320284a616e75617279203129, 1, 1, 100, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_holiday_holiday_id_seq`
--

CREATE TABLE `dtb_holiday_holiday_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_holiday_holiday_id_seq`
--

INSERT INTO `dtb_holiday_holiday_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_index_list`
--

CREATE TABLE `dtb_index_list` (
  `table_name` text COLLATE utf8_bin NOT NULL,
  `column_name` text COLLATE utf8_bin NOT NULL,
  `recommend_flg` smallint(6) NOT NULL DEFAULT '0',
  `recommend_comment` text COLLATE utf8_bin,
  PRIMARY KEY (`table_name`(255),`column_name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_index_list`
--

INSERT INTO `dtb_index_list` (`table_name`, `column_name`, `recommend_flg`, `recommend_comment`) VALUES
(0x6474625f637573746f6d6572, 0x656d61696c5f6d6f62696c65, 0, 0x547279207768656e20796f752077616e7420746f20696d70726f766520746865206c6f67696e2070726f63657373696e67207370656564207768656e20746865726520697320616e20696e63726561736520696e20746865206e756d626572206f66206d656d62657273),
(0x6474625f637573746f6d6572, 0x6d6f62696c655f70686f6e655f6964, 1, ''),
(0x6474625f6d6f62696c655f6578745f73657373696f6e5f6964, 0x6372656174655f64617465, 1, ''),
(0x6474625f6d6f62696c655f6578745f73657373696f6e5f6964, 0x706172616d5f6b6579, 1, ''),
(0x6474625f6d6f62696c655f6578745f73657373696f6e5f6964, 0x706172616d5f76616c7565, 1, ''),
(0x6474625f6d6f62696c655f6578745f73657373696f6e5f6964, 0x75726c, 1, ''),
(0x6474625f6d6f62696c655f6b6172615f6d61696c, 0x6372656174655f64617465, 1, ''),
(0x6474625f6d6f62696c655f6b6172615f6d61696c, 0x726563656976655f64617465, 1, ''),
(0x6474625f6d6f62696c655f6b6172615f6d61696c, 0x746f6b656e, 1, ''),
(0x6474625f6f72646572, 0x6f726465725f656d61696c, 2, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x6f726465725f6e616d653031, 2, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x6f726465725f6e616d653032, 0, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x6f726465725f74656c3031, 0, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x6f726465725f74656c3032, 0, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x6f726465725f74656c3033, 0, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f72646572, 0x737461747573, 2, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f6f726465725f64657461696c, 0x70726f647563745f6964, 1, ''),
(0x6474625f6f726465725f74656d70, 0x6f726465725f74656d705f6964, 0, 0x547279207768656e2074686572652069732061206c61726765206e756d626572206f66206f72646572732e),
(0x6474625f70726f647563745f63617465676f72696573, 0x63617465676f72795f6964, 2, 0x547279207768656e20746865726520617265206d616e792063617465676f72696573),
(0x6474625f70726f6475637473, 0x6e616d65, 2, 0x547279207768656e20796f752077616e7420746f20696d70726f7665207468652070726f64756374206e616d6520736561726368207370656564),
(0x6474625f70726f64756374735f636c617373, 0x70726f647563745f6964, 1, ''),
(0x6474625f73656e645f637573746f6d6572, 0x637573746f6d65725f6964, 1, ''),
(0x6d74625f7a6970, 0x7a6970636f6465, 2, 0x547279207768656e2074686520706f7374616c20636f64652073656172636820697320736c6f772e204974206973207265636f6d6d656e646564207468617420796f752064697361626c652074686973207768656e207570646174696e6720706f7374616c20636f646520646174612e);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_kiyaku`
--

CREATE TABLE `dtb_kiyaku` (
  `kiyaku_id` int(11) NOT NULL,
  `kiyaku_title` text COLLATE utf8_bin NOT NULL,
  `kiyaku_text` text COLLATE utf8_bin NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kiyaku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_kiyaku`
--

INSERT INTO `dtb_kiyaku` (`kiyaku_id`, `kiyaku_title`, `kiyaku_text`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0x557365722061677265656d656e74, 0x555345204f46205448495320534954452028414e442049545320454e5449524520434f4e54454e54532c20494e434c5544494e4720425554204e4f54204c494d4954454420544f2054484520544558542c20444154412c20494e464f524d4154494f4e2c204d4154455249414c532c20534f4654574152452c20414e4420475241504849435320434f4e5441494e4544204f522050524f564944454420494e20544849532057454220534954452920414e4420544845205345525649434553204f464645524544204259205448495320574542534954452c204953205355424a45435420544f20544845205445524d5320414e4420434f4e444954494f4e53204f46205448495320555345522041475245454d454e5420464f524d292e204259205553494e472054484953205745422053495445204f522c20494620594f55204152452041205245474953544552454420555345522c20425920434c49434b494e47204f4e20544845205355424d495420425554544f4e204f4e2054484520524547495354524154494f4e20504147453a2028312920594f5520524550524553454e54205448415420594f552048415645205245414420414e4420554e4445525354414e442c20414e4420484156452054484520434150414349545920414e4420415554484f5249545920544f20454e54455220494e544f2c205448495320555345522041475245454d454e5420414e442028322920594f5520414752454520544f20424520424f554e4420425920414c4c204f4620544845205445524d5320414e4420434f4e444954494f4e53204f46205448495320555345522041475245454d454e542e0a5468652061646d696e697374726174696f6e206d6179206368616e676520746865207465726d7320616e6420636f6e646974696f6e73206f66207468697320757365722061677265656d656e7420617420616e792074696d652e20496e206164646974696f6e2c207468652063757272656e7420757365722061677265656d656e742063616e20616c7761797320626520666f756e6420696e20746865206d656d626572736869702061726561206f6620746869732057656220736974652e204279207573696e67207468697320576562207369746520616674657220616e792073756368206368616e6765732074616b6520706c6163652c20796f7520616772656520746f20626520626f756e642062792073756368206368616e6765732e20496620796f7520646f206e6f7420616772656520746f20626520626f756e6420627920616e792073756368206368616e6765732c20796f75206d75737420696d6d6564696174656c792073746f70207573696e6720746869732077656220736974652e, 12, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(2, 0x5465726d696e6174696f6e, 0x5468657365207465726d7320616e6420636f6e646974696f6e73206172652065666665637469766520756e74696c207468657920617265207465726d696e6174656420627920796f75206f72207468652061646d696e697374726174696f6e2e20596f75206d6179207465726d696e61746520746869732061677265656d656e7420617420616e792074696d6520627920636f6e74616374696e6720746869732061646d696e697374726174696f6e20746f2064697361626c6520796f7572206163636f756e742049442e205468657365207465726d7320616e6420636f6e646974696f6e732077696c6c207465726d696e61746520696d6d6564696174656c7920776974686f7574206e6f746963652e, 11, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_kiyaku_kiyaku_id_seq`
--

CREATE TABLE `dtb_kiyaku_kiyaku_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dtb_kiyaku_kiyaku_id_seq`
--

INSERT INTO `dtb_kiyaku_kiyaku_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailmaga_template`
--

CREATE TABLE `dtb_mailmaga_template` (
  `template_id` int(11) NOT NULL,
  `subject` text COLLATE utf8_bin,
  `mail_method` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailmaga_template_template_id_seq`
--

CREATE TABLE `dtb_mailmaga_template_template_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailtemplate`
--

CREATE TABLE `dtb_mailtemplate` (
  `template_id` int(11) NOT NULL,
  `subject` text COLLATE utf8_bin,
  `header` text COLLATE utf8_bin,
  `footer` text COLLATE utf8_bin,
  `creator_id` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_mailtemplate`
--

INSERT INTO `dtb_mailtemplate` (`template_id`, `subject`, `header`, `footer`, `creator_id`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 0x5468616e6b20796f7520666f72206f72646572696e6721, 0x5468616e6b20796f7520666f7220796f7572206f726465722e0a506c6561736520636865636b206966207468652062656c6f7720707572636861736564206974656d732061726520636f72726563742e0a0a, 0x0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a0a0a5468697320697320616e206175746f6d61746963206d6573736167652e0a506c6561736520646f206e6f74207265706c7920746f207468697320652d6d61696c2e0a0a0a496620796f75206861766520616e79207175657374696f6e73206f72206973737565732c20706c6561736520676f20686572652e0a0a, 0, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(5, 0x596f757220696e717569727920686173206265656e207265636569766564, NULL, NULL, 0, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history`
--

CREATE TABLE `dtb_mail_history` (
  `send_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `send_date` datetime DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `subject` text COLLATE utf8_bin,
  `mail_body` text COLLATE utf8_bin,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_mail_history`
--

INSERT INTO `dtb_mail_history` (`send_id`, `order_id`, `send_date`, `template_id`, `creator_id`, `subject`, `mail_body`) VALUES
(1, 1, '2014-07-16 03:08:41', 1, 2, 0x5b55766572776f726c645d205468616e6b20796f7520666f72206f72646572696e6721, 0x44656172206d6172204f686e0a0a5468616e6b20796f7520666f7220796f7572206f726465722e0a506c6561736520636865636b206966207468652062656c6f7720707572636861736564206974656d732061726520636f72726563742e0a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2042696c6c696e6720616d6f756e740a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a4f72646572206e756d6265723a310a5061796d656e7420746f74616c3a242031390a5061796d656e74206d6574686f643a43617368206f6e2064656c69766572790a4d6573736167653a0a0a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2044657461696c73206f66206f7264657265642070726f64756374200a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a50726f6475637420636f64653a20747368697274732d522d30310a50726f64756374206e616d653a20542d7368697274732f56696e7461676552656420200a556e69742070726963653a242031390a5175616e746974793a310a0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a537562746f74616c202420313920284f662077686963682c2073616c65732074617820242031290a446973636f756e74202420300a5368697070696e6720666565202420300a50726f63657373696e6720666565202420300a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a546f74616c20242031390a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2044656c697665727920696e666f726d6174696f6e0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a44656c69766572792064657374696e6174696f6e200a204e616d653a6d6172204f686e0a20506f7374616c20636f64653a0a20416464726573733a4e6f2e3131302c203520666c6f6f72202c39322073744e6f2e3131302c203520666c6f6f72202c39322073740a2050686f6e65206e756d6265723a34322d353334332d3935380a20466178206e756d626572203a0a2044656c697665727920646174653a323031342f30372f33310a2044656c69766572792074696d653a502e4d2e0a0a50726f6475637420636f64653a20747368697274732d522d30310a50726f64756374206e616d653a20542d7368697274732f56696e7461676552656420200a556e69742070726963653a242031390a5175616e746974793a310a0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a506f696e747320757365642030207074730a506f696e747320657870656374656420746f20626520616464656420617420746869732074696d652031207074730a43757272656e7420616d6f756e74206f6620706f696e747320726567697374657265642030207074730a0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a0a0a5468697320697320616e206175746f6d61746963206d6573736167652e0a506c6561736520646f206e6f74207265706c7920746f207468697320652d6d61696c2e0a0a0a496620796f75206861766520616e79207175657374696f6e73206f72206973737565732c20706c6561736520676f20686572652e),
(2, 1, '2014-07-16 04:57:04', 1, 2, 0x5b55766572776f726c645d205468616e6b20796f7520666f72206f72646572696e6721, 0x44656172206d6172204f686e0a0a5468616e6b20796f7520666f7220796f7572206f726465722e0d0a506c6561736520636865636b206966207468652062656c6f7720707572636861736564206974656d732061726520636f72726563742e0a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2042696c6c696e6720616d6f756e740a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a4f72646572206e756d6265723a310a5061796d656e7420746f74616c3a242031390a5061796d656e74206d6574686f643a43617368206f6e2064656c69766572790a4d6573736167653a0a0a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2044657461696c73206f66206f7264657265642070726f64756374200a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a50726f6475637420636f64653a20747368697274732d522d30310a50726f64756374206e616d653a20542d7368697274732f56696e7461676552656420200a556e69742070726963653a242031390a5175616e746974793a310a0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a537562746f74616c202420313920284f662077686963682c2073616c65732074617820242031290a446973636f756e74202420300a5368697070696e6720666565202420300a50726f63657373696e6720666565202420300a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a546f74616c20242031390a0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a2044656c697665727920696e666f726d6174696f6e0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0a0a44656c69766572792064657374696e6174696f6e200a204e616d653a6d6172204f686e0a20506f7374616c20636f64653a0a20416464726573733a4e6f2e3131302c203520666c6f6f72202c39322073744e6f2e3131302c203520666c6f6f72202c39322073740a2050686f6e65206e756d6265723a34322d353334332d3935380a20466178206e756d626572203a0a2044656c697665727920646174653a323031342f30372f33310a2044656c69766572792074696d653a502e4d2e0a0a50726f6475637420636f64653a20747368697274732d522d30310a50726f64756374206e616d653a20542d7368697274732f56696e7461676552656420200a556e69742070726963653a242031390a5175616e746974793a310a0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0a506f696e747320757365642030207074730a506f696e747320657870656374656420746f20626520616464656420617420746869732074696d652031207074730a43757272656e7420616d6f756e74206f6620706f696e747320726567697374657265642030207074730a0d0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0d0a0d0a0d0a5468697320697320616e206175746f6d61746963206d6573736167652e0d0a506c6561736520646f206e6f74207265706c7920746f207468697320652d6d61696c2e0d0a0d0a0d0a496620796f75206861766520616e79207175657374696f6e73206f72206973737565732c20706c6561736520676f20686572652e);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history_send_id_seq`
--

CREATE TABLE `dtb_mail_history_send_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dtb_mail_history_send_id_seq`
--

INSERT INTO `dtb_mail_history_send_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker`
--

CREATE TABLE `dtb_maker` (
  `maker_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_maker`
--

INSERT INTO `dtb_maker` (`maker_id`, `name`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 0x4e696b65, 1, 2, '2014-07-16 04:38:11', '2014-07-16 04:38:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker_count`
--

CREATE TABLE `dtb_maker_count` (
  `maker_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`maker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker_maker_id_seq`
--

CREATE TABLE `dtb_maker_maker_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_maker_maker_id_seq`
--

INSERT INTO `dtb_maker_maker_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member`
--

CREATE TABLE `dtb_member` (
  `member_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin,
  `department` text COLLATE utf8_bin,
  `login_id` text COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `salt` text COLLATE utf8_bin NOT NULL,
  `authority` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `work` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_member`
--

INSERT INTO `dtb_member` (`member_id`, `name`, `department`, `login_id`, `password`, `salt`, `authority`, `rank`, `work`, `del_flg`, `creator_id`, `create_date`, `update_date`, `login_date`) VALUES
(1, 0x64756d6d79, NULL, 0x64756d6d79, 0x64756d6d79, 0x64756d6d79, 0, 0, 1, 1, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL),
(2, 0x41646d696e6973747261746f72, NULL, 0x61646d696e313233, 0x35373034306163306666303632613336616461613737636661363930616533383933343438376264346532613331306634613639666436356333323665653963, 0x68656167656166726561, 0, 1, 1, 0, 0, '2014-07-15 10:50:54', '2014-07-15 10:50:54', '2014-07-18 05:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member_member_id_seq`
--

CREATE TABLE `dtb_member_member_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dtb_member_member_id_seq`
--

INSERT INTO `dtb_member_member_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mobile_ext_session_id`
--

CREATE TABLE `dtb_mobile_ext_session_id` (
  `session_id` text COLLATE utf8_bin NOT NULL,
  `param_key` text COLLATE utf8_bin,
  `param_value` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`(255)),
  KEY `dtb_mobile_ext_session_id_param_key_key` (`param_key`(255)),
  KEY `dtb_mobile_ext_session_id_param_value_key` (`param_value`(255)),
  KEY `dtb_mobile_ext_session_id_url_key` (`url`(255)),
  KEY `dtb_mobile_ext_session_id_create_date_key` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module`
--

CREATE TABLE `dtb_module` (
  `module_id` int(11) NOT NULL,
  `module_code` text COLLATE utf8_bin NOT NULL,
  `module_name` text COLLATE utf8_bin NOT NULL,
  `sub_data` text COLLATE utf8_bin,
  `auto_update_flg` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_module`
--

INSERT INTO `dtb_module` (`module_id`, `module_code`, `module_name`, `sub_data`, `auto_update_flg`, `del_flg`, `create_date`, `update_date`) VALUES
(0, 0x30, 0x7061746368, NULL, 0, 0, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module_update_logs`
--

CREATE TABLE `dtb_module_update_logs` (
  `log_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `buckup_path` text COLLATE utf8_bin,
  `error_flg` smallint(6) DEFAULT '0',
  `error` text COLLATE utf8_bin,
  `ok` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module_update_logs_log_id_seq`
--

CREATE TABLE `dtb_module_update_logs_log_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news`
--

CREATE TABLE `dtb_news` (
  `news_id` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `news_title` text COLLATE utf8_bin NOT NULL,
  `news_comment` text COLLATE utf8_bin,
  `news_url` text COLLATE utf8_bin,
  `news_select` smallint(6) NOT NULL DEFAULT '0',
  `link_method` text COLLATE utf8_bin,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_news`
--

INSERT INTO `dtb_news` (`news_id`, `news_date`, `rank`, `news_title`, `news_comment`, `news_url`, `news_select`, `link_method`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, '2014-07-15 17:20:48', 1, 0x5468652073697465206973206e6f77206f70656e21, 0x566172696f757320676f6f6473207468617420737570706f727420796f7572206c6966657374796c652c207768657468657220796f75206c69766520616c6f6e65206f7220796f75206e65656420736f6d657468696e6720666f7220796f7572206f66666963652c2077652068617665206974212054686520626573742070726f6475637473206174207468652062657374207072696365732063616e206f6e6c7920626520666f756e6420686572652e20427579206120736869727420666f7220796f7572206d6f74686572206f7220676574206f6e6520666f7220796f757220626f73732e205468616e6b20796f7520616e6420636f6d6520616761696e21, NULL, 0, NULL, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news_news_id_seq`
--

CREATE TABLE `dtb_news_news_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_news_news_id_seq`
--

INSERT INTO `dtb_news_news_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order`
--

CREATE TABLE `dtb_order` (
  `order_id` int(11) NOT NULL,
  `order_temp_id` text COLLATE utf8_bin,
  `customer_id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin,
  `order_name01` text COLLATE utf8_bin,
  `order_name02` text COLLATE utf8_bin,
  `order_kana01` text COLLATE utf8_bin,
  `order_kana02` text COLLATE utf8_bin,
  `order_email` text COLLATE utf8_bin,
  `order_tel01` text COLLATE utf8_bin,
  `order_tel02` text COLLATE utf8_bin,
  `order_tel03` text COLLATE utf8_bin,
  `order_fax01` text COLLATE utf8_bin,
  `order_fax02` text COLLATE utf8_bin,
  `order_fax03` text COLLATE utf8_bin,
  `order_zip01` text COLLATE utf8_bin,
  `order_zip02` text COLLATE utf8_bin,
  `order_zipcode` text COLLATE utf8_bin,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text COLLATE utf8_bin,
  `order_addr02` text COLLATE utf8_bin,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text COLLATE utf8_bin,
  `note` text COLLATE utf8_bin,
  `status` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commit_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `memo01` text COLLATE utf8_bin,
  `memo02` text COLLATE utf8_bin,
  `memo03` text COLLATE utf8_bin,
  `memo04` text COLLATE utf8_bin,
  `memo05` text COLLATE utf8_bin,
  `memo06` text COLLATE utf8_bin,
  `memo07` text COLLATE utf8_bin,
  `memo08` text COLLATE utf8_bin,
  `memo09` text COLLATE utf8_bin,
  `memo10` text COLLATE utf8_bin,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_order`
--

INSERT INTO `dtb_order` (`order_id`, `order_temp_id`, `customer_id`, `message`, `order_name01`, `order_name02`, `order_kana01`, `order_kana02`, `order_email`, `order_tel01`, `order_tel02`, `order_tel03`, `order_fax01`, `order_fax02`, `order_fax03`, `order_zip01`, `order_zip02`, `order_zipcode`, `order_pref`, `order_addr01`, `order_addr02`, `order_sex`, `order_birth`, `order_job`, `subtotal`, `discount`, `deliv_id`, `deliv_fee`, `charge`, `use_point`, `add_point`, `birth_point`, `tax`, `total`, `payment_total`, `payment_id`, `payment_method`, `note`, `status`, `create_date`, `update_date`, `commit_date`, `payment_date`, `device_type_id`, `del_flg`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`) VALUES
(1, 0x35336335656335346333633262585a425932446844, 1, NULL, 0x6d6172, 0x4f686e, NULL, NULL, 0x6f686e6d6172736f652e737340676d61696c2e636f6d, 0x3432, 0x35333433, 0x393538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 2, '1987-04-26 00:00:00', 3, 19, 0, 1, 0, 0, 0, 1, 0, 1, 19, 19, 4, 0x43617368206f6e2064656c6976657279, NULL, 7, '2014-07-16 03:08:41', '2014-07-16 05:02:17', '2014-07-16 05:01:04', NULL, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_detail`
--

CREATE TABLE `dtb_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_bin NOT NULL,
  `product_code` text COLLATE utf8_bin,
  `classcategory_name1` text COLLATE utf8_bin,
  `classcategory_name2` text COLLATE utf8_bin,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_detail_id`),
  KEY `dtb_order_detail_product_id_key` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_order_detail`
--

INSERT INTO `dtb_order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_class_id`, `product_name`, `product_code`, `classcategory_name1`, `classcategory_name2`, `price`, `quantity`, `point_rate`) VALUES
(1, 1, 2, 10, 0x542d7368697274732f56696e74616765526564, 0x747368697274732d522d3031, NULL, NULL, 18, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_detail_order_detail_id_seq`
--

CREATE TABLE `dtb_order_detail_order_detail_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_order_detail_order_detail_id_seq`
--

INSERT INTO `dtb_order_detail_order_detail_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_order_id_seq`
--

CREATE TABLE `dtb_order_order_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_order_order_id_seq`
--

INSERT INTO `dtb_order_order_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_temp`
--

CREATE TABLE `dtb_order_temp` (
  `order_temp_id` text COLLATE utf8_bin NOT NULL,
  `customer_id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin,
  `order_name01` text COLLATE utf8_bin,
  `order_name02` text COLLATE utf8_bin,
  `order_kana01` text COLLATE utf8_bin,
  `order_kana02` text COLLATE utf8_bin,
  `order_email` text COLLATE utf8_bin,
  `order_tel01` text COLLATE utf8_bin,
  `order_tel02` text COLLATE utf8_bin,
  `order_tel03` text COLLATE utf8_bin,
  `order_fax01` text COLLATE utf8_bin,
  `order_fax02` text COLLATE utf8_bin,
  `order_fax03` text COLLATE utf8_bin,
  `order_zip01` text COLLATE utf8_bin,
  `order_zip02` text COLLATE utf8_bin,
  `order_zipcode` text COLLATE utf8_bin,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text COLLATE utf8_bin,
  `order_addr02` text COLLATE utf8_bin,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text COLLATE utf8_bin,
  `note` text COLLATE utf8_bin,
  `mail_flag` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `deliv_check` smallint(6) DEFAULT NULL,
  `point_check` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `memo01` text COLLATE utf8_bin,
  `memo02` text COLLATE utf8_bin,
  `memo03` text COLLATE utf8_bin,
  `memo04` text COLLATE utf8_bin,
  `memo05` text COLLATE utf8_bin,
  `memo06` text COLLATE utf8_bin,
  `memo07` text COLLATE utf8_bin,
  `memo08` text COLLATE utf8_bin,
  `memo09` text COLLATE utf8_bin,
  `memo10` text COLLATE utf8_bin,
  `session` text COLLATE utf8_bin,
  PRIMARY KEY (`order_temp_id`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_order_temp`
--

INSERT INTO `dtb_order_temp` (`order_temp_id`, `customer_id`, `message`, `order_name01`, `order_name02`, `order_kana01`, `order_kana02`, `order_email`, `order_tel01`, `order_tel02`, `order_tel03`, `order_fax01`, `order_fax02`, `order_fax03`, `order_zip01`, `order_zip02`, `order_zipcode`, `order_pref`, `order_addr01`, `order_addr02`, `order_sex`, `order_birth`, `order_job`, `subtotal`, `discount`, `deliv_id`, `deliv_fee`, `charge`, `use_point`, `add_point`, `birth_point`, `tax`, `total`, `payment_total`, `payment_id`, `payment_method`, `note`, `mail_flag`, `status`, `deliv_check`, `point_check`, `create_date`, `update_date`, `device_type_id`, `del_flg`, `order_id`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`, `session`) VALUES
(0x35336335656335346333633262585a425932446844, 1, NULL, 0x6d6172, 0x4f686e, NULL, NULL, 0x6f686e6d6172736f652e737340676d61696c2e636f6d, 0x3432, 0x35333433, 0x393538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 2, '1987-04-26 00:00:00', 3, 19, 0, 1, 0, 0, 0, 1, 0, 1, 19, 19, 4, 0x43617368206f6e2064656c6976657279, NULL, NULL, NULL, NULL, 2, '2014-07-16 03:07:13', '2014-07-16 03:08:41', 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x613a31373a7b733a343a2263617274223b613a313a7b693a313b613a333a7b693a313b613a373a7b733a323a226964223b733a323a223130223b733a383a227175616e74697479223b693a313b733a373a22636172745f6e6f223b693a313b733a31333a2270726f6475637473436c617373223b613a31353a7b733a31303a2270726f647563745f6964223b733a313a2232223b733a353a2273746f636b223b733a333a22313030223b733a31353a2273746f636b5f756e6c696d69746564223b733a313a2230223b733a31303a2273616c655f6c696d6974223b733a313a2235223b733a373a2270726963653032223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a2270726f647563745f636f6465223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a31393a22636c61737363617465676f72795f6e616d6531223b4e3b733a31313a22636c6173735f6e616d6531223b4e3b733a31393a22636c61737363617465676f72795f6e616d6532223b4e3b733a31313a22636c6173735f6e616d6532223b4e3b733a343a226e616d65223b733a31393a22542d7368697274732f56696e74616765526564223b733a31353a226d61696e5f6c6973745f696d616765223b733a31393a22547368697274735f7265645f3133302e6a7067223b733a31303a226d61696e5f696d616765223b733a31393a22547368697274735f7265645f3236302e6a7067223b7d733a353a227072696365223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a22746f74616c5f696e63746178223b643a31393b7d733a31353a2263616e63656c5f7075726368617365223b623a303b693a303b613a343a7b733a353a227072696365223b733a303a22223b733a383a227175616e74697479223b733a303a22223b733a31303a22706f696e745f72617465223b733a303a22223b733a323a226964223b613a313a7b693a303b733a303a22223b7d7d7d7d733a383a22707265765f75726c223b733a37373a222f75766572776f726c642f68746d6c2f726573697a655f696d6167652e7068703f696d6167653d547368697274735f7265645f3133302e6a70672677696474683d3635266865696768743d3635223b733a31333a227472616e73616374696f6e6964223b733a34303a2266376536666264393765643434356339373136396663333439636430396361363466313266383865223b733a343a2263657274223b733a383a223757446863425446223b733a393a226d656d6265725f6964223b733a313a2232223b733a383a226c6f67696e5f6964223b733a383a2261646d696e313233223b733a393a22617574686f72697479223b733a313a2230223b733a31303a226c6f67696e5f6e616d65223b733a31333a2241646d696e6973747261746f72223b733a363a22756e69716964223b733a32313a22353363356561616665353930326d77344363353272223b733a31303a226c6173745f6c6f67696e223b733a31393a22323031342d30372d31352031313a31363a3336223b733a343a2273697465223b613a353a7b733a31383a227072655f7265676973745f73756363657373223b623a303b733a31343a227265676973745f73756363657373223b623a303b733a383a227072655f70616765223b733a33363a222f75766572776f726c642f68746d6c2f73686f7070696e672f636f6e6669726d2e706870223b733a383a226e6f775f70616765223b733a33363a222f75766572776f726c642f68746d6c2f73686f7070696e672f636f6e6669726d2e706870223b733a363a22756e69716964223b733a32313a2235336335656335346333633262585a425932446844223b7d733a31333a22636172745f707265765f75726c223b733a36343a22687474703a2f2f6c6f63616c686f73742f75766572776f726c642f68746d6c2f70726f64756374732f64657461696c2e7068703f70726f647563745f69643d32223b733a383a22637573746f6d6572223b613a33393a7b733a31313a22637573746f6d65725f6964223b733a313a2231223b733a363a226e616d653031223b733a333a226d6172223b733a363a226e616d653032223b733a333a224f686e223b733a363a226b616e613031223b4e3b733a363a226b616e613032223b4e3b733a353a227a69703031223b4e3b733a353a227a69703032223b4e3b733a373a227a6970636f6465223b4e3b733a343a2270726566223b4e3b733a363a22616464723031223b733a32323a224e6f2e3131302c203520666c6f6f72202c3932207374223b733a363a22616464723032223b733a32323a224e6f2e3131302c203520666c6f6f72202c3932207374223b733a353a22656d61696c223b733a32323a226f686e6d6172736f652e737340676d61696c2e636f6d223b733a31323a22656d61696c5f6d6f62696c65223b4e3b733a353a2274656c3031223b733a323a223432223b733a353a2274656c3032223b733a343a2235333433223b733a353a2274656c3033223b733a333a22393538223b733a353a226661783031223b4e3b733a353a226661783032223b4e3b733a353a226661783033223b4e3b733a333a22736578223b733a313a2232223b733a333a226a6f62223b733a313a2233223b733a353a226269727468223b733a31393a22313938372d30342d32362030303a30303a3030223b733a383a2270617373776f7264223b733a36343a2266633661323461656139623430613161653532313166323936366531636130386333663632363337366233616462653863363964306230643330353665623365223b733a383a2272656d696e646572223b733a313a2237223b733a31353a2272656d696e6465725f616e73776572223b733a36343a2238373634656561393237393932323161373134313961363161386531393836353866613964333764646266653732633931623165396134653337643938663761223b733a343a2273616c74223b733a31303a2272657261657065616672223b733a31303a227365637265745f6b6579223b733a32323a22723533633565633334326563393055473959334a4879223b733a31343a2266697273745f6275795f64617465223b4e3b733a31333a226c6173745f6275795f64617465223b4e3b733a393a226275795f74696d6573223b733a313a2230223b733a393a226275795f746f74616c223b733a313a2230223b733a353a22706f696e74223b733a313a2230223b733a343a226e6f7465223b4e3b733a363a22737461747573223b733a313a2232223b733a31313a226372656174655f64617465223b733a31393a22323031342d30372d31362030333a30363a3238223b733a31313a227570646174655f64617465223b733a31393a22323031342d30372d31362030333a30363a3238223b733a373a2264656c5f666c67223b733a313a2230223b733a31353a226d6f62696c655f70686f6e655f6964223b4e3b733a31323a226d61696c6d6167615f666c67223b733a313a2233223b7d733a373a22636172744b6579223b733a313a2231223b733a33303a2273617665636172745f35336335656335346333633262585a425932446844223b613a333a7b693a313b613a373a7b733a323a226964223b733a323a223130223b733a383a227175616e74697479223b693a313b733a373a22636172745f6e6f223b693a313b733a31333a2270726f6475637473436c617373223b613a31353a7b733a31303a2270726f647563745f6964223b733a313a2232223b733a353a2273746f636b223b733a333a22313030223b733a31353a2273746f636b5f756e6c696d69746564223b733a313a2230223b733a31303a2273616c655f6c696d6974223b733a313a2235223b733a373a2270726963653032223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a2270726f647563745f636f6465223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a31393a22636c61737363617465676f72795f6e616d6531223b4e3b733a31313a22636c6173735f6e616d6531223b4e3b733a31393a22636c61737363617465676f72795f6e616d6532223b4e3b733a31313a22636c6173735f6e616d6532223b4e3b733a343a226e616d65223b733a31393a22542d7368697274732f56696e74616765526564223b733a31353a226d61696e5f6c6973745f696d616765223b733a31393a22547368697274735f7265645f3133302e6a7067223b733a31303a226d61696e5f696d616765223b733a31393a22547368697274735f7265645f3236302e6a7067223b7d733a353a227072696365223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a22746f74616c5f696e63746178223b643a31393b7d733a31353a2263616e63656c5f7075726368617365223b623a303b693a303b613a343a7b733a353a227072696365223b733a303a22223b733a383a227175616e74697479223b733a303a22223b733a31303a22706f696e745f72617465223b733a303a22223b733a323a226964223b613a313a7b693a303b733a303a22223b7d7d7d733a383a227368697070696e67223b613a313a7b693a303b613a32363a7b733a31353a227368697070696e675f6e616d653031223b733a333a226d6172223b733a31353a227368697070696e675f6e616d653032223b733a333a224f686e223b733a31353a227368697070696e675f6b616e613031223b733a303a22223b733a31353a227368697070696e675f6b616e613032223b733a303a22223b733a31323a227368697070696e675f736578223b733a313a2232223b733a31363a227368697070696e675f7a6970636f6465223b733a303a22223b733a31333a227368697070696e675f70726566223b733a303a22223b733a31353a227368697070696e675f616464723031223b733a32323a224e6f2e3131302c203520666c6f6f72202c3932207374223b733a31353a227368697070696e675f616464723032223b733a32323a224e6f2e3131302c203520666c6f6f72202c3932207374223b733a31343a227368697070696e675f74656c3031223b733a323a223432223b733a31343a227368697070696e675f74656c3032223b733a343a2235333433223b733a31343a227368697070696e675f74656c3033223b733a333a22393538223b733a31343a227368697070696e675f6661783031223b733a303a22223b733a31343a227368697070696e675f6661783032223b733a303a22223b733a31343a227368697070696e675f6661783033223b733a303a22223b733a31323a227368697070696e675f6a6f62223b733a313a2233223b733a31343a227368697070696e675f6269727468223b733a31393a22313938372d30342d32362030303a30303a3030223b733a31343a227368697070696e675f656d61696c223b733a32323a226f686e6d6172736f652e737340676d61696c2e636f6d223b733a31313a22637573746f6d65725f6964223b733a313a2231223b733a31313a227570646174655f64617465223b733a31373a2243555252454e545f54494d455354414d50223b733a31313a227368697070696e675f6964223b693a303b733a31333a22736869706d656e745f6974656d223b613a313a7b693a31303b613a363a7b733a31313a227368697070696e675f6964223b693a303b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a383a227175616e74697479223b693a313b733a31333a2270726f6475637473436c617373223b613a38333a7b733a31303a2270726f647563745f6964223b733a313a2232223b733a353a2273746f636b223b733a333a22313030223b733a31353a2273746f636b5f756e6c696d69746564223b733a313a2230223b733a31303a2273616c655f6c696d6974223b733a313a2235223b733a373a2270726963653031223b733a323a223335223b733a373a2270726963653032223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a2270726f647563745f636f6465223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a373a2264656c5f666c67223b733a313a2230223b733a31353a2270726f647563745f747970655f6964223b733a313a2231223b733a31333a22646f776e5f66696c656e616d65223b4e3b733a31373a22646f776e5f7265616c66696c656e616d65223b4e3b733a31393a22636c61737363617465676f72795f6e616d6531223b4e3b733a353a2272616e6b31223b733a313a2230223b733a31313a22636c6173735f6e616d6531223b4e3b733a393a22636c6173735f696431223b4e3b733a31373a22636c61737363617465676f72795f696431223b733a313a2230223b733a31373a22636c61737363617465676f72795f696432223b733a313a2230223b733a31393a22636c61737363617465676f72795f6e616d6532223b4e3b733a353a2272616e6b32223b733a313a2230223b733a31313a22636c6173735f6e616d6532223b4e3b733a393a22636c6173735f696432223b4e3b733a343a226e616d65223b733a31393a22542d7368697274732f56696e74616765526564223b733a383a226d616b65725f6964223b4e3b733a363a22737461747573223b733a313a2231223b733a383a22636f6d6d656e7431223b4e3b733a383a22636f6d6d656e7432223b4e3b733a383a22636f6d6d656e7433223b733a31393a22542d7368697274732c56696e74616765526564223b733a383a22636f6d6d656e7434223b4e3b733a383a22636f6d6d656e7435223b4e3b733a383a22636f6d6d656e7436223b4e3b733a343a226e6f7465223b4e3b733a31373a226d61696e5f6c6973745f636f6d6d656e74223b733a34323a2254686520636f6c6f7220726564206d616b657320616c6c206f662074686520646966666572656e63652e223b733a31353a226d61696e5f6c6973745f696d616765223b733a31393a22547368697274735f7265645f3133302e6a7067223b733a31323a226d61696e5f636f6d6d656e74223b733a37373a224e6f7420746f6f20666c617368792c20627574206e6f7420746f6f20706c61696e2e2054686520636f6c6f7220726564206d616b657320616c6c206f662074686520646966666572656e63652e223b733a31303a226d61696e5f696d616765223b733a31393a22547368697274735f7265645f3236302e6a7067223b733a31363a226d61696e5f6c617267655f696d616765223b733a31393a22547368697274735f7265645f3530302e6a7067223b733a31303a227375625f7469746c6531223b4e3b733a31323a227375625f636f6d6d656e7431223b4e3b733a31303a227375625f696d61676531223b4e3b733a31363a227375625f6c617267655f696d61676531223b4e3b733a31303a227375625f7469746c6532223b4e3b733a31323a227375625f636f6d6d656e7432223b4e3b733a31303a227375625f696d61676532223b4e3b733a31363a227375625f6c617267655f696d61676532223b4e3b733a31303a227375625f7469746c6533223b4e3b733a31323a227375625f636f6d6d656e7433223b4e3b733a31303a227375625f696d61676533223b4e3b733a31363a227375625f6c617267655f696d61676533223b4e3b733a31303a227375625f7469746c6534223b4e3b733a31323a227375625f636f6d6d656e7434223b4e3b733a31303a227375625f696d61676534223b4e3b733a31363a227375625f6c617267655f696d61676534223b4e3b733a31303a227375625f7469746c6535223b4e3b733a31323a227375625f636f6d6d656e7435223b4e3b733a31303a227375625f696d61676535223b4e3b733a31363a227375625f6c617267655f696d61676535223b4e3b733a31303a227375625f7469746c6536223b4e3b733a31323a227375625f636f6d6d656e7436223b4e3b733a31303a227375625f696d61676536223b4e3b733a31363a227375625f6c617267655f696d61676536223b4e3b733a31303a2263726561746f725f6964223b733a313a2232223b733a31313a226372656174655f64617465223b733a31393a22323031342d30372d31352031303a35303a3438223b733a31313a227570646174655f64617465223b733a31393a22323031342d30372d31352031303a35303a3438223b733a31333a2264656c69765f646174655f6964223b733a313a2233223b733a31363a2270726f647563745f636f64655f6d696e223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636f64655f6d6178223b733a31323a22747368697274732d522d3031223b733a31313a22707269636530315f6d696e223b733a323a223335223b733a31313a22707269636530315f6d6178223b733a323a223335223b733a31313a22707269636530325f6d696e223b733a323a223138223b733a31313a22707269636530325f6d6178223b733a323a223138223b733a393a2273746f636b5f6d696e223b733a333a22313030223b733a393a2273746f636b5f6d6178223b733a333a22313030223b733a31393a2273746f636b5f756e6c696d697465645f6d696e223b733a313a2230223b733a31393a2273746f636b5f756e6c696d697465645f6d6178223b733a313a2230223b733a393a2264656c69765f666565223b4e3b733a31313a22636c6173735f636f756e74223b733a313a2231223b733a31303a226d616b65725f6e616d65223b4e3b733a31383a22707269636530315f6d696e5f696e63746178223b643a33373b733a31383a22707269636530315f6d61785f696e63746178223b643a33373b733a31383a22707269636530325f6d696e5f696e63746178223b643a31393b733a31383a22707269636530325f6d61785f696e63746178223b643a31393b7d733a353a227072696365223b733a323a223138223b733a31323a22746f74616c5f696e63746178223b643a31393b7d7d733a383a2264656c69765f6964223b733a313a2231223b733a373a2274696d655f6964223b733a313a2232223b733a31333a227368697070696e675f74696d65223b733a343a22502e4d2e223b733a31333a227368697070696e675f64617465223b733a32303a22323031342f30372f333128546875727364617929223b7d7d733a383a226f726465725f6964223b693a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_other_deliv`
--

CREATE TABLE `dtb_other_deliv` (
  `other_deliv_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name01` text COLLATE utf8_bin,
  `name02` text COLLATE utf8_bin,
  `kana01` text COLLATE utf8_bin,
  `kana02` text COLLATE utf8_bin,
  `zip01` text COLLATE utf8_bin,
  `zip02` text COLLATE utf8_bin,
  `zipcode` text COLLATE utf8_bin,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text COLLATE utf8_bin,
  `addr02` text COLLATE utf8_bin,
  `tel01` text COLLATE utf8_bin,
  `tel02` text COLLATE utf8_bin,
  `tel03` text COLLATE utf8_bin,
  `fax01` text COLLATE utf8_bin,
  `fax02` text COLLATE utf8_bin,
  `fax03` text COLLATE utf8_bin,
  PRIMARY KEY (`other_deliv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_other_deliv_other_deliv_id_seq`
--

CREATE TABLE `dtb_other_deliv_other_deliv_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_ownersstore_settings`
--

CREATE TABLE `dtb_ownersstore_settings` (
  `public_key` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`public_key`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_pagelayout`
--

CREATE TABLE `dtb_pagelayout` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin NOT NULL,
  `filename` text COLLATE utf8_bin,
  `header_chk` smallint(6) DEFAULT '1',
  `footer_chk` smallint(6) DEFAULT '1',
  `edit_flg` smallint(6) DEFAULT '1',
  `author` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `keyword` text COLLATE utf8_bin,
  `update_url` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`device_type_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_pagelayout`
--

INSERT INTO `dtb_pagelayout` (`device_type_id`, `page_id`, `page_name`, `url`, `filename`, `header_chk`, `footer_chk`, `edit_flg`, `author`, `description`, `keyword`, `update_url`, `create_date`, `update_date`) VALUES
(1, 0, NULL, 0x70726576696577, 0x70726576696577, 1, 1, 1, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 1, 0x544f502070616765, 0x696e6465782e706870, 0x696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 2, 0x50726f64756374206c6973742070616765, 0x70726f64756374732f6c6973742e706870, 0x70726f64756374732f6c697374, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 3, 0x50726f64756374207365617263682070616765, 0x70726f64756374732f7365617263682e706870, 0x70726f64756374732f736561726368, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 4, 0x50726f647563742063617465676f72792070616765, 0x70726f64756374732f63617465676f72795f6c6973742e706870, 0x70726f64756374732f63617465676f72795f6c697374, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 5, 0x50726f647563742064657461696c732070616765, 0x70726f64756374732f64657461696c2e706870, 0x70726f64756374732f64657461696c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 6, 0x4d592070616765, 0x6d79706167652f696e6465782e706870, 0x6d79706167652f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 7, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028696e707574207061676529, 0x6d79706167652f6368616e67652e706870, 0x6d79706167652f6368616e6765, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 8, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028636f6d706c6574696f6e207061676529, 0x6d79706167652f6368616e67655f636f6d706c6574652e706870, 0x6d79706167652f6368616e67655f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 9, 0x4d5920706167652f41646420616e64206368616e6765207368697070696e672064657374696e6174696f6e73, 0x6d79706167652f64656c69766572792e706870, 0x6d79706167652f64656c6976657279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 10, 0x4d5920706167652f4c697374206f66206661766f7269746573, 0x6d79706167652f6661766f726974652e706870, 0x6d79706167652f6661766f72697465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 11, 0x4d5920706167652f44657461696c73206f6620707572636861736520686973746f7279, 0x6d79706167652f686973746f72792e706870, 0x6d79706167652f686973746f7279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 12, 0x4d5920706167652f4c6f67696e, 0x6d79706167652f6c6f67696e2e706870, 0x6d79706167652f6c6f67696e, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 13, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028696e707574207061676529, 0x6d79706167652f7265667573616c2e706870, 0x6d79706167652f7265667573616c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 14, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028636f6d706c6574696f6e207061676529, 0x6d79706167652f7265667573616c5f636f6d706c6574652e706870, 0x6d79706167652f7265667573616c5f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 15, 0x41626f757420746869732073697465, 0x61626f7574732f696e6465782e706870, 0x61626f7574732f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 16, 0x5768617420697320696e7369646520796f7572206261736b6574206e6f77, 0x636172742f696e6465782e706870, 0x636172742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 17, 0x496e71756972792028696e707574207061676529, 0x636f6e746163742f696e6465782e706870, 0x636f6e746163742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 18, 0x496e71756972792028636f6d706c6574696f6e207061676529, 0x636f6e746163742f636f6d706c6574652e706870, 0x636f6e746163742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 19, 0x4d656d62657220726567697374726174696f6e, 0x656e7472792f696e6465782e706870, 0x656e7472792f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 20, 0x55736167652061677265656d656e74, 0x656e7472792f6b6979616b752e706870, 0x656e7472792f6b6979616b75, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 21, 0x46696e6973682074656d706f72617279206d656d62657220726567697374726174696f6e, 0x656e7472792f636f6d706c6574652e706870, 0x656e7472792f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 22, 0x4d6f62696c6520652d6d61696c20726567697374726174696f6e, 0x656e7472792f656d61696c5f6d6f62696c652e706870, 0x656e7472792f656d61696c5f6d6f62696c65, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 23, 0x4c6567616c2d6261736564206e6f746174696f6e2072656c6174656420746f2073706563696669656420636f6d6d65726369616c207472616e73616374696f6e73, 0x6f726465722f696e6465782e706870, 0x6f726465722f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 24, 0x4d656d62657220726567697374726174696f6e20636f6d706c65746564, 0x7265676973742f636f6d706c6574652e706870, 0x7265676973742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 25, 0x50726f647563742070757263686173652f4c6f67696e, 0x73686f7070696e672f696e6465782e706870, 0x73686f7070696e672f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 26, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f662064656c69766572792064657374696e6174696f6e, 0x73686f7070696e672f64656c69762e706870, 0x73686f7070696e672f64656c6976, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 27, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66206d756c7469706c652064656c69766572792064657374696e6174696f6e73, 0x73686f7070696e672f6d756c7469706c652e706870, 0x73686f7070696e672f6d756c7469706c65, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 28, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66207061796d656e74206d6574686f6420616e642064656c69766572792074696d652c206574632e, 0x73686f7070696e672f7061796d656e742e706870, 0x73686f7070696e672f7061796d656e74, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 29, 0x50726f647563742070757263686173652f436f6e6669726d6174696f6e206f6620696e7075742064657461696c73, 0x73686f7070696e672f636f6e6669726d2e706870, 0x73686f7070696e672f636f6e6669726d, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 30, 0x50726f647563742070757263686173652f4f7264657220636f6d706c657465, 0x73686f7070696e672f636f6d706c6574652e706870, 0x73686f7070696e672f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 31, 0x4e6f6e2d636f6d70617469626c6520646576696365, 0x756e737570706f727465642f696e6465782e706870, 0x756e737570706f727465642f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 32, 0x5573616765206775696465, 0x67756964652f696e6465782e706870, 0x67756964652f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 33, 0x55736167652067756964652f5573616765206d6574686f64, 0x67756964652f75736167652e706870, 0x67756964652f7573616765, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 34, 0x55736167652067756964652f5072697661637920706f6c696379, 0x67756964652f707269766163792e706870, 0x67756964652f70726976616379, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 35, 0x55736167652067756964652f41626f757420636f6d6d756e69636174696f6e2063686172676573, 0x67756964652f6368617267652e706870, 0x67756964652f636861726765, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 36, 0x55736167652067756964652f55736167652061677265656d656e74, 0x67756964652f6b6979616b752e706870, 0x67756964652f6b6979616b75, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(1, 37, 0x55736167652067756964652f496e74726f64756374696f6e206f66206f7065726174696e6720636f6d70616e696573, 0x67756964652f61626f75742e706870, 0x67756964652f61626f7574, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 0, NULL, 0x70726576696577, 0x70726576696577, 1, 1, 1, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 1, 0x544f502070616765, 0x696e6465782e706870, 0x696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 2, 0x50726f64756374206c6973742070616765, 0x70726f64756374732f6c6973742e706870, 0x70726f64756374732f6c697374, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 3, 0x50726f647563742064657461696c732070616765, 0x70726f64756374732f64657461696c2e706870, 0x70726f64756374732f64657461696c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 4, 0x4d592070616765, 0x6d79706167652f696e6465782e706870, 0x6d79706167652f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 5, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028696e707574207061676529, 0x6d79706167652f6368616e67652e706870, 0x6d79706167652f6368616e6765, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 6, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028636f6d706c6574696f6e207061676529, 0x6d79706167652f6368616e67655f636f6d706c6574652e706870, 0x6d79706167652f6368616e67655f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 7, 0x4d5920706167652f41646420616e64206368616e6765207368697070696e672064657374696e6174696f6e73, 0x6d79706167652f64656c69766572792e706870, 0x6d79706167652f64656c6976657279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 8, 0x4d5920706167652f4c697374206f66206661766f7269746573, 0x6d79706167652f6661766f726974652e706870, 0x6d79706167652f6661766f72697465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 9, 0x4d5920706167652f44657461696c73206f6620707572636861736520686973746f7279, 0x6d79706167652f686973746f72792e706870, 0x6d79706167652f686973746f7279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 10, 0x4d5920706167652f4c6f67696e, 0x6d79706167652f6c6f67696e2e706870, 0x6d79706167652f6c6f67696e, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 11, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028696e707574207061676529, 0x6d79706167652f7265667573616c2e706870, 0x6d79706167652f7265667573616c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 12, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028636f6d706c6574696f6e207061676529, 0x6d79706167652f7265667573616c5f636f6d706c6574652e706870, 0x6d79706167652f7265667573616c5f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 13, 0x41626f757420746869732073697465, 0x61626f7574732f696e6465782e706870, 0x61626f7574732f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 14, 0x5768617420697320696e7369646520796f7572206261736b6574206e6f77, 0x636172742f696e6465782e706870, 0x636172742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 15, 0x496e71756972792028696e707574207061676529, 0x636f6e746163742f696e6465782e706870, 0x636f6e746163742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 16, 0x496e71756972792028636f6d706c6574696f6e207061676529, 0x636f6e746163742f636f6d706c6574652e706870, 0x636f6e746163742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 17, 0x4d656d62657220726567697374726174696f6e, 0x656e7472792f696e6465782e706870, 0x656e7472792f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 18, 0x55736167652061677265656d656e74, 0x656e7472792f6b6979616b752e706870, 0x656e7472792f6b6979616b75, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 19, 0x46696e6973682074656d706f72617279206d656d62657220726567697374726174696f6e, 0x656e7472792f636f6d706c6574652e706870, 0x656e7472792f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 20, 0x4c6567616c2d6261736564206e6f746174696f6e2072656c6174656420746f2073706563696669656420636f6d6d65726369616c207472616e73616374696f6e73, 0x6f726465722f696e6465782e706870, 0x6f726465722f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 21, 0x4d656d62657220726567697374726174696f6e20636f6d706c65746564, 0x7265676973742f636f6d706c6574652e706870, 0x7265676973742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 22, 0x50726f647563742070757263686173652f4c6f67696e, 0x73686f7070696e672f696e6465782e706870, 0x73686f7070696e672f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 23, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f662064656c69766572792064657374696e6174696f6e, 0x73686f7070696e672f64656c69762e706870, 0x73686f7070696e672f64656c6976, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 24, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66206d756c7469706c652064656c69766572792064657374696e6174696f6e73, 0x73686f7070696e672f6d756c7469706c652e706870, 0x73686f7070696e672f6d756c7469706c65, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 25, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66207061796d656e74206d6574686f6420616e642064656c69766572792074696d652c206574632e, 0x73686f7070696e672f7061796d656e742e706870, 0x73686f7070696e672f7061796d656e74, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 26, 0x50726f647563742070757263686173652f436f6e6669726d6174696f6e206f6620696e7075742064657461696c73, 0x73686f7070696e672f636f6e6669726d2e706870, 0x73686f7070696e672f636f6e6669726d, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 27, 0x50726f647563742070757263686173652f4f7264657220636f6d706c657465, 0x73686f7070696e672f636f6d706c6574652e706870, 0x73686f7070696e672f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 28, 0x5072697661637920706f6c696379, 0x67756964652f707269766163792e706870, 0x67756964652f70726976616379, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(2, 29, 0x496620796f75206861766520666f72676f7474656e20796f75722070617373776f7264, 0x666f72676f742f696e6465782e706870, 0x666f72676f742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 0, 0x507265766965772064617461, 0x70726576696577, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 1, 0x544f502070616765, 0x696e6465782e706870, 0x696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 2, 0x50726f64756374206c6973742070616765, 0x70726f64756374732f6c6973742e706870, 0x70726f64756374732f6c697374, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 3, 0x50726f647563742064657461696c732070616765, 0x70726f64756374732f64657461696c2e706870, 0x70726f64756374732f64657461696c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 4, 0x4d592070616765, 0x6d79706167652f696e6465782e706870, 0x6d79706167652f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 5, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028696e707574207061676529, 0x6d79706167652f6368616e67652e706870, 0x6d79706167652f6368616e6765, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 6, 0x4d5920706167652f4368616e67652064657461696c73206f66206d656d62657220726567697374726174696f6e2028636f6d706c6574696f6e207061676529, 0x6d79706167652f6368616e67655f636f6d706c6574652e706870, 0x6d79706167652f6368616e67655f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 7, 0x4d5920706167652f41646420616e64206368616e6765207368697070696e672064657374696e6174696f6e73, 0x6d79706167652f64656c69766572792e706870, 0x6d79706167652f64656c6976657279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 8, 0x4d5920706167652f4c697374206f66206661766f7269746573, 0x6d79706167652f6661766f726974652e706870, 0x6d79706167652f6661766f72697465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 9, 0x4d5920706167652f44657461696c73206f6620707572636861736520686973746f7279, 0x6d79706167652f686973746f72792e706870, 0x6d79706167652f686973746f7279, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 10, 0x4d5920706167652f4c6f67696e, 0x6d79706167652f6c6f67696e2e706870, 0x6d79706167652f6c6f67696e, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 11, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028696e707574207061676529, 0x6d79706167652f7265667573616c2e706870, 0x6d79706167652f7265667573616c, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 12, 0x4d5920706167652f50726f63656475726520666f72206d656d62657273686970207769746864726177616c2028636f6d706c6574696f6e207061676529, 0x6d79706167652f7265667573616c5f636f6d706c6574652e706870, 0x6d79706167652f7265667573616c5f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 13, 0x41626f757420746869732073697465, 0x61626f7574732f696e6465782e706870, 0x61626f7574732f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 14, 0x5768617420697320696e7369646520796f7572206261736b6574206e6f77, 0x636172742f696e6465782e706870, 0x636172742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 15, 0x496e71756972792028696e707574207061676529, 0x636f6e746163742f696e6465782e706870, 0x636f6e746163742f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 16, 0x496e71756972792028636f6d706c6574696f6e207061676529, 0x636f6e746163742f636f6d706c6574652e706870, 0x636f6e746163742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 17, 0x4d656d62657220726567697374726174696f6e, 0x656e7472792f696e6465782e706870, 0x656e7472792f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 18, 0x55736167652061677265656d656e74, 0x656e7472792f6b6979616b752e706870, 0x656e7472792f6b6979616b75, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 19, 0x46696e6973682074656d706f72617279206d656d62657220726567697374726174696f6e, 0x656e7472792f636f6d706c6574652e706870, 0x656e7472792f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 20, 0x4c6567616c2d6261736564206e6f746174696f6e2072656c6174656420746f2073706563696669656420636f6d6d65726369616c207472616e73616374696f6e73, 0x6f726465722f696e6465782e706870, 0x6f726465722f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 21, 0x4d656d62657220726567697374726174696f6e20636f6d706c65746564, 0x7265676973742f636f6d706c6574652e706870, 0x7265676973742f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 22, 0x50726f647563742070757263686173652f4c6f67696e, 0x73686f7070696e672f696e6465782e706870, 0x73686f7070696e672f696e646578, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 23, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f662064656c69766572792064657374696e6174696f6e, 0x73686f7070696e672f64656c69762e706870, 0x73686f7070696e672f64656c6976, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 24, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66206d756c7469706c652064656c69766572792064657374696e6174696f6e73, 0x73686f7070696e672f6d756c7469706c652e706870, 0x73686f7070696e672f6d756c7469706c65, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 25, 0x50726f647563742070757263686173652f44657369676e6174696f6e206f66207061796d656e74206d6574686f6420616e642064656c69766572792074696d652c206574632e, 0x73686f7070696e672f7061796d656e742e706870, 0x73686f7070696e672f7061796d656e74, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 26, 0x50726f647563742070757263686173652f436f6e6669726d6174696f6e206f6620696e7075742064657461696c73, 0x73686f7070696e672f636f6e6669726d2e706870, 0x73686f7070696e672f636f6e6669726d, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 27, 0x50726f647563742070757263686173652f4f7264657220636f6d706c657465, 0x73686f7070696e672f636f6d706c6574652e706870, 0x73686f7070696e672f636f6d706c657465, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(10, 28, 0x5072697661637920706f6c696379, 0x67756964652f707269766163792e706870, 0x67756964652f70726976616379, 1, 1, 2, NULL, NULL, NULL, NULL, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_pagelayout_page_id_seq`
--

CREATE TABLE `dtb_pagelayout_page_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=38 ;

--
-- Dumping data for table `dtb_pagelayout_page_id_seq`
--

INSERT INTO `dtb_pagelayout_page_id_seq` (`sequence`) VALUES
(37);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment`
--

CREATE TABLE `dtb_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` text COLLATE utf8_bin,
  `charge` decimal(10,0) DEFAULT NULL,
  `rule_max` decimal(10,0) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_bin,
  `fix` smallint(6) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_image` text COLLATE utf8_bin,
  `upper_rule` decimal(10,0) DEFAULT NULL,
  `charge_flg` smallint(6) DEFAULT '1',
  `rule_min` decimal(10,0) DEFAULT NULL,
  `upper_rule_max` decimal(10,0) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_path` text COLLATE utf8_bin,
  `memo01` text COLLATE utf8_bin,
  `memo02` text COLLATE utf8_bin,
  `memo03` text COLLATE utf8_bin,
  `memo04` text COLLATE utf8_bin,
  `memo05` text COLLATE utf8_bin,
  `memo06` text COLLATE utf8_bin,
  `memo07` text COLLATE utf8_bin,
  `memo08` text COLLATE utf8_bin,
  `memo09` text COLLATE utf8_bin,
  `memo10` text COLLATE utf8_bin,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_payment`
--

INSERT INTO `dtb_payment` (`payment_id`, `payment_method`, `charge`, `rule_max`, `rank`, `note`, `fix`, `status`, `del_flg`, `creator_id`, `create_date`, `update_date`, `payment_image`, `upper_rule`, `charge_flg`, `rule_min`, `upper_rule_max`, `module_id`, `module_path`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`) VALUES
(1, 0x506f7374616c207472616e73666572, 0, NULL, 4, NULL, 2, 1, 0, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0x4361736820726567697374726174696f6e, 0, NULL, 3, NULL, 2, 1, 0, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0x42616e6b207472616e73666572, 0, NULL, 2, NULL, 2, 1, 0, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0x43617368206f6e2064656c6976657279, 0, NULL, 1, NULL, 2, 1, 0, 1, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_options`
--

CREATE TABLE `dtb_payment_options` (
  `deliv_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`deliv_id`,`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_payment_options`
--

INSERT INTO `dtb_payment_options` (`deliv_id`, `payment_id`, `rank`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_payment_id_seq`
--

CREATE TABLE `dtb_payment_payment_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dtb_payment_payment_id_seq`
--

INSERT INTO `dtb_payment_payment_id_seq` (`sequence`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin`
--

CREATE TABLE `dtb_plugin` (
  `plugin_id` int(11) NOT NULL,
  `plugin_name` text COLLATE utf8_bin NOT NULL,
  `plugin_code` text COLLATE utf8_bin NOT NULL,
  `class_name` text COLLATE utf8_bin NOT NULL,
  `author` text COLLATE utf8_bin,
  `author_site_url` text COLLATE utf8_bin,
  `plugin_site_url` text COLLATE utf8_bin,
  `plugin_version` text COLLATE utf8_bin,
  `compliant_version` text COLLATE utf8_bin,
  `plugin_description` text COLLATE utf8_bin,
  `priority` int(11) NOT NULL DEFAULT '0',
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `free_field1` text COLLATE utf8_bin,
  `free_field2` text COLLATE utf8_bin,
  `free_field3` text COLLATE utf8_bin,
  `free_field4` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_hookpoint`
--

CREATE TABLE `dtb_plugin_hookpoint` (
  `plugin_hookpoint_id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `hook_point` text COLLATE utf8_bin NOT NULL,
  `callback` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`plugin_hookpoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
--

CREATE TABLE `dtb_plugin_hookpoint_plugin_hookpoint_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_plugin_id_seq`
--

CREATE TABLE `dtb_plugin_plugin_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products`
--

CREATE TABLE `dtb_products` (
  `product_id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `maker_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '2',
  `comment1` text COLLATE utf8_bin,
  `comment2` text COLLATE utf8_bin,
  `comment3` mediumtext COLLATE utf8_bin,
  `comment4` text COLLATE utf8_bin,
  `comment5` text COLLATE utf8_bin,
  `comment6` text COLLATE utf8_bin,
  `note` text COLLATE utf8_bin,
  `main_list_comment` text COLLATE utf8_bin,
  `main_list_image` text COLLATE utf8_bin,
  `main_comment` mediumtext COLLATE utf8_bin,
  `main_image` text COLLATE utf8_bin,
  `main_large_image` text COLLATE utf8_bin,
  `sub_title1` text COLLATE utf8_bin,
  `sub_comment1` mediumtext COLLATE utf8_bin,
  `sub_image1` text COLLATE utf8_bin,
  `sub_large_image1` text COLLATE utf8_bin,
  `sub_title2` text COLLATE utf8_bin,
  `sub_comment2` mediumtext COLLATE utf8_bin,
  `sub_image2` text COLLATE utf8_bin,
  `sub_large_image2` text COLLATE utf8_bin,
  `sub_title3` text COLLATE utf8_bin,
  `sub_comment3` mediumtext COLLATE utf8_bin,
  `sub_image3` text COLLATE utf8_bin,
  `sub_large_image3` text COLLATE utf8_bin,
  `sub_title4` text COLLATE utf8_bin,
  `sub_comment4` mediumtext COLLATE utf8_bin,
  `sub_image4` text COLLATE utf8_bin,
  `sub_large_image4` text COLLATE utf8_bin,
  `sub_title5` text COLLATE utf8_bin,
  `sub_comment5` mediumtext COLLATE utf8_bin,
  `sub_image5` text COLLATE utf8_bin,
  `sub_large_image5` text COLLATE utf8_bin,
  `sub_title6` text COLLATE utf8_bin,
  `sub_comment6` mediumtext COLLATE utf8_bin,
  `sub_image6` text COLLATE utf8_bin,
  `sub_large_image6` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliv_date_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_products`
--

INSERT INTO `dtb_products` (`product_id`, `name`, `maker_id`, `status`, `comment1`, `comment2`, `comment3`, `comment4`, `comment5`, `comment6`, `note`, `main_list_comment`, `main_list_image`, `main_comment`, `main_image`, `main_large_image`, `sub_title1`, `sub_comment1`, `sub_image1`, `sub_large_image1`, `sub_title2`, `sub_comment2`, `sub_image2`, `sub_large_image2`, `sub_title3`, `sub_comment3`, `sub_image3`, `sub_large_image3`, `sub_title4`, `sub_comment4`, `sub_image4`, `sub_large_image4`, `sub_title5`, `sub_comment5`, `sub_image5`, `sub_large_image5`, `sub_title6`, `sub_comment6`, `sub_image6`, `sub_large_image6`, `del_flg`, `creator_id`, `create_date`, `update_date`, `deliv_date_id`) VALUES
(1, 0x542d7368697274732f4d696e74477265656e, NULL, 1, NULL, NULL, 0x542d7368697274732c4d696e74477265656e, NULL, NULL, NULL, NULL, 0x546865206d696e7420677265656e20636f6c6f72696e67206272696e6773206f75742074686520e28098726574726fe2809920696e20796f752e, 0x54616e6b746f705f677265656e5f3133302e6a7067, 0x546865206d696e7420677265656e20636f6c6f72696e67206272696e6773206f75742074686520e28098726574726fe2809920696e20796f752e, 0x54616e6b746f705f677265656e5f3236302e6a7067, 0x54616e6b746f705f677265656e5f3530302e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 2),
(2, 0x542d7368697274732f56696e74616765526564, NULL, 1, NULL, NULL, 0x542d7368697274732c56696e74616765526564, NULL, NULL, NULL, NULL, 0x54686520636f6c6f7220726564206d616b657320616c6c206f662074686520646966666572656e63652e, 0x547368697274735f7265645f3133302e6a7067, 0x4e6f7420746f6f20666c617368792c20627574206e6f7420746f6f20706c61696e2e2054686520636f6c6f7220726564206d616b657320616c6c206f662074686520646966666572656e63652e, 0x547368697274735f7265645f3236302e6a7067, 0x547368697274735f7265645f3530302e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 3),
(3, 0x542d7368697274732f42617369635061747465726e, NULL, 1, NULL, NULL, 0x542d736869727473, NULL, NULL, NULL, NULL, 0x43726561746520796f7572206f776e206f726967696e616c20742d73686972742077697468206561736521, 0x547368697274735f6b6174615f3133302e6a7067, 0x466f722074686f73652077686f2077616e74656420746f20637265617465206120742d73686972742c206e6f772069742069732074696d6520746f206d616b6520796f757220647265616d2061207265616c6974792e2043726561746520796f7572206f776e206f726967696e616c20742d73686972742077697468206561736521, 0x547368697274735f6b6174615f3236302e6a7067, 0x547368697274735f6b6174615f3530302e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 1),
(4, 0x53706f7274205368697274, NULL, 1, NULL, NULL, 0x53706f72742d53686972742c53706f72742053686972742c53706f72742041636365736f7279202c5368697274, NULL, NULL, NULL, NULL, 0x53504f525420534849525453, 0x30373136303430395f353363356661656236636631662e6a7067, 0x53706f727420616363656f72696573, 0x30373136303430395f353363356661663464633765362e6a7067, 0x30373136303430395f353363356661666337323766652e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2014-07-16 04:07:18', '2014-07-16 04:09:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_class`
--

CREATE TABLE `dtb_products_class` (
  `product_class_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `classcategory_id1` int(11) NOT NULL DEFAULT '0',
  `classcategory_id2` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `product_code` text COLLATE utf8_bin,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` smallint(6) NOT NULL DEFAULT '0',
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(10,0) DEFAULT NULL,
  `price02` decimal(10,0) NOT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `down_filename` text COLLATE utf8_bin,
  `down_realfilename` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_class_id`),
  UNIQUE KEY `product_id` (`product_id`,`classcategory_id1`,`classcategory_id2`),
  KEY `dtb_products_class_product_id_key` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_products_class`
--

INSERT INTO `dtb_products_class` (`product_class_id`, `product_id`, `classcategory_id1`, `classcategory_id2`, `product_type_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `deliv_fee`, `point_rate`, `creator_id`, `create_date`, `update_date`, `down_filename`, `down_realfilename`, `del_flg`) VALUES
(0, 1, 0, 0, 1, 0x747368697274732d472d3031, NULL, 1, NULL, 35, 18, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 1),
(1, 1, 6, 0, 1, 0x747368697274732d472d3031, NULL, 1, NULL, 35, 18, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 0),
(2, 1, 5, 0, 1, 0x747368697274732d472d3032, NULL, 1, NULL, 35, 18, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 0),
(3, 1, 4, 0, 1, 0x747368697274732d472d3033, NULL, 1, NULL, 35, 18, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 0),
(10, 2, 0, 0, 1, 0x747368697274732d522d3031, 99, 0, 5, 35, 18, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', NULL, NULL, 0),
(11, 3, 0, 0, 2, 0x7061747465726e2d3031, NULL, 1, NULL, 10, 5, NULL, 10, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0x486f775f746f5f6d616b652e706466, 0x686f775f746f5f6d616b652e706466, 0),
(12, 4, 0, 0, 1, 0x5350532d3031, NULL, 1, NULL, 5, 10, 1, 1, 2, '2014-07-16 04:07:18', '2014-07-16 04:09:48', NULL, NULL, 1),
(13, 4, 6, 0, 1, 0x5350532d3031, NULL, 1, NULL, 5, 10, 1, 1, 2, '2014-07-16 04:09:47', '2014-07-16 04:09:47', NULL, NULL, 0),
(14, 4, 5, 0, 1, 0x5350532d3031, NULL, 1, NULL, 5, 10, 1, 1, 2, '2014-07-16 04:09:47', '2014-07-16 04:09:47', NULL, NULL, 0),
(15, 4, 4, 0, 1, 0x5350532d3031, NULL, 1, NULL, 5, 10, 1, 1, 2, '2014-07-16 04:09:48', '2014-07-16 04:09:48', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_class_product_class_id_seq`
--

CREATE TABLE `dtb_products_class_product_class_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

--
-- Dumping data for table `dtb_products_class_product_class_id_seq`
--

INSERT INTO `dtb_products_class_product_class_id_seq` (`sequence`) VALUES
(15);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_product_id_seq`
--

CREATE TABLE `dtb_products_product_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dtb_products_product_id_seq`
--

INSERT INTO `dtb_products_product_id_seq` (`sequence`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_categories`
--

CREATE TABLE `dtb_product_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_product_categories`
--

INSERT INTO `dtb_product_categories` (`product_id`, `category_id`, `rank`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 6, 1),
(4, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_status`
--

CREATE TABLE `dtb_product_status` (
  `product_status_id` smallint(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_status_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_product_status`
--

INSERT INTO `dtb_product_status` (`product_status_id`, `product_id`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(1, 4, 2, '2014-07-16 04:09:38', '2014-07-16 04:09:38', 0),
(4, 3, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0),
(4, 4, 2, '2014-07-16 04:09:38', '2014-07-16 04:09:38', 0),
(5, 3, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_recommend_products`
--

CREATE TABLE `dtb_recommend_products` (
  `product_id` int(11) NOT NULL,
  `recommend_product_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`product_id`,`recommend_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_recommend_products`
--

INSERT INTO `dtb_recommend_products` (`product_id`, `recommend_product_id`, `rank`, `comment`, `status`, `creator_id`, `create_date`, `update_date`) VALUES
(2, 1, 4, 0x546865206d696e7420677265656e20636f6c6f72696e67206272696e6773206f75742074686520e28098726574726fe2809920696e20796f752e, 0, 2, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_review`
--

CREATE TABLE `dtb_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `reviewer_name` text COLLATE utf8_bin NOT NULL,
  `reviewer_url` text COLLATE utf8_bin,
  `sex` smallint(6) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `recommend_level` smallint(6) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `status` smallint(6) DEFAULT '2',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_review`
--

INSERT INTO `dtb_review` (`review_id`, `product_id`, `reviewer_name`, `reviewer_url`, `sex`, `customer_id`, `recommend_level`, `title`, `comment`, `status`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 2, 0x542d7368697274, NULL, 2, NULL, 5, 0x476f6f642050726f6475637473, 0x4c696b65, 1, 0, '2014-07-16 04:42:45', '2014-07-16 04:43:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_review_review_id_seq`
--

CREATE TABLE `dtb_review_review_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dtb_review_review_id_seq`
--

INSERT INTO `dtb_review_review_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_customer`
--

CREATE TABLE `dtb_send_customer` (
  `customer_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `email` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `send_flag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`send_id`,`customer_id`),
  KEY `dtb_send_customer_customer_id_key` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_history`
--

CREATE TABLE `dtb_send_history` (
  `send_id` int(11) NOT NULL,
  `mail_method` smallint(6) DEFAULT NULL,
  `subject` text COLLATE utf8_bin,
  `body` text COLLATE utf8_bin,
  `send_count` int(11) DEFAULT NULL,
  `complete_count` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `search_data` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_history_send_id_seq`
--

CREATE TABLE `dtb_send_history_send_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_session`
--

CREATE TABLE `dtb_session` (
  `sess_id` text COLLATE utf8_bin NOT NULL,
  `sess_data` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sess_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_session`
--

INSERT INTO `dtb_session` (`sess_id`, `sess_data`, `create_date`, `update_date`) VALUES
(0x3661393061653431663132356564356438333462643833383865376232643665, 0x636172747c613a313a7b693a313b613a333a7b693a313b613a373a7b733a323a226964223b733a323a223130223b733a383a227175616e74697479223b693a323b733a373a22636172745f6e6f223b693a313b733a31333a2270726f6475637473436c617373223b613a31353a7b733a31303a2270726f647563745f6964223b733a313a2232223b733a353a2273746f636b223b733a323a223939223b733a31353a2273746f636b5f756e6c696d69746564223b733a313a2230223b733a31303a2273616c655f6c696d6974223b733a313a2235223b733a373a2270726963653032223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a2270726f647563745f636f6465223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a31393a22636c61737363617465676f72795f6e616d6531223b4e3b733a31313a22636c6173735f6e616d6531223b4e3b733a31393a22636c61737363617465676f72795f6e616d6532223b4e3b733a31313a22636c6173735f6e616d6532223b4e3b733a343a226e616d65223b733a31393a22542d7368697274732f56696e74616765526564223b733a31353a226d61696e5f6c6973745f696d616765223b733a31393a22547368697274735f7265645f3133302e6a7067223b733a31303a226d61696e5f696d616765223b733a31393a22547368697274735f7265645f3236302e6a7067223b7d733a353a227072696365223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a22746f74616c5f696e63746178223b643a33383b7d733a31353a2263616e63656c5f7075726368617365223b623a303b693a303b613a343a7b733a353a227072696365223b733a303a22223b733a383a227175616e74697479223b733a303a22223b733a31303a22706f696e745f72617465223b733a303a22223b733a323a226964223b613a313a7b693a303b733a303a22223b7d7d7d7d707265765f75726c7c733a37373a222f75766572776f726c642f68746d6c2f726573697a655f696d6167652e7068703f696d6167653d547368697274735f7265645f3133302e6a70672677696474683d3830266865696768743d3830223b7472616e73616374696f6e69647c733a34303a2266653835613730643866666432633962386534626333656437316536636533623835616262643238223b636572747c733a383a223757446863425446223b6d656d6265725f69647c733a313a2232223b6c6f67696e5f69647c733a383a2261646d696e313233223b617574686f726974797c733a313a2230223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b756e697169647c733a32313a2235336338616361623564643461444657744d746455223b6c6173745f6c6f67696e7c733a31393a22323031342d30372d31372030343a35383a3135223b736974657c613a353a7b733a31383a227072655f7265676973745f73756363657373223b623a303b733a31343a227265676973745f73756363657373223b623a303b733a383a227072655f70616765223b733a33303a222f75766572776f726c642f68746d6c2f636172742f696e6465782e706870223b733a383a226e6f775f70616765223b733a33303a222f75766572776f726c642f68746d6c2f636172742f696e6465782e706870223b733a363a22756e69716964223b733a32313a22353363386334396131306539357761466334476865223b7d636172745f707265765f75726c7c733a36363a22687474703a2f2f6c6f63616c686f73743a37302f75766572776f726c642f68746d6c2f70726f64756374732f6c6973742e7068703f63617465676f72795f69643d34223b636172744b65797c733a313a2231223b73617665636172745f3533633863343961313065393577614663344768657c613a333a7b693a313b613a373a7b733a323a226964223b733a323a223130223b733a383a227175616e74697479223b733a313a2231223b733a373a22636172745f6e6f223b693a313b733a31333a2270726f6475637473436c617373223b613a31353a7b733a31303a2270726f647563745f6964223b733a313a2232223b733a353a2273746f636b223b733a323a223939223b733a31353a2273746f636b5f756e6c696d69746564223b733a313a2230223b733a31303a2273616c655f6c696d6974223b733a313a2235223b733a373a2270726963653032223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a2270726f647563745f636f6465223b733a31323a22747368697274732d522d3031223b733a31363a2270726f647563745f636c6173735f6964223b733a323a223130223b733a31393a22636c61737363617465676f72795f6e616d6531223b4e3b733a31313a22636c6173735f6e616d6531223b4e3b733a31393a22636c61737363617465676f72795f6e616d6532223b4e3b733a31313a22636c6173735f6e616d6532223b4e3b733a343a226e616d65223b733a31393a22542d7368697274732f56696e74616765526564223b733a31353a226d61696e5f6c6973745f696d616765223b733a31393a22547368697274735f7265645f3133302e6a7067223b733a31303a226d61696e5f696d616765223b733a31393a22547368697274735f7265645f3236302e6a7067223b7d733a353a227072696365223b733a323a223138223b733a31303a22706f696e745f72617465223b733a323a223130223b733a31323a22746f74616c5f696e63746178223b643a31393b7d733a31353a2263616e63656c5f7075726368617365223b623a303b693a303b613a343a7b733a353a227072696365223b733a303a22223b733a383a227175616e74697479223b733a303a22223b733a31303a22706f696e745f72617465223b733a303a22223b733a323a226964223b613a313a7b693a303b733a303a22223b7d7d7d, '2014-07-18 03:26:00', '2014-07-18 08:51:46'),
(0x3835653230653939383363333135653139306438616335363939653339313066, 0x636172747c613a303a7b7d707265765f75726c7c733a38343a222f75766572776f726c642f68746d6c2f726573697a655f696d6167652e7068703f696d6167653d30373136303430395f353363356661656236636631662e6a70672677696474683d3830266865696768743d3830223b7472616e73616374696f6e69647c733a34303a2238356335653461623862376465323833306237656430633166626335663830613466653038653133223b, '2014-07-22 06:30:44', '2014-07-22 06:30:44'),
(0x6465633665373730653761623030333163363235336537633463333662623136, 0x636172747c613a303a7b7d707265765f75726c7c733a34373a222f75766572776f726c642f68746d6c2f70726f64756374732f6c6973742e7068703f63617465676f72795f69643d31223b7472616e73616374696f6e69647c733a34303a2265363032373532333837376138623437333163666437633636313234656365383263333236323066223b636172745f726566657265725f75726c7c733a36363a22687474703a2f2f6c6f63616c686f73743a37302f75766572776f726c642f68746d6c2f70726f64756374732f6c6973742e7068703f63617465676f72795f69643d31223b, '2014-07-21 08:54:00', '2014-07-21 08:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipment_item`
--

CREATE TABLE `dtb_shipment_item` (
  `shipping_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_bin NOT NULL,
  `product_code` text COLLATE utf8_bin,
  `classcategory_name1` text COLLATE utf8_bin,
  `classcategory_name2` text COLLATE utf8_bin,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`,`product_class_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_shipment_item`
--

INSERT INTO `dtb_shipment_item` (`shipping_id`, `product_class_id`, `order_id`, `product_name`, `product_code`, `classcategory_name1`, `classcategory_name2`, `price`, `quantity`) VALUES
(0, 10, 1, 0x542d7368697274732f56696e74616765526564, 0x747368697274732d522d3031, NULL, NULL, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipping`
--

CREATE TABLE `dtb_shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_name01` text COLLATE utf8_bin,
  `shipping_name02` text COLLATE utf8_bin,
  `shipping_kana01` text COLLATE utf8_bin,
  `shipping_kana02` text COLLATE utf8_bin,
  `shipping_tel01` text COLLATE utf8_bin,
  `shipping_tel02` text COLLATE utf8_bin,
  `shipping_tel03` text COLLATE utf8_bin,
  `shipping_fax01` text COLLATE utf8_bin,
  `shipping_fax02` text COLLATE utf8_bin,
  `shipping_fax03` text COLLATE utf8_bin,
  `shipping_pref` smallint(6) DEFAULT NULL,
  `shipping_zip01` text COLLATE utf8_bin,
  `shipping_zip02` text COLLATE utf8_bin,
  `shipping_zipcode` text COLLATE utf8_bin,
  `shipping_addr01` text COLLATE utf8_bin,
  `shipping_addr02` text COLLATE utf8_bin,
  `time_id` int(11) DEFAULT NULL,
  `shipping_time` text COLLATE utf8_bin,
  `shipping_num` text COLLATE utf8_bin,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_commit_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_shipping`
--

INSERT INTO `dtb_shipping` (`shipping_id`, `order_id`, `shipping_name01`, `shipping_name02`, `shipping_kana01`, `shipping_kana02`, `shipping_tel01`, `shipping_tel02`, `shipping_tel03`, `shipping_fax01`, `shipping_fax02`, `shipping_fax03`, `shipping_pref`, `shipping_zip01`, `shipping_zip02`, `shipping_zipcode`, `shipping_addr01`, `shipping_addr02`, `time_id`, `shipping_time`, `shipping_num`, `shipping_date`, `shipping_commit_date`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(0, 1, 0x6d6172, 0x4f686e, NULL, NULL, 0x3432, 0x35333433, 0x393538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 0x4e6f2e3131302c203520666c6f6f72202c3932207374, 2, 0x502e4d2e, NULL, '2014-07-31 00:00:00', NULL, NULL, '2014-07-16 03:08:41', '2014-07-16 03:08:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_templates`
--

CREATE TABLE `dtb_templates` (
  `template_code` text COLLATE utf8_bin NOT NULL,
  `device_type_id` int(11) NOT NULL,
  `template_name` text COLLATE utf8_bin,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_code`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dtb_templates`
--

INSERT INTO `dtb_templates` (`template_code`, `device_type_id`, `template_name`, `create_date`, `update_date`) VALUES
(0x64656661756c745f656e2d5553, 10, 0x44656661756c74, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(0x6d6f62696c65, 1, 0x4d6f62696c65, '2014-07-15 10:50:48', '2014-07-15 10:50:48'),
(0x7370686f6e655f656e2d5553, 2, 0x536d61727470686f6e65, '2014-07-15 10:50:48', '2014-07-15 10:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_update`
--

CREATE TABLE `dtb_update` (
  `module_id` int(11) NOT NULL,
  `module_name` text COLLATE utf8_bin NOT NULL,
  `now_version` text COLLATE utf8_bin,
  `latest_version` text COLLATE utf8_bin NOT NULL,
  `module_explain` text COLLATE utf8_bin,
  `main_php` text COLLATE utf8_bin NOT NULL,
  `extern_php` text COLLATE utf8_bin NOT NULL,
  `install_sql` text COLLATE utf8_bin,
  `uninstall_sql` text COLLATE utf8_bin,
  `other_files` text COLLATE utf8_bin,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `mtb_allowed_tag`
--

CREATE TABLE `mtb_allowed_tag` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_allowed_tag`
--

INSERT INTO `mtb_allowed_tag` (`id`, `name`, `rank`) VALUES
(0, 0x7461626c65, 0),
(1, 0x7472, 1),
(2, 0x7464, 2),
(3, 0x61, 3),
(4, 0x62, 4),
(5, 0x626c696e6b, 5),
(6, 0x6272, 6),
(7, 0x63656e746572, 7),
(8, 0x666f6e74, 8),
(9, 0x68, 9),
(10, 0x6872, 10),
(11, 0x696d67, 11),
(12, 0x6c69, 12),
(13, 0x7374726f6e67, 13),
(14, 0x70, 14),
(15, 0x646976, 15),
(16, 0x69, 16),
(17, 0x75, 17),
(18, 0x73, 18);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_authority`
--

CREATE TABLE `mtb_authority` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_authority`
--

INSERT INTO `mtb_authority` (`id`, `name`, `rank`) VALUES
(0, 0x53797374656d2061646d696e6973747261746f72, 0),
(1, 0x53746f7265206f776e6572, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_auth_excludes`
--

CREATE TABLE `mtb_auth_excludes` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_auth_excludes`
--

INSERT INTO `mtb_auth_excludes` (`id`, `name`, `rank`) VALUES
(0, 0x696e6465782e706870, 0),
(1, 0x6c6f676f75742e706870, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_constants`
--

CREATE TABLE `mtb_constants` (
  `id` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8_bin,
  PRIMARY KEY (`id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_constants`
--

INSERT INTO `mtb_constants` (`id`, `name`, `rank`, `remarks`) VALUES
(0x41444d494e5f484f4d455f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e2022686f6d652e70687022, 165, 0x486f6d65),
(0x41444d494e5f4944, 0x223122, 74, 0x4d616e6167656d656e74207573657220494420286e6f7420646973706c6179656420666f72206d61696e74656e616e63652e29),
(0x41444d494e5f4c4f47494e5f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e204449525f494e4445585f50415448, 166, 0x4c6f67696e2070616765),
(0x41444d494e5f4c4f474f55545f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e20226c6f676f75742e70687022, 171, 0x4c6f676f75742070616765),
(0x41444d494e5f4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f61646d696e2e6c6f6722, 144, 0x4d616e6167656d656e742066756e6374696f6e206c6f672066696c65),
(0x41444d494e5f4d4f4445, 0x30, 90, 0x4d616e6167656d656e74206d6f646520313a2041637469766520303a20496e6163746976652028647572696e672064656c697665727929),
(0x41444d494e5f4e4557535f535441525459454152, 0x32303035, 264, 0x4e657720696e666f726d6174696f6e206d616e6167656d656e742073637265656e20537461727420796561722028412e442e2920),
(0x41444d494e5f4f524445525f454449545f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e20226f726465722f656469742e70687022, 168, 0x4f726465722065646974696e672070616765),
(0x41444d494e5f4f524445525f4d41494c5f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e20226f726465722f6d61696c2e70687022, 170, 0x4f726465722065646974696e672070616765),
(0x41444d494e5f4f524445525f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e20226f726465722f22202e204449525f494e4445585f50415448, 169, 0x4f726465722065646974696e672070616765),
(0x41444d494e5f50524f44554354535f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e202270726f64756374732f22202e204449525f494e4445585f50415448, 167, 0x50726f64756374207365617263682070616765),
(0x41444d494e5f53595354454d5f55524c50415448, 0x524f4f545f55524c50415448202e2041444d494e5f444952202e202273797374656d2f22202e204449525f494e4445585f50415448, 159, 0x53797374656d206d616e6167656d656e7420746f70),
(0x41444d494e5f5449544c45, 0x2245432d43554245206d616e6167656d656e742066756e6374696f6e22, 134, 0x4d616e6167656d656e742066756e6374696f6e207469746c65),
(0x414d4f554e545f4c454e, 0x36, 199, 0x496e76656e746f727920636f756e742c204e756d626572206f662073616c6573207265737472696374696f6e73),
(0x415554485f54595045, 0x22484d414322, 10, 0x41757468656e7469636174696f6e206d6574686f64),
(0x42495254485f4d4f4e54485f504f494e54, 0x30, 98, 0x506f696e747320666f72206269727468646179206d6f6e7468),
(0x42495254485f59454152, 0x31393031, 83, 0x44617465206f6620626972746820526567697374726174696f6e2073746172742079656172),
(0x424c4f435f444952, 0x2266726f6e7470617274732f626c6f632f22, 311, 0x426c6f636b2066696c6520736176696e672064657374696e6174696f6e),
(0x434152545f55524c50415448, 0x524f4f545f55524c50415448202e2022636172742f22202e204449525f494e4445585f50415448, 240, 0x4361727420746f70),
(0x43415445474f52595f48454144, 0x223e22, 138, 0x4e65772063617465676f727920646973706c61792063686172616374657273),
(0x43415445474f52595f4d4158, 0x31303030, 133, 0x4d6178696d756d206e756d626572206f662063617465676f7269657320746861742063616e2062652072656769737465726564),
(0x434552545f535452494e47, 0x22375744686342544622, 80, 0x41757468656e7469636174696f6e20636861726163746572206578616d706c65),
(0x434841525f434f4445, 0x225554462d3822, 39, 0x5465787420636f6465),
(0x434c4f53455f444159, 0x3331, 45, 0x44657369676e6174696f6e206f66206375746f6666206461746520286966206c61737420646179206f6620746865206d6f6e74682c20737065636966792033312e29),
(0x434f4d50494c455f41444d494e5f5245414c444952, 0x444154415f5245414c444952202e2022536d617274792f74656d706c617465735f632f61646d696e2f22, 310, 0x534d4152545920636f6d70696c6520286d616e6167656d656e742066756e6374696f6e29),
(0x434f4d50494c455f5245414c444952, 0x444154415f5245414c444952202e2022536d617274792f74656d706c617465735f632f22202e2054454d504c4154455f4e414d45202e20222f22, 309, 0x534d4152545920636f6d70696c65),
(0x434f4f4b49455f455850495245, 0x333635, 212, 0x436f6f6b696520726574656e74696f6e2074696d6520286461797329),
(0x4352454449545f4144445f59454152, 0x3130, 85, 0x43726564697420636172642065787069726174696f6e202b207965617273),
(0x4352454449545f4e4f5f4c454e, 0x34, 207, 0x43686172616374657220636f756e7420666f7220637265646974206361726420282a5573656420696e206d6f64756c6529),
(0x4353565f4c494e455f4d4158, 0x3130303030, 128, 0x4d6178696d756d206e756d626572206f66206368617261637465727320706572206c696e6520666f72204353562075706c6f6164),
(0x4353565f53495a45, 0x32303030, 127, 0x4353562073697a65207265737472696374696f6e20284b4229),
(0x4353565f54454d505f5245414c444952, 0x444154415f5245414c444952202e202275706c6f61642f6373762f22, 156, 0x54656d706f7261727920736176696e672064657374696e6174696f6e206f6620656e636f64656420435356),
(0x435553544f4d45525f434f4e4649524d5f4d41494c, 0x66616c7365, 75, 0x446f20796f752077616e7420746f2073656e6420612074656d706f72617279206d656d62657220636f6e6669726d6174696f6e20652d6d61696c207768656e207265676973746572696e672061732061206d656d6265723f2028747275653a2054656d706f72617279206d656d6265722c2066616c73653a2046756c6c206d656d62657229),
(0x435553544f4d45525f4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f637573746f6d65722e6c6f6722, 143, 0x4d656d626572206c6f67696e206c6f672066696c65),
(0x43565f5041594d454e545f4c494d4954, 0x3134, 275, 0x5061796d656e7420646561646c696e6520282a5573656420696e206d6f64756c6529),
(0x44425f4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f64622e6c6f6722, 147, 0x4442206c6f672066696c65),
(0x44454255475f4c4f475f5245414c46494c45, 0x2222, 145, 0x4465627567206c6f672066696c6520286e6f7420696e7075743a205374616e64617264206c6f672066696c652f636f6e74726f6c2073637265656e206c6f672066696c6529),
(0x44454255475f4d4f4445, 0x66616c7365, 72, 0x4465627567206d6f64652028747275653a2073665072696e745220616e64204442206572726f72206d6573736167652c20746865206c6f67206c6576656c206f7574707574732061204465627567206c6f672c2066616c73653a206e6f74206f757470757429),
(0x44454641554c545f50415353574f5244, 0x222a2a2a2a2a2a22, 66, 0x5265766973696f6e206f66206d656d62657220726567697374726174696f6e20284d5920706167652920666f722070617373776f7264),
(0x44454641554c545f50524f445543545f44495350, 0x32, 56, 0x313a20446973636c6f73656420323a204e6f7420646973636c6f736564),
(0x44454641554c545f50524f445543545f444f574e, 0x31, 703, 0x313a2041637475616c2070726f6475637420323a20446f776e6c6f6164),
(0x44454641554c545f54454d504c4154455f4e414d45, 0x2264656661756c745f656e2d555322, 300, 0x44656661756c742074656d706c617465206e616d652028504329),
(0x44454c49564645455f4d4158, 0x3437, 187, 0x4d6178696d756d20646973706c617920636f756e7420666f722064656c697665727920636861726765),
(0x44454c495654494d455f4d4158, 0x3136, 186, 0x4d6178696d756d206e756d626572206f662064656c69766572792074696d657320646973706c61796564),
(0x44454c49565f414444525f4d4158, 0x3230, 67, 0x4d6178696d756d206e756d626572206f66207365706172617465207368697070696e672064657374696e6174696f6e732072656769737465726564),
(0x44454c49565f444154455f454e445f4d4158, 0x3231, 272, 0x4d6178696d756d206e756d626572206f66206461797320646973706c61796564206f6e2070756c6c2d646f776e206d656e752061667465722064617465206f6e2077686963682064656c697665727920697320706f737369626c65),
(0x44454c49565f465245455f414d4f554e54, 0x30, 57, 0x5175616e74697479206f662070726f64756374732070757263686173656420776974682066726565207368697070696e672028696620302c207368697070696e67206973206e6f742066726565207265676172646c657373206f6620746865207175616e746974792070757263686173656429),
(0x44454c49565f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f64656c69762e70687022, 241, 0x44656c69766572792064657374696e6174696f6e2073657474696e6773),
(0x4445564943455f545950455f41444d494e, 0x3939, 1103, 0x5465726d696e616c20747970653a204d616e6167656d656e742073637265656e),
(0x4445564943455f545950455f4d4f42494c45, 0x31, 1100, 0x5465726d696e616c20747970653a204d6f62696c65),
(0x4445564943455f545950455f5043, 0x3130, 1102, 0x5465726d696e616c20747970653a205043),
(0x4445564943455f545950455f534d41525450484f4e45, 0x32, 1101, 0x5465726d696e616c20747970653a20536d61727470686f6e65),
(0x44495341424c45445f524742, 0x222343394339433922, 136, 0x446973706c617920636f6c6f72207768656e20696e707574206974656d732061726520696e616374697665),
(0x444f574e4c4f4144535f54454d505f504c5547494e5f494e5354414c4c5f444952, 0x444154415f5245414c444952202e2022646f776e6c6f6164732f746d702f706c7567696e5f696e7374616c6c2f22, 613, 0x54656d706f72617279206465636f6d7072657373696f6e206469726563746f727920666f7220706c75672d696e2028666f7220696e7374616c6c696e6729),
(0x444f574e4c4f4144535f54454d505f504c5547494e5f5550444154455f444952, 0x444154415f5245414c444952202e2022646f776e6c6f6164732f746d702f706c7567696e5f7570646174652f22, 612, 0x54656d706f72617279206465636f6d7072657373696f6e206469726563746f727920666f7220706c75672d696e2028666f72207570646174696e6729),
(0x444f574e4c4f41445f424c4f434b, 0x31303234, 708, 0x446f776e6c6f61642073616c65732066756e6374696f6e202020446f776e6c6f616465642066696c652072656164696e6720627974657320284b4229),
(0x444f574e4c4f41445f444159535f4c454e, 0x33, 700, 0x4e756d626572206f662064617973204e756d626572206f6620646967697473),
(0x444f574e4c4f41445f455854454e53494f4e, 0x227a69702c6c7a682c6a70672c6a7065672c6769662c706e672c6d70332c7064662c63737622, 701, 0x457874656e73696f6e7320706f737369626c6520666f7220726567697374726174696f6e206f6620646f776e6c6f616465642066696c65732028636f6d6d612d64656c696d6974656429),
(0x444f574e5f534156455f5245414c444952, 0x444154415f5245414c444952202e2022646f776e6c6f61642f736176652f22, 705, 0x536176696e672064657374696e6174696f6e206f6620646f776e6c6f616465642066696c65),
(0x444f574e5f53495a45, 0x3530303030, 702, 0x53697a65206c696d69746174696f6e20666f7220646f776e6c6f61642073616c65732066696c6520284b4229),
(0x444f574e5f54454d505f5245414c444952, 0x444154415f5245414c444952202e2022646f776e6c6f61642f74656d702f22, 704, 0x54656d706f7261727920736176696e67206f6620646f776e6c6f616465642066696c65),
(0x4543435542455f494e464f, 0x74727565, 1218, 0x45432d435542452075706461746520696e666f726d6174696f6e2072657472696576616c2028747275653a2072657472696576652066616c73653a20646f206e6f7420726574726965766529),
(0x4543435542455f5041594d454e54, 0x2245432d4355424522, 41, 0x506872617365206772616e74656420746f207061796d656e74206d6f64756c6520),
(0x454e5452595f4c494d49545f484f5552, 0x31, 267, 0x5265696e6974696174696f6e207265737472696374696f6e2074696d652028756e6974733a20686f75727329),
(0x454e5452595f55524c, 0x48545450535f55524c202e2022656e7472792f22202e204449525f494e4445585f50415448, 238, 0x546f70206f66206d656d62657220726567697374726174696f6e2070616765),
(0x4552524f525f4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f6572726f722e6c6f6722, 146, 0x4572726f72206c6f672066696c6520286e6f7420696e7075743a207374616e64617264206c6f672066696c652f6d616e6167656d656e742073637265656e206c6f672066696c6529),
(0x4552525f434f4c4f52, 0x222366666538653822, 137, 0x446973706c6179656420636f6c6f7220647572696e6720616e206572726f72),
(0x4641564f524954455f4552524f52, 0x3133, 46, 0x47656e6572616c2073697465206572726f72),
(0x46494c455f4e414d455f4c454e, 0x3130, 209, 0x46696c65206e616d6520646973706c61792063686172616374657220636f756e74),
(0x46494c455f53495a45, 0x3130303030, 130, 0x46696c65206d616e6167656d656e742073637265656e2075706c6f6164207265737472696374696f6e7320284b4229),
(0x464f52474f545f4d41494c, 0x30, 95, 0x446f20796f752077616e74206120636f6e6669726d6174696f6e20652d6d61696c20726567617264696e6720796f757220666f72676f7474656e2070617373776f72642073656e7420746f20796f753f2028303a20446f206e6f742073656e642c20313a2053656e6429),
(0x47524150485f4c4142454c5f4d4158, 0x3430, 52, 0x43686172616374657220636f756e74206f66206c6162656c20666f72206772617068),
(0x47524150485f5049455f4d4158, 0x3130, 51, 0x4d6178696d756d20646973706c617920636f756e7420696e20706965206368617274),
(0x47524150485f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f67726170685f696d6167652f22, 49, 0x47726170682073746f72616765206469726563746f7279),
(0x47524150485f55524c50415448, 0x524f4f545f55524c50415448202e202275706c6f61642f67726170685f696d6167652f22, 50, 0x47726170682055524c),
(0x484f4f4b5f504f494e545f50524550524f43455353, 0x224c435f506167655f70726550726f6365737322, 1301, 0x486f6f6b20706f696e74202870726570726f6365737329),
(0x484f4f4b5f504f494e545f50524f43455353, 0x224c435f506167655f70726f6365737322, 1302, 0x486f6f6b20706f696e74202870726f6365737329),
(0x485454505f524551554553545f54494d454f5554, 0x223522, 1219, 0x45787465726e616c207369746520485454502072657472696576616c2074696d656f75742074696d6520287365636f6e647329),
(0x49445f4d41585f4c454e, 0x53544558545f4c454e, 195, 0x466f72206d616e6167656d656e742073637265656e3a204d6178696d756d2063686172616374657220636f756e7420666f722049442f70617373776f7264),
(0x49445f4d494e5f4c454e, 0x34, 196, 0x466f72206d616e6167656d656e742073637265656e3a204d696e696d756d206e756d626572206f66206368617261637465727320666f7220494420616e642070617373776f7264),
(0x494d4147455f52454e414d45, 0x74727565, 525, 0x496d6167652072656e616d652073657474696e6773202870726f6475637420696d61676573206f6e6c79292028747275653a2052656e616d652c2066616c73653a20446f206e6f742072656e616d6529),
(0x494d4147455f534156455f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f736176655f696d6167652f22, 151, 0x496d61676520736176696e672064657374696e6174696f6e),
(0x494d4147455f534156455f5253535f55524c, 0x485454505f55524c202e202275706c6f61642f736176655f696d6167652f22, 155, 0x52535320696d61676520736176696e672064657374696e6174696f6e2055524c),
(0x494d4147455f534156455f55524c50415448, 0x524f4f545f55524c50415448202e202275706c6f61642f736176655f696d6167652f22, 153, 0x55524c20666f7220696d61676520736176696e672064657374696e6174696f6e),
(0x494d4147455f53495a45, 0x31303030, 126, 0x496d616765206b6579207265737472696374696f6e20284b4229),
(0x494d4147455f54454d505f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f74656d705f696d6167652f22, 150, 0x54656d706f7261727920736176696e67206f6620696d616765),
(0x494d4147455f54454d505f5253535f55524c, 0x485454505f55524c202e202275706c6f61642f74656d705f696d6167652f22, 154, 0x52535320696d6167652074656d706f726172792073746f726167652055524c),
(0x494d4147455f54454d505f55524c50415448, 0x524f4f545f55524c50415448202e202275706c6f61642f74656d705f696d6167652f22, 152, 0x55524c20666f722074656d706f7261727920736176696e67206f6620696d616765),
(0x494e5055545f44454c49565f464545, 0x31, 58, 0x44656c6976657279206368617267652073657474696e67732073637265656e20646973706c617920286163746976653a203120696e6163746976653a203029),
(0x494e5055545f5a49505f55524c50415448, 0x524f4f545f55524c50415448202e2022696e7075745f7a69702e70687022, 161, 0x506f7374616c20636f646520696e707574),
(0x494e545f4c454e, 0x39, 206, 0x4e756d626572206f662064696769747320666f7220746573742076616c7565732028494e5429),
(0x4c414e475f434f4445, 0x22656e2d555322, 38, 0x4c616e677561676520636f6465),
(0x4c415247455f494d4147455f484549474854, 0x353030, 111, 0x456e6c617267656420696d61676520766572746963616c),
(0x4c415247455f494d4147455f5749445448, 0x353030, 110, 0x456e6c617267656420696d61676520686f72697a6f6e74616c),
(0x4c415247455f535542494d4147455f484549474854, 0x353030, 119, 0x456e6c617267652073756220696d61676520766572746963616c),
(0x4c415247455f535542494d4147455f5749445448, 0x353030, 118, 0x456e6c617267652073756220696d61676520686f72697a6f6e74616c),
(0x4c4556454c5f4d4158, 0x35, 132, 0x4d6178696d756d2068696572617263687920666f722063617465676f7279),
(0x4c4c544558545f4c454e, 0x3939393939, 193, 0x43686172616374657220636f756e74206f6620756c7472616c6f6e67207465787420286d61696c206d6167617a696e65732c206574632e29),
(0x4c4f43414c45, 0x22656e5f55532e5554462d3822, 40, 0x4c6f63616c652073657474696e6773),
(0x4c4f47494e5f4652414d45, 0x226c6f67696e5f6672616d652e74706c22, 77, 0x4c6f67696e2073637265656e206672616d65),
(0x4c4f47494e5f52455452595f494e54455256414c, 0x30, 1411, 0x44656c61792074696d65207768656e206c6f67696e206661696c7320287365636f6e64732920286d65617375726520616761696e737420627275746520666f7263652061747461636b29),
(0x4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f736974652e6c6f6722, 142, 0x5374616e64617264206c6f672066696c65),
(0x4c544558545f4c454e, 0x33303030, 192, 0x43686172616374657220636f756e74206f66206c6f6e672074657874),
(0x4d41494c5f4348415241435445525f434f4445, 0x225554462d3822, 1413, 0x4d61696c2063686172616374657220636f6465),
(0x4d41494c5f4845414445525f434f4e54454e545f54595045, 0x2255532d415343494922, 1414, 0x4d61696c206865616465723a20636f6e74656e74732074797065),
(0x4d41494e5f4652414d45, 0x226d61696e5f6672616d652e74706c22, 78, 0x4d616e6167656d656e742073637265656e206672616d65),
(0x4d41535445525f444154415f5245414c444952, 0x444154415f5245414c444952202e202263616368652f22, 27, 0x4d61737465722064617461206361636865206469726563746f7279),
(0x4d41585f4c49464554494d45, 0x37323030, 26, 0x56616c696469747920706572696f64206f662044422073657373696f6e20287365636f6e647329),
(0x4d41585f4c4f475f5155414e54495459, 0x35, 92, 0x4d6178696d756d206e756d626572206f66206c6f672066696c657320284c6f6720726f746174696f6e29),
(0x4d41585f4c4f475f53495a45, 0x223130303030303022, 93, 0x4d6178696d756d2063617061636974792073746f72656420696e20612073696e676c65206c6f672066696c6520286279746529),
(0x4d454d4245525f504d4158, 0x3130, 182, 0x4e756d626572206f66206c696e657320646973706c61796564206f6e206d656d626572206d616e6167656d656e742070616765),
(0x4d4c544558545f4c454e, 0x31303030, 191, 0x43686172616374657220636f756e74206f66206c6f6e6720616e64206d656469756d2d6c656e67746820746578742028696e717569726965732c206574632e29),
(0x4d4f42494c455f434152545f55524c50415448, 0x524f4f545f55524c50415448202e2022636172742f22202e204449525f494e4445585f50415448, 411, 0x4361727420746f70),
(0x4d4f42494c455f434f4d50494c455f5245414c444952, 0x444154415f5245414c444952202e2022536d617274792f74656d706c617465735f632f22202e204d4f42494c455f54454d504c4154455f4e414d45202e20222f22, 313, 0x534d4152545920636f6d70696c6520286d6f62696c6529),
(0x4d4f42494c455f44454641554c545f54454d504c4154455f4e414d45, 0x226d6f62696c6522, 301, 0x44656661756c742074656d706c617465206e616d6520286d6f62696c6529),
(0x4d4f42494c455f494d4147455f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f6d6f62696c655f696d6167652f22, 408, 0x4469726563746f727920666f7220736176696e6720636f6e76657274656420696d6167657320666f72206d6f62696c652070686f6e6573),
(0x4d4f42494c455f494d4147455f55524c50415448, 0x524f4f545f55524c50415448202e202275706c6f61642f6d6f62696c655f696d6167652f22, 409, 0x4469726563746f727920666f7220736176696e6720636f6e76657274656420696d6167657320666f72206d6f62696c652070686f6e6573),
(0x4d4f42494c455f505f44455441494c5f55524c50415448, 0x524f4f545f55524c50415448202e202270726f64756374732f64657461696c2e7068703f70726f647563745f69643d22, 415, 0x50726f647563742064657461696c73202848544d4c206f757470757429),
(0x4d4f42494c455f53455353494f4e5f4c49464554494d45, 0x31383030, 402, 0x4d6f62696c6520736974652073657373696f6e20636f6e74696e756174696f6e2074696d6520287365636f6e647329),
(0x4d4f42494c455f53484f5050494e475f434f4d504c4554455f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f636f6d706c6574652e70687022, 416, 0x507572636861736520636f6d706c6574696f6e2073637265656e20282a5573656420696e20746865206d6f64756c6529),
(0x4d4f42494c455f53484f5050494e475f434f4e4649524d5f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f636f6e6669726d2e70687022, 413, 0x507572636861736520636f6e6669726d6174696f6e2070616765),
(0x4d4f42494c455f53484f5050494e475f5041594d454e545f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f7061796d656e742e70687022, 414, 0x5061796d656e74206d6574686f642073656c656374696f6e2070616765),
(0x4d4f42494c455f54454d504c4154455f4e414d45, 0x226d6f62696c6522, 304, 0x4d6f62696c652074656d706c617465206e616d65),
(0x4d4f42494c455f54454d504c4154455f5245414c444952, 0x534d415254595f54454d504c415445535f5245414c444952202e204d4f42494c455f54454d504c4154455f4e414d45202e20222f22, 312, 0x534d415254592074656d706c61746520286d6f62696c6529),
(0x4d4f42494c455f544f505f55524c50415448, 0x524f4f545f55524c50415448202e204449525f494e4445585f50415448, 410, 0x4d6f62696c652055524c),
(0x4d4f44554c455f444952, 0x22646f776e6c6f6164732f6d6f64756c652f22, 22, 0x446f776e6c6f61646564206d6f64756c652073746f72616765206469726563746f7279),
(0x4d4f44554c455f5245414c444952, 0x444154415f5245414c444952202e204d4f44554c455f444952, 23, 0x446f776e6c6f61646564206d6f64756c652073746f72616765206469726563746f7279),
(0x4d544558545f4c454e, 0x323030, 190, 0x43686172616374657220636f756e74206f66206c6f6e67206974656d7320286164647265737365732c206574632e29),
(0x4d554c5449504c455f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f6d756c7469706c652e70687022, 242, 0x53657474696e677320666f72206d756c7469706c652064656c69766572792064657374696e6174696f6e73),
(0x4d59504147455f44454c4956414444525f55524c50415448, 0x524f4f545f55524c50415448202e20226d79706167652f64656c69766572792e70687022, 254, 0x4d7920706167652064656c69766572792064657374696e6174696f6e2055524c),
(0x4d59504147455f4f524445525f5354415455535f444953505f464c4147, 0x74727565, 1412, 0x4d5920706167653a204f726465722073746174757320646973706c617920666c6167),
(0x4e4156495f504d4158, 0x34, 184, 0x4d6178696d756d20646973706c6179207175616e7469747920666f722070616765206e756d626572),
(0x4e4f524d414c5f494d4147455f484549474854, 0x323630, 115, 0x4e6f726d616c20696d61676520686569676874),
(0x4e4f524d414c5f494d4147455f5749445448, 0x323630, 114, 0x4e6f726d616c20696d616765206c656e677468),
(0x4e4f524d414c5f50524943455f5449544c45, 0x224e6f726d616c20707269636522, 140, 0x5072696365206e616d65),
(0x4e4f524d414c5f535542494d4147455f484549474854, 0x323030, 117, 0x4e6f726d616c20737562696d61676520686569676874),
(0x4e4f524d414c5f535542494d4147455f5749445448, 0x323030, 116, 0x4e6f726d616c20737562696d616765206c656e677468),
(0x4e4f53544f434b5f48494444454e, 0x66616c7365, 291, 0x4e6f6e2d646973706c6179206f662070726f64756374732077697468206e6f20696e76656e746f72792028747275653a204e6f7420646973706c617965642c2066616c73653a20446973706c6179656429),
(0x4e4f5f494d4147455f5245414c46494c45, 0x555345525f54454d504c4154455f5245414c444952202e202264656661756c742f696d672f706963747572652f696d675f626c616e6b2e67696622, 158, 0x446973706c61796564207768657265207468657265206973206e6f20696d616765),
(0x4f5054494f4e5f434c4153535f524547495354, 0x31, 62, 0x50726f647563742073706563696669636174696f6e20726567697374726174696f6e20286163746976653a203120696e6163746976653a203029),
(0x4f5054494f4e5f44454c49565f464545, 0x31, 60, 0x4164642064656c6976657279206368617267657320666f7220656163682064656c697665727920636f6d70616e7920286163746976653a203120696e6163746976653a203029),
(0x4f5054494f4e5f4641564f524954455f50524f44554354, 0x31, 523, 0x4661766f726974652070726f6475637420726567697374726174696f6e20286163746976653a203120696e6163746976653a203029),
(0x4f5054494f4e5f50524f445543545f44454c49565f464545, 0x30, 59, 0x5368697070696e6720636f73742073657474696e677320666f7220656163682070726f6475637420286163746976653a203120696e6163746976653a203029),
(0x4f5054494f4e5f5245434f4d4d454e44, 0x31, 61, 0x5265636f6d6d656e6465642070726f6475637420726567697374726174696f6e20286163746976653a203120696e6163746976653a203029),
(0x4f524445525f4241434b5f4f52444552, 0x34, 804, 0x4265696e67206261636b6f726465726564),
(0x4f524445525f43414e43454c, 0x33, 803, 0x43616e63656c),
(0x4f524445525f44454c4956, 0x35, 805, 0x53686970706564),
(0x4f524445525f4e4557, 0x31, 800, 0x4e6577206f72646572),
(0x4f524445525f5041595f57414954, 0x32, 801, 0x57616974696e6720666f72206465706f736974),
(0x4f524445525f50454e44494e47, 0x37, 806, 0x5061796d656e74206265696e672070726f636573736564),
(0x4f524445525f5052455f454e44, 0x36, 802, 0x4465706f7369746564),
(0x4f524445525f5354415455535f4d4158, 0x3530, 70, 0x526573706f6e736520737461747573206d616e6167656d656e742073637265656e206c69737420646973706c6179207175616e74697479),
(0x4f53544f52455f4c4f475f5245414c46494c45, 0x444154415f5245414c444952202e20226c6f67732f6f776e65727373746f72652e6c6f6722, 502, 0x4f776e6572732053746f7265206c6f672070617468),
(0x4f53544f52455f53534c55524c, 0x2222, 501, 0x4f776e6572732053746f72652055524c),
(0x4f53544f52455f55524c, 0x22687474703a2f2f7777772e65632d637562652e6e65742f22, 500, 0x4f776e6572732053746f72652055524c),
(0x504147455f444953504c41595f54494d455f4c4f475f4d494e5f455845435f54494d45, 0x32, 1003, 0x54696d652073657474696e677320666f722072657472696576696e67207061676520646973706c61792074696d65206c6f672028726574726965766564207768656e2069742074616b6573206c6f6e676572207468616e20746865207365742076616c756529),
(0x504147455f444953504c41595f54494d455f4c4f475f4d4f4445, 0x31, 1002, 0x466c616720666f722072657472696576696e67207061676520646973706c61792074696d65206c6f672028313a20446973706c61792c20303a20446f206e6f7420646973706c617929),
(0x50415353574f52445f4d41585f4c454e, 0x53544558545f4c454e, 205, 0x46726f6e742073637265656e3a204d6178696d756d2063686172616374657220636f756e7420666f722070617373776f7264),
(0x50415353574f52445f4d494e5f4c454e, 0x34, 204, 0x46726f6e742073637265656e3a204d696e696d756d2063686172616374657220636f756e7420666f722070617373776f7264),
(0x504541525f44425f4445425547, 0x30, 42, 0x504541523a3a4442206465627567206d6f6465),
(0x504541525f44425f50455253495354454e54, 0x66616c7365, 43, 0x504541523a3a44422070657273697374656e74206f7074696f6e),
(0x50455243454e544147455f4c454e, 0x33, 198, 0x746865206e756d626572206f662064696769747320666f6c6c6f77696e672074686520706f696e74),
(0x504c5547494e5f41435449564154455f464c4147, 0x74727565, 1303, 0x4c6f61642f6e6f74206c6f616420666c616720666f7220706c756729),
(0x504c5547494e5f444952, 0x22706c7567696e732f22, 600, 0x28466f7220322e31312920506c75672d696e206469726563746f727920285573656420696e206d6f64756c6529),
(0x504c5547494e5f455854454e53494f4e, 0x227461722c7461722e677a2c7a697022, 611, 0x457874656e73696f6e7320706f737369626c6520666f7220726567697374726174696f6e206f6620706c75672d696e2066696c652028636f6d6d612d64656c696d6974656429),
(0x504c5547494e5f48544d4c5f5245414c444952, 0x48544d4c5f5245414c444952202e2022706c7567696e2f22, 605, 0x506c75672d696e20736176696e672064657374696e6174696f6e206469726563746f7279202868746d6c29),
(0x504c5547494e5f48544d4c5f55524c50415448, 0x524f4f545f55524c50415448202e2022706c7567696e2f22, 614, 0x506c75672d696e2055524c),
(0x504c5547494e5f5245414c444952, 0x555345525f5245414c444952202e20504c5547494e5f444952, 601, 0x28466f7220322e31312920506c75672d696e20736176696e672064657374696e6174696f6e20285573656420696e206d6f64756c6529),
(0x504c5547494e5f54454d505f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f74656d705f706c7567696e2f22, 608, 0x54656d706f7261727920736176696e672064657374696e6174696f6e206f6620706c75672d696e2066696c65),
(0x504c5547494e5f55504c4f41445f5245414c444952, 0x444154415f5245414c444952202e2022646f776e6c6f6164732f706c7567696e2f22, 604, 0x506c75672d696e20736176696e672064657374696e6174696f6e206469726563746f7279),
(0x504f494e545f52554c45, 0x32, 88, 0x506f696e742063616c63756c6174696f6e2072756c652028313a20526f756e64206f66662c20323a205472756e63617465642c20333a20526f756e6420757029),
(0x504f494e545f56414c5545, 0x31, 89, 0x50726963652070657220706f696e7420282429),
(0x50524943455f4c454e, 0x38, 197, 0x4e756d626572206f662064696769747320666f7220616d6f756e74),
(0x50524f445543545355425f4d4158, 0x35, 185, 0x4d6178696d756d206e756d626572206f662070726f6475637420737562696e666f726d6174696f6e),
(0x50524f44554354535f544f54414c5f4d4158, 0x3135, 55, 0x557020746f20686f77206d616e7920646f20796f752077616e7420746f20646973706c617920696e2070726f6475637420746162756c6174696f6e3f),
(0x50524f445543545f545950455f444f574e4c4f4144, 0x32, 901, 0x446f776e6c6f616465642070726f64756374),
(0x50524f445543545f545950455f4e4f524d414c, 0x31, 900, 0x4e6f726d616c2070726f64756374),
(0x505f44455441494c5f55524c50415448, 0x524f4f545f55524c50415448202e202270726f64756374732f64657461696c2e7068703f70726f647563745f69643d22, 253, 0x50726f647563742064657461696c73202848544d4c206f757470757429),
(0x5245434f4d4d454e445f4e554d, 0x38, 269, 0x5265636f6d6d656e6465642070726f6475637420646973706c6179206e756d626572),
(0x5245434f4d4d454e445f50524f445543545f4d4158, 0x36, 268, 0x52656c617465642070726f6475637420646973706c6179206e756d626572),
(0x52454c454153455f59454152, 0x32303035, 84, 0x5965617220696e20776869636820746869732073797374656d2073746172746564206f7065726174696e67),
(0x5245564945575f414c4c4f575f55524c, 0x30, 277, 0x416c6c6f77206f72206e6f7420616c6c6f772077726974696e67206f662055524c7320696e2070726f647563742072657669657773),
(0x5245564945575f5245474953545f4d4158, 0x35, 71, 0x4d6178696d756d206e756d626572206f662066726f6e74207265766965772077726974696e6773),
(0x5246435f434f4d504c49414e545f454d41494c5f434845434b, 0x66616c7365, 401, 0x446f65732074686520652d6d61696c206164647265737320636865636b20636f6d706c792077697468205246433f2028747275653a20636f6d706c6965732c2066616c73653a20646f6573206e6f7420636f6d706c7929),
(0x53414c455f50524943455f5449544c45, 0x2253616c657320707269636522, 141, 0x5072696365206e616d65),
(0x53414d504c455f4144445245535331, 0x224d756e69636970616c697479206e616d6520284578616d706c653a2053756e6e7976616c652c204341203934303835205553412922, 1, 0x52656c6174656420746f2066726f6e7420646973706c6179),
(0x53414d504c455f4144445245535332, 0x22486f757365206e756d6265722f6275696c64696e67206e616d6520284578616d706c653a20343430204e6f72746820576f6c666520526f61642922, 2, 0x52656c6174656420746f2066726f6e7420646973706c6179),
(0x5345415243485f43415445474f52595f4c454e, 0x3138, 208, 0x5365617263682063617465676f7279206d6178696d756d20646973706c61792063686172616374657220636f756e7420286279746529),
(0x5345415243485f504d4158, 0x3130, 183, 0x4e756d626572206f66206c696e657320666f7220736561726368207061676520646973706c617920),
(0x53454c4543545f524742, 0x222366666666646622, 135, 0x456d70686173697a656420646973706c617920636f6c6f7220647572696e672065646974696e67),
(0x534550415f4341544e415649, 0x22203e2022, 235, 0x43617465676f72792064656c696d69746572),
(0x53455353494f4e5f4b4545505f4d4554484f44, 0x22757365436f6f6b696522, 418, 0x53657373696f6e206d61696e74656e616e6365206d6574686f643a2022757365436f6f6b6965227c227573655265717565737422),
(0x53455353494f4e5f4c49464554494d45, 0x31383030, 419, 0x53657373696f6e20636f6e74696e756174696f6e2074696d6520287365636f6e647329),
(0x53484f5050494e475f434f4d504c4554455f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f636f6d706c6574652e70687022, 246, 0x507572636861736520636f6d706c6574696f6e2073637265656e),
(0x53484f5050494e475f434f4e4649524d5f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f636f6e6669726d2e70687022, 244, 0x507572636861736520636f6e6669726d6174696f6e2070616765),
(0x53484f5050494e475f4d4f44554c455f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f6c6f61645f7061796d656e745f6d6f64756c652e70687022, 249, 0x53637265656e20666f72206d6f64756c65206164646974696f6e),
(0x53484f5050494e475f5041594d454e545f55524c50415448, 0x524f4f545f55524c50415448202e202273686f7070696e672f7061796d656e742e70687022, 245, 0x5061796d656e74206d6574686f642073656c656374696f6e2070616765),
(0x53484f5050494e475f55524c, 0x48545450535f55524c202e202273686f7070696e672f22202e204449525f494e4445585f50415448, 237, 0x4d656d62657220696e666f726d6174696f6e20696e707574),
(0x534954455f4652414d45, 0x22736974655f6672616d652e74706c22, 79, 0x47656e6572616c20736974652073637265656e206672616d65),
(0x534c544558545f4c454e, 0x353030, 294, 0x43686172616374657220636f756e74206f662073686f72742074657874),
(0x534d414c4c5f494d4147455f484549474854, 0x313330, 113, 0x4c69737420696d61676520766572746963616c),
(0x534d414c4c5f494d4147455f5749445448, 0x313330, 112, 0x4c69737420696d61676520686f72697a6f6e74616c),
(0x534d41525450484f4e455f434f4d50494c455f5245414c444952, 0x444154415f5245414c444952202e2022536d617274792f74656d706c617465735f632f22202e20534d41525450484f4e455f54454d504c4154455f4e414d45202e20222f22, 315, 0x534d4152545920636f6d70696c652028736d61727470686f6e6529),
(0x534d41525450484f4e455f44454641554c545f54454d504c4154455f4e414d45, 0x227370686f6e655f656e2d555322, 302, 0x44656661756c742074656d706c617465206e616d652028736d61727470686f6e6529),
(0x534d41525450484f4e455f54454d504c4154455f4e414d45, 0x227370686f6e655f656e2d555322, 305, 0x536d61727470686f6e652074656d706c617465206e616d65),
(0x534d41525450484f4e455f54454d504c4154455f5245414c444952, 0x534d415254595f54454d504c415445535f5245414c444952202e20534d41525450484f4e455f54454d504c4154455f4e414d45202e20222f22, 314, 0x534d415254592074656d706c6174652028736d6172742070686f6e6529),
(0x534d415254595f464f5243455f434f4d50494c455f4d4f4445, 0x66616c7365, 1401, 0x534d4152545920636f6d70696c65206d6f6465),
(0x534d415254595f54454d504c415445535f5245414c444952, 0x20444154415f5245414c444952202e2022536d617274792f74656d706c617465732f22, 306, 0x534d415254592074656d706c617465),
(0x534d544558545f4c454e, 0x313030, 189, NULL),
(0x53514c5f51554552595f4c4f475f4d494e5f455845435f54494d45, 0x32, 1001, 0x457865637574696f6e2074696d65206465656d6564206173206265696e6720612064656c617920696e20746865204442206c6f6720287365636f6e647329),
(0x53514c5f51554552595f4c4f475f4d4f4445, 0x31, 1000, 0x4442206c6f67207265636f7264696e67206d6f64652028303a204e6f207265636f7264696e672c20313a205265636f7264696e67206f6e6c7920647572696e672064656c6179732c20323a20436f6e7374616e74207265636f7264696e6729),
(0x53544152545f42495254485f59454152, 0x31393730, 139, 0x44617465206f6620626972746820496e697469616c6c792073656c65637465642079656172),
(0x53544558545f4c454e, 0x3530, 188, 0x43686172616374657220636f756e74206f662073686f7274206974656d7320286e616d65732c206574632e29),
(0x54454c5f4954454d5f4c454e, 0x36, 202, 0x566172696f7573206974656d207265737472696374696f6e7320666f722074656c6570686f6e65206e756d62657273),
(0x54454c5f4c454e, 0x3132, 203, 0x546f74616c206e756d626572206f662074656c6570686f6e65206e756d62657273),
(0x54454d504c4154455f41444d494e5f5245414c444952, 0x534d415254595f54454d504c415445535f5245414c444952202e202261646d696e2f22, 308, 0x534d415254592074656d706c61746520286d616e6167656d656e742066756e6374696f6e29),
(0x54454d504c4154455f4e414d45, 0x2264656661756c745f656e2d555322, 303, 0x54656d706c617465206e616d65),
(0x54454d504c4154455f5245414c444952, 0x534d415254595f54454d504c415445535f5245414c444952202e2054454d504c4154455f4e414d45202e20222f22, 307, 0x534d415254592074656d706c6174652028504329),
(0x54454d504c4154455f53495a45, 0x3130303030, 131, 0x5265737472696374696f6e7320666f722074656d706c6174652066696c657320746861742063616e2062652075706c6f6164656420284b4229),
(0x54454d504c4154455f54454d505f5245414c444952, 0x48544d4c5f5245414c444952202e202275706c6f61642f74656d705f74656d706c6174652f22, 19, 0x54656d706f7261727920736176696e67206f662074656d706c6174652066696c65),
(0x54494d455a4f4e45, 0x224574632f474d542b3022, 1415, 0x54696d65207a6f6e65),
(0x544f505f55524c50415448, 0x524f4f545f55524c50415448202e204449525f494e4445585f50415448, 239, 0x5369746520746f70),
(0x5452414e53414354494f4e5f49445f4e414d45, 0x227472616e73616374696f6e696422, 94, 0x5472616e73616374696f6e204944206e616d65),
(0x5550444154455f48545450, 0x2222, 28, 0x557064617465206d616e6167656d656e742066696c652073746f72616765206c6f636174696f6e),
(0x5550444154455f53454e445f534954455f494e464f, 0x66616c7365, 289, 0x57696c6c207369746520696e666f726d6174696f6e206265207472616e736d6974746564207768656e207570646174696e673f),
(0x55524c5f4c454e, 0x31303234, 194, 0x55524c20636861726163746572206c656e677468),
(0x555345525f4445465f5048505f5245414c46494c45, 0x555345525f5245414c444952202e20225f5f64656661756c742e70687022, 20, 0x44656661756c74205048502066696c6520666f722075736572206372656174696f6e2073637265656e),
(0x555345525f444952, 0x22757365725f646174612f22, 3, 0x557365722066696c6520736176696e672064657374696e6174696f6e),
(0x555345525f5041434b4147455f444952, 0x227061636b616765732f22, 17, 0x54656d706c6174652066696c6520736176696e672064657374696e6174696f6e),
(0x555345525f5245414c444952, 0x48544d4c5f5245414c444952202e20555345525f444952, 4, 0x557365722066696c6520736176696e672064657374696e6174696f6e),
(0x555345525f54454d504c4154455f5245414c444952, 0x555345525f5245414c444952202e20555345525f5041434b4147455f444952, 18, 0x54656d706c6174652066696c6520736176696e672064657374696e6174696f6e),
(0x555345525f55524c, 0x485454505f55524c202e20555345525f444952, 9, 0x55736572206372656174696f6e20706167652c206574632e),
(0x5553455f4d4f42494c45, 0x74727565, 292, 0x446f20796f752077616e7420746f2075736520746865206d6f62696c6520736974653f2028747275653a205573652c2066616c73653a20446f206e6f742075736529202866616c7365206973207061727469616c6c7920737570706f727465642920282a5573656420696e206d6f64756c6529),
(0x5553455f4d554c5449504c455f5348495050494e47, 0x74727565, 293, 0x446f20796f752077616e7420746f2075736520746865206d756c7469706c65207368697070696e672064657374696e6174696f6e2064657369676e6174696f6e2066756e6374696f6e3f2028747275653a205573652c2066616c73653a20446f206e6f742075736529),
(0x5553455f504f494e54, 0x74727565, 290, 0x446f20796f752077616e7420746f2075736520706f696e74733f2028747275653a205573652c2066616c73653a20446f206e6f742075736529202866616c7365206973207061727469616c6c7920737570706f7274656429),
(0x5553455f564552424f53455f4c4f47, 0x44454255475f4d4f4445, 73, 0x446f20796f752077616e7420746f206d616b6520746865206c6f6720776f7264793f2028747275653a205573652c2066616c73653a20446f206e6f742075736529),
(0x5a495030315f4c454e, 0x33, 200, 0x506f7374616c20636f64652031),
(0x5a495030325f4c454e, 0x34, 201, 0x506f7374616c20636f64652032),
(0x5a4950434f44455f4c454e, 0x3130, 210, 0x7a6970636f64652063686172616374657220636f756e74),
(0x5a49505f444f574e4c4f41445f55524c, 0x22687474703a2f2f7777772e706f73742e6a6170616e706f73742e6a702f7a6970636f64652f646c2f6b6f67616b692f7a69702f6b656e5f616c6c2e7a697022, 1224, 0x506f7374616c20636f646520435356205a495020617263686976652066696c652072657472696576616c20736f75726365);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_order_status`
--

CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_customer_order_status`
--

INSERT INTO `mtb_customer_order_status` (`id`, `name`, `rank`) VALUES
(1, 0x4f726465722072656365697074, 1),
(2, 0x57616974696e6720666f72206465706f736974, 2),
(3, 0x43616e63656c, 4),
(4, 0x4f726465722072656365697074, 5),
(5, 0x53686970706564, 6),
(6, 0x4f726465722072656365697074, 3),
(7, 0x4f72646572206e6f7420636f6d706c657465, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_status`
--

CREATE TABLE `mtb_customer_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_customer_status`
--

INSERT INTO `mtb_customer_status` (`id`, `name`, `rank`) VALUES
(1, 0x54656d706f72617279206d656d626572, 0),
(2, 0x66756c6c206d656d626572, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_db`
--

CREATE TABLE `mtb_db` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_db`
--

INSERT INTO `mtb_db` (`id`, `name`, `rank`) VALUES
(1, 0x506f737467726553514c, 0),
(2, 0x4d7953514c, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_delivery_date`
--

CREATE TABLE `mtb_delivery_date` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_delivery_date`
--

INSERT INTO `mtb_delivery_date` (`id`, `name`, `rank`) VALUES
(1, 0x496d6d656469617465, 0),
(2, 0x3120746f20322064617973206c61746572, 1),
(3, 0x3320746f20342064617973, 2),
(4, 0x41667465722031207765656b, 3),
(5, 0x41667465722032207765656b73, 4),
(6, 0x41667465722033207765656b73, 5),
(7, 0x41667465722031206d6f6e7468, 6),
(8, 0x41667465722032206d6f6e746873, 7),
(9, 0x4261636b6f72646572202861667465722070726f64756374206172726976616c29, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_device_type`
--

CREATE TABLE `mtb_device_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_device_type`
--

INSERT INTO `mtb_device_type` (`id`, `name`, `rank`) VALUES
(1, 0x4d6f62696c65, 0),
(2, 0x536d61727470686f6e65, 1),
(10, 0x5043, 2),
(99, 0x4d616e6167656d656e742073637265656e, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_disable_logout`
--

CREATE TABLE `mtb_disable_logout` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_disable_logout`
--

INSERT INTO `mtb_disable_logout` (`id`, `name`, `rank`) VALUES
(1, 0x2f73686f7070696e672f64656c69762e706870, 0),
(2, 0x2f73686f7070696e672f7061796d656e742e706870, 1),
(3, 0x2f73686f7070696e672f636f6e6669726d2e706870, 2),
(4, 0x2f73686f7070696e672f636172642e706870, 3),
(5, 0x2f73686f7070696e672f6c6f616e2e706870, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_disp`
--

CREATE TABLE `mtb_disp` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_disp`
--

INSERT INTO `mtb_disp` (`id`, `name`, `rank`) VALUES
(1, 0x446973636c6f736564, 0),
(2, 0x4e6f7420646973636c6f736564, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_job`
--

CREATE TABLE `mtb_job` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_job`
--

INSERT INTO `mtb_job` (`id`, `name`, `rank`) VALUES
(1, 0x5075626c69632073657276616e74, 0),
(2, 0x436f6e73756c74616e74, 1),
(3, 0x546563686e6963616c206a6f622072656c6174656420746f20636f6d707574657273, 2),
(4, 0x546563686e6963616c206a6f62206f74686572207468616e2074686f73652072656c6174656420746f20636f6d707574657273, 3),
(5, 0x46696e616e63652d72656c61746564, 4),
(6, 0x446f63746f72, 5),
(7, 0x4c6177796572, 6),
(8, 0x47656e6572616c20616666616972732f48756d616e207265736f75726365732f436c65726963616c20776f726b, 7),
(9, 0x4f7065726174696f6e20616e642073616c6573, 8),
(10, 0x526573656172636820616e6420646576656c6f706d656e74, 9),
(11, 0x5075626c69632072656c6174696f6e732f4164766572746973696e67, 10),
(12, 0x506c616e6e696e672f4d61726b6574696e67, 11),
(13, 0x44657369676e2d72656c61746564, 12),
(14, 0x436f72706f72617465206d616e6167656d656e742f65786563757469766573, 13),
(15, 0x5075626c697368696e6720616e64206d61737320636f6d6d756e69636174696f6e732d72656c61746564, 14),
(16, 0x53747564656e742f506172742d74696d6572, 15),
(17, 0x486f75736577696665, 16),
(18, 0x4f74686572, 17);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_magazine_type`
--

CREATE TABLE `mtb_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_magazine_type`
--

INSERT INTO `mtb_magazine_type` (`id`, `name`, `rank`) VALUES
(1, 0x48544d4c, 0),
(2, 0x54657874, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_magazine_type`
--

CREATE TABLE `mtb_mail_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_mail_magazine_type`
--

INSERT INTO `mtb_mail_magazine_type` (`id`, `name`, `rank`) VALUES
(1, 0x48544d4c206d61696c, 0),
(2, 0x54657874206d61696c, 1),
(3, 0x446f206e6f74207769736820746f2072656365697665, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_template`
--

CREATE TABLE `mtb_mail_template` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_mail_template`
--

INSERT INTO `mtb_mail_template` (`id`, `name`, `rank`) VALUES
(1, 0x452d6d61696c20726567617264696e672072656365697074206f66206f72646572, 0),
(2, 0x452d6d61696c20726567617264696e672072656365697074206f66206f7264657220286d6f62696c6529, 1),
(3, 0x452d6d61696c20726567617264696e672072656365697074206f66206f726465722063616e63656c6c6174696f6e, 2),
(4, 0x4261636b6f7264657220636f6e6669726d6174696f6e20652d6d61696c, 3),
(5, 0x496e7175697279207265636569707420652d6d61696c, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_tpl_path`
--

CREATE TABLE `mtb_mail_tpl_path` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_mail_tpl_path`
--

INSERT INTO `mtb_mail_tpl_path` (`id`, `name`, `rank`) VALUES
(1, 0x6d61696c5f74656d706c617465732f6f726465725f6d61696c2e74706c, 0),
(2, 0x6d61696c5f74656d706c617465732f6f726465725f6d61696c2e74706c, 1),
(3, 0x6d61696c5f74656d706c617465732f6f726465725f6d61696c2e74706c, 2),
(4, 0x6d61696c5f74656d706c617465732f6f726465725f6d61696c2e74706c, 3),
(5, 0x6d61696c5f74656d706c617465732f636f6e746163745f6d61696c2e74706c, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_type`
--

CREATE TABLE `mtb_mail_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_mail_type`
--

INSERT INTO `mtb_mail_type` (`id`, `name`, `rank`) VALUES
(1, 0x504320652d6d61696c2061646472657373, 0),
(2, 0x4d6f62696c6520652d6d61696c2061646472657373, 1),
(3, 0x504320652d6d61696c206164647265737320286578636c75646573206d656d626572732077686f206861766520726567697374657265642061206d6f62696c6520652d6d61696c206164647265737329, 2),
(4, 0x4d6f62696c6520652d6d61696c206164647265737320286578636c7564696e67206d656d626572732077686f20686176652072656769737465726564206120504320652d6d61696c206164647265737329, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mobile_domain`
--

CREATE TABLE `mtb_mobile_domain` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_mobile_domain`
--

INSERT INTO `mtb_mobile_domain` (`id`, `name`, `rank`) VALUES
(1, 0x646f636f6d6f2e6e652e6a70, 0),
(2, 0x657a7765622e6e652e6a70, 1),
(3, 0x736f667462616e6b2e6e652e6a70, 2),
(4, 0x766f6461666f6e652e6e652e6a70, 3),
(5, 0x7064782e6e652e6a70, 4),
(6, 0x6469736e65792e6e652e6a70, 5),
(7, 0x77696c6c636f6d2e636f6d, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status`
--

CREATE TABLE `mtb_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_order_status`
--

INSERT INTO `mtb_order_status` (`id`, `name`, `rank`) VALUES
(1, 0x4e6577206f72646572207265636569766564, 1),
(2, 0x57616974696e6720666f72206465706f736974, 2),
(3, 0x43616e63656c, 4),
(4, 0x4265696e67206261636b6f726465726564, 5),
(5, 0x53686970706564, 6),
(6, 0x4465706f7369746564, 3),
(7, 0x5061796d656e74206265696e672070726f636573736564, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status_color`
--

CREATE TABLE `mtb_order_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_order_status_color`
--

INSERT INTO `mtb_order_status_color` (`id`, `name`, `rank`) VALUES
(1, 0x23464646464646, 0),
(2, 0x23464644453942, 1),
(3, 0x23433943394339, 2),
(4, 0x23464644394439, 3),
(5, 0x23424644464646, 4),
(6, 0x23464646464142, 5),
(7, 0x23464643434343, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_ownersstore_err`
--

CREATE TABLE `mtb_ownersstore_err` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_ownersstore_err`
--

INSERT INTO `mtb_ownersstore_err` (`id`, `name`, `rank`) VALUES
(1000, 0x416e20756e6b6e6f776e206572726f72206f636375727265642e, 0),
(1001, 0x496c6c6567616c20706172616d657465727320776572652073656e742e, 1),
(1002, 0x41757468656e7469636174696f6e206661696c65642e203c6272202f3ee383bb496620796f752061726520612074656d706f72617279206d656d6265722c20636f6d706c657465206d656d62657220726567697374726174696f6e203c6272202f3ee383bb436865636b20746f206d616b6520737572652074686174207468652061757468656e7469636174696f6e206b657920697320636f72726563746c79207365742e, 2),
(1003, 0x41757468656e7469636174696f6e206661696c65642e203c6272202f3ee383bb496620796f752061726520612074656d706f72617279206d656d6265722c20636f6d706c657465206d656d62657220726567697374726174696f6e203c6272202f3ee383bb436865636b20746f206d616b6520737572652074686174207468652061757468656e7469636174696f6e206b657920697320636f72726563746c79207365742e, 3),
(1004, 0x546865726520617265206e6f207075726368617365642070726f64756374732e, 4),
(1005, 0x5468657265206973206e6f207570646174657220746861742063616e20626520646f776e6c6f616465642e203c6272202f3e20497420697320706f737369626c652074686174207468652073746174757320697320224177616974696e67206465706f73697422203c6272202f3e20e383bb497420697320706f737369626c6520746861742074686520696e7374616c6c6564206d6f64756c6520697320616c726561647920746865206c61746573742076657273696f6e2e, 5),
(1006, 0x416e206572726f72206f6363757272656420696e207468652064656c6976657279207365727665722e, 6),
(1007, 0x446f776e6c6f616420636f6d706c6574696f6e206e6f74696669636174696f6e206661696c65642e, 7),
(2001, 0x41757468656e7469636174696f6e206f66206d616e6167656d656e742073637265656e206661696c65642e203c6272202f3e2052657475726e20746f20746865206d616e6167656d656e74207061676520746f702073637265656e20616e64206c6f6720696e20616761696e2e, 8),
(2002, 0x4e6f7420636f6e6e656374656420746f207468652064656c6976657279207365727665722e, 9),
(2003, 0x4e6f7420636f6e6e656374656420746f207468652064656c6976657279207365727665722e, 10),
(2004, 0x416e206572726f72206f6363757272656420696e207468652064656c6976657279207365727665722e, 11),
(2005, 0x416e2061757468656e7469636174696f6e206b657920686173206e6f74206265656e207365742e203c6272202f3ee383bb53657420616e2061757468656e7469636174696f6e206b6579207573696e67202241757468656e7469636174696f6e206b65792073657474696e6773222e, 12),
(2006, 0x556e617574686f72697a6564206163636573732e, 13),
(2007, 0x496c6c6567616c20706172616d657465727320776572652073656e742e, 14),
(2008, 0x4175746f6d617469632075706461746573206172652064697361626c6564, 15),
(2009, 0x46696c652077726974696e67206661696c65642e203c6272202f3e20e383bb577269746520616363657373206973206e6f742070726f7065726c79207365742e203c6272202f3ee383bb436865636b20776865746865722074686572652069732077726974652061636365737320666f722074686520646174612f646f776e6c6f6164732f74656d70206469726563746f7279, 16),
(2010, 0x46696c652077726974696e67206661696c65642e203c6272202f3ee383bb436865636b207468652064657461696c7320696e20224c6f67206d616e6167656d656e74222e, 17);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_ownersstore_ips`
--

CREATE TABLE `mtb_ownersstore_ips` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_ownersstore_ips`
--

INSERT INTO `mtb_ownersstore_ips` (`id`, `name`, `rank`) VALUES
(0, 0x3231302e3138382e3139352e313433, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_page_max`
--

CREATE TABLE `mtb_page_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_page_max`
--

INSERT INTO `mtb_page_max` (`id`, `name`, `rank`) VALUES
(10, 0x3130, 0),
(20, 0x3230, 1),
(30, 0x3330, 2),
(40, 0x3430, 3),
(50, 0x3530, 4),
(60, 0x3630, 5),
(70, 0x3730, 6),
(80, 0x3830, 7),
(90, 0x3930, 8),
(100, 0x313030, 9);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_permission`
--

CREATE TABLE `mtb_permission` (
  `id` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_permission`
--

INSERT INTO `mtb_permission` (`id`, `name`, `rank`) VALUES
(0x2f61646d696e2f656e7472792f64656c6574652e706870, 0x31, 9),
(0x2f61646d696e2f656e7472792f696e6465782e706870, 0x31, 8),
(0x2f61646d696e2f656e7472792f696e7075747a69702e706870, 0x31, 10),
(0x2f61646d696e2f7365617263682f64656c6574655f6e6f74652e706870, 0x31, 11),
(0x2f61646d696e2f73797374656d2f64656c6574652e706870, 0x30, 1),
(0x2f61646d696e2f73797374656d2f696e6465782e706870, 0x30, 0),
(0x2f61646d696e2f73797374656d2f696e7075742e706870, 0x30, 2),
(0x2f61646d696e2f73797374656d2f6d61737465722e706870, 0x30, 3),
(0x2f61646d696e2f73797374656d2f6d61737465725f64656c6574652e706870, 0x30, 4),
(0x2f61646d696e2f73797374656d2f6d61737465725f72616e6b2e706870, 0x30, 5),
(0x2f61646d696e2f73797374656d2f6d61737465726373762e706870, 0x30, 6),
(0x2f61646d696e2f73797374656d2f72616e6b2e706870, 0x30, 7);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_pref`
--

CREATE TABLE `mtb_pref` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_pref`
--

INSERT INTO `mtb_pref` (`id`, `name`, `rank`) VALUES
(1, 0xe58c97e6b5b7e98193, 1),
(2, 0xe99d92e6a3aee79c8c, 2),
(3, 0xe5b2a9e6898be79c8c, 3),
(4, 0xe5aeaee59f8ee79c8c, 4),
(5, 0xe7a78be794b0e79c8c, 5),
(6, 0xe5b1b1e5bda2e79c8c, 6),
(7, 0xe7a68fe5b3b6e79c8c, 7),
(8, 0xe88ca8e59f8ee79c8c, 8),
(9, 0xe6a083e69ca8e79c8c, 9),
(10, 0xe7bea4e9a6ace79c8c, 10),
(11, 0xe59fbce78e89e79c8c, 11),
(12, 0xe58d83e89189e79c8c, 12),
(13, 0xe69db1e4baace983bd, 13),
(14, 0xe7a59ee5a588e5b79de79c8c, 14),
(15, 0xe696b0e6bd9fe79c8c, 15),
(16, 0xe5af8ce5b1b1e79c8c, 16),
(17, 0xe79fb3e5b79de79c8c, 17),
(18, 0xe7a68fe4ba95e79c8c, 18),
(19, 0xe5b1b1e6a2a8e79c8c, 19),
(20, 0xe995b7e9878ee79c8c, 20),
(21, 0xe5b290e9989ce79c8c, 21),
(22, 0xe99d99e5b2a1e79c8c, 22),
(23, 0xe6849be79fa5e79c8c, 23),
(24, 0xe4b889e9878de79c8c, 24),
(25, 0xe6bb8be8b380e79c8c, 25),
(26, 0xe4baace983bde5ba9c, 26),
(27, 0xe5a4a7e998aae5ba9c, 27),
(28, 0xe585b5e5baabe79c8c, 28),
(29, 0xe5a588e889afe79c8c, 29),
(30, 0xe5928ce6ad8ce5b1b1e79c8c, 30),
(31, 0xe9b3a5e58f96e79c8c, 31),
(32, 0xe5b3b6e6a0b9e79c8c, 32),
(33, 0xe5b2a1e5b1b1e79c8c, 33),
(34, 0xe5ba83e5b3b6e79c8c, 34),
(35, 0xe5b1b1e58fa3e79c8c, 35),
(36, 0xe5beb3e5b3b6e79c8c, 36),
(37, 0xe9a699e5b79de79c8c, 37),
(38, 0xe6849be5aa9be79c8c, 38),
(39, 0xe9ab98e79fa5e79c8c, 39),
(40, 0xe7a68fe5b2a1e79c8c, 40),
(41, 0xe4bd90e8b380e79c8c, 41),
(42, 0xe995b7e5b48ee79c8c, 42),
(43, 0xe7868ae69cace79c8c, 43),
(44, 0xe5a4a7e58886e79c8c, 44),
(45, 0xe5aeaee5b48ee79c8c, 45),
(46, 0xe9b9bfe58590e5b3b6e79c8c, 46),
(47, 0xe6b296e7b884e79c8c, 47);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_max`
--

CREATE TABLE `mtb_product_list_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_product_list_max`
--

INSERT INTO `mtb_product_list_max` (`id`, `name`, `rank`) VALUES
(15, 0x3135206974656d73, 0),
(30, 0x3330206974656d73, 1),
(50, 0x3530206974656d73, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_status_color`
--

CREATE TABLE `mtb_product_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_product_status_color`
--

INSERT INTO `mtb_product_status_color` (`id`, `name`, `rank`) VALUES
(1, 0x23464646464646, 0),
(2, 0x23433943394339, 1),
(3, 0x23444445364632, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_type`
--

CREATE TABLE `mtb_product_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_product_type`
--

INSERT INTO `mtb_product_type` (`id`, `name`, `rank`) VALUES
(1, 0x4e6f726d616c2070726f64756374, 0),
(2, 0x446f776e6c6f616465642070726f64756374, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_recommend`
--

CREATE TABLE `mtb_recommend` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_recommend`
--

INSERT INTO `mtb_recommend` (`id`, `name`, `rank`) VALUES
(1, 0xe29885, 4),
(2, 0xe29885e29885, 3),
(3, 0xe29885e29885e29885, 2),
(4, 0xe29885e29885e29885e29885, 1),
(5, 0xe29885e29885e29885e29885e29885, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_reminder`
--

CREATE TABLE `mtb_reminder` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_reminder`
--

INSERT INTO `mtb_reminder` (`id`, `name`, `rank`) VALUES
(1, 0x5768617420697320796f7572206d6f7468657273206d616964656e206e616d653f, 0),
(2, 0x5768617420697320796f7572206661766f7269746520636172746f6f6e3f, 1),
(3, 0x5768617420697320746865206e616d65206f6620796f7572206661766f72697465207065743f, 2),
(4, 0x57686f2077617320796f7572206669727374206769726c667269656e642f626f79667269656e643f, 3),
(5, 0x57686174206d6f76696520646f20796f75207468696e6b20697320696e746572657374696e673f, 4),
(6, 0x5768617420697320746865206e616d65206f6620746865207465616368657220796f75207265737065637465643f, 5),
(7, 0x5768617420697320796f7572206661766f7269746520666f6f643f, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_review_deny_url`
--

CREATE TABLE `mtb_review_deny_url` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_review_deny_url`
--

INSERT INTO `mtb_review_deny_url` (`id`, `name`, `rank`) VALUES
(0, 0x687474703a2f2f, 0),
(1, 0x68747470733a2f2f, 1),
(2, 0x7474703a2f2f, 2),
(3, 0x747470733a2f2f, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_sex`
--

CREATE TABLE `mtb_sex` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_sex`
--

INSERT INTO `mtb_sex` (`id`, `name`, `rank`) VALUES
(1, 0x4d616c65, 0),
(2, 0x46656d616c65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_status`
--

CREATE TABLE `mtb_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_status`
--

INSERT INTO `mtb_status` (`id`, `name`, `rank`) VALUES
(1, 0x4e4557, 0),
(2, 0x4f6e6c792061206665772072656d61696e696e67, 1),
(3, 0x327820706f696e7473, 2),
(4, 0x5265636f6d6d656e646174696f6e, 3),
(5, 0x4c696d697465642065646974696f6e, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_status_image`
--

CREATE TABLE `mtb_status_image` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_status_image`
--

INSERT INTO `mtb_status_image` (`id`, `name`, `rank`) VALUES
(1, 0x696d672f69636f6e2f69636f5f30312e676966, 0),
(2, 0x696d672f69636f6e2f69636f5f30322e676966, 1),
(3, 0x696d672f69636f6e2f69636f5f30332e676966, 2),
(4, 0x696d672f69636f6e2f69636f5f30342e676966, 3),
(5, 0x696d672f69636f6e2f69636f5f30352e676966, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_target`
--

CREATE TABLE `mtb_target` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_target`
--

INSERT INTO `mtb_target` (`id`, `name`, `rank`) VALUES
(0, 0x556e75736564, 0),
(1, 0x4c6566744e617669, 1),
(2, 0x4d61696e48656164, 2),
(3, 0x52696768744e617669, 3),
(4, 0x4d61696e466f6f74, 4),
(5, 0x546f704e617669, 5),
(6, 0x426f74746f6d4e617669, 6),
(7, 0x486561644e617669, 7),
(8, 0x486561646572546f704e617669, 8),
(9, 0x466f6f746572426f74746f6d4e617669, 9),
(10, 0x486561646572496e7465726e616c4e617669, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_taxrule`
--

CREATE TABLE `mtb_taxrule` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_taxrule`
--

INSERT INTO `mtb_taxrule` (`id`, `name`, `rank`) VALUES
(1, 0x526f756e64206f6666, 0),
(2, 0x5472756e63617465, 1),
(3, 0x526f756e64207570, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_wday`
--

CREATE TABLE `mtb_wday` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_wday`
--

INSERT INTO `mtb_wday` (`id`, `name`, `rank`) VALUES
(0, 0x53756e646179, 0),
(1, 0x4d6f6e646179, 1),
(2, 0x54756573646179, 2),
(3, 0x5765646e6573646179, 3),
(4, 0x5468757273646179, 4),
(5, 0x467269646179, 5),
(6, 0x5361747572646179, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_work`
--

CREATE TABLE `mtb_work` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_bin,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mtb_work`
--

INSERT INTO `mtb_work` (`id`, `name`, `rank`) VALUES
(0, 0x4e6f74206f7065726174696e67, 0),
(1, 0x4f7065726174696e67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_zip`
--

CREATE TABLE `mtb_zip` (
  `zip_id` int(11) NOT NULL DEFAULT '0',
  `zipcode` text COLLATE utf8_bin,
  `state` text COLLATE utf8_bin,
  `city` text COLLATE utf8_bin,
  `town` text COLLATE utf8_bin,
  PRIMARY KEY (`zip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
