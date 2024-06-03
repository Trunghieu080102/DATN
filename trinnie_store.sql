-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 29, 2022 lúc 12:01 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ashleyhome_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'CANIFA', '1.jfif', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'canifa', 0, '2020-06-29 23:58:03', '2022-03-29 02:39:41'),
(2, 'YODY ', '2.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'yody', 0, '2020-06-29 23:58:41', '2022-03-29 02:45:30'),
(3, 'GUMAC', '4.jfif', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'gumac', 0, '2020-06-29 23:59:24', '2022-03-29 02:46:21'),
(4, '5S Official', '27.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', '5s-official', 0, '2020-06-29 23:59:49', '2022-03-29 02:46:29'),
(5, 'Triumph', '6.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'triumph', 0, '2020-06-30 00:00:15', '2022-03-29 02:46:42'),
(6, 'Vera', '7.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'vera', 0, '2020-06-30 00:42:37', '2022-03-29 02:46:49'),
(7, 'BALO 4.0', '22.jfif', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'balo-40', 0, '2020-06-30 00:58:23', '2022-03-29 02:46:58'),
(8, 'JUNO', '11.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'juno', 0, '2020-06-30 00:59:23', '2022-03-29 02:47:09'),
(9, 'FURLA', '26.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'furla', 0, '2020-06-30 01:00:14', '2022-03-29 02:47:27'),
(10, 'ADIDAS', 'shop.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'adidas', 0, '2020-06-30 01:00:48', '2022-03-29 02:47:39'),
(11, 'Boca Do Lobo', '20.jfif', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'boca-do-lobo', 0, '2020-08-22 00:13:06', '2022-03-29 02:47:52'),
(12, 'Caracole', '14.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'caracole', 0, '2020-08-22 00:19:05', '2022-03-29 02:48:00'),
(13, 'Sir Lighting', '18.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'sir-lighting', 0, '2020-08-22 00:20:46', '2022-03-29 02:48:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1),
(53, '2020_07_03_021215_add_user_id_to_customers_table', 2),
(54, '2020_07_03_025411_add_foreign_user_id_to_customers_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(29, 'delete_brand', 'Delete Brand', 0, NULL, NULL),
(30, 'delete_role', 'Delete Role', 0, NULL, NULL),
(31, 'delete_product', 'Delete Product', 0, NULL, NULL),
(32, 'delete_category', 'Delete Category', 0, NULL, NULL),
(33, 'delete_slide', 'Delete Slide', 0, NULL, NULL),
(34, 'delete_user', 'Delete User', 0, NULL, NULL),
(35, 'delete_order', 'Delete Order', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(112, 1, 1, NULL, NULL),
(113, 2, 1, NULL, NULL),
(114, 3, 1, NULL, NULL),
(115, 4, 1, NULL, NULL),
(116, 5, 1, NULL, NULL),
(117, 6, 1, NULL, NULL),
(118, 7, 1, NULL, NULL),
(119, 8, 1, NULL, NULL),
(120, 9, 1, NULL, NULL),
(121, 10, 1, NULL, NULL),
(122, 11, 1, NULL, NULL),
(123, 12, 1, NULL, NULL),
(124, 13, 1, NULL, NULL),
(125, 14, 1, NULL, NULL),
(126, 15, 1, NULL, NULL),
(127, 16, 1, NULL, NULL),
(128, 17, 1, NULL, NULL),
(129, 18, 1, NULL, NULL),
(130, 19, 1, NULL, NULL),
(131, 20, 1, NULL, NULL),
(132, 21, 1, NULL, NULL),
(133, 22, 1, NULL, NULL),
(134, 23, 1, NULL, NULL),
(135, 24, 1, NULL, NULL),
(136, 25, 1, NULL, NULL),
(137, 26, 1, NULL, NULL),
(138, 27, 1, NULL, NULL),
(139, 28, 1, NULL, NULL),
(140, 29, 1, NULL, NULL),
(141, 30, 1, NULL, NULL),
(142, 31, 1, NULL, NULL),
(143, 32, 1, NULL, NULL),
(144, 33, 1, NULL, NULL),
(145, 34, 1, NULL, NULL),
(146, 35, 1, NULL, NULL),
(166, 3, 2, NULL, NULL),
(167, 4, 2, NULL, NULL),
(168, 7, 2, NULL, NULL),
(169, 8, 2, NULL, NULL),
(170, 11, 2, NULL, NULL),
(171, 12, 2, NULL, NULL),
(172, 15, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 19, 2, NULL, NULL),
(175, 20, 2, NULL, NULL),
(176, 23, 2, NULL, NULL),
(177, 24, 2, NULL, NULL),
(178, 27, 2, NULL, NULL),
(179, 28, 2, NULL, NULL),
(180, 5, 3, NULL, NULL),
(181, 6, 3, NULL, NULL),
(182, 7, 3, NULL, NULL),
(183, 8, 3, NULL, NULL),
(184, 9, 3, NULL, NULL),
(185, 10, 3, NULL, NULL),
(186, 11, 3, NULL, NULL),
(187, 12, 3, NULL, NULL),
(188, 13, 3, NULL, NULL),
(189, 14, 3, NULL, NULL),
(190, 15, 3, NULL, NULL),
(191, 16, 3, NULL, NULL),
(192, 17, 3, NULL, NULL),
(193, 18, 3, NULL, NULL),
(194, 19, 3, NULL, NULL),
(195, 20, 3, NULL, NULL),
(196, 21, 3, NULL, NULL),
(197, 22, 3, NULL, NULL),
(198, 23, 3, NULL, NULL),
(199, 24, 3, NULL, NULL),
(200, 29, 3, NULL, NULL),
(201, 31, 3, NULL, NULL),
(202, 32, 3, NULL, NULL),
(203, 33, 3, NULL, NULL),
(204, 35, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Set áo công sở', '5efae3fca71eb', '<ul>\r\n	<li>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140)&nbsp;</li>\r\n	<li>Tặng 12 Th&aacute;ng Bảo H&agrave;nh</li>\r\n	<li>Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</li>\r\n</ul>', 'Top 8Trả góp 0% - Trả trước 0Đ', '23.jpg', 190000, 165000, 46, 'set-ao-cong-so', 0, 1, 6, 1, 0, '2020-06-30 00:09:58', '2022-03-29 03:00:29'),
(2, 'Bộ đồ thể thao juvetus', '5efae67bb4588', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '5.jpg', 480000, NULL, 86, 'bo-do-the-thao-juvetus', 0, 1, 8, 1, 0, '2020-06-30 00:16:54', '2022-03-29 02:51:19'),
(3, 'Áo bông ngủ siêu kute', '5efae8d18651a', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '6.jpg', 480000, NULL, 40, 'ao-bong-ngu-sieu-kute', 0, 1, 6, 1, 0, '2020-06-30 00:26:12', '2022-03-29 02:51:44'),
(4, 'THE BLUE SKY', '5efae917dcc4b', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '8.jpg', 380000, 280000, 100, 'the-blue-sky', 0, 0, 2, 1, 0, '2020-06-30 00:28:02', '2022-03-29 02:52:04'),
(5, 'Sơ mi công sở nam', '5efae98c30a87', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '9.jfif', 359000, 350000, 57, 'so-mi-cong-so-nam', 0, 0, 5, 6, 0, '2020-06-30 00:29:40', '2022-03-29 02:52:19'),
(6, 'Áo hoodie', '5efae9e8bbb75', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '10.jpg', 500000, 450000, 88, 'ao-hoodie', 1, 1, 12, 1, 0, '2020-06-30 00:32:39', '2022-03-29 02:53:03'),
(7, 'Áo khoác nam', '5efaeaab895d0', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '11.jpg', 320000, 245000, 40, 'ao-khoac-nam', 0, 0, 7, 2, 0, '2020-06-30 00:35:10', '2022-03-29 02:53:42'),
(8, 'ÁO len', '5efaeb372f907', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '13.jpg', 550000, 450000, 20, 'ao-len', 0, 0, 11, 6, 0, '2020-06-30 00:37:09', '2022-03-29 02:53:57'),
(9, 'Áo Phông nam', '5efaebf71f7d1', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '17.jpg', 400000, 320000, 40, 'ao-phong-nam', 0, 0, 5, 7, 0, '2020-06-30 00:40:08', '2022-03-29 02:54:24'),
(11, 'Lucie mùa đông', '5efaed6061f72', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '18.jpg', 280000, 260000, 20, 'lucie-mua-dong', 0, 0, 6, 2, 0, '2020-06-30 00:46:00', '2022-03-29 02:54:50'),
(12, 'Pink ROSIE SNEAKER', '5efaf1ef5dc78', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '27.jpg', 349000, NULL, 100, 'pink-rosie-sneaker', 0, 0, 1, 1, 0, '2020-06-30 01:04:58', '2022-03-29 02:55:16'),
(13, 'Bộ đồ ngủ kute', '5efaf256cc072', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', '14.jpg', 599000, 499000, 20, 'bo-do-ngu-kute', 0, 0, 8, 2, 0, '2020-06-30 01:06:14', '2022-03-29 02:55:44'),
(14, 'Áo gió nam nữ', '5efaf2b835640', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Top 8Trả góp 0% - Trả trước 0Đ', 'shop.jpg', 379000, NULL, 9, 'ao-gio-nam-nu', 0, 0, 9, 2, 0, '2020-06-30 01:18:03', '2022-03-29 02:56:14'),
(15, 'Áo ấm giữ nhiệt siêu mềm', '5efaf541a1f06', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', '21.jpg', 79500, 690500, 50, 'ao-am-giu-nhiet-sieu-mem', 0, 0, 2, 1, 0, '2020-06-30 01:19:34', '2022-03-29 02:56:45'),
(16, 'Combo đồ ngủ siêu hot', '5efaf59f10609', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', '23.jpg', 599800, NULL, 100, 'combo-do-ngu-sieu-hot', 0, 0, 10, 1, 0, '2020-06-30 01:20:38', '2022-03-29 02:57:04'),
(21, 'Giày sneaker nam tính', '5f40c76f89761', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', '25.jpg', 450000, 390000, 48, 'giay-sneaker-nam-tinh', 1, 1, 11, 6, 0, '2020-08-22 00:23:34', '2022-03-29 02:57:30'),
(22, 'BÓ HOA BAN MAI', '5f40c7fb32a2c', 'Tặng Combo Dịch Vụ & Phiếu Mua Hàng 700.000đ (800140)\r\nTặng 12 Tháng Bảo Hành\r\nĐổi Trả Sản Phẩm Trong Vòng 35 Ngày ( Nếu Lỗi Kỹ Thuật)', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'b7.jpg', 120900, NULL, 19, 'but-da-mini', 1, 1, 9, 1, 1, '2020-08-22 00:25:34', '2021-04-04 05:54:43'),
(23, 'Giày thể thao nam đế đệm khí CPT - Màu xanh', '5f40c88606dcd', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất\r\nHướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', '24.jpg', 210000, 200000, 80, 'giay-the-thao-nam-de-dem-khi-cpt-mau-xanh', 1, 1, 11, 1, 0, '2020-08-22 00:27:09', '2022-03-29 02:57:59'),
(24, 'Giày thể thao siêu nhẹ', '6068f2417b174', '<p>Tặng Combo Dịch Vụ &amp; Phiếu Mua H&agrave;ng 700.000đ (800140) Tặng 12 Th&aacute;ng Bảo H&agrave;nh Đổi Trả Sản Phẩm Trong V&ograve;ng 35 Ng&agrave;y ( N&ecirc;́u Lỗi Kỹ Thuật)</p>', 'Giao ngay từ cửa hàng gần bạn nhất Hướng dẫn sử dụng, giải đáp thắc mắc sản phẩm', 'giãyin.jpg', 540000, 350000, 20, 'giay-the-thao-sieu-nhe', 1, 0, 4, 2, 0, '2021-04-04 05:56:16', '2022-03-29 02:58:48'),
(25, 'huong nguyen', '60c094968a190', '<p>asdasd</p>', 'asdsad', 'b10.jpg', 199000, 189000, 20, 'huong-nguyen', 0, 1, 13, 14, 1, '2021-06-09 03:16:01', '2021-06-09 03:16:58'),
(26, 'ádasd asdasds asdas d', '60c2e4ce9bed4', '<p>&aacute;dasd</p>', 'ádsad', 'sunflower.png', 123000, 100000, 20, 'adasd-asdasds-asdas-d', 0, 1, 6, 15, 1, '2021-06-10 21:22:02', '2021-06-10 21:22:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Giày thể thao', 'abc', 'giay-the-thao', 0, '2020-06-30 00:00:28', '2022-03-26 01:32:48'),
(2, 'Dép', 'abc', 'dep', 0, '2020-06-30 00:02:00', '2022-03-26 01:29:59'),
(3, 'Tai Nghe', 'abc', 'tai-nghe', 1, '2020-06-30 00:02:38', '2020-08-13 00:08:42'),
(4, 'Pin', 'abc', 'pin', 1, '2020-06-30 00:03:18', '2020-08-13 00:08:39'),
(5, 'Charger', 'abc', 'charger', 1, '2020-06-30 00:04:23', '2020-08-13 00:08:36'),
(6, 'Nón thời trang', 'No', 'non-thoi-trang', 0, '2020-08-22 00:12:24', '2022-03-26 01:30:13'),
(7, 'Túi sach Nữ', 'no', 'tui-sach-nu', 0, '2021-04-04 04:26:51', '2022-03-26 01:30:29'),
(8, 'Quần Jean Nam', 'abc', 'quan-jean-nam', 0, '2021-06-08 21:51:40', '2022-03-26 01:30:43'),
(9, 'Váy Nữ', 'abc', 'vay-nu', 0, '2021-06-08 21:51:53', '2022-03-26 01:30:58'),
(10, 'Áo khoác', 'abc', 'ao-khoac', 0, '2021-06-08 21:52:27', '2022-03-26 01:31:17'),
(11, 'Áo thun', 'abc', 'ao-thun', 0, '2021-06-08 21:52:47', '2022-03-26 01:31:30'),
(12, 'Chân váy', 'abc', 'chan-vay', 0, '2021-06-08 21:53:10', '2022-03-26 01:32:33'),
(13, 'Đồ ngủ', 'abc', 'do-ngu', 0, '2021-06-08 21:53:24', '2022-03-26 01:32:40'),
(14, 'asdasd', 'asdas', 'asdasd', 1, '2021-06-09 03:14:28', '2021-06-09 03:17:12'),
(15, 'ádasd', 'ádsad', 'adasd', 1, '2021-06-10 21:21:21', '2021-06-10 21:22:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `content`, `description`, `image`, `url`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 5  - quà ngập nhà', 'Khuyến mãi đặc biết 30/04-01/05', 'Image00002-47-1200x900.jpg', '#', 0, '2020-07-02 07:34:10', '2022-03-26 00:47:22'),
(2, 'Khuyến mãi đặc biết 30/04-01/05', 'Đổi 1 vs 1 - Hoàn trả cũ lấy mới thu hồi nếu lỗi trong vòng 1 tuần', 'abc.jpg', '#', 0, '2020-07-02 07:34:29', '2022-03-26 00:47:34'),
(3, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 6', 'Ưu đãi giảm giá siêu hot đối với tất cả các mặt hàng chào mừng chào 1/6', '2.jpg', '#', 0, '2020-07-02 07:34:40', '2022-03-26 00:49:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 0, NULL, '$2y$10$/R2hG9ld.VWodXp152nj6elEVmguqxg4YsakqBrjDwkDUB9PNjPyO', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
