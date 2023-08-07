-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2023 at 02:35 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_news_class`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` date DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `category_id`, `name`, `content`, `status`, `thumb`, `created`, `created_by`, `modified`, `modified_by`, `publish_at`, `type`) VALUES
(4, 1, 'Liverpool chỉ được nâng Cup phiên bản nếu vô địch hôm nay', '<p>Đội b&oacute;ng th&agrave;nh phố cảng sẽ kh&ocirc;ng n&acirc;ng Cup nguy&ecirc;n bản nếu vượt mặt Man City ở v&ograve;ng cuối Ngoại hạng Anh.</p>\r\n\r\n<p>Liverpool k&eacute;m Man City một điểm trước khi tiếp Wolverhampton tr&ecirc;n s&acirc;n nh&agrave; Anfield v&agrave;o ng&agrave;y Chủ Nhật. Ở trận đấu c&ugrave;ng giờ, Man City sẽ l&agrave;m kh&aacute;ch tới s&acirc;n Brighton v&agrave; biết một chiến thắng sẽ gi&uacute;p họ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. Kể từ khi c&aacute;c trận v&ograve;ng cuối Ngoại hạng Anh sẽ chơi đồng loạt c&ugrave;ng l&uacute;c, ban tổ chức phải đặt một chiếc cup phi&ecirc;n bản giống thật tại Anfield ph&ograve;ng trường hợp Liverpool v&ocirc; địch. Chiếc cup giả n&agrave;y thường được d&ugrave;ng trong c&aacute;c sự kiện quảng b&aacute; của Ngoại hạng Anh.&nbsp;</p>', 'active', 'L3Yuzln8II.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-29', 'featured'),
(5, 1, 'Bottas giành pole chặng thứ ba liên tiếp', '<p>Tay đua Phần Lan đ&aacute;nh bại đồng đội Lewis Hamilton ở v&ograve;ng ph&acirc;n hạng GP T&acirc;y Ban Nha h&ocirc;m 11/5.</p>\r\n\r\n<p>Valtteri Bottas nhanh hơn Hamilton 0,634 gi&acirc;y v&agrave; nhanh hơn người về thứ ba&nbsp;Sebastian Vettel 0,866 gi&acirc;y. Tay đua của Red Bull&nbsp;Max Verstappen nhanh thứ tư, trong khi&nbsp;Charles Leclerc về thứ năm.</p>', 'active', 'iQ1RXPioFZ.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-28', 'featured'),
(6, 1, 'HLV Cardiff: \'Man Utd sẽ không vô địch trong 10 năm tới\'', '<p>Neil Warnock tỏ ra nghi ngờ về tương lai của Man Utd dưới thời HLV Solskjaer.</p>\r\n\r\n<p>&quot;Một số người nghĩ Man Utd cần từ hai đến ba kỳ chuyển nhượng nữa để gi&agrave;nh danh hiệu&quot;, HLV Neil Warnock chia sẻ. &quot;T&ocirc;i th&igrave; nghĩ c&oacute; thể l&agrave; 10 năm. T&ocirc;i kh&ocirc;ng thấy học&oacute; khả năng bắt kịp hai CLB h&agrave;ng đầu trong khoảng bốn hay năm năm tới&quot;.</p>\r\n\r\n<p>Lần cuối Man Utd v&ocirc; địch l&agrave; m&ugrave;a 2012-2013 dưới thời HLV Sir Alex Ferguson. Kể từ đ&oacute; đến nay, &quot;Quỷ đỏ&quot; kh&ocirc;ng c&ograve;n duy tr&igrave; được vị thế ứng cử vi&ecirc;n v&ocirc; địch h&agrave;ng đầu.&nbsp;</p>', 'active', 'ReChSfB95C.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-30', 'featured'),
(7, 2, 'Đại học Anh đưa khóa học hạnh phúc vào chương trình giảng dạy', '<p>Kh&oacute;a học diễn ra trong 12 tuần, sinh vi&ecirc;n năm nhất Đại học Bristol sẽ được kh&aacute;m ph&aacute; hạnh ph&uacute;c l&agrave; g&igrave; v&agrave; l&agrave;m thế n&agrave;o để đạt được n&oacute;.</p>\r\n\r\n<p>Đại học Bristol (Anh) quyết định đưa kh&oacute;a học hạnh ph&uacute;c v&agrave;o giảng dạy từ th&aacute;ng 9 năm nay nhằm giảm thiểu t&igrave;nh trạng tự tử ở sinh vi&ecirc;n, sau khi 12 sinh vi&ecirc;n ở một trường kh&aacute;c quy&ecirc;n sinh trong ba năm qua. Gi&aacute;o sư Bruce Hood, nh&agrave; t&acirc;m l&yacute; học chuy&ecirc;n nghi&ecirc;n cứu về c&aacute;ch thức hoạt động của bộ n&atilde;o v&agrave; con người, sẽ giảng dạy m&ocirc;n học mới n&agrave;y.</p>', 'active', 'hoyOyXJrzx.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-05', 'featured'),
(8, 5, '11 cách đơn giản dạy trẻ quản lý thời gian', '<p>Phụ huynh h&atilde;y tạo cảm gi&aacute;c vui vẻ, hướng dẫn trẻ thiết lập những ưu ti&ecirc;n h&agrave;ng ng&agrave;y để ch&uacute;ng c&oacute; thể tự quản l&yacute; thời gian hiệu quả.</p>\r\n\r\n<p>&quot;Nhanh l&ecirc;n&quot;, &quot;Con c&oacute; biết mấy giờ rồi kh&ocirc;ng&quot;, &quot;Điều g&igrave; l&agrave;m con mất nhiều thời gian như vậy&quot;..., l&agrave; những c&acirc;u n&oacute;i quen thuộc của phụ huynh để nhắc nhở con về kh&aacute;i niệm thời gian. Thay v&igrave; n&oacute;i những c&acirc;u tr&ecirc;n, phụ huynh c&oacute; thể dạy con c&aacute;ch quản l&yacute; giờ giấc ngay từ khi ch&uacute;ng c&ograve;n nhỏ.</p>', 'active', 'Phe2pSOC5Q.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-07-30', 'normal'),
(9, 3, 'Vì sao không hút thuốc vẫn bị ung thư phổi?', '<p>D&ugrave; kh&ocirc;ng h&uacute;t thuốc, bạn vẫn c&oacute; nguy cơ ung thư phổi do h&iacute;t phải kh&oacute;i thuốc, tiếp x&uacute;c với kh&iacute; radon hoặc sống trong m&ocirc;i trường &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>Người kh&ocirc;ng h&uacute;t thuốc vẫn c&oacute; thể bị ung thư phổi.&nbsp;Tr&ecirc;n&nbsp;<em>Journal of the Royal Society of Medicine</em>,&nbsp;c&aacute;c nh&agrave; khoa học từ&nbsp;Hiệp hội Ung thư Mỹ cho biết 20% bệnh nh&acirc;n ung thư phổi kh&ocirc;ng bao giờ h&uacute;t thuốc.&nbsp;Nghi&ecirc;n cứu 30 năm tr&ecirc;n 1,2 triệu người của tổ chức n&agrave;y cũng chỉ ra số người kh&ocirc;ng h&uacute;t thuốc bị ung thư phổi đang gia tăng. Hầu hết bệnh nh&acirc;n chỉ được chẩn đo&aacute;n khi đ&atilde; bước sang giai đoạn nghi&ecirc;m trọng kh&ocirc;ng thể điều trị.&nbsp;</p>', 'active', 'tPa7bgOesm.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-08-30', 'normal'),
(10, 4, '10 hãng hàng không  tốt nhất thế giới năm 2019', '<p>Qatar l&agrave; quốc gia duy nhất tr&ecirc;n thế giới c&oacute; h&atilde;ng h&agrave;ng kh&ocirc;ng v&agrave; s&acirc;n bay tốt nhất năm 2019.</p>\r\n\r\n<p>C&aacute;c s&acirc;n bay được đ&aacute;nh gi&aacute; dựa tr&ecirc;n 3 yếu tố: hiệu suất đ&uacute;ng giờ, chất lượng dịch vụ, thực phẩm v&agrave; lựa chọn mua sắm. Yếu tố đầu ti&ecirc;n chiếm 60% số điểm, hai ti&ecirc;u ch&iacute; c&ograve;n lại chiếm 20%. Dữ liệu của AirHelp được dựa tr&ecirc;n thống k&ecirc; từ nhiều nh&agrave; cung cấp thương mại, c&ugrave;ng cơ sở dữ liệu đ&aacute;nh gi&aacute; ri&ecirc;ng v&agrave; 40.000 khảo s&aacute;t h&agrave;nh kh&aacute;ch được thu thập từ hơn 40 quốc gia trong năm 2018.</p>', 'active', '8GlYE3KYtZ.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-09-30', 'normal'),
(11, 5, 'Phát hiện bụt mọc cổ thụ hơn 2.600 tuổi ở Mỹ', '<p>Ph&aacute;t hiện mới gi&uacute;p bụt mọc trở th&agrave;nh một trong những c&acirc;y sinh sản hữu t&iacute;nh gi&agrave; nhất thế giới, vượt xa ước t&iacute;nh trước đ&acirc;y của c&aacute;c chuy&ecirc;n gia.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học ph&aacute;t hiện một c&acirc;y bụt mọc &iacute;t nhất đ&atilde; 2.624 tuổi ở v&ugrave;ng đầm lầy s&ocirc;ng Black, bang Bắc Carolina, Mỹ, theo nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Environmental Research Communications</em>&nbsp;h&ocirc;m 9/5.&nbsp;</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu bắt gặp bụt mọc cổ thụ n&agrave;y trong l&uacute;c nghi&ecirc;n cứu v&ograve;ng tuổi của c&acirc;y để t&igrave;m hiểu về lịch sử kh&iacute; hậu tại miền đ&ocirc;ng nước Mỹ. Ngo&agrave;i thể hiện tuổi thọ, độ rộng v&agrave; m&agrave;u sắc của v&ograve;ng tuổi tr&ecirc;n th&acirc;n c&acirc;y c&ograve;n cho biết mức độ ẩm ướt hay kh&ocirc; hạn của năm tương ứng.</p>', 'active', 'a09zB7BiwV.jpeg', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(12, 6, 'Apple có thể không nâng cấp iOS 13 cho iPhone SE, 6', '<p>Những mẫu iPhone ra mắt từ 2014 v&agrave; iPhone SE c&oacute; thể kh&ocirc;ng được l&ecirc;n đời hệ điều h&agrave;nh iOS 13 ra mắt th&aacute;ng 6 tới.</p>\r\n\r\n<p>Theo&nbsp;<em>Phone Arena</em>, hệ điều h&agrave;nh iOS 13 sắp tr&igrave;nh l&agrave;ng tại hội nghị WWDC 2019 sẽ kh&ocirc;ng hỗ trợ một loạt iPhone đời cũ của Apple. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c mẫu iPhone vẫn c&ograve;n được nhiều người d&ugrave;ng sử dụng như iPhone 6, 6s Plus hay SE.&nbsp;</p>', 'active', '9jOZGc7BJK.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(13, 7, 'Hình dung về Honda Jazz thế hệ mới', '<p>Thế hệ thứ tư của mẫu hatchback Honda tiết chế bớt những đường n&eacute;t g&acirc;n guốc, thể thao để thay bằng n&eacute;t trung t&iacute;nh, hợp mắt người d&ugrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Những h&igrave;nh ảnh đầu ti&ecirc;n về Honda Jazz (Fit tại Nhật Bản) thế hệ mới bắt đầu xuất hiện tr&ecirc;n đường thử. D&ugrave; chưa phải thiết kế ho&agrave;n chỉnh, thay đổi của mẫu hatchback cỡ B cho thấy những đường n&eacute;t trung t&iacute;nh m&agrave; xe sắp sở hữu. Điều n&agrave;y tr&aacute;i ngược với tạo h&igrave;nh g&acirc;n guốc, thể thao ở thế hệ thứ ba hiện tại của Jazz.&nbsp;</p>', 'active', 'g2c7mYXBPW.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(14, 1, 'Hà Nội vào vòng knock-out AFC Cup', '<p>ĐKVĐ V-League đ&aacute;nh bại&nbsp;Tampines Rovers 2-0 v&agrave;o chiều 15/5 để đứng đầu bảng F.</p>\r\n\r\n<p>Tiếp đối thủ đến từ Singapore trong t&igrave;nh thế buộc phải thắng để tự quyết v&eacute; đi tiếp, H&agrave; Nội đ&atilde; c&oacute; trận đấu dễ d&agrave;ng. C&oacute; thể n&oacute;i, kết quả của trận đấu được định đoạt trong hiệp một khi Oseni v&agrave; Th&agrave;nh Chung lần lượt ghi b&agrave;n cho đội chủ nh&agrave;. Trong khi đ&oacute;, Tampines Rovers phải trả gi&aacute; cho lối chơi th&ocirc; bạo khi Yasir Hanapi nhận thẻ v&agrave;ng thứ hai rời s&acirc;n. Tiền vệ n&agrave;y bị trừng phạt bởi pha đ&aacute;nh nguội với Th&agrave;nh Chung ở đầu trận, sau đ&oacute; l&agrave; t&igrave;nh huống phạm lỗi &aacute;c &yacute; với Đ&igrave;nh Trọng.</p>', 'active', 'e7YyFZJCc8.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(15, 1, 'Man City vẫn dự Champions League mùa 2019-2020', '<p>Việc điều tra vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh của chủ s&acirc;n Etihad chưa thể ho&agrave;n th&agrave;nh trong v&ograve;ng một năm tới.</p>\r\n\r\n<p><em>Sports Mail</em>&nbsp;(Anh)&nbsp;cho biết, &aacute;n phạt cấm tham dự Champions League một m&ugrave;a với Man City, do vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh (FFP), chỉ được đưa ra sớm nhất v&agrave;o m&ugrave;a 2020-2021.</p>\r\n\r\n<p>Trong bức thư ngỏ gửi tới truyền th&ocirc;ng Anh, Man City viết: &quot;Ch&uacute;ng t&ocirc;i hợp t&aacute;c một c&aacute;ch thiện ch&iacute; với Tiểu ban kiểm so&aacute;t t&agrave;i ch&iacute;nh c&aacute;c CLB của UEFA (CFCB). CLB tin tưởng v&agrave;o sự độc lập v&agrave; cam kết của CFCB h&ocirc;m 7/3, rằng sẽ kh&ocirc;ng kết luận g&igrave; trong thời gian điều tra&quot;.</p>', 'active', 'exzJEG4WDU.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(16, 1, 'Những câu đố giúp rèn luyện trí não', '<p>Bạn cần quan s&aacute;t, suy luận logic v&agrave; c&oacute; vốn từ vựng tiếng Anh để giải quyết những c&acirc;u đố dưới đ&acirc;y.</p>\r\n\r\n<p>C&acirc;u 1:&nbsp;Mike đến một buổi phỏng vấn xin việc. Anh đ&atilde; g&acirc;y ấn tượng với gi&aacute;m đốc về những kỹ năng v&agrave; kinh nghiệm của m&igrave;nh. Tuy nhi&ecirc;n, để quyết định c&oacute; nhận Mike hay kh&ocirc;ng, nữ gi&aacute;m đốc đưa ra một c&acirc;u đố h&oacute;c b&uacute;a v&agrave; y&ecirc;u cầu Mike trả lời trong 30 gi&acirc;y.</p>\r\n\r\n<p>Nội dung c&acirc;u đố: H&atilde;y đưa ra 30 từ tiếng Anh kh&ocirc;ng c&oacute; chữ &quot;a&quot; xuất hiện trong đ&oacute;?&nbsp;</p>\r\n\r\n<p>Mike dễ d&agrave;ng giải quyết c&acirc;u đố. Theo bạn anh ấy n&oacute;i những từ tiếng Anh n&agrave;o để kịp trả lời trong 30 gi&acirc;y?</p>', 'inactive', 'TpcocqUjob.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(17, 3, 'Cách nhận biết mật ong nguyên chất và pha trộn', '<p>Mật ong nguy&ecirc;n chất sẽ kh&ocirc;ng thấm qua tờ giấy, lắng xuống đ&aacute;y ly nước v&agrave; bị kiến ăn, kh&aacute;c với mật ong bị pha trộn tạp chất.</p>\r\n\r\n<p>Dược sĩ V&otilde; H&ugrave;ng Mạnh, Trưởng khoa Dược Bệnh viện Y học d&acirc;n tộc cổ truyền B&igrave;nh Định, cho biết thị trường c&oacute; nhiều loại mật ong bị pha trộn, chỉ nh&igrave;n bề ngo&agrave;i hay ngửi m&ugrave;i chưa chắc ph&acirc;n biệt được.</p>\r\n\r\n<p>Theo dược sĩ H&ugrave;ng, một c&aacute;ch ph&acirc;n biệt thật giả l&agrave; lấy cọng h&agrave;nh tươi nh&uacute;ng v&agrave;o lọ mật ong, lấy ra chừng v&agrave;i ph&uacute;t. Cọng l&aacute; h&agrave;nh sẽ chuyển từ m&agrave;u xanh l&aacute; sang sậm nếu mật ong thật. Ngo&agrave;i ra, c&oacute; thể nhỏ giọt mật v&agrave;o nơi c&oacute; kiến, nếu kiến kh&ocirc;ng bu giọt mật th&igrave; cũng l&agrave; mật ong thật.</p>\r\n\r\n<p>Ng&agrave;y nay, nhiều người đặt mật ong v&agrave;o ngăn đ&aacute; tủ lạnh, sau 24 giờ m&agrave; kh&ocirc;ng c&oacute; hiện tượng đ&ocirc;ng đ&aacute; th&igrave; l&agrave; mật thật.</p>', 'active', 'xvEqmF5uyJ.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(18, 4, 'Nhiều tour mùa hè giảm giá hàng chục triệu đồng', '<p>C&aacute;c tour trong v&agrave; ngo&agrave;i nước đều được giảm gi&aacute; mạnh để k&iacute;ch cầu du lịch trong dịp h&egrave;, nhiều chương tr&igrave;nh khuyến m&atilde;i l&ecirc;n đến h&agrave;ng chục triệu đồng.</p>\r\n\r\n<p>Sau khi so s&aacute;nh tiền v&eacute; m&aacute;y bay, ph&ograve;ng kh&aacute;ch sạn ở Bali để chuẩn bị cho kỳ nghỉ h&egrave; của gia đ&igrave;nh, anh Sơn (ngụ quận 2, TP HCM) quyết định chuyển sang mua tour trọn g&oacute;i v&igrave; tiết kiệm hơn.</p>', 'active', 'd2ABCeBzoR.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-15', 'featured'),
(19, 7, 'BMW i8 Roadster - xe mui trần dẫn đường ở Formula E', '<p>Dịp cuối tuần qua, BMW giới thiệu chiếc xe dẫn đường, l&agrave;m nhiệm vụ đảm bảo an to&agrave;n tại giải đua xe Formula E. Giải đua tương tự giải F1, nhưng to&agrave;n bộ xe đua sử dụng động cơ điện.</p>\r\n\r\n<p>i8 Roadster Safety Car dựa tr&ecirc;n chiếc i8 Roadster ti&ecirc;u chuẩn, nhưng c&oacute; những thay đổi để trở th&agrave;nh chiếc xe dẫn đường chuy&ecirc;n dụng. Ngoại h&igrave;nh c&oacute; một số đặc điểm ấn tượng hơn so với nguy&ecirc;n bản. K&iacute;nh chắn gi&oacute; kiểu d&agrave;nh cho xe đua, trọng t&acirc;m hạ thấp 15 mm.</p>', 'active', '9fbeUKTBpU.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(20, 7, 'Tia cực tím tại Hà Nội ở mức \'nguy hiểm\'', '<p>Chỉ số tia UV tại H&agrave; Nội ng&agrave;y 18-19/5 l&ecirc;n tới 11, mức được đ&aacute;nh gi&aacute; l&agrave; &quot;nguy hiểm&quot; dễ khiến da, mắt bị bỏng nhiệt.</p>\r\n\r\n<p>H&agrave; Nội đang trải qua đợt nắng n&oacute;ng gay gắt. Theo Trung t&acirc;m Dự b&aacute;o Kh&iacute; tượng Thủy văn Quốc gia, nhiệt độ cao nhất ở H&agrave; Nội ng&agrave;y 18/5 dao động trong khoảng 37 đến 39 độ C, c&oacute; nơi tr&ecirc;n 39 độ.&nbsp;Trang&nbsp;<em>World Weather Online</em>&nbsp;của Anh dự b&aacute;o chỉ số tia cực t&iacute;m tại H&agrave; Nội hai ng&agrave;y 18-19/5 đạt mức 11.&nbsp;</p>', 'active', 'C4DtP4ico8.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'normal'),
(21, 2, 'Blockchain và trí tuệ nhân tạo AI làm thay đổi giáo dục trực tuyến', '<p>Blockchain khiến dữ liệu trở n&ecirc;n c&ocirc;ng khai, minh bạch với người học, AI gi&uacute;p cải thiện khả năng tương t&aacute;c v&agrave; giảng dạy với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sự b&ugrave;ng nổ của Internet v&agrave; những c&ocirc;ng nghệ mới như chuỗi khối (Blockchain) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) đ&atilde; g&oacute;p phần l&agrave;m thay đổi nền gi&aacute;o dục tr&ecirc;n to&agrave;n thế giới, h&igrave;nh th&agrave;nh những nền tảng Online Learning với nhiều ưu thế.</p>\r\n\r\n<p><strong>Mobile Learning dự b&aacute;o l&agrave; &quot;Cuộc c&aacute;ch mạng tiếp theo&quot; của gi&aacute;o dục trực tuyến</strong></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Global Market Insights, thị trường gi&aacute;o dục trực tuyến to&agrave;n cầu đang c&oacute; tốc độ ph&aacute;t triển nhanh chưa từng thấy khi nền tảng hạ tầng Internet ng&agrave;y c&agrave;ng ho&agrave;n thiện v&agrave; phủ s&oacute;ng rộng khắp. Gi&aacute; trị c&aacute;c start-up về EdTech (C&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n về gi&aacute;o dục) to&agrave;n cầu được ước t&iacute;nh hơn 190 tỷ USD v&agrave;o năm 2018 v&agrave; dự kiến vượt hơn 300 tỷ USD v&agrave;o năm 2025.</p>', 'active', 'gCPGos7mhY.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'featured'),
(22, 6, 'Huawei nói lệnh cấm sẽ khiến Mỹ tụt hậu về 5G', '<p>Huawei khẳng định sắc lệnh mới của Mỹ sẽ chỉ c&agrave;ng khiến qu&aacute; tr&igrave;nh triển khai c&ocirc;ng nghệ 5G ở nước n&agrave;y th&ecirc;m chậm chạp v&agrave; đắt đỏ.</p>\r\n\r\n<p>H&atilde;ng c&ocirc;ng nghệ Trung Quốc tự nhận l&agrave; &quot;người dẫn đầu kh&ocirc;ng ai s&aacute;nh kịp về c&ocirc;ng nghệ 5G&quot;, n&ecirc;n việc bị hạn chế kinh doanh ở Mỹ chỉ dẫn đến kết cục l&agrave; Mỹ sẽ bị &quot;tụt lại ph&iacute;a sau&quot; trong việc triển khai c&ocirc;ng nghệ kết nối di động thế hệ mới</p>', 'active', 'nt1QxhKUXM.jpeg', '2019-05-17 00:00:00', 'hailan', NULL, NULL, '2019-05-16', 'featured'),
(23, 8, 'Asus ra mắt Zenfone 6 với camera lật tự động', '<p>Với thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền ho&agrave;n to&agrave;n kh&ocirc;ng tai thỏ, camera ch&iacute;nh 48 megapixel tr&ecirc;n Zenfone 6 c&oacute; thể lật từ sau ra trước biến th&agrave;nh camera selfie.</p>\r\n\r\n<p>Zenfone 6 l&agrave; một trong những smartphone c&oacute; viền m&agrave;n h&igrave;nh mỏng nhất tr&ecirc;n thị trường với tỷ lệ m&agrave;n h&igrave;nh hiển thị chiếm tới 92% diện t&iacute;ch mặt trước. M&aacute;y c&oacute; m&agrave;n h&igrave;nh 6,4 inch tr&agrave;n viền ra cả bốn cạnh, kh&ocirc;ng tai thỏ như một số mẫu Zenfone trước v&agrave; cũng kh&ocirc;ng d&ugrave;ng thiết kế đục lỗ như Galaxy S10, S10+</p>', 'inactive', 'aiC6j6fWZY.png', '2019-05-17 00:00:00', 'hailan', NULL, NULL, '2019-05-16', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `is_home` varchar(45) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created`, `created_by`, `modified`, `modified_by`, `is_home`, `display`) VALUES
(1, 'Thể thao', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'list'),
(2, 'Giáo dục', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'grid'),
(3, 'Sức khỏe', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:33', 'hailan', 'no', 'list'),
(4, 'Du lịch', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:30', 'hailan', 'no', 'grid'),
(5, 'Khoa học', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'no', 'list'),
(6, 'Số hóa', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:38', 'hailan', 'no', 'grid'),
(7, 'Xe - Ô tô', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:36', 'hailan', 'no', 'list'),
(8, 'Kinh doanh', 'active', '2019-05-12 00:00:00', 'hailan', NULL, NULL, 'yes', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `category_article`
--

CREATE TABLE `category_article` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `is_home` varchar(45) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_article`
--

INSERT INTO `category_article` (`id`, `name`, `status`, `created`, `created_by`, `modified`, `modified_by`, `is_home`, `display`) VALUES
(1, 'Thể thao', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'list'),
(2, 'Giáo dục', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'grid'),
(3, 'Sức khỏe', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:33', 'hailan', 'no', 'list'),
(4, 'Du lịch', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:30', 'hailan', 'no', 'grid'),
(5, 'Khoa học', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'no', 'list'),
(6, 'Số hóa', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:38', 'hailan', 'no', 'grid'),
(7, 'Xe - Ô tô', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:36', 'hailan', 'no', 'list'),
(8, 'Kinh doanh', 'active', '2019-05-12 00:00:00', 'hailan', NULL, NULL, 'yes', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `is_home` varchar(45) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name`, `status`, `created`, `created_by`, `modified`, `modified_by`, `is_home`, `display`) VALUES
(1, 'Thể thao', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'list'),
(2, 'Giáo dục', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'grid'),
(3, 'Sức khỏe', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:33', 'hailan', 'no', 'list'),
(4, 'Du lịch', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:30', 'hailan', 'no', 'grid'),
(5, 'Khoa học', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'no', 'list'),
(6, 'Số hóa', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:38', 'hailan', 'no', 'grid'),
(7, 'Xe - Ô tô', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:36', 'hailan', 'no', 'list'),
(8, 'Kinh doanh', 'active', '2019-05-12 00:00:00', 'hailan', NULL, NULL, 'yes', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `type_open` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `status`, `url`, `ordering`, `type`, `type_open`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Trang chủ', 'active', 'trang-chu', 1, 'link_in', '_self', NULL, NULL, NULL, NULL),
(2, 'Danh mục bài viết', 'active', 'category', 3, 'category_article', '_self', NULL, NULL, NULL, NULL),
(3, 'Danh mục sản phẩm', 'active', 'category', 2, 'category_product', '_self', NULL, NULL, NULL, NULL),
(4, 'Tiktok', 'active', 'https://www.tiktok.com', 10, 'link_out', '_blank', NULL, NULL, NULL, NULL),
(5, 'Youtube', 'active', 'https://www.youtube.com', 10, 'link_out', '_blank', NULL, NULL, NULL, NULL),
(6, 'Google', 'active', 'https://www.google.com', 10, 'link_out', '_blank', NULL, NULL, NULL, NULL),
(9, 'Tin tức tổng hợp', 'active', 'tin-tuc-tong-hop', 4, 'link_in', '_self', NULL, NULL, NULL, NULL),
(10, 'Hình ảnh', 'active', 'hinh-anh', 1, 'link_in', '_self', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `name`, `status`, `link`, `ordering`, `source`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Thế Giới VNExpress', 'active', 'https://vnexpress.net/rss/the-gioi.rss', 1, 'vnexpress', '2021-07-11 00:00:00', 'hailan', '2021-07-12 00:00:00', 'hailan'),
(2, 'Thế Giới TuoiTre', 'inactive', 'https://tuoitre.vn/rss/the-gioi.rss', 2, 'tuoitre', '2021-07-11 00:00:00', 'hailan', NULL, NULL),
(4, 'Thời sự VNEx', 'inactive', 'https://vnexpress.net/rss/thoi-su.rss', 4, 'vnexpress', '2021-07-12 00:00:00', 'hailan', '2021-07-12 00:00:00', 'hailan');

-- --------------------------------------------------------

--
-- Table structure for table `rss_article`
--

CREATE TABLE `rss_article` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `rss_article`
--

INSERT INTO `rss_article` (`id`, `title`, `description`, `link`, `thumb`, `created`, `created_by`, `modified`, `modified_by`, `publish_at`) VALUES
(1, 'Những cặp đôi Trung Quốc quyết không sinh con', 'Khi Zhang Chengying, 32 tuổi, nói với cha mẹ rằng cô và chồng quyết định sẽ không có con, cha mẹ cô rất sốc và hỏi lại liệu có điều gì bất ổn với con gái hay không.', 'https://vnexpress.net/nhung-cap-doi-trung-quoc-quyet-khong-sinh-con-4632887.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/thanh-nie-n-trung-quo-c-169008-1757-1850-1690085771.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=7_nv_tJqbeM1V4z831k-TA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 12:26:46 +0700'),
(2, 'Vỡ đường ống nước nóng trung tâm thương mại Nga, 4 người chết', 'Đường ống nước nóng tại trung tâm thương mại ở Moskva bị vỡ khiến 4 người thiệt mạng và nhiều người bị bỏng.', 'https://vnexpress.net/vo-duong-ong-nuoc-nong-trung-tam-thuong-mai-nga-4-nguoi-chet-4632884.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/5563187178137267824a-nga-16900-4804-7206-1690085297.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=DzrJxWfsnnvMA6JU10yuIg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 11:14:02 +0700'),
(3, 'Người Campuchia bỏ phiếu bầu quốc hội', 'Hơn 9,7 triệu cử tri Campuchia đi bỏ phiếu để bầu ra 125 nghị sĩ quốc hội tại quốc gia Đông Nam Á này.', 'https://vnexpress.net/nguoi-campuchia-bo-phieu-bau-quoc-hoi-4632870.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/5563187178137267823b-campuchia-3023-3533-1690082698.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=cFTkhfhEwKUws56WyoP9MA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 10:27:07 +0700'),
(4, 'Chủ tịch nước và phu nhân lên đường thăm ba nước châu Âu', 'Chủ tịch nước Võ Văn Thưởng và phu nhân lên đường thăm chính thức Áo, thăm cấp nhà nước Italy và thăm Tòa thánh Vatican.', 'https://vnexpress.net/chu-tich-nuoc-va-phu-nhan-len-duong-tham-ba-nuoc-chau-au-4632846.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/vna-potal-chu-tich-nuoc-vo-van-7930-8600-1690076440.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=oauC02j3LFy2P-o8qAcCmA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 08:45:19 +0700'),
(5, 'Ba Lan khai trương cơ sở sửa chữa tăng cho Ukraine', 'Ba Lan thông báo trung tâm bảo trì tại Gliwice bắt đầu tiếp nhận và sửa chữa xe tăng của Ukraine bị hư hại trong giao tranh với Nga.', 'https://vnexpress.net/ba-lan-khai-truong-co-so-sua-chua-tang-cho-ukraine-4632827.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/5563187178137267822a-ba-lan-16-9504-8080-1690073494.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_kD8Nkg4sqPA4rD_-KAAQA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 07:54:52 +0700'),
(6, 'Ukraine nói 5.000 lính Wagner đã tới Belarus', 'Biên phòng Ukraine cho biết có thể tới 5.000 thành viên tập đoàn Wagner đã đến Belarus, song không gây ra mối đe dọa trực tiếp.', 'https://vnexpress.net/ukraine-noi-5-000-linh-wagner-da-toi-belarus-4632820.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/5563187178137267821a-belarus-1-1502-9909-1690070050.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=A3fftCUAZ2ann42pq_rePg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 06:55:26 +0700'),
(7, 'Arab Saudi và UAE từ đồng minh hóa kình địch', 'Arab Saudi và UAE, hai đồng minh của Mỹ, đang cạnh tranh ảnh hưởng gay gắt ở Trung Đông, khi hiện diện Washington trong khu vực mờ nhạt dần.', 'https://vnexpress.net/arab-saudi-va-uae-tu-dong-minh-hoa-kinh-dich-4631031.html', 'https://i1-vnexpress.vnecdn.net/2023/07/19/5db8c7753002465a9683df9e4c6919-8875-7151-1689741952.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=KYP0RnRkvvKMVginUV3WSA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 05:00:00 +0700'),
(8, 'Phóng viên chiến trường Nga thiệt mạng vì đạn chùm', 'Rostislav Zhuravlev, phóng viên chiến trường của Nga, thiệt mạng khi quân đội Ukraine tập kích ở tỉnh Zaporizhzhia bằng đạn chùm.', 'https://vnexpress.net/phong-vien-chien-truong-nga-thiet-mang-vi-dan-chum-4632798.html', 'https://i1-vnexpress.vnecdn.net/2023/07/23/nha-ba-o-chie-n-tru-o-ng-nga-1-3212-4715-1690046312.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=Qt-S59FD0obPEKcAdWSdww', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 00:20:56 +0700'),
(9, 'Người Mỹ dần quay lưng với kem', 'Người Mỹ từng coi kem như \"báu vật\", nhưng tình yêu dành cho món ăn này dường như đã giảm nhiệt khi họ quan tâm nhiều hơn tới sức khỏe.', 'https://vnexpress.net/nguoi-my-dan-quay-lung-voi-kem-4630923.html', 'https://i1-vnexpress.vnecdn.net/2023/07/18/xe-kem-my-1689678254-1670-1689678401.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qMJWmvi4AVMa1zVv9slYbA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sun, 23 Jul 2023 00:00:00 +0700'),
(10, 'Mắc kẹt trong trung tâm buôn người ở Myanmar', 'Cơ sở lừa đảo, buôn người mọc lên trong những khu vực ngoài tầm kiểm soát của chính quyền quân sự Myanmar, khiến nạn nhân thường phải tự tìm đường thoát.', 'https://vnexpress.net/mac-ket-trong-trung-tam-buon-nguoi-o-myanmar-4632787.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/buo-n-ngu-o-i-1690044444-2745-1690044633.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=H_vjsMx0KnnUikXyS9vckg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 23:57:18 +0700'),
(11, 'Hy Lạp đối diện sóng nhiệt lịch sử', 'Hy Lạp cảnh báo cuối tuần tháng 7 nóng nhất trong 50 năm qua, với nhiệt độ dự kiến trên 40°C.', 'https://vnexpress.net/hy-lap-doi-dien-song-nhiet-lich-su-4632766.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/hy-la-p-na-ng-no-ng-1690034032-2701-1690034256.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=lmun6a4xCUitVpXU85K7uQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 21:16:53 +0700'),
(12, 'FBI lộ vi phạm tình báo khi tìm thông tin về quan chức Mỹ', 'Cơ quan tình báo Mỹ cho biết FBI đã tìm thông tin về một thượng nghị sĩ và hai quan chức nước này sai quy định sử dụng dữ liệu.', 'https://vnexpress.net/fbi-lo-vi-pham-tinh-bao-khi-tim-thong-tin-ve-quan-chuc-my-4632546.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/afp-com-20221115-ph-gty-144169-2140-3292-1689987850.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=APmjByK84nw2Yjp4HRGJAw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 19:19:56 +0700'),
(13, 'Nga có thể lợi bất cập hại khi rút khỏi thỏa thuận ngũ cốc', 'Rút khỏi Sáng kiến Ngũ cốc Biển Đen, Nga có thể đối mặt nguy cơ gây tổn hại mối quan hệ với các đối tác quan trọng như Thổ Nhĩ Kỳ hay Trung Quốc.', 'https://vnexpress.net/nga-co-the-loi-bat-cap-hai-khi-rut-khoi-thoa-thuan-ngu-coc-4632573.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/33nz7fu-highres-1690003411-6800-1690003683.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=FO-aYr-ZlzScUI9pY-fO8g', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 19:00:00 +0700'),
(14, 'Kho đạn ở Crimea phát nổ, Nga sơ tán dân', 'Quan chức Nga tại Crimea cho biết Ukraine dùng UAV tập kích ở quận Krasnogvardeisky làm nổ kho đạn, khiến người dân phải sơ tán.', 'https://vnexpress.net/kho-dan-o-crimea-phat-no-nga-so-tan-dan-4632741.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/nkhon-1690023854-1690023871-8984-1690023998.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=rArTxgaeX2jmsYL9_PwI_A', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 18:21:41 +0700'),
(15, 'Nước lũ chảy như thác xuống ga tàu Trung Quốc', 'Nước lũ ngập sân ga, chảy từ tầng trên xuống tầng dưới khi mưa lớn tấn công thành phố Vô Tích, miền đông Trung Quốc.', 'https://vnexpress.net/nuoc-lu-chay-nhu-thac-xuong-ga-tau-trung-quoc-4632633.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/nuoc-lu-nhu-thac-do-trong-ga-t-4593-6040-1690000818.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=w6I4Vpa3B-zocrtCJ4CwiQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 17:23:40 +0700'),
(16, 'Hải quân Mỹ lần đầu biên chế tàu chiến ở nước ngoài', 'Hải quân Mỹ biên chế chiến hạm USS Canberra tại Sydney, Australia, đánh dấu lần đầu tiên thủ tục này được thực hiện ở một cảng nước ngoài.', 'https://vnexpress.net/hai-quan-my-lan-dau-bien-che-tau-chien-o-nuoc-ngoai-4632721.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/bccba7cb17dff2695a3e4b0d64f5f1-3662-5635-1690018446.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=tk-F-l8hVML9WNELjeJD8w', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 16:34:53 +0700'),
(17, 'Mũ trùm kín mặt đắt hàng ở Trung Quốc vì nắng nóng', 'Mũ trùm mặt trở thành mặt hàng bán chạy cùng quạt cầm tay, áo chống nắng vì nhiệt độ tại nhiều nơi ở Trung Quốc hơn 35 độ C.', 'https://vnexpress.net/mu-trum-kin-mat-dat-hang-o-trung-quoc-vi-nang-nong-4632583.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/gettyimages-1228078069-1689992-6574-2931-1689993442.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=fVnjektI3AJd2El2Q7p5qw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 14:41:58 +0700'),
(18, 'Tổng thống Mỹ đề cử nữ Tư lệnh hải quân đầu tiên', 'Tổng thống Joe Biden đề cử Đô đốc Lisa Franchetti lãnh đạo hải quân, một bước đi lịch sử sẽ phá vỡ rào cản giới tính trong quân đội Mỹ.', 'https://vnexpress.net/tong-thong-my-de-cu-nu-tu-lenh-hai-quan-dau-tien-4632690.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/unnamedfilefromapnewscom-16900-6039-5365-1690009761.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ijTgsh3NMF8Netiq7nV4HA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 14:12:15 +0700'),
(19, 'Iran không chấp nhận đại sứ mới của Thụy Điển', 'Iran nói sẽ không cho phép đại sứ mới nào của Thụy Điển vào nước này cho đến khi Stockholm xử lý hành vi báng bổ kinh Koran.', 'https://vnexpress.net/iran-khong-chap-nhan-dai-su-moi-cua-thuy-dien-4632617.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/JLOQ4DCULZK73MYRVM4MET6EVM-168-4279-8362-1689998617.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=yMsWWSEAsmMB595J_ObB_Q', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 12:41:14 +0700'),
(20, 'Thiếu phụ tùng, lính Ukraine phải rã xác thiết giáp Bradley', 'Nhiều binh sĩ Ukraine than phiền về tình trạng thiếu phụ tùng, buộc họ rã xác một số thiết giáp Bradley để bảo đảm hoạt động cho những chiếc khác.', 'https://vnexpress.net/thieu-phu-tung-linh-ukraine-phai-ra-xac-thiet-giap-bradley-4632058.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/ukraine291-1689998540-5298-1689998772.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Sx656qs_Vb3Rwk3MJ8aGFg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 11:56:24 +0700'),
(21, 'Nhóm ông Trump ca ngợi tòa lùi ngày xử vụ tài liệu mật', 'Chiến dịch tranh cử của Trump ca ngợi tòa khi lùi thời điểm xét xử vụ tài liệu mật đến tháng 5/2024, giúp ông có thêm thời gian ứng phó.', 'https://vnexpress.net/nhom-ong-trump-ca-ngoi-toa-lui-ngay-xu-vu-tai-lieu-mat-4632623.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/afp-com-20230625-ph-gty-125902-3446-9280-1689998879.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_ZPYzPbTRYC_39pR5CQRzw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 11:56:11 +0700'),
(22, 'Nông dân Ukraine lao đao khi thỏa thuận ngũ cốc sụp đổ', 'Hàng triệu tấn nông sản Ukraine một lần nữa có nguy cơ tồn đọng sau khi Nga không gia hạn thỏa thuận vận chuyển ngũ cốc qua Biển Đen.', 'https://vnexpress.net/nong-dan-ukraine-lao-dao-khi-thoa-thuan-ngu-coc-sup-do-4632279.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/ngu-co-c-1689921134-6981-1689921706.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=XFdUj9sNtT7OlvwvvBTlsw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 11:34:30 +0700'),
(23, 'Tập đoàn Đức sẽ bố trí lá chắn bảo vệ nhà máy xe tăng ở Ukraine', 'Lãnh đạo tập đoàn Rheinmetall tuyên bố sẽ triển khai các hệ thống phòng không của họ để bảo vệ nhà máy xe tăng dự kiến xây dựng ở Ukraine.', 'https://vnexpress.net/tap-doan-duc-se-bo-tri-la-chan-bao-ve-nha-may-xe-tang-o-ukraine-4632604.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/sky-shield-35-1-6551-160688152-7501-9507-1689996190.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Kf88-b1VleOf_b_Y3hJENQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 10:46:11 +0700'),
(24, 'Người Lebanon phẫn nộ vì bé sơ sinh bị vứt trong túi rác', 'Dư luận Lebanon sốc và phẫn nộ khi bé gái mới sinh bị bỏ trong túi rác ở khu phố đầy chó hoang tại Tripoli.', 'https://vnexpress.net/nguoi-lebanon-phan-no-vi-be-so-sinh-bi-vut-trong-tui-rac-4632558.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/lebanon1-720-1689989507-168998-5383-4800-1689989660.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=OyW1ToFRcsKAUjXAnmaeUA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 10:41:28 +0700'),
(25, 'Mỹ tuyên bố sẽ hành động nếu Trung Quốc không can thiệp với Triều Tiên', 'Ngoại trưởng Mỹ Blinken cảnh báo Washington sẽ hành động nếu Trung Quốc từ chối can thiệp để giúp phi hạt nhân hóa bán đảo Triều Tiên.', 'https://vnexpress.net/my-tuyen-bo-se-hanh-dong-neu-trung-quoc-khong-can-thiep-voi-trieu-tien-4632579.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/33pk8z8-preview-jpeg-168999382-4575-3863-1689994047.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=JxN0p4D5gFgrpJjvIFrKRg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 10:37:55 +0700'),
(26, 'Nga tuyên bố phá hủy kho UAV Ukraine', 'Quân đội Nga thông báo tập kích loạt kho chứa và cơ sở lắp ráp UAV được Ukraine dùng trong \"những cuộc tấn công khủng bố\".', 'https://vnexpress.net/nga-tuyen-bo-pha-huy-kho-uav-ukraine-4632592.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/ukraine290-1689993659-6655-1689993748.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=lx6L0oxQAGmDmQN87Q4Geg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 10:14:51 +0700'),
(27, 'Người Mỹ \'đốt tiền\' với điều hòa giữa nắng nóng', 'Khi nhiều vùng ở Mỹ hứng chịu nắng nóng kỷ lục, điều hòa trở thành vật thiết yếu, nhưng cũng tăng gánh nặng chi phí với người dân.', 'https://vnexpress.net/nguoi-my-dot-tien-voi-dieu-hoa-giua-nang-nong-4632306.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/image-1-1689990906-7346-1689991056.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=cb05WgC9MdVBm5WVhEAMMA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 09:58:06 +0700'),
(28, 'Dân làng đốt nhà nghi phạm vụ ép phụ nữ diễu phố khỏa thân', 'Người dân địa phương đập phá, đốt nhà một nghi phạm trong vụ phụ nữ bị ép diễu phố khỏa thân gây rúng động ở bang Manipur.', 'https://vnexpress.net/dan-lang-dot-nha-nghi-pham-vu-ep-phu-nu-dieu-pho-khoa-than-4632560.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/21191024dae7d87-1689992314-168-5770-6799-1689993112.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=jfBkDOj_JULuz2CZc_ULAA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 09:55:20 +0700'),
(29, 'Trùm CIA nói ông Putin tìm cách câu giờ với Wagner', 'Giám đốc CIA nhận định Tổng thống Putin đã tìm cách kéo dài thời gian để quyết định cách phản ứng với lãnh đạo Wagner sau vụ nổi loạn.', 'https://vnexpress.net/trum-cia-noi-ong-putin-tim-cach-cau-gio-voi-wagner-4632569.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/55631871781372677558a-wagner-4-9527-1373-1689990328.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=xUG2XWmzVdJ6bbC--1RYFg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 09:12:11 +0700'),
(30, 'Thiếu nữ bị bắt cóc được giải cứu nhờ mẩu giấy', 'Bé gái 13 tuổi bị bắt cóc ở Texas được giải cứu ở California khi người đi đường thấy bé giơ mẩu giấy \"cứu cháu\" trong một chiếc ôtô.', 'https://vnexpress.net/thieu-nu-bi-bat-coc-duoc-giai-cuu-nho-mau-giay-4632559.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/anhcatnoname-1689990462-3657-1689990506.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=4wRRVF-6ewtR--L0Jo_6ig', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 09:05:54 +0700'),
(31, 'Cố vấn Mỹ: Ukraine tổn thất đáng kể khi phản công', 'Cố vấn An ninh Quốc gia Mỹ nhận định Ukraine đang hứng chịu thương vong đáng kể, nhưng vẫn còn nhiều lực lượng dự bị cho cuộc phản công lớn.', 'https://vnexpress.net/co-van-my-ukraine-ton-that-dang-ke-khi-phan-cong-4632549.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/ukraine287-1689987719-9798-1689987875.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=yxuOAAQ2uCQ1n4w7WTSIqw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 08:26:31 +0700'),
(32, 'Ukraine tuyên bố cầu Crimea là mục tiêu quân sự', 'Tổng thống Zelensky tuyên bố cầu Crimea do Nga xây dựng là mục tiêu quân sự, do đó Ukraine phải vô hiệu hóa công trình.', 'https://vnexpress.net/ukraine-tuyen-bo-cau-crimea-la-muc-tieu-quan-su-4632545.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/5563187178137267820a-crimea-16-8046-2580-1689987086.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vIn5-b7Q8AHtMLyIEuz1QA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 07:52:59 +0700'),
(33, 'Nga bắt cựu chỉ huy dân quân Donetsk', 'Giới chức Nga bắt Girkin, cựu chỉ huy dân quân Donetsk, với cáo buộc kêu gọi hoạt động cực đoan.', 'https://vnexpress.net/nga-bat-cuu-chi-huy-dan-quan-donetsk-4632540.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/girkin-1689985001-1689985013-7975-1689985217.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=IslNaNj8Qwe9HGhWpC0eEg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 07:45:41 +0700'),
(34, 'Hàn Quốc nói Triều Tiên phóng tên lửa hành trình ra biển', 'Quân đội Hàn Quốc thông báo Triều Tiên phóng một số tên lửa hành trình ra vùng biển phía đông bán đảo.', 'https://vnexpress.net/han-quoc-noi-trieu-tien-phong-ten-lua-hanh-trinh-ra-bien-4632538.html', 'https://i1-vnexpress.vnecdn.net/2023/07/22/5563187178137267819a-trieu-tie-4716-8500-1689982696.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qSvabZcs6CoWSrJndUOZVQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 06:43:21 +0700'),
(35, 'Đội quân săn mìn định đoạt chiến dịch phản công của Ukraine', 'Để vô hiệu hóa bãi mìn dày đặc trước phòng tuyến Nga mở đường cho chiến dịch phản công, Ukraine phải dựa vào lực lượng công binh làm việc hoàn toàn thủ công.', 'https://vnexpress.net/doi-quan-san-min-dinh-doat-chien-dich-phan-cong-cua-ukraine-4631766.html', 'https://i1-vnexpress.vnecdn.net/2023/07/20/im819481-1689841789-5052-1689844110.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=8vRECzzjxHUBqWrwAVMIeg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 05:00:00 +0700'),
(36, 'Cái chết gây nhiều đồn đoán của con trai cố tổng thống Kennedy', 'Con trai cố tổng thống Kennedy qua đời trong vụ rơi máy bay khi 38 tuổi, song không phải ai cũng tin đó chỉ là tai nạn.', 'https://vnexpress.net/cai-chet-gay-nhieu-don-doan-cua-con-trai-co-tong-thong-kennedy-4632093.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/jfk-1689917377-1689917395-7267-1689917895.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=SIHvnakDYRqhQxbGxzIuKA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Sat, 22 Jul 2023 00:00:00 +0700'),
(37, 'Tòa Mỹ ấn định ngày xử vụ án tài liệu mật của ông Trump', 'Thẩm phán liên bang Aileen Cannon thông báo phiên tòa xử ông Trump liên quan vụ tài liệu mật sẽ diễn ra vào tháng 5/2024.', 'https://vnexpress.net/toa-my-an-dinh-ngay-xu-vu-an-tai-lieu-mat-cua-ong-trump-4632501.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/5563187178137267818a-my-168995-2243-7346-1689952316.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=E_CdGkO2lfBQ7suN8ed6oA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 22:12:33 +0700'),
(38, 'Ông Putin: Phương Tây thất vọng trước kết quả phản công của Ukraine', 'Tổng thống Putin nhận định phương Tây tỏ thái độ thất vọng rõ ràng khi cuộc phản công của Ukraine tới nay \"không mang lại kết quả nào\".', 'https://vnexpress.net/ong-putin-phuong-tay-that-vong-truoc-ket-qua-phan-cong-cua-ukraine-4632469.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/5563187178137267817a-nga-16899-1136-1632-1689944851.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7oz_33ng0ZCkz-gydMeFtQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 20:52:58 +0700'),
(39, 'Hệ lụy khi Nga rút khỏi Sáng kiến Ngũ cốc Biển Đen', 'Việc Nga rút khỏi thỏa thuận ngũ cốc với Ukraine có thể tăng áp lực cho thị trường toàn cầu, nguy cơ gây mất an ninh lương thực nghiêm trọng.', 'https://vnexpress.net/he-luy-khi-nga-rut-khoi-sang-kien-ngu-coc-bien-den-4632074.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/26-391e1f335e4b4b1aa6e416282b2-1901-4714-1689929905.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-TmqGQeB4vU_hq1Ml-f5Kw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 19:00:00 +0700'),
(40, 'Nga tố Ukraine gây nguy hiểm cho tàu dân sự tại Biển Đen', 'Điện Kremlin cáo buộc Kiev gây nguy hiểm cho vận tải hàng hải trên Biển Đen, sau khi Ukraine cảnh báo tàu đến cảng Nga đối mặt rủi ro.', 'https://vnexpress.net/nga-to-ukraine-gay-nguy-hiem-cho-tau-dan-su-tai-bien-den-4632446.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/5563187178137267816a-168993864-6990-8470-1689939077.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vzQbIr20PPl2mgMcTrpLAA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 18:32:04 +0700'),
(41, 'Thủ tướng Anwar muốn phổ biến tập thơ \'Nhật ký trong tù\' ở Malaysia', 'Thủ tướng Anwar cho biết ông muốn phổ biến tập thơ \"Nhật ký trong tù\" của Chủ tịch Hồ Chí Minh ở Malaysia, khi hội kiến Chủ tịch nước Võ Văn Thưởng.', 'https://vnexpress.net/thu-tuong-anwar-muon-pho-bien-tap-tho-nhat-ky-trong-tu-o-malaysia-4632422.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/ttxvn-vo-van-thuong-thu-tuong-4261-5484-1689935086.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=HOaV8Bo6bkx7kQiD0BC0PA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 17:47:24 +0700'),
(42, 'Người phụ nữ kể phút cạy hàm cá mập thoát thân', 'Lyudmila Emag, 47 tuổi, thoát khỏi con cá mập đang cắn vào đùi mình bằng cách cạy hàm răng sắc nhọn của nó để vào bờ biển ở New York.', 'https://vnexpress.net/nguoi-phu-nu-ke-phut-cay-ham-ca-map-thoat-than-4632183.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/ca-map-1689911819-4646-1689912180.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Sg0Zr5X3LDrNrT6yLxN7og', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 17:05:41 +0700'),
(43, 'Tổng thống Ukraine cách chức đại sứ ở Anh', 'Tổng thống Zelensky cách chức Đại sứ Ukraine ở Anh Vadym Prystaiko, không lâu sau khi ông này cho rằng Kiev đang mỉa mai đồng minh London.', 'https://vnexpress.net/tong-thong-ukraine-cach-chuc-dai-su-o-anh-4632370.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/33n93pu-highres-1689928532-7641-1689929403.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eyyD80UgmYxBkNijHgTPvg', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 16:29:53 +0700'),
(44, 'Đâm dao ở ga tàu Hàn Quốc, một người chết', 'Gà đàn ông đâm dao điên cuồng gần ga tàu điện ngầm Sillim, tây nam thủ đô Seoul, khiến một người chết và ba người bị thương.', 'https://vnexpress.net/dam-dao-o-ga-tau-han-quoc-mot-nguoi-chet-4632363.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/d68eef18d97047749804d90fed95f3-3369-1828-1689928316.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=uThOhKrBMGGlh74bMxcGew', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 16:16:47 +0700'),
(45, 'Cuộc sống của vận động viên thể hình 90 tuổi', 'Jim Arrington, 90 tuổi, người giữ danh hiệu vận động viên thể hình cao tuổi nhất thế giới, từng rất yếu ớt nên đã quyết tâm gắn bó với tập thể hình nhiều thập kỷ.', 'https://vnexpress.net/cuoc-song-cua-van-dong-vien-the-hinh-90-tuoi-4632089.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/ryanschudegwrpawire350677923-1-8901-6335-1689929050.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=f8lt1a8ykn-6KbHToz_RXQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 15:50:05 +0700'),
(46, 'Phu nhân Thủ tướng Malaysia ấn tượng với múa rối nước Việt Nam', 'Phu nhân Thủ tướng Malaysia bày tỏ ấn tượng khi cùng phu nhân Thủ tướng Phạm Minh Chính thưởng thức chương trình múa rối nước tại Hà Nội.', 'https://vnexpress.net/phu-nhan-thu-tuong-malaysia-an-tuong-voi-mua-roi-nuoc-viet-nam-4632357.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/phunhanmalaysia1-1689927737-5944-1689927835.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=UOzils6SXNm-AjxLSAmERA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 15:40:41 +0700'),
(47, 'Kiev chỉ trích Ba Lan vì dọa cấm ngũ cốc Ukraine', 'Phó thủ tướng Ukraine Stefanishyna chỉ trích Ba Lan vì dọa cấm cửa ngũ cốc của Kiev, trong bối cảnh thỏa thuận ngũ cốc Biển Đen đang bị đình chỉ.', 'https://vnexpress.net/kiev-chi-trich-ba-lan-vi-doa-cam-ngu-coc-ukraine-4632243.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/qip2kam2kjpglceapeipdbhreq-638-6989-9506-1689929730.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vH1zQ8YNLj2Oa4X6I_JI9w', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 15:25:35 +0700'),
(48, 'Nga diễn tập phóng tên lửa, phong tỏa Biển Đen', 'Tàu chiến Nga diễn tập bắn đạn thật, thực hành nội dung phong tỏa các khu vực ở Biển Đen sau khi chấm dứt sáng kiến ngũ cốc.', 'https://vnexpress.net/nga-dien-tap-phong-ten-lua-phong-toa-bien-den-4632291.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/IvanovetsJPG-1689923488-4548-1689923504.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=j2v-LyoKLGhJ8JsuY9HFoA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 14:41:01 +0700'),
(49, 'Phương Tây chuyển hướng từ cung cấp sang sửa vũ khí cho Ukraine', 'Mỹ và đồng minh đang chuyển trọng tâm hỗ trợ Ukraine, từ viện trợ lượng lớn vũ khí sang nỗ lực bảo trì, sửa chữa chúng.', 'https://vnexpress.net/phuong-tay-chuyen-huong-tu-cung-cap-sang-sua-vu-khi-cho-ukraine-4632165.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/Leopard2A61JPG-1689912864-1877-1689912934.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=nO_-5K1lvRsAvlO1e-7eYA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 14:29:15 +0700'),
(50, 'Thủ tướng Việt Nam, Malaysia thăm phố sách, thưởng thức cà phê', 'Thủ tướng Phạm Minh Chính và người đồng cấp Malaysia Anwar Ibrahim cùng thăm phố sách, thưởng thức cà phê sáng 21/7.', 'https://vnexpress.net/thu-tuong-viet-nam-malaysia-tham-pho-sach-thuong-thuc-ca-phe-4632278.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/DNG-4766.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=2ZQuxpmDWUMkwEcxM7A8-g', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 14:07:00 +0700'),
(51, 'Hàn Quốc cảnh báo hậu quả nếu Triều Tiên tấn công hạt nhân', 'Hàn Quốc nói Triều Tiên sẽ chịu hậu quả nghiêm trọng nếu dùng vũ khí hạt nhân, sau khi Bình Nhưỡng dọa đáp trả Washington đưa tàu ngầm đến bán đảo.', 'https://vnexpress.net/han-quoc-canh-bao-hau-qua-neu-trieu-tien-tan-cong-hat-nhan-4632207.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/2023-07-19t120046z-767144797-r-6161-4614-1689914149.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=asHV8cdLMNok538bTdE6uQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 13:50:38 +0700'),
(52, 'Thiên tai thách thức nỗ lực nuôi 1,4 tỷ dân của Trung Quốc', 'Đảm bảo an ninh lương thực cho hơn 1,4 tỷ dân là bài toán khó với Trung Quốc, khi biến đổi khí hậu gây ra thách thức ngày càng lớn.', 'https://vnexpress.net/thien-tai-thach-thuc-no-luc-nuoi-1-4-ty-dan-cua-trung-quoc-4630576.html', 'https://i1-vnexpress.vnecdn.net/2023/07/19/trung-quo-c-1689734244-1689734-6427-2405-1689734614.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ficR6Gr6a7eI6hbPjIfTPQ', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 11:53:06 +0700'),
(53, 'Nước Đông Phi trục xuất công dân Trung Quốc vì phân biệt chủng tộc', 'Malawi kết tội công dân Trung Quốc Lu Ke phân biệt chủng tộc, lợi dụng trẻ em và ra lệnh cho người này lập tức rời đi.', 'https://vnexpress.net/nuoc-dong-phi-truc-xuat-cong-dan-trung-quoc-vi-phan-biet-chung-toc-4632179.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/22071915041001chinesenationala-7755-8053-1689912609.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BVVGUxNSDcXUbjM7fngW3Q', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 11:38:42 +0700'),
(54, 'Chân dung bạn gái của tỷ phú Bill Gates', 'Paula Hurd, người đang hẹn hò với Bill Gates, là góa phụ của CEO công ty công nghệ Oracle và từng làm quản lý cấp cao tại doanh nghiệp phần mềm.', 'https://vnexpress.net/chan-dung-ban-gai-cua-ty-phu-bill-gates-4631892.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/1675959048-gettyimages-1239313-7954-6403-1689911784.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=MlyfBrWH2FTvWbtt_SaZJw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 11:05:52 +0700'),
(55, 'Người lạc trên biển hai tháng không cầu cứu vì \'sĩ diện\'', 'Shaddock cho biết trong hai tháng trôi dạt trên biển, ông vẫn có thể liên lạc với gia đình, nhưng không cầu cứu vì muốn \"giữ thể diện\".', 'https://vnexpress.net/nguoi-lac-tren-bien-hai-thang-khong-cau-cuu-vi-si-dien-4632108.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/33PD8W8preview-1689906147-2205-1689906177.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=o3d6irVMh3vvYpaJ7j4W2w', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 10:59:45 +0700'),
(56, 'Bị chỉ trích vì tổ chức đám cưới xa hoa cho chó cưng', 'Hai người phụ nữ ở Jakarta bị chỉ trích và phải xin lỗi sau khi tổ chức đám cưới xa hoa cho chó cưng tại trung tâm thương mại.', 'https://vnexpress.net/bi-chi-trich-vi-to-chuc-dam-cuoi-xa-hoa-cho-cho-cung-4631821.html', 'https://i1-vnexpress.vnecdn.net/2023/07/20/dam-cuoi-1689842359-6312-1689842541.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Eo4vOpnpoyP_DdZgj7e15A', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 10:51:08 +0700'),
(57, 'Ukraine nêu lý do không thể đánh chặn tên lửa Nga', 'Tên lửa siêu thanh Onyx được Nga dùng tập kích Odessa có tốc độ cao và khả năng bay bám biển, khiến quân đội Ukraine không thể đánh chặn.', 'https://vnexpress.net/ukraine-neu-ly-do-khong-the-danh-chan-ten-lua-nga-4632018.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/p800onyx1-1689876756-3191-1689876915.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=HvhuGU1o5n62_ILu-Rm5aA', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 10:29:13 +0700'),
(58, 'Moskva tố tiêm kích F-16 Mỹ quấy rối máy bay Nga ở Syria', 'Quân đội Nga nói rằng máy bay nước này chịu tác động từ hệ thống dẫn đường trên tiêm kích F-16, nhưng không cho biết chi tiết.', 'https://vnexpress.net/moskva-to-tiem-kich-f-16-my-quay-roi-may-bay-nga-o-syria-4632116.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/F161-1689906929-3521-1689907035.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=6mAvZ5ThA99clkkcYz_ltw', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 10:05:51 +0700'),
(59, 'Cánh cửa có thể đưa Việt Nam tới thị trường Halal 7.000 tỷ USD', 'Với thế mạnh về sản xuất lương thực và xuất khẩu, Việt Nam có thể tăng cường hợp tác với Malaysia để mở cánh cửa tiếp cận thị trường Halal toàn cầu trị giá 7.000 tỷ USD.', 'https://vnexpress.net/canh-cua-co-the-dua-viet-nam-toi-thi-truong-halal-7-000-ty-usd-4632012.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/img-0043-1689872641-8368-1689872929.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=C9YK1XK0lM-Y3Iu-2VwR-A', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 10:04:45 +0700'),
(60, 'Chỉ huy Wagner nói hơn 22.000 tay súng đã chết ở Ukraine', 'Một chỉ huy Wagner tiết lộ tập đoàn này ghi nhận hơn 22.000 tay súng thiệt mạng và hơn 40.000 bị thương trong chiến dịch tại Ukraine.', 'https://vnexpress.net/chi-huy-wagner-noi-hon-22-000-tay-sung-da-chet-o-ukraine-4632072.html', 'https://i1-vnexpress.vnecdn.net/2023/07/21/5563187178137267649a-wagner-94-6474-5064-1689903880.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Q8DiSGbVfvD2XsUDxCB69g', '2023-07-23 00:00:00', 'hailan', NULL, NULL, 'Fri, 21 Jul 2023 09:03:03 +0700');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `link` varchar(200) NOT NULL,
  `thumb` text,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `description`, `link`, `thumb`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'Khóa học lập trình Frontend Master', 'Khóa học sẽ giúp bạn trở thành một chuyên gia Frontend với đầy đủ các kiến thức về HTML, CSS, JavaScript, Bootstrap, jQuery, chuyển PSD thành HTML ...', 'https://zendvn.com/khoa-hoc-lap-trinh-frontend-master/', 'rEpDUQCxe4.jpeg', '2019-04-15 00:00:00', 'hailan', '2019-04-24 13:28:03', 'hailan', 'active'),
(2, 'Học lập trình trực tuyến', 'Học trực tuyến giúp bạn tiết kiệm chi phí, thời gian, cập nhật được nhiều kiến thức mới nhanh nhất và hiệu quả nhất', 'https://zendvn.com/', 'K6B1O6UNCb.jpeg', '2019-04-18 00:00:00', 'hailan', '2019-04-24 13:28:06', 'hailan', 'active'),
(3, 'Ưu đãi học phí', 'Tổng hợp các trương trình ưu đãi học phí hàng tuần, hàng tháng đến tất các các bạn với các mức giảm đặc biệt 50%, 70%,..', 'https://zendvn.com/uu-dai-hoc-phi-tai-zendvn/', 'LWi6hINpXz.jpeg', '2019-04-24 00:00:00', 'hailan', '2021-07-10 00:00:00', 'hailan', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `fullname`, `password`, `avatar`, `level`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123456', 'e10adc3949ba59abbe56e057f20f883e', '1ctW8mj8vq.png', 'admin', '2014-12-10 08:55:35', 'admin', '2019-05-04 14:47:14', 'hailan', 'active'),
(2, 'hailan', 'hailan@gmail.com', 'hailan', 'e10adc3949ba59abbe56e057f20f883e', '1eSGmvZ3gM.jpeg', 'member', '2014-12-13 07:20:03', 'admin', '2019-05-04 08:47:04', 'hailan', 'active'),
(3, 'user123', 'test@gmail.com', 'user123', 'e10adc3949ba59abbe56e057f20f883e', 'Hb1QSn1CL8.png', 'member', '2019-05-04 00:00:00', 'admin', '2019-05-04 08:47:07', 'hailan', 'active'),
(4, 'user456', 'user456@gmail.com', 'user456', 'e10adc3949ba59abbe56e057f20f883e', 'J1uknUz0T6.png', 'admin', '2019-05-04 00:00:00', 'admin', '2023-07-04 00:00:00', 'hailan', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_article`
--
ALTER TABLE `rss_article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rss_article`
--
ALTER TABLE `rss_article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
