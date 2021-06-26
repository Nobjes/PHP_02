-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2021 年 6 月 26 日 15:34
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `ranking_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `ranking_table`
--

CREATE TABLE `ranking_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) NOT NULL,
  `first` varchar(64) NOT NULL,
  `first_place` varchar(64) NOT NULL,
  `second` varchar(64) NOT NULL,
  `second_place` varchar(64) NOT NULL,
  `third` varchar(64) NOT NULL,
  `third_place` varchar(64) NOT NULL,
  `fourth` varchar(64) NOT NULL,
  `fourth_place` varchar(64) NOT NULL,
  `fifth` varchar(64) NOT NULL,
  `fifth_place` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ranking_table`
--

INSERT INTO `ranking_table` (`id`, `name`, `first`, `first_place`, `second`, `second_place`, `third`, `third_place`, `fourth`, `fourth_place`, `fifth`, `fifth_place`) VALUES
(1, '山田洋次', '来々軒', '田町', '和膳', '人形町', '寿司よし', '東京', '道産子', '札幌', 'ハーモニー', '原宿'),
(2, 'スズキ宣彦', 'こうらくえん', '田町', 'うまい亭', '人形町', 'キッチンみき', '東京', 'はなまるカレー', '札幌', 'つようどん', '原宿'),
(5, 'ジーズ太郎', '原宿王', '原宿', '三茶餃子', '三軒茶屋', 'うしうし', '新宿', '寿司まさ', '築地', 'レストランゼロ', '六本木'),
(7, 'テスト太郎', 'あああ', '原宿', '和膳', '表参道', 'ううう', '新宿', 'えええ', '築地', 'おおお', '品川'),
(8, '大豆田とわ子', 'チャーハン王', '渋谷', 'ラーメン王', '表参道', '餃子亭', '新宿', '漬物屋', '築地', 'とんかつ夢庵', '六本木'),
(9, '田中はっさく', '来々軒', '田町', '和膳', '人形町', '寿司よし', '東京', '道産子', '札幌', 'ハーモニー', '原宿'),
(11, '佐藤か太郎', '来々軒', '渋谷', '三茶餃子', '三軒茶屋', '寿司よし', '東京', '寿司まさ', '新橋', 'レストランゼロ', '六本木'),
(12, 'ケンシロウ', 'お前は', '渋谷', 'もう', '人形町', 'しん', '新宿', 'で', '札幌', 'いる', '六本木'),
(13, '佐藤二朗', '原宿食堂', '原宿', '新橋魚金', '新橋', '焼肉にくにく', '大阪', 'レストランはな', '梅田', '北京飯店', '大宮');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ranking_table`
--
ALTER TABLE `ranking_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `ranking_table`
--
ALTER TABLE `ranking_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
