-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 10, 2021 lúc 07:44 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `banner_name`, `banner_img`, `banner_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Quảng 123', '1621179541004.jpg', 0, 1, 1, '2021-05-16 08:39:01', '2021-05-16 08:39:01'),
(4, 'banner 1', '1621180472127.jpg', 1, 1, 1, '2021-05-16 08:54:32', '2021-05-16 08:54:32'),
(5, 'banner 2', '1621180483254.jpg', 1, 1, 1, '2021-05-16 08:54:43', '2021-05-16 08:54:43'),
(6, 'banner 3', '1621180687288.jpg', 2, 1, 1, '2021-05-16 08:58:07', '2021-05-16 08:58:07'),
(7, 'banner 4', '1621180699556.jpg', 2, 1, 1, '2021-05-16 08:58:19', '2021-05-16 08:58:19'),
(8, 'Quảng cáo 123', '1621167098662.jpg', 0, 1, 1, '2021-05-16 05:11:38', '2021-05-16 08:37:39'),
(9, 'Quảng cáo 2', '1621177556568.jpg', 0, 1, 1, '2021-05-16 08:05:56', '2021-05-16 08:05:56'),
(10, 'Quảng 123', '1621179541004.jpg', 0, 1, 1, '2021-05-16 08:39:01', '2021-05-16 08:39:01'),
(11, 'Quảng cáo 123', '1621167098662.jpg', 0, 1, 1, '2021-05-16 05:11:38', '2021-05-16 08:37:39'),
(12, 'Quảng cáo 2', '1621177556568.jpg', 0, 1, 1, '2021-05-16 08:05:56', '2021-05-16 08:05:56'),
(13, 'Quảng 123', '1621179541004.jpg', 0, 1, 1, '2021-05-16 08:39:01', '2021-05-16 08:39:01'),
(14, 'banner 1', '1621180472127.jpg', 2, 1, 1, '2021-05-16 08:54:32', '2021-05-16 08:54:32'),
(15, 'banner 2', '1621180483254.jpg', 2, 1, 1, '2021-05-16 08:54:43', '2021-05-16 08:54:43'),
(16, 'banner 3', '1621180687288.jpg', 2, 1, 1, '2021-05-16 08:58:07', '2021-05-16 08:58:07'),
(17, 'banner 4', '1621180699556.jpg', 2, 1, 1, '2021-05-16 08:58:19', '2021-05-16 08:58:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `bills_id` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `product_id`, `bills_id`, `quanty`, `total`) VALUES
(76, 44, 61, 1, 11500000),
(77, 44, 62, 1, 11500000),
(80, 44, 66, 1, 11500000),
(81, 51, 67, 1, 14073000),
(82, 44, 67, 1, 11500000),
(83, 48, 68, 1, 10941000),
(85, 44, 70, 1, 11500000),
(86, 44, 71, 1, 11500000),
(87, 46, 72, 1, 5890000),
(88, 50, 73, 3, 49335000),
(89, 50, 74, 1, 16445000),
(90, 45, 74, 1, 5361000),
(91, 8, 75, 1, 12390000),
(92, 9, 75, 1, 10100000),
(93, 10, 75, 1, 17390000),
(94, 11, 75, 1, 12990000),
(95, 5, 76, 1, 10900000),
(96, 55, 77, 2, 29000000),
(97, 54, 78, 1, 25000000),
(98, 55, 79, 1, 14500000),
(99, 55, 80, 1, 14500000),
(100, 47, 81, 1, 9591000),
(101, 55, 82, 1, 14500000),
(102, 54, 83, 1, 25000000),
(103, 55, 84, 1, 14500000),
(104, 55, 85, 2, 29000000),
(105, 6, 86, 1, 12590000),
(106, 9, 87, 1, 10100000),
(107, 51, 88, 1, 14073000),
(108, 43, 89, 1, 5590000),
(109, 6, 90, 1, 12590000),
(110, 55, 91, 1, 14500000),
(111, 10, 92, 1, 17390000),
(112, 39, 93, 1, 8190000),
(113, 9, 94, 1, 10100000),
(114, 44, 95, 1, 11500000),
(115, 43, 96, 1, 5590000),
(116, 41, 97, 1, 6190000),
(117, 49, 98, 1, 12668000),
(118, 39, 98, 1, 8190000),
(119, 7, 99, 1, 9190000),
(120, 10, 99, 1, 17390000),
(121, 55, 100, 2, 29000000),
(122, 49, 101, 1, 12668000),
(123, 55, 101, 1, 14500000),
(124, 2, 102, 1, 12900000),
(125, 3, 102, 1, 12900000),
(126, 10, 103, 1, 17390000),
(127, 5, 104, 1, 10900000),
(128, 8, 104, 1, 12390000),
(129, 2, 105, 1, 12900000),
(130, 5, 105, 1, 10900000),
(131, 39, 106, 1, 8190000),
(132, 40, 106, 1, 5390000),
(133, 33, 107, 1, 19090000),
(134, 49, 107, 1, 12668000),
(135, 39, 107, 1, 8190000),
(136, 55, 108, 1, 14500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `coupon` tinyint(1) NOT NULL,
  `coupon_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `code`, `email`, `display_name`, `phone`, `address`, `city`, `district`, `province`, `note`, `total`, `quanty`, `status`, `created_at`, `updated_at`, `coupon`, `coupon_id`) VALUES
(61, 'ce74857886384e0cbdee73716da210ac', 'quangvinh290720@gmail.com', 'abc', '123', '20 T?ng Nh?n Phú b', 'Thái Bình', 'Huyện Kiến Xương', 'Xã Vũ An', '', 11540000, 1, 0, '2021-05-22 04:47:42', '2021-06-19 04:47:42', 0, 1),
(62, '19c73a755f994f2b828a1f2d63ea1bb5', 'quangvinh290720@gmail.com', 'sena', '0123151515', '20 T?ng Nh?n Phú b', 'Hà Nam', 'Thành phố Phủ Lý', 'Xã Kim Bình', '', 11500000, 1, 0, '2021-05-20 05:40:59', '2021-06-20 05:40:59', 0, 1),
(66, '829fd1fdba814fe9934b2fc6faf05894', 'quangvinh290720@gmail.com', 'sena', '0565796988', '20 Tăng nhơn phú', 'Hà Nam', 'Huyện Duy Tiên', 'Xã Tiên Nội', '', 11500000, 1, 0, '2021-06-20 01:37:12', '2021-06-20 01:37:12', 0, 1),
(67, 'a777d36077ba48aa9dc0ccff5693560b', 'quangvinh290720@gmail.com', 'abc', '123', '20 Tăng nhơn phú', 'Hà Nam', 'Thành phố Phủ Lý', 'Xã Tiên Hiệp', '', 25613000, 2, 0, '2021-06-24 23:02:19', '2021-06-24 23:02:19', 0, 1),
(68, 'b3fc5c62d9bf4113985a34133407e1a7', 'quangvinh290720@gmail.com', 'abc', '0565796988', '20 Tăng nhơn phú', 'Nam Định', 'Huyện Trực Ninh', 'Xã Trực Mỹ', '', 10981000, 1, 0, '2021-06-30 05:34:33', '2021-06-30 05:34:33', 0, 1),
(70, 'a643fe87aa0b4ae5b649dbed2dd536ef', 'quangvinh290720@gmail.com', 'nguyễn văn a', '0565796988', 'iphone 12 pro max tăng nhơn phú', 'Nam Định', 'Huyện Xuân Trường', 'Xã Xuân Vinh', '', 11440000, 1, 0, '2021-06-29 18:22:21', '2021-06-29 18:22:21', 1, 4),
(71, 'f524990365d0487983a2faa18f8a4c60', 'quangvinh290720@gmail.com', 'nguyễn văn a', '0565796988', '20 Tăng nhơn phú', 'Nam Định', 'Huyện Trực Ninh', 'Xã Trực Đại', '', 11240000, 1, 0, '2021-06-29 20:09:42', '2021-06-29 20:09:42', 1, 4),
(72, 'fe0fe6742b76496e9e33efddfb8ef6ba', 'ccc@yahoo.com', 'sdsadas', '0878841435', '24', 'Thái Bình', 'Huyện Thái Thụy', 'Xã Thụy Xuân', '1', 5630000, 1, 0, '2021-06-29 22:00:30', '2021-06-29 22:00:30', 1, 4),
(73, '03570e4c75de41d4bf12cbdea8f2e739', 'quangvinh290720@gmail.com', 'admin', '0823456789', '24', 'Thanh Hóa', 'Huyện Thường Xuân', 'Xã Xuân Cẩm', '123', 49375000, 3, 0, '2021-06-29 22:42:11', '2021-06-29 22:42:11', 0, 1),
(74, '438ad5f21524479d9de9e7a89a57ae83', 'quangvinh290720@gmail.com', 'admin', '0923456789', '24', 'Thành phố Hải Phòng', 'Huyện Kiến Thuỵ', 'Xã Đoàn Xá', 'xxx', 21546000, 2, 0, '2021-06-29 23:03:52', '2021-06-29 23:03:52', 1, 4),
(75, '7bb0cd72aec4416d975864bd48327b79', 'quangvinh290720@gmail.com', 'admin', '0923456789', '123', 'Ninh Bình', 'Huyện Gia Viễn', 'Xã Gia Tân', '', 52610000, 4, 0, '2021-06-29 23:29:41', '2021-06-29 23:29:41', 1, 4),
(76, 'ff543a0e6cb740c3b98d0e6e25809f90', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', 'xxxxxxxx', 'Hà Giang', 'Huyện Đồng Văn', 'Xã Lũng Thầu', '', 10640000, 1, 0, '2021-07-02 20:32:08', '2021-07-02 20:32:08', 1, 4),
(77, 'da83997e2ae9413187e07c76eccb0a17', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Thái Bình', 'Huyện Đông Hưng', 'Xã Minh Tân', '1234', 29040000, 2, 0, '2021-07-09 03:30:36', '2021-07-09 03:30:36', 0, 1),
(78, '158fdb92ee8e4cae826c009ca7175432', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Yên Mỹ', 'Xã Lý Thường Kiệt', '1', 25040000, 1, 0, '2021-07-09 03:30:36', '2021-07-09 03:30:36', 0, 1),
(79, '529072a39df6402fa6fa6cd532b05a49', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Văn Giang', 'Xã Nghĩa Trụ', '123', 14540000, 1, 0, '2021-07-09 03:30:36', '2021-07-09 03:30:36', 0, 1),
(80, 'b2d38c76c71c45a2b3f89a6a1e9d4ade', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Thành phố Nam Định', 'Phường Trần Quang Khải', 'zxc xcz', 14540000, 1, 0, '2021-07-09 03:30:36', '2021-07-09 03:30:36', 0, 1),
(81, 'b93ea4676f094ca9928c11299ace452a', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Ninh Bình', 'Huyện Nho Quan', 'Xã Thanh Lạc', 'x', 9631000, 1, 0, '2021-07-09 03:30:36', '2021-07-09 03:30:36', 0, 1),
(82, '36a790a4076a40258d22be2565988803', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', 'z', 'Ninh Bình', 'Thành phố Tam Điệp', 'Xã Quang Sơn', 'xxxx', 14540000, 1, 0, '2021-07-09 04:35:48', '2021-07-09 04:35:48', 0, 1),
(83, 'e435382923fc4f07ab0f1039793106d7', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Thành phố Hải Phòng', 'Huyện Kiến Thuỵ', 'Xã Đoàn Xá', 'xxxx', 25040000, 1, 0, '2021-07-10 05:24:49', '2021-07-10 05:24:49', 0, 1),
(84, 'ee576b299dbf4e75a53a4a2a00dc65bf', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Ninh Bình', 'Thành phố Tam Điệp', 'Xã Quang Sơn', 'xzzzxzx', 14540000, 1, 0, '2021-07-10 05:33:07', '2021-07-10 05:33:07', 0, 1),
(85, 'f21e80570e834500b0e4b0219083b3af', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', 'z', 'Nghệ An', 'Huyện Đô Lương', 'Xã Lưu Sơn', 'xc zxczxczx', 29040000, 2, 0, '2021-07-10 05:35:47', '2021-07-10 05:35:47', 0, 1),
(86, 'bfc125bf2218400784b961eff5589ea3', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Ninh Bình', 'Huyện Yên Mô', 'Xã Yên Nhân', 'zxzxzx', 12630000, 1, 0, '2021-07-10 05:37:37', '2021-07-10 05:37:37', 0, 1),
(87, '099307c0cfb04bf881f9fed92c2b5bc8', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Huyện Mỹ Lộc', 'Xã Mỹ Thịnh', 'zzzzzzz', 10140000, 1, 0, '2021-07-10 05:45:26', '2021-07-10 05:45:26', 0, 1),
(88, '5d8e1900810e418f91dc972b98c73c7f', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nghệ An', 'Huyện Nam Đàn', 'Xã Nam Lộc', 'xcvxcvx', 14113000, 1, 0, '2021-07-10 05:52:07', '2021-07-10 05:52:07', 0, 1),
(89, '3874100ab52c4db6bc12bfd765cf3642', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Ninh Bình', 'Huyện Gia Viễn', 'Xã Gia Trấn', '2222', 5630000, 1, 0, '2021-07-10 05:54:25', '2021-07-10 05:54:25', 0, 1),
(90, 'd85e9ace032f41d1a1c05b91fc205ebe', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Thành phố Nam Định', 'Phường Trần Quang Khải', 'zxzczxczx', 12630000, 1, 0, '2021-07-09 18:05:59', '2021-07-09 18:05:59', 0, 1),
(91, '0b394a741c764e4e96b79652766293c2', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hải Dương', 'Huyện Bình Giang', 'Xã Hồng Khê', 'a12312312', 14540000, 1, 0, '2021-07-09 18:16:31', '2021-07-09 18:16:31', 0, 1),
(92, '539b73ffba104ff59c9ae94159f30610', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Văn Lâm', 'Xã Đình Dù', '12312312', 17430000, 1, 0, '2021-07-09 21:12:22', '2021-07-09 21:12:22', 0, 1),
(93, '985e7204c5ea4650ab303c968fbc73a3', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Thái Bình', 'Thành phố Thái Bình', 'Xã Đông Thọ', '12312', 8230000, 1, 0, '2021-07-09 21:17:22', '2021-07-09 21:17:22', 0, 1),
(94, 'c269b43479a94e63a49a2351f0329778', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Huyện Mỹ Lộc', 'Xã Mỹ Tiến', '212121', 10140000, 1, 0, '2021-07-09 21:21:40', '2021-07-09 21:21:40', 0, 1),
(95, '50bf080fe8c2434bb47c71bd60b6a85c', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hà Nam', 'Huyện Duy Tiên', 'Xã Yên Bắc', '', 11540000, 1, 0, '2021-07-09 21:24:15', '2021-07-09 21:24:15', 0, 1),
(96, 'c9eedb7d3e0c44de951607b4d8efea83', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Huyện Mỹ Lộc', 'Xã Mỹ Hưng', '1231231', 5630000, 1, 0, '2021-07-09 21:28:18', '2021-07-09 21:28:18', 0, 1),
(97, 'f65fdf35f9d84526a06d24c389ed6bbe', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Thành phố Hải Phòng', 'Huyện An Lão', 'Xã Thái Sơn', 'zczxczx', 6230000, 1, 0, '2021-07-09 21:34:17', '2021-07-09 21:34:17', 0, 1),
(98, 'f1c0cd820a6c4545bd3a04d41f3cfe37', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Văn Giang', 'Xã Nghĩa Trụ', '1234', 20898000, 2, 0, '2021-07-09 21:34:17', '2021-07-09 21:34:17', 0, 1),
(99, '689be981e09f4c93b0293585af1ad58c', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Văn Giang', 'Xã Long Hưng', 'q213', 26620000, 2, 0, '2021-07-09 21:34:17', '2021-07-09 21:34:17', 0, 1),
(100, '99b423a3f6954ebc9c1f2e3553559e36', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Huyện Ý Yên', 'Xã Yên Dương', 'xzzx', 29040000, 2, 0, '2021-07-09 20:02:14', '2021-07-09 20:02:14', 0, 1),
(101, '2f030ea288eb41679e04006b7f6cecbd', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Sơn La', 'Huyện Quỳnh Nhai', 'Xã Chiềng Khay', 'hbbn', 27208000, 2, 0, '2021-07-09 20:15:23', '2021-07-09 20:15:23', 0, 1),
(102, '34f6a3b19de040a1afc9bbbb41137e45', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Ninh Bình', 'Thành phố Tam Điệp', 'Phường Yên Bình', '123', 25840000, 2, 0, '2021-07-09 20:21:30', '2021-07-09 20:21:30', 0, 1),
(103, '022470e5266445848d823624eebb8bb0', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Lai Châu', 'Huyện Tam Đường', 'Thị trấn Tam Đường', '12312', 17430000, 1, 0, '2021-07-09 20:25:40', '2021-07-09 20:25:40', 0, 1),
(104, '2829acc665694f129dcfabd861b6c936', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Sơn La', 'Huyện Quỳnh Nhai', 'Xã Chiềng Khay', '', 23330000, 2, 0, '2021-07-09 20:28:53', '2021-07-09 20:28:53', 0, 1),
(105, 'f95950e775fc49c3b75578aacc70eae8', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Nam Định', 'Huyện Ý Yên', 'Xã Yên Hưng', '1', 23540000, 2, 0, '2021-07-09 20:42:53', '2021-07-09 20:42:53', 1, 4),
(106, 'ecf27365b8fd46c88bcb89d75ac12e2c', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Hưng Yên', 'Huyện Văn Giang', 'Xã Tân Tiến', 'xxxx', 13620000, 2, 0, '2021-07-10 01:06:27', '2021-07-10 01:06:27', 0, 1),
(107, '6d4bbd2a416f4bc3bbcca325968e635e', 'quangvinh290720@gmail.com', 'admin', '0923456789', '123', 'Ninh Bình', 'Huyện Gia Viễn', 'Xã Gia Tiến', 'zzxczx', 39688000, 3, 0, '2021-07-10 01:57:01', '2021-07-10 01:57:01', 1, 4),
(108, '106ddf24094e4a6cad0ccef56e5ef436', 'nguyentanthanh1142@gmail.com', 'nguyen tan thanh', '0923456789', '24', 'Sơn La', 'Thành phố Sơn La', 'Phường Tô Hiệu', '12312312', 14540000, 1, 0, '2021-07-11 05:24:22', '2021-07-11 05:24:22', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `metadesc`, `metakey`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Tivi', 'tivi', '', '', 1, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(2, 'Máy lạnh', 'may-lanh', '', '', 1, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(3, 'Tủ lạnh', 'tu-lanh', '', '', 1, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(4, 'Máy lọc nước', 'may-loc-nuoc', '', '', 1, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(5, 'Máy nước nóng', 'may-nuoc-nong', '', '', 1, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(6, 'Điện gia dụng', 'dien-gia-dung', '', '', 1, '2021-05-21 03:19:34', '2021-05-21 03:19:34', 8, 8),
(8, 'Dàn Karaoke', 'dan-karaoke', '', '', 1, '2021-05-21 03:20:35', '2021-05-21 03:20:35', 8, 8),
(10, 'Máy lạnh 1', 'may-lanh', '', '', 0, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(11, 'Tủ lạnh 1', 'tu-lanh-1', '', '', 0, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(12, 'Máy lọc nước 1', 'may-loc-nuoc-1', '', '', 0, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(13, 'Máy nước nóng 1', 'may-nuoc-nong-1', '', '', 0, '2021-05-21 02:47:31', '2021-05-21 02:47:31', 0, 0),
(14, 'Điện gia dụng 1', 'dien-gia-dung-1', '', '', 0, '2021-05-21 03:19:34', '2021-05-21 03:19:34', 8, 8),
(15, 'Dàn Karaoke 1', 'dan-karaoke-1', '', '', 0, '2021-05-21 03:20:35', '2021-05-21 03:20:35', 8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configweb`
--

CREATE TABLE `configweb` (
  `id` bigint(20) NOT NULL,
  `nameweb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logomobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_store` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configweb`
--

INSERT INTO `configweb` (`id`, `nameweb`, `web_detail`, `hotline`, `logo`, `logomobile`, `icon`, `email`, `address_store`, `status`) VALUES
(1, 'Điện máy Thành Vinh', 'Cty TNHH 2 thành viên lớn nhất khu vực ĐNA', '012123', 'dmtv.png', '1623332248732.jpg', '1623332248740.jpg', 'dmtv@gmail.com', '123 abc', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `address`, `subject`, `content`, `status`, `created_at`) VALUES
(19, 'test 11', '0123456789', 'vip@gmail.com', 'iphone 12 pro max tăng nhơn phú', 'liên hệ', 'Where does it come from?\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n', 1, '2021-05-17 07:49:02'),
(20, 'test 12', '0123456789', 'vip@gmail.com', 'iphone 12 pro max tăng nhơn phú', 'liên hệ', 'Where does it come from?\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n', 1, '2021-05-17 07:49:02'),
(21, 'Adu', '123', 'quangvinh290720@gmail.com', '20 Tăng nhơn phú', 'tăng nhơn phú', 'tăng nhơn phú', 1, '2021-05-24 06:55:23'),
(22, 'admin', 'exception1', 'quangvinh290720@gmail.com', '20 Tăng nhơn phú', '20 Tăng nhơn phú', '20 Tăng nhơn phú', 1, '2021-05-24 06:58:08'),
(23, 'vinh', 'iphone 12 pro max tăng nhơn phú', 'quangvinh290720@gmail.com', 'iphone 12 pro max tăng nhơn phú', 'iphone 12 pro max tăng nhơn phú', 'iphone 12 pro max tăng nhơn phú', 1, '2021-05-24 08:09:20'),
(24, 'admin', '123', 'quangvinh290720@gmail.com', '20 T?ng Nh?n Phú b', 'iphone 12 pro max tăng nhơn phú', '123', 1, '2021-06-17 09:23:58'),
(25, '12', '123', '12@gmail.com', '123', '123', '123', 1, '2021-06-17 09:26:21'),
(26, 'quangvinh290720', '', 'quangvinh290720@gmail.com', 'quangvinh290720', 'quangvinh290720', 'quangvinh290720', 1, '2021-06-17 09:26:54'),
(27, 'quangvinh290720@gmail.com', '123', 'quangvinh290720@gmail.com', 'quangvinh290720@gmail.com', 'quangvinh290720@gmail.com', 'quangvinh290720@gmail.com', 1, '2021-06-17 09:36:12'),
(28, 'asd123', '0923456789', 'nguyentanthanh1142@gmail.com', '24', '123', '...', 1, '2021-07-10 04:43:16'),
(29, 'asd123', '0923456789', 'nguyentanthanh1142@gmail.com', '24', '232', '0212', 1, '2021-07-10 06:07:42'),
(30, 'Thanh toán Smartpay', '0923456789', 'nguyentanthanh1142@gmail.com', '24', '1231231', '2adasdasdas', 1, '2021-07-10 06:13:10'),
(31, 'asd123', '0878841435', 'ccc@yahoo.com', '24', '1231231', 'test', 1, '2021-07-10 07:12:39'),
(32, 'asd123', '0878841435', 'quangvinh290720@gmail.com', '24', '1231231', 'test', 1, '2021-07-10 07:13:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` int(11) NOT NULL,
  `pricesale` double NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp(),
  `end` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `available`, `pricesale`, `start`, `end`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Null', 0, 0, '2021-06-29 17:59:11', '2021-06-29 17:59:11', 0, '2021-06-29 17:59:11', 8, '2021-06-29 17:59:11', 8),
(2, 'ASASBBNAABWELQ', 11, 100000, '2021-06-12 10:24:30', '2021-06-30 10:24:30', 1, '2021-06-12 10:24:30', 8, '2021-06-12 10:24:30', 8),
(4, 'vietnamvodich', 3, 300000, '2021-06-19 10:00:00', '2021-07-31 10:00:00', 1, '2021-06-20 01:37:02', 8, '2021-06-20 01:37:02', 8),
(6, 'ASASBWELQP', 0, 100000, '2021-06-12 17:23:28', '2021-06-29 17:23:28', 1, '2021-06-12 17:23:28', 8, '2021-06-12 17:23:28', 8),
(8, 'CR9pjPcY5AG7', 12, 200000, '2021-06-29 10:00:00', '2021-07-06 10:00:00', 1, '2021-06-30 03:32:36', 5, '2021-06-30 03:32:36', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_slug`, `manufacturer_img`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Samsung', 'samsung', 'Samsung1942-b_51.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(2, 'Casper', 'casper', 'Casper1942-b_5.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(3, 'Panasonic ', 'panasonic', 'Panasonic2002-b.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(4, 'Toshiba', 'toshiba', 'Toshiba2002-b_12.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(5, 'Sony', 'sony', 'Sony1942-b_57.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(6, 'LG', 'lg', 'LG2002-b_13.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(7, 'Sharp', 'sharp', 'Sharp1942-b_48.png', 1, '2021-05-21 03:33:16', '2021-05-21 03:33:16', 0, 0),
(9, 'Kangaroo', 'kangaroo', '1621684793100.jpg', 1, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(10, 'Kangaroo 1', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(11, 'Kangaroo 2', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(12, 'Kangaroo 3', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(13, 'Kangaroo 4', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(14, 'Kangaroo 5', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(15, 'Kangaroo 6', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8),
(16, 'Kangaroo 7', 'kangaroo', '1621684793100.jpg', 0, '2021-05-22 04:59:53', '2021-05-22 04:59:53', 8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` bigint(20) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_status` int(11) NOT NULL,
  `orders` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_slug`, `menu_status`, `orders`, `parent_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Trang chủ', 'trang-chu', 1, 1, 0, '2021-06-16 16:19:15', '2021-06-16 16:19:15', 8, 8),
(2, 'Sản phẩm', 'san-pham', 1, 2, 0, '2021-06-16 16:19:15', '2021-06-16 16:19:15', 8, 8),
(3, 'Bài viết', 'bai-viet', 1, 3, 0, '2021-06-16 16:19:15', '2021-06-16 16:19:15', 8, 8),
(4, 'Liên hệ', 'lien-he', 1, 4, 0, '2021-06-16 16:19:15', '2021-06-16 16:19:15', 8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optiongroups`
--

CREATE TABLE `optiongroups` (
  `optiongroups_id` bigint(20) NOT NULL,
  `optiongroupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optiongroups`
--

INSERT INTO `optiongroups` (`optiongroups_id`, `optiongroupname`, `metadesc`, `metakey`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dung tích', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(2, 'Khối lượng', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(3, 'Công suất', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(4, 'Độ phân giải', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(5, 'Loại tivi', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(6, 'Loại máy', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(7, 'Tiêu thụ điện', '', '', 1, 0, 0, '2021-06-01 15:32:35', '2021-06-01 15:32:35'),
(8, 'Tiêu thụ điện 1', '<p>Ti&ecirc;u thụ điện 1</p>\r\n', ' Tiêu thụ điện 1', 2, 8, 8, '2021-06-02 08:38:20', '2021-06-02 08:38:20'),
(9, 'Tiêu thụ điện 233', '<p>Ti&ecirc;u thụ điện 23</p>\r\n', 'Tiêu thụ điện 23', 2, 8, 8, '2021-06-02 09:25:08', '2021-06-02 09:57:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `options_id` bigint(20) NOT NULL,
  `optiongroup_id` bigint(20) NOT NULL,
  `optionname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`options_id`, `optiongroup_id`, `optionname`, `metadesc`, `metakey`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dưới 8 Kg (2-3 người)\r\n', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(2, 2, 'Từ 8 - 9 Kg (3-5 người)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(3, 2, 'Từ 9.5 - 10 Kg (5-7 người)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(4, 2, 'Trên 10 Kg (trên 7 người)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(5, 3, '1 HP', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(6, 3, '1.5 HP', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(7, 3, '2 HP', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(8, 3, '2.5 HP', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(9, 4, '4K', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(10, 4, 'Full HD', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(11, 5, '32 inch', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(12, 5, '43 inch', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(13, 6, '1 chiều (chỉ làm lạnh)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(14, 6, '2 chiều (có sưởi ấm)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(15, 7, '0.61 kW/h, 5 sao (Hiệu suất năng lượng 6.0)', '', '', 1, 0, 0, '2021-06-01 16:05:18', '2021-06-01 16:05:18'),
(16, 7, 'Tiêu thụ điện 123', '<p>123</p>\r\n', '123', 0, 8, 8, '2021-06-02 10:33:15', '2021-06-02 10:33:15'),
(17, 7, 'Tiêu thụ điện 1234', '<p>Ti&ecirc;u thụ điện 1234</p>\r\n', 'Tiêu thụ điện 1234', 0, 8, 8, '2021-06-02 10:34:12', '2021-06-03 02:43:19'),
(19, 8, 'Tiêu thụ điện 111', '<p>Ti&ecirc;u thụ điện 111</p>\r\n', 'Tiêu thụ điện 111', 0, 8, 8, '2021-06-03 02:43:50', '2021-06-03 02:43:50'),
(20, 7, 'Tiêu thụ điện 11', '<p>Ti&ecirc;u thụ điện 111</p>\r\n', 'Tiêu thụ điện 111', 0, 8, 8, '2021-06-03 02:44:25', '2021-06-03 02:44:25'),
(21, 7, 'ttd', '<p>ttd</p>\r\n', 'ttd', 0, 8, 8, '2021-06-03 02:45:00', '2021-06-03 02:45:00'),
(22, 7, 'ttd 1', '<p>ttd 1</p>\r\n', 'ttd 1', 0, 8, 8, '2021-06-03 02:45:23', '2021-06-03 02:45:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` bigint(20) NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` int(11) NOT NULL,
  `page_topic` bigint(20) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_title`, `page_slug`, `page_detail`, `page_img`, `page_metakey`, `page_metadesc`, `page_status`, `page_topic`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(20, 'Chính sách khuyến mãi', 'chinh-sach-khuyen-mai', '<p>Ưu đ&atilde;i khi thanh to&aacute;n bằng VNPAY-QR</p>\r\n\r\n<p>Khi qu&yacute; kh&aacute;ch chọn h&igrave;nh thức thanh to&aacute;n l&agrave; <strong>VNPAY-QR</strong>, tại m&agrave;n h&igrave;nh thanh to&aacute;n tr&ecirc;n ứng dụng Mobile Banking, nhập m&atilde;:</p>\r\n\r\n<p><strong>DIVINE</strong>,<em> giảm 10% gi&aacute; trị đơn h&agrave;ng, tối đa 5.000đ</em></p>\r\n\r\n<p><strong>Giới hạn</strong> 01 giao dịch/ kh&aacute;ch h&agrave;ng/ tuần</p>\r\n\r\n<p><strong>&Aacute;p dụng</strong> cho gi&aacute; trị thanh to&aacute;n tối thiểu 10.000 đ</p>\r\n\r\n<p><em>Số tiền giảm gi&aacute; sẽ được </em><strong><em>l&agrave;m tr&ograve;n đến h&agrave;ng ngh&igrave;n</em></strong><em>. V&iacute; dụ: 1.500đ sẽ được l&agrave;m tr&ograve;n th&agrave;nh 2.000đ, 1.499đ sẽ được l&agrave;m tr&ograve;n th&agrave;nh 1.000đ.</em></p>\r\n\r\n<p>Nhập m&atilde; DIVINE tại m&agrave;n h&igrave;nh th&agrave;nh to&aacute;n tr&ecirc;n ứng dụng Mobile Banking để nhận ưu đ&atilde;i</p>\r\n\r\n<p><strong>Danh s&aacute;ch c&aacute;c ng&acirc;n h&agrave;ng/V&iacute; điện tử &aacute;p dụng khuyến m&atilde;i m&atilde; giảm gi&aacute; do VNPAY-QR ph&aacute;t h&agrave;nh v&agrave; c&aacute;c ng&acirc;n h&agrave;ng/V&iacute; điện tử hỗ trợ thanh to&aacute;n bằng VNPAY-QR:</strong></p>\r\n\r\n<p><img src=\"https://vnpay.vn/wp-content/uploads/2020/07/Bank-update-05.05.2021-819x1024.png\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Ưu đ&atilde;i n&agrave;y được t&agrave;i trợ bởi <strong>VNPAY-QR</strong>, Divine Shop vẫn sẽ hiển thị gi&aacute; trị đơn h&agrave;ng trước khi &aacute;p dụng khuyến m&atilde;i thanh to&aacute;n của VNPAY-QR</p>\r\n	</li>\r\n	<li>\r\n	<p>Qu&yacute; kh&aacute;ch h&agrave;ng ch&uacute; &yacute; update phi&ecirc;n bản mới nhất của ứng dụng Mobile Banking tr&ecirc;n điện thoại để c&oacute; thể nhập được m&atilde; giảm gi&aacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Chương tr&igrave;nh c&oacute; thể kết th&uacute;c sớm khi hết ng&acirc;n s&aacute;ch khuyến mại.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chương tr&igrave;nh &aacute;p dụng cho cả 2 h&igrave;nh thức thanh to&aacute;n: Nạp Dcoin bằng <strong>VNPAY-QR</strong> v&agrave; Mua si&ecirc;u tốc bằng <strong>VNPAY-QR</strong></p>\r\n	</li>\r\n</ul>\r\n', 'Chính sách khuyến mãi', 'Chính sách khuyến mãi', '<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i</p>\r\n', 1, 31, 8, 8, '2021-05-20 10:29:15', '2021-06-09 08:26:06'),
(21, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', '<h4>1. Nh&oacute;m sản phẩm Điện m&aacute;y Th&agrave;nh Vinh kinh doanh mới v&agrave; trưng b&agrave;y trừ Phụ kiện kh&ocirc;ng điện &amp; Sản phẩm đ&atilde; sử dụng</h4>\r\n\r\n<p>Xem danh mục sản phẩm &aacute;p dụng (xếp theo abc)</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng muốn đổi trả sản phẩm chọn 1 trong c&aacute;c phương thức b&ecirc;n dưới:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>NỘI DUNG CH&Iacute;NH S&Aacute;CH</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>ĐIỀU KIỆN &Aacute;P DỤNG</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>1) BẢO H&Agrave;NH C&Oacute; CAM KẾT TRONG 12 TH&Aacute;NG</strong></p>\r\n\r\n			<p><strong>(RI&Ecirc;NG PHỤ KIỆN C&Oacute; ĐIỆN AVA BẢO H&Agrave;NH 3 TH&Aacute;NG)</strong>*</p>\r\n\r\n			<p>Chỉ &aacute;p dụng cho sản phẩm ch&iacute;nh, KH&Ocirc;NG &aacute;p dụng cho phụ kiện đi k&egrave;m sản phẩm ch&iacute;nh</p>\r\n\r\n			<p>+ Bảo h&agrave;nh trong v&ograve;ng 15 ng&agrave;y (t&iacute;nh từ ng&agrave;y Điện m&aacute;y Th&agrave;nh Vinh nhận m&aacute;y ở trạng th&aacute;i lỗi v&agrave; đến ng&agrave;y gọi kh&aacute;ch h&agrave;ng ra lấy lại m&aacute;y đ&atilde; bảo h&agrave;nh)</p>\r\n\r\n			<p>+ Sản phẩm kh&ocirc;ng bảo h&agrave;nh lại lần 2 trong 30 ng&agrave;y kể từ ng&agrave;y m&aacute;y được bảo h&agrave;nh xong.&nbsp;</p>\r\n\r\n			<p>+ Nếu Điện m&aacute;y Th&agrave;nh Vinh vi phạm cam kết (bảo h&agrave;nh qu&aacute; 15 ng&agrave;y hoặc phải bảo h&agrave;nh lại sản phẩm lần nữa trong 30 ng&agrave;y kể từ lần bảo h&agrave;nh trước), Kh&aacute;ch h&agrave;ng được &aacute;p dụng phương thức&nbsp;<strong>Hư g&igrave; đổi nấy ngay v&agrave; lu&ocirc;n</strong>&nbsp;hoặc&nbsp;<strong>Ho&agrave;n tiền</strong>&nbsp;với&nbsp;<strong>mức ph&iacute; giảm 50%</strong>.</p>\r\n\r\n			<p>*Từ th&aacute;ng thứ 13 trở đi, kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cam kết, chỉ &aacute;p dụng bảo h&agrave;nh h&atilde;ng (nếu c&oacute;)</p>\r\n			</td>\r\n			<td>\r\n			<p>- Sản phẩm đủ điều kiện bảo h&agrave;nh của h&atilde;ng.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>2) HƯ G&Igrave; ĐỔI NẤY NGAY V&Agrave; LU&Ocirc;N</strong>&nbsp;(KH&Ocirc;NG &aacute;p dụng cho Đồng hồ, phụ kiện c&oacute; điện)</p>\r\n\r\n			<p>Sản phẩm hư g&igrave; th&igrave; đổi đ&oacute; (c&ugrave;ng model, c&ugrave;ng dung lượng, c&ugrave;ng m&agrave;u sắc...) đối với sản phẩm ch&iacute;nh v&agrave; đổi tương đương đối với phụ kiện đi k&egrave;m, cụ thể:</p>\r\n\r\n			<p><strong>2.1) Hư sản phẩm ch&iacute;nh th&igrave; đổi sản phẩm ch&iacute;nh mới</strong></p>\r\n\r\n			<p>- Th&aacute;ng đầu ti&ecirc;n kể từ ng&agrave;y mua: miễn ph&iacute;</p>\r\n\r\n			<p>- Th&aacute;ng thứ 2 đến th&aacute;ng thứ 12: ph&iacute; 10% gi&aacute; trị h&oacute;a đơn/th&aacute;ng.</p>\r\n\r\n			<p>(VD: th&aacute;ng thứ 2 ph&iacute; 10%, th&aacute;ng thứ 3 ph&iacute; 20%...)</p>\r\n\r\n			<p>Lưu &yacute;: Nếu kh&ocirc;ng c&oacute; sản phẩm ch&iacute;nh đổi cho Kh&aacute;ch h&agrave;ng th&igrave; &aacute;p dụng ch&iacute;nh s&aacute;ch&nbsp;<strong>Bảo h&agrave;nh c&oacute; cam kết&nbsp;</strong>hoặc&nbsp;<strong>Ho&agrave;n tiền</strong>&nbsp;với mức ph&iacute; giảm 50%.</p>\r\n\r\n			<p><strong>2.2) Hư phụ kiện đi k&egrave;m th&igrave; đổi phụ kiện c&oacute; c&ugrave;ng c&ocirc;ng năng m&agrave; </strong>Điện m&aacute;y Th&agrave;nh Vinh&nbsp;<strong>đang kinh doanh</strong></p>\r\n\r\n			<p>Phụ kiện đi k&egrave;m được đổi miễn ph&iacute; trong v&ograve;ng 12 th&aacute;ng kể từ ng&agrave;y mua sản phẩm ch&iacute;nh bằng h&agrave;ng phụ kiện Điện m&aacute;y Th&agrave;nh Vinh đang kinh doanh mới với c&ocirc;ng năng tương đương.</p>\r\n\r\n			<p>Lưu &yacute;: Nếu kh&ocirc;ng c&oacute; phụ kiện tương đương hoặc Kh&aacute;ch h&agrave;ng kh&ocirc;ng th&iacute;ch th&igrave; &aacute;p dụng bảo h&agrave;nh h&atilde;ng</p>\r\n\r\n			<p><strong>2.3) Lỗi phần mềm</strong>&nbsp;kh&ocirc;ng &aacute;p dụng, m&agrave; chỉ khắc phục lỗi phần mềm</p>\r\n\r\n			<p><strong>2.4) Trường hợp Kh&aacute;ch h&agrave;ng muốn đổi full box</strong>&nbsp;(nguy&ecirc;n th&ugrave;ng, nguy&ecirc;n hộp): ngo&agrave;i việc &aacute;p dụng mức ph&iacute; đổi trả tại Mục 2.1 th&igrave; Kh&aacute;ch h&agrave;ng sẽ trả th&ecirc;m ph&iacute; lấy full box tương đương 20% gi&aacute; trị h&oacute;a đơn.</p>\r\n			</td>\r\n			<td>\r\n			<p>- Sản phẩm đổi trả phải giữ nguy&ecirc;n 100% h&igrave;nh dạng ban đầu v&agrave; đủ điều kiện bảo h&agrave;nh của h&atilde;ng.</p>\r\n\r\n			<p>- Th&acirc;n m&aacute;y kh&ocirc;ng trầy xước m&agrave;n h&igrave;nh (&aacute;p dụng cho Điện thoại, Tablet, Laptop, M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh, M&aacute;y t&iacute;nh để b&agrave;n)</p>\r\n\r\n			<p>- Sản phẩm chỉ d&ugrave;ng cho mục đ&iacute;ch sử dụng c&aacute; nh&acirc;n, kh&ocirc;ng &aacute;p dụng việc sử dụng sản phẩm cho mục đ&iacute;ch thương mại.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3)&nbsp;<strong>HO&Agrave;N TIỀN:</strong>&nbsp;&aacute;p dụng cho sản phẩm lỗi v&agrave; kh&ocirc;ng lỗi</p>\r\n\r\n			<p>- Th&aacute;ng đầu ti&ecirc;n kể từ ng&agrave;y mua: ph&iacute; 20% gi&aacute; trị h&oacute;a đơn</p>\r\n\r\n			<p>- Th&aacute;ng thứ 2 đến th&aacute;ng thứ 12: ph&iacute; 10% gi&aacute; trị h&oacute;a đơn/th&aacute;ng.</p>\r\n\r\n			<p>- Ri&ecirc;ng phụ kiện c&oacute; điện AVA: &aacute;p dụng ho&agrave;n tiền trong 3 th&aacute;ng với mức ph&iacute; như tr&ecirc;n. Từ th&aacute;ng thứ 4 trở đi kh&ocirc;ng &aacute;p dụng ho&agrave;n tiền.&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>- Sản phẩm đổi trả phải giữ nguy&ecirc;n 100% h&igrave;nh dạng ban đầu v&agrave; đủ điều kiện bảo h&agrave;nh của h&atilde;ng.</p>\r\n\r\n			<p>- Th&acirc;n m&aacute;y kh&ocirc;ng trầy xước m&agrave;n h&igrave;nh (&aacute;p dụng cho Điện thoại, Tablet, Laptop, M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh, M&aacute;y t&iacute;nh để b&agrave;n, đồng hồ)</p>\r\n\r\n			<p>- Sản phẩm chỉ d&ugrave;ng cho mục đ&iacute;ch sử dụng c&aacute; nh&acirc;n, kh&ocirc;ng &aacute;p dụng việc sử dụng sản phẩm cho mục đ&iacute;ch thương mại.</p>\r\n\r\n			<p>- Ho&agrave;n trả lại đầy đủ hộp, sạc, phụ kiện đi k&egrave;m:</p>\r\n\r\n			<p>+ Mất hộp thu ph&iacute; 2% gi&aacute; trị h&oacute;a đơn đối với nh&oacute;m Điện thoại, Tablet, Laptop, M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh, M&aacute;y t&iacute;nh để b&agrave;n, Đồng hồ, M&aacute;y in</p>\r\n\r\n			<p>+ Mất phụ kiện thu ph&iacute; theo gi&aacute; b&aacute;n tối thiểu tr&ecirc;n website Điện m&aacute;y Th&agrave;nh Vinh v&agrave; ch&iacute;nh h&atilde;ng (tối đa 5% gi&aacute; trị h&oacute;a đơn) cho tất cả nh&oacute;m sản phẩm</p>\r\n\r\n			<p>- Ho&agrave;n trả to&agrave;n bộ h&agrave;ng khuyến m&atilde;i. Nếu mất h&agrave;ng khuyến m&atilde;i sẽ thu ph&iacute; theo mức gi&aacute; đ&atilde; được c&ocirc;ng bố.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h4>2. Nh&oacute;m Phụ kiện kh&ocirc;ng điện&nbsp;</h4>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh v&agrave; đổi trả</p>\r\n\r\n<p>Xem danh mục sản phẩm &aacute;p dụng&nbsp;(xếp theo abc)</p>\r\n\r\n<p>Balo, t&uacute;i chống sốc</p>\r\n\r\n<p>D&acirc;y đồng hồ</p>\r\n\r\n<p>Đế, m&oacute;c điện thoại</p>\r\n\r\n<p>Gi&aacute; đỡ laptop, điện thoại</p>\r\n\r\n<p>Miếng l&oacute;t b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Ốp lưng điện thoại</p>\r\n\r\n<p>Ốp lưng m&aacute;y t&iacute;nh bảng</p>\r\n\r\n<p>Phụ kiện điện thoại kh&aacute;c</p>\r\n\r\n<p>Pin tiểu, pin điện thoại</p>\r\n\r\n<p>Quạt mini</p>\r\n\r\n<p>T&uacute;i chống nước</p>\r\n\r\n<p>T&uacute;i đựng AirPods</p>\r\n\r\n<h4>3. Nh&oacute;m&nbsp;<a href=\"https://www.thegioididong.com/may-doi-tra\" title=\"sản phẩm đã sử dụng\">sản phẩm đ&atilde; sử dụng</a></h4>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>NỘI DUNG CH&Iacute;NH S&Aacute;CH</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>ĐIỀU KIỆN &Aacute;P DỤNG</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>SP lỗi kĩ thuật th&aacute;ng đầu ti&ecirc;n</strong></p>\r\n\r\n			<p>- &Aacute;p dụng bảo h&agrave;nh</p>\r\n\r\n			<p>- Hoặc ho&agrave;n tiền ph&iacute; 10% gi&aacute; trị ho&aacute; đơn</p>\r\n\r\n			<p><strong>Từ th&aacute;ng thứ 2 trở đi&nbsp;</strong></p>\r\n\r\n			<p>- Kh&ocirc;ng &aacute;p dụng đổi trả.&nbsp;</p>\r\n\r\n			<p>- &Aacute;p dụng bảo h&agrave;nh h&atilde;ng nếu sản phẩm c&ograve;n thời gian bảo h&agrave;nh của h&atilde;ng v&agrave; đủ điều kiện bảo h&agrave;nh của h&atilde;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>- Sản phẩm đổi trả phải giữ nguy&ecirc;n 100% h&igrave;nh dạng ban đầu v&agrave; đủ điều kiện bảo h&agrave;nh của h&atilde;ng.</p>\r\n\r\n			<p>- Sản phẩm chỉ d&ugrave;ng cho mục đ&iacute;ch sử dụng c&aacute; nh&acirc;n, kh&ocirc;ng &aacute;p dụng việc sử dụng sản phẩm cho mục đ&iacute;ch thương mại.</p>\r\n\r\n			<p>- Ho&agrave;n trả lại đầy đủ sạc, phụ kiện đi k&egrave;m: mất phụ kiện thu ph&iacute; theo gi&aacute; b&aacute;n tối thiểu tr&ecirc;n website Điện m&aacute;y Th&agrave;nh Vinh v&agrave; ch&iacute;nh h&atilde;ng (tối đa 5% gi&aacute; trị h&oacute;a đơn)&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Chính sách bảo hành', 'Chính sách bảo hành', '<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>\r\n', 1, 31, 8, 8, '2021-05-20 10:29:15', '2021-06-09 08:31:52'),
(22, 'Vận chuyển', 'van-chuyen', '<h1>Dịch vụ giao h&agrave;ng Điện m&aacute;y Th&agrave;nh Vinh</h1>\r\n\r\n<p><img alt=\"\" src=\"https://mcdn.coolmate.me/image/July2020/Them_tieu_de_(10).jpg\" style=\"width:1200px\" /></p>\r\n\r\n<p><strong>Giao h&agrave;ng nhanh v&agrave; đ&uacute;ng hẹn</strong>&nbsp;cho 95% đơn h&agrave;ng l&agrave;&nbsp;<strong>mục ti&ecirc;u</strong>&nbsp;m&agrave; đội ngũ vận h&agrave;nh của&nbsp;<a href=\"https://Điện máy Thành Vinh\">Điện m&aacute;y Th&agrave;nh Vinh</a>&nbsp;đang hướng tới. Kh&aacute;ch h&agrave;ng h&atilde;y tin ở Coolmate, ch&uacute;ng t&ocirc;i sẽ l&agrave;m được trong năm 2020!</p>\r\n\r\n<p>Hiện tại&nbsp;Điện m&aacute;y Th&agrave;nh Vinh đang l&agrave;&nbsp;<strong>đối t&aacute;c lớn</strong>&nbsp;với c&aacute;c đơn vị giao h&agrave;ng nổi tiếng c&oacute; uy t&iacute;n như&nbsp;<strong>DHL Ecommerce.</strong></p>\r\n', 'Vận chuyển', 'Vận chuyển', '<p>Vận chuyển</p>\r\n', 1, 31, 8, 8, '2021-05-20 10:29:58', '2021-06-09 08:27:29'),
(23, 'Đổi trả 15 ngày', 'doi-tra-15-ngay', '<h1>Ch&iacute;nh s&aacute;ch đổi trả</h1>\r\n\r\n<p>Thật kh&oacute; chịu nếu phải l&agrave;m c&ocirc;ng t&aacute;c đổi/ trả cho đơn h&agrave;ng vừa mua!</p>\r\n\r\n<p>V&agrave; cũng kh&ocirc;ng mấy dễ chịu khi đọc những trang &quot;Ch&iacute;nh s&aacute;ch đổi trả&quot; d&agrave;i ngoằng v&agrave; đủ thứ điều r&agrave;ng buộc (thường l&agrave; như thế).</p>\r\n\r\n<p>Do đ&oacute; Điện m&aacute;y Th&agrave;nh Vinh sẽ viết ngắn gọn nhất c&oacute; thể, cơ bản l&agrave;:</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng&nbsp;<strong>được đổi hoặc trả</strong>&nbsp;sản phẩm&nbsp;<strong>trong v&ograve;ng 15 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y nhận được sản phẩm.</p>\r\n\r\n<p>- Bất kỳ sản phẩm n&agrave;o đặt mua tại Điện m&aacute;y Th&agrave;nh Vinh&nbsp;cũng được &aacute;p dụng ch&iacute;nh s&aacute;ch n&agrave;y.</p>\r\n\r\n<p>- Trường hợp đổi,&nbsp;<strong>kh&aacute;ch h&agrave;ng sẽ chịu chi ph&iacute; vận chuyển,</strong>&nbsp;v&agrave; Điện m&aacute;y Th&agrave;nh Vinh sẽ&nbsp;<strong>giao lại h&agrave;ng miễn ph&iacute;&nbsp;</strong>cho Kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>- Trường hợp trả,&nbsp;Điện m&aacute;y Th&agrave;nh Vinh&nbsp;<strong>sẽ ho&agrave;n lại tiền h&agrave;ng</strong>&nbsp;(kh&ocirc;ng bao gồm tiền ph&iacute; vận chuyển nếu c&oacute;) cho kh&aacute;ch&nbsp;<strong>trong v&ograve;ng 24h qua t&agrave;i khoản của kh&aacute;ch</strong>. Sau đ&oacute;, Điện m&aacute;y Th&agrave;nh Vinh sẽ&nbsp;<strong>đến tận nơi lấy h&agrave;ng trả v&agrave; kh&ocirc;ng thu th&ecirc;m bất cứ ph&iacute; g&igrave;</strong>&nbsp;(Kh&aacute;ch h&agrave;ng cũng c&oacute; thể tự gởi lại h&agrave;ng cho Điện m&aacute;y Th&agrave;nh Vinh)</p>\r\n\r\n<p><strong>3 Bước nhanh ch&oacute;ng để đổi trả:&nbsp;</strong></p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Điền th&ocirc;ng tin đổi h&agrave;ng ở&nbsp;<a href=\"https://coolmate.typeform.com/to/H1Rl0eM9\">đ&acirc;y</a>, v&agrave; trả h&agrave;ng ở&nbsp;<a href=\"https://coolmate.typeform.com/to/wo8dotKH\">đ&acirc;y</a>, hoặc qua số hotline 01xxxxxxx.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Nhận cuộc gọi x&aacute;c nhận từ Điện m&aacute;y Th&agrave;nh Vinh về sản phẩm v&agrave; thời gian nhận h&agrave;ng</p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Ngay khi x&aacute;c nhận ch&uacute;ng t&ocirc;i sẽ gởi bạn đơn h&agrave;ng mới (hoặc lấy đơn h&agrave;ng về), bạn chỉ cần gởi h&agrave;ng cần đổi/trả cho shipper l&agrave; được.</p>\r\n\r\n<p>Xem th&ecirc;m dịch vụ CoolReturn chỉ c&oacute; tại Điện m&aacute;y Th&agrave;nh Vinh ở&nbsp;<a href=\"https://www.coolmate.me/page/dich-vu-doi-hang-tan-noi-coolreturn\">đ&acirc;y</a>.</p>\r\n\r\n<p><strong>Đối với việc trả h&agrave;ng:</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ ho&agrave;n lại số tiền h&agrave;ng (sau khi đ&atilde; trừ 25.000 VNĐ ph&iacute; ship h&agrave;ng) v&agrave;o t&agrave;i khoản m&agrave; bạn x&aacute;c nhận tối đa trong 24h l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ 7 &amp; Chủ Nhật).</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<p>&nbsp;⁃ Điện m&aacute;y Th&agrave;nh Vinh hỗ trợ đổi tối đa 3 lần/1 kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;⁃ Điện m&aacute;y Th&agrave;nh Vinh c&oacute; quyền quyết định dừng việc hỗ trợ đổi trả v&agrave; trả lại tiền cho kh&aacute;ch h&agrave;ng nếu ph&aacute;t hiện kh&aacute;ch h&agrave;ng sử dụng ch&iacute;nh s&aacute;ch để trục lợi (như việc đổi qu&aacute; nhiều lần).</p>\r\n', 'Đổi trả 60 ngày', 'Đổi trả 60 ngày', '<p>Đổi trả 60 ng&agrave;y</p>\r\n', 1, 31, 8, 8, '2021-05-20 10:29:58', '2021-06-09 08:29:03'),
(24, 'Giới thiệu\r\n', 'gioi-thieu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 1, 32, 8, 8, '2021-05-20 10:30:52', '2021-05-20 10:30:52'),
(25, 'Tuyển dụng', 'tuyen-dung', 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 1, 32, 8, 8, '2021-05-20 10:30:52', '2021-05-20 10:30:52'),
(26, 'test 123', 'test123', '<p><img alt=\"\" src=\"/spring-web/images/finder/images/hcm_13.jpg\" style=\"height:589px; width:960px\" />test</p>\r\n', '1621507832308.jpg', 'test', '<p>test</p>\r\n', 2, 33, 8, 5, '2021-05-20 03:50:32', '2021-07-10 09:11:12'),
(27, 'test', 'test', 'test', '1621776221893.jpg', 'test', 'test', 1, 34, 8, 8, '2021-05-23 06:23:41', '2021-05-23 06:23:41'),
(28, 'Mua hàng trả góp Online', 'mua-hang-tra-gop-online', '<h1>Mua h&agrave;ng trả g&oacute;p Online</h1>\r\n\r\n<ul>\r\n	<li>1. ĐIỀU KIỆN V&Agrave; GIẤY TỜ GỐC CẦN C&Oacute;</li>\r\n	<li>Tuổi từ 20 - 60 (t&iacute;nh theo ng&agrave;y th&aacute;ng năm sinh tr&ecirc;n chứng minh nh&acirc;n d&acirc;n).</li>\r\n	<li>Chứng minh nh&acirc;n d&acirc;n c&ograve;n hạn sử dụng (15 năm t&iacute;nh từ ng&agrave;y cấp).</li>\r\n	<li>Hộ khẩu (người mua h&agrave;ng phải c&oacute; t&ecirc;n trong hộ khẩu). Nếu khoản vay dưới 10 triệu c&oacute; thể thay hộ khẩu bằng bằng l&aacute;i xe.</li>\r\n	<li>C&ocirc;ng ty t&agrave;i ch&iacute;nh chỉ kiểm tra xong v&agrave; gửi lại kh&ocirc;ng giữ bất cứ giấy tờ g&igrave; của kh&aacute;ch h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>(&Aacute;p dụng cho Kh&aacute;ch H&agrave;ng mua h&agrave;ng trả g&oacute;p với Đối T&aacute;c)</strong></p>\r\n\r\n<h4>1. Tuy&ecirc;n bố</h4>\r\n\r\n<p>a. Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu mua h&agrave;ng trả g&oacute;p, trả chậm c&oacute; thể tự do lựa chọn v&agrave; sử dụng dịch vụ của bất kỳ b&ecirc;n cung cấp dịch vụ, sản phẩm (&ldquo;Đối T&aacute;c&rdquo;) trả g&oacute;p, trả chậm hoặc c&aacute;c dịch vụ, sản phẩm t&agrave;i ch&iacute;nh tương tự (&ldquo;Dịch Vụ&rdquo;).</p>\r\n\r\n<p>b. Evo Mobile l&agrave; b&ecirc;n cung cấp dịch vụ nhập liệu cho Đối T&aacute;c. Evo Mobile hỗ trợ Đối T&aacute;c thực hiện một số c&ocirc;ng việc như thu thập th&ocirc;ng tin, nhập liệu, v&agrave; hướng dẫn Kh&aacute;ch H&agrave;ng k&yacute; hợp đồng với Đối T&aacute;c theo mẫu quy định tại Mục 3.</p>\r\n\r\n<p>c.&nbsp;Evo Mobile được ủy quyền cung cấp h&oacute;a đơn v&agrave; chi tiết sản phẩm b&aacute;n của kh&aacute;ch h&agrave;ng cho đối t&aacute;c trả g&oacute;p.</p>\r\n\r\n<h4>2. Bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n</h4>\r\n\r\n<p>a. Kh&aacute;ch H&agrave;ng đồng &yacute; để cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n cho Evo Mobile để sử dụng Dịch Vụ bằng việc x&aacute;c nhận m&atilde; OTP như sau: sau khi hợp đồng đ&atilde; k&yacute; giữa Kh&aacute;ch H&agrave;ng v&agrave; C&ocirc;ng ty T&agrave;i Ch&iacute;nh thanh l&yacute;</p>\r\n\r\n<p>- Kh&aacute;ch H&agrave;ng đăng k&yacute; sử dụng Dịch Vụ bằng số điện thoại đang sử dụng.</p>\r\n\r\n<p>- Evo Mobile gửi m&atilde; OTP v&agrave;o số điện thoại m&agrave; Kh&aacute;ch H&agrave;ng đ&atilde; đăng k&yacute; nhằm x&aacute;c định Kh&aacute;ch H&agrave;ng l&agrave; người sử dụng của số điện thoại tr&ecirc;n.</p>\r\n\r\n<p>- Kh&aacute;ch H&agrave;ng cung cấp m&atilde; OTP cho Evo Mobile.</p>\r\n\r\n<p>Để l&agrave;m r&otilde; nội dung n&agrave;y, th&ocirc;ng tin c&aacute; nh&acirc;n của c&oacute; nghĩa l&agrave; bất kỳ dữ liệu n&agrave;o c&oacute; li&ecirc;n quan đến một c&aacute; nh&acirc;n, d&ugrave; đ&uacute;ng hay sai, v&agrave; c&oacute; thể gi&uacute;p nhận dạng được c&aacute; nh&acirc;n cụ thể hoặc kh&ocirc;ng thể nhận dạng (&ldquo;Th&ocirc;ng Tin C&aacute; Nh&acirc;n&rdquo;).</p>\r\n\r\n<p>b. Evo Mobile thu thập Th&ocirc;ng Tin C&aacute; Nh&acirc;n của Kh&aacute;ch H&agrave;ng để sử dụng v&agrave; chuyển giao cho Đối T&aacute;c. Tong khả năng của m&igrave;nh, Evo Mobile chủ động thực hiện c&aacute;c biện ph&aacute;p hợp l&yacute; để bảo vệ Th&ocirc;ng Tin C&aacute; Nh&acirc;n tr&aacute;nh khỏi việc bị lạm dụng, mất m&aacute;t, thay đổi, tiết lộ, mua lại hoặc truy cập tr&aacute;i ph&eacute;p. Tuy nhi&ecirc;n, Evo Mobile kh&ocirc;ng thể đưa ra một cam kết chắc chắn rằng Th&ocirc;ng Tin C&aacute; Nh&acirc;n được đảm bảo an to&agrave;n một c&aacute;ch tuyệt đối v&agrave; kh&ocirc;ng đảm bảo việc sử dụng th&ocirc;ng tin của Đối T&aacute;c. Evo Mobile kh&ocirc;ng chịu tr&aacute;ch nhiệm trong trường hợp c&oacute; sự truy cập tr&aacute;i ph&eacute;p Th&ocirc;ng Tin C&aacute; Nh&acirc;n, đặc biệt l&agrave; sau khi th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; được chuyển giao cho Đối T&aacute;c. Trong phạm vi ph&aacute;p luật cho ph&eacute;p, th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; Kh&aacute;ch H&agrave;ng cung cấp c&oacute; thể được tiết lộ cho c&aacute;c mục đ&iacute;ch đ&atilde; n&ecirc;u trong ch&iacute;nh s&aacute;ch n&agrave;y đối với những đối tượng sau:</p>\r\n\r\n<p>- C&aacute;c c&ocirc;ng ty li&ecirc;n kết của Evo Mobile hoặc c&aacute;c chi nh&aacute;nh v&agrave; nh&acirc;n vi&ecirc;n để cung cấp nội dung, th&ocirc;ng tin hoặc phản hồi cho Kh&aacute;ch H&agrave;ng hoặc cho Evo Mobile;</p>\r\n\r\n<p>- C&aacute;c chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp của Evo Mobile như kiểm to&aacute;n vi&ecirc;n, cố vấn t&agrave;i ch&iacute;nh v&agrave; luật sư;</p>\r\n\r\n<p>- C&aacute;c cơ quan quản l&yacute; nh&agrave; nước c&oacute; li&ecirc;n quan v&agrave; c&aacute;c cơ quan c&oacute; thẩm quyền kh&aacute;c để đảm bảo việc tu&acirc;n thủ ph&aacute;p luật;</p>\r\n\r\n<p>- Bất kỳ b&ecirc;n n&agrave;o kh&aacute;c m&agrave; Kh&aacute;ch H&agrave;ng cho ph&eacute;p ch&uacute;ng t&ocirc;i tiết lộ Th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n\r\n<p>c. Evo Mobile được miễn trừ v&agrave; Kh&aacute;ch H&agrave;ng phải tự chịu tr&aacute;ch nhiệm trong trường hợp Đối T&aacute;c tiết lộ Th&ocirc;ng Tin C&aacute; Nh&acirc;n cho b&ecirc;n thứ ba kh&aacute;c tr&aacute;i mục đ&iacute;ch mong muốn của Kh&aacute;ch H&agrave;ng.&nbsp;</p>\r\n\r\n<p>d. Kh&aacute;ch H&agrave;ng vui l&ograve;ng li&ecirc;n hệ với Evo Mobiletrong trường hợp: (i) Kh&aacute;ch H&agrave;ng thay đổi th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; cung cấp cho Evo Mobile; hoặc (ii) Kh&aacute;ch H&agrave;ng muốn hủy th&ocirc;ng tin c&aacute; nh&acirc;n đ&atilde; cung cấp sau khi hợp đồng đ&atilde; k&yacute; giữa Kh&aacute;ch H&agrave;ng v&agrave; Đối T&aacute;c đ&atilde; thanh l&yacute;</p>\r\n', '1624556641887.jpg', 'trả góp', '<p>mua h&agrave;ng trả g&oacute;p</p>\r\n', 1, 31, 8, 8, '2021-06-24 10:44:01', '2021-06-24 10:44:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `post_topicid` bigint(20) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `post_topicid`, `post_title`, `post_slug`, `post_detail`, `post_img`, `post_status`, `post_metakey`, `post_metadesc`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(23, 37, '\'Gỡ bỏ hình ảnh Hoài Linh là hành động đúng đắn\'', 'go-bo-hinh-anh-hoai-linh-la-hanh-dong-dung-dan', '<p><img alt=\"\" src=\"/spring-web/images/finder/images/hoailinh.png\" style=\"height:255px; width:480px\" /></p>\r\n\r\n<p>test h&igrave;nh</p>\r\n\r\n<p><img alt=\"\" src=\"/spring-web/images/finder/images/shopee_hoailinh.jpeg\" style=\"height:372px; width:860px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '1622164500230.jpg', 1, '12', '<p>121234</p>\r\n', 8, 8, '2021-05-20 03:38:42', '2021-06-07 23:17:38'),
(24, 33, 'Quan điểm phát triển thành phố phía tây TP.HCM của Chủ tịch nước', 'quan-diem-phat-trien-thanh-pho-phia-tay-tphcm-cua-chu-tich-nuoc', '<p>L&agrave; ứng vi&ecirc;n đại biểu Quốc hội tại huyện Củ Chi, H&oacute;c M&ocirc;n, trong chương tr&igrave;nh h&agrave;nh động, Chủ tịch nước Nguyễn Xu&acirc;n Ph&uacute;c nhấn mạnh quan điểm ph&aacute;t triển nơi đ&acirc;y th&agrave;nh đ&ocirc; thị sinh th&aacute;i.Trong chương tr&igrave;nh h&agrave;nh động của m&igrave;nh, Chủ tịch nước Nguyễn Xu&acirc;n Ph&uacute;c, ứng cử vi&ecirc;n đại biểu Quốc hội, quan t&acirc;m tới 4 vấn đề ch&iacute;nh: Cải thiện m&ocirc;i trường đầu tư kinh doanh, bảo vệ m&ocirc;i trường sinh th&aacute;i, đảm bảo an sinh x&atilde; hội; giải quyết kiến nghị người d&acirc;n, đấu tranh ph&ograve;ng chống tham nhũng; th&uacute;c đẩy triển khai 4 chương tr&igrave;nh ph&aacute;t triển th&agrave;nh phố đ&atilde; đề ra; v&agrave; đặc biệt l&agrave; th&uacute;c đẩy s&aacute;ng kiến, đưa TP.HCM th&agrave;nh h&igrave;nh mẫu của cả nước trong ph&aacute;t triển.</p>\r\n', '1622164500230.jpg', 2, 'test', 'test', 8, 8, '2021-05-21 01:45:16', '2021-05-30 12:33:29'),
(25, 35, 'Những điều đáng chờ đợi trong sự kiện của Apple', 'apple-chuan-bi-ra-mat-ios-15', 'iOS 15, macOS 12 và MacBook Pro là những sản phẩm có thể được Apple giới thiệu tại hội nghị WWDC 2021 diễn ra trong chưa đầy 2 tuần nữa.', '1622164500230.jpg', 1, 'apple', 'bài viết', 8, 8, '2021-05-27 17:52:24', '2021-05-27 17:52:24'),
(26, 35, 'Lý do cáp iPhone dễ đứt', 'ly-do-cap-iphone-de-dut', 'Cáp sạc là một trong những phụ kiện Apple bị người dùng phàn nàn nhiều nhất vì độ bền kém.\r\nTheo BGR, đoạn video được đăng trên kênh YouTube Apple Explained đã chia sẻ 2 lý do khiến cáp sạc iPhone, iPad và MacBook dễ đứt.', '1622164500230.jpg', 1, 'apple', 'Cáp sạc là một trong những phụ kiện Apple bị người dùng phàn nàn nhiều nhất vì độ bền kém.\r\nTheo BGR, đoạn video được đăng trên kênh YouTube Apple Explained đã chia sẻ 2 lý do khiến cáp sạc iPhone, iPad và MacBook dễ đứt.', 8, 8, '2021-05-27 18:05:39', '2021-05-27 18:05:39'),
(27, 35, 'Loạt smartphone sắp lên kệ tại Việt Nam', 'loat-smartphone-sap-len-ke-tai-viet-nam', 'Xiaomi thông báo giới thiệu mẫu Redmi Note 10 5G và Redmi Note 10S vào ngày 27/5 và lên kệ vào ngày 28/5.Xiaomi Redmi Note10 5G được trang bị chip MediaTek Dimensity 7000, RAM 4 GB, bộ nhớ trong 128 GB, pin dung lượng 5.000 mAh và sạc nhanh 18 W. Hệ thống camera sau của máy gồm 48 MP, 2 MP và 2 MP.', '1622164500230.jpg', 1, 'smartphone', 'mô tả điện thoại', 8, 8, '2021-05-27 18:09:43', '2021-05-27 18:09:43'),
(28, 36, '\'Gỡ bỏ hình ảnh Hoài Linh là hành động đúng đắn\'', 'test-test', 'Chuyên gia quảng cáo khẳng định khi nghệ sĩ dính bê bối nghiêm trọng, việc thương hiệu nhanh chóng dừng hợp tác với cá nhân đó sẽ nhận được cảm tình của người tiêu dùng.\r\nNgày 27/5, sàn thương mại điện tử Shopee gỡ bỏ hầu hết hình ảnh của nghệ sĩ Hoài Linh, được sử dụng trong một chiến dịch marketing từ ngày 20/5 của doanh nghiệp.', '1622164407676.jpg', 1, 'Hoài Linh', 'bài viết về nghệ sĩ Hoài Linh', 8, 8, '2021-05-27 18:13:27', '2021-05-27 18:13:27'),
(29, 36, 'KINH DOANH BẤT ĐỘNG SẢN  Biệt thự 61,5 triệu USD của cựu CEO Google', 'biet-thu-61-5-trieu-usd-cua-cuu-ceo-google', 'Tỷ phú Eric Schmidt, cựu CEO Google, chi 61,5 triệu USD vào khoảng giữa tháng 5 để sở hữu một căn biệt thự sang trọng tại tiểu bang California, Mỹ.Bất động sản tọa lạc tại khu Holmby Hills của thành phố Los Angeles, nằm trên một mảnh đất rộng hơn 1 ha, được xây dựng vào năm 1936.', '1622164500230.jpg', 1, 'Google', 'Nhà của ông  Tỷ phú Eric Schmidt, cựu CEO Google', 8, 8, '2021-05-27 18:15:00', '2021-05-27 18:47:19'),
(30, 37, 'Biện pháp chưa từng có tiền lệ trong chiến dịch chống Covid-19', 'bien-phap-chua-tung-co-tien-le-trong-chien-dich-chong-covid-19', '<p>Ng&agrave;y 29/4, dịch Covid-19 b&ugrave;ng ph&aacute;t tại H&agrave; Nam. Chỉ sau 40 ng&agrave;y, Việt Nam đối mặt số ca mắc Covid-19 cao nhất từ trước đến nay - 5.832 bệnh nh&acirc;n (t&iacute;nh đến tối 7/6). Bộ trưởng Y tế Nguyễn Thanh Long cho hay như đ&atilde; dự b&aacute;o trước đ&oacute;, đợt dịch thứ 4 diễn ra rất phức tạp, kh&oacute; kiểm so&aacute;t. Dịch bệnh lan ra 39 tỉnh, th&agrave;nh phố.</p>\r\n\r\n<p>Dịch phức tạp v&igrave; 4 điểm kh&aacute;c biệt so với những giai đoạn trước. Đ&oacute; l&agrave; th&aacute;ch thức từ đa ổ dịch, đa nguồn l&acirc;y; hai &quot;th&agrave;nh tr&igrave; y tế&quot; bị chọc thủng; sự xuất hiện của biến chủng mới B.1.617 (từ Ấn Độ); nhiều người trẻ tuổi, kh&ocirc;ng mắc bệnh nền nhưng diễn biến nặng rất nhanh.</p>\r\n\r\n<p>Trước những kh&aacute;c biệt v&agrave; số ca mắc vẫn tiếp tục tăng, đặc biệt ở 4 th&agrave;nh phố lớn l&agrave; Bắc Ninh, Bắc Giang, H&agrave; Nội, TP.HCM, Ch&iacute;nh phủ, Bộ Y tế đ&atilde; quyết liệt dập dịch ở mức độ cao nhất. Nhiều biện ph&aacute;p lần đầu ti&ecirc;n được &aacute;p dụng ch&iacute;nh thức v&agrave; th&iacute; điểm ở nhiều địa phương.</p>\r\n\r\n<p><img alt=\"Nhân viên y tế TP.HCM tại các điểm lấy mẫu xét nghiệm, sàng lọc Covid-19 cho người dân. Ảnh: Chí Hùng.\" src=\"/spring-web/images/finder/images/hcm_13.jpg\" style=\"height:589px; width:960px\" /></p>\r\n\r\n<h3>&quot;Đột ph&aacute; chiến lược&quot; ph&ograve;ng dịch bằng vaccine</h3>\r\n\r\n<p>Với phương ch&acirc;m chống dịch ng&agrave;y c&agrave;ng mạnh mẽ, quyết liệt, Thủ tướng Phạm Minh Ch&iacute;nh cho rằng vaccine l&agrave; &quot;ch&igrave;a kh&oacute;a&quot; để vượt qua dịch Covid-19 v&agrave; nhiều lần qu&aacute;n triệt &ldquo;huy động mọi nguồn lực để mua vaccine&rdquo;.</p>\r\n\r\n<p>TS Nguyễn Sỹ Dũng (nguy&ecirc;n Ph&oacute; chủ nhiệm Văn ph&ograve;ng Quốc hội) đ&aacute;nh gi&aacute;: &ldquo;Trọng t&acirc;m r&otilde; r&agrave;ng phải l&agrave; vaccine, ti&ecirc;m chủng để tạo miễn dịch cộng đồng, kh&ocirc;ng thể cứ truy vết, khoanh v&ugrave;ng m&atilde;i được. Hơn 1,5 năm vừa qua cứ li&ecirc;n tục như vậy nhưng đến b&acirc;y giờ th&igrave; kh&ocirc;ng thể k&eacute;o d&agrave;i v&ocirc; tận&rdquo;, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>Từ kinh nghiệm của một số quốc gia tr&ecirc;n thế giới, &ocirc;ng Dũng cho rằng &ldquo;ti&ecirc;m chủng sẽ tạo n&ecirc;n sự kh&aacute;c biệt&rdquo;, l&agrave; &quot;đột ph&aacute; chiến lược&quot; trong ph&ograve;ng, chống dịch.</p>\r\n\r\n<p>Bộ trưởng Y tế Nguyễn Thanh Long cũng nhận định: &quot;Chỉ c&oacute; vaccine Covid-19 mới đưa được cuộc sống trở lại b&igrave;nh thường&quot;. Do đ&oacute;, Ch&iacute;nh phủ v&agrave; Bộ Y tế t&iacute;ch cực tiếp cận nhiều nguồn cung ứng, đảm bảo nguồn t&agrave;i ch&iacute;nh vững bền cho vaccine Covid-19.</p>\r\n\r\n<p><img alt=\"Đồ họa: Thiên Nhan.\" src=\"/spring-web/images/finder/images/vaccine_2.jpg\" style=\"height:594px; width:960px\" /></p>\r\n', '1623176690146.jpg', 1, 'covid19', '<h3>&quot;Đột ph&aacute; chiến lược&quot; ph&ograve;ng dịch bằng vaccine</h3>\r\n', 8, 8, '2021-06-08 11:24:51', '2021-06-08 11:24:51'),
(31, 36, '\'Gỡ bỏ hình ảnh Hoài Linh là hành động đúng đắn 2\'', 'test-test-2', 'Chuyên gia quảng cáo khẳng định khi nghệ sĩ dính bê bối nghiêm trọng, việc thương hiệu nhanh chóng dừng hợp tác với cá nhân đó sẽ nhận được cảm tình của người tiêu dùng.\r\nNgày 27/5, sàn thương mại điện tử Shopee gỡ bỏ hầu hết hình ảnh của nghệ sĩ Hoài Linh, được sử dụng trong một chiến dịch marketing từ ngày 20/5 của doanh nghiệp.', '1622164407676.jpg', 1, 'Hoài Linh', 'bài viết về nghệ sĩ Hoài Linh', 8, 8, '2021-05-27 18:13:27', '2021-05-27 18:13:27'),
(32, 36, 'KINH DOANH BẤT ĐỘNG SẢN  Biệt thự 61,5 triệu USD của cựu CEO Google2', 'biet-thu-61-5-trieu-usd-cua-cuu-ceo-google-2', 'Tỷ phú Eric Schmidt, cựu CEO Google, chi 61,5 triệu USD vào khoảng giữa tháng 5 để sở hữu một căn biệt thự sang trọng tại tiểu bang California, Mỹ.Bất động sản tọa lạc tại khu Holmby Hills của thành phố Los Angeles, nằm trên một mảnh đất rộng hơn 1 ha, được xây dựng vào năm 1936.', '1622164500230.jpg', 1, 'Google', 'Nhà của ông  Tỷ phú Eric Schmidt, cựu CEO Google', 8, 8, '2021-05-27 18:15:00', '2021-05-27 18:47:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productprice` float NOT NULL,
  `productpricesale` float NOT NULL,
  `productweight` float NOT NULL,
  `productdetail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productshortdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productimg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_guarantee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_catid` bigint(20) NOT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `product_status` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `productname`, `product_slug`, `productprice`, `productpricesale`, `productweight`, `productdetail`, `productshortdesc`, `productimg`, `product_guarantee`, `product_condition`, `product_catid`, `manufacturer_id`, `product_status`, `available`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'Máy lạnh Panasonic Inverter 1 HP CU/CS-XU9UKH-8', 'panasonic-cu-cs-xu9ukh-8', 13900000, 12900000, 11, 'Máy lạnh Panasonic Inverter 1 HP CU/CS-XU9UKH-8', 'Máy lạnh Panasonic Inverter 1 HP CU/CS-XU9UKH-8', 'panasonic-cu-cs-xu9ukh-8-1-1-180x120.jpg', 'Bảo hành có cam kết trong 24 tháng (chỉ áp dụng cho sản phẩm chính, KHÔNG áp dụng cho phụ kiện kèm theo)', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 3, 1, 20, '2021-04-27 16:11:29', '2021-04-27 16:11:29', 1, 1),
(3, 'Android Tivi Casper 55 inch 55UG6000', 'casper-55ug6000', 13900000, 12900000, 11, 'android-tivi-casper-55-inch-55ug6000', 'android-tivi-casper-55-inch-55ug6000', 'casper-55ug6000.png', 'Bảo hành có cam kết trong 12 tháng (chỉ áp dụng cho sản phẩm chính, KHÔNG áp dụng cho phụ kiện kèm theo)', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 2, 1, 20, '2021-04-28 13:58:52', '2021-04-28 13:58:52', 1, 1),
(5, 'Samsung Smart Tivi UA43TU8100', 'samsung-ua43tu8100', 11900000, 10900000, 1, 'Samsung Smart TV UA43TU8100', 'Samsung Smart TV UA43TU8100', 'Samsung_QA43Q60T.png', 'Bảo hành có cam kết trong 12 tháng (chỉ áp dụng cho sản phẩm chính, KHÔNG áp dụng cho phụ kiện kèm theo)', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 1, 1, 20, '2021-04-28 17:03:46', '2021-04-28 17:03:46', 1, 1),
(6, 'Sony Android Tivi KD-43X8000H', 'sony-kd-43x8000h', 13590000, 12590000, 1, 'Sony Android TV KD-43X8000H', 'Sony Android TV KD-43X8000H', 'Sony_3X8000H.png', 'Bảo hành có cam kết trong 12 tháng (chỉ áp dụng cho sản phẩm chính, KHÔNG áp dụng cho phụ kiện kèm theo)', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 5, 1, 20, '2021-04-28 17:03:46', '2021-04-28 17:03:46', 1, 1),
(7, 'Máy lạnh Toshiba Inverter 1 HP RAS-H10D2KCVG-V', 'toshiba-ras-h10d2kcvg-v', 9990000, 9190000, 1, 'Công suất làm lạnh 1 HP, dành cho phòng có diện tích dưới 15 m2.\r\nTiết kiệm điện năng, làm lạnh hiệu quả với công nghệ Hybrid Inverter.\r\nTối ưu tiết giảm điện năng tiêu thụ với tính năng Eco.\r\nKhông khí trong lành và giảm chi phí bảo trì với công nghệ chống bám bẩn Magic Coil.\r\nTạo bầu không khí trong lành với bộ lọc Toshiba IAQ.', 'Máy lạnh Toshiba Inverter 1 HP RAS-H10D2KCVG-V', 'toshiba-ras-h10d2kcvg-v-1-1-org.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 10 ngày nếu có lỗi nhà sản xuất.', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 4, 1, 20, '2021-04-29 14:38:14', '2021-04-29 14:38:14', 1, 1),
(8, 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13C3KCVG-V', 'toshiba-ras-h13c3kcvg-v', 12990000, 12390000, 2, 'Ngăn ngừa bụi bẩn, vi khuẩn bám vào dàn lạnh với công nghệ Magic Coil.\r\nKháng khuẩn, khử mùi với bộ lọc Toshiba IAQ và lưới lọc chống nấm mốc.\r\nTiết kiệm điện, vận hành êm ái với công nghệ Hybrid Inverter và Eco.\r\nCông suất làm lạnh 1.5 HP, phù hợp phòng diện tích từ 15 - 20 m2.\r\nMát lạnh nhanh chóng với chế độ làm lạnh nhanh Hi Power.\r\nLoại bỏ mùi ẩm mốc với chức năng tự động làm sạch dàn lạnh.\r\nGhi nhớ các chế độ cài đặt với tính năng tự khởi động lại khi có điện.', 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13C3KCVG-V', 'toshiba-ras-h13c3kcvg-v.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 14 ngày nếu có lỗi nhà sản xuất.', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 4, 1, 20, '2021-04-29 14:38:14', '2021-04-29 14:38:14', 1, 1),
(9, 'Máy lạnh LG Inverter 1.5 HP V13ENH1', 'lg-v13enh1', 10950000, 10100000, 2, 'Tiết kiệm điện, vận hành êm ái với công nghệ Dual Inverter.\r\nLàm lạnh ngay tức thì với chế độ làm lạnh nhanh Jet Mode.\r\nBền bỉ theo thời gian nhờ có dàn trao đổi nhiệt mạ vàng.\r\nCông suất 1.5 HP phù hợp với diện tích phòng từ 15 - 20 m2.\r\nGiấc ngủ êm ái hơn khi kích hoạt chế độ ngủ đêm.\r\nTiết kiệm thời gian sửa chữa nhờ chức năng chẩn đoán lỗi.\r\nTiện lợi hơn với tính năng tự động làm sạch.', 'Máy lạnh LG Inverter 1.5 HP V13ENH1', 'lg-v13enh1-1-1-org.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 15 ngày nếu có lỗi nhà sản xuất.', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 6, 1, 20, '2021-04-29 14:43:05', '2021-04-29 14:43:05', 1, 1),
(10, 'Máy lạnh LG Inverter 2 HP V18API1', 'lg-v18api1', 19390000, 17390000, 5, 'Công nghệ Dual Inverter tiết kiệm điện, vận hành êm ái, bền bỉ.\r\nLàm lạnh nhanh chóng với công nghệ Jet Cool.\r\nKháng khuẩn, khử mùi, bảo vệ sức khỏe nhờ có hệ thống phát ion.\r\nDàn tản nhiệt bằng nhôm mạ vàng giúp tăng cường tuổi thọ máy.\r\nĐiều khiển từ xa bằng điện thoại với ứng dụng Smart ThinQ.\r\nPhát hiện, sữa lỗi nhanh chóng nhờ tính năng tự chẩn đoán lỗi.\r\nCông suất làm lạnh 2 HP, dành cho phòng có diện tích từ 20-30 m2.\r\nChế độ ngủ đêm tự điều chỉnh nhiệt độ phù hợp với thân nhiệt.\r\nMàn hình hiển thị tiện lợi, dễ dàng theo dõi nhiệt độ vào ban đêm.\r\nTính năng tự khởi động lại khi có điện ghi nhớ các chế độ hiện có, không cần cài đặt lại.', 'Máy lạnh LG Inverter 2 HP V18API1', 'lg-v18api1-1-1-org.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi nhà sản xuất.', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 6, 1, 20, '2021-04-29 14:43:05', '2021-04-29 14:43:05', 1, 1),
(11, 'Máy lạnh Sharp Inverter 2 HP AH-X18XEW', 'sharp-ah-x18xew', 15990000, 12990000, 3, 'Công suất làm lạnh lên đến 2 HP, dành cho phòng có diện tích 20 - 30 m2.\r\nCông nghệ J-Tech Inverter hiện đại giúp tiết kiệm điện năng.\r\nLàm lạnh nhanh chóng với công nghệ làm lạnh nhanh Super Jet.\r\nLưới bụi polypropylene mang lại không khí trong lành.\r\nTự khởi động lại khi có điện.\r\nChế độ thổi gió dễ chịu.', 'Máy lạnh Sharp Inverter 2 HP AH-X18XEW', 'sharp-ah-x18xew-1-1-org.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi nhà sản xuất.', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 2, 7, 1, 20, '2021-04-29 14:51:16', '2021-04-29 14:51:16', 1, 1),
(26, 'Android Tivi Sony 4K 55 inch KD-55X9000H ', 'sony-kd-55x9000h', 23900000, 22900000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Thiết kế gọn g&agrave;ng, sang trọng&nbsp;</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/sony-kd-55x9000h\" target=\"_blank\" title=\"Android Tivi Sony 4K 55 inch KD-55X9000H\" type=\"Android Tivi Sony 4K 55 inch KD-55X9000H\">Android Tivi Sony 4K 55 inch KD-55X9000H</a>&nbsp;được thiết kế với t&ocirc;ng m&agrave;u đen mạnh mẽ c&ugrave;ng với viền nh&ocirc;m mỏng, mang đến cho bạn một chiếc&nbsp;<a href=\"https://www.dienmayxanh.com/tivi\" target=\"_blank\" title=\"Tivi đang kinh doanh tại Điện máy XANH\" type=\"Tivi đang kinh doanh tại Điện máy XANH\">tivi</a>&nbsp;với vẻ ngo&agrave;i v&ocirc; c&ugrave;ng tinh tế v&agrave; độc đ&aacute;o.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.dienmayxanh.com/tivi?g=55-inch\" target=\"_blank\" type=\"Tivi 55 inch đang bán tại Điện Máy XANH\">tivi 55 inch</a>&nbsp;sẽ g&oacute;p phần l&agrave;m h&agrave;i h&ograve;a kh&ocirc;ng gian nội thất trong nh&agrave; bạn v&agrave; mang lại trải nghiệm thực sự đắm ch&igrave;m như trong rạp chiếu phim, ph&ugrave; hợp trưng b&agrave;y ở ph&ograve;ng kh&aacute;ch, văn ph&ograve;ng,...&nbsp;&nbsp;</p>\r\n', 'Android Tivi Sony 4K 55 inch KD-55X9000H', '1623761151162.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 5, 1, 20, '2021-06-15 05:45:51', '2021-06-15 05:46:35', 8, 8),
(28, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q60T', 'samsung-qa65q60t', 32900000, 23050000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Thiết kế thanh mảnh, sang trọng</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/samsung-qa65q60t\" target=\"_blank\" title=\"Smart Tivi QLED Samsung 4K 65 inch QA65Q60T\">Smart Tivi QLED Samsung 4K 65 inch QA65Q60T</a>&nbsp;l&agrave; sản phẩm độc quyền của Điện m&aacute;y Xanh c&oacute; thiết kế thanh mảnh với viền si&ecirc;u mỏng 0.5 cm tạo cho người xem cảm gi&aacute;c kh&ocirc;ng viền 3 cạnh, l&agrave;m sang trọng l&agrave;m tăng gi&aacute; trị thẩm mỹ trong kh&ocirc;ng gian sống của bạn.</p>\r\n\r\n<p>K&iacute;ch thước&nbsp;<a href=\"https://www.dienmayxanh.com/tivi?g=65-inch\" target=\"_blank\" title=\"Mời bạn xem thêm tivi 65 inch\" type=\"Mời bạn xem thêm tivi 65 inch\">tivi 65 inch</a>&nbsp;th&iacute;ch hợp cho những ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch c&oacute; diện t&iacute;ch vừa phải. Ch&acirc;n đế h&igrave;nh chữ V ngược gi&uacute;p bạn c&oacute; thể đặt&nbsp;<a href=\"https://www.dienmayxanh.com/tivi\" target=\"_blank\" title=\"Tivi\">tivi</a>&nbsp;tr&ecirc;n mọi bề mặt phẳng đều vững chắc.</p>\r\n', 'Smart Tivi QLED Samsung 4K 65 inch QA65Q60T', '1623761408699.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 1, 1, 20, '2021-06-15 05:50:08', '2021-06-15 05:50:08', 8, 8),
(29, 'Smart Tivi LG 4K 55 inch 55UN7000PTA', 'lg-55un7000pta', 15400000, 10490000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Thiết kế đơn giản, h&ograve;a hợp với mọi kh&ocirc;ng gian</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/lg-55un7000pta\" target=\"_blank\" title=\"Smart Tivi LG 4K 55 inch 55UN7000PTA\" type=\"Smart Tivi LG 4K 55 inch 55UN7000PTA\">Smart Tivi LG 4K 55 inch 55UN7000PTA</a>&nbsp;đi theo hướng thiết kế hiện đại tối giản nhất để ph&ugrave; hợp đặt v&agrave;o bất k&igrave; kh&ocirc;ng gian n&agrave;o. K&iacute;ch thước&nbsp;<a href=\"https://www.dienmayxanh.com/tivi?g=55-inch\" target=\"_blank\" type=\"Một số tivi 55 inch đang kinh doanh tại Điện Máy XANH\">55 inch</a>&nbsp;vừa đủ cho c&aacute;c ph&ograve;ng họp, ph&ograve;ng kh&aacute;ch, đặc biệt l&agrave; c&aacute;c ph&ograve;ng giải tr&iacute; chuy&ecirc;n biệt mang tới trải nghiệm xem đ&atilde; mắt nhất.</p>\r\n', 'Smart Tivi LG 4K 55 inch 55UN7000PTA', '1623761487694.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 6, 1, 20, '2021-06-15 05:51:27', '2021-06-15 05:51:27', 8, 8),
(30, 'Smart Tivi Samsung 32 inch UA32T4500', 'samsung-ua32t4500', 8000000, 7800000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Thiết kế tối giản, ch&acirc;n đế cứng c&aacute;p</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/samsung-ua32t4500\" target=\"_blank\" title=\"Smart Tivi Samsung 32 inch UA32T4500\" type=\"Smart Tivi Samsung 32 inch UA32T4500\">Smart Tivi Samsung 32 inch UA32T4500</a>&nbsp;g&acirc;y ấn tượng mạnh với viền v&agrave; ch&acirc;n đế m&agrave;u đen tuyền cuốn h&uacute;t, mạnh mẽ.</p>\r\n\r\n<p>K&iacute;ch cỡ&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-samsung?g=32-inch\" target=\"_blank\" title=\"Xem thêm tivi Samsung 32 - 43 inch đang kinh doanh tại Điện máy XANH\" type=\"Xem thêm tivi Samsung 32 - 43 inch đang kinh doanh tại Điện máy XANH\">tivi Samsung 32 inch</a>&nbsp;nhỏ gọn, bố tr&iacute; h&agrave;i h&ograve;a trong c&aacute;c kh&ocirc;ng gian c&oacute; diện t&iacute;ch vừa v&agrave; nhỏ như: ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ, ph&ograve;ng l&agrave;m việc..</p>\r\n', 'Smart Tivi Samsung 32 inch UA32T4500', '1623761648302.jpg', ' Bảo hành chính hãng tivi 1 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 1, 1, 20, '2021-06-15 05:54:08', '2021-06-15 05:54:08', 8, 8),
(31, 'Tủ lạnh Panasonic Inverter 268 lít NR-BL300PKVN', 'panasonic-nr-bl300pkvn', 10490000, 10090000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Mang đến vẻ đẹp sang trọng v&agrave; đẳng cấp với sắc đen mạnh mẽ</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/panasonic-nr-bl300pkvn\" target=\"_blank\" title=\"Tủ lạnh Panasonic Inverter 268 lít NR-BL300PKVN\">Tủ lạnh Panasonic Inverter 268 l&iacute;t NR-BL300PKVN</a>&nbsp;sở hữu kiểu d&aacute;ng&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=ngan-da-tren\" target=\"_blank\" title=\"Ngăn đá trên\">ngăn đ&aacute; tr&ecirc;n</a>&nbsp;quen thuộc với người ti&ecirc;u d&ugrave;ng Việt Nam. Kết hợp với sắc đen mạnh mẽ, tủ lạnh sẽ mang đến vẻ đẹp sang trọng v&agrave; đẳng cấp cho kh&ocirc;ng gian nội thất của gia đ&igrave;nh.</p>\r\n', 'Tủ lạnh Panasonic Inverter 268 lít NR-BL300PKVN', '1623761762551.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 3, 1, 20, '2021-06-15 05:56:02', '2021-06-15 05:56:02', 8, 8),
(32, 'Tủ lạnh Panasonic Inverter 255 lít NR-BV280QSVN ', 'panasonic-nr-bv280qsvn', 11490000, 11090000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-cap-dong-mem-sieu-toc-the-he-moi-tu-lanh-1107647\" target=\"_blank\" title=\"Xem thêm bào viết về ngăn cấp đông mềm thế hệ mới Prime Fresh+\">Ngăn cấp đ&ocirc;ng mềm thế hệ mới Prime Fresh+</a>&nbsp;bảo quản thực phẩm kh&ocirc;ng cần r&atilde; đ&ocirc;ng</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/panasonic-nr-bv280qsvn\" target=\"_blank\" title=\"Tủ lạnh Panasonic Inverter 255 lít NR-BV280QSVN\">Tủ lạnh Panasonic Inverter 255 l&iacute;t NR-BV280QSVN</a>&nbsp;trang bị ngăn đ&ocirc;ng mềm thế hệ mới Prime Fresh+ với mức nhiệt độ ở -3 độ C gi&uacute;p thực phẩm tươi sống được l&agrave;m đ&ocirc;ng nhanh hơn v&agrave; tươi mới l&ecirc;n đến 7 ng&agrave;y m&agrave; kh&ocirc;ng bị đ&ocirc;ng đ&aacute;. Nhờ vậy, thực phẩm giữ được c&aacute;c chất dinh dưỡng, độ thơm ngon, đồng thời bạn kh&ocirc;ng phải tốn th&ecirc;m nhiều thời gian để r&atilde; đ&ocirc;ng trước khi chế biến.</p>\r\n', 'Tủ lạnh Panasonic Inverter 255 lít NR-BV280QSVN ', '1623761843776.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 3, 1, 20, '2021-06-15 05:57:23', '2021-06-15 05:59:46', 8, 8),
(33, 'Tủ lạnh Panasonic Inverter 417 lít NR-BX471GPKV', 'panasonic-nr-bx471gpkv', 20090000, 19090000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Bảo quản thực phẩm tươi ngon l&ecirc;n đến 7 ng&agrave;y với ngăn cấp đ&ocirc;ng mềm Prime Fresh+</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/panasonic-nr-bx471gpkv\" target=\"_blank\" title=\"Mời bạn xem thêm về Tủ lạnh Panasonic Inverter 417 lít NR-BX471GPKV đang kinh doanh tại Điện máy XANH\">Tủ lạnh Panasonic Inverter 417 l&iacute;t NR-BX471GPKV</a>&nbsp;trang bị&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-cap-dong-mem-sieu-toc-the-he-moi-tu-lanh-1107647\" target=\"_blank\" title=\"Mời bạn xem thêm về ngăn đông mềm Prime Fresh+\">ngăn đ&ocirc;ng mềm Frime Fresh+</a>&nbsp;bảo quản thực phẩm nhờ một lớp đ&ocirc;ng nhẹ tr&ecirc;n bề mặt thực phẩm&nbsp;ở mức nhiệt độ -3 độ C. Nhờ đ&oacute;, giữ trọn chất dinh dưỡng, hương vị tươi ngon của thực phẩm v&agrave; kh&ocirc;ng phải mất thời gian r&atilde; đ&ocirc;ng trước khi chế biến.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với khả năng cấp đ&ocirc;ng nhanh gấp 4 lần, giảm tốc độ oxi h&oacute;a thực phẩm l&ecirc;n đến 20%, ngăn đ&ocirc;ng mềm c&oacute; thể bảo quản thực phẩm l&ecirc;n đến 7 ng&agrave;y.</p>\r\n', 'Tủ lạnh Panasonic Inverter 417 lít NR-BX471GPKV', '1623762113404.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 3, 1, 20, '2021-06-15 06:01:53', '2021-06-15 06:01:53', 8, 8),
(34, 'Tủ lạnh Panasonic Inverter 550 lít NR-DZ600GXVN', 'panasonic-nr-dz600gxvn', 37990000, 36990000, 1, '<h3>B&agrave;i viết đ&aacute;nh gi&aacute;</h3>\r\n\r\n<h3>Tủ lạnh 4 cửa sang trọng, c&oacute; đ&egrave;n LED tay cầm ph&aacute;t s&aacute;ng v&agrave;o ban đ&ecirc;m</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/panasonic-nr-dz600gxvn\" target=\"_blank\" title=\"Xem chi tiết Tủ lạnh Panasonic Inverter 550 lít NR-DZ600GXVN tại Điện máy XANH\" type=\"Xem chi tiết Tủ lạnh Panasonic Inverter 550 lít NR-DZ600GXVN tại Điện máy XANH\">Tủ lạnh Panasonic Inverter 550 l&iacute;t NR-DZ600GXVN</a>&nbsp;với&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh-4-canh\" target=\"_blank\" title=\"Tủ lạnh 4 cửa giá tốt bán tại Điện máy XANH\" type=\"Tủ lạnh 4 cửa giá tốt bán tại Điện máy XANH\">thiết kế 4 cửa</a>&nbsp;hiện đại kh&ocirc;ng chỉ tối ưu h&oacute;a kh&ocirc;ng gian lưu trữ thực phẩm m&agrave; n&oacute; c&ograve;n t&ocirc; điểm cho gian bếp của bạn một vẻ đẹp sang trọng kh&ocirc;ng ngờ.</p>\r\n\r\n<p>Ngo&agrave;i ra tay cầm tủ với đ&egrave;n LED tự động bật s&aacute;ng khi c&oacute; người gi&uacute;p dễ d&agrave;ng mở tủ ngay cả trong ph&ograve;ng tối. Hệ thống &aacute;nh s&aacute;ng xanh đẹp mắt cũng g&oacute;p phần khiến tủ th&ecirc;m sang trọng, đẳng cấp.</p>\r\n', 'Tủ lạnh Panasonic Inverter 550 lít NR-DZ600GXVN', '1623762197787.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 3, 1, 20, '2021-06-15 06:03:17', '2021-06-15 06:03:17', 8, 8),
(35, 'Tủ lạnh Toshiba Inverter 513 lít GR-RS682WE-PMV(06)-MG', 'toshiba-gr-rs682we-pmv-06-mg', 29990000, 28990000, 1, '<h3>Thiết kế sang trọng, bảng điều khiển cảm ứng hiện đại b&ecirc;n ngo&agrave;i&nbsp;</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/toshiba-gr-rs682we-pmv-06-mg\" target=\"_blank\" title=\"xem thêm Tủ lạnh Toshiba Inverter 513 lít GR-RS682WE-PMV(06)-MG\" type=\"xem thêm Tủ lạnh Toshiba Inverter 513 lít GR-RS682WE-PMV(06)-MG\">Toshiba Inverter 513 l&iacute;t GR-RS682WE-PMV(06)-MG</a>&nbsp;thuộc mẫu&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=tu-lon-side-by-side\" target=\"_blank\" title=\"xem thêm tủ lạnh lớn side by side 2 cửa\" type=\"xem thêm tủ lạnh lớn side by side 2 cửa\">tủ lạnh side by side</a>, gam m&agrave;u đen tinh tế, c&ugrave;ng với bảng điều khiển cảm ứng hiện đại được thiết kế b&ecirc;n ngo&agrave;i, ắt hẳn sẽ trở th&agrave;nh nội thất sang trọng cho kh&ocirc;ng gian nh&agrave; bạn.&nbsp;&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/221082/toshiba-gr-rs682we-pmv-06-mgthie%CC%82%CC%81t-ke%CC%82%CC%81.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mgthie%CC%82%CC%81t-ke%CC%82%CC%81.jpg\" title=\"Thiết kế\" /></a></p>\r\n\r\n<h3>Tiết kiệm điện hiệu quả với c&ocirc;ng nghệ Origin Inverter&nbsp;</h3>\r\n\r\n<p>Nhờ c&oacute; c&ocirc;ng nghệ Origin Inverter,&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh-toshiba\" target=\"_blank\" title=\"xem thêm tủ lạnh toshiba\" type=\"xem thêm tủ lạnh toshiba\">tủ lạnh&nbsp;Toshiba</a>&nbsp;n&agrave;y mang lại hiệu quả tiết kiệm điện tối ưu khi c&oacute; khả năng sử dụng đồng thời m&aacute;y n&eacute;n Inverter lẫn quạt Inverter, nhằm duy tr&igrave; được hơi lạnh l&yacute; tưởng, ph&ugrave; hợp với khối lượng thực phẩm b&ecirc;n trong tủ lạnh.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/221082/Slider/-vi-vn-inverter.jpg\" onclick=\"return false;\"><img alt=\"Origin Inverter\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/Slider/-vi-vn-inverter.jpg\" title=\"Origin Inverter\" /></a></p>\r\n\r\n<h3>Ph&acirc;n bổ đều luồng kh&iacute;, bảo quản lạnh thực phẩm to&agrave;n diện c&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/he-thong-lam-lanh-da-chieu-tren-tu-lanh-la-gi-796059\" target=\"_blank\" title=\"xem thêm Hệ thống làm lạnh đa chiều\" type=\"xem thêm Hệ thống làm lạnh đa chiều\">c&ocirc;ng nghệ l&agrave;m lạnh đa chiều</a></h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh-toshiba-inverter\" target=\"_blank\" title=\"xem thêm Tủ lạnh Toshiba Inverter\" type=\"xem thêm Tủ lạnh Toshiba Inverter\">tủ lạnh&nbsp;Toshiba Inverter&nbsp;</a>GR-RS682WE-PMV(06)-MG c&ograve;n sở hữu c&ocirc;ng nghệ l&agrave;m lạnh đa chiều, gi&uacute;p luồng kh&iacute; được lan tỏa mọi ng&oacute;c ng&aacute;ch b&ecirc;n trong tủ, l&agrave;m cho hơi lạnh bao quanh to&agrave;n diện thực phẩm, nhằm giữ được độ tươi ngon v&agrave; k&eacute;o d&agrave;i thời gian bảo quản thực phẩm l&acirc;u hơn.&nbsp;</p>\r\n', 'Tủ lạnh Toshiba Inverter 513 lít GR-RS682WE-PMV(06)-MG', '1623762283785.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 4, 1, 20, '2021-06-15 06:04:43', '2021-06-15 06:04:43', 8, 8),
(36, 'Tủ lạnh Toshiba Inverter 194 lít GR-A25VM(UKG1)', 'toshiba-gr-a25vm-ukg1', 6490000, 6290000, 1, '<h3>Tiết kiệm điện, l&agrave;m lạnh hiệu quả nhờ&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\" title=\"xem thêm công nghệ biến tần Inverter\" type=\"xem thêm công nghệ biến tần Inverter\">c&ocirc;ng nghệ Inverter</a></h3>\r\n\r\n<p>Được trang bị c&ocirc;ng nghệ biến tần Inverter,&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh/toshiba-gr-a25vm-ukg1\" target=\"_blank\" title=\"xem thêm Tủ lạnh Toshiba Inverter 194 lít GR-A25VM(UKG1)\" type=\"xem thêm Tủ lạnh Toshiba Inverter 194 lít GR-A25VM(UKG1)\">tủ lạnh Toshiba Inverter 194 l&iacute;t GR-A25VM(UKG1)</a>&nbsp;mang lại hiệu quả tiết kiệm điện tối ưu m&agrave; vẫn đảm bảo khả năng l&agrave;m lạnh tốt. Ngo&agrave;i ra, tủ lạnh c&ograve;n vận h&agrave;nh &ecirc;m &aacute;i, bền bỉ trong suốt thời gian sử dụng.</p>\r\n\r\n<h3>Giữ thịt c&aacute; tươi ngon, ăn trong ng&agrave;y kh&ocirc;ng cần r&atilde; đ&ocirc;ng với&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ngan-cap-dong-mem-ultra-cooling-zone-tren-tu-lanh-1099128\" target=\"_blank\" title=\"xem thêm Ngăn cấp đông mềm Ultra Cooling Zone\" type=\"xem thêm Ngăn cấp đông mềm Ultra Cooling Zone\">ngăn đ&ocirc;ng mềm&nbsp;Ultra Cooling Zone -1 độ C</a></h3>\r\n\r\n<p>Ngăn đ&ocirc;ng mềm&nbsp;Ultra Cooling Zone -1 độ C gi&uacute;p duy tr&igrave; được độ tươi ngon của thịt, c&aacute;, hải sản trong ng&agrave;y m&agrave; kh&ocirc;ng cần phải tốn thời gian để chờ r&atilde; đ&ocirc;ng trước khi chế biến, mang lại sự tiện lợi cho bạn. Tuy nhi&ecirc;n, nếu muốn bảo quản thịt c&aacute; trong thời gian l&acirc;u hơn th&igrave; bạn vẫn n&ecirc;n sử dụng ngăn đ&ocirc;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/225379/Slider/130720-0157108.jpg\" onclick=\"return false;\"><img alt=\"Tủ lạnh Toshiba Inverter 194 lít GR-A25VM(UKG1)-Giữ hương vị tươi ngon với ngăn đông mềm Ultra Cooling Zone -1 độ C\" src=\"https://cdn.tgdd.vn/Products/Images/1943/225379/Slider/130720-0157108.jpg\" /></a></p>\r\n\r\n<h3>Thiết kế sang trọng, ấn tượng bởi chất liệu cửa tủ&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-chat-lieu-cua-tu-lanh-pho-bien-hien-nay-tren-t-1177203#uniglass\" target=\"_blank\" title=\"xem thêm Cửa tủ lạnh Uniglass\" type=\"xem thêm Cửa tủ lạnh Uniglass\">Uniglass</a></h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh-toshiba\" target=\"_blank\" title=\"xem thêm Tủ lạnh Toshiba \" type=\"xem thêm Tủ lạnh Toshiba \">tủ lạnh&nbsp;Toshiba</a>&nbsp;GR-A25VM(UKG1) được h&atilde;ng sử dụng c&ocirc;ng nghệ độc quyền Uniglass l&agrave;m cho bạn ấn tượng ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n, bởi độ s&aacute;ng v&agrave; độ trong suốt từ ph&iacute;a c&aacute;nh cửa<a href=\"https://www.dienmayxanh.com/tu-lanh\" target=\"_blank\" title=\"xem thêm Tủ lạnh\" type=\"xem thêm Tủ lạnh\">&nbsp;tủ lạnh</a>. Chất liệu n&agrave;y tr&ocirc;ng giống như một tấm k&iacute;nh, c&oacute; khả năng chống gỉ s&eacute;t, chống ch&aacute;y v&agrave; mang lại độ bền cao.&nbsp;</p>\r\n', 'Tủ lạnh Toshiba Inverter 194 lít GR-A25VM(UKG1)', '1623762377437.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 4, 1, 20, '2021-06-15 06:06:19', '2021-06-15 06:06:19', 8, 8),
(37, 'Tủ lạnh Toshiba Inverter 555 lít GR-AG58VA (X)', 'toshiba-gr-ag58va-x', 20790000, 19790000, 1, '<h3>Thiết kế hiện đại, đẳng cấp mới</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tu-lanh/toshiba-gr-ag58va-x\" target=\"_blank\" title=\"Tủ lạnh Toshiba Inverter 555 lít GR-AG58VA (X)\">Tủ lạnh Toshiba Inverter 555 l&iacute;t GR-AG58VA (X)</a>&nbsp;l&agrave; d&ograve;ng&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=ngan-da-tren\" target=\"_blank\" title=\"tủ lạnh ngăn đá trên\">tủ lạnh ngăn đ&aacute; tr&ecirc;n</a>&nbsp;quen thuộc, c&oacute; trang bị&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=bang-dieu-khien-ben-ngoai\" target=\"_blank\" title=\"bảng điều khiển cảm ứng bên ngoài\">bảng điều khiển cảm ứng b&ecirc;n ngo&agrave;i</a>&nbsp;kh&aacute; hiện đại. Tủ mặt gương soi s&aacute;ng r&otilde;, phối hợp bắt mắt, tạo sự h&agrave;i h&ograve;a v&agrave; t&ocirc; điểm th&ecirc;m cho kh&ocirc;ng gian nội thất của gia đ&igrave;nh bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/197907/Slider/vi-vn-toshiba-gr-ag58va-x-thiet-ke-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế hiện đại sang trọng\" src=\"https://cdn.tgdd.vn/Products/Images/1943/197907/Slider/vi-vn-toshiba-gr-ag58va-x-thiet-ke-2.jpg\" title=\"Thiết kế hiện đại sang trọng\" /></a></p>\r\n\r\n<h3>Dung t&iacute;ch lớn d&agrave;nh cho gia đ&igrave;nh đ&ocirc;ng th&agrave;nh vi&ecirc;n&nbsp;</h3>\r\n\r\n<p>Với dung t&iacute;ch&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh?g=tren-550-lit\" target=\"_blank\" title=\"555 lít\">555 l&iacute;t</a>&nbsp;v&agrave; thiết kế c&aacute;c ngăn kệ chứa v&ocirc; c&ugrave;ng hợp l&yacute; v&agrave; khoa học, cho bạn th&ecirc;m nhiều kh&ocirc;ng gian hơn để bạn c&oacute; thể bảo quản được nhiều thực phẩm hơn, ph&ugrave; hợp cho những gia đ&igrave;nh c&oacute; tr&ecirc;n 5 th&agrave;nh vi&ecirc;n sử dụng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/197907/tu-lanh-toshiba-gr-ag58va-x-10.jpg\" onclick=\"return false;\"><img alt=\"Dung tích lớn - Tủ lạnh Toshiba Inverter 555 lít GR-AG58VA (X)\" src=\"https://cdn.tgdd.vn/Products/Images/1943/197907/tu-lanh-toshiba-gr-ag58va-x-10.jpg\" title=\"Dung tích lớn - Tủ lạnh Toshiba Inverter 555 lít GR-AG58VA (X)\" /></a></p>\r\n\r\n<h3>C&ocirc;ng nghệ Dual Inverter kết hợp chế độ Eco tiết kiệm điện, vận h&agrave;nh &ecirc;m</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\" title=\"Công nghệ Dual Inverter\">C&ocirc;ng nghệ Dual Inverter</a>&nbsp;sẽ gi&uacute;p cho tủ lạnh lu&ocirc;n duy tr&igrave; hiệu suất l&agrave;m việc ổn định, tiết kiệm điện 45% so với tủ lạnh thường, vận h&agrave;nh &ecirc;m &aacute;i, kh&ocirc;ng g&acirc;y ra sự ồn &agrave;o. Kết hợp sử dụng với loại ga R600a v&ocirc; c&ugrave;ng th&acirc;n thiện với m&ocirc;i trường v&agrave; an to&agrave;n với sức khỏe gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh-toshiba\" target=\"_blank\" title=\"tủ lạnh Toshiba\">tủ lạnh Toshiba</a>&nbsp;c&ograve;n c&oacute; chế độ tiết kiệm điện&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-tiet-kiem-dien-tren-tu-lanh-toshiba-684620#eco\" target=\"_blank\" title=\"Eco Mode\">Eco Mode</a>&nbsp;gi&uacute;p tối ưu hiệu quả tiết kiệm điện m&agrave; thực phẩm vẫn tươi ngon.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1943/197907/Slider/vi-vn-toshiba-gr-ag58va-x-inverter.jpg\" onclick=\"return false;\"><img alt=\"Công nghệ Inverter tiết kiệm hiệu quả\" src=\"https://cdn.tgdd.vn/Products/Images/1943/197907/Slider/vi-vn-toshiba-gr-ag58va-x-inverter.jpg\" title=\"Công nghệ Inverter tiết kiệm hiệu quả\" /></a></p>\r\n', 'Tủ lạnh Toshiba Inverter 555 lít GR-AG58VA (X)', '1623762478406.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 4, 1, 20, '2021-06-15 06:07:58', '2021-06-15 06:07:58', 8, 8),
(38, 'Tủ lạnh Toshiba Inverter 608 lít GR-AG66VA X', 'toshiba-gr-ag66va-x', 21590000, 20590000, 1, '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li>Hiệu quả tiết kiệm điện cao với c&ocirc;ng nghệ Inverter.</li>\r\n	<li>Kh&ocirc;ng cần r&atilde; đ&ocirc;ng, chế biến thực phẩm ngay nhờ ngăn cấp đ&ocirc;ng mềm Ultra Fresh&nbsp;-3 độ C.</li>\r\n	<li>Kh&iacute; lạnh lan tỏa đều bởi c&ocirc;ng nghệ l&agrave;m lạnh v&ograve;ng cung.</li>\r\n	<li>Khử m&ugrave;i v&agrave; kh&aacute;ng khuẩn tối ưu nhờ c&ocirc;ng nghệ&nbsp;Duo Hybrid.</li>\r\n	<li>Tiện lợi với cơ chế l&agrave;m đ&aacute; tự động.</li>\r\n	<li>Ngăn rau quả kh&aacute;ng khuẩn gi&uacute;p bảo quản thực phẩm tươi l&acirc;u hơn.</li>\r\n</ul>\r\n', 'Tủ lạnh Toshiba Inverter 608 lít GR-AG66VA X', '1623763464528.jpg', ' Bảo hành chính hãng tủ lạnh 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 3, 4, 1, 20, '2021-06-15 06:24:24', '2021-06-15 06:24:24', 8, 8),
(39, 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A3 10 lõi', 'kangaroo-kg10a3', 8990000, 8190000, 1, '<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc/kangaroo-kg10a3\" target=\"_blank\" title=\"Máy lọc nước RO Kangaroo KG10A3KG 10 lõi\">M&aacute;y lọc nước RO Kangaroo KG10A3 10 l&otilde;i</a>&nbsp;c&oacute; thiết kế hiện đại, sang trọng, sử dụng được trong gia đ&igrave;nh như&nbsp;ph&ograve;ng kh&aacute;ch, nh&agrave; bếp hoặc d&ugrave;ng trong văn ph&ograve;ng, nh&agrave; h&agrave;ng, kh&aacute;ch sạn&nbsp;</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/193282/may-loc-nuoc-kangaroo-kg10a3-1-1.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế sang trọng, hiện đại, tiện dụng - Máy lọc nước RO Kangaroo KG10A3 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/193282/may-loc-nuoc-kangaroo-kg10a3-1-1.jpg\" title=\"Thiết kế sang trọng, hiện đại, tiện dụng - Máy lọc nước RO Kangaroo KG10A3 10 lõi\" /></a></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc-kangaroo\" target=\"_blank\" title=\"Tham khảo các sản phẩm máy lọc nước Kangaroo giá tốt đang kinh doanh tại Điện máy XANH\">M&aacute;y lọc nước Kangaroo</a>&nbsp;c&oacute; khả năng lọc l&ecirc;n đến 10 - 12 l&iacute;t/giờ, trong đ&oacute; dung t&iacute;ch b&igrave;nh nước n&oacute;ng 0.8 l&iacute;t, nước thường 8 l&iacute;t, nước lạnh 0.8 l&iacute;t</h3>\r\n\r\n<p>Đảm bảo khả năng lọc nhanh ch&oacute;ng v&agrave; đ&aacute;p ứng đầy đủ nhu cầu nước uống li&ecirc;n tục cho nhiều người. Sản phẩm c&ograve;n c&oacute; khả năng tự động lọc v&agrave; ngừng khi đủ nước, thải nước thải v&agrave; bảo vệ khi qu&aacute; nhiệt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/193282/may-loc-nuoc-kangaroo-kg10a3-5.jpg\" onclick=\"return false;\"><img alt=\"Máy lọc nước Kangaroo KG10A3\" src=\"https://cdn.tgdd.vn/Products/Images/3385/193282/may-loc-nuoc-kangaroo-kg10a3-5.jpg\" title=\"Máy lọc nước Kangaroo KG10A3\" /></a></p>\r\n', 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A3 10 lõi', '1623763723836.jpg', ' Bảo hành chính 1 năm, có người đến tận nhà lắp ráp', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:28:43', '2021-06-15 06:28:43', 8, 8),
(40, 'Máy lọc nước R.O Hydrogen Kangaroo KG100HC 10 lõi', 'may-loc-nuoc-kangaroo-kg100hc', 8990000, 5390000, 1, '<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc-kangaroo\" target=\"_blank\" title=\"Tham khảomMáy lọc nước Kangaroo chính hãng, giá tốt tại Điện máy XANH\">M&aacute;y lọc nước Kangaroo</a>&nbsp;thiết kế độc đ&aacute;o kết hợp c&ocirc;ng nghệ&nbsp;m&agrave;ng lọc RO Votex lọc nước trong, sạch hơn</h3>\r\n\r\n<p>Với k&iacute;ch cỡ gọn đẹp, h&igrave;nh trụ tr&ograve;n tượng trưng cho sự sinh tồn, bỏ đi những đường g&oacute;c cạnh cứng nhắc, m&aacute;y lọc nước tại v&ograve;i kh&ocirc;ng chiếm nhiều diện t&iacute;ch khi lắp đặt, thay thế&nbsp;<a href=\"https://www.dienmayxanh.com/loi-may-loc-nuoc\" target=\"_blank\" title=\"Tham khảo các lõi lọc nước tại Điện Máy XANH\">l&otilde;i lọc</a>, cho kh&ocirc;ng gian sống rộng r&atilde;i, th&ocirc;ng tho&aacute;ng hơn.</p>\r\n\r\n<p>C&ocirc;ng nghệ lọc RO Vortex ti&ecirc;n tiến, tăng tốc độ xo&aacute;y v&agrave; diện t&iacute;ch bề mặt nguồn nước, tối ưu thời gian l&otilde;i lọc. Gi&uacute;p giảm đ&oacute;ng cặn, n&acirc;ng cao hiệu suất lọc nước v&agrave; tiết kiệm khoảng 75% lượng nước thải, cho nguồn nước sau lọc đạt chất lượng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/202981/may-loc-nuoc-kangaroo-kg100hc-2-1.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế sang trọng, độc đáo - Máy lọc nước Kangaroo KG100HC 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/202981/may-loc-nuoc-kangaroo-kg100hc-2-1.jpg\" title=\"Thiết kế sang trọng, độc đáo - Máy lọc nước Kangaroo KG100HC 10 lõi\" /></a></p>\r\n\r\n<h3>Cung cấp Hydrogen v&agrave; đầy đủ kho&aacute;ng chất&nbsp;tự nhi&ecirc;n, tốt cho sức khỏe người d&ugrave;ng</h3>\r\n\r\n<p>Hỗ trợ cải thiện t&igrave;nh trạng bệnh tật do trung h&ograve;a c&aacute;c t&aacute;c nh&acirc;n oxy h&oacute;a mạnh - t&aacute;c nh&acirc;n ch&iacute;nh g&acirc;y ra qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể, nhờ v&agrave;o c&ocirc;ng nghệ tạo Hydrogen n&acirc;ng cấp hơn c&aacute;c phi&ecirc;n bản m&aacute;y lọc nước trước cho nước đầu ra đạt h&agrave;m lượng Hydrogen tăng từ 30 - 40%.&nbsp;Nước gi&agrave;u Hydrogen loại bỏ xuất sắc c&aacute;c gốc tự do, trung h&ograve;a c&aacute;c t&aacute;c nh&acirc;n oxy h&oacute;a mạnh.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-loc-nuoc-hydrogen-la-gi-1013289\" target=\"_blank\" title=\"Nước hydrogen là gì? Giải đáp những câu hỏi về máy lọc nước hydrogen\">Nước hydrogen l&agrave; g&igrave;? Giải đ&aacute;p những c&acirc;u hỏi về m&aacute;y lọc nước hydrogen.</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/109835/hydrogen-kangaroo-vtu-kg100ha-074620-024631.jpg\" onclick=\"return false;\"><img alt=\"Tính năng cung cấp Hydrogen - Máy lọc nước Kangaroo KG100HC 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/109835/hydrogen-kangaroo-vtu-kg100ha-074620-024631.jpg\" title=\"Tính năng cung cấp Hydrogen - Máy lọc nước Kangaroo KG100HC 10 lõi\" /></a></p>\r\n', 'Máy lọc nước R.O Hydrogen Kangaroo KG100HC 10 lõi', '1623763819306.jpg', 'Bảo hành chính hãng 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:30:20', '2021-06-15 06:30:20', 8, 8),
(41, 'Máy lọc nước R.O Hydrogen Kangaroo KG10G5VTU 10 lõi', 'may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi', 8490000, 6190000, 1, '<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc\" target=\"_blank\" title=\"Tham khảo các sản phẩm máy lọc nước giá tốt đang kinh doanh tại Điện máy XANH\">M&aacute;y lọc nước</a>&nbsp;m&agrave;u sắc v&agrave; hoa văn sang trọng, đẹp mắt cho kh&ocirc;ng gian d&ugrave;ng</h3>\r\n\r\n<p>Đặc biệt, sản phẩm với c&ocirc;ng nghệ lọc RO Vortex ti&ecirc;n tiến, tăng tốc độ xo&aacute;y v&agrave; diện t&iacute;ch bề mặt nguồn nước, tối ưu thời gian l&otilde;i lọc. Gi&uacute;p giảm đ&oacute;ng cặn, giảm đến 75% lượng nước thải, n&acirc;ng cao hiệu suất lọc nước&nbsp;cho nguồn nước sau lọc đạt chất lượng.</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-4.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế đẹp, bền tốt - Máy lọc nước RO Kangaroo KG10G5VTU 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-4.jpg\" title=\"Thiết kế đẹp, bền tốt - Máy lọc nước RO Kangaroo KG10G5VTU 10 lõi\" /></a></h3>\r\n\r\n<h3>Tạo nguồn nước đầy đủ kho&aacute;ng chất v&agrave; gi&agrave;u Hydrogen tự nhi&ecirc;n, tốt cho sức khỏe</h3>\r\n\r\n<p>Cải thiện việc giảm năng lượng bằng hỗ trợ trung h&ograve;a c&aacute;c gốc tự do (t&aacute;c nh&acirc;n g&acirc;y ung thư, tiểu đường, tăng huyết &aacute;p v&agrave; nhiều bệnh kh&aacute;c), chăm s&oacute;c sắc đẹp nhờ tốc độ thẩm thấu nhanh qua da.</p>\r\n\r\n<p>Cung cấp Hydrogen chống g&acirc;y l&atilde;o h&oacute;a, bổ sung kho&aacute;ng chất tự nhi&ecirc;n Ca2+, Fe2+, Na+&hellip; Gi&uacute;p cải thiện t&igrave;nh trạng gut, tăng cường tuần ho&agrave;n m&aacute;u, thanh lọc cơ thể v&agrave; giảm thiểu căng thẳng mệt mỏi.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-loc-nuoc-hydrogen-la-gi-1013289\" target=\"_blank\" title=\"Nước hydrogen là gì? Giải đáp những câu hỏi về máy lọc nước hydrogen\">Nước hydrogen l&agrave; g&igrave;? Giải đ&aacute;p những c&acirc;u hỏi về m&aacute;y lọc nước hydrogen.</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-221020-091024.jpg\" onclick=\"return false;\"><img alt=\"Tính năng cung cấp Hydrogen - Máy lọc nước R.O Hydrogen Kangaroo KG10G5VTU 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-221020-091024.jpg\" title=\"Tính năng cung cấp Hydrogen - Máy lọc nước R.O Hydrogen Kangaroo KG10G5VTU 10 lõi\" /></a></p>\r\n\r\n<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc-kangaroo\" target=\"_blank\" title=\"Tham khảo các sản phẩm máy lọc nước Kangaroo giá tốt đang kinh doanh tại Điện máy XANH\">M&aacute;y lọc nước Kangaroo</a>&nbsp;c&oacute; khả năng lọc l&ecirc;n đến 20 l&iacute;t/giờ, với b&igrave;nh chứa nước 8 l&iacute;t đảm bảo phục vụ thoải m&aacute;i nhu cầu gia đ&igrave;nh</h3>\r\n\r\n<p>Sản phẩm t&iacute;ch hợp t&iacute;nh năng tự ngắt lọc khi đủ nước, tự thải nước thải v&agrave; bảo vệ khi qu&aacute; nhiệt.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-072720-092705.jpg\" onclick=\"return false;\"><img alt=\"Công suất - Máy lọc nước RO Kangaroo KG10G5VTU 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/220265/may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-072720-092705.jpg\" title=\"Công suất - Máy lọc nước RO Kangaroo KG10G5VTU 10 lõi\" /></a></p>\r\n\r\n<h3>M&aacute;y c&oacute; tỷ lệ lọc - thải l&agrave; 48/52 thu hồi 48% nước tinh khiết</h3>\r\n\r\n<p>Trong điều kiện ti&ecirc;u chuẩn, với 10 l&iacute;t nước đưa v&agrave;o m&aacute;y sẽ lọc được 4.8 l&iacute;t nước tinh khiết để uống v&agrave; 5.2 l&iacute;t được thải ra ngo&agrave;i.</p>\r\n\r\n<p>Lượng nước thải ra, bạn c&oacute; thể t&aacute;i sử dụng cho hoạt động sinh hoạt, vệ sinh kh&aacute;c của gia đ&igrave;nh như giặt đồ, lau dọn nh&agrave; cửa, nh&agrave; vệ sinh hay tưới c&acirc;y&hellip;</p>\r\n', 'Máy lọc nước R.O Hydrogen Kangaroo KG10G5VTU 10 lõi', '1623763921313.jpg', 'Bảo hành chính hãng 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:32:01', '2021-06-15 06:32:01', 8, 8),
(42, 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100EO 7 lõi', 'ro-dien-phan-kangaroo-kg100e0-7-loi', 12900000, 9120000, 1, '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ điện ph&acirc;n nước RO&nbsp;<strong>tạo nước Hydrogen ion kiềm, cung cấp nước sạch to&agrave;n diện.</strong></li>\r\n	<li>Hệ thống 7 l&otilde;i lọc&nbsp;<strong>cung cấp nước sạch, th&ecirc;m nhiều kho&aacute;ng chất, độ ngọt tự nhi&ecirc;n.</strong></li>\r\n	<li><strong>C&ocirc;ng suất lọc 18 l&iacute;t/giờ</strong>, b&igrave;nh chứa nước 6 l&iacute;t&nbsp;<strong>đủ d&ugrave;ng cho nhu cầu nước uống tại gia đ&igrave;nh.</strong></li>\r\n	<li>Hệ thống&nbsp;<strong>bơm - h&uacute;t 2 chiều, van điện từ</strong>&nbsp;tăng &aacute;p lực nước đầu v&agrave;o, n&acirc;ng cao hiệu suất lọc, tăng tuổi thọ sản phẩm.</li>\r\n	<li>Tấm điện cực được thiết kế dưới dạng lưới mắt c&aacute;o&nbsp;<strong>l&agrave;m tăng diện t&iacute;ch tiếp x&uacute;c với nước</strong><strong>, chống b&aacute;m cặn tốt v&agrave; an to&agrave;n cho sức khoẻ.</strong></li>\r\n	<li><strong>Ra mắt năm 2020</strong>, thương hiệu&nbsp;<strong>Kangaroo - Việt Nam, sản xuất tại Việt Nam</strong>.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100EO 7 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/226165/Kit/ro-dien-phan-kangaroo-kg100e0-7-loi-note-1.jpg\" /></p>\r\n', 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100EO 7 lõi', '1623764017524.jpg', 'Bảo hành chính hãng 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:33:37', '2021-06-15 06:33:37', 8, 8),
(43, 'Máy lọc nước RO Kangaroo KG10G4 10 lõi', 'kangaroo-kg10g4', 6990000, 5590000, 1, '<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc-kangaroo\" target=\"_blank\" title=\"Tham khảo các sản phẩm máy lọc nước Kangaroo giá tốt đang kinh doanh tại Điện máy XANH\">M&aacute;y lọc nước Kangaroo</a>&nbsp;thiết kế hiện đại, mặt trước phủ sơn m&agrave;u v&agrave;ng đồng bắt mắt, tăng t&iacute;nh thẩm mỹ cho mọi kh&ocirc;ng gian sử dụng</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/197575/kangaroo-kg10g4-1.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế hiện đại, mặt trước phủ sơn màu vàng đồng bắt mắt - Máy lọc nước RO Kangaroo KG10G4 10 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/197575/kangaroo-kg10g4-1.jpg\" title=\"Thiết kế hiện đại, mặt trước phủ sơn màu vàng đồng bắt mắt - Máy lọc nước RO Kangaroo KG10G4 10 lõi\" /></a></p>\r\n\r\n<h3>Nước lọc trong sạch, tinh khiết, tốt cho sức khỏe nhờ trải qua hệ thống lọc c&oacute; 10&nbsp;<a href=\"https://www.dienmayxanh.com/loi-may-loc-nuoc\" target=\"_blank\" title=\"Tham khảo các lõi lọc nước tại Điện Máy XANH\">l&otilde;i lọc</a>&nbsp;chất lượng của m&aacute;y lọc nước uống trực tiếp</h3>\r\n\r\n<p>-&nbsp;L&otilde;i PP 5 micron&nbsp;c&oacute; t&aacute;c dụng lọc b&ugrave;n đất c&oacute; k&iacute;ch thước&nbsp;&ge;&nbsp;5 micron.</p>\r\n\r\n<p>-&nbsp;L&otilde;i than hoạt t&iacute;nh hấp thụ, loại bỏ c&aacute;c chất hữu cơ, m&ugrave;i vị, kim loại nặng, thuốc trừ s&acirc;u v&agrave; Clo dư c&oacute; trong nước.</p>\r\n\r\n<p>-&nbsp;L&otilde;i&nbsp;sợi PP 1 micron lọc b&ugrave;n, đất, tạp chất k&iacute;ch thước&nbsp;&ge;&nbsp;1 micron.</p>\r\n\r\n<p>-&nbsp;M&agrave;ng lọc RO&nbsp;Membrane&nbsp;được sản xuất tại H&agrave;n Quốc c&oacute; khả năng lọc sạch đến 99.9% vi khuẩn, virus, ion kim loại nặng, chất rắn... trong nước.</p>\r\n\r\n<p>-&nbsp;L&otilde;i Nano Silver&nbsp;gi&uacute;p loại bỏ c&aacute;c vi khuẩn c&oacute; hại từ m&ocirc;i trường nước, tr&aacute;nh t&aacute;i nhiễm khuẩn nước sau lọc.</p>\r\n\r\n<p>-&nbsp;L&otilde;i Mineralized t&aacute;i tạo kho&aacute;ng tự nhi&ecirc;n cho nước.</p>\r\n\r\n<p>-&nbsp;L&otilde;i Maifan Rock Mineral&nbsp;cung cấp nhiều loại kho&aacute;ng chất c&oacute; lợi cho cơ thể.</p>\r\n\r\n<p>-&nbsp;L&otilde;i b&oacute;ng gốm Alkaline&nbsp;tạo nước kiềm, trung h&ograve;a axit cho cơ thể&nbsp;v&agrave; c&acirc;n bằng độ pH.</p>\r\n\r\n<p>-&nbsp;L&otilde;i&nbsp;Far Infrared Ray gi&uacute;p bổ sung oxy trong nước, cho nước dễ d&agrave;ng hấp thụ v&agrave;o cơ thể.</p>\r\n\r\n<p>-&nbsp;L&otilde;i ORP&nbsp;bổ sung tạo điện giải, hỗ trợ l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o ho&aacute;, l&agrave;m tăng qu&aacute; tr&igrave;nh tuần ho&agrave;n m&aacute;u.</p>\r\n', 'Máy lọc nước RO Kangaroo KG10G4 10 lõi', '1623764186908.jpg', 'Bảo hành chính hãng 1 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:36:26', '2021-06-15 06:36:26', 8, 8),
(44, 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi', 'ro-dien-phan-kangaroo-kg100med-5-loi', 13590000, 11500000, 1, '<h3><a href=\"https://www.dienmayxanh.com/may-loc-nuoc-kangaroo\" target=\"_blank\" title=\"Máy lọc nước RO Kangaroo\">M&aacute;y lọc nước RO Kangaroo</a>&nbsp;thiết kế nhỏ gọn, k&iacute;ch cỡ tiết kiệm đến 65% diện t&iacute;ch so với các dòng máy truy&ecirc;̀n th&ocirc;́ng trước kia</h3>\r\n\r\n<p>Với k&iacute;ch thước chỉ bằng 1 c&acirc;y m&aacute;y t&iacute;nh, m&aacute;y lọc nước c&oacute; thể đặt ở mọi vị tr&iacute; trong căn nh&agrave;, văn ph&ograve;ng của bạn. Chất liệu vỏ th&eacute;p sơn tĩnh điện bền tốt, dễ d&agrave;ng l&agrave;m sạch.</p>\r\n\r\n<p>Đầu kết nối nhanh được tối ưu ho&agrave;n to&agrave;n kh&aacute;c với cơ chế c&uacute;t nối vặn th&ocirc;ng thường cho bạn lắp đặt m&aacute;y dễ d&agrave;ng chỉ với 3 thao t&aacute;c, giảm thời gian lắp đặt tối đa.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/226166/ro-dien-phan-kangaroo-kg100med-5-loi-271920-021958.jpg\" onclick=\"return false;\"><img alt=\"Máy lọc nước RO điện phân Kangaroo KG100MED 5 lõi - Thiết kế nhỏ gọn, kích cỡ tiết kiệm đến 65% diện tích\" src=\"https://cdn.tgdd.vn/Products/Images/3385/226166/ro-dien-phan-kangaroo-kg100med-5-loi-271920-021958.jpg\" title=\"Máy lọc nước RO điện phân Kangaroo KG100MED 5 lõi - Thiết kế nhỏ gọn, kích cỡ tiết kiệm đến 65% diện tích\" /></a></p>\r\n\r\n<h3>Cung cấp nguồn nước trong l&agrave;nh, tinh khiết, gi&agrave;u&nbsp;Hydrogen ion kiềm</h3>\r\n\r\n<p>L&otilde;i số 1 Undersink - L&otilde;i đ&uacute;c nguy&ecirc;n khối sợi PP khe hở 5 &micro;m:&nbsp;Lọc sạch những cặn bẩn, rỉ s&eacute;t c&oacute; k&iacute;ch cỡ &gt; 5 micron.</p>\r\n\r\n<p>L&otilde;i số 2 Undersink -&nbsp;L&otilde;i đ&uacute;c nguy&ecirc;n khối l&otilde;i than hoạt t&iacute;nh:&nbsp;Hấp thụ chất hữu cơ, thuốc trừ s&acirc;u, kim loại nặng, Clo thừa,&nbsp;m&ugrave;i vị&nbsp;trong nước.</p>\r\n\r\n<p>L&otilde;i số 3 Undersink -&nbsp;L&otilde;i đ&uacute;c nguy&ecirc;n khối sợi PP khe hở 1 &micro;m:&nbsp;Lọc sạch c&aacute;c tạp chất, vi khuẩn k&iacute;ch thước &gt; 1 micron&nbsp;c&ograve;n s&oacute;t lại ở bước lọc trước.</p>\r\n\r\n<p>Bộ cốc m&agrave;ng 75G Undersink -&nbsp;M&agrave;ng RO liền khối 75GDP xuất xứ H&agrave;n Quốc:&nbsp;Lọc sạch chất rắn, ion kim loại nặng, vi sinh vật, vi khuẩn, si&ecirc;u vi khuẩn, c&aacute;c chất hữu cơ,...</p>\r\n\r\n<p>L&otilde;i T33 to (5 IN 1) trắng sứ: Tạo nước Hydrogen ion kiềm, 1 loại nước tốt cho sức khỏe c&oacute; nguồn gốc từ Nhật Bản nhờ c&ocirc;ng nghệ&nbsp;điện ph&acirc;n nước RO độc quyền của Kangaroo. Nước&nbsp;Hydrogen loại bỏ xuất sắc c&aacute;c gốc tự do, hoạt động như chất chống oxi h&oacute;a mạnh, ngăn ngừa bệnh ung thư hiệu quả.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/3385/226166/ro-dien-phan-kangaroo-kg100med-5-loi-112020-072004.jpg\" onclick=\"return false;\"><img alt=\"5 lõi lọc sạch nước - Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi\" src=\"https://cdn.tgdd.vn/Products/Images/3385/226166/ro-dien-phan-kangaroo-kg100med-5-loi-112020-072004.jpg\" title=\"5 lõi lọc sạch nước - Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi\" /></a></p>\r\n\r\n<h3>C&ocirc;ng nghệ điện ph&acirc;n nước RO duy nhất tại Việt Nam</h3>\r\n\r\n<p>Nước đi qua c&aacute;c l&otilde;i lọc v&agrave; m&agrave;ng RO để đảm bảo độ sạch của nước trước khi điện ph&acirc;n, bảo vệ v&agrave; k&eacute;o d&agrave;i tuổi thọ cho thiết bị điện ph&acirc;n. Th&ocirc;ng qua điện ph&acirc;n&nbsp;nằm ở cuối c&ugrave;ng của m&aacute;y lọc, cấu tr&uacute;c của nước được thay đổi, t&aacute;ch nước th&agrave;nh dạng ion, c&aacute;c ph&acirc;n tử nước nhận năng lượng n&ecirc;n c&oacute; t&iacute;nh hoạt h&oacute;a cao v&agrave; cho ra nước ion kiềm tốt cho sức khoẻ.</p>\r\n', 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi', '1623764266863.jpg', ' Bảo hành chính hãng  2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 4, 9, 1, 20, '2021-06-15 06:37:46', '2021-06-15 06:37:46', 8, 8);
INSERT INTO `product` (`product_id`, `productname`, `product_slug`, `productprice`, `productpricesale`, `productweight`, `productdetail`, `productshortdesc`, `productimg`, `product_guarantee`, `product_condition`, `product_catid`, `manufacturer_id`, `product_status`, `available`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(45, 'Smart Tivi Casper 32 inch 32HX6200', 'casper-32hx6200', 6290000, 5361000, 1, '<h3>Thiết kế nhỏ gọn, chắc chắn</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/casper-32hx6200\" target=\"_blank\" title=\"Smart Tivi Casper 32 inch 32HX6200\">Smart Tivi Casper 32 inch 32HX6200</a>&nbsp;thiết kế lịch l&atilde;m với gam m&agrave;u đen sang trọng, m&agrave;n h&igrave;nh tr&agrave;n viền 3 cạnh, cho tầm nh&igrave;n của bạn &quot;kh&oacute;a chặt&quot; v&agrave;o nội dung đang được tr&igrave;nh chiếu, hạn chế xao nh&atilde;ng khi xem tivi. Ch&acirc;n đế chữ V &uacute;p ngược giữ tivi đứng ổn định tr&ecirc;n mặt b&agrave;n, kệ.</p>\r\n\r\n<p>K&iacute;ch cỡ&nbsp;<a href=\"https://www.dienmayxanh.com/tivi?g=32-inch\" target=\"_blank\" title=\"Xem thêm tivi 32 inch đang bán tại Điện máy XANH\" type=\"Xem thêm tivi 32 inch đang bán tại Điện máy XANH\">tivi 32 inch</a>&nbsp;nhỏ gọn, b&agrave;y tr&iacute; ph&ugrave; hợp cho ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, văn ph&ograve;ng nhỏ theo kiểu để b&agrave;n hoặc treo tường t&ugrave;y theo thiết kế nội thất của ng&ocirc;i nh&agrave;, c&ocirc;ng ty.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/232170/casper-32hx6200-081020-031033.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi Casper 32 inch 32HX6200 - Thiết kế nhỏ gọn, chắc chắn\" src=\"https://cdn.tgdd.vn/Products/Images/1942/232170/casper-32hx6200-081020-031033.jpg\" title=\"Smart Tivi Casper 32 inch 32HX6200 - Thiết kế nhỏ gọn, chắc chắn\" /></a></p>\r\n\r\n<h3>Hiển thị h&igrave;nh ảnh đẹp, r&otilde; n&eacute;t với độ ph&acirc;n giải HD</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/232170/casper-32hx6200-081020-031042.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi Casper 32 inch 32HX6200 - Độ phân giải HD\" src=\"https://cdn.tgdd.vn/Products/Images/1942/232170/casper-32hx6200-081020-031042.jpg\" title=\"Smart Tivi Casper 32 inch 32HX6200 - Độ phân giải HD\" /></a></p>\r\n\r\n<h3>Tạo độ s&acirc;u cho h&igrave;nh ảnh ấn tượng hơn qua c&ocirc;ng nghệ&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-dieu-can-biet-ve-tivi-hdr-805354\" target=\"_blank\" title=\"Công nghệ HDR\">HDR</a></h3>\r\n\r\n<p>C&ocirc;ng nghệ n&agrave;y n&acirc;ng cao độ tương phản giữa c&aacute;c v&ugrave;ng tối v&agrave; v&ugrave;ng s&aacute;ng, dải m&agrave;u rộng mang đến bữa tiệc m&agrave;u sắc sống động, phong ph&uacute; cho&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-casper?g=hd\" target=\"_blank\" title=\"Xem thêm tivi Casper HD đang bán tại Điện máy XANH\">tivi Casper HD</a>.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/232170/casper-32hx6200-081020-031050.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi Casper 32 inch 32HX6200 - Tạo độ sâu cho hình ảnh ấn tượng hơn qua công nghệ HDR\" src=\"https://cdn.tgdd.vn/Products/Images/1942/232170/casper-32hx6200-081020-031050.jpg\" title=\"Smart Tivi Casper 32 inch 32HX6200 - Tạo độ sâu cho hình ảnh ấn tượng hơn qua công nghệ HDR\" /></a></p>\r\n', 'Smart Tivi Casper 32 inch 32HX6200', '1623766890417.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 2, 1, 20, '2021-06-15 07:21:30', '2021-06-15 07:21:30', 8, 8),
(46, 'Smart Tivi Casper 32 inch 32HG5200', 'led-casper-32hg5200', 7290000, 5890000, 1, '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/thietke.jpg\" target=\"_blank\" title=\"Thiết kế\">Thiết kế</a>&nbsp;đơn giản, thanh lịch.</li>\r\n	<li>H&igrave;nh ảnh r&otilde; n&eacute;t với độ ph&acirc;n giải&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/4k111-1.jpg\" target=\"_blank\" title=\"Độ phân giải HD\">HD</a>.</li>\r\n	<li>M&agrave;n h&igrave;nh si&ecirc;u s&aacute;ng nhờ c&ocirc;ng nghệ&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/supper.jpg\" target=\"_blank\" title=\"Super Brightness\">Super Brightness</a>.</li>\r\n	<li>&Acirc;m thanh v&ograve;m mạnh mẽ nhờ c&ocirc;ng nghệ&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/amthanh.jpg\" target=\"_blank\" title=\"Dolby Audio\">Dolby Audio</a>.</li>\r\n	<li>T&igrave;m kiếm bằng giọng n&oacute;i tiếng Việt dễ d&agrave;ng nhờ trợ l&yacute; ảo&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/remote1.jpg\" target=\"_blank\" title=\"Google Assistant \">Google Assistant</a>&nbsp;c&ugrave;ng&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/remote1.jpg\" target=\"_blank\" title=\"Remote thông minh\">remote th&ocirc;ng minh</a>.</li>\r\n	<li>Kho ứng dụng phong ph&uacute;, giao diện dễ d&ugrave;ng với hệ điều h&agrave;nh&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/hedieuhanh.jpg\" target=\"_top\" title=\"Hệ điều hành Android 9.0\">Android 9.0</a>.</li>\r\n	<li>Chiếu m&agrave;n h&igrave;nh điện thoại l&ecirc;n tivi dễ d&agrave;ng nhờ t&iacute;nh năng&nbsp;<a href=\"https://cdn.tgdd.vn/Products/Images/1942/236941/chieumanhinh.jpg\" target=\"_blank\" title=\"Screen Cast\">Screen Cast</a>.</li>\r\n</ul>\r\n', 'Smart Tivi Casper 32 inch 32HG5200', '1623766964300.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 2, 1, 20, '2021-06-15 07:22:44', '2021-06-15 07:22:44', 8, 8),
(47, 'Smart Tivi Casper 4K 50 inch 50UG6100', 'panasonic-nr-bx471gpkv', 13990000, 9591000, 1, '<h3>Thiết kế m&agrave;n h&igrave;nh v&ocirc; cực tinh tế</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/led-casper-50ug6100\" target=\"_blank\" title=\"Tivi Led Casper 4K 50 inch 50UG6100\">Tivi Led Casper 4K 50 inch 50UG6100</a>&nbsp;được thiết kế với c&aacute;c đường n&eacute;t g&oacute;c cạnh, tạo n&ecirc;n một chiếc tivi tinh tế, sang trọng. G&oacute;p phần tạo điểm nhấn cho kh&ocirc;ng gian sống của bạn.<br />\r\n<a href=\"https://www.dienmayxanh.com/tivi-casper?g=50-inch\" target=\"_blank\" title=\"tivi Casper 50 inch đang bán tại Điện máy XANH\">Tivi Casper 50 inch</a>&nbsp;l&agrave; lựa chọn ph&ugrave; hợp trưng b&agrave;y những kh&ocirc;ng gian c&oacute; diện t&iacute;ch vừa phải như: Ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/236946/Slider/led-casper-50ug6100-060521-0419430.jpg\" onclick=\"return false;\"><img alt=\"Tivi Led Casper 4K 50 inch 50UG6100 - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236946/Slider/led-casper-50ug6100-060521-0419430.jpg\" /></a></p>\r\n\r\n<h3>H&igrave;nh ảnh hiển thị sắc n&eacute;t gấp 4 lần Full HD nhờ độ ph&acirc;n giải 4K v&agrave; tấm nền IPS</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/236946/Slider/led-casper-50ug6100-060521-0419431.jpg\" onclick=\"return false;\"><img alt=\"Tivi Led Casper 4K 50 inch 50UG6100 - Độ phân giải 4K\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236946/Slider/led-casper-50ug6100-060521-0419431.jpg\" /></a></p>\r\n\r\n<h3>Hiển thị h&igrave;nh ảnh c&oacute; chiều s&acirc;u hơn nhờ c&ocirc;ng nghệ 4K HDR</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi-casper?g=ultra-hd-4k\" target=\"_blank\" title=\"Xem thêm các sản phẩm tivi Casper 4K đang bán tại Điện máy XANH\">Tivi Casper 4K</a>&nbsp;với chế độ hiển thị HDR c&oacute; khả năng gi&uacute;p h&igrave;nh ảnh được t&aacute;i tạo ch&acirc;n thực, đồng thời tăng độ tương phản v&ugrave;ng tối v&agrave; v&ugrave;ng s&aacute;ng. Gi&uacute;p bạn thưởng thức được những khung h&igrave;nh ấn tượng v&agrave; c&oacute; chiều s&acirc;u hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/236946/Slider/led-casper-50ug6100-060521-0419442.jpg\" onclick=\"return false;\"><img alt=\"Tivi Led Casper 4K 50 inch 50UG6100 - Công nghệ 4K HDR\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236946/Slider/led-casper-50ug6100-060521-0419442.jpg\" /></a></p>\r\n', 'Smart Tivi Casper 4K 50 inch 50UG6100', '1623767021292.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 2, 1, 20, '2021-06-15 07:23:41', '2021-06-15 07:23:41', 8, 8),
(48, 'Android Tivi Led Casper 4K 55 inch 55UG6300', 'led-casper-55ug6300', 15490000, 10941000, 1, '<h3>M&agrave;n h&igrave;nh v&ocirc; cực, thiết kế h&igrave;nh khối tinh xảo</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/led-casper-55ug6300\" target=\"_blank\" title=\"Android Tivi Led Casper 4K 55 inch 55UG6300\">Android Tivi Led Casper 4K 55 inch 55UG6300</a>&nbsp;g&acirc;y kinh ngạc với đường viền m&agrave;u đen thanh mảnh cho cảm gi&aacute;c m&agrave;n h&igrave;nh v&ocirc; cực, nội dung giải tr&iacute; phủ to&agrave;n m&agrave;n h&igrave;nh, người xem ho&agrave;n to&agrave;n tập trung v&agrave;o chương tr&igrave;nh đang thưởng thức.</p>\r\n\r\n<p>Với m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-casper?g=55-inch\" target=\"_blank\" title=\"tivi Casper 55 inch có kinh doanh tại Điện máy XANH\">tivi Casper 55 inch</a>, thiết bị tạo điểm nhấn mạnh mẽ cho kh&ocirc;ng gian sống, ph&ugrave; hợp với c&aacute;c căn ph&ograve;ng c&oacute; diện t&iacute;ch lớn v&agrave; vừa.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/237662/led-casper-55ug6300-1.jpg\" onclick=\"return false;\"><img alt=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Màn hình vô cực, thiết kế hình khối tinh xảo\" src=\"https://cdn.tgdd.vn/Products/Images/1942/237662/led-casper-55ug6300-1.jpg\" title=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Màn hình vô cực, thiết kế hình khối tinh xảo\" /></a></p>\r\n\r\n<h3>Hiển thị thước phim sắc n&eacute;t, đẹp mắt với độ ph&acirc;n giải 4K</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/237662/led-casper-55ug6300-2.jpg\" onclick=\"return false;\"><img alt=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Hiển thị thước phim sắc nét, đẹp mắt với độ phân giải 4K\" src=\"https://cdn.tgdd.vn/Products/Images/1942/237662/led-casper-55ug6300-2.jpg\" title=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Hiển thị thước phim sắc nét, đẹp mắt với độ phân giải 4K\" /></a></p>\r\n\r\n<p><em>*H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa</em></p>\r\n\r\n<h3>T&aacute;i tạo chi tiết ch&acirc;n thật nhờ c&ocirc;ng nghệ&nbsp;4K HDR</h3>\r\n\r\n<p>Tăng cường độ tương phản giữa v&ugrave;ng s&aacute;ng v&agrave; v&ugrave;ng tối, độ chi tiết tạo n&ecirc;n h&igrave;nh ảnh HDR r&otilde; r&agrave;ng, tự nhi&ecirc;n, cho bạn trải nghiệm xem m&atilde;n nh&atilde;n.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/237662/led-casper-55ug6300-3.jpg\" onclick=\"return false;\"><img alt=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Tái tạo chi tiết chân thật nhờ công nghệ 4K HDR\" src=\"https://cdn.tgdd.vn/Products/Images/1942/237662/led-casper-55ug6300-3.jpg\" title=\"Android Tivi Led Casper 4K 55 inch 55UG6300 - Tái tạo chi tiết chân thật nhờ công nghệ 4K HDR\" /></a></p>\r\n', 'Android Tivi Led Casper 4K 55 inch 55UG6300', '1623767107446.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 2, 1, 20, '2021-06-15 07:25:07', '2021-06-15 07:25:07', 8, 8),
(49, 'LG Smart TV 55UN7290PTF', 'lg-55un7290ptf', 17400000, 12668000, 1, '<h3>Thiết kế tinh tế, ch&acirc;n đế giống h&igrave;nh chữ V vững chắc</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/lg-55un7290ptf\" target=\"_blank\" title=\"Xem thêm Smart Tivi LG 4K 55 inch 55UN7290PTF tại Điện máy XANH\" type=\"Xem thêm Smart Tivi LG 4K 55 inch 55UN7290PTF tại Điện máy XANH\">Smart Tivi LG 4K 55 inch 55UN7290PTF</a>&nbsp;sở hữu thiết kế hiện đại với khung viền đen mạnh mẽ, tinh tế kết hợp c&ugrave;ng ch&acirc;n đế dạng h&igrave;nh chữ V &uacute;p ngược vững ch&atilde;i mang đến tổng thể h&agrave;i h&ograve;a, l&agrave;m nổi bật kh&ocirc;ng gian nội thất được bố tr&iacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/224159/lg-55un7290ptf-093020-113050.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Thiết kế hiện đại\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224159/lg-55un7290ptf-093020-113050.jpg\" title=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Thiết kế hiện đại\" /></a></p>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/man-hinh-ips-tren-tivi-va-nhung-tac-dung-thu-vi-582154\" target=\"_blank\" title=\"Xem thêm màn hình IPS trên tivi và những công dụng của nó\" type=\"Xem thêm màn hình IPS trên tivi và những công dụng của nó\">Tấm nền IPS</a>&nbsp;với m&agrave;n h&igrave;nh k&iacute;ch thước&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-lg?g=55-inch\" target=\"_blank\" title=\"Xem thêm tivi LG 55 inch tại Điện máy XANH\" type=\"Xem thêm tivi LG 55 inch tại Điện máy XANH\">tivi LG 55 inch</a>&nbsp;cho&nbsp; h&igrave;nh ảnh hiển thị c&oacute; g&oacute;c nh&igrave;n rộng, kh&ocirc;ng bị biến đổi m&agrave;u sắc, th&iacute;ch hợp để đặt ở c&aacute;c nơi như: ph&ograve;ng kh&aacute;ch, ph&ograve;ng họp,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/224159/lg-55un7290ptf-092320-082356.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Tấm nền IPS\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224159/lg-55un7290ptf-092320-082356.jpg\" title=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Tấm nền IPS\" /></a></p>\r\n\r\n<h3>H&igrave;nh ảnh hiển thị chi tiết v&agrave; sắc n&eacute;t gấp 4 lần Full HD nhờ m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tivi-4k-la-gi-578555\" target=\"_blank\" title=\"Xem thêm độ phân giải Ultra HD 4K là gì?\" type=\"Xem thêm độ phân giải Ultra HD 4K là gì?\">Ultra HD 4K</a>&nbsp;</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/224159/lg-55un7290ptf-093420-113411.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Ultra HD 4K\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224159/lg-55un7290ptf-093420-113411.jpg\" title=\"Smart Tivi LG 4K 55 inch 55UN7290PTF - Ultra HD 4K\" /></a></p>\r\n', 'LG Smart TV 55UN7290PTF', '1623767228653.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 6, 1, 20, '2021-06-15 07:27:08', '2021-06-15 07:27:08', 8, 8),
(50, 'Smart Tivi LG 4K 65 inch 65UN7290PTF', 'lg-65un7290ptf', 26900000, 16445000, 1, '<h3>Thiết kế thanh lịch, sang trọng</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/lg-65un7290ptf\" target=\"_blank\" title=\"Smart Tivi LG 65 inch 65UN7290PTF\">Smart Tivi LG 4K 65 inch 65UN7290PTF</a>&nbsp;được thiết kế hiện đại v&agrave; độc đ&aacute;o với m&agrave;n h&igrave;nh mỏng th&igrave; sẽ l&agrave;m cho kh&ocirc;ng gian nơi m&agrave; bạn trưng b&agrave;y&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-sony?g=65-inch\" type=\"Tivi 65 inch đang bán tại Điện Máy XANH\">tivi 65 inch</a>&nbsp;trở n&ecirc;n tinh tế v&agrave; sang trọng hơn d&ugrave; l&agrave; ph&ograve;ng ngủ hay ph&ograve;ng kh&aacute;ch hoặc ở bất kỳ nơi n&agrave;o m&agrave; bạn muốn đặt&nbsp;<a href=\"https://www.dienmayxanh.com/tivi\" target=\"_blank\" title=\"tivi\">tivi</a>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/224161/lg-65un7290ptf-245520-015554.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Thiết kế thanh lịch, sang trọng\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224161/lg-65un7290ptf-245520-015554.jpg\" title=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Thiết kế thanh lịch, sang trọng\" /></a></p>\r\n\r\n<h3>H&igrave;nh ảnh hiển thị sắc n&eacute;t với độ ph&acirc;n giải&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tivi-uhd-tivi-4k-la-gi-co-khac-gi-so-voi-tivi-full-578555\" target=\"_blank\" title=\"Ultra HD 4K\">Ultra HD 4K</a></h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi-lg?g=ultra-hd-4k\" target=\"_blank\" title=\"Tivi LG 4K\">Tivi LG 4K</a>&nbsp; mang đến cho bạn h&igrave;nh ảnh ch&acirc;n thực đến từng chi tiết nhờ độ ph&acirc;n giải Ultra HD 4K với k&iacute;ch thước 65 inch. Đồng thời&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-lg\" target=\"_blank\" title=\"Xem thêm tivi LG tại Điện máy XANH\" type=\"Xem thêm tivi LG tại Điện máy XANH\">tivi LG</a>&nbsp;mang đến cho bạn nhiều g&oacute;c nh&igrave;n rộng, kh&ocirc;ng bị biến đổi m&agrave;u sắc v&agrave; tăng tuổi thọ cho sản phẩm nhờ tấm nền&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/man-hinh-ips-tren-tivi-va-nhung-tac-dung-thu-vi-582154\" target=\"_blank\" title=\"IPS\" type=\"IPS\">IPS</a>.</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/images/1942/224161/lg-65un7290ptf-245620-015642.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Độ phân giải Ultra HD 4K\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224161/lg-65un7290ptf-245620-015642.jpg\" title=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Độ phân giải Ultra HD 4K\" /></a></h3>\r\n\r\n<h3>H&igrave;nh ảnh được n&acirc;ng cấp, tối ưu h&oacute;a với bộ xử l&yacute; Quad Core 4K</h3>\r\n\r\n<p>Chất lượng h&igrave;nh ảnh&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-lg?g=65-inch\" target=\"_blank\" type=\"Tivi LG 65 inch đang kinh doanh tại Điện Máy XANH\">tivi LG 65 inch</a>&nbsp;với từng chi tiết được hiển thị sắc n&eacute;t v&agrave; m&agrave;u sắc tự nhi&ecirc;n hơn, được n&acirc;ng cấp cao hơn so với chip xử l&yacute; trước đ&oacute; l&agrave; Dual Core (hai nh&acirc;n) mang lại cảm nhận tốt cho người xem.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/224161/lg-65un7290ptf-245720-015739.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Bộ Xử lý Quad Core\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224161/lg-65un7290ptf-245720-015739.jpg\" title=\"Smart Tivi LG 4K 65 inch 65UN7290PTF - Bộ Xử lý Quad Core\" /></a></p>\r\n', 'Smart Tivi LG 4K 65 inch 65UN7290PTF', '1623767311382.jpg', ' Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 6, 1, 20, '2021-06-15 07:28:31', '2021-06-15 07:28:31', 8, 8),
(51, 'Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND', 'lg-55nano79tnd', 23900000, 14073000, 1, '<h3>Thiết kế tinh tế với khung viền đen mạnh mẽ</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/lg-55nano79tnd\" target=\"_blank\" title=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND\" type=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND\">Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND</a>&nbsp;sở hữu thiết kế sang trọng thanh mảnh với ch&acirc;n đế dạng chữ V &uacute;p ngược gi&uacute;p tivi c&oacute; thể đứng vững tr&ecirc;n nhiều bề mặt, viền m&agrave;n h&igrave;nh m&agrave;u đen cuốn h&uacute;t gi&uacute;p n&acirc;ng tầm sự đẳng cấp cho kh&ocirc;ng gian bố tr&iacute;. B&ecirc;n cạnh đ&oacute; c&aacute;c c&ocirc;ng nghệ hiện đại c&oacute; tr&ecirc;n tivi gi&uacute;p bạn c&oacute; những trải nghiệm xem tuyệt vời.</p>\r\n\r\n<p>K&iacute;ch thước&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-lg?g=55-inch\" target=\"_blank\" title=\"Xem thêm một số tivi LG 55 inch hiện có kinh doanh tại Điện máy XANH\">tivi LG 55 inch</a>&nbsp;th&iacute;ch hợp để đặt ở c&aacute;c nơi kh&ocirc;ng gian rộng như: ph&ograve;ng kh&aacute;ch, ph&ograve;ng họp,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/229982/lg-55nano79tna-161520-121534.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Thiết kế hiện đại\" src=\"https://cdn.tgdd.vn/Products/Images/1942/229982/lg-55nano79tna-161520-121534.jpg\" title=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Thiết kế hiện đại\" /></a></p>\r\n\r\n<h3>H&igrave;nh ảnh hiển thị sắc n&eacute;t gấp 4 lần Full HD nhờ độ ph&acirc;n giải&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tivi-4k-la-gi-578555\" target=\"_blank\" title=\"Ultra HD 4K là gì?\" type=\"Ultra HD 4K là gì?\">Ultra HD 4K</a></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/229982/lg-55nano79tna-161620-121614.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Ultra HD 4K sắc nét\" src=\"https://cdn.tgdd.vn/Products/Images/1942/229982/lg-55nano79tna-161620-121614.jpg\" title=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Ultra HD 4K sắc nét\" /></a></p>\r\n\r\n<h3>Tăng cường độ tinh khiết m&agrave;u sắc, h&igrave;nh ảnh rực rỡ nhờ c&ocirc;ng nghệ m&agrave;n h&igrave;nh NanoCell</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi?g=smart-tivi\" target=\"_blank\" title=\"Một số Smart tivi hiện đang kinh doanh tại Điện máy XANH\" type=\"Một số Smart tivi hiện đang kinh doanh tại Điện máy XANH\">Smart tivi</a>&nbsp;sở hữu c&ocirc;ng nghệ&nbsp;m&agrave;n h&igrave;nh NanoCell sẽ kiến tạo sắc m&agrave;u thuần khiết nhờ c&aacute;c hạt nano k&iacute;ch thước 1nm để lọc c&aacute;c &aacute;nh sắc xỉn m&agrave;u v&agrave; tăng cường độ tinh khiết m&agrave;u sắc. Từ đ&oacute; cho ra chất lượng h&igrave;nh ảnh hiển thị được rực rỡ sống động v&agrave; chi tiết tr&ecirc;n từng khung h&igrave;nh, mang đến bạn trải nghiệm thế giới h&igrave;nh ảnh tự nhi&ecirc;n như thực.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/1942/229982/lg-55nano79tna-161620-121657.jpg\" onclick=\"return false;\"><img alt=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Màn hình NanoCell\" src=\"https://cdn.tgdd.vn/Products/Images/1942/229982/lg-55nano79tna-161620-121657.jpg\" title=\"Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND - Màn hình NanoCell\" /></a></p>\r\n', 'Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND', '1623767393941.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới và đầy đủ phụ kiện từ nhà sản xuất', 1, 6, 1, 20, '2021-06-15 07:29:53', '2021-06-15 07:29:53', 8, 8),
(52, 'Smart Tivi NanoCell LG 4K 55 inch 55NANO79TND123', 'lg-55nano79tnd123', 11490000, 10490000, 1, '<p>lg-55nano79tnd123</p>\r\n', 'lg-55nano79tnd123', '1624546284263.jpg', 'Bảo hành chính hãng tivi 2 năm, có người đến tận nhà', 'Mới 100%', 1, 6, 0, 20, '2021-06-24 07:51:24', '2021-06-24 07:54:42', 8, 8),
(53, 'abc', 'abc', 0.1, 0.1, 0.1, '<p>abc</p>\r\n', 'abc', '1624882444415.jpg', 'abc', 'abc', 1, 1, 0, 20, '2021-06-28 05:14:04', '2021-06-28 05:14:04', 5, 5),
(54, 'quicktest', 'quicktest', 25000000, 25000000, 12, '<p><img alt=\"\" src=\"/spring-web/images/finder/images/280916_043859thap_ntt_ngang_6_7_2016-01(1).jpg\" style=\"height:1196px; width:1600px\" /></p>\r\n', 'quicktest', '1625058030622.jpg', '12 tháng', 'oke', 1, 1, 1, 20, '2021-06-30 06:00:30', '2021-06-30 06:00:30', 5, 5),
(55, 'test may lanh samsung', 'test-may-lanh-samsung', 15000000, 14500000, 12, '<p>test</p>\r\n', 'test', '1625651370189.jpg', '12 tháng', 'Oke', 1, 1, 1, 12, '2021-07-07 02:49:30', '2021-07-07 02:52:11', 8, 8),
(56, 'test may lanh samsung2', 'test-may-lanh-samsung2', 15000000, 14500000, 12, '<p>asdas</p>\r\n', 'ádasd', '1625651571679.jpg', '12 tháng', 'asdas', 1, 1, 1, 10, '2021-07-07 02:52:51', '2021-07-07 02:52:51', 8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productoptions`
--

CREATE TABLE `productoptions` (
  `productoptions_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `optiongroup_id` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productoptions`
--

INSERT INTO `productoptions` (`productoptions_id`, `product_id`, `optiongroup_id`, `option_id`, `metadesc`, `metakey`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 5, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(5, 3, 4, 10, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(7, 5, 4, 9, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(8, 6, 4, 10, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(9, 7, 3, 5, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(10, 8, 3, 6, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(11, 9, 3, 6, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(12, 10, 3, 7, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(13, 11, 3, 7, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(18, 5, 5, 12, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(19, 11, 6, 14, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(20, 10, 6, 14, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(21, 11, 7, 15, '', '', 1, 0, 0, '2021-06-01 13:30:34', '2021-06-01 13:30:34'),
(23, 2, 7, 15, '<p>sad</p>\r\n', 'asd', 1, 8, 8, '2021-06-03 08:17:12', '2021-06-03 08:17:12'),
(32, 51, 4, 9, '<p>tivi 4k&nbsp;</p>\r\n', 'tivi 4k ', 1, 8, 8, '2021-06-15 09:01:03', '2021-06-15 09:01:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `img`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 51, 'lg-55nano79tnd-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(2, 51, 'lg-55nano79tnd-3-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(3, 51, 'lg-55nano79tnd-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(4, 51, 'lg-55nano79tnd-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(5, 50, '1623850128612.jpg', 1, '2021-06-16 06:28:48', 8, '2021-06-16 06:28:48', 8),
(7, 50, '1623850160421.jpg', 1, '2021-06-16 06:29:20', 8, '2021-06-16 06:29:20', 8),
(8, 50, '1623850150386.jpg', 1, '2021-06-16 13:30:01', 8, '2021-06-16 13:30:01', 8),
(9, 50, '1623850240033.jpg', 1, '2021-06-16 06:30:40', 8, '2021-06-16 06:30:40', 8),
(10, 49, '1623850128612.jpg', 1, '2021-06-16 06:28:48', 8, '2021-06-16 06:28:48', 8),
(11, 49, '1623850160421.jpg', 1, '2021-06-16 06:29:20', 8, '2021-06-16 06:29:20', 8),
(12, 49, '1623850150386.jpg', 1, '2021-06-16 13:30:01', 8, '2021-06-16 13:30:01', 8),
(13, 49, '1623850240033.jpg', 1, '2021-06-16 06:30:40', 8, '2021-06-16 06:30:40', 8),
(14, 48, 'lg-55nano79tnd-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(15, 48, 'lg-55nano79tnd-3-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(16, 48, 'lg-55nano79tnd-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(17, 48, 'lg-55nano79tnd-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(18, 47, 'lg-55nano79tnd-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(19, 47, 'lg-55nano79tnd-3-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(20, 47, 'lg-55nano79tnd-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(21, 47, 'lg-55nano79tnd-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(22, 46, 'led-casper-32hg5200-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(23, 46, 'led-casper-32hg5200-3-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(24, 46, 'led-casper-32hg5200-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(25, 46, 'led-casper-32hg5200-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(26, 45, 'led-casper-32hg5200-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(27, 45, 'led-casper-32hg5200-3-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(28, 45, 'led-casper-32hg5200-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(29, 45, 'led-casper-32hg5200-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(30, 44, 'ro-dien-phan-kangaroo-kg100med-5-loi-5-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(31, 44, 'ro-dien-phan-kangaroo-kg100med-5-loi-6-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(32, 44, 'ro-dien-phan-kangaroo-kg100med-5-loi-7-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(33, 44, 'ro-dien-phan-kangaroo-kg100med-5-loi-8-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(34, 43, 'kangaroo-kg10g4-1-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(35, 43, 'kangaroo-kg10g4-2-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(36, 43, 'kangaroo-kg10g4-3-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(37, 43, 'kangaroo-kg10g4-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(38, 42, 'ro-dien-phan-kangaroo-kg100e0-7-loi-2-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(39, 42, 'ro-dien-phan-kangaroo-kg100e0-7-loi-3-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(40, 42, 'ro-dien-phan-kangaroo-kg100e0-7-loi-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(41, 42, 'ro-dien-phan-kangaroo-kg100e0-7-loi-6-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(42, 41, 'may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-2-1-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(43, 41, 'may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-3-1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(44, 41, 'may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-4-1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(45, 41, 'may-loc-nuoc-ro-kangaroo-kg10g5vtu-10-loi-5-1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(46, 40, 'may-loc-nuoc-kangaroo-kg100hc-1-1-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(47, 40, 'may-loc-nuoc-kangaroo-kg100hc-2-1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(48, 40, 'may-loc-nuoc-kangaroo-kg100hc-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(49, 40, 'may-loc-nuoc-kangaroo-kg100hc-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(50, 39, 'may-loc-nuoc-kangaroo-kg10a3-1-1-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(51, 39, 'may-loc-nuoc-kangaroo-kg10a3-2-1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(52, 39, 'may-loc-nuoc-kangaroo-kg10a3-4-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(53, 39, 'may-loc-nuoc-kangaroo-kg10a3-5-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(54, 38, 'toshiba-gr-ag66va-x1-org.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(55, 38, 'toshiba-gr-ag66va-x2-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(56, 38, 'toshiba-gr-ag66va-x3-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(57, 38, 'toshiba-gr-ag66va-x1-org.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(58, 37, 'vi-vn-toshiba-gr-ag58va-x-thiet-ke-2.jpg', 1, '2021-06-16 10:48:09', 8, '2021-06-16 10:48:09', 8),
(59, 37, 'vi-vn-gr-ag58va-2.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(60, 37, 'vi-vn-gr-ag58va-5.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8),
(61, 37, 'vi-vn-gr-ag58va-4.jpg', 1, '2021-06-16 10:50:43', 8, '2021-06-16 10:50:43', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `code`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Người dùng', 'USER_USER', 1, '2021-06-25 07:44:16', 0, '2021-06-25 07:44:16', 0),
(2, 'Quản trị sản phẩm', 'ADMIN_PROD', 1, '2021-06-25 07:44:46', 0, '2021-06-25 07:44:46', 0),
(3, 'Quản trị bài viết', 'ADMIN_PAGE', 1, '2021-06-25 07:44:46', 0, '2021-06-25 07:44:46', 0),
(4, 'Quản trị hệ thống', 'ADMIN_ALL', 1, '2021-06-25 07:46:03', 0, '2021-06-25 07:46:03', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`, `img`, `metadesc`, `metakey`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'GIAO HÀNH NHANH CHÓNG', 'rocket.png', 'Vận chuyển siêu tốc', 'Vận chuyển siêu tốc', 1, '2021-06-08 15:48:59', 8, '2021-06-08 15:48:59', 8),
(2, 'UY TÍN 5 SAO', 'baohanh.png', 'Dịch vụ bảo hành tận nhà 24/7', 'Dịch vụ bảo hành tận nhà 24/7', 1, '2021-06-08 15:48:59', 8, '2021-06-08 15:48:59', 8),
(3, 'UY TÍN 5 SAO', 'rm5t.png', 'Được cộng đồng bình chọn là shop uy tín nhất VN', 'Được cộng đồng bình chọn là shop uy tín nhất VN', 1, '2021-06-08 15:51:49', 8, '2021-06-08 15:51:49', 8),
(4, 'HỖ TRỢ TẬN TÌNH', 'support.png', 'Đội ngũ hộ trợ tận tình cả ngày cuối tuần và ngày lễ', 'Đội ngũ hộ trợ tận tình cả ngày cuối tuần và ngày lễ', 1, '2021-06-08 15:51:49', 8, '2021-06-08 15:51:49', 8),
(5, 'admin123', '1623172225143.jpg', '<p>123</p>\r\n', '123', 0, '2021-06-08 10:10:26', 8, '2021-06-08 10:13:07', 8),
(6, 'admin1', '1623172422306.jpg', '', '111', 0, '2021-06-08 10:13:42', 8, '2021-06-08 10:13:42', 8),
(7, 'vinh', '1623172447418.jpg', '', '123', 0, '2021-06-08 10:14:07', 8, '2021-06-08 10:14:07', 8),
(8, 'abc', '1623172466178.jpg', '', '123', 0, '2021-06-08 10:14:26', 8, '2021-06-08 10:14:26', 8),
(9, 'admin', '1623172530346.jpg', '<p>123</p>\r\n', '123', 2, '2021-06-08 10:15:31', 8, '2021-06-08 10:48:43', 8),
(10, 'admin', '1623173929029.jpg', '', 'admin', 0, '2021-06-08 10:38:49', 8, '2021-06-08 10:38:49', 8),
(11, 'admin123', '1623174381080.jpg', '<p>123</p>\r\n', '123', 0, '2021-06-08 10:46:22', 8, '2021-06-08 10:48:40', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `slide_id` bigint(20) NOT NULL,
  `slide_caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_status` int(11) NOT NULL,
  `created_by` int(20) NOT NULL,
  `updated_by` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_caption`, `slide_img`, `slide_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'slide2', '1620896531655.jpg', 1, 1, 1, '2021-05-13 02:02:11', '2021-05-13 02:02:11'),
(5, 'slide3', '1620896543789.jpg', 1, 1, 1, '2021-05-13 02:02:23', '2021-05-13 02:02:23'),
(6, 'slide 4', '1621185957895.jpg', 0, 1, 1, '2021-05-16 10:25:57', '2021-05-17 00:02:39'),
(7, 'slide 5', '1621233174692.jpg', 0, 1, 2, '2021-05-16 23:32:54', '2021-05-16 23:54:44'),
(8, 'slide6', '1620896531655.jpg', 2, 1, 1, '2021-05-13 02:02:11', '2021-05-13 02:02:11'),
(9, 'slide7', '1620896543789.jpg', 0, 1, 1, '2021-05-13 02:02:23', '2021-05-13 02:02:23'),
(10, 'slide8', '1621185957895.jpg', 0, 1, 1, '2021-05-16 10:25:57', '2021-05-17 00:02:39'),
(11, 'slide9', '1621233174692.jpg', 0, 1, 2, '2021-05-16 23:32:54', '2021-05-16 23:54:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `smartpay`
--

CREATE TABLE `smartpay` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `smartpay`
--

INSERT INTO `smartpay` (`id`, `name`, `img`, `metakey`, `metadesc`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Thanh toán Smartpay', '1625049338473.jpg', 'Thanh toán Smartpay', '<p>Giảm ngay 20% tối đa 500.000đ khi thanh to&aacute;n qua Smartpay tại quầy</p>\r\n', 1, '2021-06-24 16:30:24', 8, '2021-06-30 03:35:38', 5),
(2, 'Thanh toán ví Moca trên ứng dụng Grab', '1625049345765.jpg', 'Thanh toán ví Moca trên ứng dụng Grab', '<p>Nhập MOCA400 Giảm/Ho&agrave;n tiền 10% tối đa 400.000đ khi thanh to&aacute;n Online bằng v&iacute; Moca</p>\r\n', 1, '2021-06-24 09:35:08', 8, '2021-06-30 03:35:45', 5),
(4, 'Zaló pay', '1625049353236.jpg', 'Zaló pay', '<p>Zal&oacute; pay</p>\r\n', 1, '2021-06-24 17:02:46', 8, '2021-06-30 03:35:53', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `socialnetwork`
--

CREATE TABLE `socialnetwork` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `socialnetwork`
--

INSERT INTO `socialnetwork` (`id`, `name`, `img`, `icon`, `address`, `status`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, 'Facebook', 'fb.png', '<i 							class=\"fab fa-facebook-f\"></i>', 'https://www.facebook.com/ngdquangvinh297', 1, '2021-06-29 14:58:59', 8, 8, '2021-06-29 14:58:59'),
(2, 'Instagram', '1624980053485.jpg', '<i 							class=\"fab fa-instagram\"></i>', 'https://www.instagram.com/vinhzau4739/', 1, '2021-06-29 08:20:53', 5, 5, '2021-06-29 08:20:53'),
(3, 'Youtube', '1624980175116.jpg', '<i 							class=\"fab fa-youtube\"></i>', 'https://www.youtube.com/channel/UCUO4QWYhvKgukr-zDsS9b2Q', 1, '2021-06-29 08:22:55', 5, 5, '2021-06-29 08:22:55'),
(4, 'Twitter', '1624981696787.jpg', '<i class=\"fab fa-twitter\"></i>', 'https://twitter.com/?lang=vi', 1, '2021-06-29 08:48:16', 5, 5, '2021-06-29 08:54:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topbar`
--

CREATE TABLE `topbar` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `topbar`
--

INSERT INTO `topbar` (`id`, `name`, `img`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Trùm máy lạnh', '176574359_877765719466139_6288595193608801989_n.gif', 2, '2021-06-10 16:15:15', 8, '2021-06-10 16:15:15', 8),
(2, 'Hỗ trợ mùa dịch', '1200-44-1200x44.png', 1, '2021-06-10 16:15:15', 8, '2021-06-10 16:15:15', 8),
(3, 'test 1', '1200-44-1200x44.png', 0, '2021-06-10 16:23:29', 8, '2021-06-10 16:23:29', 8),
(4, 'test 2', '1200-44-1200x44.png', 0, '2021-06-10 16:23:29', 8, '2021-06-10 16:23:29', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `topic_id` bigint(20) NOT NULL,
  `topic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showfooter` bigint(20) NOT NULL,
  `topic_status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_slug`, `topic_metakey`, `topic_metadesc`, `showfooter`, `topic_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(31, 'Chăm sóc khách hàng', 'cham-soc-khach-hang', 'Chăm sóc khách hàng', 'Chăm sóc khách hàng', 1, 1, 8, 8, '2021-05-20 10:25:21', '2021-05-20 10:25:21'),
(32, 'Về chúng tôi', 've-chung-toi', 'Về chúng tôi', 'Về chúng tôi', 1, 1, 8, 8, '2021-05-20 10:25:21', '2021-05-20 10:25:21'),
(33, 'test', 'test', 'test', 'test', 0, 0, 8, 8, '2021-05-20 03:49:25', '2021-05-20 03:49:25'),
(34, 'test223', '123', '123', '123', 0, 0, 8, 8, '2021-05-23 06:23:14', '2021-05-23 06:23:14'),
(35, 'Công nghệ', 'cong-nghe', 'Công nghệ', 'Công nghệ', 0, 1, 8, 8, '2021-05-27 17:51:28', '2021-05-27 17:51:28'),
(36, 'Kinh Doanh', 'kinh-doanh', 'Kinh Doanh', 'Kinh Doanh', 0, 1, 8, 8, '2021-05-27 18:11:27', '2021-05-27 18:11:27'),
(37, 'Sức khỏe', 'suc-khoe', 'sức khỏe', '<p>SỨC KHỎE</p>\r\n', 0, 1, 8, 8, '2021-06-08 11:19:10', '2021-06-08 11:25:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role2` bigint(20) NOT NULL,
  `user_gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `reset_password_token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `user_fullname`, `user_email`, `role`, `role2`, `user_gender`, `user_phone`, `user_img`, `enabled`, `reset_password_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'admin', '$2a$10$PjbfC0gfN0/xO4aPbHSJmuo6DQHulJMO2RFWL.cROE5KWvyjQur.G', 'admin', 'quangvinh290720@gmail.com', 'ROLE_ADMIN', 4, 'Nam', '123', 'user.png', 1, '2bcca99e9e1f4d808789e21579e6a1ca', 1, 1, '2021-05-10 07:43:31', '2021-05-10 07:43:31'),
(6, '123', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', '123', '123@gmail.com', 'ROLE_USER', 1, 'Nam', '123', 'user.png', 1, 'aasdsmkggasdgsxhmsd', 1, 1, '2021-05-10 10:55:15', '2021-05-10 10:55:15'),
(8, 'sena', '$2a$12$J10E1ZKGJeE0U54JjY9LU.OUFGs8BybSLJuia9DPdeX9esK7dmO36', 'sena', 'ngvinh290720@gmail.com', 'ROLE_ADMIN', 2, 'Nam', '123', 'user.png', 1, '98bb32296d344f8899a15fc7cd4bed1b', 1, 1, '2021-05-14 00:40:59', '2021-05-14 00:40:59'),
(34, 'user3', '$2a$12$wElwumDxT6f.U9WhLMeIX.HVPJEj3hELRPNkw.OL8yDtdojpqQGfG', 'nguyen tan thanh', 'nguyentanthanh1142@gmail.com', 'ROLE_USER', 1, 'Nam', '0923456789', 'user.png', 1, '0b55fca7a46143939dc1112972e79efe', 1, 1, '2021-07-10 10:25:01', '2021-07-10 10:25:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_coupon`
--

CREATE TABLE `user_coupon` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_coupon` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utilities`
--

CREATE TABLE `utilities` (
  `utilities_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `utilitiesname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `utilities`
--

INSERT INTO `utilities` (`utilities_id`, `product_id`, `utilitiesname`, `metadesc`, `metakey`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 2, 'Phát ion lọc không khí', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(4, 2, 'Chức năng tự chẩn đoán lỗi', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(5, 11, 'Hẹn giờ bật tắt máy', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(6, 11, 'Làm lạnh nhanh tức thì', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(7, 3, 'Tìm kiếm bằng giọng nói tiếng Việt', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(8, 3, 'Đ.khiển giọng nói không Remote', '', '', 1, 0, 0, '2021-05-31 06:55:54', '2021-05-31 06:55:54'),
(21, 2, 'Chức năng hút ẩm 2', '<p>Chức năng h&uacute;t ẩm 2</p>\r\n', 'Chức năng hút ẩm 2', 1, 8, 8, '2021-06-01 06:15:07', '2021-06-01 06:15:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `bills_id` (`bills_id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `configweb`
--
ALTER TABLE `configweb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `optiongroups`
--
ALTER TABLE `optiongroups`
  ADD PRIMARY KEY (`optiongroups_id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `options_ibfk_1` (`optiongroup_id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `page_topic` (`page_topic`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `page_topicid` (`post_topicid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_catid` (`product_catid`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`productoptions_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `productoptions_ibfk_2` (`optiongroup_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `smartpay`
--
ALTER TABLE `smartpay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `socialnetwork`
--
ALTER TABLE `socialnetwork`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topbar`
--
ALTER TABLE `topbar`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role2` (`role2`);

--
-- Chỉ mục cho bảng `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_coupon` (`id_coupon`);

--
-- Chỉ mục cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`utilities_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `configweb`
--
ALTER TABLE `configweb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optiongroups`
--
ALTER TABLE `optiongroups`
  MODIFY `optiongroups_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `options_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `productoptions_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `smartpay`
--
ALTER TABLE `smartpay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `socialnetwork`
--
ALTER TABLE `socialnetwork`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `topbar`
--
ALTER TABLE `topbar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `utilities`
--
ALTER TABLE `utilities`
  MODIFY `utilities_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`bills_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`);

--
-- Các ràng buộc cho bảng `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`optiongroup_id`) REFERENCES `optiongroups` (`optiongroups_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `page_ibfk_1` FOREIGN KEY (`page_topic`) REFERENCES `topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_topicid`) REFERENCES `topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_catid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productoptions`
--
ALTER TABLE `productoptions`
  ADD CONSTRAINT `productoptions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productoptions_ibfk_2` FOREIGN KEY (`optiongroup_id`) REFERENCES `optiongroups` (`optiongroups_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productoptions_ibfk_3` FOREIGN KEY (`option_id`) REFERENCES `options` (`options_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role2`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD CONSTRAINT `user_coupon_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_coupon_ibfk_2` FOREIGN KEY (`id_coupon`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD CONSTRAINT `utilities_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
