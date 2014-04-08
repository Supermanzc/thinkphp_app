-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 04 月 08 日 01:47
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wycms`
--

-- --------------------------------------------------------

--
-- 表的结构 `wy_files`
--

CREATE TABLE IF NOT EXISTS `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `wy_files`
--

/*INSERT INTO `tp_files` (`id`, `token`, `url`, `size`, `type`, `time`) VALUES
(1, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/3/c/9/4/thumb_53060e0e5ec49.jpg', 40776, 'jpg', 1392905742),
(2, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/b/a/c/4/thumb_530617566324c.jpg', 63070, 'jpg', 1392908118),
(3, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/2/2/a/f/thumb_530617621f4b7.jpg', 73233, 'jpg', 1392908130),
(4, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/3/f/b/b/thumb_5306176dd0d5e.jpg', 62377, 'jpg', 1392908142),
(5, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/5/4/1/6/thumb_5306177a9f6e7.jpg', 215875, 'jpg', 1392908154),
(6, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/6/a/2/3/thumb_53061ea134f0d.jpg', 37118, 'jpg', 1392909985),
(7, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/0/2/0/6/thumb_53061f219e8d1.jpg', 40776, 'jpg', 1392910113),
(8, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/d/1/7/0/thumb_53061fde06734.jpg', 34997, 'jpg', 1392910302),
(9, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/5/5/0/e/thumb_53062100c8b7a.jpg', 63070, 'jpg', 1392910592),
(10, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/b/e/5/7/thumb_530623703b8a2.jpg', 50334, 'jpg', 1392911216),
(11, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/4/1/9/1/thumb_530623df65c5d.jpg', 58546, 'jpg', 1392911327),
(12, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/e/6/8/c/thumb_530624975a02c.jpg', 37118, 'jpg', 1392911511),
(13, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/9/8/3/a/thumb_530625c6dc435.jpg', 107661, 'jpg', 1392911815),
(14, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/3/e/6/1/thumb_530625e3523bf.jpg', 53654, 'jpg', 1392911843),
(15, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/2/0/d/e/thumb_5306260b7c594.jpg', 41717, 'jpg', 1392911883),
(16, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/e/6/3/d/thumb_5306265f4f070.jpg', 82542, 'jpg', 1392911967),
(17, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/6/6/d/7/thumb_53062693af539.jpg', 54283, 'jpg', 1392912019),
(18, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/b/d/0/b/thumb_530626c1a2f90.jpg', 54283, 'jpg', 1392912065),
(19, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/0/c/9/8/thumb_5306ea931004b.jpg', 57162, 'jpg', 1392962195),
(20, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/3/7/d/1/thumb_5306f3678bddc.jpg', 24356, 'jpg', 1392964455),
(21, 'rmxyks1392900383', 'http://home.weiwin.cc/uploads/r/rmxyks1392900383/e/9/c/e/thumb_5306f593a39fe.jpg', 11548, 'jpg', 1392965011),
(22, 'ksmnih1393732322', 'http://test3.weiwin.cc/uploads/k/ksmnih1393732322/a/3/b/2/thumb_5312ad94a85b5.png', 14641, 'png', 1393733012),
(23, 'ksmnih1393732322', 'http://test3.weiwin.cc/uploads/k/ksmnih1393732322/8/5/4/5/thumb_5312adc324742.png', 14641, 'png', 1393733059);
*/
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
