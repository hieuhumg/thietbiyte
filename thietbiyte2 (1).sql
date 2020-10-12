-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2020 lúc 12:07 PM
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
-- Cơ sở dữ liệu: `thietbiyte2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_actionscheduler_actions`
--

CREATE TABLE `tbyt_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_actionscheduler_actions`
--

INSERT INTO `tbyt_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(63, 'action_scheduler/migration_hook', 'complete', '2020-10-07 10:15:39', '2020-10-07 10:15:39', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602065739;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602065739;}', 1, 1, '2020-10-07 10:15:52', '2020-10-07 10:15:52', 0, NULL),
(64, 'action_scheduler/migration_hook', 'complete', '2020-10-09 07:45:50', '2020-10-09 07:45:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602229550;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602229550;}', 1, 1, '2020-10-09 07:46:44', '2020-10-09 07:46:44', 0, NULL),
(65, 'action_scheduler/migration_hook', 'canceled', '2020-10-09 07:45:50', '2020-10-09 07:45:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602229550;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602229550;}', 1, 0, '2020-10-09 07:46:44', '2020-10-09 07:46:44', 0, NULL),
(66, 'action_scheduler/migration_hook', 'complete', '2020-10-09 07:47:44', '2020-10-09 07:47:44', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602229664;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602229664;}', 1, 1, '2020-10-09 07:48:53', '2020-10-09 07:48:53', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_actionscheduler_claims`
--

CREATE TABLE `tbyt_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_actionscheduler_groups`
--

CREATE TABLE `tbyt_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_actionscheduler_groups`
--

INSERT INTO `tbyt_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_actionscheduler_logs`
--

CREATE TABLE `tbyt_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_actionscheduler_logs`
--

INSERT INTO `tbyt_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 63, 'action created', '2020-10-07 10:14:39', '2020-10-07 10:14:39'),
(2, 63, 'action started via WP Cron', '2020-10-07 10:15:52', '2020-10-07 10:15:52'),
(3, 63, 'action complete via WP Cron', '2020-10-07 10:15:52', '2020-10-07 10:15:52'),
(4, 65, 'action created', '2020-10-09 07:44:50', '2020-10-09 07:44:50'),
(5, 64, 'action created', '2020-10-09 07:44:50', '2020-10-09 07:44:50'),
(6, 64, 'action started via WP Cron', '2020-10-09 07:46:44', '2020-10-09 07:46:44'),
(7, 65, 'action canceled', '2020-10-09 07:46:44', '2020-10-09 07:46:44'),
(8, 64, 'action complete via WP Cron', '2020-10-09 07:46:44', '2020-10-09 07:46:44'),
(9, 65, 'action ignored via WP Cron', '2020-10-09 07:46:44', '2020-10-09 07:46:44'),
(10, 66, 'action created', '2020-10-09 07:46:44', '2020-10-09 07:46:44'),
(11, 66, 'action started via WP Cron', '2020-10-09 07:48:45', '2020-10-09 07:48:45'),
(12, 66, 'action complete via WP Cron', '2020-10-09 07:48:53', '2020-10-09 07:48:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_commentmeta`
--

CREATE TABLE `tbyt_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_comments`
--

CREATE TABLE `tbyt_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_comments`
--

INSERT INTO `tbyt_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-03 03:05:17', '2020-10-03 03:05:17', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_links`
--

CREATE TABLE `tbyt_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_options`
--

CREATE TABLE `tbyt_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_options`
--

INSERT INTO `tbyt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/thietbiyte2/wordpress', 'yes'),
(2, 'home', 'http://localhost/thietbiyte2/wordpress', 'yes'),
(3, 'blogname', 'thietbiyte', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hieu.humg.k57@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%', 'yes'),
(29, 'rewrite_rules', 'a:152:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:29:\"wp-downgrade/wp-downgrade.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:76:\"C:\\xampp\\htdocs\\thietbiyte2\\wordpress/wp-content/themes/thietbiyte/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'thietbiyte', 'yes'),
(41, 'stylesheet', 'thietbiyte', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:27:\"Giới thiệu về website\";s:4:\"text\";s:155:\"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:16:\"Tìm Chúng Tôi\";s:4:\"text\";s:177:\"<strong>Địa chỉ</strong>\n23 Hàng Mã\nHà Nội\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00 sáng&ndash;5:00 chiều\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1617246316', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'tbyt_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'vi', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:17:{i:1602495583;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1602496501;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1602497118;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602497677;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602497678;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602497685;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602499487;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602510287;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602515118;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602547200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602558317;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602559408;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602571802;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602575097;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602990317;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1603525547;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601882718;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'acf_version', '5.7.10', 'yes'),
(152, 'cptui_new_install', 'false', 'yes'),
(153, 'cptui_post_types', 'a:0:{}', 'yes'),
(156, 'cptui_taxonomies', 'a:0:{}', 'yes'),
(164, 'category_children', 'a:0:{}', 'yes'),
(193, 'wpdg_specific_version_name', '5.1', 'yes'),
(194, 'wpdg_download_url', 'https://downloads.wordpress.org/release/vi/wordpress-4.5.2.zip', 'yes'),
(195, 'wpdg_edit_download_url', '', 'yes'),
(200, 'core_updater.lock', '1601720883', 'no'),
(206, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(219, 'current_theme', 'thietbiyte', 'yes'),
(220, 'theme_mods_thietbiyte', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(221, 'theme_switched', '', 'yes'),
(223, 'options_logo', '39', 'no'),
(224, '_options_logo', 'field_5f7ad7c290619', 'no'),
(225, 'options_address', '', 'no'),
(226, '_options_address', 'field_5f7ad7d79061a', 'no'),
(227, 'options_email', '', 'no'),
(228, '_options_email', 'field_5f7ad7f69061b', 'no'),
(305, 'action_scheduler_hybrid_store_demarkation', '62', 'yes'),
(306, 'schema-ActionScheduler_StoreSchema', '3.0.1602065673', 'yes'),
(307, 'schema-ActionScheduler_LoggerSchema', '2.0.1602065673', 'yes'),
(310, 'woocommerce_schema_version', '430', 'yes'),
(311, 'woocommerce_store_address', '5b Nguyễn Cơ Thạch', 'yes'),
(312, 'woocommerce_store_address_2', '', 'yes'),
(313, 'woocommerce_store_city', 'Hà nội', 'yes'),
(314, 'woocommerce_default_country', 'VN', 'yes'),
(315, 'woocommerce_store_postcode', '1000', 'yes'),
(316, 'woocommerce_allowed_countries', 'all', 'yes'),
(317, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(318, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(319, 'woocommerce_ship_to_countries', '', 'yes'),
(320, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(321, 'woocommerce_default_customer_address', 'base', 'yes'),
(322, 'woocommerce_calc_taxes', 'no', 'yes'),
(323, 'woocommerce_enable_coupons', 'yes', 'yes'),
(324, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(325, 'woocommerce_currency', 'VND', 'yes'),
(326, 'woocommerce_currency_pos', 'right_space', 'yes'),
(327, 'woocommerce_price_thousand_sep', ',', 'yes'),
(328, 'woocommerce_price_decimal_sep', '.', 'yes'),
(329, 'woocommerce_price_num_decimals', '0', 'yes'),
(330, 'woocommerce_shop_page_id', '63', 'yes'),
(331, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(332, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(333, 'woocommerce_placeholder_image', '62', 'yes'),
(334, 'woocommerce_weight_unit', 'kg', 'yes'),
(335, 'woocommerce_dimension_unit', 'cm', 'yes'),
(336, 'woocommerce_enable_reviews', 'yes', 'yes'),
(337, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(338, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(339, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(340, 'woocommerce_review_rating_required', 'yes', 'no'),
(341, 'woocommerce_manage_stock', 'yes', 'yes'),
(342, 'woocommerce_hold_stock_minutes', '60', 'no'),
(343, 'woocommerce_notify_low_stock', 'yes', 'no'),
(344, 'woocommerce_notify_no_stock', 'yes', 'no'),
(345, 'woocommerce_stock_email_recipient', 'hieu.humg.k57@gmail.com', 'no'),
(346, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(347, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(348, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(349, 'woocommerce_stock_format', '', 'yes'),
(350, 'woocommerce_file_download_method', 'force', 'no'),
(351, 'woocommerce_downloads_require_login', 'no', 'no'),
(352, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(353, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(354, 'woocommerce_prices_include_tax', 'no', 'yes'),
(355, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(356, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(357, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(358, 'woocommerce_tax_classes', '', 'yes'),
(359, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(360, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(361, 'woocommerce_price_display_suffix', '', 'yes'),
(362, 'woocommerce_tax_total_display', 'itemized', 'no'),
(363, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(364, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(365, 'woocommerce_ship_to_destination', 'billing', 'no'),
(366, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(367, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(368, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(369, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(370, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(371, 'woocommerce_registration_generate_username', 'yes', 'no'),
(372, 'woocommerce_registration_generate_password', 'yes', 'no'),
(373, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(374, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(375, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(376, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(377, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(378, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(379, 'woocommerce_trash_pending_orders', '', 'no'),
(380, 'woocommerce_trash_failed_orders', '', 'no'),
(381, 'woocommerce_trash_cancelled_orders', '', 'no'),
(382, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(383, 'woocommerce_email_from_name', 'thietbiyte', 'no'),
(384, 'woocommerce_email_from_address', 'hieu.humg.k57@gmail.com', 'no'),
(385, 'woocommerce_email_header_image', '', 'no'),
(386, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(387, 'woocommerce_email_base_color', '#96588a', 'no'),
(388, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(389, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(390, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(391, 'woocommerce_cart_page_id', '64', 'no'),
(392, 'woocommerce_checkout_page_id', '65', 'no'),
(393, 'woocommerce_myaccount_page_id', '66', 'no'),
(394, 'woocommerce_terms_page_id', '', 'no'),
(395, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(396, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(397, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(398, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(399, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(400, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(401, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(402, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(403, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(404, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(405, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(406, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(407, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(408, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(409, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(410, 'woocommerce_api_enabled', 'no', 'yes'),
(411, 'woocommerce_allow_tracking', 'no', 'no'),
(412, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(413, 'woocommerce_single_image_width', '600', 'yes'),
(414, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(415, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(416, 'woocommerce_demo_store', 'no', 'no'),
(417, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(418, 'current_theme_supports_woocommerce', 'no', 'yes'),
(419, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(421, 'product_cat_children', 'a:1:{i:3;a:2:{i:0;i:4;i:1;i:5;}}', 'yes'),
(422, 'default_product_cat', '19', 'yes'),
(423, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(428, 'woocommerce_homescreen_enabled', 'yes', 'yes'),
(431, 'action_scheduler_lock_async-request-runner', '1602495372', 'yes'),
(432, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"MHsR4S3BuMgOomivFNdPorBphK4LhBuR\";}', 'yes'),
(433, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(434, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(436, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(437, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(438, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(439, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(440, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(441, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(442, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(444, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(445, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(448, 'woocommerce_admin_version', '1.5.0', 'yes'),
(449, 'woocommerce_admin_install_timestamp', '1602065679', 'yes'),
(453, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1602065679', 'yes'),
(454, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(455, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(456, 'wc_blocks_db_schema_version', '260', 'yes'),
(459, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:8:\"comestic\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:5:\"1000+\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:10:\"thietbiyte\";s:7:\"plugins\";s:7:\"skipped\";}', 'yes'),
(462, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(466, '_transient_woocommerce_reports-transient-version', '1602065728', 'yes'),
(467, '_transient_timeout_orders-all-statuses', '1602670618', 'no'),
(468, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";a:0:{}}', 'no'),
(474, 'wc_remote_inbox_notifications_specs', 'a:3:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:20:\"WooCommerce Services\";s:7:\"content\";s:249:\"WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:76:\"https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}}', 'yes'),
(475, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(476, 'woocommerce_task_list_tracked_completed_tasks', 'a:2:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";}', 'yes'),
(477, '_transient_timeout_wc_report_orders_stats_17069e6c172ec67dcf747db74682b35d', '1602670591', 'no');
INSERT INTO `tbyt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(478, '_transient_wc_report_orders_stats_17069e6c172ec67dcf747db74682b35d', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(479, '_transient_timeout_wc_report_orders_stats_d6a8a941dc02d040b0429b4515046715', '1602670591', 'no'),
(480, '_transient_wc_report_orders_stats_d6a8a941dc02d040b0429b4515046715', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(481, '_transient_timeout_wc_report_orders_stats_c8283dea7ed2e4c3eb0bd3e4e042c4e8', '1602670591', 'no'),
(482, '_transient_wc_report_orders_stats_c8283dea7ed2e4c3eb0bd3e4e042c4e8', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:16:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:16:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(483, '_transient_timeout_wc_report_orders_stats_5c7e0df9910723b255850ce2718c37ac', '1602670591', 'no'),
(484, '_transient_wc_report_orders_stats_5c7e0df9910723b255850ce2718c37ac', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:16:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:16:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(486, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(487, '_transient_timeout_wc_report_orders_stats_e05c87de15e8915546edb2a8a21685dd', '1602670649', 'no'),
(488, '_transient_wc_report_orders_stats_e05c87de15e8915546edb2a8a21685dd', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(489, '_transient_timeout_wc_report_orders_stats_bfbe5b3ff6a92ec3039dd212b52aba50', '1602670649', 'no'),
(490, '_transient_wc_report_orders_stats_bfbe5b3ff6a92ec3039dd212b52aba50', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(496, 'woocommerce_task_list_hidden', 'no', 'yes'),
(497, '_transient_timeout_wc_report_orders_stats_0fd7e93deff27cb74e4641e157a230e4', '1602670932', 'no'),
(498, '_transient_wc_report_orders_stats_0fd7e93deff27cb74e4641e157a230e4', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(499, '_transient_timeout_wc_report_orders_stats_88bba86585ee1b0eb668dd8f974d89a8', '1602670932', 'no'),
(500, '_transient_wc_report_orders_stats_88bba86585ee1b0eb668dd8f974d89a8', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-07 17:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-07 17:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(507, '_transient_shipping-transient-version', '1602150095', 'yes'),
(508, '_transient_timeout_wc_shipping_method_count_legacy', '1604742096', 'no'),
(509, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1602150095\";s:5:\"value\";i:0;}', 'no'),
(610, '_transient_product_query-transient-version', '1602493094', 'yes'),
(611, '_transient_product-transient-version', '1602236740', 'yes'),
(678, '_transient_timeout_wc_report_orders_stats_cf5fef8fe369855b21388fe4bb9d1167', '1602831132', 'no'),
(679, '_transient_wc_report_orders_stats_cf5fef8fe369855b21388fe4bb9d1167', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 13:52:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 13:52:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(680, '_transient_timeout_wc_report_orders_stats_acb155a178c8286271ee3247ecbc2928', '1602831132', 'no'),
(681, '_transient_wc_report_orders_stats_acb155a178c8286271ee3247ecbc2928', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 13:52:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 13:52:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(682, '_transient_timeout_wc_report_orders_stats_7b5057db6456344293d5b3c0180c48a4', '1602831132', 'no'),
(683, '_transient_wc_report_orders_stats_7b5057db6456344293d5b3c0180c48a4', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(684, '_transient_timeout_wc_report_orders_stats_e82c888984a01ed8359fe4db127ea08e', '1602831132', 'no'),
(685, '_transient_wc_report_orders_stats_e82c888984a01ed8359fe4db127ea08e', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(696, '_transient_timeout_wc_report_orders_stats_c13e3f6f52624a560b4694a41d541d4a', '1602831547', 'no'),
(697, '_transient_wc_report_orders_stats_c13e3f6f52624a560b4694a41d541d4a', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 13:59:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 13:59:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(698, '_transient_timeout_wc_report_orders_stats_656be780f88aea6be482f7aeb592712a', '1602831547', 'no'),
(699, '_transient_wc_report_orders_stats_656be780f88aea6be482f7aeb592712a', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 13:59:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 13:59:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(700, '_transient_timeout_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', '1602831555', 'no'),
(701, '_transient_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":4:{s:15:\"customers_count\";i:0;s:16:\"avg_orders_count\";d:0;s:15:\"avg_total_spend\";d:0;s:19:\"avg_avg_order_value\";d:0;}}', 'no'),
(705, '_transient_timeout_wc_report_orders_stats_1614a84d578d7956f6368296fe76e69d', '1602831715', 'no'),
(706, '_transient_wc_report_orders_stats_1614a84d578d7956f6368296fe76e69d', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 14:01:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 14:01:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(707, '_transient_timeout_wc_report_orders_stats_8a928b1f4d10720be09734216504c066', '1602831715', 'no'),
(708, '_transient_wc_report_orders_stats_8a928b1f4d10720be09734216504c066', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 14:01:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 14:01:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(738, '_transient_timeout_wc_shipping_method_count', '1604820811', 'no'),
(739, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1602150095\";s:5:\"value\";i:0;}', 'no'),
(746, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(747, 'woocommerce_category_archive_display', '', 'yes'),
(748, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(772, '_transient_timeout_wc_report_orders_stats_ef4e79770890132e16bbfeeb78dc1a34', '1602833889', 'no'),
(773, '_transient_wc_report_orders_stats_ef4e79770890132e16bbfeeb78dc1a34', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 14:38:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 14:38:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(774, '_transient_timeout_wc_report_orders_stats_6cdefd5aef7d2a49ffe305a5d02ea088', '1602833889', 'no'),
(775, '_transient_wc_report_orders_stats_6cdefd5aef7d2a49ffe305a5d02ea088', 'a:2:{s:7:\"version\";s:10:\"1602065728\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-41\";s:10:\"date_start\";s:19:\"2020-10-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-09 14:38:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-09 14:38:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(789, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:13:\"may-chay-than\";s:15:\"attribute_label\";s:18:\"Máy chạy thận\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:11:\"may-loc-mau\";s:15:\"attribute_label\";s:15:\"Máy lọc máu\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:7:\"may-tho\";s:15:\"attribute_label\";s:10:\"Máy thở\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(790, 'woocommerce_version', '4.5.2', 'yes'),
(791, 'woocommerce_db_version', '4.5.2', 'yes'),
(809, 'action_scheduler_migration_status', 'complete', 'yes'),
(820, '_transient_timeout_wc_term_counts', '1604822014', 'no'),
(821, '_transient_wc_term_counts', 'a:4:{i:3;s:1:\"1\";i:5;s:1:\"1\";i:4;s:1:\"1\";i:19;s:1:\"1\";}', 'no'),
(896, '_transient_timeout_wc_low_stock_count', '1604829705', 'no'),
(897, '_transient_wc_low_stock_count', '0', 'no'),
(898, '_transient_timeout_wc_outofstock_count', '1604829705', 'no'),
(899, '_transient_wc_outofstock_count', '0', 'no'),
(913, '_transient_timeout_acf_plugin_updates', '1602644456', 'no'),
(914, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";}}', 'no'),
(919, '_transient_timeout__woocommerce_helper_updates', '1602514856', 'no'),
(920, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1602471656;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(922, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602485679;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(923, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602485680;s:7:\"checked\";a:1:{s:10:\"thietbiyte\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(924, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602485680;s:7:\"checked\";a:12:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";s:3:\"5.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.9.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:45:\"disable-wordpress-updates/disable-updates.php\";s:5:\"1.6.2\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:7:\"1.3.9.1\";s:45:\"get-news-vnexpress-net/get_news_vnexpress.php\";s:3:\"1.2\";s:69:\"facebook-messenger-customer-chat/facebook-messenger-customer-chat.php\";s:3:\"1.3\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"5.2.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.5.2\";s:29:\"wp-downgrade/wp-downgrade.php\";s:5:\"1.2.2\";}s:8:\"response\";a:8:{s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:42:\"w.org/plugins/advanced-nocaptcha-recaptcha\";s:4:\"slug\";s:28:\"advanced-nocaptcha-recaptcha\";s:6:\"plugin\";s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";s:11:\"new_version\";s:5:\"6.1.3\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/advanced-nocaptcha-recaptcha/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/advanced-nocaptcha-recaptcha.6.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/advanced-nocaptcha-recaptcha/assets/icon-128x128.jpg?rev=1146799\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/advanced-nocaptcha-recaptcha/assets/banner-772x250.jpg?rev=1146799\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:101:\"<ul>\n<li>recaptcha.net domain added.</li>\n<li>Error message now can be translated in file.</li>\n</ul>\";s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"disable-wordpress-updates/disable-updates.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/disable-wordpress-updates\";s:4:\"slug\";s:25:\"disable-wordpress-updates\";s:6:\"plugin\";s:45:\"disable-wordpress-updates/disable-updates.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/disable-wordpress-updates/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/disable-wordpress-updates.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/disable-wordpress-updates/assets/icon-256x256.png?rev=1162232\";s:2:\"1x\";s:78:\"https://ps.w.org/disable-wordpress-updates/assets/icon-128x128.png?rev=1163214\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/disable-wordpress-updates/assets/banner-772x250.png?rev=752416\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:8:\"5.5.9999\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:69:\"facebook-messenger-customer-chat/facebook-messenger-customer-chat.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:46:\"w.org/plugins/facebook-messenger-customer-chat\";s:4:\"slug\";s:32:\"facebook-messenger-customer-chat\";s:6:\"plugin\";s:69:\"facebook-messenger-customer-chat/facebook-messenger-customer-chat.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/facebook-messenger-customer-chat/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/facebook-messenger-customer-chat.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/facebook-messenger-customer-chat/assets/icon-256x256.png?rev=2283519\";s:2:\"1x\";s:85:\"https://ps.w.org/facebook-messenger-customer-chat/assets/icon-128x128.png?rev=2283519\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:96:\"<ul>\n<li>Added instruction links in plugin install page. Tested up to WordPress 5.5.1</li>\n</ul>\";s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2390186\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2390186\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2019-05-02 05:31:57\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2020-06-10 10:53:26\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.5.2/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"get-news-vnexpress-net/get_news_vnexpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/get-news-vnexpress-net\";s:4:\"slug\";s:22:\"get-news-vnexpress-net\";s:6:\"plugin\";s:45:\"get-news-vnexpress-net/get_news_vnexpress.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/get-news-vnexpress-net/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/get-news-vnexpress-net.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/get-news-vnexpress-net/assets/icon-128x128.png?rev=1702109\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/get-news-vnexpress-net/assets/banner-772x250.png?rev=1701310\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-downgrade/wp-downgrade.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-downgrade\";s:4:\"slug\";s:12:\"wp-downgrade\";s:6:\"plugin\";s:29:\"wp-downgrade/wp-downgrade.php\";s:11:\"new_version\";s:5:\"1.2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-downgrade/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-downgrade.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-downgrade/assets/icon-256x256.png?rev=1412844\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-downgrade/assets/icon-128x128.png?rev=1412844\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(928, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1603076464', 'no'),
(929, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(930, '_transient_timeout_wc_onboarding_product_data', '1602558068', 'no');
INSERT INTO `tbyt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(931, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 12 Oct 2020 03:01:05 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11549\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:15:\"hkg2 89 77 3086\";s:3:\"age\";s:2:\"92\";s:7:\"x-cache\";s:5:\"grace\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48561:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Save time and money with WooCommerce Shipping. Print labels right from your WooCommerce dashboard at the lowest USPS rates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Product Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696},{\"title\":\"WooCommerce Wishlists\",\"image\":\"\",\"excerpt\":\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-wishlists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/wishlist-demos\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6bd20993ea96333eab6931ec2adc6d63\",\"slug\":\"woocommerce-wishlists\",\"id\":171144},{\"title\":\"Elavon Converge Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Thumbnail-Elavon-3-ijkwkr.png\",\"excerpt\":\"Take credit card payments with Elavon, the fourth largest merchant acquirer in North America.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/elavon-vm-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2732aedb77a13149b4db82d484d3bb22\",\"slug\":\"woocommerce-gateway-elavon\",\"id\":18722},{\"title\":\"Measurement Price Calculator\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/Thumbnail-Measurement-Price-Calculator-2.png\",\"excerpt\":\"Add a calculator to your product pages to calculate product quantity required or overall price by square footage and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/measurement-price-calculator\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/product-category\\/measurement-calculator\\/\",\"price\":\"&#36;129.00\",\"hash\":\"be4679e3d3b24f513b2266b79e859bab\",\"slug\":\"woocommerce-measurement-price-calculator\",\"id\":18735},{\"title\":\"PDF Invoices\",\"image\":\"\",\"excerpt\":\"Automatically create and attach a fully customizable PDF invoice to the completed order email.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pdf-invoices\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"7495e3f13cc0fa3ee07304691d12555c\",\"slug\":\"woocommerce-pdf-invoice\",\"id\":228318},{\"title\":\"PayPal Advanced\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Advanced-Dark.png\",\"excerpt\":\"Take credit card payments securely via Paypal Payments Advanced (Payflow) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-advanced\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0898a0a035d9e9c0bddf4b31a3906ae9\",\"slug\":\"woocommerce-gateway-paypal-advanced\",\"id\":18742},{\"title\":\"WooCommerce Waitlist\",\"image\":\"\",\"excerpt\":\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-waitlist\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"55d9643a241ecf5ad501808c0787483f\",\"slug\":\"woocommerce-waitlist\",\"id\":122144},{\"title\":\"WooCommerce Stamps.com API\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/stamps-logo.png\",\"excerpt\":\"With the Stamps.com integration you can automatically create ready-to-print shipping labels for USPS, based on items in an order.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-shipping-stamps\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"b0e7af51937d3cdbd6779283d482b6e4\",\"slug\":\"woocommerce-shipping-stamps\",\"id\":538435},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Currency Converter Widget\",\"image\":\"\",\"excerpt\":\"Let customers see prices in the currency of their choice\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/currency-converter-widget\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"0b2ec7cb103c9c102d37f8183924b271\",\"slug\":\"woocommerce-currency-converter-widget\",\"id\":18651}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48561:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Save time and money with WooCommerce Shipping. Print labels right from your WooCommerce dashboard at the lowest USPS rates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Product Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696},{\"title\":\"WooCommerce Wishlists\",\"image\":\"\",\"excerpt\":\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-wishlists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/wishlist-demos\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6bd20993ea96333eab6931ec2adc6d63\",\"slug\":\"woocommerce-wishlists\",\"id\":171144},{\"title\":\"Elavon Converge Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Thumbnail-Elavon-3-ijkwkr.png\",\"excerpt\":\"Take credit card payments with Elavon, the fourth largest merchant acquirer in North America.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/elavon-vm-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2732aedb77a13149b4db82d484d3bb22\",\"slug\":\"woocommerce-gateway-elavon\",\"id\":18722},{\"title\":\"Measurement Price Calculator\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/Thumbnail-Measurement-Price-Calculator-2.png\",\"excerpt\":\"Add a calculator to your product pages to calculate product quantity required or overall price by square footage and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/measurement-price-calculator\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/product-category\\/measurement-calculator\\/\",\"price\":\"&#36;129.00\",\"hash\":\"be4679e3d3b24f513b2266b79e859bab\",\"slug\":\"woocommerce-measurement-price-calculator\",\"id\":18735},{\"title\":\"PDF Invoices\",\"image\":\"\",\"excerpt\":\"Automatically create and attach a fully customizable PDF invoice to the completed order email.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pdf-invoices\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"7495e3f13cc0fa3ee07304691d12555c\",\"slug\":\"woocommerce-pdf-invoice\",\"id\":228318},{\"title\":\"PayPal Advanced\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Advanced-Dark.png\",\"excerpt\":\"Take credit card payments securely via Paypal Payments Advanced (Payflow) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-advanced\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0898a0a035d9e9c0bddf4b31a3906ae9\",\"slug\":\"woocommerce-gateway-paypal-advanced\",\"id\":18742},{\"title\":\"WooCommerce Waitlist\",\"image\":\"\",\"excerpt\":\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-waitlist\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"55d9643a241ecf5ad501808c0787483f\",\"slug\":\"woocommerce-waitlist\",\"id\":122144},{\"title\":\"WooCommerce Stamps.com API\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/stamps-logo.png\",\"excerpt\":\"With the Stamps.com integration you can automatically create ready-to-print shipping labels for USPS, based on items in an order.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-shipping-stamps\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"b0e7af51937d3cdbd6779283d482b6e4\",\"slug\":\"woocommerce-shipping-stamps\",\"id\":538435},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Currency Converter Widget\",\"image\":\"\",\"excerpt\":\"Let customers see prices in the currency of their choice\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/currency-converter-widget\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"0b2ec7cb103c9c102d37f8183924b271\",\"slug\":\"woocommerce-currency-converter-widget\",\"id\":18651}]}\";s:3:\"raw\";s:49180:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Mon, 12 Oct 2020 03:01:05 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11549\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: hkg2 89 77 3086\r\nAge: 92\r\nX-Cache: grace\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Save time and money with WooCommerce Shipping. Print labels right from your WooCommerce dashboard at the lowest USPS rates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Product Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696},{\"title\":\"WooCommerce Wishlists\",\"image\":\"\",\"excerpt\":\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-wishlists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/wishlist-demos\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6bd20993ea96333eab6931ec2adc6d63\",\"slug\":\"woocommerce-wishlists\",\"id\":171144},{\"title\":\"Elavon Converge Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Thumbnail-Elavon-3-ijkwkr.png\",\"excerpt\":\"Take credit card payments with Elavon, the fourth largest merchant acquirer in North America.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/elavon-vm-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2732aedb77a13149b4db82d484d3bb22\",\"slug\":\"woocommerce-gateway-elavon\",\"id\":18722},{\"title\":\"Measurement Price Calculator\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/Thumbnail-Measurement-Price-Calculator-2.png\",\"excerpt\":\"Add a calculator to your product pages to calculate product quantity required or overall price by square footage and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/measurement-price-calculator\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/product-category\\/measurement-calculator\\/\",\"price\":\"&#36;129.00\",\"hash\":\"be4679e3d3b24f513b2266b79e859bab\",\"slug\":\"woocommerce-measurement-price-calculator\",\"id\":18735},{\"title\":\"PDF Invoices\",\"image\":\"\",\"excerpt\":\"Automatically create and attach a fully customizable PDF invoice to the completed order email.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pdf-invoices\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"7495e3f13cc0fa3ee07304691d12555c\",\"slug\":\"woocommerce-pdf-invoice\",\"id\":228318},{\"title\":\"PayPal Advanced\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Advanced-Dark.png\",\"excerpt\":\"Take credit card payments securely via Paypal Payments Advanced (Payflow) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-advanced\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0898a0a035d9e9c0bddf4b31a3906ae9\",\"slug\":\"woocommerce-gateway-paypal-advanced\",\"id\":18742},{\"title\":\"WooCommerce Waitlist\",\"image\":\"\",\"excerpt\":\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-waitlist\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"55d9643a241ecf5ad501808c0787483f\",\"slug\":\"woocommerce-waitlist\",\"id\":122144},{\"title\":\"WooCommerce Stamps.com API\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/stamps-logo.png\",\"excerpt\":\"With the Stamps.com integration you can automatically create ready-to-print shipping labels for USPS, based on items in an order.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-shipping-stamps\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"b0e7af51937d3cdbd6779283d482b6e4\",\"slug\":\"woocommerce-shipping-stamps\",\"id\":538435},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Currency Converter Widget\",\"image\":\"\",\"excerpt\":\"Let customers see prices in the currency of their choice\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/currency-converter-widget\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"0b2ec7cb103c9c102d37f8183924b271\",\"slug\":\"woocommerce-currency-converter-widget\",\"id\":18651}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Mon, 12 Oct 2020 03:01:05 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11549\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:15:\"hkg2 89 77 3086\";}s:3:\"age\";a:1:{i:0;s:2:\"92\";}s:7:\"x-cache\";a:1:{i:0;s:5:\"grace\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `tbyt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(933, '_site_transient_timeout_theme_roots', '1602487475', 'no'),
(934, '_site_transient_theme_roots', 'a:1:{s:10:\"thietbiyte\";s:7:\"/themes\";}', 'no'),
(940, '_transient_timeout_wc_report_sales_by_date', '1602574903', 'no'),
(941, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"b1f9cf76d9d2632d868932bb463bbbad\";a:0:{}s:32:\"5298e1724008124ca6c7e1c192166748\";a:0:{}s:32:\"dd30695827e4b416c907cc24331c1230\";a:0:{}s:32:\"dfaf26d5ffb2236d75f5eae732a10c99\";N;s:32:\"cf7ebd2dad40ee3ac780a4de4a88379d\";a:0:{}s:32:\"2c06f2f01fe6c3f29df9430c6a4a5982\";a:0:{}s:32:\"de9add65bb5260746fc63e605041537e\";a:0:{}s:32:\"0fbfa31f00612eaae7bf57443f788cc0\";a:0:{}}', 'no'),
(942, '_transient_timeout_wc_admin_report', '1602574903', 'no'),
(943, '_transient_wc_admin_report', 'a:1:{s:32:\"5e81ca52a9c35addbb734a3997c482bb\";a:0:{}}', 'no'),
(945, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1602531706', 'no'),
(946, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class=\"rss-widget\"><p><strong>Lỗi RSS:</strong> WP HTTP Error: Địa chỉ URL không hợp lệ.</p></div><div class=\"rss-widget\"><p><strong>Lỗi RSS:</strong> WP HTTP Error: Địa chỉ URL không hợp lệ.</p></div>', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_postmeta`
--

CREATE TABLE `tbyt_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_postmeta`
--

INSERT INTO `tbyt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_edit_lock', '1602062934:1'),
(8, 8, '_edit_lock', '1601708242:1'),
(10, 10, '_edit_lock', '1601715021:1'),
(26, 18, '_edit_last', '1'),
(27, 18, '_edit_lock', '1601711851:1'),
(28, 20, '_edit_last', '1'),
(29, 20, '_edit_lock', '1602492060:1'),
(34, 25, '_wp_attached_file', '2020/10/9152a5a99f1b6045390a-1.jpg'),
(35, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:34:\"2020/10/9152a5a99f1b6045390a-1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"9152a5a99f1b6045390a-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"9152a5a99f1b6045390a-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"9152a5a99f1b6045390a-1-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"9152a5a99f1b6045390a-1-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"9152a5a99f1b6045390a-1-1200x1600.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"9152a5a99f1b6045390a-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 10, '_edit_last', '1'),
(37, 10, 'img_product', 'a:2:{i:0;s:1:\"7\";i:1;s:2:\"23\";}'),
(38, 10, '_img_product', 'field_5f78393f2eab9'),
(39, 10, 'price_product', '2000000'),
(40, 10, '_price_product', 'field_5f7839662eaba'),
(41, 2, '_wp_trash_meta_status', 'publish'),
(42, 2, '_wp_trash_meta_time', '1601715416'),
(43, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(44, 3, '_wp_trash_meta_status', 'draft'),
(45, 3, '_wp_trash_meta_time', '1601715419'),
(46, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(47, 28, '_edit_lock', '1601720000:1'),
(48, 28, '_edit_last', '1'),
(49, 18, '_wp_trash_meta_status', 'publish'),
(50, 18, '_wp_trash_meta_time', '1601715474'),
(51, 18, '_wp_desired_post_slug', 'group_5f7828a883ba2'),
(52, 28, '_wp_trash_meta_status', 'publish'),
(53, 28, '_wp_trash_meta_time', '1601719797'),
(54, 28, '_wp_desired_post_slug', 'trang-chu'),
(56, 33, '_edit_lock', '1602494606:1'),
(57, 33, '_wp_page_template', 'template/homepage.php'),
(58, 35, '_edit_last', '1'),
(59, 35, '_edit_lock', '1602492091:1'),
(60, 39, '_wp_attached_file', '2020/10/logo-NHA.png'),
(61, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:782;s:6:\"height\";i:339;s:4:\"file\";s:20:\"2020/10/logo-NHA.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"logo-NHA-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-NHA-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"logo-NHA-600x260.png\";s:5:\"width\";i:600;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-NHA-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-NHA-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-NHA-768x333.png\";s:5:\"width\";i:768;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 41, '_edit_last', '1'),
(63, 41, '_edit_lock', '1602494440:1'),
(64, 44, '_wp_attached_file', '2020/10/5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1.jpg'),
(65, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1168;s:6:\"height\";i:480;s:4:\"file\";s:64:\"2020/10/5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-600x247.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:65:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-1024x421.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:421;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1-768x316.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 48, '_wp_attached_file', '2020/10/ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1.jpg'),
(67, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:407;s:4:\"file\";s:64:\"2020/10/ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-600x238.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 33, '_edit_last', '1'),
(69, 33, 'banner_home_0_sub_banner', '44'),
(70, 33, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(71, 33, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(72, 33, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(73, 33, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(74, 33, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(75, 33, 'banner_home_1_sub_banner', '48'),
(76, 33, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(77, 33, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(78, 33, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(79, 33, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(80, 33, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(81, 33, 'banner_home', '2'),
(82, 33, '_banner_home', 'field_5f7c1292c7649'),
(83, 49, 'banner_home_0_sub_banner', '44'),
(84, 49, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(85, 49, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(86, 49, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(87, 49, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(88, 49, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(89, 49, 'banner_home_1_sub_banner', '48'),
(90, 49, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(91, 49, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(92, 49, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(93, 49, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(94, 49, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(95, 49, 'banner_home', '2'),
(96, 49, '_banner_home', 'field_5f7c1292c7649'),
(97, 10, '_wp_trash_meta_status', 'publish'),
(98, 10, '_wp_trash_meta_time', '1602039454'),
(99, 10, '_wp_desired_post_slug', 'my-pham-han-quoc'),
(100, 50, '_edit_lock', '1602039336:1'),
(101, 51, '_edit_lock', '1602039525:1'),
(102, 52, '_edit_lock', '1602039939:1'),
(103, 53, '_wp_attached_file', '2020/10/unnamed.jpg'),
(104, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:402;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2020/10/unnamed.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"unnamed-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-236x300.jpg\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"unnamed-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 54, '_wp_attached_file', '2020/10/vnp_02024_may_tho.jpg'),
(106, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:756;s:4:\"file\";s:29:\"2020/10/vnp_02024_may_tho.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnp_02024_may_tho-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnp_02024_may_tho-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnp_02024_may_tho-222x300.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnp_02024_may_tho-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnp_02024_may_tho-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnp_02024_may_tho-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 6, '_edit_last', '1'),
(108, 6, 'img_product', 'a:2:{i:0;s:2:\"53\";i:1;s:2:\"54\";}'),
(109, 6, '_img_product', 'field_5f78393f2eab9'),
(110, 6, 'price_product', '300000'),
(111, 6, '_price_product', 'field_5f7839662eaba'),
(112, 55, '_edit_last', '1'),
(113, 55, '_edit_lock', '1602060159:1'),
(114, 56, '_wp_attached_file', '2020/10/may-than-nhan-tao-7.jpg'),
(115, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2020/10/may-than-nhan-tao-7.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"may-than-nhan-tao-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"may-than-nhan-tao-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"may-than-nhan-tao-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"may-than-nhan-tao-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 57, '_wp_attached_file', '2020/10/unnamed-1.jpg'),
(117, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:384;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2020/10/unnamed-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"unnamed-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"unnamed-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"unnamed-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"unnamed-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"unnamed-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"unnamed-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 55, 'img_product', 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}'),
(119, 55, '_img_product', 'field_5f78393f2eab9'),
(120, 55, 'price_product', '4000000'),
(121, 55, '_price_product', 'field_5f7839662eaba'),
(122, 58, '_edit_last', '1'),
(123, 58, '_edit_lock', '1602226090:1'),
(124, 58, 'img_product', 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}'),
(125, 58, '_img_product', 'field_5f78393f2eab9'),
(126, 58, 'price_product', '100000'),
(127, 58, '_price_product', 'field_5f7839662eaba'),
(128, 59, '_edit_last', '1'),
(129, 59, '_edit_lock', '1602060143:1'),
(130, 59, 'img_product', 'a:2:{i:0;s:2:\"54\";i:1;s:2:\"53\";}'),
(131, 59, '_img_product', 'field_5f78393f2eab9'),
(132, 59, 'price_product', '300000'),
(133, 59, '_price_product', 'field_5f7839662eaba'),
(134, 59, 'product_img', 'a:2:{i:0;s:2:\"57\";i:1;s:2:\"56\";}'),
(135, 59, '_product_img', 'field_5f7d7dd27257f'),
(136, 59, 'product_price', '200000'),
(137, 59, '_product_price', 'field_5f7d7fd2ae82e'),
(138, 55, 'product_img', 'a:2:{i:0;s:2:\"54\";i:1;s:2:\"53\";}'),
(139, 55, '_product_img', 'field_5f7d7dd27257f'),
(140, 55, 'product_price', '3000000'),
(141, 55, '_product_price', 'field_5f7d7fd2ae82e'),
(142, 58, 'product_img', 'a:2:{i:0;s:2:\"53\";i:1;s:2:\"48\";}'),
(143, 58, '_product_img', 'field_5f7d7dd27257f'),
(144, 58, 'product_price', '4000000'),
(145, 58, '_product_price', 'field_5f7d7fd2ae82e'),
(146, 6, 'product_img', 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"54\";}'),
(147, 6, '_product_img', 'field_5f7d7dd27257f'),
(148, 6, 'product_price', '3000000'),
(149, 6, '_product_price', 'field_5f7d7fd2ae82e'),
(150, 62, '_wp_attached_file', 'woocommerce-placeholder.png'),
(151, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 68, '_edit_last', '1'),
(153, 68, '_wp_page_template', 'default'),
(154, 68, '_edit_lock', '1602213777:1'),
(155, 68, '_wp_trash_meta_status', 'publish'),
(156, 68, '_wp_trash_meta_time', '1602213925'),
(157, 68, '_wp_desired_post_slug', 'trang-chu'),
(161, 71, '_edit_last', '1'),
(162, 71, '_edit_lock', '1602224561:1'),
(163, 71, '_thumbnail_id', '56'),
(164, 71, '_regular_price', '20000000'),
(165, 71, '_sale_price', '17000000'),
(166, 71, 'total_sales', '0'),
(167, 71, '_tax_status', 'taxable'),
(168, 71, '_tax_class', ''),
(169, 71, '_manage_stock', 'no'),
(170, 71, '_backorders', 'no'),
(171, 71, '_sold_individually', 'no'),
(172, 71, '_virtual', 'no'),
(173, 71, '_downloadable', 'no'),
(174, 71, '_download_limit', '-1'),
(175, 71, '_download_expiry', '-1'),
(176, 71, '_stock', NULL),
(177, 71, '_stock_status', 'instock'),
(178, 71, '_wc_average_rating', '0'),
(179, 71, '_wc_review_count', '0'),
(180, 71, '_product_version', '4.5.2'),
(181, 71, '_price', '17000000'),
(182, 71, '_product_image_gallery', '57,56,54'),
(183, 72, '_edit_last', '1'),
(184, 72, '_edit_lock', '1602225218:1'),
(185, 72, '_regular_price', '30000000'),
(186, 72, '_sale_price', '27777888'),
(187, 72, 'total_sales', '0'),
(188, 72, '_tax_status', 'taxable'),
(189, 72, '_tax_class', ''),
(190, 72, '_manage_stock', 'no'),
(191, 72, '_backorders', 'no'),
(192, 72, '_sold_individually', 'no'),
(193, 72, '_virtual', 'no'),
(194, 72, '_downloadable', 'no'),
(195, 72, '_download_limit', '-1'),
(196, 72, '_download_expiry', '-1'),
(197, 72, '_stock', NULL),
(198, 72, '_stock_status', 'instock'),
(199, 72, '_wc_average_rating', '0'),
(200, 72, '_wc_review_count', '0'),
(201, 72, '_product_version', '4.5.2'),
(202, 72, '_price', '27777888'),
(203, 72, 'product_img', 'a:2:{i:0;s:2:\"54\";i:1;s:2:\"53\";}'),
(204, 72, '_product_img', 'field_5f7d7dd27257f'),
(205, 72, 'product_price', ''),
(206, 72, '_product_price', 'field_5f7d7fd2ae82e'),
(207, 73, '_edit_last', '1'),
(208, 73, '_edit_lock', '1602233541:1'),
(209, 73, '_regular_price', '20000000'),
(210, 73, '_sale_price', '17000000'),
(211, 73, 'total_sales', '0'),
(212, 73, '_tax_status', 'taxable'),
(213, 73, '_tax_class', ''),
(214, 73, '_manage_stock', 'no'),
(215, 73, '_backorders', 'no'),
(216, 73, '_sold_individually', 'no'),
(217, 73, '_virtual', 'no'),
(218, 73, '_downloadable', 'no'),
(219, 73, '_download_limit', '-1'),
(220, 73, '_download_expiry', '-1'),
(221, 73, '_stock', NULL),
(222, 73, '_stock_status', 'instock'),
(223, 73, '_wc_average_rating', '0'),
(224, 73, '_wc_review_count', '0'),
(225, 73, '_product_version', '4.5.2'),
(226, 73, '_price', '17000000'),
(227, 73, 'product_img', 'a:2:{i:0;s:2:\"57\";i:1;s:2:\"25\";}'),
(228, 73, '_product_img', 'field_5f7d7dd27257f'),
(229, 73, 'product_price', ''),
(230, 73, '_product_price', 'field_5f7d7fd2ae82e'),
(232, 75, '_edit_lock', '1602228931:1'),
(233, 75, '_wp_trash_meta_status', 'publish'),
(234, 75, '_wp_trash_meta_time', '1602228946'),
(235, 73, '_thumbnail_id', '54'),
(236, 73, '_product_image_gallery', '54,53,48,44,56,57'),
(237, 84, '_wp_attached_file', '2020/10/bg-items.jpg'),
(238, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:246;s:4:\"file\";s:20:\"2020/10/bg-items.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-items-300x37.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bg-items-1024x126.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-items-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg-items-768x94.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"bg-items-1536x189.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"bg-items-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"bg-items-600x74.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-items-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"bg-items-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"bg-items-600x74.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-items-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 1, '_wp_trash_meta_status', 'publish'),
(240, 1, '_wp_trash_meta_time', '1602492422'),
(241, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(242, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(243, 8, '_wp_trash_meta_status', 'draft'),
(244, 8, '_wp_trash_meta_time', '1602492425'),
(245, 8, '_wp_desired_post_slug', ''),
(246, 90, '_edit_last', '1'),
(247, 90, '_thumbnail_id', '44'),
(250, 90, '_edit_lock', '1602492913:1'),
(251, 92, '_edit_last', '1'),
(252, 92, '_thumbnail_id', '48'),
(255, 92, '_edit_lock', '1602492956:1'),
(256, 33, 'dich_vu', ''),
(257, 33, '_dich_vu', 'field_5f840b4291c98'),
(258, 33, 'banner_service', '84'),
(259, 33, '_banner_service', 'field_5f840cc22e88e'),
(260, 33, 'bai_viet_noi_bat_0_chọn', '92'),
(261, 33, '_bai_viet_noi_bat_0_chọn', 'field_5f8417a12f714'),
(262, 33, 'bai_viet_noi_bat_1_chọn', '90'),
(263, 33, '_bai_viet_noi_bat_1_chọn', 'field_5f8417a12f714'),
(264, 33, 'bai_viet_noi_bat', '2'),
(265, 33, '_bai_viet_noi_bat', 'field_5f84176c2f713'),
(266, 94, 'banner_home_0_sub_banner', '44'),
(267, 94, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(268, 94, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(269, 94, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(270, 94, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(271, 94, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(272, 94, 'banner_home_1_sub_banner', '48'),
(273, 94, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(274, 94, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(275, 94, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(276, 94, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(277, 94, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(278, 94, 'banner_home', '2'),
(279, 94, '_banner_home', 'field_5f7c1292c7649'),
(280, 94, 'dich_vu', ''),
(281, 94, '_dich_vu', 'field_5f840b4291c98'),
(282, 94, 'banner_service', ''),
(283, 94, '_banner_service', 'field_5f840cc22e88e'),
(284, 94, 'bai_viet_noi_bat_0_chọn', '92'),
(285, 94, '_bai_viet_noi_bat_0_chọn', 'field_5f8417a12f714'),
(286, 94, 'bai_viet_noi_bat_1_chọn', '90'),
(287, 94, '_bai_viet_noi_bat_1_chọn', 'field_5f8417a12f714'),
(288, 94, 'bai_viet_noi_bat', '2'),
(289, 94, '_bai_viet_noi_bat', 'field_5f84176c2f713'),
(290, 33, 'bai_viet_noi_bat_0_chon_bai_viet', '92'),
(291, 33, '_bai_viet_noi_bat_0_chon_bai_viet', 'field_5f8417a12f714'),
(292, 33, 'bai_viet_noi_bat_1_chon_bai_viet', '90'),
(293, 33, '_bai_viet_noi_bat_1_chon_bai_viet', 'field_5f8417a12f714'),
(294, 95, 'banner_home_0_sub_banner', '44'),
(295, 95, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(296, 95, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(297, 95, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(298, 95, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(299, 95, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(300, 95, 'banner_home_1_sub_banner', '48'),
(301, 95, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(302, 95, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(303, 95, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(304, 95, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(305, 95, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(306, 95, 'banner_home', '2'),
(307, 95, '_banner_home', 'field_5f7c1292c7649'),
(308, 95, 'dich_vu', ''),
(309, 95, '_dich_vu', 'field_5f840b4291c98'),
(310, 95, 'banner_service', ''),
(311, 95, '_banner_service', 'field_5f840cc22e88e'),
(312, 95, 'bai_viet_noi_bat_0_chọn', '92'),
(313, 95, '_bai_viet_noi_bat_0_chọn', 'field_5f8417a12f714'),
(314, 95, 'bai_viet_noi_bat_1_chọn', '90'),
(315, 95, '_bai_viet_noi_bat_1_chọn', 'field_5f8417a12f714'),
(316, 95, 'bai_viet_noi_bat', '2'),
(317, 95, '_bai_viet_noi_bat', 'field_5f84176c2f713'),
(318, 95, 'bai_viet_noi_bat_0_chon_bai_viet', '92'),
(319, 95, '_bai_viet_noi_bat_0_chon_bai_viet', 'field_5f8417a12f714'),
(320, 95, 'bai_viet_noi_bat_1_chon_bai_viet', '90'),
(321, 95, '_bai_viet_noi_bat_1_chon_bai_viet', 'field_5f8417a12f714'),
(322, 96, 'banner_home_0_sub_banner', '44'),
(323, 96, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(324, 96, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(325, 96, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(326, 96, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(327, 96, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(328, 96, 'banner_home_1_sub_banner', '48'),
(329, 96, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(330, 96, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(331, 96, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(332, 96, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(333, 96, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(334, 96, 'banner_home', '2'),
(335, 96, '_banner_home', 'field_5f7c1292c7649'),
(336, 96, 'dich_vu', ''),
(337, 96, '_dich_vu', 'field_5f840b4291c98'),
(338, 96, 'banner_service', '84'),
(339, 96, '_banner_service', 'field_5f840cc22e88e'),
(340, 96, 'bai_viet_noi_bat_0_chọn', '92'),
(341, 96, '_bai_viet_noi_bat_0_chọn', 'field_5f8417a12f714'),
(342, 96, 'bai_viet_noi_bat_1_chọn', '90'),
(343, 96, '_bai_viet_noi_bat_1_chọn', 'field_5f8417a12f714'),
(344, 96, 'bai_viet_noi_bat', '2'),
(345, 96, '_bai_viet_noi_bat', 'field_5f84176c2f713'),
(346, 96, 'bai_viet_noi_bat_0_chon_bai_viet', '92'),
(347, 96, '_bai_viet_noi_bat_0_chon_bai_viet', 'field_5f8417a12f714'),
(348, 96, 'bai_viet_noi_bat_1_chon_bai_viet', '90'),
(349, 96, '_bai_viet_noi_bat_1_chon_bai_viet', 'field_5f8417a12f714'),
(350, 33, 'noi_dung_dich_vu_0_icon_service', '<i class=\"fa fa-headphones\" aria-hidden=\"true\"></i>'),
(351, 33, '_noi_dung_dich_vu_0_icon_service', 'field_5f840b7f91c9a'),
(352, 33, 'noi_dung_dich_vu_0_title_service', 'SUPPORT 24/7'),
(353, 33, '_noi_dung_dich_vu_0_title_service', 'field_5f840b5191c99'),
(354, 33, 'noi_dung_dich_vu_0_content_service', 'Contact us 24 hours a day, 7 days a week'),
(355, 33, '_noi_dung_dich_vu_0_content_service', 'field_5f840b9391c9b'),
(356, 33, 'noi_dung_dich_vu_1_icon_service', '<i class=\"fa fa-ravelry\" aria-hidden=\"true\"></i>'),
(357, 33, '_noi_dung_dich_vu_1_icon_service', 'field_5f840b7f91c9a'),
(358, 33, 'noi_dung_dich_vu_1_title_service', '30 DAYS RETURN'),
(359, 33, '_noi_dung_dich_vu_1_title_service', 'field_5f840b5191c99'),
(360, 33, 'noi_dung_dich_vu_1_content_service', 'Simply return it within 24 days'),
(361, 33, '_noi_dung_dich_vu_1_content_service', 'field_5f840b9391c9b'),
(362, 33, 'noi_dung_dich_vu_2_icon_service', '<i class=\"fa fa-plane\" aria-hidden=\"true\"></i>'),
(363, 33, '_noi_dung_dich_vu_2_icon_service', 'field_5f840b7f91c9a'),
(364, 33, 'noi_dung_dich_vu_2_title_service', 'FREE SHIPPING'),
(365, 33, '_noi_dung_dich_vu_2_title_service', 'field_5f840b5191c99'),
(366, 33, 'noi_dung_dich_vu_2_content_service', 'Free shipping on order above $99'),
(367, 33, '_noi_dung_dich_vu_2_content_service', 'field_5f840b9391c9b'),
(368, 33, 'noi_dung_dich_vu', '3'),
(369, 33, '_noi_dung_dich_vu', 'field_5f840b4291c98'),
(370, 97, 'banner_home_0_sub_banner', '44'),
(371, 97, '_banner_home_0_sub_banner', 'field_5f7c136510633'),
(372, 97, 'banner_home_0_tieu_de', 'Thiết bị y tế'),
(373, 97, '_banner_home_0_tieu_de', 'field_5f7c138710634'),
(374, 97, 'banner_home_0_noi_dung', 'Thiết bị đạt chuẩn châu Âu'),
(375, 97, '_banner_home_0_noi_dung', 'field_5f7c139910635'),
(376, 97, 'banner_home_1_sub_banner', '48'),
(377, 97, '_banner_home_1_sub_banner', 'field_5f7c136510633'),
(378, 97, 'banner_home_1_tieu_de', 'Máy chụp cộng hưởng từ'),
(379, 97, '_banner_home_1_tieu_de', 'field_5f7c138710634'),
(380, 97, 'banner_home_1_noi_dung', 'Đạt tiêu chuẩn chất lượng châu Âu'),
(381, 97, '_banner_home_1_noi_dung', 'field_5f7c139910635'),
(382, 97, 'banner_home', '2'),
(383, 97, '_banner_home', 'field_5f7c1292c7649'),
(384, 97, 'dich_vu', ''),
(385, 97, '_dich_vu', 'field_5f840b4291c98'),
(386, 97, 'banner_service', '84'),
(387, 97, '_banner_service', 'field_5f840cc22e88e'),
(388, 97, 'bai_viet_noi_bat_0_chọn', '92'),
(389, 97, '_bai_viet_noi_bat_0_chọn', 'field_5f8417a12f714'),
(390, 97, 'bai_viet_noi_bat_1_chọn', '90'),
(391, 97, '_bai_viet_noi_bat_1_chọn', 'field_5f8417a12f714'),
(392, 97, 'bai_viet_noi_bat', '2'),
(393, 97, '_bai_viet_noi_bat', 'field_5f84176c2f713'),
(394, 97, 'bai_viet_noi_bat_0_chon_bai_viet', '92'),
(395, 97, '_bai_viet_noi_bat_0_chon_bai_viet', 'field_5f8417a12f714'),
(396, 97, 'bai_viet_noi_bat_1_chon_bai_viet', '90'),
(397, 97, '_bai_viet_noi_bat_1_chon_bai_viet', 'field_5f8417a12f714'),
(398, 97, 'noi_dung_dich_vu_0_icon_service', '<i class=\"fa fa-headphones\" aria-hidden=\"true\"></i>'),
(399, 97, '_noi_dung_dich_vu_0_icon_service', 'field_5f840b7f91c9a'),
(400, 97, 'noi_dung_dich_vu_0_title_service', 'SUPPORT 24/7'),
(401, 97, '_noi_dung_dich_vu_0_title_service', 'field_5f840b5191c99'),
(402, 97, 'noi_dung_dich_vu_0_content_service', 'Contact us 24 hours a day, 7 days a week'),
(403, 97, '_noi_dung_dich_vu_0_content_service', 'field_5f840b9391c9b'),
(404, 97, 'noi_dung_dich_vu_1_icon_service', '<i class=\"fa fa-ravelry\" aria-hidden=\"true\"></i>'),
(405, 97, '_noi_dung_dich_vu_1_icon_service', 'field_5f840b7f91c9a'),
(406, 97, 'noi_dung_dich_vu_1_title_service', '30 DAYS RETURN'),
(407, 97, '_noi_dung_dich_vu_1_title_service', 'field_5f840b5191c99'),
(408, 97, 'noi_dung_dich_vu_1_content_service', 'Simply return it within 24 days'),
(409, 97, '_noi_dung_dich_vu_1_content_service', 'field_5f840b9391c9b'),
(410, 97, 'noi_dung_dich_vu_2_icon_service', '<i class=\"fa fa-plane\" aria-hidden=\"true\"></i>'),
(411, 97, '_noi_dung_dich_vu_2_icon_service', 'field_5f840b7f91c9a'),
(412, 97, 'noi_dung_dich_vu_2_title_service', 'FREE SHIPPING'),
(413, 97, '_noi_dung_dich_vu_2_title_service', 'field_5f840b5191c99'),
(414, 97, 'noi_dung_dich_vu_2_content_service', 'Free shipping on order above $99'),
(415, 97, '_noi_dung_dich_vu_2_content_service', 'field_5f840b9391c9b'),
(416, 97, 'noi_dung_dich_vu', '3'),
(417, 97, '_noi_dung_dich_vu', 'field_5f840b4291c98');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_posts`
--

CREATE TABLE `tbyt_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_posts`
--

INSERT INTO `tbyt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-03 03:05:17', '2020-10-03 03:05:17', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2020-10-12 08:47:02', '2020-10-12 08:47:02', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-03 03:05:17', '2020-10-03 03:05:17', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/thietbiyte2/wordpress/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2020-10-03 08:56:56', '2020-10-03 08:56:56', '', 0, 'http://localhost/thietbiyte2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-03 03:05:17', '2020-10-03 03:05:17', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/thietbiyte2/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2020-10-03 08:56:59', '2020-10-03 08:56:59', '', 0, 'http://localhost/thietbiyte2/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-10-03 06:54:16', '2020-10-03 06:54:16', '', 'máy thở oxi', '', 'publish', 'closed', 'closed', '', 'may-th-oxi', '', '', '2020-10-07 08:45:33', '2020-10-07 08:45:33', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&#038;p=6', 0, 'danh-sach-san-pham', '', 0),
(8, 1, '2020-10-12 08:47:05', '2020-10-12 08:47:05', '', 'test', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2020-10-12 08:47:05', '2020-10-12 08:47:05', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=8', 0, 'post', '', 0),
(10, 1, '2020-10-03 07:25:28', '2020-10-03 07:25:28', '', 'mỹ phẩm hàn quốc', '', 'trash', 'closed', 'closed', '', 'my-pham-han-quoc__trashed', '', '', '2020-10-07 02:57:34', '2020-10-07 02:57:34', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&#038;p=10', 0, 'danh-sach-san-pham', '', 0),
(18, 1, '2020-10-03 07:31:03', '2020-10-03 07:31:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[Option] Header', 'option-header', 'trash', 'closed', 'closed', '', 'group_5f7828a883ba2__trashed', '', '', '2020-10-03 08:57:54', '2020-10-03 08:57:54', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(20, 1, '2020-10-03 08:47:51', '2020-10-03 08:47:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thông tin sản phẩm', 'thong-tin-san-pham', 'publish', 'closed', 'closed', '', 'group_5f78358fc32e6', '', '', '2020-10-09 04:15:41', '2020-10-09 04:15:41', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2020-10-03 08:47:51', '2020-10-03 08:47:51', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";i:2;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh sản phẩm', 'img_product', 'publish', 'closed', 'closed', '', 'field_5f78393f2eab9', '', '', '2020-10-07 08:38:27', '2020-10-07 08:38:27', '', 60, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=21', 0, 'acf-field', '', 0),
(22, 1, '2020-10-03 08:47:51', '2020-10-03 08:47:51', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Giá sản phẩm', 'price_product', 'publish', 'closed', 'closed', '', 'field_5f7839662eaba', '', '', '2020-10-07 08:38:27', '2020-10-07 08:38:27', '', 60, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(25, 1, '2020-10-03 08:48:54', '2020-10-03 08:48:54', '', '9152a5a99f1b6045390a', '', 'inherit', 'open', 'closed', '', '9152a5a99f1b6045390a-2', '', '', '2020-10-09 06:45:18', '2020-10-09 06:45:18', '', 10, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/9152a5a99f1b6045390a-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2020-10-03 08:56:56', '2020-10-03 08:56:56', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/thietbiyte2/wordpress/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-03 08:56:56', '2020-10-03 08:56:56', '', 2, 'http://localhost/thietbiyte2/wordpress/2020/10/03/2-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-10-03 08:56:59', '2020-10-03 08:56:59', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/thietbiyte2/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-03 08:56:59', '2020-10-03 08:56:59', '', 3, 'http://localhost/thietbiyte2/wordpress/2020/10/03/3-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-10-03 08:57:30', '2020-10-03 08:57:30', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', 'trang-chu__trashed', '', '', '2020-10-03 10:09:57', '2020-10-03 10:09:57', '', 0, 'http://localhost/thietbiyte2/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-10-03 08:57:30', '2020-10-03 08:57:30', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-10-03 08:57:30', '2020-10-03 08:57:30', '', 28, 'http://localhost/thietbiyte2/wordpress/2020/10/03/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-10-03 10:06:52', '2020-10-03 10:06:52', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2020-10-03 10:06:52', '2020-10-03 10:06:52', '', 28, 'http://localhost/thietbiyte2/wordpress/2020/10/03/28-autosave-v1/', 0, 'revision', '', 0),
(33, 1, '2020-10-05 07:25:42', '2020-10-05 07:25:42', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-10-12 09:23:26', '2020-10-12 09:23:26', '', 0, 'http://localhost/thietbiyte2/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-10-05 07:25:42', '2020-10-05 07:25:42', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-05 07:25:42', '2020-10-05 07:25:42', '', 33, 'http://localhost/thietbiyte2/wordpress/2020/10/05/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-10-05 08:23:50', '2020-10-05 08:23:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Cài đặt chung', 'cai-dat-chung', 'publish', 'closed', 'closed', '', 'group_5f7ad7a988642', '', '', '2020-10-05 08:23:50', '2020-10-05 08:23:50', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2020-10-05 08:23:50', '2020-10-05 08:23:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5f7ad7c290619', '', '', '2020-10-05 08:23:50', '2020-10-05 08:23:50', '', 35, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2020-10-05 08:23:50', '2020-10-05 08:23:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5f7ad7d79061a', '', '', '2020-10-05 08:23:50', '2020-10-05 08:23:50', '', 35, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2020-10-05 08:23:50', '2020-10-05 08:23:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5f7ad7f69061b', '', '', '2020-10-05 08:23:50', '2020-10-05 08:23:50', '', 35, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=38', 2, 'acf-field', '', 0),
(39, 1, '2020-10-05 08:28:56', '2020-10-05 08:28:56', '', 'logo NHA', '', 'inherit', 'open', 'closed', '', 'logo-nha', '', '', '2020-10-05 08:28:56', '2020-10-05 08:28:56', '', 0, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/logo-NHA.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-10-06 03:59:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-06 03:59:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field-group&p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2020-10-06 06:46:20', '2020-10-06 06:46:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"33\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Trang chủ', 'trang-chu', 'publish', 'closed', 'closed', '', 'group_5f7c125d68c2f', '', '', '2020-10-12 09:20:39', '2020-10-12 09:20:39', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-10-06 06:46:20', '2020-10-06 06:46:20', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5f7c1279c7648', '', '', '2020-10-06 06:46:20', '2020-10-06 06:46:20', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-10-06 06:46:20', '2020-10-06 06:46:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Banner_home', 'banner_home', 'publish', 'closed', 'closed', '', 'field_5f7c1292c7649', '', '', '2020-10-06 06:50:34', '2020-10-06 06:50:34', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2020-10-06 06:47:41', '2020-10-06 06:47:41', '', '5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle (1)', '', 'inherit', 'open', 'closed', '', '5fca64c3ad581f74c741b7903518070ae2c9dc63_rectangle-1', '', '', '2020-10-06 06:47:43', '2020-10-06 06:47:43', '', 33, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/5fca64c3ad581f74c741b7903518070ae2c9dc63_Rectangle-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-10-06 06:50:34', '2020-10-06 06:50:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh', 'sub_banner', 'publish', 'closed', 'closed', '', 'field_5f7c136510633', '', '', '2020-10-06 06:50:34', '2020-10-06 06:50:34', '', 43, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2020-10-06 06:50:34', '2020-10-06 06:50:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'tieu_de', 'publish', 'closed', 'closed', '', 'field_5f7c138710634', '', '', '2020-10-06 06:50:34', '2020-10-06 06:50:34', '', 43, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2020-10-06 06:50:34', '2020-10-06 06:50:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nội dung', 'noi_dung', 'publish', 'closed', 'closed', '', 'field_5f7c139910635', '', '', '2020-10-06 06:50:34', '2020-10-06 06:50:34', '', 43, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2020-10-06 06:52:45', '2020-10-06 06:52:45', '', 'ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle (1)', '', 'inherit', 'open', 'closed', '', 'ccd1fcee00c0fb2820f949391ade42f2a0da890f_rectangle-1', '', '', '2020-10-07 08:45:11', '2020-10-07 08:45:11', '', 33, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/ccd1fcee00c0fb2820f949391ade42f2a0da890f_Rectangle-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-10-06 06:53:13', '2020-10-06 06:53:13', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-06 06:53:13', '2020-10-06 06:53:13', '', 33, 'http://localhost/thietbiyte2/wordpress/2020/10/06/33-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-10-07 02:57:41', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-07 02:57:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&p=50', 0, 'danh-sach-san-pham', '', 0),
(51, 1, '2020-10-07 03:01:00', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-07 03:01:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&p=51', 0, 'danh-sach-san-pham', '', 0),
(52, 1, '2020-10-07 03:07:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-07 03:07:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&p=52', 0, 'danh-sach-san-pham', '', 0),
(53, 1, '2020-10-07 03:29:08', '2020-10-07 03:29:08', '', 'unnamed', '', 'inherit', 'open', 'closed', '', 'unnamed', '', '', '2020-10-09 06:28:11', '2020-10-09 06:28:11', '', 6, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/unnamed.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-10-07 03:29:08', '2020-10-07 03:29:08', '', 'vnp_02024_may_tho', '', 'inherit', 'open', 'closed', '', 'vnp_02024_may_tho', '', '', '2020-10-07 03:29:08', '2020-10-07 03:29:08', '', 6, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/vnp_02024_may_tho.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-10-07 03:31:04', '2020-10-07 03:31:04', '', 'Máy lọc máu', '', 'publish', 'closed', 'closed', '', 'may-loc-mau', '', '', '2020-10-07 08:45:00', '2020-10-07 08:45:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&#038;p=55', 0, 'danh-sach-san-pham', '', 0),
(56, 1, '2020-10-07 03:30:50', '2020-10-07 03:30:50', '', 'may-than-nhan-tao-7', '', 'inherit', 'open', 'closed', '', 'may-than-nhan-tao-7', '', '', '2020-10-07 08:44:40', '2020-10-07 08:44:40', '', 55, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/may-than-nhan-tao-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-10-07 03:30:50', '2020-10-07 03:30:50', '', 'unnamed (1)', '', 'inherit', 'open', 'closed', '', 'unnamed-1', '', '', '2020-10-07 03:35:25', '2020-10-07 03:35:25', '', 55, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/unnamed-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-10-07 03:35:37', '2020-10-07 03:35:37', '', 'Máy lọc máu vintech', '', 'publish', 'closed', 'closed', '', 'may-loc-mau-vintech', '', '', '2020-10-07 08:45:18', '2020-10-07 08:45:18', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&#038;p=58', 0, 'danh-sach-san-pham', '', 0),
(59, 1, '2020-10-07 03:36:04', '2020-10-07 03:36:04', '', 'Máy hô hấp vintech', '', 'publish', 'closed', 'closed', '', 'may-ho-hap-vintech', '', '', '2020-10-07 08:44:45', '2020-10-07 08:44:45', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=danh-sach-san-pham&#038;p=59', 0, 'danh-sach-san-pham', '', 0),
(60, 1, '2020-10-07 08:38:27', '2020-10-07 08:38:27', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";i:2;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh', 'product_img', 'publish', 'closed', 'closed', '', 'field_5f7d7dd27257f', '', '', '2020-10-07 08:44:23', '2020-10-07 08:44:23', '', 20, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=60', 0, 'acf-field', '', 0),
(61, 1, '2020-10-07 08:44:23', '2020-10-07 08:44:23', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Giá', 'product_price', 'publish', 'closed', 'closed', '', 'field_5f7d7fd2ae82e', '', '', '2020-10-07 08:44:23', '2020-10-07 08:44:23', '', 20, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2020-10-07 10:14:35', '2020-10-07 10:14:35', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-10-07 10:14:35', '2020-10-07 10:14:35', '', 0, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-10-07 10:15:29', '2020-10-07 10:15:29', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-10-07 10:15:29', '2020-10-07 10:15:29', '', 0, 'http://localhost/thietbiyte2/wordpress/shop', 0, 'page', '', 0),
(64, 1, '2020-10-07 10:15:29', '2020-10-07 10:15:29', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-10-07 10:15:29', '2020-10-07 10:15:29', '', 0, 'http://localhost/thietbiyte2/wordpress/cart', 0, 'page', '', 0),
(65, 1, '2020-10-07 10:15:29', '2020-10-07 10:15:29', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-10-07 10:15:29', '2020-10-07 10:15:29', '', 0, 'http://localhost/thietbiyte2/wordpress/checkout', 0, 'page', '', 0),
(66, 1, '2020-10-07 10:15:29', '2020-10-07 10:15:29', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-10-07 10:15:29', '2020-10-07 10:15:29', '', 0, 'http://localhost/thietbiyte2/wordpress/my-account', 0, 'page', '', 0),
(67, 1, '2020-10-07 10:17:07', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-07 10:17:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&p=67', 0, 'product', '', 0),
(68, 1, '2020-10-09 03:24:59', '2020-10-09 03:24:59', '', 'Trang chủ', '', 'trash', 'closed', 'closed', '', 'trang-chu__trashed', '', '', '2020-10-09 03:25:25', '2020-10-09 03:25:25', '', 33, 'http://localhost/thietbiyte2/wordpress/?page_id=68', 0, 'page', '', 0),
(69, 1, '2020-10-09 03:24:59', '2020-10-09 03:24:59', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-10-09 03:24:59', '2020-10-09 03:24:59', '', 68, 'http://localhost/thietbiyte2/wordpress/68-revision-v1', 0, 'revision', '', 0),
(70, 1, '2020-10-09 03:25:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-09 03:25:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 1, '2020-10-09 03:54:35', '2020-10-09 03:54:35', '', 'Máy thở oxy', '', 'publish', 'open', 'closed', '', 'may-tho-oxy', '', '', '2020-10-09 03:54:52', '2020-10-09 03:54:52', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2020-10-09 06:35:56', '2020-10-09 06:35:56', '', 'máy hô hấp tim', '', 'publish', 'open', 'closed', '', 'may-ho-hap-tim', '', '', '2020-10-09 09:45:40', '2020-10-09 09:45:40', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2020-10-09 06:45:28', '2020-10-09 06:45:28', 'Nội dung đang được cập nhật !', 'máy thở vingroup', 'Nội dung đang được cập nhật !', 'publish', 'open', 'closed', '', 'may-tho-vingroup', '', '', '2020-10-09 09:00:35', '2020-10-09 09:00:35', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2020-10-09 06:46:04', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-09 06:46:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&p=74', 0, 'product', '', 0),
(75, 1, '2020-10-09 07:35:45', '2020-10-09 07:35:45', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 07:34:56\"\n    },\n    \"woocommerce_category_archive_display\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 07:35:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca22d9d5-5b07-4f21-8057-2c6868c84f58', '', '', '2020-10-09 07:35:45', '2020-10-09 07:35:45', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2020-10-09 07:38:36', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-09 07:38:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?post_type=product&p=76', 0, 'product', '', 0),
(77, 1, '2020-10-12 07:41:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-12 07:41:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2020-10-12 07:54:56', '2020-10-12 07:54:56', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Nội dung dịch vụ', 'noi_dung_dich_vu', 'publish', 'closed', 'closed', '', 'field_5f840b4291c98', '', '', '2020-10-12 09:20:39', '2020-10-12 09:20:39', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=78', 3, 'acf-field', '', 0),
(79, 1, '2020-10-12 07:54:56', '2020-10-12 07:54:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon', 'icon_service', 'publish', 'closed', 'closed', '', 'field_5f840b7f91c9a', '', '', '2020-10-12 07:54:56', '2020-10-12 07:54:56', '', 78, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2020-10-12 07:54:56', '2020-10-12 07:54:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_service', 'publish', 'closed', 'closed', '', 'field_5f840b5191c99', '', '', '2020-10-12 07:54:56', '2020-10-12 07:54:56', '', 78, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=80', 1, 'acf-field', '', 0),
(81, 1, '2020-10-12 07:54:56', '2020-10-12 07:54:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nội dung', 'content_service', 'publish', 'closed', 'closed', '', 'field_5f840b9391c9b', '', '', '2020-10-12 07:54:56', '2020-10-12 07:54:56', '', 78, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=81', 2, 'acf-field', '', 0),
(82, 1, '2020-10-12 07:57:38', '2020-10-12 07:57:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Dịch vụ', 'dịch_vụ', 'publish', 'closed', 'closed', '', 'field_5f840c65e74a6', '', '', '2020-10-12 07:59:32', '2020-10-12 07:59:32', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=82', 2, 'acf-field', '', 0),
(83, 1, '2020-10-12 07:59:32', '2020-10-12 07:59:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner', 'banner_service', 'publish', 'closed', 'closed', '', 'field_5f840cc22e88e', '', '', '2020-10-12 07:59:32', '2020-10-12 07:59:32', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=83', 4, 'acf-field', '', 0),
(84, 1, '2020-10-12 08:25:01', '2020-10-12 08:25:01', '', 'bg-items', '', 'inherit', 'open', 'closed', '', 'bg-items', '', '', '2020-10-12 08:25:01', '2020-10-12 08:25:01', '', 33, 'http://localhost/thietbiyte2/wordpress/wp-content/uploads/2020/10/bg-items.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-10-12 08:46:06', '2020-10-12 08:46:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Bài viết nổi bật', 'bai_viết_nổi_bật', 'publish', 'closed', 'closed', '', 'field_5f84175c2f712', '', '', '2020-10-12 08:46:06', '2020-10-12 08:46:06', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=85', 5, 'acf-field', '', 0),
(86, 1, '2020-10-12 08:46:06', '2020-10-12 08:46:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:2;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn bài viết', 'bai_viet_noi_bat', 'publish', 'closed', 'closed', '', 'field_5f84176c2f713', '', '', '2020-10-12 08:46:06', '2020-10-12 08:46:06', '', 41, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&p=86', 6, 'acf-field', '', 0),
(87, 1, '2020-10-12 08:46:06', '2020-10-12 08:46:06', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Chọn', 'chon_bai_viet', 'publish', 'closed', 'closed', '', 'field_5f8417a12f714', '', '', '2020-10-12 09:04:37', '2020-10-12 09:04:37', '', 86, 'http://localhost/thietbiyte2/wordpress/?post_type=acf-field&#038;p=87', 0, 'acf-field', '', 0),
(88, 1, '2020-10-12 08:47:02', '2020-10-12 08:47:02', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-10-12 08:47:02', '2020-10-12 08:47:02', '', 1, 'http://localhost/thietbiyte2/wordpress/1-revision-v1', 0, 'revision', '', 0),
(89, 1, '2020-10-12 08:47:05', '2020-10-12 08:47:05', '', 'test', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-12 08:47:05', '2020-10-12 08:47:05', '', 8, 'http://localhost/thietbiyte2/wordpress/8-revision-v1', 0, 'revision', '', 0);
INSERT INTO `tbyt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2020-10-12 08:57:02', '2020-10-12 08:57:02', '<em><strong><a href=\"https://trangthietbiytehcm.com/thiet-bi-y-te/bo-do-phau-thuat-quan-ao-vai-dep-hap-duoc/\">Bộ đồ phẩu thuật vải</a></strong> (tiếng anh gọi là scrubs) cũng từng có màu trắng trước thế kỉ 20 (tượng trưng cho sự sạch sẽ và dễ phát hiện vết bẩn, vốn dĩ là vật di truyền vi khuẩn, xem thêm thông tin về <strong><a href=\"https://trangthietbiytehcm.com/ao-blouse-bac-si-y-ta-phan-loai-cach-may-va-chon-mua-chuan-nhu-tai-benh-vien/\">màu trắng áo blouse</a></strong> để biết thêm chi tiết)</em>.\r\n<h2>Quần áo phẩu thuật sao lại có màu xanh lá hoặc xanh dương?</h2>\r\nHình ảnh thực tế bộ đồ phẩu thuật ở Việt Nam và bộ đồ scrubs ở phương tây\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-9924\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/08/b%E1%BB%99-%C4%91%E1%BB%93-ph%E1%BA%A9u-thu%E1%BA%ADt-v%C3%A0-%C3%A1o-scrubs-1024x1024.png\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-1024x1024.png 1024w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-300x300.png 300w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-150x150.png 150w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-768x768.png 768w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-510x510.png 510w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-100x100.png 100w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs.png 1080w\" alt=\"bộ đồ phẩu thuật và áo scrubs\" /><figcaption>bộ đồ phẩu thuật và áo scrubs</figcaption></figure>\r\nTuy nhiên, vào đầu thế kỷ 20, một bác sĩ có ảnh hưởng đã chuyển sang màu xanh lá cây vì ông nghĩ rằng nó sẽ dễ dàng hơn đối với mắt của bác sĩ phẫu thuật, theo một bài báo trên tạp chí <em>Y tá phẫu thuật ngày nay</em> (Today’s surgical nurse) số ra năm 1998. Mặc dù khó có thể xác nhận liệu bộ đồ phẩu thuật màu xanh lá cây (hay màu xanh cổ vịt) có trở nên phổ biến hay không vì lý do này. Nhưng rõ ràng, về khoa học màu sắc, màu xanh lá cây đối lập với màu đỏ trên bánh xe màu nên bác sĩ sẽ nhìn rõ hơn giữa màu đỏ (màu của máu) và màu xanh (màu của trang phục của mình) tốt hơn so với áo màu trắng.\r\n\r\nMàu xanh lá cây có thể giúp các bác sĩ nhìn rõ hơn vì hai lý do.\r\n<ul>\r\n 	<li>Thứ nhất, nhìn vào màu xanh lam hoặc xanh lá cây có thể làm mới tầm nhìn của bác sĩ về màu đỏ lưu ảnh trong mắt khi phẩu thuật (quan sát máu liên tục). Theo John Werner, nhà tâm lý học nghiên cứu thị lực tại Đại học California, “thỉnh thoảng nhìn vào thứ gì đó có màu xanh lục có thể khiến mắt ai đó nhạy cảm hơn với các biến thể của màu đỏ”. Do đó, khi mặc áo phẩu thuật màu xanh, mắt của bac sĩ sẽ quan sát khi phẩu thuật tốt hơn so với màu trắng.</li>\r\n 	<li>Thứ hai, khi tập trung quá lâu vào màu đỏ của máu và nội tạng khi mổ, mắt bác sĩ phẩu thuật sẽ dễ bị ảo giác màu xanh lá cây khi nhìn vào các vật dụng màu trắng. Tức ảo ảnh màu xanh lục về phần bên trong màu đỏ của bệnh nhân có thể xuất hiện trên nền trắng. Không tin bạn thử nhìn 1-2h liên tục vô màu đỏ, xong đánh mắt sang màu trắng của áo sơ mi bạn sẽ hiểu điều tôi đang diễn tả. Điều này tương tự như những điểm nổi mà chúng ta nhìn thấy sau đèn flash của máy ảnh.</li>\r\n</ul>\r\n<blockquote class=\"wp-block-quote\"><em>Nếu một bác sĩ nhìn vào các vết bẩn màu xanh lá cây hoặc xanh lam thay vì màu trắng, những hiệu ứng ảo ảnh trên sẽ hòa nhập ngay và không trở thành sự phân tâm</em>…\r\n\r\n<cite><em>theo Paola Bressan, người nghiên cứu về ảo giác thị giác tại Đại học Padova ở Ý.</em></cite></blockquote>\r\nVì vậy, mặc dù những ngày này các bác sĩ chạy trên đường với một loạt các loại áo phẩu thuật có hoa văn và màu sắc, màu xanh lá cây có thể là lựa chọn tốt nhất của bác sĩ.\r\n\r\n<strong><a href=\"https://trangthietbiytehcm.com/thiet-bi-y-te/ao-phau-thuat-bao-thach/\">Áo phẩu thuật màu xanh dương bằng vải không dệt</a></strong> và áo phẩu thuật vải màu xanh lá (xanh cổ vịt) vẫn là các đồng phục phổ biến tại Việt Nam.', 'Tại sao các bác sĩ lại mặc đồ phẩu thuật màu xanh lá cây hoặc xanh da trời?', '', 'publish', 'open', 'open', '', 'tai-sao-cac-bac-si-lai-mac-do-phau-thuat-mau-xanh-la-cay-hoac-xanh-da-troi', '', '', '2020-10-12 08:57:02', '2020-10-12 08:57:02', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=90', 0, 'post', '', 0),
(91, 1, '2020-10-12 08:57:02', '2020-10-12 08:57:02', '<em><strong><a href=\"https://trangthietbiytehcm.com/thiet-bi-y-te/bo-do-phau-thuat-quan-ao-vai-dep-hap-duoc/\">Bộ đồ phẩu thuật vải</a></strong> (tiếng anh gọi là scrubs) cũng từng có màu trắng trước thế kỉ 20 (tượng trưng cho sự sạch sẽ và dễ phát hiện vết bẩn, vốn dĩ là vật di truyền vi khuẩn, xem thêm thông tin về <strong><a href=\"https://trangthietbiytehcm.com/ao-blouse-bac-si-y-ta-phan-loai-cach-may-va-chon-mua-chuan-nhu-tai-benh-vien/\">màu trắng áo blouse</a></strong> để biết thêm chi tiết)</em>.\r\n<h2>Quần áo phẩu thuật sao lại có màu xanh lá hoặc xanh dương?</h2>\r\nHình ảnh thực tế bộ đồ phẩu thuật ở Việt Nam và bộ đồ scrubs ở phương tây\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-9924\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/08/b%E1%BB%99-%C4%91%E1%BB%93-ph%E1%BA%A9u-thu%E1%BA%ADt-v%C3%A0-%C3%A1o-scrubs-1024x1024.png\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-1024x1024.png 1024w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-300x300.png 300w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-150x150.png 150w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-768x768.png 768w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-510x510.png 510w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs-100x100.png 100w, https://trangthietbiytehcm.com/wp-content/uploads/2020/08/bộ-đồ-phẩu-thuật-và-áo-scrubs.png 1080w\" alt=\"bộ đồ phẩu thuật và áo scrubs\" /><figcaption>bộ đồ phẩu thuật và áo scrubs</figcaption></figure>\r\nTuy nhiên, vào đầu thế kỷ 20, một bác sĩ có ảnh hưởng đã chuyển sang màu xanh lá cây vì ông nghĩ rằng nó sẽ dễ dàng hơn đối với mắt của bác sĩ phẫu thuật, theo một bài báo trên tạp chí <em>Y tá phẫu thuật ngày nay</em> (Today’s surgical nurse) số ra năm 1998. Mặc dù khó có thể xác nhận liệu bộ đồ phẩu thuật màu xanh lá cây (hay màu xanh cổ vịt) có trở nên phổ biến hay không vì lý do này. Nhưng rõ ràng, về khoa học màu sắc, màu xanh lá cây đối lập với màu đỏ trên bánh xe màu nên bác sĩ sẽ nhìn rõ hơn giữa màu đỏ (màu của máu) và màu xanh (màu của trang phục của mình) tốt hơn so với áo màu trắng.\r\n\r\nMàu xanh lá cây có thể giúp các bác sĩ nhìn rõ hơn vì hai lý do.\r\n<ul>\r\n 	<li>Thứ nhất, nhìn vào màu xanh lam hoặc xanh lá cây có thể làm mới tầm nhìn của bác sĩ về màu đỏ lưu ảnh trong mắt khi phẩu thuật (quan sát máu liên tục). Theo John Werner, nhà tâm lý học nghiên cứu thị lực tại Đại học California, “thỉnh thoảng nhìn vào thứ gì đó có màu xanh lục có thể khiến mắt ai đó nhạy cảm hơn với các biến thể của màu đỏ”. Do đó, khi mặc áo phẩu thuật màu xanh, mắt của bac sĩ sẽ quan sát khi phẩu thuật tốt hơn so với màu trắng.</li>\r\n 	<li>Thứ hai, khi tập trung quá lâu vào màu đỏ của máu và nội tạng khi mổ, mắt bác sĩ phẩu thuật sẽ dễ bị ảo giác màu xanh lá cây khi nhìn vào các vật dụng màu trắng. Tức ảo ảnh màu xanh lục về phần bên trong màu đỏ của bệnh nhân có thể xuất hiện trên nền trắng. Không tin bạn thử nhìn 1-2h liên tục vô màu đỏ, xong đánh mắt sang màu trắng của áo sơ mi bạn sẽ hiểu điều tôi đang diễn tả. Điều này tương tự như những điểm nổi mà chúng ta nhìn thấy sau đèn flash của máy ảnh.</li>\r\n</ul>\r\n<blockquote class=\"wp-block-quote\"><em>Nếu một bác sĩ nhìn vào các vết bẩn màu xanh lá cây hoặc xanh lam thay vì màu trắng, những hiệu ứng ảo ảnh trên sẽ hòa nhập ngay và không trở thành sự phân tâm</em>…\r\n\r\n<cite><em>theo Paola Bressan, người nghiên cứu về ảo giác thị giác tại Đại học Padova ở Ý.</em></cite></blockquote>\r\nVì vậy, mặc dù những ngày này các bác sĩ chạy trên đường với một loạt các loại áo phẩu thuật có hoa văn và màu sắc, màu xanh lá cây có thể là lựa chọn tốt nhất của bác sĩ.\r\n\r\n<strong><a href=\"https://trangthietbiytehcm.com/thiet-bi-y-te/ao-phau-thuat-bao-thach/\">Áo phẩu thuật màu xanh dương bằng vải không dệt</a></strong> và áo phẩu thuật vải màu xanh lá (xanh cổ vịt) vẫn là các đồng phục phổ biến tại Việt Nam.', 'Tại sao các bác sĩ lại mặc đồ phẩu thuật màu xanh lá cây hoặc xanh da trời?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-10-12 08:57:02', '2020-10-12 08:57:02', '', 90, 'http://localhost/thietbiyte2/wordpress/90-revision-v1', 0, 'revision', '', 0),
(92, 1, '2020-10-12 08:58:14', '2020-10-12 08:58:14', '<em><strong>Máy đo huyết áp</strong> là thiết bị gia đình cần có trong tủ thuốc để theo dõi tình hình sức khỏe huyết áp của các thành viên. Có 2 loại máy: máy đo huyết áp cơ và máy đo huyết áp điện tử, vậy nên chọn mua loại nào? Sẽ giải đáp trong bài viết này.</em>\r\n<h2>Các loại máy đo huyết áp tại nhà</h2>\r\nHầu hết các hiệu thuốc, cửa hàng cung cấp y tế và một số trang web bán máy đo huyết áp tại nhà. Máy đo huyết áp tại nhà gồm 2 loại chính: <strong>máy đo huyết áp cơ</strong> và <strong>máy đo huyết áp điện tử.</strong>\r\n<div class=\"wc-block-grid wp-block-handpicked-products wc-block-handpicked-products has-2-columns\">\r\n<ul class=\"wc-block-grid__products\">\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-omron-8712_4-247x296.jpg\" alt=\"may do huyet ap omron\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp Omron 8712</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">720,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-microlife-bp-3nz1-1p_4-247x296.jpg\" alt=\"may do huyet ap microlife bp nz p\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp Microlife BP 3NZ1-1P</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">680,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-bap-tay-microlife-bp-a6-basic_4-247x296.jpg\" alt=\"may do huyet ap bap tay microlife bp a basic\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp bắp tay Microlife BP A6 Basic</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">1,600,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-dien-tu-omron-hem-7121_5-247x296.jpg\" alt=\"may do huyet ap dien tu omron hem\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp điện tử Omron HEM-7121</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">880,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-dien-tu-omron-hem-7130_7-247x296.jpg\" alt=\"may do huyet ap dien tu omron hem\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">MÁY ĐO HUYẾT ÁP ĐIỆN TỬ OMRON HEM – 7130</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">1,200,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-co-yamasu-nhat_7-247x296.jpg\" alt=\"may do huyet ap co yamasu nhat\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp cơ Yamasu Nhật</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">500,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/ong-nghe-may-do-huyet-ap-yamasu_4-247x296.jpg\" alt=\"ong nghe may do huyet ap yamasu\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Ống nghe Máy đo huyết áp Yamasu</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">140,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n</ul>\r\n</div>\r\nMáy đo huyết áp thường có các phần cơ bản giống nhau:\r\n<ul>\r\n 	<li><strong>Vòng bít bơm hơi. </strong>Lớp bên trong của vòng bít lấp đầy không khí và siết chặt cánh tay của bạn. Lớp ngoài của vòng bít có dây buộc để giữ vòng bít tại chỗ. Nhịp tim và lưu lượng máu được tự động tính toán bằng cách đo những thay đổi trong chuyển động của động mạch của bạn khi máu chảy qua trong khi vòng bít xì hơi.</li>\r\n 	<li><strong>Đồng hồ đo huyết áp</strong>: chúng ta thường ghi nhận số liệu huyết áp của nhiều lần đo, sau đó lấy chỉ số trung bình.</li>\r\n</ul>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-8410\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co.jpg\" sizes=\"(max-width: 377px) 100vw, 377px\" srcset=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co.jpg 377w, https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co-300x170.jpg 300w\" alt=\"cau tao may do huyet ap co\" /><figcaption>cau tao may do huyet ap co</figcaption></figure>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-8411\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co-2.png\" alt=\"cau tao may do huyet ap co\" /><figcaption>cau tao may do huyet ap co</figcaption></figure>\r\nMàn hình kỹ thuật số được trang bị trên cánh tay trên nói chung là chính xác nhất.', 'Máy đo huyết áp: cẩm nang mua bán sử dụng', '', 'publish', 'open', 'open', '', 'may-do-huyet-ap-cam-nang-mua-ban-su-dung', '', '', '2020-10-12 08:58:14', '2020-10-12 08:58:14', '', 0, 'http://localhost/thietbiyte2/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2020-10-12 08:58:14', '2020-10-12 08:58:14', '<em><strong>Máy đo huyết áp</strong> là thiết bị gia đình cần có trong tủ thuốc để theo dõi tình hình sức khỏe huyết áp của các thành viên. Có 2 loại máy: máy đo huyết áp cơ và máy đo huyết áp điện tử, vậy nên chọn mua loại nào? Sẽ giải đáp trong bài viết này.</em>\r\n<h2>Các loại máy đo huyết áp tại nhà</h2>\r\nHầu hết các hiệu thuốc, cửa hàng cung cấp y tế và một số trang web bán máy đo huyết áp tại nhà. Máy đo huyết áp tại nhà gồm 2 loại chính: <strong>máy đo huyết áp cơ</strong> và <strong>máy đo huyết áp điện tử.</strong>\r\n<div class=\"wc-block-grid wp-block-handpicked-products wc-block-handpicked-products has-2-columns\">\r\n<ul class=\"wc-block-grid__products\">\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-omron-8712_4-247x296.jpg\" alt=\"may do huyet ap omron\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp Omron 8712</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">720,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-microlife-bp-3nz1-1p_4-247x296.jpg\" alt=\"may do huyet ap microlife bp nz p\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp Microlife BP 3NZ1-1P</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">680,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-bap-tay-microlife-bp-a6-basic_4-247x296.jpg\" alt=\"may do huyet ap bap tay microlife bp a basic\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp bắp tay Microlife BP A6 Basic</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">1,600,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-dien-tu-omron-hem-7121_5-247x296.jpg\" alt=\"may do huyet ap dien tu omron hem\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp điện tử Omron HEM-7121</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">880,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-dien-tu-omron-hem-7130_7-247x296.jpg\" alt=\"may do huyet ap dien tu omron hem\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">MÁY ĐO HUYẾT ÁP ĐIỆN TỬ OMRON HEM – 7130</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">1,200,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/may-do-huyet-ap-co-yamasu-nhat_7-247x296.jpg\" alt=\"may do huyet ap co yamasu nhat\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Máy đo huyết áp cơ Yamasu Nhật</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">500,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n 	<li class=\"wc-block-grid__product\">\r\n<div class=\"wc-block-grid__product-image\"><img class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2019/07/ong-nghe-may-do-huyet-ap-yamasu_4-247x296.jpg\" alt=\"ong nghe may do huyet ap yamasu\" width=\"247\" height=\"296\" /></div>\r\n<div class=\"wc-block-grid__product-title\">Ống nghe Máy đo huyết áp Yamasu</div>\r\n<div class=\"wc-block-grid__product-price price\"><span class=\"woocommerce-Price-amount amount\">140,000 <span class=\"woocommerce-Price-currencySymbol\">₫</span></span></div></li>\r\n</ul>\r\n</div>\r\nMáy đo huyết áp thường có các phần cơ bản giống nhau:\r\n<ul>\r\n 	<li><strong>Vòng bít bơm hơi. </strong>Lớp bên trong của vòng bít lấp đầy không khí và siết chặt cánh tay của bạn. Lớp ngoài của vòng bít có dây buộc để giữ vòng bít tại chỗ. Nhịp tim và lưu lượng máu được tự động tính toán bằng cách đo những thay đổi trong chuyển động của động mạch của bạn khi máu chảy qua trong khi vòng bít xì hơi.</li>\r\n 	<li><strong>Đồng hồ đo huyết áp</strong>: chúng ta thường ghi nhận số liệu huyết áp của nhiều lần đo, sau đó lấy chỉ số trung bình.</li>\r\n</ul>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-8410\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co.jpg\" sizes=\"(max-width: 377px) 100vw, 377px\" srcset=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co.jpg 377w, https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co-300x170.jpg 300w\" alt=\"cau tao may do huyet ap co\" /><figcaption>cau tao may do huyet ap co</figcaption></figure>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-8411\" src=\"https://trangthietbiytehcm.com/wp-content/uploads/2020/06/cau-tao-may-do-huyet-ap-co-2.png\" alt=\"cau tao may do huyet ap co\" /><figcaption>cau tao may do huyet ap co</figcaption></figure>\r\nMàn hình kỹ thuật số được trang bị trên cánh tay trên nói chung là chính xác nhất.', 'Máy đo huyết áp: cẩm nang mua bán sử dụng', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2020-10-12 08:58:14', '2020-10-12 08:58:14', '', 92, 'http://localhost/thietbiyte2/wordpress/92-revision-v1', 0, 'revision', '', 0),
(94, 1, '2020-10-12 08:58:35', '2020-10-12 08:58:35', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-12 08:58:35', '2020-10-12 08:58:35', '', 33, 'http://localhost/thietbiyte2/wordpress/33-revision-v1', 0, 'revision', '', 0),
(95, 1, '2020-10-12 09:05:40', '2020-10-12 09:05:40', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-12 09:05:40', '2020-10-12 09:05:40', '', 33, 'http://localhost/thietbiyte2/wordpress/33-revision-v1', 0, 'revision', '', 0),
(96, 1, '2020-10-12 09:19:33', '2020-10-12 09:19:33', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-12 09:19:33', '2020-10-12 09:19:33', '', 33, 'http://localhost/thietbiyte2/wordpress/33-revision-v1', 0, 'revision', '', 0),
(97, 1, '2020-10-12 09:23:26', '2020-10-12 09:23:26', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-12 09:23:26', '2020-10-12 09:23:26', '', 33, 'http://localhost/thietbiyte2/wordpress/33-revision-v1', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_termmeta`
--

CREATE TABLE `tbyt_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_termmeta`
--

INSERT INTO `tbyt_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'product_count_product_cat', '1'),
(2, 5, 'product_count_product_cat', '1'),
(3, 4, 'product_count_product_cat', '1'),
(4, 19, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_terms`
--

CREATE TABLE `tbyt_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_terms`
--

INSERT INTO `tbyt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Thiết bị Đức', 'thiet-bi-duc', 0),
(3, 'Loại thiết bị', 'loai-thiet-bi', 0),
(4, 'thiết bị lọc máu', 'thiet-bi-loc-mau', 0),
(5, 'Thiết bị hô hấp', 'thiet-bi-ho-hap', 0),
(6, 'simple', 'simple', 0),
(7, 'grouped', 'grouped', 0),
(8, 'variable', 'variable', 0),
(9, 'external', 'external', 0),
(10, 'exclude-from-search', 'exclude-from-search', 0),
(11, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(12, 'featured', 'featured', 0),
(13, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(16, 'rated-3', 'rated-3', 0),
(17, 'rated-4', 'rated-4', 0),
(18, 'rated-5', 'rated-5', 0),
(19, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_term_relationships`
--

CREATE TABLE `tbyt_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_term_relationships`
--

INSERT INTO `tbyt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 3, 0),
(6, 5, 0),
(8, 1, 0),
(10, 3, 0),
(55, 3, 0),
(55, 4, 0),
(58, 3, 0),
(58, 4, 0),
(59, 3, 0),
(59, 5, 0),
(71, 6, 0),
(72, 6, 0),
(72, 12, 0),
(73, 3, 0),
(73, 4, 0),
(73, 5, 0),
(73, 6, 0),
(73, 12, 0),
(73, 19, 0),
(90, 1, 0),
(92, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_term_taxonomy`
--

CREATE TABLE `tbyt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_term_taxonomy`
--

INSERT INTO `tbyt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'loai-thiet-bi', '', 0, 0),
(3, 3, 'product_cat', '', 0, 1),
(4, 4, 'product_cat', '', 3, 1),
(5, 5, 'product_cat', '', 3, 1),
(6, 6, 'product_type', '', 0, 3),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 2),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_usermeta`
--

CREATE TABLE `tbyt_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_usermeta`
--

INSERT INTO `tbyt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'thietbiyte'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tbyt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tbyt_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"03d77631628901db4790aa5dec2554328081cd23c61993171342561eea11ee5f\";a:4:{s:10:\"expiration\";i:1602903923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601694323;}}'),
(17, 1, 'tbyt_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'tbyt_user-settings', 'libraryContent=browse'),
(19, 1, 'tbyt_user-settings-time', '1601708066'),
(20, 1, 'closedpostboxes_danh-sach-san-pham', 'a:0:{}'),
(21, 1, 'metaboxhidden_danh-sach-san-pham', 'a:0:{}'),
(22, 1, 'meta-box-order_danh-sach-san-pham', 'a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_5f78358fc32e6\";s:6:\"normal\";s:23:\"acf-group_5f7828a883ba2\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:23:\"acf-field-group-options\";}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:34:\"commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(29, 1, '_woocommerce_tracks_anon_id', 'woo:m+fe6udG4KSqum3YOrum9bLx'),
(30, 1, 'last_update', '1602227403'),
(31, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1602226913675'),
(32, 1, 'wc_last_active', '1602460800'),
(33, 1, '_order_count', '0'),
(34, 1, 'closedpostboxes_product', 'a:0:{}'),
(35, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(36, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_users`
--

CREATE TABLE `tbyt_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_users`
--

INSERT INTO `tbyt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thietbiyte', '$P$BG1IwwRz57x.msGx05XOm3LqndfXV5/', 'thietbiyte', 'hieu.humg.k57@gmail.com', 'http://localhost/thietbiyte2/wordpress', '2020-10-03 03:05:17', '', 0, 'thietbiyte');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_admin_notes`
--

CREATE TABLE `tbyt_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_wc_admin_notes`
--

INSERT INTO `tbyt_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-10-07 10:14:39', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-07 10:14:39', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-07 10:14:40', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-10-07 10:14:48', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-07 10:16:30', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Services', 'WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-07 10:16:30', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-07 10:16:30', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-09 10:15:03', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_admin_note_actions`
--

CREATE TABLE `tbyt_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_wc_admin_note_actions`
--

INSERT INTO `tbyt_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/thietbiyte2/wordpress/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'http://localhost/thietbiyte2/wordpress/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1, ''),
(5, 4, 'skip-profiler', 'Skip Setup', 'http://localhost/thietbiyte2/wordpress/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(6, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(7, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox', 'unactioned', 1, ''),
(8, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(9, 8, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_category_lookup`
--

CREATE TABLE `tbyt_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_wc_category_lookup`
--

INSERT INTO `tbyt_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(3, 3),
(3, 4),
(3, 5),
(4, 4),
(5, 5),
(19, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_customer_lookup`
--

CREATE TABLE `tbyt_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_download_log`
--

CREATE TABLE `tbyt_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_order_coupon_lookup`
--

CREATE TABLE `tbyt_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_order_product_lookup`
--

CREATE TABLE `tbyt_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_order_stats`
--

CREATE TABLE `tbyt_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_order_tax_lookup`
--

CREATE TABLE `tbyt_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_product_meta_lookup`
--

CREATE TABLE `tbyt_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_wc_product_meta_lookup`
--

INSERT INTO `tbyt_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(71, '', 0, 0, '17000000.0000', '17000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, '', 0, 0, '27777888.0000', '27777888.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(73, '', 0, 0, '17000000.0000', '17000000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_reserved_stock`
--

CREATE TABLE `tbyt_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_tax_rate_classes`
--

CREATE TABLE `tbyt_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_wc_tax_rate_classes`
--

INSERT INTO `tbyt_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_wc_webhooks`
--

CREATE TABLE `tbyt_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_api_keys`
--

CREATE TABLE `tbyt_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_attribute_taxonomies`
--

CREATE TABLE `tbyt_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_woocommerce_attribute_taxonomies`
--

INSERT INTO `tbyt_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'may-tho', 'Máy thở', 'select', 'menu_order', 0),
(2, 'may-loc-mau', 'Máy lọc máu', 'select', 'menu_order', 0),
(3, 'may-chay-than', 'Máy chạy thận', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `tbyt_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_log`
--

CREATE TABLE `tbyt_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_order_itemmeta`
--

CREATE TABLE `tbyt_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_order_items`
--

CREATE TABLE `tbyt_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_payment_tokenmeta`
--

CREATE TABLE `tbyt_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_payment_tokens`
--

CREATE TABLE `tbyt_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_sessions`
--

CREATE TABLE `tbyt_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbyt_woocommerce_sessions`
--

INSERT INTO `tbyt_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(5, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:737:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-09T07:10:03+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"hieu.humg.k57@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1602644451);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_shipping_zones`
--

CREATE TABLE `tbyt_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_shipping_zone_locations`
--

CREATE TABLE `tbyt_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_shipping_zone_methods`
--

CREATE TABLE `tbyt_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_tax_rates`
--

CREATE TABLE `tbyt_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbyt_woocommerce_tax_rate_locations`
--

CREATE TABLE `tbyt_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbyt_actionscheduler_actions`
--
ALTER TABLE `tbyt_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Chỉ mục cho bảng `tbyt_actionscheduler_claims`
--
ALTER TABLE `tbyt_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `tbyt_actionscheduler_groups`
--
ALTER TABLE `tbyt_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `tbyt_actionscheduler_logs`
--
ALTER TABLE `tbyt_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `tbyt_commentmeta`
--
ALTER TABLE `tbyt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbyt_comments`
--
ALTER TABLE `tbyt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `tbyt_links`
--
ALTER TABLE `tbyt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `tbyt_options`
--
ALTER TABLE `tbyt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `tbyt_postmeta`
--
ALTER TABLE `tbyt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbyt_posts`
--
ALTER TABLE `tbyt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `tbyt_termmeta`
--
ALTER TABLE `tbyt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbyt_terms`
--
ALTER TABLE `tbyt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `tbyt_term_relationships`
--
ALTER TABLE `tbyt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `tbyt_term_taxonomy`
--
ALTER TABLE `tbyt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `tbyt_usermeta`
--
ALTER TABLE `tbyt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `tbyt_users`
--
ALTER TABLE `tbyt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `tbyt_wc_admin_notes`
--
ALTER TABLE `tbyt_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `tbyt_wc_admin_note_actions`
--
ALTER TABLE `tbyt_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `tbyt_wc_category_lookup`
--
ALTER TABLE `tbyt_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Chỉ mục cho bảng `tbyt_wc_customer_lookup`
--
ALTER TABLE `tbyt_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `tbyt_wc_download_log`
--
ALTER TABLE `tbyt_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `tbyt_wc_order_coupon_lookup`
--
ALTER TABLE `tbyt_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbyt_wc_order_product_lookup`
--
ALTER TABLE `tbyt_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbyt_wc_order_stats`
--
ALTER TABLE `tbyt_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Chỉ mục cho bảng `tbyt_wc_order_tax_lookup`
--
ALTER TABLE `tbyt_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `tbyt_wc_product_meta_lookup`
--
ALTER TABLE `tbyt_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `tbyt_wc_reserved_stock`
--
ALTER TABLE `tbyt_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `tbyt_wc_tax_rate_classes`
--
ALTER TABLE `tbyt_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `tbyt_wc_webhooks`
--
ALTER TABLE `tbyt_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_api_keys`
--
ALTER TABLE `tbyt_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbyt_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `tbyt_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbyt_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_log`
--
ALTER TABLE `tbyt_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_order_itemmeta`
--
ALTER TABLE `tbyt_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `tbyt_woocommerce_order_items`
--
ALTER TABLE `tbyt_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbyt_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `tbyt_woocommerce_payment_tokens`
--
ALTER TABLE `tbyt_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_sessions`
--
ALTER TABLE `tbyt_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_shipping_zones`
--
ALTER TABLE `tbyt_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbyt_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `tbyt_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbyt_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_tax_rates`
--
ALTER TABLE `tbyt_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `tbyt_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbyt_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbyt_actionscheduler_actions`
--
ALTER TABLE `tbyt_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `tbyt_actionscheduler_claims`
--
ALTER TABLE `tbyt_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT cho bảng `tbyt_actionscheduler_groups`
--
ALTER TABLE `tbyt_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbyt_actionscheduler_logs`
--
ALTER TABLE `tbyt_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbyt_commentmeta`
--
ALTER TABLE `tbyt_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_comments`
--
ALTER TABLE `tbyt_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbyt_links`
--
ALTER TABLE `tbyt_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_options`
--
ALTER TABLE `tbyt_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1059;

--
-- AUTO_INCREMENT cho bảng `tbyt_postmeta`
--
ALTER TABLE `tbyt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT cho bảng `tbyt_posts`
--
ALTER TABLE `tbyt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `tbyt_termmeta`
--
ALTER TABLE `tbyt_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbyt_terms`
--
ALTER TABLE `tbyt_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbyt_term_taxonomy`
--
ALTER TABLE `tbyt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbyt_usermeta`
--
ALTER TABLE `tbyt_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbyt_users`
--
ALTER TABLE `tbyt_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_admin_notes`
--
ALTER TABLE `tbyt_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_admin_note_actions`
--
ALTER TABLE `tbyt_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_customer_lookup`
--
ALTER TABLE `tbyt_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_download_log`
--
ALTER TABLE `tbyt_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_tax_rate_classes`
--
ALTER TABLE `tbyt_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbyt_wc_webhooks`
--
ALTER TABLE `tbyt_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_api_keys`
--
ALTER TABLE `tbyt_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_attribute_taxonomies`
--
ALTER TABLE `tbyt_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `tbyt_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_log`
--
ALTER TABLE `tbyt_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_order_itemmeta`
--
ALTER TABLE `tbyt_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_order_items`
--
ALTER TABLE `tbyt_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_payment_tokenmeta`
--
ALTER TABLE `tbyt_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_payment_tokens`
--
ALTER TABLE `tbyt_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_sessions`
--
ALTER TABLE `tbyt_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_shipping_zones`
--
ALTER TABLE `tbyt_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_shipping_zone_locations`
--
ALTER TABLE `tbyt_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_shipping_zone_methods`
--
ALTER TABLE `tbyt_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_tax_rates`
--
ALTER TABLE `tbyt_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbyt_woocommerce_tax_rate_locations`
--
ALTER TABLE `tbyt_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbyt_wc_download_log`
--
ALTER TABLE `tbyt_wc_download_log`
  ADD CONSTRAINT `fk_tbyt_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `tbyt_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
