-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `kad_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `k_table`
--

CREATE TABLE `k_table` (
  `id` int(12) NOT NULL,
  `day` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `income` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tall` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eb` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text,
  `indate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `k_table`
--

INSERT INTO `k_table` (`id`, `day`, `name`, `income`, `age`, `tall`, `address`, `job`, `eb`, `rank`, `comment`, `indate`) VALUES
(8, '1/4', 'りょう', '700', '28', '180', '埼玉', '不動産', '早稲田卒', 'S', 'イケメン', '2021-03-25 23:12:00'),
(9, '1/6', 'けい', '600', '30', '175', '大阪', '大手', '立命館卒', 'S', 'おもしろい', '2021-03-25 23:15:23'),
(10, '1/6', 'ふじ', '700', '30', '165', '山口', '薬剤師', '薬科大', 'A', '身長が低いかなあ。他はイイ！', '2021-03-25 23:21:04'),
(11, '1/8', 'たかし', '1100', '29', '175', '大阪', '大手商社', '京都大学', 'SS', 'かっこいいし　年収高い！', '2021-03-25 23:39:48'),
(12, '1/10', 'あざーる', '800', '30', '178', '東京', '公務員', '立教大学', 'A', '公務員も結構稼げるんだね～！', '2021-03-25 23:39:48'),
(13, '1/10', 'まさ', '600', '30', '178', '東京', '接客', '日体大', 'A', '体育会系も良い感じだなあ。', '2021-03-25 23:39:48'),
(14, '1/10', 'やじ', '700', '26', '182', '埼玉', 'モデル', '日大', 'D', '本日3人目のデート！総合的には最高だけど、性格悪すぎたなあ。', '2021-03-25 23:39:48'),
(15, '1/15', 'せいや', '500', '29', '165', '奈良', '食品系', '奈良大卒', 'B', '可もなく不可もなく。', '2021-03-25 23:39:48'),
(16, '1/17', 'よしき', '600', '29', '172', '神奈川', '不動産', '明治大学', 'A', 'まあまあかなぁ。', '2021-03-25 23:39:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `k_table`
--
ALTER TABLE `k_table`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `k_table`
--
ALTER TABLE `k_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
