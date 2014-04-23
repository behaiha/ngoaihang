-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2014 at 01:28 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giaingoaihang`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(300) NOT NULL,
  `short_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) NOT NULL,
  `path` varchar(150) NOT NULL,
  `seo_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `endhot_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `hot` int(11) NOT NULL DEFAULT '0',
  `rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `url`, `short_description`, `description`, `image`, `path`, `seo_title`, `seo_description`, `active`, `create_date`, `update_date`, `endhot_date`, `user_id`, `hot`, `rate`) VALUES
(1, 'Ozil – Arsenal: Từ người hùng đến hàng hớ', 'ozil-–-arsenal-tu-nguoi-hung-den-hang-ho', 'Ozil đã từng mang lại những nét tươi mới cho Arsenal hồi đầu mùa, nhưng giờ mọi thứ đang đi theo chiều hướng tiêu cực với các Pháo thủ và đặc biệt là tiền vệ người Đức.', '<p style="text-align:justify"><strong>&ldquo;Bom tấn&rdquo; Ozil</strong></p>\r\n\r\n<p style="text-align:justify">42,5 triệu bảng, Arsenal đ&atilde; phải cắn răng ph&aacute; k&eacute;t để đưa Ozil về Emirates trong những ng&agrave;y cuối c&ugrave;ng của TTCN m&ugrave;a h&egrave; 2013. Đ&acirc;y l&agrave; bản hợp đồng đắt gi&aacute; nhất trong lịch sử The Gunners, bởi BLĐ đội b&oacute;ng cũng như HLV Wenger hiểu rằng, để chấm dứt 8 năm kh&ocirc;ng danh hiệu, họ kh&ocirc;ng c&ograve;n được ph&eacute;p keo kiệt nữa. Những thất bại li&ecirc;n tiếp đ&atilde; khiến Arsenal buộc phải c&oacute; c&aacute;ch nh&igrave;n kh&aacute;c tr&ecirc;n TTCN, một đội b&oacute;ng cần phải c&oacute; những si&ecirc;u sao cỡ bự v&agrave; họ đặt niềm tin v&agrave;o Ozil.</p>\r\n\r\n<p style="text-align:justify">Ozil đ&atilde; khởi đầu tại nước Anh như mơ. Tiền vệ người Đức c&oacute; ngay pha kiến tạo cho Giroud mở tỉ số ở chiến thắng 3-1 trước Suderland trong trận đầu ti&ecirc;n trở th&agrave;nh một Ph&aacute;o thủ. Sự c&oacute; mặt của Ozil tại Emirates đ&atilde; thực sự đem lại một c&uacute; h&iacute;ch cả về mặt tinh thần lẫn chuy&ecirc;n m&ocirc;n cho Arsenal để rồi c&aacute;c học tr&ograve; của Wenger đ&atilde; trở lại vị thế của một ứng vi&ecirc;n s&aacute;ng gi&aacute; cho chức v&ocirc; địch tại giải Ngoại hạng cũng như lọt v&agrave;o v&ograve;ng knock-out tại Champions League ở bảng đấu tử thần.</p>\r\n\r\n<p><img alt="Ozil – Arsenal: Từ người hùng đến hàng hớ - 1" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-719818395.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Chơi tốt hồi đầu m&ugrave;a giải, nhưng Ozil đang sa s&uacute;t kh&ocirc;ng phanh</p>\r\n\r\n<p style="text-align:justify"><strong>&ldquo;Bom tấn&rdquo; đang tr&ecirc;n đường trở th&agrave;nh &ldquo;bom xịt&rdquo;</strong></p>\r\n\r\n<p style="text-align:justify">Arsenal vẫn đang chinh chiến tr&ecirc;n cả 3 mặt trận&nbsp;<a href="http://localhost/giaingoaihang.com/backend" style="text-decoration: none; color: rgb(0, 0, 255);">Premier League</a>, Champions League v&agrave; FA Cup, nhưng với phong độ hiện tại của c&aacute;c Ph&aacute;o thủ, kh&ocirc;ng c&oacute; g&igrave; l&agrave; đảm bảo thầy tr&ograve; Wenger sẽ chấm dứt cơn kh&aacute;t danh hiệu. Chiến thắng 2-1 c&oacute; phần may mắn trước Liverpool cuối tuần qua tại FA Cup kh&ocirc;ng thể khỏa lấp một thực tế rằng, Arsenal vẫn c&ograve;n c&aacute;ch những &ldquo;chiếc c&uacute;p&rdquo; một khoảng c&aacute;ch kh&aacute; xa, trong đ&oacute; phong độ của ng&ocirc;i sao Ozil l&agrave; một phần nguy&ecirc;n nh&acirc;n.</p>\r\n\r\n<p style="text-align:justify">Mới nhất, Ozil đ&atilde; đ&aacute; hỏng quả penalty trong trận thua 0-2 trước Bayern rạng s&aacute;ng nay ở lượt đi v&ograve;ng 1/8 Cup C1 v&agrave; sau đ&oacute; anh gần như mất h&uacute;t v&igrave; bị ảnh hưởng t&acirc;m l&yacute; nặng nề. Nếu đ&oacute; l&agrave; b&agrave;n thắng mở tỉ số, rất c&oacute; thể kết quả trận đấu sẽ đi theo chiều hướng kh&aacute;c bởi Arsenal đ&atilde; khởi đầu trước đối thủ được đ&aacute;nh gi&aacute; l&agrave; mạnh hơn kh&ocirc;ng hề tồi ch&uacute;t n&agrave;o. Trong b&oacute;ng đ&aacute; kh&ocirc;ng c&oacute; chỗ cho từ &ldquo;nếu&rdquo;, nhưng r&otilde; r&agrave;ng Ozil đ&atilde; g&acirc;y thất vọng d&ugrave; l&agrave; ng&ocirc;i sao nhận được rất nhiều sự tr&ocirc;ng chờ của NHM Ph&aacute;o thủ.</p>\r\n\r\n<p style="text-align:justify">Nhưng sự sa s&uacute;t của Ozil kh&ocirc;ng phải chỉ ở trận đấu gặp Bayern. Trong suốt hơn 2 th&aacute;ng qua ng&ocirc;i sao người Đức đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; ch&iacute;nh m&igrave;nh. Đ&atilde; 13 trận li&ecirc;n tiếp Ozil kh&ocirc;ng thể ghi b&agrave;n v&agrave; anh cũng chỉ c&oacute; vỏn vẹn 3 đường kiến tạo trong 15 trận gần nhất, những con số thống k&ecirc; qu&aacute; thất vọng với một bản hợp đồng bom tấn.</p>\r\n\r\n<p><img alt="Ozil – Arsenal: Từ người hùng đến hàng hớ - 2" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-165039896.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Ozil đ&atilde; đ&aacute; trượt 2 quả penalty của Arsenal từ đầu m&ugrave;a</p>\r\n\r\n<p style="text-align:justify">Kh&ocirc;ng những thế, Ozil c&ograve;n g&acirc;y thất vọng ở những trận cầu đinh. Arsenal đ&atilde; thua 0-1 trước MU, 3-6 trước Man City hay 1-5 trước Liverpool v&agrave; mới nhất l&agrave; 0-2 trước Bayern, đ&oacute; đều l&agrave; những trận đấu ng&ocirc;i sao người Đức mất h&uacute;t tr&ecirc;n s&acirc;n trong sự k&igrave; vọng lớn lao của HLV, đồng đội cũng như NHM. Một ng&ocirc;i sao cỡ bự được đưa về phải tỏa s&aacute;ng ở những trận đấu lớn để gi&uacute;p đội b&oacute;ng tiến s&aacute;t tới những danh hiệu, nhưng Ozil đ&atilde; kh&ocirc;ng đ&aacute;p ứng được sự k&igrave; vọng.</p>\r\n\r\n<p style="text-align:justify">Những lời chỉ tr&iacute;ch nhằm v&agrave;o&nbsp;<u>Ozil</u>&nbsp;đ&atilde; ng&agrave;y một d&agrave;y l&ecirc;n v&agrave; đương nhi&ecirc;n sức &eacute;p ng&agrave;y một nhiều. Đ&oacute; c&oacute; thể l&agrave; con dao hai lưỡi, tiền vệ người Đức c&oacute; thể sẽ c&oacute; th&ecirc;m động lực để gi&uacute;p Arsenal vượt qua những ng&agrave;y th&aacute;ng gian kh&oacute; để chứng tỏ bản lĩnh của một ng&ocirc;i sao h&agrave;ng đầu thế giới, nhưng cũng c&oacute; thể sẽ khiến anh &ldquo;chết ch&igrave;m&rdquo; trong sự k&igrave; vọng. Ranh giới giữa &ldquo;bom tấn&rdquo; v&agrave; &ldquo;bom xịt&rdquo; tưởng như 2 đường thẳng song song giờ đ&atilde; tiệm cận v&agrave; c&oacute; thể cắt nhau l&uacute;c n&agrave;o kh&ocirc;ng biết, hệt như c&aacute;ch Ozil tự kiếm được quả phạt đền ở trận gặp Bayern nhưng cũng ch&iacute;nh anh đ&aacute; hỏng n&oacute; với c&uacute; s&uacute;t thiếu quyết đo&aacute;n. Kh&ocirc;ng ai c&oacute; thể gi&uacute;p Ozil v&agrave; chỉ c&oacute; anh mới c&oacute; thể tự cứu lấy m&igrave;nh nếu như kh&ocirc;ng muốn chết ch&igrave;m tại Emirates.</p>\r\n', '1392911313-Mourinho pre Hull LV.jpg', '../images/articles/2014-02-20/', 'Ozil – Arsenal: Từ người hùng đến hàng hớ', 'Ozil – Arsenal: Từ người hùng đến hàng hớ', 2, '2014-02-20 22:23:36', '2014-02-20 22:48:33', '2014-02-26 00:00:00', 17, 0, 0),
(2, 'Messi: Kẻ chinh phục vĩ đại', 'messi-ke-chinh-phuc-vi-dai', 'Là chân sút số 2 trong lịch sử Champions League, từng ghi bàn ở 14 quốc gia và 21 sân bóng khác nhau, Messi thực sự là kẻ chinh phục vĩ đại.', '<p style="text-align:justify">Với 4 lần đoạt QBV li&ecirc;n tiếp từ 2009 đến 2012 c&ugrave;ng v&ocirc; số những kỉ lục v&ocirc; tiền kho&aacute;ng hậu, d&ugrave; c&ograve;n rất trẻ nhưng&nbsp;<strong>Messi</strong>&nbsp;đ&atilde; được khắc t&ecirc;n trong ng&ocirc;i đền những huyền thoại vĩ đại nhất trong lịch sử m&ocirc;n thể thao Vua. Sẽ c&oacute; &yacute; kiến cho rằng Messi chưa đạt đến tầm của Pele hay Maradona bởi anh chưa gi&agrave;nh chức v&ocirc; địch World Cup, nhưng nếu lấy thước đo<a href="http://localhost/giaingoaihang.com/backend" style="text-decoration: none; color: rgb(0, 0, 255);">Champions League</a>&nbsp;l&agrave;m chuẩn mực, c&oacute; lẽ kh&ocirc;ng một cầu thủ n&agrave;o c&oacute; thể so b&igrave; với si&ecirc;u sao người Argentina.</p>\r\n\r\n<p style="text-align:justify">Với 3 chức v&ocirc; địch Champions League, 4 lần đoạt danh hiệu Vua ph&aacute; lưới li&ecirc;n tiếp (từ 2009 đến 2012), c&ugrave;ng 6 lần li&ecirc;n tiếp gi&uacute;p Barca lọt v&agrave;o b&aacute;n kết giải đấu danh gi&aacute; nhất ch&acirc;u &Acirc;u, Messi đ&atilde; thực sự trở th&agrave;nh huyền thoại của giải đấu n&agrave;y. Nhờ t&agrave;i năng tưởng chừng như v&ocirc; hạn, Leo đ&atilde; chinh phục mọi đỉnh cao ch&oacute;i lọi v&agrave; con đường để anh trở th&agrave;nh cầu thủ xuất sắc nhất trong lịch sử Champions League c&oacute; lẽ kh&ocirc;ng c&ograve;n bao xa nữa.</p>\r\n\r\n<p style="text-align:justify">Với 66 b&agrave;n sau 83 trận, d&ugrave; mới 26 tuổi nhưng Messi đ&atilde; trở th&agrave;nh ch&acirc;n s&uacute;t xuất sắc thứ 2 trong lịch sử Champions League, chỉ xếp sau Raul (71 b&agrave;n sau 144 trận). Nhưng n&ecirc;n nhớ, Messi đạt hiệu suất 0,79 b&agrave;n/trận, c&ograve;n &ldquo;Ch&uacute;a nhẫn&rdquo; chỉ c&oacute; hiệu suất 0,49 b&agrave;n/trận, một khoảng c&aacute;ch kh&aacute; xa, đồng thời việc Leo vượt mặt Raul chỉ c&ograve;n l&agrave; vấn đề thời gian nếu căn cứ v&agrave;o phong độ cũng như tuổi nghề của El Pulga.</p>\r\n\r\n<p><img alt="Messi: Kẻ chinh phục vĩ đại - 1" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-865997448.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Messi đ&atilde; ghi b&agrave;n ở 14 quốc gia v&agrave; 21 s&acirc;n b&oacute;ng ở đấu trường Champions League</p>\r\n\r\n<p style="text-align:justify">Sự xuất sắc của Messi c&ograve;n thể hiện ở chỗ anh đ&atilde; chinh phục hầu khắp c&aacute;c quốc gia v&agrave; s&acirc;n b&oacute;ng nổi tiếng tại ch&acirc;u &Acirc;u. Theo thống k&ecirc;, Leo đ&atilde; ghi b&agrave;n ở 14 quốc gia v&agrave; 21 s&acirc;n vận động kh&aacute;c nhau của lục địa gi&agrave; tại Champions League. Đ&atilde; c&oacute; tới 6 s&acirc;n b&oacute;ng ở ch&acirc;u &Acirc;u từng chứng kiến Messi ghi nhiều hơn 1 b&agrave;n gồm: Celtic Park v&agrave; Eden Stadium (3 b&agrave;n); Minsk Dinamo, Santiago Bernabeu, Luzhniki, San Siro (c&ugrave;ng 2 b&agrave;n). Từ Anh, Đức, Scotland, CH S&eacute;c hay Ukraina,&rdquo;kẻ chinh phục&rdquo; Messi đều đ&atilde; khiến đối thủ phải c&uacute;i rạp. Nạn nh&acirc;n mới nhất của Messi l&agrave; Man City, đội b&oacute;ng được coi l&agrave; mạnh nhất nước Anh hiện nay nhưng cuối c&ugrave;ng vẫn phải khuất phục với tỉ số 0-2, trong đ&oacute; c&oacute; b&agrave;n mở tỉ số của Leo tr&ecirc;n chấm 11m sau khi ch&iacute;nh anh kiếm được n&oacute;.</p>\r\n\r\n<p style="text-align:justify">Với b&agrave;n thắng v&agrave;o lưới Joe Hart, Messi c&ograve;n tiếp tục nới rộng th&ecirc;m kỉ lục ghi b&agrave;n nhiều nhất ở c&aacute;c trận đấu knock-out tại Champions League l&ecirc;n con số 30. Điều đ&oacute; cho thấy, Leo nguy hiểm ra sao ở c&aacute;c trận đấu loại trực tiếp. Chắc chắn, Barca sẽ kh&ocirc;ng thể tiến s&acirc;u tại Cup C1 li&ecirc;n tiếp như vậy nếu kh&ocirc;ng c&oacute; một cầu thủ xuất sắc như Messi. Barca vốn lu&ocirc;n l&agrave; một đối b&oacute;ng mạnh với lối chơi tiqui-taca thần th&aacute;nh, nhưng g&atilde; khổng lồ xứ Catalunya cần một &ldquo;thi&ecirc;n t&agrave;i&rdquo; như&nbsp;<u>Messi</u>&nbsp;để &ldquo;t&agrave;n s&aacute;t&rdquo; đối thủ v&agrave; hướng tới c&aacute;c danh hiệu.</p>\r\n', '1392910945-bong-da-messi.jpg', '../images/articles/2014-02-20/', 'Messi: Kẻ chinh phục vĩ đại', 'Messi: Kẻ chinh phục vĩ đại', 2, '2014-02-20 22:42:25', '2014-03-07 18:10:46', '0000-00-00 00:00:00', 17, 0, 0),
(3, 'Đến lúc Real tranh vương xưng bá', 'den-luc-real-tranh-vuong-xung-ba', 'Các cầu thủ Real đã vươn lên ngôi vị số 1 tại La Liga sau chiến thắng Elche.', '<p style="text-align:justify">Trước trận tiếp đ&oacute;n Elche tr&ecirc;n s&acirc;n Bernabeu diễn ra, HLV Ancelotti vẫn hy vọng việc kh&aacute;ng &aacute;n cho Ronaldo sẽ gặt h&aacute;i được th&agrave;nh c&ocirc;ng. Nhưng rồi, sự chờ đợi của vị thuyền trưởng người Italia đ&atilde; kh&ocirc;ng như mong đợi. C&aacute;c ng&ocirc;i sao của&nbsp;<strong>đội b&oacute;ng Ho&agrave;ng gia</strong>&nbsp;bước ra s&acirc;n m&agrave; kh&ocirc;ng c&oacute; sự phục vụ của tuyển thủ Bồ Đ&agrave;o Nha. Thậm ch&iacute;, ở tuyến giữa cũng như h&agrave;ng ph&ograve;ng ngự, HLV Ancelotti c&ograve;n kh&ocirc;ng c&oacute; được sự phục vụ của Modric v&agrave; Ramos.</p>\r\n\r\n<p style="text-align:justify">Thế nhưng, việc thiếu vắng 3 trụ cột c&oacute; vẻ kh&ocirc;ng ảnh hưởng tới sức mạnh của Kền kền trắng. Tr&ecirc;n h&agrave;ng tấn c&ocirc;ng Jese, Benzema, Di Maria, v&agrave; Bale thi đấu v&ocirc; c&ugrave;ng hiệu quả. Đ&aacute;ng ch&uacute; &yacute; phải kể tới cuộc chiến &acirc;m thầm giữa t&agrave;i năng trẻ Jese v&agrave; ng&ocirc;i sao đắt gi&aacute; nhất Thế giới, Bale. Trong suốt khoảng thời gian thi đấu của hiệp 1, t&agrave;i năng trưởng th&agrave;nh từ Calista xuất hiện ở hầu hết c&aacute;c điểm n&oacute;ng tr&ecirc;n s&acirc;n. Lối chơi của Jese c&ograve;n khiến h&agrave;ng ph&ograve;ng ngự Elche gặp nhiều kh&oacute; khăn.</p>\r\n\r\n<p style="text-align:center"><img alt="Đến lúc Real tranh vương xưng bá - 1" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-799560747.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Bale tiếp tục chứng tỏ gi&aacute; trị của m&igrave;nh</p>\r\n\r\n<p style="text-align:justify">Trong khi đ&oacute;, d&ugrave; ở 45 ph&uacute;t đầu ti&ecirc;n, Bale thi đấu kh&ocirc;ng thực sự hiệu quả, nhưng sang hiệp 2, ng&ocirc;i sao người xứ Wales đ&atilde; chứng tỏ được gi&aacute; trị của cầu thủ đắt gi&aacute; nhất h&agrave;nh tinh. Điển h&igrave;nh phải kể tới c&uacute; s&uacute;t xa th&agrave;nh b&agrave;n ở ph&uacute;t 71 n&acirc;ng tỷ số trận đấu l&ecirc;n 2-0, qua đ&oacute; đặt dấu chấm hết cho sự cố gắng của c&aacute;c cầu thủ kh&aacute;ch. Ngo&agrave;i ra, cũng phải kể tới sự đột biến như thường lệ đến từ Di Maria cũng như Benzema. B&ecirc;n h&agrave;nh lang c&aacute;nh tr&aacute;i, tuyển thủ Argentina trở th&agrave;nh mũi nhọn hoạt động v&ocirc; c&ugrave;ng hiệu quả với khả năng đi b&oacute;ng, chuyền b&oacute;ng v&agrave; dứt điểm của m&igrave;nh. C&ograve;n Benzema, d&ugrave; chưa thể t&igrave;m được b&agrave;n thắng để vượt qua th&agrave;nh t&iacute;ch ghi 104 b&agrave;n thắng cho Real của huyền thoại Ronaldo &ldquo;b&eacute;o&rdquo; người Brazil, nhưng ng&ocirc;i sao người Ph&aacute;p cũng kịp thời để lại dấu ấn với 1 đường kiến tạo.</p>\r\n\r\n<p style="text-align:justify">Đ&aacute;ng ch&uacute; &yacute; nhất ở trận đấu n&agrave;y phải kể tới sức mạnh nơi h&agrave;ng tiền vệ của&nbsp;<em>Kền kền trắng</em>. Bởi &aacute;n treo gi&ograve; của Modric đ&atilde; trao cơ hội cho Illarramendi thể hiện khả năng. V&agrave; ở trận đấu đ&ecirc;m qua, ngo&agrave;i c&uacute; s&uacute;t mở tỷ số trận đấu, t&agrave;i năng xứ B&ograve; t&oacute;t c&ograve;n c&oacute; m&agrave;n tr&igrave;nh diễn ấn tượng b&ecirc;n cạnh người đ&agrave;n anh Alonso. Trong khi đ&oacute;, d&ugrave; chỉ xuất hiện ở &iacute;t ph&uacute;t cuối trận nhưng một lần nữa Isco lại chứng tỏ anh ch&iacute;nh l&agrave; tương lai của đội b&oacute;ng Ho&agrave;ng gia. Trong vai tr&ograve; mới, cựu cầu thủ Malaga thi đấu giống như một tiền vệ trung t&acirc;m, tuy nhi&ecirc;n cầu thủ sinh năm 1992 vẫn thể hiện được tố chất c&oacute; thể g&acirc;y đột biến của m&igrave;nh với b&agrave;n ấn định tỷ số 3-0 cho đội chủ nh&agrave;.</p>\r\n\r\n<p style="text-align:justify">Chưa hết, từ đầu năm 2013, NHM t&uacute;c cầu lu&ocirc;n đ&aacute;nh gi&aacute; rất cao h&agrave;ng ph&ograve;ng ngự Real với sự ổn định đến từ bộ đội Ramos v&agrave; Pepe. Tuy nhi&ecirc;n, ở m&agrave;n tr&igrave;nh diễn trước Elche, tuyển thủ T&acirc;y Ban Nha đ&atilde; kh&ocirc;ng ra s&acirc;n để nhường chỗ cho t&agrave;i năng trẻ Rapha&euml;l Varane đ&aacute; cặp c&ugrave;ng Pepe. V&agrave; thực tế, cầu thủ 20 tuổi người Ph&aacute;p đ&atilde; đ&aacute;nh dấu sự trở lại đầy ấn tượng. Ngo&agrave;i khả năng chơi b&oacute;ng tương đối chắc chắn, Varane c&ograve;n tỏ ra kh&ocirc;n kh&eacute;o trong việc đọc t&igrave;nh huống cũng như hỗ trợ tấn c&ocirc;ng, g&oacute;p phần gi&uacute;p khung th&agrave;nh của thủ m&ocirc;n Diego Lopez c&oacute; th&ecirc;m một trận đấu kh&ocirc;ng thủng lưới.</p>\r\n\r\n<p style="text-align:center"><img alt="Đến lúc Real tranh vương xưng bá - 2" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-153839956.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Real c&oacute; cơ hội lớn để giữ vị tr&iacute; số 1 tại La Liga</p>\r\n\r\n<p style="text-align:justify"><strong>Bước ngoặt tới ng&ocirc;i Vương</strong></p>\r\n\r\n<p style="text-align:justify">C&aacute;ch đ&acirc;y khoảng 1 th&aacute;ng, sau chiến thắng 2-0 tiếp đ&oacute;n Granada tr&ecirc;n s&acirc;n Bernabeu, Kền kền trắng c&oacute; lần đầu ti&ecirc;n bước l&ecirc;n ng&ocirc;i vị số 1 từ khi m&ugrave;a giải 2011/12 kết th&uacute;c. Thậm ch&iacute;, sau đ&oacute; hơn nửa th&aacute;ng, cũng với chiến thắng 4-2 tr&ecirc;n s&acirc;n nh&agrave; Bernabeu tiếp đ&oacute;n Villarreal, thầy tr&ograve; HLV Ancelotti c&ograve;n l&agrave;m được điều tương tự. Tuy nhi&ecirc;n, cả 2 lần c&oacute; được ng&ocirc;i vị số 1 La Liga đ&oacute; đều chỉ l&agrave; tạm thời, khi m&agrave; Barca v&agrave; Atletico chưa thi đấu. C&ograve;n l&uacute;c n&agrave;y đ&acirc;y, sau chiến thắng 3-0 tiếp đ&oacute;n Elche, đội b&oacute;ng Ho&agrave;ng gia đ&atilde; c&oacute; lần thứ 3 l&ecirc;n đỉnh. Thậm ch&iacute;, đo&agrave;n qu&acirc;n của HLV Ancelotti ho&agrave;n to&agrave;n c&oacute; thể giữ được vị thế của m&igrave;nh ở khoảng thời gian sắp tới đ&acirc;y.</p>\r\n\r\n<p style="text-align:justify">Bởi cũng ở v&ograve;ng đấu 25 n&agrave;y, Barca của HLV Martino đ&atilde; bất ngờ để thua 1-3 tr&ecirc;n s&acirc;n của Real Sociedad. C&ograve;n ở trận đấu diễn ra đ&ecirc;m nay, Atletico, đội b&oacute;ng c&oacute; nguy cơ lấy đi ng&ocirc;i vị số 1 của&nbsp;<u>Real</u>sẽ c&oacute; trận đấu kh&ocirc;ng hề đơn giản tr&ecirc;n s&acirc;n của Osasuna, đội b&oacute;ng đang phải chiến đấu v&igrave; tấm v&eacute; trụ hạng.</p>\r\n\r\n<p style="text-align:justify">Đặc biệt, nhờ hiệu số b&agrave;n thắng thua cao hơn so với Atletico (+47 so với +43), r&otilde; r&agrave;ng cơ hội để Kền kền trắng bảo vệ ng&ocirc;i vị của m&igrave;nh ho&agrave;n to&agrave;n c&oacute; thể xảy ra. V&agrave; trong trường hợp xấu nhất, khi Atletico vượt qua Osasuna với tỷ số c&aacute;ch biệt 5 b&agrave;n, chắc chắn cơ hội để Real ch&iacute;nh thức c&oacute; được vị thế thống trị giải đấu vẫn chưa kh&eacute;p lại khi m&agrave; ở lượt trận sắp tới 2 đội b&oacute;ng th&agrave;nh Madrid sẽ bước v&agrave;o trận derby tr&ecirc;n s&acirc;n Vicente Calder&oacute;n. V&agrave; đ&acirc;y sẽ được coi l&agrave; bước ngoặt gi&uacute;p Real hướng tới chức v&ocirc; địch v&agrave;o cuối m&ugrave;a giải?</p>\r\n', '1393139858-bong-da-bale.jpg', '../images/articles/2014-02-23/', 'Đến lúc Real tranh vương xưng bá', 'Đến lúc Real tranh vương xưng bá', 2, '2014-02-23 14:17:39', '2014-03-08 10:52:58', '2015-03-01 00:00:00', 17, 1, 0),
(5, 'Chelsea - Everton: Phút bù giờ nghiệt ngã', 'chelsea-everton-phut-bu-gio-nghiet-nga', 'Chelsea mạnh hơn và được chơi trên sân nhà nhưng Everton đã chứng minh họ là đối thủ khó chịu như thế nào.', '<p style="text-align:justify"><strong>Chelsea&nbsp;</strong>với ưu thế chủ nh&agrave; đ&atilde; sớm dồn l&ecirc;n tấn c&ocirc;ng phủ đầu Everton. The Blues đ&atilde; tạo ra được một số cơ hội c&oacute; thể ghi b&agrave;n nhưng kh&ocirc;ng thể tận dụng. B&ecirc;n ph&iacute;a đội kh&aacute;ch, họ triển khai lối đ&aacute; sở trường ph&ograve;ng ngự phản c&ocirc;ng v&agrave; đ&atilde; g&acirc;y ra v&ocirc; số kh&oacute; khăn cho đội chủ nh&agrave;. Nếu x&eacute;t về số cơ hội c&oacute; được trong hiệp 1, Everton kh&ocirc;ng hề thua k&eacute;m Chelsea.</p>\r\n\r\n<p style="text-align:justify">Bước sang hiệp 2, thế trận tr&ecirc;n s&acirc;n vẫn kh&ocirc;ng c&oacute; g&igrave; thay đổi. Chelsea v&agrave; Everton đều tranh chấp quyết liệt, kh&ocirc;ng ngại va chạm. Chelsea tấn c&ocirc;ng v&agrave; Everton cũng kh&ocirc;ng ngại ngần đ&aacute;p trả. Nhưng trong một ng&agrave;y k&eacute;m duy&ecirc;n cộng với sự xuất sắc của hai thủ m&ocirc;n, b&agrave;n thắng l&agrave; điều kh&oacute; xuất hiện.</p>\r\n\r\n<p style="text-align:justify">Những tưởng trận đấu sẽ kh&eacute;p lại với tỷ số h&ograve;a th&igrave; v&agrave;o ph&uacute;t b&ugrave; giờ thứ 3 của hiệp 2, Lampard thực hiện pha đ&aacute; phạt kh&oacute; chịu loại bỏ h&agrave;ng thủ Everton. Terry ập v&agrave;o rất nhanh g&acirc;y &aacute;p lực khiến thủ th&agrave;nh Howard l&uacute;ng t&uacute;ng để b&oacute;ng v&agrave;o lưới. B&agrave;n thắng qu&yacute; như v&agrave;ng được t&iacute;nh cho Lampard v&agrave; n&oacute; đ&atilde; gi&uacute;p Chelsea c&oacute; được 3 điểm trọn vẹn.</p>\r\n\r\n<p style="text-align:center"><img alt="Chelsea - Everton: Phút bù giờ nghiệt ngã - 1" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-843567050.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Chelsea gi&agrave;nh chiến thắng nghẹt thở ngay tr&ecirc;n s&acirc;n nh&agrave;</p>\r\n', '1393140035-chelsea-everton-2.jpg', '../images/articles/2014-02-23/', 'Chelsea - Everton: Phút bù giờ nghiệt ngã', 'Chelsea - Everton: Phút bù giờ nghiệt ngã', 2, '2014-02-23 14:20:35', '2014-03-08 10:52:47', '2015-03-01 00:00:00', 17, 1, 0),
(6, 'MU: Sức bật từ những đồng bảng', 'mu-suc-bat-tu-nhung-dong-bang', 'MU đã chấm dứt chuỗi trận thất vọng bằng một chiến thắng có dấu ấn Rooney – người vừa được tăng lương lên con số kỷ lục 300.000 bảng/tuần.', '<p style="text-align:justify">Chỉ một ng&agrave;y sau khi k&yacute; hợp đồng gia hạn 5,5 năm v&agrave; nhận mức lương cao kỷ lục 300.000 bảng/tuần (hơn 10 tỷ đồng), Wayne Rooney đ&atilde; c&oacute; b&agrave;n thắng để tri &acirc;n ban l&atilde;nh đạo Quỷ đỏ. Đ&oacute; l&agrave; pha lập c&ocirc;ng tuyệt đẹp ở hiệp hai, khi Evra chuyền v&agrave;o v&agrave; &ldquo;số 10&rdquo; vung ch&acirc;n v&ocirc; l&ecirc; đẳng cấp tung lưới Palace. Th&ecirc;m một b&agrave;n thắng rất đẹp nữa của Rooney trong m&agrave;u &aacute;o MU v&agrave; đ&oacute; l&agrave; b&agrave;n thứ 10 của anh trong 20 trận đ&aacute; ch&iacute;nh tại&nbsp;<a href="http://localhost/giaingoaihang.com/backend" style="text-decoration: none; color: rgb(0, 0, 255);">Premier League</a>&nbsp;m&ugrave;a n&agrave;y.</p>\r\n\r\n<p style="text-align:justify">Rooney thực tế vẫn thi đấu kh&aacute; năng nổ kể từ khi trở lại sau chấn thương. Nhưng trong chuỗi 3 trận to&agrave;n h&ograve;a v&agrave; thua trước đ&oacute;, t&iacute;nh hiệu quả anh mang lại cho&nbsp;<strong>MU&nbsp;</strong>l&agrave; kh&ocirc;ng cao. Một phần v&igrave; bản th&acirc;n Rooney chưa ở trạng th&aacute;i sung m&atilde;n nhất, phần quan trọng hơn v&igrave; Moyes vẫn loay hoay trong việc bố tr&iacute; sơ đồ thi đấu với sự g&oacute;p mặt của t&acirc;n binh Mata. Ở trận n&agrave;y, khi Moyes thay đổi, t&igrave;nh h&igrave;nh đ&atilde; được cải thiện đ&aacute;ng kể.</p>\r\n\r\n<p><img alt="MU: Sức bật từ những đồng bảng - 1" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-48920627.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Rooney ghi b&agrave;n ấn tượng</p>\r\n\r\n<p style="text-align:justify">Moyes mạnh dạn sử dụng cậu học tr&ograve; cưng Fellaini ở vị tr&iacute; đ&aacute;nh chặn c&ugrave;ng Carrick bất chấp cựu cầu thủ Everton chỉ vừa mới b&igrave;nh phục chấn thương. Nhờ 2 tiền vệ trụ n&agrave;y, nh&agrave; cầm qu&acirc;n người Scotland tự tin bố tr&iacute; bộ ba tiền vệ c&ocirc;ng với Mata &ndash; Januzaj &ndash; Rooney hỗ trợ cho trung phong Van Persie. Trong đ&oacute;, Rooney sắm vai tr&ograve; của một &ldquo;số 10&rdquo; thực thụ v&agrave; anh đ&atilde; c&oacute; một m&agrave;n tr&igrave;nh diễn tốt b&ecirc;n cạnh c&aacute;c đồng đội. Kh&aacute; nhiều lần tiền đạo 28 tuổi đập nhả ăn &yacute; với Mata, Januzaj hay Fellaini ngay trước v&ograve;ng cấm đối phương để mở ra c&aacute;c cơ hội dứt điểm.</p>\r\n\r\n<p style="text-align:justify">Sẽ l&agrave; qu&aacute; lời nếu cho rằng mức lương kỷ lục đ&atilde; k&iacute;ch th&iacute;ch Rooney chơi một trận đấu xuất sắc. Nhưng kh&ocirc;ng thể phủ nhận gi&aacute; trị tinh thần sau bản hợp đồng &ldquo;bom bấn&rdquo; m&agrave; anh vừa k&yacute; với BLĐ MU. Rooney đ&atilde; được giải ph&oacute;ng ho&agrave;n to&agrave;n khỏi những &aacute;p lực về tương lai cũng như nhận thấy sự t&ocirc;n trọng m&agrave; Quỷ đỏ d&agrave;nh cho anh. Bởi thế, con số 300.000 bảng/tuần đang g&acirc;y ồn &agrave;o trong dư luận đ&atilde; trở th&agrave;nh động lực lớn để &ldquo;g&atilde; h&oacute;i&rdquo; nỗ lực thể hiện m&igrave;nh xứng đ&aacute;ng với mức lương &ldquo;khủng&rdquo; ấy.</p>\r\n\r\n<p style="text-align:justify"><strong>MU v&agrave; Moyes cũng cần tiền</strong></p>\r\n\r\n<p style="text-align:justify">Rooney v&agrave; van Persie đều ghi b&agrave;n v&agrave;o đ&ecirc;m qua, đ&oacute; l&agrave; t&iacute;n hiệu v&ocirc; c&ugrave;ng lạc quan cho David Moyes. Cả hai ti&ecirc;u tốn của MU số tiền chuyển nhượng v&agrave; tiền lương kh&ocirc;ng nhỏ nhưng đổi lại, họ đ&atilde; v&agrave; đang chứng minh đẳng cấp bằng những b&agrave;n thắng gi&uacute;p đội nh&agrave; vượt kh&oacute;. Trong khi đ&oacute;, d&ugrave; vừa trở lại nhưng Fellaini đ&atilde; c&oacute; m&agrave;n tr&igrave;nh diễn kh&ocirc;ng tồi. Tỷ lệ chuyền b&oacute;ng ch&iacute;nh x&aacute;c của anh l&ecirc;n đến 92% v&agrave; thu hồi b&oacute;ng nhiều hơn bất kỳ cầu thủ n&agrave;o tr&ecirc;n s&acirc;n. Fellaini cũng l&agrave; cầu thủ cắt b&oacute;ng v&agrave; thắng trong c&aacute;c pha kh&ocirc;ng chiến nhiều nhất b&ecirc;n ph&iacute;a&nbsp;<u>MU</u>.</p>\r\n\r\n<p style="text-align:center"><img alt="MU: Sức bật từ những đồng bảng - 2" class="news-image" src="http://localhost/giaingoaihang.com/backend/images/content/news-content-537109837.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Moyes c&ograve;n phải chi th&ecirc;m nhiều tiền</p>\r\n\r\n<p style="text-align:justify">M&ugrave;a H&egrave; vừa rồi, Fellaini cập bến Old Trafford với c&aacute;i gi&aacute; đắt đỏ 27,5 triệu bảng v&agrave; sau đ&oacute; g&acirc;y thất vọng ho&agrave;n to&agrave;n với những m&agrave;n tr&igrave;nh diễn mờ nhạt v&agrave; chấn thương d&agrave;i ng&agrave;y. Nhưng đ&acirc;y mới l&agrave; năm đầu ti&ecirc;n Fellaini ở MU. Anh r&otilde; r&agrave;ng cần th&ecirc;m thời gian v&agrave; trận đấu đ&ecirc;m qua chỉ l&agrave; một trong số những cơ hội để Fellaini tiến bộ hơn nữa. Trong tương lai, với t&agrave;i năng v&agrave; sự th&iacute;ch nghi của m&igrave;nh, tiền vệ người Bỉ ho&agrave;n to&agrave;n c&oacute; thể l&agrave; một trụ cột nơi trung tuyến MU.</p>\r\n\r\n<p style="text-align:justify">Trận thắng đ&ecirc;m qua l&agrave; trận thứ hai li&ecirc;n tiếp h&agrave;ng thủ MU kh&ocirc;ng bị thủng lưới. Đ&oacute; l&agrave; một t&iacute;n hiệu t&iacute;ch cực kh&aacute;c. Nhưng phải thẳng thắn thừa nhận hệ thống ph&ograve;ng ngự của họ kh&ocirc;ng hề ho&agrave;n hảo. Evra chơi cực hay khi được bầu l&agrave; cầu thủ xuất sắc nhất trận. Nhưng tuổi t&aacute;c, động lực v&agrave; lời mời ch&agrave;o từ những đội b&oacute;ng kh&aacute;c ho&agrave;n to&agrave;n c&oacute; thể khiến hậu vệ người Ph&aacute;p đi đến quyết định chia tay MU v&agrave;o cuối m&ugrave;a. Tương tự, Vidic đ&atilde; chọn&nbsp;<a href="http://localhost/giaingoaihang.com/backend" style="text-decoration: none; color: rgb(0, 0, 255);">Serie A</a>&nbsp;l&agrave;m bến đỗ mới. Ferdinand cũng sắp đến ng&agrave;y giải nghệ. Đ&oacute; l&agrave; 3 trụ cột trong thời kỳ đỉnh cao của MU những năm trước.</p>\r\n\r\n<p style="text-align:justify">Moyes chỉ c&oacute; Smalling l&agrave; hậu vệ trẻ nhất trong trận đ&aacute;nh với Palace nhưng d&ugrave; tiềm năng, cầu thủ n&agrave;y chưa bao giờ tạo được sự tin cậy kể cả khi đ&atilde; được trao nhiều cơ hội. H&agrave;ng c&ocirc;ng MU b&acirc;y giờ đ&atilde; tạm ổn với sự xuất hiện của Mata v&agrave; hợp đồng mới cho Rooney, nhưng David Moyes cần sớm nghĩ đến việc thay m&aacute;u h&agrave;ng thủ. Đ&atilde; đến l&uacute;c chia tay c&aacute;c c&ocirc;ng thần luống tuổi, b&aacute;n bớt những t&agrave;i năng trẻ m&atilde;i kh&ocirc;ng trưởng th&agrave;nh v&agrave; mua về những người thực sự chất lượng.</p>\r\n\r\n<p style="text-align:justify">Với đội h&igrave;nh hiện tại, nh&agrave; Glazers cần chi th&ecirc;m rất nhiều tiền nữa để Moyes ho&agrave;n thiện MU trong kỳ chuyển nhượng H&egrave; sắp tới. Sau đ&oacute;, họ c&oacute; quyền nghĩ về một sự trở lại ở m&ugrave;a giải năm sau.</p>\r\n', '1393140224-bong-da-rooney.jpg', '../images/articles/2014-02-23/', 'Sức bật từ những đồng bảng', 'Sức bật từ những đồng bảng', 2, '2014-02-23 14:22:47', '2014-03-08 10:52:33', '2015-03-01 00:00:00', 17, 1, 0),
(7, 'Barca: Đêm của những sai lầm', 'barca-dem-cua-nhung-sai-lam', 'Barca đã trải qua một trận đấu thực sự đáng quên trước Sociedad. Trong khi đối thủ tràn đầy năng lượng thì thầy trò Martino lộ rõ vẻ mệt mỏi. Trong bối cảnh ấy, những sai lầm có hệ thống ngay từ lúc lên đội hình đã khiến Barca nhận một thất bại không lời bào chữa.', '<p style="text-align:justify"><strong>Từ sai lầm của thầy&hellip;</strong><br />\r\n<br />\r\nNgay trong đội h&igrave;nh xuất ph&aacute;t của Barca đ&ecirc;m qua đ&atilde; c&oacute; những điều kh&ocirc;ng ổn. Thứ nhất, Tata Martino bố tr&iacute; c&ugrave;ng l&uacute;c cả Song v&agrave; Busquets ở khu vực giữa s&acirc;n trong khi hai cầu thủ n&agrave;y c&oacute; lối chơi tương đồng v&agrave; đều l&agrave; những tiền vệ thủ. Điều đ&oacute; khiến Barca mất đi một người c&oacute; khả năng kết nối c&aacute;c tuyến, ph&acirc;n phối b&oacute;ng đoạn ngắn v&agrave; chọc khe &ndash; thứ vũ kh&iacute; lợi hại nhất của tiki-taka. Song v&agrave; Busquets đều thuộc loại giỏi nhưng sở trường của họ l&agrave; thu hồi b&oacute;ng v&agrave; phần n&agrave;o đ&oacute; l&agrave; ph&aacute;t động từ xa. Kh&ocirc;ng thể đ&ograve;i hỏi họ chơi như Cesc v&agrave; Xavi &ndash; những tiền vệ s&aacute;ng tạo đ&atilde; ngồi dự bị đ&ecirc;m qua.<br />\r\n<br />\r\n&Ocirc;ng Martino chỉ tung Cesc v&agrave;o s&acirc;n khi Barca thủng lưới lần thứ 3. Nhưng cựu tiền vệ Arsenal cũng kh&ocirc;ng thể gi&uacute;p Barca đảo ngược thế trận khi Sociedad thể hiện quyết t&acirc;m rất cao v&agrave; chơi một trận qu&aacute; hay. Sai lầm thứ hai của Martino l&agrave; x&aacute;o trộn qu&aacute; nhiều ở h&agrave;ng thủ. Montoya v&agrave; Bartra l&agrave; những c&aacute;i t&ecirc;n c&ograve;n rất non nớt. Trong khi Adriano đương nhi&ecirc;n kh&ocirc;ng thể s&aacute;nh với Alba hay Alves. Người c&ograve;n lại &ndash; Pique &ndash; đ&atilde; c&oacute; một trận đấu thảm họa với v&ocirc; số sai lầm nghi&ecirc;m trọng. Đ&acirc;y kh&ocirc;ng c&ograve;n l&agrave; điều mới mẻ nữa. Pique vẫn thường xuy&ecirc;n chơi k&eacute;m mỗi khi Martino thay đổi người đ&aacute; cặp với anh.</p>\r\n\r\n<table align="center" border="0" cellpadding="1" cellspacing="1" style="color:rgb(0, 0, 0); font-family:open sans,arial,helvetica,sans-serif; font-size:14px; line-height:19.600000381469727px; text-align:justify; width:200px" summary="">\r\n	<tbody>\r\n		<tr>\r\n			<td><img src="http://localhost/giaingoaihang.com/backend/images/content/news-content-623627084.jpg" style="border:0px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sai lầm hệ thống khiến Barca thua trận</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Hậu quả của những t&iacute;nh to&aacute;n sai lầm về nh&acirc;n sự của Martino ch&iacute;nh l&agrave; một thế trận nhạt nhẽo m&agrave; h&agrave;ng c&ocirc;ng Barca tr&igrave;nh diễn. Đội kh&aacute;ch tấn c&ocirc;ng thiếu hiệu quả khi kh&ocirc;ng c&oacute; một người lu&acirc;n chuyển b&oacute;ng v&agrave; tạo đột biến c&ugrave;ng Iniesta. Bất chấp ph&iacute;a tr&ecirc;n Messi đ&atilde; hoạt động năng nổ (v&agrave; ghi b&agrave;n) nhưng tiki-taka đ&atilde; c&oacute; một ng&agrave;y v&ocirc; hại bởi mất đi những pha chuyền b&oacute;ng sắc lẹm thường thấy. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao Barca cầm b&oacute;ng tới 65% thời lượng nhưng vẫn s&uacute;t &iacute;t hơn Sociedad (12 so với 15).<br />\r\n<br />\r\n<strong>&hellip; đến sai lầm của tr&ograve;</strong><br />\r\n<br />\r\nMartino mắc sai lầm về t&iacute;nh to&aacute;n chiến thuật, trong khi c&aacute;c học tr&ograve; của &ocirc;ng tr&ecirc;n s&acirc;n cũng phạm v&ocirc; số lỗi sơ đẳng. Đầu ti&ecirc;n l&agrave; pha đ&aacute;nh đầu đốt lưới nh&agrave; của Song gi&uacute;p Sociedad mở tỷ số. Sau đ&oacute; l&agrave; h&agrave;ng loạt pha b&oacute;ng rất tồi của cựu cầu thủ Arsenal. Được giao nhiệm vụ đ&aacute;nh chặn nhưng Song lại thường xuy&ecirc;n &ldquo;mất h&uacute;t&rdquo; ở những điểm n&oacute;ng cần tranh chấp. Khả năng chọn vị tr&iacute; v&agrave; đọc t&igrave;nh huống k&eacute;m đến lạ thường của anh trận n&agrave;y đ&atilde; khiến c&aacute;c đồng đội ph&iacute;a dưới v&ocirc; c&ugrave;ng vất vả.<br />\r\n<br />\r\nCặp trung vệ Pique v&agrave; Bartra c&oacute; một ng&agrave;y thi đấu như mơ ngủ. D&ugrave; Sociedad chỉ cắm Vela ở ph&iacute;a tr&ecirc;n nhưng hai ng&ocirc;i sao của Barca chẳng c&oacute; c&aacute;ch n&agrave;o k&egrave;m được. Kh&ocirc;ng những thế, Pique c&ograve;n mắc một loạt sai lầm trong đỡ b&oacute;ng v&agrave; ph&aacute; b&oacute;ng để c&aacute;c ch&acirc;n s&uacute;t của đội chủ nh&agrave; c&oacute; cơ hội bắn ph&aacute; khung th&agrave;nh Valdes. Điển h&igrave;nh nhất l&agrave; hai pha b&oacute;ng ở ph&uacute;t 40 v&agrave; 81 khi cựu trung vệ MU khống chế b&oacute;ng cực kỳ nghiệp dư để đối thủ tho&aacute;t xuống g&acirc;y s&oacute;ng gi&oacute;. Nếu chỉn chu, Sociedad ho&agrave;n to&agrave;n c&oacute; thể ghi nhiều b&agrave;n hơn v&agrave;o lưới Barca.</p>\r\n\r\n<table align="center" border="0" cellpadding="1" cellspacing="1" style="color:rgb(0, 0, 0); font-family:open sans,arial,helvetica,sans-serif; font-size:14px; line-height:19.600000381469727px; text-align:justify; width:200px" summary="">\r\n	<tbody>\r\n		<tr>\r\n			<td><img src="http://localhost/giaingoaihang.com/backend/images/content/news-content-930175851.jpg" style="border:0px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ng&agrave;y thảm họa của h&agrave;ng thủ Barca</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Cũng phải n&oacute;i th&ecirc;m, khả năng tấn c&ocirc;ng k&eacute;m của Barca c&ograve;n tới từ việc Montoya v&agrave; Adriano hỗ trợ cho c&aacute;c đồng đội ph&iacute;a tr&ecirc;n kh&aacute; hạn chế. Hai cầu thủ n&agrave;y kh&ocirc;ng gi&uacute;p &iacute;ch được nhiều cho Neymar v&agrave; Pedro, khiến c&aacute;c tiền đạo c&aacute;nh của Barca ho&agrave;n to&agrave;n đơn độc. D&ugrave; nỗ lực di chuyển v&agrave; phối hợp nhưng Neymar đ&atilde; c&oacute; một trận đấu kh&ocirc;ng th&agrave;nh c&ocirc;ng khi tỏ ra thiếu hiệu quả v&agrave; bỏ lỡ một v&agrave;i t&igrave;nh huống dứt điểm thuận lợi, trong khi Pedro cũng chẳng c&oacute; những pha b&oacute;ng b&ugrave;ng nổ như kỳ vọng.<br />\r\n<br />\r\nNh&igrave;n chung, tr&ecirc;n s&acirc;n Anoeta h&ocirc;m qua, Barca đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; ch&iacute;nh họ. N&oacute;i c&aacute;ch kh&aacute;c, khi x&aacute;o trộn đội h&igrave;nh với những c&aacute;i t&ecirc;n dự bị v&agrave;o s&acirc;n th&igrave; G&atilde; khổng lồ xứ Catalunya lập tức trở n&ecirc;n tầm thường. Tiki-taka bị vỡ vụn ho&agrave;n to&agrave;n trong một ng&agrave;y m&agrave; hầu hết c&aacute;c vị tr&iacute; đều chơi dưới y&ecirc;u cầu trước một đối thủ tr&agrave;n đầy năng lượng v&agrave; quyết t&acirc;m.<br />\r\n<br />\r\nThua trận v&agrave; mất ng&ocirc;i đầu bảng, đ&acirc;y được xem l&agrave; lời cảnh b&aacute;o nghi&ecirc;m t&uacute;c cho thầy tr&ograve; Martino.</p>\r\n', '1393141711-barca.jpg', '../images/articles/2014-02-23/', 'Barca Đêm của những sai lầm', 'Barca Đêm của những sai lầm', 2, '2014-02-23 14:46:45', '2014-03-08 10:52:20', '2015-03-01 00:00:00', 17, 1, 0),
(8, 'Man City tới Nou Camp: Hái sao trên trời', 'man-city-toi-nou-camp-hai-sao-tren-troi', 'Quá khó để Man City lật ngược thế cờ trước Barca tại Nou Camp sau khi đã thua 0-2 ở lượt đi.', '<p style="text-align:justify"><strong>C&aacute;ch biệt về đẳng cấp</strong></p>\r\n\r\n<p style="text-align:justify">N&uacute;i tiền của c&aacute;c &ocirc;ng chủ Arab đ&atilde; biến Man xanh th&agrave;nh một thế lực tại giải Ngoại hạng Anh, nhưng để đội chủ s&acirc;n Etihad thực sự trở th&agrave;nh một &ocirc;ng lớn tại ch&acirc;u &Acirc;u c&oacute; lẽ cần th&ecirc;m thời gian. Sau 2 m&ugrave;a li&ecirc;n tiếp bị loại ngay sau v&ograve;ng bảng&nbsp;<a href="http://localhost/Bongda/giaingoaihang/backend" style="text-decoration: none; color: rgb(0, 0, 255);">Champions League</a>,&nbsp;<strong>Man City đ&atilde; c&oacute; sự tiến bộ bằng c&aacute;ch lọt v&agrave;o v&ograve;ng knock-out m&ugrave;a giải năm nay, nhưng rủi thay họ đ&atilde; ra ng&otilde; gặp ngay &ldquo;&ocirc;ng lớn&rdquo; Barca</strong>, đội b&oacute;ng đ&atilde; 6 m&ugrave;a li&ecirc;n tiếp gi&agrave;nh quyền v&agrave;o b&aacute;n kết.</p>\r\n\r\n<p style="text-align:justify">Kết quả l&agrave;, ngay tr&ecirc;n s&acirc;n nh&agrave; Etihad d&ugrave; đ&atilde; chủ động chơi ph&ograve;ng ngự nhưng thầy tr&ograve; HLV Pellegrini đ&atilde; để thua 0-2 ở lượt đi v&ograve;ng 1/8. C&oacute; thể, Man City c&oacute; l&yacute; do để tr&aacute;ch trọng t&agrave;i v&igrave; quả penalty mở tỉ số của Messi l&agrave; chưa thực sự ch&iacute;nh x&aacute;c (Demichelis phạm lỗi ngo&agrave;i v&ograve;ng cấm), nhưng bất cứ ai cũng phải c&ocirc;ng nhận rằng, đ&oacute; l&agrave; trận đấu tr&ecirc;n ch&acirc;n ho&agrave;n to&agrave;n của g&atilde; khổng lồ xứ Catalunya.</p>\r\n\r\n<p style="text-align:center"><img alt="Man City tới Nou Camp: Hái sao trên trời - 1" class="news-image" src="http://localhost/Bongda/giaingoaihang/backend/images/content/news-content-786224578.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Man City thua xa Barca về mặt đẳng cấp</p>\r\n\r\n<p style="text-align:justify">Man City thường xuy&ecirc;n &aacute;p đảo c&aacute;c CLB &nbsp;tại NHA, nhưng gặp Barca, Pellegrini đ&atilde; rất t&ocirc;n trọng đối thủ n&ecirc;n đ&atilde; bố tr&iacute; đội h&igrave;nh thấp để chờ thời cơ. Đ&oacute; cũng l&agrave; điều dễ giải th&iacute;ch bởi chiến lược gia người Chile qu&aacute; hiểu sức mạnh của Barca với 18/22 thất bại trước g&atilde; khổng lồ xứ Catalunya hồi c&ograve;n l&agrave;m việc tại T&acirc;y Ban Nha (dẫn dắt Villarreal, Real, Malaga). Nhưng chiến thuật đ&oacute; đ&atilde; thất bại thảm hại sau những pha h&atilde;m th&agrave;nh li&ecirc;n tiếp của Blaugrana. N&oacute;i c&aacute;ch kh&aacute;c, ch&iacute;nh t&acirc;m l&yacute; sợ thua đ&atilde; ảnh hưởng đến khả năng của c&aacute;c ng&ocirc;i sao đội chủ s&acirc;n Etihad. Họ đ&atilde; lấy sở đoản của m&igrave;nh (Man City kh&ocirc;ng phải l&agrave; đội b&oacute;ng chơi ph&ograve;ng ngự tốt) để đấu với sở trường của đối thủ v&agrave; kết quả l&agrave; một trận thua ngay tr&ecirc;n s&acirc;n nh&agrave; khiến cơ hội đi tiếp gần như kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p style="text-align:justify">Tất cả những điều đ&oacute; chứng tỏ, Man City chưa thể so b&igrave; với Barca về đẳng cấp. Từ tướng đến qu&acirc;n trước khi l&acirc;m trận đ&atilde; tỏ ra sợ h&atilde;i đối thủ, v&igrave; thế thất bại l&agrave; điều kh&oacute; tr&aacute;nh.</p>\r\n\r\n<p style="text-align:justify"><strong>Lời nguyền kh&oacute; giải</strong></p>\r\n\r\n<p style="text-align:justify">Đ&atilde; thua k&eacute;m về đẳng cấp, Man City c&ograve;n phải đối mặt với lời nguyền chưa đội b&oacute;ng n&agrave;o giải được tại v&ograve;ng knock-out Champions League. Theo thống k&ecirc;, trong lịch sử chưa một đội b&oacute;ng n&agrave;o c&oacute; thể lật ngược được thế cờ ở v&ograve;ng đấu loại trực tiếp sau khi đ&atilde; thua 0-2 ngay tr&ecirc;n s&acirc;n nh&agrave; ở lượt đi.</p>\r\n\r\n<p style="text-align:justify">Man City c&oacute; thể đang hưng phấn sau khi gi&agrave;nh League Cup (đ&aacute;nh bại Sunderland 3-1), hay lấy thất bại 0-3 của Barca ngay tại Nou Camp trước Bayern m&ugrave;a trước l&agrave;m niềm tin về một lội ngược d&ograve;ng kh&ocirc;ng tưởng. Ai cũng c&oacute; quyền mơ, nhưng thực tế l&agrave; Barca đ&atilde; dẫn 2-0 để nắm qu&aacute; nhiều lợi thế. Muốn đi tiếp, Man City phải ghi từ 3 b&agrave;n trở l&ecirc;n (hoặc &iacute;t nhất thắng 2-0 trong 90 ph&uacute;t thi đấu ch&iacute;nh thức để chờ hiệp phụ hoặc loạt đ&aacute; lu&acirc;n lưu) n&ecirc;n sẽ phải dồn l&ecirc;n để chơi đ&ocirc;i c&ocirc;ng, nhưng đ&oacute; l&agrave; canh bạc thầy tr&ograve; HLV Pellegrini thua chắc bởi lối chơi tiqui-taca của Barca kh&ocirc;ng cho ph&eacute;p đối thủ cầm được nhiều b&oacute;ng (lượt đi Barca cầm b&oacute;ng tới 68%), đồng thời sẵn s&agrave;ng s&uacute;t tung lưới đối phương một c&aacute;ch dễ d&agrave;ng bằng những pha l&ecirc;n b&oacute;ng nhanh v&agrave; đạt độ ch&iacute;nh x&aacute;c cao nếu như đối thủ mải m&ecirc; tấn c&ocirc;ng.</p>\r\n\r\n<p style="text-align:center"><img alt="Man City tới Nou Camp: Hái sao trên trời - 2" class="news-image" src="http://localhost/Bongda/giaingoaihang/backend/images/content/news-content-403320908.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Thiếu HLV Pellegrini tr&ecirc;n băng ghế chỉ đạo v&igrave; &aacute;n phạt, cơ hội cho Man City c&agrave;ng nhỏ lại</p>\r\n\r\n<p style="text-align:justify">C&aacute;nh cửa để Man City đi tiếp r&otilde; r&agrave;ng l&agrave; qu&aacute; hẹp, thậm ch&iacute; kh&oacute; như &ldquo;h&aacute;i sao tr&ecirc;n trời&rdquo;. Nhưng điều quan l&agrave; c&aacute;c học tr&ograve; của Pellegrini cần phải thể hiện ra sao trước khi rời đấu trường danh gi&aacute;&nbsp; nhất ch&acirc;u &Acirc;u. Nửa xanh th&agrave;nh Manchester phải c&oacute; một trận đấu quả cảm trước đối thủ được đ&aacute;nh gi&aacute; mạnh hơn để chứng minh sự trưởng th&agrave;nh.&nbsp;<u>Thua Barca chắc chắn kh&ocirc;ng c&oacute; g&igrave; phải xấu hổ, quan trọng l&agrave; Man City</u>&nbsp;thể hiện ra sao để chứng minh được những phẩm chất, c&aacute; t&iacute;nh của ri&ecirc;ng m&igrave;nh. H&atilde;y coi được đọ sức với Barca giống như một trải nghiệm qu&yacute; b&aacute;u trong h&agrave;nh tr&igrave;nh trở th&agrave;nh một thế lực thực sự tại lục địa gi&agrave;&hellip;</p>\r\n', '1394185537-bong-da-man-city-barca.jpg', '../images/articles/2014-03-07/', '', '', 2, '2014-03-07 16:45:37', '2014-03-08 10:52:07', '0000-00-00 00:00:00', 17, 0, 0);
INSERT INTO `articles` (`id`, `title`, `url`, `short_description`, `description`, `image`, `path`, `seo_title`, `seo_description`, `active`, `create_date`, `update_date`, `endhot_date`, `user_id`, `hot`, `rate`) VALUES
(9, 'Fan Việt thăng trầm theo đôi chân U19 VN', 'fan-viet-thang-tram-theo-doi-chan-u19-vn', 'NHM U19 Việt Nam đã trải qua những cung bậc cảm xúc khác nhau sau 2 trận đấu với U19 Nhật Bản và U19 Arsenal. Chúng ta đã từng thất vọng, bi quan sau thất bại tan nát trước người Nhật. Nhưng rồi rất nhanh chóng, U19 Việt Nam lại gieo vào lòng CĐV những hy vọng và chờ đợi khi đánh bại U19 Arsenal.', '<p style="text-align:justify">Chỉ trong một thời gian rất ngắn, c&aacute;c kh&aacute;n giả y&ecirc;u mến đội&nbsp;<strong>U19 Việt Nam</strong>&nbsp;đ&atilde; trải qua những cung bậc cảm x&uacute;c kh&aacute;c nhau sau những kết quả đối lập m&agrave; thầy tr&ograve; HLV Graechen c&oacute; được trước những đội b&oacute;ng h&ugrave;ng mạnh tầm ch&acirc;u lục v&agrave; thế giới.</p>\r\n\r\n<p style="text-align:justify">Thảm bại trước U19 Nhật Bản được xem l&agrave; một &quot;c&uacute; sốc kinh ho&agrave;ng&quot; giữa l&uacute;c&nbsp;<a href="http://localhost/Bongda/giaingoaihang/backend" style="text-decoration: none; color: rgb(0, 0, 255);">U19 Việt Nam</a>&nbsp;đang thăng hoa v&agrave; trước đ&oacute; vừa chơi một trận rất hay trước U19 Roma. Ch&iacute;nh thất bại 7 b&agrave;n kh&ocirc;ng gỡ ấy đ&atilde; khiến ch&uacute;ng ta cảm thấy thất vọng tột độ. Kh&ocirc;ng ai c&oacute; thể nghĩ một đội b&oacute;ng vừa chơi thăng hoa lại suy sụp nhanh đến thế.</p>\r\n\r\n<p style="text-align:justify">Khi ấy, d&ugrave; vẫn biết thất bại l&agrave; một phần của b&oacute;ng đ&aacute; nhưng c&aacute;c CĐV Việt Nam vẫn cảm thấy rất buồn ch&aacute;n v&agrave; xen lẫn sự nghi ngờ. &ldquo;Ch&uacute;ng ta đ&atilde; quá t&acirc;ng b&ocirc;́c c&aacute;c em, đ&ecirc;̉ l&acirc;̀m tưởng v&ecirc;̀ đẳng c&acirc;́p. Đ&acirc;y là thất bại c&acirc;̀n thi&ecirc;́t đ&ecirc;̉ đưa bóng đá Vi&ecirc;̣t trở lại mặt đ&acirc;́t và c&ocirc;́ gắng ti&ecirc;́n b&ocirc;̣ hơn v&ecirc;̀ mọi mặt. Đừng nhìn xu&ocirc;́ng xem mình hơn được ai mà hãy nhìn l&ecirc;n xem mình đã bằng ai chưa&rdquo;, độc giả Ho&agrave;ng Anh ở địa chỉ anhhoang7888@... nhận x&eacute;t.</p>\r\n\r\n<p style="text-align:center"><img alt="Fan Việt thăng trầm theo đôi chân U19 VN - 1" class="news-image" src="http://localhost/Bongda/giaingoaihang/backend/images/content/news-content-193665356.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Kh&aacute;n giả từng thất vọng với U19 Việt Nam sau thất bại trước người Nhật</p>\r\n\r\n<p style="text-align:justify">Một lời chỉ tr&iacute;ch kh&aacute;c nặng nề hơn: &ldquo;Chơi hay m&agrave; thua &iacute;t th&ocirc;i th&igrave; c&ograve;n chấp nhận được, chứ thua 0-7 kiểu n&agrave;y th&igrave; qu&aacute; thất vọng. U19 phải cố gắng nhiều ở kh&acirc;u ph&ograve;ng thủ, thể lực, chiến thuật. Hiệp 2 trận đấu với Nhật hầu như kh&ocirc;ng c&oacute; cầu thủ thay người. Mang danh l&agrave; U19 Việt Nam nhưng ch&uacute;ng ta dựa v&agrave;o Học viện HAGL Arsenal qu&aacute; nhiều. N&ecirc;n nếu một vị tr&iacute; ch&iacute;nh thức xuống phong độ l&agrave; đội sẽ thua&rdquo;, &yacute; kiến từ địa chỉ mot_thoi_dinh_cao1122@...</p>\r\n\r\n<p style="text-align:justify">Những c&aacute; nh&acirc;n nổi bật nhất của&nbsp;<em>U19 Việt Nam</em>&nbsp;cũng đ&atilde; phải hứng chịu b&uacute;a r&igrave;u dư luận sau thảm bại trước người Nhật. C&ocirc;ng Phượng, d&ugrave; được xem l&agrave; cầu thủ tốt nhất m&agrave; U19 đang c&oacute;, cũng kh&ocirc;ng tr&aacute;nh được những lời ch&ecirc; tr&aacute;ch. &ldquo;C&ocirc;ng Phượng chỉ biết cầm b&oacute;ng, kh&ocirc;ng biết dứt điểm v&agrave; phối hợp với đồng đội. B&oacute;ng đ&aacute; l&agrave; m&ocirc;n thể thao tập thể, em chơi như thế sẽ khiến đội gặp kh&oacute; khăn trước những đối thủ mạnh&rdquo;, CĐV Nguyễn Nha từ h&ograve;m thư nguyennha_louis90@... b&igrave;nh luận.</p>\r\n', '1394186640-1394176408-thumbnail.jpg', '../images/articles/2014-03-07/', '', '', 2, '2014-03-07 17:03:34', '2014-03-07 18:09:01', '0000-00-00 00:00:00', 17, 0, 0),
(10, 'Fan Việt thăng trầm theo đôi chân U19 VN', 'fan-viet-thang-tram-theo-doi-chan-u19-vn', 'NHM U19 Việt Nam đã trải qua những cung bậc cảm xúc khác nhau sau 2 trận đấu với U19 Nhật Bản và U19 Arsenal. Chúng ta đã từng thất vọng, bi quan sau thất bại tan nát trước người Nhật. Nhưng rồi rất nhanh chóng, U19 Việt Nam lại gieo vào lòng CĐV những hy vọng và chờ đợi khi đánh bại U19 Arsenal.', '<p style="text-align:justify">Chỉ trong một thời gian rất ngắn, c&aacute;c kh&aacute;n giả y&ecirc;u mến đội&nbsp;<strong>U19 Việt Nam</strong>&nbsp;đ&atilde; trải qua những cung bậc cảm x&uacute;c kh&aacute;c nhau sau những kết quả đối lập m&agrave; thầy tr&ograve; HLV Graechen c&oacute; được trước những đội b&oacute;ng h&ugrave;ng mạnh tầm ch&acirc;u lục v&agrave; thế giới.</p>\r\n\r\n<p style="text-align:justify">Thảm bại trước U19 Nhật Bản được xem l&agrave; một &quot;c&uacute; sốc kinh ho&agrave;ng&quot; giữa l&uacute;c&nbsp;<a href="http://localhost/Bongda/giaingoaihang/backend" style="text-decoration: none; color: rgb(0, 0, 255);">U19 Việt Nam</a>&nbsp;đang thăng hoa v&agrave; trước đ&oacute; vừa chơi một trận rất hay trước U19 Roma. Ch&iacute;nh thất bại 7 b&agrave;n kh&ocirc;ng gỡ ấy đ&atilde; khiến ch&uacute;ng ta cảm thấy thất vọng tột độ. Kh&ocirc;ng ai c&oacute; thể nghĩ một đội b&oacute;ng vừa chơi thăng hoa lại suy sụp nhanh đến thế.</p>\r\n\r\n<p style="text-align:justify">Khi ấy, d&ugrave; vẫn biết thất bại l&agrave; một phần của b&oacute;ng đ&aacute; nhưng c&aacute;c CĐV Việt Nam vẫn cảm thấy rất buồn ch&aacute;n v&agrave; xen lẫn sự nghi ngờ. &ldquo;Ch&uacute;ng ta đ&atilde; quá t&acirc;ng b&ocirc;́c c&aacute;c em, đ&ecirc;̉ l&acirc;̀m tưởng v&ecirc;̀ đẳng c&acirc;́p. Đ&acirc;y là thất bại c&acirc;̀n thi&ecirc;́t đ&ecirc;̉ đưa bóng đá Vi&ecirc;̣t trở lại mặt đ&acirc;́t và c&ocirc;́ gắng ti&ecirc;́n b&ocirc;̣ hơn v&ecirc;̀ mọi mặt. Đừng nhìn xu&ocirc;́ng xem mình hơn được ai mà hãy nhìn l&ecirc;n xem mình đã bằng ai chưa&rdquo;, độc giả Ho&agrave;ng Anh ở địa chỉ anhhoang7888@... nhận x&eacute;t.</p>\r\n\r\n<p style="text-align:center"><img alt="Fan Việt thăng trầm theo đôi chân U19 VN - 1" class="news-image" src="http://localhost/Bongda/giaingoaihang/backend/images/content/news-content-274750480.jpg" style="border:0px" /></p>\r\n\r\n<p style="text-align:center">Kh&aacute;n giả từng thất vọng với U19 Việt Nam sau thất bại trước người Nhật</p>\r\n\r\n<p style="text-align:justify">Một lời chỉ tr&iacute;ch kh&aacute;c nặng nề hơn: &ldquo;Chơi hay m&agrave; thua &iacute;t th&ocirc;i th&igrave; c&ograve;n chấp nhận được, chứ thua 0-7 kiểu n&agrave;y th&igrave; qu&aacute; thất vọng. U19 phải cố gắng nhiều ở kh&acirc;u ph&ograve;ng thủ, thể lực, chiến thuật. Hiệp 2 trận đấu với Nhật hầu như kh&ocirc;ng c&oacute; cầu thủ thay người. Mang danh l&agrave; U19 Việt Nam nhưng ch&uacute;ng ta dựa v&agrave;o Học viện HAGL Arsenal qu&aacute; nhiều. N&ecirc;n nếu một vị tr&iacute; ch&iacute;nh thức xuống phong độ l&agrave; đội sẽ thua&rdquo;, &yacute; kiến từ địa chỉ mot_thoi_dinh_cao1122@...</p>\r\n\r\n<p style="text-align:justify">Những c&aacute; nh&acirc;n nổi bật nhất của&nbsp;<em>U19 Việt Nam</em>&nbsp;cũng đ&atilde; phải hứng chịu b&uacute;a r&igrave;u dư luận sau thảm bại trước người Nhật. C&ocirc;ng Phượng, d&ugrave; được xem l&agrave; cầu thủ tốt nhất m&agrave; U19 đang c&oacute;, cũng kh&ocirc;ng tr&aacute;nh được những lời ch&ecirc; tr&aacute;ch. &ldquo;C&ocirc;ng Phượng chỉ biết cầm b&oacute;ng, kh&ocirc;ng biết dứt điểm v&agrave; phối hợp với đồng đội. B&oacute;ng đ&aacute; l&agrave; m&ocirc;n thể thao tập thể, em chơi như thế sẽ khiến đội gặp kh&oacute; khăn trước những đối thủ mạnh&rdquo;, CĐV Nguyễn Nha từ h&ograve;m thư nguyennha_louis90@... b&igrave;nh luận.</p>\r\n', '1394187763-1394176408-thumbnail.jpg', '../images/articles/2014-03-07/', '', '', 2, '2014-03-07 17:22:43', '2014-03-07 18:08:45', '0000-00-00 00:00:00', 17, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `article_image`
--

CREATE TABLE IF NOT EXISTS `article_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `path` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `article_image`
--

INSERT INTO `article_image` (`id`, `article_id`, `image`, `alt`, `path`) VALUES
(5, 5, 'gary-pallister-den-viet-nam-01.jpg', 'gary-pallister-den-viet-nam-01.', '../images/articles/2014-03-07/slide_640_350/');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `order_possition` int(11) NOT NULL,
  `type` char(2) NOT NULL,
  `seo_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `url`, `description`, `create_date`, `user_id`, `active`, `order_possition`, `type`, `seo_title`, `seo_description`) VALUES
(6, 0, 'Tin chuyển nhượng', 'tin-chuyen-nhuong', 'Tin chuyển nhượng', '2014-01-14 23:21:59', 17, 0, 1, 'A', 'Tin chuyển nhượng', 'Tin chuyển nhượng'),
(7, 0, 'Ngoại hạng Anh', 'ngoai-hang-anh', 'Ngoại hạng Anh', '2014-01-14 23:23:17', 17, 0, 2, 'A', 'Ngoại hạng Anh', 'Ngoại hạng Anh'),
(8, 0, 'Champions League', 'champions-league', 'Champions League', '2014-01-14 23:24:22', 17, 0, 3, 'A', 'Chelsea Champions League', 'Tin tuc chelsea Champions League'),
(9, 8, 'Lịch thi đấu', 'lich-thi-dau', 'Lịch thi đấu', '2014-01-14 23:34:16', 17, 0, 1, 'A', 'lich thi dau champions league cua chelsea fc', 'tong hop lich thi dau champions league cua chelsea fc'),
(10, 8, 'Bảng xếp hạng', 'bang-xep-hang', 'Bảng xếp hạng', '2014-01-14 23:35:05', 17, 0, 2, 'A', 'Bảng xep hang champions league, cup C1 cua chelsea', 'Bảng xep hang champions league, cup C1 cua chelsea'),
(11, 6, 'Quốc tế', 'quoc-te', 'Quốc tế', '2014-02-26 10:25:58', 17, 0, 1, 'A', 'Quốc tế', 'Quốc tế');

-- --------------------------------------------------------

--
-- Table structure for table `category_relation`
--

CREATE TABLE IF NOT EXISTS `category_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `table_name` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `category_relation`
--

INSERT INTO `category_relation` (`id`, `category_id`, `table_id`, `table_name`) VALUES
(11, 3, 11, 'A'),
(12, 4, 11, 'A'),
(13, 3, 18, 'A'),
(14, 4, 18, 'A'),
(15, 3, 13, 'A'),
(16, 4, 13, 'A'),
(17, 3, 12, 'A'),
(21, 3, 17, 'A'),
(30, 11, 10, 'A'),
(31, 6, 10, 'A'),
(32, 6, 9, 'A'),
(39, 9, 2, 'A'),
(40, 8, 2, 'A'),
(41, 6, 8, 'A'),
(42, 7, 8, 'A'),
(43, 8, 8, 'A'),
(44, 6, 7, 'A'),
(45, 7, 7, 'A'),
(46, 8, 7, 'A'),
(47, 6, 6, 'A'),
(48, 7, 6, 'A'),
(49, 6, 5, 'A'),
(50, 7, 5, 'A'),
(51, 6, 3, 'A'),
(52, 8, 3, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_content` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `end_date` datetime NOT NULL,
  `begin_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `url`, `content`, `sub_title`, `sub_content`, `location_id`, `status`, `end_date`, `begin_date`) VALUES
(1, 'Xem trận siêu kinh kiển diễn ra vào tối chu Nhật 16-3', '', 'Xem trận siêu kinh kiển diễn ra vào tối chu Nhật 16-3', 'aaaaaaaaa', 'C:\\xampp\\htdocs\\giaingoaihang\\protected/..//images/temp_image/139469556053215d88ef044.jpg', 9, 0, '2014-03-17 09:27:00', '2014-03-11 09:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_image`
--

CREATE TABLE IF NOT EXISTS `event_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(300) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `style` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `longitude` float(21,18) NOT NULL,
  `latitude` float(21,18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `title`, `url`, `content`, `longitude`, `latitude`) VALUES
(5, 'aaaaaaaaaaaa', '', '', 21.004722595214844000, 105.822059631347660000),
(6, 'Ngã tư sở', '', '', 105.785026550292970000, 21.036508560180664000),
(7, 'Ngã tư sở', 'nga-tu-so', '', 105.817199707031250000, 21.005170822143555000),
(8, 'Ngã tư sở', 'nga-tu-so', '', 105.822059631347660000, 21.004722595214844000),
(9, 'n', 'n', '', 105.786079406738280000, 21.036647796630860000);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `order_possition` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `status`, `order_possition`) VALUES
(2, 'Dự đoán', '#', 1, 2),
(3, 'Sự kiện', 'http://localhost/giaingoaihang/index.php?r=Event/default/create', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages_image`
--

CREATE TABLE IF NOT EXISTS `pages_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages_videos`
--

CREATE TABLE IF NOT EXISTS `pages_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `youtube_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_tile` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `article_id`, `rate`) VALUES
(2, 0, 19, 0.869793),
(3, 0, 19, 1.93229),
(4, 0, 19, 2.86979),
(5, 0, 19, 3.99479),
(6, 0, 19, 0.932293),
(7, 0, 19, 4.86979);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(300) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `image`, `alt`, `category_id`) VALUES
(1, '000_DV1172255.jpg', 'chelsea fc ', 1),
(2, '_018.jpg', 'chelsea fc', 1),
(3, '_012.jpg', '_012.', 0),
(4, '_011.jpg', '_011.', 0),
(5, '000_DV1172265.jpg', '000_DV1172265.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` int(11) DEFAULT '1',
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `frequency`, `url`, `description`, `title`) VALUES
(55, 'Rape Asian', 1, 'rape-asian', 'Rape asian ', 'Rape asian'),
(56, 'test', 1, 'test', '', ''),
(57, 'abc', 1, 'abc', '', ''),
(58, 'xyz', 1, 'xyz', '', ''),
(59, 'gsdags', 1, 'gsdags', '', ''),
(60, 'chelsea', 1, 'chelsea', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag_connect`
--

CREATE TABLE IF NOT EXISTS `tag_connect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `table_name` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `tag_connect`
--

INSERT INTO `tag_connect` (`id`, `tag_id`, `table_id`, `table_name`) VALUES
(204, 56, 11, 'A'),
(205, 55, 11, 'A'),
(206, 57, 19, 'A'),
(207, 55, 19, 'A'),
(208, 59, 19, 'A'),
(209, 56, 19, 'A'),
(210, 56, 18, 'A'),
(211, 55, 18, 'A'),
(212, 59, 13, 'A'),
(213, 57, 12, 'A'),
(214, 56, 12, 'A'),
(215, 55, 12, 'A'),
(216, 58, 12, 'A'),
(220, 55, 17, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(12) NOT NULL DEFAULT 'Male',
  `address` varchar(200) NOT NULL,
  `birth_day` date NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `roles` varchar(50) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastAccessTime` datetime DEFAULT NULL,
  `lastIPAccess` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `isBlock` int(1) DEFAULT '0',
  `createBy` int(11) DEFAULT NULL,
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `firstName`, `lastName`, `displayName`, `gender`, `address`, `birth_day`, `phone`, `score`, `roles`, `create_date`, `lastAccessTime`, `lastIPAccess`, `isBlock`, `createBy`, `avatar`) VALUES
(1, 'trieunhu', 'trieunhu@a.co', '$2a$13$YdUogOxxnz9rObu3qTo88uEkTJ4gllz0mPaOjrQ/3qTMBVtVVZoTG', NULL, NULL, 'Nhữ Tuấn Anh', 'Male', '', '1998-06-07', NULL, 0, 'member', '2014-04-11 11:17:09', '2014-04-11 18:17:09', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_image`
--

CREATE TABLE IF NOT EXISTS `user_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(300) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `style` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_nickname`
--

CREATE TABLE IF NOT EXISTS `user_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(300) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
