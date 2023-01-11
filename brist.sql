-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 11 2023 г., 12:12
-- Версия сервера: 5.6.51-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `brist`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-11-07 07:50:08', '2022-11-07 07:50:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_db7_forms`
--

DROP TABLE IF EXISTS `wp_db7_forms`;
CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://brist.loc', 'yes'),
(2, 'home', 'http://brist.loc', 'yes'),
(3, 'blogname', 'Brist', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sergii.bystranivskyi@smplfy.eu', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:40:\"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"./(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:16:\"./(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:28:\"./(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"./(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:5;s:33:\"duplicate-post/duplicate-post.php\";i:6;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:7;s:27:\"svg-support/svg-support.php\";i:8;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:9;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '/.', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'brist', 'yes'),
(41, 'stylesheet', 'brist', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}', 'no'),
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
(91, 'admin_email_lifespan', '1683359408', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:40:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:10:\"copy_posts\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:10:\"copy_posts\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:10:{i:1671189512;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671207105;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671220208;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671220227;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671263408;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671263427;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671263429;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671263486;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671522608;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667808003;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(134, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671187857;s:7:\"checked\";a:1:{s:5:\"brist\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1667807484;s:7:\"version\";s:5:\"5.6.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(157, 'cfdb7_view_install_date', '2022-11-07 7:51:24', 'yes'),
(158, 'scporder_install', '1', 'yes'),
(159, 'bodhi_svgs_plugin_version', '2.5.1', 'yes'),
(160, 'bodhi_svgs_settings', 'a:1:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";}', 'yes'),
(161, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"19.10\";}', 'yes'),
(162, 'wpseo', 'a:97:{s:8:\"tracking\";b:1;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:21:\"category_base_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"19.10\";s:16:\"previous_version\";s:4:\"19.9\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1667807486;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:16:\"http://brist.loc\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:1:\".\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1667807490;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";}', 'yes'),
(163, 'wpseo_titles', 'a:107:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(164, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(165, 'yoast_premium_as_an_addon_installer', 'completed', 'yes'),
(166, 'yoast_migrations_premium', 'a:1:{s:7:\"version\";s:4:\"18.4\";}', 'yes'),
(167, 'wpseo_premium', 'a:4:{s:34:\"prominent_words_indexing_completed\";b:0;s:8:\"workouts\";a:1:{s:11:\"cornerstone\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:29:\"should_redirect_after_install\";b:0;s:29:\"activation_redirect_timestamp\";i:1667807490;}', 'yes'),
(168, 'simple-rate-time', '1825661873', 'yes'),
(169, 'wpseo_current_version', '16', 'no'),
(170, 'wpseo_premium_version', '18.4', 'yes'),
(171, 'wpseo-premium-redirects-export-plain', 'a:2:{s:22:\"2022/11/07/hello-world\";a:2:{s:3:\"url\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;}s:11:\"sample-page\";a:2:{s:3:\"url\";s:10:\"front-page\";s:4:\"type\";i:301;}}', 'yes'),
(172, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'yes'),
(176, 'finished_updating_comment_type', '1', 'yes'),
(177, 'acf_version', '6.0.2', 'yes'),
(194, 'wpseo_tracking_last_request', '1669619456', 'yes'),
(209, 'scporder_options', 'a:3:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:4:\"tags\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'yes'),
(219, 'current_theme', 'brist', 'yes'),
(220, 'theme_mods_brist', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:6:\"social\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(221, 'theme_switched', '', 'yes'),
(231, 'wpseo_redirect', 'a:2:{s:20:\"disable_php_redirect\";s:3:\"off\";s:13:\"separate_file\";s:3:\"off\";}', 'yes'),
(236, 'site_logo', '9', 'yes'),
(308, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(321, 'options_logo_dark', '9', 'no'),
(322, '_options_logo_dark', 'field_63690a8040237', 'no'),
(323, 'options_logo_light', '90', 'no'),
(324, '_options_logo_light', 'field_63690ab240238', 'no'),
(370, 'options_email', 'info@brist.com.au', 'no'),
(371, '_options_email', 'field_6369152da71fe', 'no'),
(372, 'options_tel', '+44 (0) 203 026 6270', 'no'),
(373, '_options_tel', 'field_63691573a71ff', 'no'),
(374, 'options_location', '42 Gloucester Avenue, London Map', 'no'),
(375, '_options_location', 'field_636915aca7200', 'no'),
(382, 'options_map', 'https://bit.ly/3NMC80w', 'no'),
(383, '_options_map', 'field_636918207a060', 'no'),
(465, 'wpseo-premium-redirects-base', 'a:2:{i:0;a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:3:\"url\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}i:1;a:4:{s:6:\"origin\";s:11:\"sample-page\";s:3:\"url\";s:10:\"front-page\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}}', 'no'),
(481, 'duplicate_post_show_notice', '0', 'no'),
(482, 'duplicate_post_copytitle', '1', 'yes'),
(483, 'duplicate_post_copydate', '0', 'yes'),
(484, 'duplicate_post_copystatus', '0', 'yes'),
(485, 'duplicate_post_copyslug', '0', 'yes'),
(486, 'duplicate_post_copyexcerpt', '1', 'yes'),
(487, 'duplicate_post_copycontent', '1', 'yes'),
(488, 'duplicate_post_copythumbnail', '1', 'yes'),
(489, 'duplicate_post_copytemplate', '1', 'yes'),
(490, 'duplicate_post_copyformat', '1', 'yes'),
(491, 'duplicate_post_copyauthor', '0', 'yes'),
(492, 'duplicate_post_copypassword', '0', 'yes'),
(493, 'duplicate_post_copyattachments', '0', 'yes'),
(494, 'duplicate_post_copychildren', '0', 'yes'),
(495, 'duplicate_post_copycomments', '0', 'yes'),
(496, 'duplicate_post_copymenuorder', '1', 'yes'),
(497, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(498, 'duplicate_post_blacklist', '', 'yes'),
(499, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(500, 'duplicate_post_show_original_column', '0', 'yes'),
(501, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(502, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(503, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(504, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(505, 'duplicate_post_version', '4.5', 'yes'),
(506, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(512, 'category_children', 'a:0:{}', 'yes'),
(524, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":1}', 'yes'),
(730, 'autoptimize_version', '3.1.3', 'yes'),
(731, 'autoptimize_ccss_version', 'AO_3.1.3', 'yes'),
(733, 'autoptimize_service_availablity', 'a:2:{s:12:\"extra_imgopt\";a:3:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:28:\"https://sp-ao.shortpixel.ai/\";}s:16:\"launch-threshold\";s:4:\"4096\";}s:7:\"critcss\";a:2:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:24:\"https://criticalcss.com/\";}}}', 'yes'),
(734, 'autoptimize_imgopt_launched', 'on', 'yes'),
(741, 'autoptimize_html', 'on', 'yes'),
(742, 'autoptimize_html_keepcomments', '', 'yes'),
(743, 'autoptimize_html_minify_inline', '', 'yes'),
(744, 'autoptimize_enable_site_config', 'on', 'yes'),
(745, 'autoptimize_js', 'on', 'yes'),
(746, 'autoptimize_js_aggregate', '', 'yes'),
(747, 'autoptimize_js_defer_not_aggregate', 'on', 'yes'),
(748, 'autoptimize_js_defer_inline', 'on', 'yes'),
(749, 'autoptimize_js_exclude', '', 'yes'),
(750, 'autoptimize_js_trycatch', '', 'yes'),
(751, 'autoptimize_js_justhead', '', 'yes'),
(752, 'autoptimize_js_forcehead', '', 'yes'),
(753, 'autoptimize_js_include_inline', '', 'yes'),
(754, 'autoptimize_css', 'on', 'yes'),
(755, 'autoptimize_css_aggregate', 'on', 'yes'),
(756, 'autoptimize_css_exclude', ', admin-bar.min.css, dashicons.min.css, wp-content/cache/, wp-content/uploads/', 'yes'),
(757, 'autoptimize_css_justhead', '', 'yes'),
(758, 'autoptimize_css_datauris', '', 'yes'),
(759, 'autoptimize_css_defer', '', 'yes'),
(760, 'autoptimize_css_defer_inline', '', 'yes'),
(761, 'autoptimize_css_inline', '', 'yes'),
(762, 'autoptimize_css_include_inline', '', 'yes'),
(763, 'autoptimize_cdn_url', '', 'yes'),
(764, 'autoptimize_cache_clean', '0', 'yes'),
(765, 'autoptimize_cache_nogzip', 'on', 'yes'),
(766, 'autoptimize_optimize_logged', 'on', 'yes'),
(767, 'autoptimize_optimize_checkout', '', 'yes'),
(768, 'autoptimize_minify_excluded', 'on', 'yes'),
(769, 'autoptimize_cache_fallback', 'on', 'yes'),
(770, 'autoptimize_enable_meta_ao_settings', 'on', 'yes'),
(771, 'autoptimize_installed_before_compatibility', '', 'yes'),
(778, 'autoptimize_imgopt_settings', 'a:5:{s:31:\"autoptimize_imgopt_text_field_6\";s:0:\"\";s:33:\"autoptimize_imgopt_select_field_2\";s:1:\"2\";s:35:\"autoptimize_imgopt_checkbox_field_3\";s:1:\"1\";s:31:\"autoptimize_imgopt_text_field_5\";s:0:\"\";s:33:\"autoptimize_imgopt_number_field_7\";s:1:\"2\";}', 'yes'),
(1362, 'options_blockquote', '“A picture is worth a <br/>thousand words”', 'no'),
(1363, '_options_blockquote', 'field_636a68842b88a', 'no'),
(1364, 'options_author_name', 'Fred R. Barnard', 'no'),
(1365, '_options_author_name', 'field_636a68b52b88b', 'no'),
(1366, 'options_featured_posts', 'a:3:{i:0;s:2:\"34\";i:1;s:2:\"35\";i:2;s:2:\"36\";}', 'no'),
(1367, '_options_featured_posts', 'field_636a085322e06', 'no'),
(2208, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1671187856;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(2210, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"sergii.bystranivskyi@smplfy.eu\";s:7:\"version\";s:5:\"6.1.1\";s:9:\"timestamp\";i:1668585437;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2847, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671187857;s:8:\"response\";a:6:{s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.3.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-256X256.png?rev=2211608\";s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:32:\"w.org/plugins/better-wp-security\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"8.1.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.8.1.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/better-wp-security/assets/icon-256x256.png?rev=2698018\";s:2:\"1x\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2698018\";s:3:\"svg\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2698018\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=2698018\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.3\";s:14:\"upgrade_notice\";s:50:\"<p>Version 8.1.4 includes important bug fixes.</p>\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.2\";s:14:\"upgrade_notice\";s:177:\"<p>Updating to 2.5+ Adds new features and addresses a number of earlier issues raised. Please take a backup before updating!\n2.5.4 fixes errors in the 2.5 series of updates.</p>\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"19.11\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.11.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.8.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:31:\"custom-css-js/custom-css-js.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/custom-css-js\";s:4:\"slug\";s:13:\"custom-css-js\";s:6:\"plugin\";s:31:\"custom-css-js/custom-css-js.php\";s:11:\"new_version\";s:4:\"3.41\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/custom-css-js/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/custom-css-js.3.41.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/custom-css-js/assets/icon-128x128.png?rev=1303730\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/custom-css-js/assets/banner-1544x500.png?rev=1770945\";s:2:\"1x\";s:68:\"https://ps.w.org/custom-css-js/assets/banner-772x250.png?rev=1303730\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:13:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.2\";s:27:\"autoptimize/autoptimize.php\";s:5:\"3.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.4\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.1\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"2.8.1\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"8.1.3\";s:31:\"custom-css-js/custom-css-js.php\";s:4:\"3.41\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.5.6\";s:27:\"svg-support/svg-support.php\";s:5:\"2.5.1\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"19.10\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:4:\"18.4\";}}', 'no'),
(2905, '_transient_timeout_global_styles_brist', '1671187916', 'no'),
(2906, '_transient_global_styles_brist', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(2908, '_site_transient_yoast_translations_wordpress-seo-premium', 'a:2:{s:21:\"wordpress-seo-premium\";a:0:{}s:13:\"_last_checked\";i:1671187857;}', 'no'),
(2909, '_transient_timeout_acf_plugin_updates', '1671188157', 'no'),
(2910, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(2911, '_site_transient_timeout_theme_roots', '1671189657', 'no'),
(2912, '_site_transient_theme_roots', 'a:1:{s:5:\"brist\";s:7:\"/themes\";}', 'no'),
(2913, '_transient_timeout_autoptimize_stats', '1671191457', 'no'),
(2914, '_transient_autoptimize_stats', 'a:3:{i:0;i:418;i:1;i:23389670;i:2;i:1671187857;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@brist.loc>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@brist.loc>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'en_US'),
(14, 9, '_wp_attached_file', '2022/11/Brist-logo-black.png'),
(15, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:382;s:6:\"height\";i:168;s:4:\"file\";s:28:\"2022/11/Brist-logo-black.png\";s:8:\"filesize\";i:2785;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"Brist-logo-black-300x132.png\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4404;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Brist-logo-black-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2737;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 16, '_menu_item_type', 'custom'),
(66, 16, '_menu_item_menu_item_parent', '0'),
(67, 16, '_menu_item_object_id', '16'),
(68, 16, '_menu_item_object', 'custom'),
(69, 16, '_menu_item_target', ''),
(70, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 16, '_menu_item_xfn', ''),
(72, 16, '_menu_item_url', '#'),
(74, 17, '_menu_item_type', 'custom'),
(75, 17, '_menu_item_menu_item_parent', '0'),
(76, 17, '_menu_item_object_id', '17'),
(77, 17, '_menu_item_object', 'custom'),
(78, 17, '_menu_item_target', ''),
(79, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 17, '_menu_item_xfn', ''),
(81, 17, '_menu_item_url', '#'),
(83, 18, '_menu_item_type', 'custom'),
(84, 18, '_menu_item_menu_item_parent', '0'),
(85, 18, '_menu_item_object_id', '18'),
(86, 18, '_menu_item_object', 'custom'),
(87, 18, '_menu_item_target', ''),
(88, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 18, '_menu_item_xfn', ''),
(90, 18, '_menu_item_url', '#'),
(92, 19, '_menu_item_type', 'custom'),
(93, 19, '_menu_item_menu_item_parent', '0'),
(94, 19, '_menu_item_object_id', '19'),
(95, 19, '_menu_item_object', 'custom'),
(96, 19, '_menu_item_target', ''),
(97, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 19, '_menu_item_xfn', ''),
(99, 19, '_menu_item_url', '#'),
(101, 20, '_edit_last', '1'),
(102, 20, '_edit_lock', '1668086555:1'),
(103, 27, '_wp_attached_file', '2022/11/319_Gardner_exterior_view_01_Final-1.jpg'),
(104, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2269;s:6:\"height\";i:1359;s:4:\"file\";s:48:\"2022/11/319_Gardner_exterior_view_01_Final-1.jpg\";s:8:\"filesize\";i:413722;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"319_Gardner_exterior_view_01_Final-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14126;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"319_Gardner_exterior_view_01_Final-1-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132444;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"319_Gardner_exterior_view_01_Final-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6195;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"319_Gardner_exterior_view_01_Final-1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77307;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"319_Gardner_exterior_view_01_Final-1-1536x920.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:920;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:280926;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:50:\"319_Gardner_exterior_view_01_Final-1-2048x1227.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1227;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:469377;}s:2:\"xl\";a:5:{s:4:\"file\";s:49:\"319_Gardner_exterior_view_01_Final-1-1512x906.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:906;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:273519;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 28, '_wp_attached_file', '2022/11/Rusanivka_Viiew_09_v8-1.jpg'),
(106, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2269;s:6:\"height\";i:1359;s:4:\"file\";s:35:\"2022/11/Rusanivka_Viiew_09_v8-1.jpg\";s:8:\"filesize\";i:349100;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"Rusanivka_Viiew_09_v8-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14428;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"Rusanivka_Viiew_09_v8-1-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"Rusanivka_Viiew_09_v8-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6364;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"Rusanivka_Viiew_09_v8-1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72129;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"Rusanivka_Viiew_09_v8-1-1536x920.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:920;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:240022;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:37:\"Rusanivka_Viiew_09_v8-1-2048x1227.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1227;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:389536;}s:2:\"xl\";a:5:{s:4:\"file\";s:36:\"Rusanivka_Viiew_09_v8-1-1512x906.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:906;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:234248;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 29, '_wp_attached_file', '2022/11/unsplash_eqnfN4WX2jQ.jpg'),
(108, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2269;s:6:\"height\";i:1293;s:4:\"file\";s:32:\"2022/11/unsplash_eqnfN4WX2jQ.jpg\";s:8:\"filesize\";i:509598;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"unsplash_eqnfN4WX2jQ-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21677;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"unsplash_eqnfN4WX2jQ-1024x584.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:584;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:204620;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"unsplash_eqnfN4WX2jQ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10537;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"unsplash_eqnfN4WX2jQ-768x438.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123007;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"unsplash_eqnfN4WX2jQ-1536x875.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:875;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:401980;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-2048x1167.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1167;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:627388;}s:2:\"xl\";a:5:{s:4:\"file\";s:33:\"unsplash_eqnfN4WX2jQ-1512x862.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:862;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:389965;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 30, '_wp_attached_file', '2022/11/unsplash_eqnfN4WX2jQ-1.jpg'),
(110, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2269;s:6:\"height\";i:1359;s:4:\"file\";s:34:\"2022/11/unsplash_eqnfN4WX2jQ-1.jpg\";s:8:\"filesize\";i:299623;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16312;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-1-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130351;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7719;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-1-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81561;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-1-1536x920.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:920;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:245805;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:36:\"unsplash_eqnfN4WX2jQ-1-2048x1227.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1227;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:383806;}s:2:\"xl\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-1-1512x906.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:906;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:240067;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 31, '_wp_attached_file', '2022/11/unsplash_eqnfN4WX2jQ-2.jpg'),
(112, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2269;s:6:\"height\";i:1359;s:4:\"file\";s:34:\"2022/11/unsplash_eqnfN4WX2jQ-2.jpg\";s:8:\"filesize\";i:399863;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17915;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-2-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166293;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7742;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"unsplash_eqnfN4WX2jQ-2-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100039;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-2-1536x920.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:920;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:322807;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:36:\"unsplash_eqnfN4WX2jQ-2-2048x1227.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1227;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:506673;}s:2:\"xl\";a:5:{s:4:\"file\";s:35:\"unsplash_eqnfN4WX2jQ-2-1512x906.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:906;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:314181;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 1, '_edit_lock', '1668601989:1'),
(114, 1, '_edit_last', '1'),
(115, 1, '_thumbnail_id', '31'),
(117, 1, '_yoast_wpseo_focuskeywords', '[]'),
(118, 1, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(119, 1, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(120, 1, '_yoast_wpseo_wordproof_timestamp', ''),
(121, 1, '_wp_old_slug', 'hello-world'),
(122, 1, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(123, 1, 'inline_featured_image', '0'),
(124, 33, '_thumbnail_id', '126'),
(125, 33, '_yoast_wpseo_focuskeywords', '[]'),
(126, 33, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(127, 33, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(128, 33, '_yoast_wpseo_wordproof_timestamp', ''),
(129, 33, '_wp_old_slug', 'hello-world'),
(130, 33, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(131, 33, 'inline_featured_image', '0'),
(132, 33, '_dp_original', '1'),
(133, 34, '_thumbnail_id', '29'),
(134, 34, '_yoast_wpseo_focuskeywords', '[]'),
(135, 34, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(136, 34, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(137, 34, '_yoast_wpseo_wordproof_timestamp', ''),
(138, 34, '_wp_old_slug', 'hello-world'),
(139, 34, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(140, 34, 'inline_featured_image', '0'),
(141, 34, '_dp_original', '1'),
(142, 35, '_thumbnail_id', '28'),
(143, 35, '_yoast_wpseo_focuskeywords', '[]'),
(144, 35, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(145, 35, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(146, 35, '_yoast_wpseo_wordproof_timestamp', ''),
(147, 35, '_wp_old_slug', 'hello-world'),
(148, 35, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(149, 35, 'inline_featured_image', '0'),
(150, 35, '_dp_original', '1'),
(151, 36, '_thumbnail_id', '27'),
(152, 36, '_yoast_wpseo_focuskeywords', '[]'),
(153, 36, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(154, 36, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(155, 36, '_yoast_wpseo_wordproof_timestamp', ''),
(156, 36, '_wp_old_slug', 'hello-world'),
(157, 36, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(158, 36, 'inline_featured_image', '0'),
(159, 36, '_dp_original', '1'),
(160, 33, '_edit_lock', '1668607311:1'),
(161, 33, '_edit_last', '1'),
(163, 34, '_edit_lock', '1668601986:1'),
(164, 34, '_edit_last', '1'),
(166, 35, '_edit_lock', '1668601973:1'),
(167, 35, '_edit_last', '1'),
(169, 36, '_edit_lock', '1668601983:1'),
(170, 36, '_edit_last', '1'),
(173, 41, '_edit_last', '1'),
(174, 41, '_edit_lock', '1668086506:1'),
(210, 50, '_edit_last', '1'),
(211, 50, '_yoast_wpseo_focuskeywords', '[]'),
(212, 50, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(213, 50, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(214, 50, '_yoast_wpseo_wordproof_timestamp', ''),
(215, 50, 'inline_featured_image', '0'),
(216, 50, '_edit_lock', '1669620727:1'),
(217, 52, '_edit_last', '1'),
(218, 52, '_yoast_wpseo_focuskeywords', '[]'),
(219, 52, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(220, 52, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(221, 52, '_yoast_wpseo_wordproof_timestamp', ''),
(222, 52, 'inline_featured_image', '0'),
(223, 52, '_edit_lock', '1668001073:1'),
(224, 54, '_edit_last', '1'),
(225, 54, '_yoast_wpseo_focuskeywords', '[]'),
(226, 54, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(227, 54, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(228, 54, '_yoast_wpseo_wordproof_timestamp', ''),
(229, 54, 'inline_featured_image', '0'),
(230, 54, '_edit_lock', '1668160642:1'),
(231, 56, '_menu_item_type', 'post_type'),
(232, 56, '_menu_item_menu_item_parent', '0'),
(233, 56, '_menu_item_object_id', '54'),
(234, 56, '_menu_item_object', 'page'),
(235, 56, '_menu_item_target', ''),
(236, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 56, '_menu_item_xfn', ''),
(238, 56, '_menu_item_url', ''),
(240, 57, '_menu_item_type', 'post_type'),
(241, 57, '_menu_item_menu_item_parent', '0'),
(242, 57, '_menu_item_object_id', '52'),
(243, 57, '_menu_item_object', 'page'),
(244, 57, '_menu_item_target', ''),
(245, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 57, '_menu_item_xfn', ''),
(247, 57, '_menu_item_url', ''),
(249, 58, '_menu_item_type', 'post_type'),
(250, 58, '_menu_item_menu_item_parent', '0'),
(251, 58, '_menu_item_object_id', '50'),
(252, 58, '_menu_item_object', 'page'),
(253, 58, '_menu_item_target', ''),
(254, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(255, 58, '_menu_item_xfn', ''),
(256, 58, '_menu_item_url', ''),
(258, 59, '_thumbnail_id', '122'),
(259, 59, '_yoast_wpseo_focuskeywords', '[]'),
(260, 59, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(261, 59, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(262, 59, '_yoast_wpseo_wordproof_timestamp', ''),
(263, 59, '_wp_old_slug', 'hello-world'),
(264, 59, '_yoast_post_redirect_info', 'a:4:{s:6:\"origin\";s:22:\"2022/11/07/hello-world\";s:6:\"target\";s:35:\"2022/11/07/name-of-project-vertical\";s:4:\"type\";i:301;s:6:\"format\";s:5:\"plain\";}'),
(265, 59, 'inline_featured_image', '0'),
(266, 59, '_dp_original', '1'),
(267, 59, '_edit_lock', '1669620556:1'),
(268, 60, '_wp_attached_file', '2022/11/image-9-min-scaled.jpg'),
(269, 60, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1414;s:4:\"file\";s:30:\"2022/11/image-9-min-scaled.jpg\";s:8:\"filesize\";i:620875;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"image-9-min-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13022;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"image-9-min-1024x566.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:566;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:117824;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"image-9-min-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6130;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"image-9-min-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69543;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"image-9-min-1536x849.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:849;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:248319;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"image-9-min-2048x1132.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1132;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:418473;}s:2:\"xl\";a:5:{s:4:\"file\";s:24:\"image-9-min-1512x835.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:835;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:241409;}s:3:\"xxl\";a:5:{s:4:\"file\";s:25:\"image-9-min-2560x1414.jpg\";s:5:\"width\";i:2560;s:6:\"height\";i:1414;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:620875;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"image-9-min.jpg\";}'),
(270, 59, '_edit_last', '1'),
(283, 65, '_edit_last', '1'),
(284, 65, '_edit_lock', '1669622209:1'),
(285, 50, '_wp_page_template', 'page-services.php'),
(286, 50, 'services', '4'),
(287, 50, '_services', 'field_636b608bb9993'),
(288, 51, 'services', ''),
(289, 51, '_services', 'field_636b608bb9993'),
(290, 50, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(291, 50, 'services_0_layout', '1'),
(292, 50, '_services_0_layout', 'field_636b60f6b9996'),
(293, 50, 'services_0_title', '3D Rendering'),
(294, 50, '_services_0_title', 'field_636b60b0b9994'),
(295, 50, 'services_0_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(296, 50, '_services_0_description', 'field_636b60bfb9995'),
(297, 50, 'services_0_image_1', '60'),
(298, 50, '_services_0_image_1', 'field_636b6190b9997'),
(299, 50, 'services_0_image_2', '28'),
(300, 50, '_services_0_image_2', 'field_636b61bdb9998'),
(301, 50, 'services_1_layout', '2'),
(302, 50, '_services_1_layout', 'field_636b60f6b9996'),
(303, 50, 'services_1_title', '360 Panoramas'),
(304, 50, '_services_1_title', 'field_636b60b0b9994'),
(305, 50, 'services_1_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(306, 50, '_services_1_description', 'field_636b60bfb9995'),
(307, 50, 'services_1_image_1', '27'),
(308, 50, '_services_1_image_1', 'field_636b6190b9997'),
(309, 50, 'services_2_layout', '3'),
(310, 50, '_services_2_layout', 'field_636b60f6b9996'),
(311, 50, 'services_2_title', 'Fly-Troughts'),
(312, 50, '_services_2_title', 'field_636b60b0b9994'),
(313, 50, 'services_2_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(314, 50, '_services_2_description', 'field_636b60bfb9995'),
(315, 50, 'services_2_image_1', '29'),
(316, 50, '_services_2_image_1', 'field_636b6190b9997'),
(317, 50, 'services_2_image_2', '30'),
(318, 50, '_services_2_image_2', 'field_636b61bdb9998'),
(319, 50, 'services_3_layout', '2'),
(320, 50, '_services_3_layout', 'field_636b60f6b9996'),
(321, 50, 'services_3_title', 'VR Tours'),
(322, 50, '_services_3_title', 'field_636b60b0b9994'),
(323, 50, 'services_3_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(324, 50, '_services_3_description', 'field_636b60bfb9995'),
(325, 50, 'services_3_image_1', '28'),
(326, 50, '_services_3_image_1', 'field_636b6190b9997'),
(327, 72, 'services', '4'),
(328, 72, '_services', 'field_636b608bb9993'),
(329, 72, 'services_0_layout', '1'),
(330, 72, '_services_0_layout', 'field_636b60f6b9996'),
(331, 72, 'services_0_title', '3D Rendering'),
(332, 72, '_services_0_title', 'field_636b60b0b9994'),
(333, 72, 'services_0_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(334, 72, '_services_0_description', 'field_636b60bfb9995'),
(335, 72, 'services_0_image_1', '60'),
(336, 72, '_services_0_image_1', 'field_636b6190b9997'),
(337, 72, 'services_0_image_2', '28'),
(338, 72, '_services_0_image_2', 'field_636b61bdb9998'),
(339, 72, 'services_1_layout', '2'),
(340, 72, '_services_1_layout', 'field_636b60f6b9996'),
(341, 72, 'services_1_title', '360 Panoramas'),
(342, 72, '_services_1_title', 'field_636b60b0b9994'),
(343, 72, 'services_1_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(344, 72, '_services_1_description', 'field_636b60bfb9995'),
(345, 72, 'services_1_image_1', '27'),
(346, 72, '_services_1_image_1', 'field_636b6190b9997'),
(347, 72, 'services_2_layout', '3'),
(348, 72, '_services_2_layout', 'field_636b60f6b9996'),
(349, 72, 'services_2_title', 'Fly-Troughts'),
(350, 72, '_services_2_title', 'field_636b60b0b9994'),
(351, 72, 'services_2_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(352, 72, '_services_2_description', 'field_636b60bfb9995'),
(353, 72, 'services_2_image_1', '29'),
(354, 72, '_services_2_image_1', 'field_636b6190b9997'),
(355, 72, 'services_2_image_2', '30'),
(356, 72, '_services_2_image_2', 'field_636b61bdb9998'),
(357, 72, 'services_3_layout', '2'),
(358, 72, '_services_3_layout', 'field_636b60f6b9996'),
(359, 72, 'services_3_title', 'VR Tours'),
(360, 72, '_services_3_title', 'field_636b60b0b9994'),
(361, 72, 'services_3_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(362, 72, '_services_3_description', 'field_636b60bfb9995'),
(363, 72, 'services_3_image_1', '28'),
(364, 72, '_services_3_image_1', 'field_636b6190b9997'),
(365, 52, '_wp_page_template', 'page-meet-us.php'),
(366, 52, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(367, 73, '_edit_last', '1'),
(368, 73, '_edit_lock', '1668004437:1'),
(369, 83, '_wp_attached_file', '2022/11/Screenshot-2022-01-04-at-21.02-2.jpg'),
(370, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:722;s:6:\"height\";i:502;s:4:\"file\";s:44:\"2022/11/Screenshot-2022-01-04-at-21.02-2.jpg\";s:8:\"filesize\";i:15787;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"Screenshot-2022-01-04-at-21.02-2-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7462;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"Screenshot-2022-01-04-at-21.02-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4383;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 52, 'blockquote', 'There is always a story behind the brand. In the case of Brist – it is not an exception.'),
(372, 52, '_blockquote', 'field_636b78f7f66bb'),
(373, 52, 'description', 'Yuriy’s persistence and passion have led him to his first orders soon. He continued working as a freelancer approximately for a year until he felt the lack of growth. So, it was decided to start working as a studio member to get new experience.\r\n\r\nTo Yuriy’s mind, these two years of working in the studio have influenced him to set up his own business. Having watched the process from the inside, Yuriy built a clear plan of action and set the priorities correctly to create a studio that works on results. Therefore, Brist is based on such principles as quality and flexibility concerning the external aspects and perfectionism and responsibility from the inner side of the studio.\r\n\r\nSo, The picture worth a thousand words'),
(374, 52, '_description', 'field_636b7939f66bc'),
(375, 52, 'team_0_photo', '83'),
(376, 52, '_team_0_photo', 'field_636b796df66be'),
(377, 52, 'team_0_name', 'Name Last Name'),
(378, 52, '_team_0_name', 'field_636b798ff66bf'),
(379, 52, 'team_0_position', 'Position'),
(380, 52, '_team_0_position', 'field_636b799af66c0'),
(381, 52, 'team_1_photo', '83'),
(382, 52, '_team_1_photo', 'field_636b796df66be'),
(383, 52, 'team_1_name', 'Name Last Name'),
(384, 52, '_team_1_name', 'field_636b798ff66bf'),
(385, 52, 'team_1_position', 'Position'),
(386, 52, '_team_1_position', 'field_636b799af66c0'),
(387, 52, 'team_2_photo', '83'),
(388, 52, '_team_2_photo', 'field_636b796df66be'),
(389, 52, 'team_2_name', 'Name Last Name'),
(390, 52, '_team_2_name', 'field_636b798ff66bf'),
(391, 52, 'team_2_position', 'Position'),
(392, 52, '_team_2_position', 'field_636b799af66c0'),
(393, 52, 'team_3_photo', '83'),
(394, 52, '_team_3_photo', 'field_636b796df66be'),
(395, 52, 'team_3_name', 'Name Last Name'),
(396, 52, '_team_3_name', 'field_636b798ff66bf'),
(397, 52, 'team_3_position', 'Position'),
(398, 52, '_team_3_position', 'field_636b799af66c0'),
(399, 52, 'team', '8'),
(400, 52, '_team', 'field_636b7951f66bd'),
(401, 52, 'careers_0_job_vacancy', 'Creative Director'),
(402, 52, '_careers_0_job_vacancy', 'field_636b79ebf66c2'),
(403, 52, 'careers_0_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups'),
(404, 52, '_careers_0_job_description', 'field_636b7a40f66c3'),
(405, 52, 'careers_1_job_vacancy', 'Creative Director Animation'),
(406, 52, '_careers_1_job_vacancy', 'field_636b79ebf66c2'),
(407, 52, 'careers_1_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and, collaborators, and'),
(408, 52, '_careers_1_job_description', 'field_636b7a40f66c3'),
(409, 52, 'careers_2_job_vacancy', 'Creative Director  Director Animation'),
(410, 52, '_careers_2_job_vacancy', 'field_636b79ebf66c2'),
(411, 52, 'careers_2_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(412, 52, '_careers_2_job_description', 'field_636b7a40f66c3'),
(413, 52, 'careers_3_job_vacancy', 'Creative Director Animation'),
(414, 52, '_careers_3_job_vacancy', 'field_636b79ebf66c2'),
(415, 52, 'careers_3_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(416, 52, '_careers_3_job_description', 'field_636b7a40f66c3'),
(417, 52, 'careers', '4'),
(418, 52, '_careers', 'field_636b79c3f66c1'),
(419, 84, 'blockquote', 'There is always a story behind the brand. In the case of Brist – it is not an exception.'),
(420, 84, '_blockquote', 'field_636b78f7f66bb'),
(421, 84, 'description', 'Yuriy’s persistence and passion have led him to his first orders soon. He continued working as a freelancer approximately for a year until he felt the lack of growth. So, it was decided to start working as a studio member to get new experience.\r\n\r\nTo Yuriy’s mind, these two years of working in the studio have influenced him to set up his own business. Having watched the process from the inside, Yuriy built a clear plan of action and set the priorities correctly to create a studio that works on results. Therefore, Brist is based on such principles as quality and flexibility concerning the external aspects and perfectionism and responsibility from the inner side of the studio.\r\n\r\nSo, The picture worth a thousand words'),
(422, 84, '_description', 'field_636b7939f66bc'),
(423, 84, 'team_0_photo', '83'),
(424, 84, '_team_0_photo', 'field_636b796df66be'),
(425, 84, 'team_0_name', 'Name Last Name'),
(426, 84, '_team_0_name', 'field_636b798ff66bf'),
(427, 84, 'team_0_position', 'Position'),
(428, 84, '_team_0_position', 'field_636b799af66c0'),
(429, 84, 'team_1_photo', '83'),
(430, 84, '_team_1_photo', 'field_636b796df66be'),
(431, 84, 'team_1_name', 'Name Last Name'),
(432, 84, '_team_1_name', 'field_636b798ff66bf'),
(433, 84, 'team_1_position', 'Position'),
(434, 84, '_team_1_position', 'field_636b799af66c0'),
(435, 84, 'team_2_photo', '83'),
(436, 84, '_team_2_photo', 'field_636b796df66be'),
(437, 84, 'team_2_name', 'Name Last Name'),
(438, 84, '_team_2_name', 'field_636b798ff66bf'),
(439, 84, 'team_2_position', 'Position'),
(440, 84, '_team_2_position', 'field_636b799af66c0'),
(441, 84, 'team_3_photo', '83'),
(442, 84, '_team_3_photo', 'field_636b796df66be'),
(443, 84, 'team_3_name', 'Name Last Name'),
(444, 84, '_team_3_name', 'field_636b798ff66bf'),
(445, 84, 'team_3_position', 'Position'),
(446, 84, '_team_3_position', 'field_636b799af66c0'),
(447, 84, 'team', '4'),
(448, 84, '_team', 'field_636b7951f66bd'),
(449, 84, 'careers_0_job_vacancy', 'Creative Director Animation'),
(450, 84, '_careers_0_job_vacancy', 'field_636b79ebf66c2'),
(451, 84, 'careers_0_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(452, 84, '_careers_0_job_description', 'field_636b7a40f66c3'),
(453, 84, 'careers_1_job_vacancy', 'Creative Director Animation'),
(454, 84, '_careers_1_job_vacancy', 'field_636b79ebf66c2'),
(455, 84, 'careers_1_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(456, 84, '_careers_1_job_description', 'field_636b7a40f66c3'),
(457, 84, 'careers_2_job_vacancy', 'Creative Director Animation'),
(458, 84, '_careers_2_job_vacancy', 'field_636b79ebf66c2'),
(459, 84, 'careers_2_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(460, 84, '_careers_2_job_description', 'field_636b7a40f66c3'),
(461, 84, 'careers_3_job_vacancy', 'Creative Director Animation'),
(462, 84, '_careers_3_job_vacancy', 'field_636b79ebf66c2'),
(463, 84, 'careers_3_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(464, 84, '_careers_3_job_description', 'field_636b7a40f66c3'),
(465, 84, 'careers', '4'),
(466, 84, '_careers', 'field_636b79c3f66c1'),
(467, 52, 'team_4_photo', '83'),
(468, 52, '_team_4_photo', 'field_636b796df66be'),
(469, 52, 'team_4_name', 'Name Last Name'),
(470, 52, '_team_4_name', 'field_636b798ff66bf'),
(471, 52, 'team_4_position', 'Position'),
(472, 52, '_team_4_position', 'field_636b799af66c0'),
(473, 52, 'team_5_photo', '83'),
(474, 52, '_team_5_photo', 'field_636b796df66be'),
(475, 52, 'team_5_name', 'Name Last Name'),
(476, 52, '_team_5_name', 'field_636b798ff66bf'),
(477, 52, 'team_5_position', 'Position'),
(478, 52, '_team_5_position', 'field_636b799af66c0'),
(479, 52, 'team_6_photo', '83'),
(480, 52, '_team_6_photo', 'field_636b796df66be'),
(481, 52, 'team_6_name', 'Name Last Name'),
(482, 52, '_team_6_name', 'field_636b798ff66bf'),
(483, 52, 'team_6_position', 'Position'),
(484, 52, '_team_6_position', 'field_636b799af66c0'),
(485, 52, 'team_7_photo', '83'),
(486, 52, '_team_7_photo', 'field_636b796df66be'),
(487, 52, 'team_7_name', 'Name Last Name'),
(488, 52, '_team_7_name', 'field_636b798ff66bf'),
(489, 52, 'team_7_position', 'Position'),
(490, 52, '_team_7_position', 'field_636b799af66c0'),
(491, 88, 'blockquote', 'There is always a story behind the brand. In the case of Brist – it is not an exception.'),
(492, 88, '_blockquote', 'field_636b78f7f66bb'),
(493, 88, 'description', 'Yuriy’s persistence and passion have led him to his first orders soon. He continued working as a freelancer approximately for a year until he felt the lack of growth. So, it was decided to start working as a studio member to get new experience.\r\n\r\nTo Yuriy’s mind, these two years of working in the studio have influenced him to set up his own business. Having watched the process from the inside, Yuriy built a clear plan of action and set the priorities correctly to create a studio that works on results. Therefore, Brist is based on such principles as quality and flexibility concerning the external aspects and perfectionism and responsibility from the inner side of the studio.\r\n\r\nSo, The picture worth a thousand words'),
(494, 88, '_description', 'field_636b7939f66bc'),
(495, 88, 'team_0_photo', '83'),
(496, 88, '_team_0_photo', 'field_636b796df66be'),
(497, 88, 'team_0_name', 'Name Last Name'),
(498, 88, '_team_0_name', 'field_636b798ff66bf'),
(499, 88, 'team_0_position', 'Position'),
(500, 88, '_team_0_position', 'field_636b799af66c0'),
(501, 88, 'team_1_photo', '83'),
(502, 88, '_team_1_photo', 'field_636b796df66be'),
(503, 88, 'team_1_name', 'Name Last Name'),
(504, 88, '_team_1_name', 'field_636b798ff66bf'),
(505, 88, 'team_1_position', 'Position'),
(506, 88, '_team_1_position', 'field_636b799af66c0'),
(507, 88, 'team_2_photo', '83'),
(508, 88, '_team_2_photo', 'field_636b796df66be'),
(509, 88, 'team_2_name', 'Name Last Name'),
(510, 88, '_team_2_name', 'field_636b798ff66bf'),
(511, 88, 'team_2_position', 'Position'),
(512, 88, '_team_2_position', 'field_636b799af66c0'),
(513, 88, 'team_3_photo', '83'),
(514, 88, '_team_3_photo', 'field_636b796df66be'),
(515, 88, 'team_3_name', 'Name Last Name'),
(516, 88, '_team_3_name', 'field_636b798ff66bf'),
(517, 88, 'team_3_position', 'Position'),
(518, 88, '_team_3_position', 'field_636b799af66c0'),
(519, 88, 'team', '8'),
(520, 88, '_team', 'field_636b7951f66bd'),
(521, 88, 'careers_0_job_vacancy', 'Creative Director Animation'),
(522, 88, '_careers_0_job_vacancy', 'field_636b79ebf66c2'),
(523, 88, 'careers_0_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(524, 88, '_careers_0_job_description', 'field_636b7a40f66c3'),
(525, 88, 'careers_1_job_vacancy', 'Creative Director Animation'),
(526, 88, '_careers_1_job_vacancy', 'field_636b79ebf66c2'),
(527, 88, 'careers_1_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(528, 88, '_careers_1_job_description', 'field_636b7a40f66c3'),
(529, 88, 'careers_2_job_vacancy', 'Creative Director Animation'),
(530, 88, '_careers_2_job_vacancy', 'field_636b79ebf66c2'),
(531, 88, 'careers_2_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(532, 88, '_careers_2_job_description', 'field_636b7a40f66c3'),
(533, 88, 'careers_3_job_vacancy', 'Creative Director Animation'),
(534, 88, '_careers_3_job_vacancy', 'field_636b79ebf66c2'),
(535, 88, 'careers_3_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(536, 88, '_careers_3_job_description', 'field_636b7a40f66c3'),
(537, 88, 'careers', '4'),
(538, 88, '_careers', 'field_636b79c3f66c1'),
(539, 88, 'team_4_photo', '83'),
(540, 88, '_team_4_photo', 'field_636b796df66be'),
(541, 88, 'team_4_name', 'Name Last Name'),
(542, 88, '_team_4_name', 'field_636b798ff66bf'),
(543, 88, 'team_4_position', 'Position'),
(544, 88, '_team_4_position', 'field_636b799af66c0'),
(545, 88, 'team_5_photo', '83'),
(546, 88, '_team_5_photo', 'field_636b796df66be'),
(547, 88, 'team_5_name', 'Name Last Name'),
(548, 88, '_team_5_name', 'field_636b798ff66bf'),
(549, 88, 'team_5_position', 'Position'),
(550, 88, '_team_5_position', 'field_636b799af66c0'),
(551, 88, 'team_6_photo', '83'),
(552, 88, '_team_6_photo', 'field_636b796df66be'),
(553, 88, 'team_6_name', 'Name Last Name'),
(554, 88, '_team_6_name', 'field_636b798ff66bf'),
(555, 88, 'team_6_position', 'Position'),
(556, 88, '_team_6_position', 'field_636b799af66c0'),
(557, 88, 'team_7_photo', '83'),
(558, 88, '_team_7_photo', 'field_636b796df66be'),
(559, 88, 'team_7_name', 'Name Last Name'),
(560, 88, '_team_7_name', 'field_636b798ff66bf'),
(561, 88, 'team_7_position', 'Position'),
(562, 88, '_team_7_position', 'field_636b799af66c0'),
(563, 89, 'blockquote', 'There is always a story behind the brand. In the case of Brist – it is not an exception.'),
(564, 89, '_blockquote', 'field_636b78f7f66bb'),
(565, 89, 'description', 'Yuriy’s persistence and passion have led him to his first orders soon. He continued working as a freelancer approximately for a year until he felt the lack of growth. So, it was decided to start working as a studio member to get new experience.\r\n\r\nTo Yuriy’s mind, these two years of working in the studio have influenced him to set up his own business. Having watched the process from the inside, Yuriy built a clear plan of action and set the priorities correctly to create a studio that works on results. Therefore, Brist is based on such principles as quality and flexibility concerning the external aspects and perfectionism and responsibility from the inner side of the studio.\r\n\r\nSo, The picture worth a thousand words'),
(566, 89, '_description', 'field_636b7939f66bc'),
(567, 89, 'team_0_photo', '83'),
(568, 89, '_team_0_photo', 'field_636b796df66be'),
(569, 89, 'team_0_name', 'Name Last Name'),
(570, 89, '_team_0_name', 'field_636b798ff66bf'),
(571, 89, 'team_0_position', 'Position'),
(572, 89, '_team_0_position', 'field_636b799af66c0'),
(573, 89, 'team_1_photo', '83'),
(574, 89, '_team_1_photo', 'field_636b796df66be'),
(575, 89, 'team_1_name', 'Name Last Name'),
(576, 89, '_team_1_name', 'field_636b798ff66bf'),
(577, 89, 'team_1_position', 'Position'),
(578, 89, '_team_1_position', 'field_636b799af66c0'),
(579, 89, 'team_2_photo', '83'),
(580, 89, '_team_2_photo', 'field_636b796df66be'),
(581, 89, 'team_2_name', 'Name Last Name'),
(582, 89, '_team_2_name', 'field_636b798ff66bf'),
(583, 89, 'team_2_position', 'Position'),
(584, 89, '_team_2_position', 'field_636b799af66c0'),
(585, 89, 'team_3_photo', '83'),
(586, 89, '_team_3_photo', 'field_636b796df66be'),
(587, 89, 'team_3_name', 'Name Last Name'),
(588, 89, '_team_3_name', 'field_636b798ff66bf'),
(589, 89, 'team_3_position', 'Position'),
(590, 89, '_team_3_position', 'field_636b799af66c0'),
(591, 89, 'team', '8'),
(592, 89, '_team', 'field_636b7951f66bd'),
(593, 89, 'careers_0_job_vacancy', 'Creative Director'),
(594, 89, '_careers_0_job_vacancy', 'field_636b79ebf66c2'),
(595, 89, 'careers_0_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups'),
(596, 89, '_careers_0_job_description', 'field_636b7a40f66c3'),
(597, 89, 'careers_1_job_vacancy', 'Creative Director Animation'),
(598, 89, '_careers_1_job_vacancy', 'field_636b79ebf66c2'),
(599, 89, 'careers_1_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and, collaborators, and'),
(600, 89, '_careers_1_job_description', 'field_636b7a40f66c3'),
(601, 89, 'careers_2_job_vacancy', 'Creative Director  Director Animation'),
(602, 89, '_careers_2_job_vacancy', 'field_636b79ebf66c2'),
(603, 89, 'careers_2_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(604, 89, '_careers_2_job_description', 'field_636b7a40f66c3'),
(605, 89, 'careers_3_job_vacancy', 'Creative Director Animation'),
(606, 89, '_careers_3_job_vacancy', 'field_636b79ebf66c2'),
(607, 89, 'careers_3_job_description', 'Creative Director of Animation is vital in the success of our world-class clients and their projects. Responsible for working with client groups, collaborators, and'),
(608, 89, '_careers_3_job_description', 'field_636b7a40f66c3'),
(609, 89, 'careers', '4'),
(610, 89, '_careers', 'field_636b79c3f66c1'),
(611, 89, 'team_4_photo', '83'),
(612, 89, '_team_4_photo', 'field_636b796df66be'),
(613, 89, 'team_4_name', 'Name Last Name'),
(614, 89, '_team_4_name', 'field_636b798ff66bf'),
(615, 89, 'team_4_position', 'Position'),
(616, 89, '_team_4_position', 'field_636b799af66c0'),
(617, 89, 'team_5_photo', '83'),
(618, 89, '_team_5_photo', 'field_636b796df66be'),
(619, 89, 'team_5_name', 'Name Last Name'),
(620, 89, '_team_5_name', 'field_636b798ff66bf'),
(621, 89, 'team_5_position', 'Position'),
(622, 89, '_team_5_position', 'field_636b799af66c0'),
(623, 89, 'team_6_photo', '83'),
(624, 89, '_team_6_photo', 'field_636b796df66be'),
(625, 89, 'team_6_name', 'Name Last Name'),
(626, 89, '_team_6_name', 'field_636b798ff66bf'),
(627, 89, 'team_6_position', 'Position'),
(628, 89, '_team_6_position', 'field_636b799af66c0'),
(629, 89, 'team_7_photo', '83'),
(630, 89, '_team_7_photo', 'field_636b796df66be'),
(631, 89, 'team_7_name', 'Name Last Name'),
(632, 89, '_team_7_name', 'field_636b798ff66bf'),
(633, 89, 'team_7_position', 'Position'),
(634, 89, '_team_7_position', 'field_636b799af66c0'),
(637, 91, '_edit_last', '1'),
(638, 91, '_edit_lock', '1669620104:1'),
(640, 33, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(641, 33, 'architects_name', 'name of architects'),
(642, 33, '_architects_name', 'field_636cc57f4385f'),
(643, 33, 'location', 'Location shall be here'),
(644, 33, '_location', 'field_636cc5ba43860'),
(645, 33, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(646, 33, '_video', 'field_636cc5db43861'),
(647, 95, 'architects_name', 'name of architects'),
(648, 95, '_architects_name', 'field_636cc57f4385f'),
(649, 95, 'location', 'Location shall be here'),
(650, 95, '_location', 'field_636cc5ba43860'),
(651, 95, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(652, 95, '_video', 'field_636cc5db43861'),
(654, 34, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(655, 34, 'architects_name', 'name of architects'),
(656, 34, '_architects_name', 'field_636cc57f4385f'),
(657, 34, 'location', 'Location shall be here'),
(658, 34, '_location', 'field_636cc5ba43860'),
(659, 34, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(660, 34, '_video', 'field_636cc5db43861'),
(661, 96, 'architects_name', 'name of architects'),
(662, 96, '_architects_name', 'field_636cc57f4385f'),
(663, 96, 'location', 'Location shall be here'),
(664, 96, '_location', 'field_636cc5ba43860'),
(665, 96, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(666, 96, '_video', 'field_636cc5db43861'),
(668, 35, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(669, 35, 'architects_name', 'name of architects'),
(670, 35, '_architects_name', 'field_636cc57f4385f'),
(671, 35, 'location', 'Location shall be here'),
(672, 35, '_location', 'field_636cc5ba43860'),
(673, 35, 'video', ''),
(674, 35, '_video', 'field_636cc5db43861'),
(675, 97, 'architects_name', 'name of architects'),
(676, 97, '_architects_name', 'field_636cc57f4385f'),
(677, 97, 'location', 'Location shall be here'),
(678, 97, '_location', 'field_636cc5ba43860'),
(679, 97, 'video', ''),
(680, 97, '_video', 'field_636cc5db43861'),
(682, 36, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(683, 36, 'architects_name', 'name of architects'),
(684, 36, '_architects_name', 'field_636cc57f4385f'),
(685, 36, 'location', 'Location shall be here'),
(686, 36, '_location', 'field_636cc5ba43860'),
(687, 36, 'video', ''),
(688, 36, '_video', 'field_636cc5db43861'),
(689, 98, 'architects_name', 'name of architects'),
(690, 98, '_architects_name', 'field_636cc57f4385f'),
(691, 98, 'location', 'Location shall be here'),
(692, 98, '_location', 'field_636cc5ba43860'),
(693, 98, 'video', ''),
(694, 98, '_video', 'field_636cc5db43861');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(696, 59, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(697, 59, 'architects_name', 'name of architects'),
(698, 59, '_architects_name', 'field_636cc57f4385f'),
(699, 59, 'location', 'Location shall be here'),
(700, 59, '_location', 'field_636cc5ba43860'),
(701, 59, 'video', ''),
(702, 59, '_video', 'field_636cc5db43861'),
(703, 99, 'architects_name', 'name of architects'),
(704, 99, '_architects_name', 'field_636cc57f4385f'),
(705, 99, 'location', 'Location shall be here'),
(706, 99, '_location', 'field_636cc5ba43860'),
(707, 99, 'video', ''),
(708, 99, '_video', 'field_636cc5db43861'),
(710, 1, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(711, 1, 'architects_name', 'name of architects'),
(712, 1, '_architects_name', 'field_636cc57f4385f'),
(713, 1, 'location', 'Location shall be here'),
(714, 1, '_location', 'field_636cc5ba43860'),
(715, 1, 'video', ''),
(716, 1, '_video', 'field_636cc5db43861'),
(717, 100, 'architects_name', 'name of architects'),
(718, 100, '_architects_name', 'field_636cc57f4385f'),
(719, 100, 'location', 'Location shall be here'),
(720, 100, '_location', 'field_636cc5ba43860'),
(721, 100, 'video', ''),
(722, 100, '_video', 'field_636cc5db43861'),
(732, 102, '_menu_item_type', 'custom'),
(733, 102, '_menu_item_menu_item_parent', '0'),
(734, 102, '_menu_item_object_id', '102'),
(735, 102, '_menu_item_object', 'custom'),
(736, 102, '_menu_item_target', ''),
(737, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 102, '_menu_item_xfn', ''),
(739, 102, '_menu_item_url', '/#work'),
(741, 58, '_wp_old_date', '2022-11-08'),
(742, 57, '_wp_old_date', '2022-11-08'),
(743, 56, '_wp_old_date', '2022-11-08'),
(745, 103, 'architects_name', 'name of architects'),
(746, 103, '_architects_name', 'field_636cc57f4385f'),
(747, 103, 'location', 'Location shall be here'),
(748, 103, '_location', 'field_636cc5ba43860'),
(749, 103, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(750, 103, '_video', 'field_636cc5db43861'),
(751, 54, '_wp_page_template', 'page-contact.php'),
(752, 54, 'ao_post_optimize', 'a:6:{s:16:\"ao_post_optimize\";s:2:\"on\";s:19:\"ao_post_js_optimize\";s:2:\"on\";s:20:\"ao_post_css_optimize\";s:2:\"on\";s:12:\"ao_post_ccss\";s:2:\"on\";s:16:\"ao_post_lazyload\";s:2:\"on\";s:15:\"ao_post_preload\";s:0:\"\";}'),
(754, 59, 'vr_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(755, 59, '_vr_url', 'field_637395515128f'),
(756, 106, 'architects_name', 'name of architects'),
(757, 106, '_architects_name', 'field_636cc57f4385f'),
(758, 106, 'location', 'Location shall be here'),
(759, 106, '_location', 'field_636cc5ba43860'),
(760, 106, 'video', ''),
(761, 106, '_video', 'field_636cc5db43861'),
(762, 106, 'vr_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(763, 106, '_vr_url', 'field_637395515128f'),
(765, 59, 'work_type', 'iframe'),
(766, 59, '_work_type', 'field_637398062edf6'),
(767, 59, 'iframe', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(768, 59, '_iframe', 'field_637395515128f'),
(769, 108, 'architects_name', 'name of architects'),
(770, 108, '_architects_name', 'field_636cc57f4385f'),
(771, 108, 'location', 'Location shall be here'),
(772, 108, '_location', 'field_636cc5ba43860'),
(773, 108, 'video', ''),
(774, 108, '_video', 'field_636cc5db43861'),
(775, 108, 'vr_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(776, 108, '_vr_url', 'field_637395515128f'),
(777, 108, 'work_type', 'iframe'),
(778, 108, '_work_type', 'field_637398062edf6'),
(779, 108, 'iframe', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(780, 108, '_iframe', 'field_637395515128f'),
(782, 34, 'work_type', 'video'),
(783, 34, '_work_type', 'field_637398062edf6'),
(784, 96, 'work_type', 'image'),
(785, 96, '_work_type', 'field_637398062edf6'),
(787, 109, 'architects_name', 'name of architects'),
(788, 109, '_architects_name', 'field_636cc57f4385f'),
(789, 109, 'location', 'Location shall be here'),
(790, 109, '_location', 'field_636cc5ba43860'),
(791, 109, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(792, 109, '_video', 'field_636cc5db43861'),
(793, 109, 'work_type', 'video'),
(794, 109, '_work_type', 'field_637398062edf6'),
(796, 35, 'work_type', 'image'),
(797, 35, '_work_type', 'field_637398062edf6'),
(798, 110, 'architects_name', 'name of architects'),
(799, 110, '_architects_name', 'field_636cc57f4385f'),
(800, 110, 'location', 'Location shall be here'),
(801, 110, '_location', 'field_636cc5ba43860'),
(802, 110, 'video', ''),
(803, 110, '_video', 'field_636cc5db43861'),
(804, 110, 'work_type', 'image'),
(805, 110, '_work_type', 'field_637398062edf6'),
(808, 36, 'work_type', 'image'),
(809, 36, '_work_type', 'field_637398062edf6'),
(810, 111, 'architects_name', 'name of architects'),
(811, 111, '_architects_name', 'field_636cc57f4385f'),
(812, 111, 'location', 'Location shall be here'),
(813, 111, '_location', 'field_636cc5ba43860'),
(814, 111, 'video', ''),
(815, 111, '_video', 'field_636cc5db43861'),
(816, 111, 'work_type', 'image'),
(817, 111, '_work_type', 'field_637398062edf6'),
(819, 33, 'work_type', 'video'),
(820, 33, '_work_type', 'field_637398062edf6'),
(821, 112, 'architects_name', 'name of architects'),
(822, 112, '_architects_name', 'field_636cc57f4385f'),
(823, 112, 'location', 'Location shall be here'),
(824, 112, '_location', 'field_636cc5ba43860'),
(825, 112, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(826, 112, '_video', 'field_636cc5db43861'),
(827, 112, 'work_type', 'video'),
(828, 112, '_work_type', 'field_637398062edf6'),
(830, 1, 'work_type', 'image'),
(831, 1, '_work_type', 'field_637398062edf6'),
(832, 100, 'work_type', 'image'),
(833, 100, '_work_type', 'field_637398062edf6'),
(835, 34, 'type', 'youtube'),
(836, 34, '_type', 'field_637398062edf6'),
(837, 113, 'architects_name', 'name of architects'),
(838, 113, '_architects_name', 'field_636cc57f4385f'),
(839, 113, 'location', 'Location shall be here'),
(840, 113, '_location', 'field_636cc5ba43860'),
(841, 113, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(842, 113, '_video', 'field_636cc5db43861'),
(843, 113, 'work_type', 'video'),
(844, 113, '_work_type', 'field_637398062edf6'),
(845, 113, 'type', 'video'),
(846, 113, '_type', 'field_637398062edf6'),
(848, 35, 'type', 'image'),
(849, 35, '_type', 'field_637398062edf6'),
(850, 114, 'architects_name', 'name of architects'),
(851, 114, '_architects_name', 'field_636cc57f4385f'),
(852, 114, 'location', 'Location shall be here'),
(853, 114, '_location', 'field_636cc5ba43860'),
(854, 114, 'video', ''),
(855, 114, '_video', 'field_636cc5db43861'),
(856, 114, 'work_type', 'image'),
(857, 114, '_work_type', 'field_637398062edf6'),
(858, 114, 'type', 'image'),
(859, 114, '_type', 'field_637398062edf6'),
(861, 59, 'type', 'iframe'),
(862, 59, '_type', 'field_637398062edf6'),
(863, 115, 'architects_name', 'name of architects'),
(864, 115, '_architects_name', 'field_636cc57f4385f'),
(865, 115, 'location', 'Location shall be here'),
(866, 115, '_location', 'field_636cc5ba43860'),
(867, 115, 'video', ''),
(868, 115, '_video', 'field_636cc5db43861'),
(869, 115, 'vr_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(870, 115, '_vr_url', 'field_637395515128f'),
(871, 115, 'work_type', 'iframe'),
(872, 115, '_work_type', 'field_637398062edf6'),
(873, 115, 'iframe', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(874, 115, '_iframe', 'field_637395515128f'),
(875, 115, 'type', 'iframe'),
(876, 115, '_type', 'field_637398062edf6'),
(878, 36, 'type', 'image'),
(879, 36, '_type', 'field_637398062edf6'),
(880, 116, 'architects_name', 'name of architects'),
(881, 116, '_architects_name', 'field_636cc57f4385f'),
(882, 116, 'location', 'Location shall be here'),
(883, 116, '_location', 'field_636cc5ba43860'),
(884, 116, 'video', ''),
(885, 116, '_video', 'field_636cc5db43861'),
(886, 116, 'work_type', 'image'),
(887, 116, '_work_type', 'field_637398062edf6'),
(888, 116, 'type', 'image'),
(889, 116, '_type', 'field_637398062edf6'),
(891, 33, 'type', 'videofile'),
(892, 33, '_type', 'field_637398062edf6'),
(893, 117, 'architects_name', 'name of architects'),
(894, 117, '_architects_name', 'field_636cc57f4385f'),
(895, 117, 'location', 'Location shall be here'),
(896, 117, '_location', 'field_636cc5ba43860'),
(897, 117, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(898, 117, '_video', 'field_636cc5db43861'),
(899, 117, 'work_type', 'video'),
(900, 117, '_work_type', 'field_637398062edf6'),
(901, 117, 'type', 'image'),
(902, 117, '_type', 'field_637398062edf6'),
(904, 1, 'type', 'image'),
(905, 1, '_type', 'field_637398062edf6'),
(906, 100, 'type', 'image'),
(907, 100, '_type', 'field_637398062edf6'),
(909, 34, 'youtube', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(910, 34, '_youtube', 'field_636cc5db43861'),
(911, 119, 'architects_name', 'name of architects'),
(912, 119, '_architects_name', 'field_636cc57f4385f'),
(913, 119, 'location', 'Location shall be here'),
(914, 119, '_location', 'field_636cc5ba43860'),
(915, 119, 'video', 'https://www.youtube.com/watch?v=SmOss5qe8eg'),
(916, 119, '_video', 'field_636cc5db43861'),
(917, 119, 'work_type', 'video'),
(918, 119, '_work_type', 'field_637398062edf6'),
(919, 119, 'type', 'youtube'),
(920, 119, '_type', 'field_637398062edf6'),
(921, 119, 'youtube', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(922, 119, '_youtube', 'field_636cc5db43861'),
(928, 120, '_wp_attached_file', '2022/11/Ink-in-Water-Background-720p.mp4'),
(929, 120, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:23272356;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:109;s:16:\"length_formatted\";s:4:\"1:49\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1633291793;}'),
(931, 33, 'mp4', '120'),
(932, 33, '_mp4', 'field_63749de96a384'),
(933, 121, 'architects_name', 'name of architects'),
(934, 121, '_architects_name', 'field_636cc57f4385f'),
(935, 121, 'location', 'Location shall be here'),
(936, 121, '_location', 'field_636cc5ba43860'),
(937, 121, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(938, 121, '_video', 'field_636cc5db43861'),
(939, 121, 'work_type', 'video'),
(940, 121, '_work_type', 'field_637398062edf6'),
(941, 121, 'type', 'image'),
(942, 121, '_type', 'field_637398062edf6'),
(943, 121, 'mp4', '120'),
(944, 121, '_mp4', 'field_63749de96a384'),
(945, 122, '_wp_attached_file', '2022/11/Screenshot_1-scaled.jpg'),
(946, 122, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1276;s:4:\"file\";s:31:\"2022/11/Screenshot_1-scaled.jpg\";s:8:\"filesize\";i:260817;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Screenshot_1-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7655;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"Screenshot_1-1024x510.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57298;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4672;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Screenshot_1-768x383.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35190;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"Screenshot_1-1536x765.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:765;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113260;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-2048x1021.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:182529;}s:2:\"xl\";a:5:{s:4:\"file\";s:25:\"Screenshot_1-1512x753.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:753;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111054;}s:3:\"xxl\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-2560x1276.jpg\";s:5:\"width\";i:2560;s:6:\"height\";i:1276;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:260817;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"Screenshot_1.jpg\";}'),
(953, 124, '_wp_attached_file', '2022/11/videoplayback.webm'),
(954, 124, '_wp_attachment_metadata', 'a:9:{s:7:\"bitrate\";i:1260854;s:8:\"filesize\";i:17163385;s:9:\"mime_type\";s:10:\"video/webm\";s:6:\"length\";i:109;s:16:\"length_formatted\";s:4:\"1:49\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:4:\"webm\";s:10:\"dataformat\";s:5:\"V_VP9\";}'),
(956, 33, 'webm', '124'),
(957, 33, '_webm', 'field_6374d5bf9e583'),
(958, 125, 'architects_name', 'name of architects'),
(959, 125, '_architects_name', 'field_636cc57f4385f'),
(960, 125, 'location', 'Location shall be here'),
(961, 125, '_location', 'field_636cc5ba43860'),
(962, 125, 'video', 'https://www.youtube.com/watch?v=Wjt6yyNDWmc'),
(963, 125, '_video', 'field_636cc5db43861'),
(964, 125, 'work_type', 'video'),
(965, 125, '_work_type', 'field_637398062edf6'),
(966, 125, 'type', 'videofile'),
(967, 125, '_type', 'field_637398062edf6'),
(968, 125, 'mp4', '120'),
(969, 125, '_mp4', 'field_63749de96a384'),
(970, 125, 'webm', '124'),
(971, 125, '_webm', 'field_6374d5bf9e583'),
(972, 126, '_wp_attached_file', '2022/11/Screenshot_1-1-scaled.jpg'),
(973, 126, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1439;s:4:\"file\";s:33:\"2022/11/Screenshot_1-1-scaled.jpg\";s:8:\"filesize\";i:183252;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9527;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Screenshot_1-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49555;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5572;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Screenshot_1-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33529;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"Screenshot_1-1-1536x863.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:863;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86532;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Screenshot_1-1-2048x1151.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131939;}s:2:\"xl\";a:5:{s:4:\"file\";s:27:\"Screenshot_1-1-1512x850.jpg\";s:5:\"width\";i:1512;s:6:\"height\";i:850;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85041;}s:3:\"xxl\";a:5:{s:4:\"file\";s:28:\"Screenshot_1-1-2560x1439.jpg\";s:5:\"width\";i:2560;s:6:\"height\";i:1439;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:183252;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"Screenshot_1-1.jpg\";}'),
(974, 50, 'services_0_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(975, 50, '_services_0_project_1', 'field_63845f2c73abc'),
(976, 50, 'services_0_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(977, 50, '_services_0_project_2', 'field_63845f5373abd'),
(978, 50, 'services_1_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(979, 50, '_services_1_project_1', 'field_63845f2c73abc'),
(980, 50, 'services_2_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(981, 50, '_services_2_project_1', 'field_63845f2c73abc'),
(982, 50, 'services_2_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(983, 50, '_services_2_project_2', 'field_63845f5373abd'),
(984, 50, 'services_3_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(985, 50, '_services_3_project_1', 'field_63845f2c73abc'),
(986, 130, 'services', '4'),
(987, 130, '_services', 'field_636b608bb9993'),
(988, 130, 'services_0_layout', '1'),
(989, 130, '_services_0_layout', 'field_636b60f6b9996'),
(990, 130, 'services_0_title', '3D Rendering'),
(991, 130, '_services_0_title', 'field_636b60b0b9994'),
(992, 130, 'services_0_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(993, 130, '_services_0_description', 'field_636b60bfb9995'),
(994, 130, 'services_0_image_1', '60'),
(995, 130, '_services_0_image_1', 'field_636b6190b9997'),
(996, 130, 'services_0_image_2', '28'),
(997, 130, '_services_0_image_2', 'field_636b61bdb9998'),
(998, 130, 'services_1_layout', '2'),
(999, 130, '_services_1_layout', 'field_636b60f6b9996'),
(1000, 130, 'services_1_title', '360 Panoramas'),
(1001, 130, '_services_1_title', 'field_636b60b0b9994'),
(1002, 130, 'services_1_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1003, 130, '_services_1_description', 'field_636b60bfb9995'),
(1004, 130, 'services_1_image_1', '27'),
(1005, 130, '_services_1_image_1', 'field_636b6190b9997'),
(1006, 130, 'services_2_layout', '3'),
(1007, 130, '_services_2_layout', 'field_636b60f6b9996'),
(1008, 130, 'services_2_title', 'Fly-Troughts'),
(1009, 130, '_services_2_title', 'field_636b60b0b9994'),
(1010, 130, 'services_2_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1011, 130, '_services_2_description', 'field_636b60bfb9995'),
(1012, 130, 'services_2_image_1', '29'),
(1013, 130, '_services_2_image_1', 'field_636b6190b9997'),
(1014, 130, 'services_2_image_2', '30'),
(1015, 130, '_services_2_image_2', 'field_636b61bdb9998'),
(1016, 130, 'services_3_layout', '2'),
(1017, 130, '_services_3_layout', 'field_636b60f6b9996'),
(1018, 130, 'services_3_title', 'VR Tours'),
(1019, 130, '_services_3_title', 'field_636b60b0b9994'),
(1020, 130, 'services_3_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1021, 130, '_services_3_description', 'field_636b60bfb9995'),
(1022, 130, 'services_3_image_1', '28'),
(1023, 130, '_services_3_image_1', 'field_636b6190b9997'),
(1024, 130, 'services_0_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1025, 130, '_services_0_project_1', 'field_63845f2c73abc'),
(1026, 130, 'services_0_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1027, 130, '_services_0_project_2', 'field_63845f5373abd'),
(1028, 130, 'services_1_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1029, 130, '_services_1_project_1', 'field_63845f2c73abc'),
(1030, 130, 'services_2_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1031, 130, '_services_2_project_1', 'field_63845f2c73abc'),
(1032, 130, 'services_2_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1033, 130, '_services_2_project_2', 'field_63845f5373abd'),
(1034, 130, 'services_3_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1035, 130, '_services_3_project_1', 'field_63845f2c73abc'),
(1036, 50, 'services_0_project_1_name', 'Project 1 - Name'),
(1037, 50, '_services_0_project_1_name', 'field_6384603898083'),
(1038, 50, 'services_0_project_1_architects_name', 'Project 1 - Architects name'),
(1039, 50, '_services_0_project_1_architects_name', 'field_6384607098084'),
(1040, 50, 'services_0_project_1_location', 'Project 1 - Location '),
(1041, 50, '_services_0_project_1_location', 'field_638460b298085'),
(1042, 50, 'services_0_project_1_image', '60'),
(1043, 50, '_services_0_project_1_image', 'field_636b6190b9997'),
(1044, 50, 'services_0_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1045, 50, '_services_0_project_1_url', 'field_63845f2c73abc'),
(1046, 50, 'services_0_project_2_name', 'Project 2 - Name'),
(1047, 50, '_services_0_project_2_name', 'field_638460c898086'),
(1048, 50, 'services_0_project_2_architects_name', 'Project 2 - Architects name'),
(1049, 50, '_services_0_project_2_architects_name', 'field_6384610198087'),
(1050, 50, 'services_0_project_2_location', 'Project 2 - Location'),
(1051, 50, '_services_0_project_2_location', 'field_6384610498088'),
(1052, 50, 'services_0_project_2_image', '31'),
(1053, 50, '_services_0_project_2_image', 'field_636b61bdb9998'),
(1054, 50, 'services_0_project_2_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1055, 50, '_services_0_project_2_url', 'field_6384613c98089'),
(1056, 50, 'services_1_project_1_name', 'Project 1 - Name'),
(1057, 50, '_services_1_project_1_name', 'field_6384603898083'),
(1058, 50, 'services_1_project_1_architects_name', 'Project 1 - Architects name'),
(1059, 50, '_services_1_project_1_architects_name', 'field_6384607098084'),
(1060, 50, 'services_1_project_1_location', 'Project 1 - Location'),
(1061, 50, '_services_1_project_1_location', 'field_638460b298085'),
(1062, 50, 'services_1_project_1_image', '30'),
(1063, 50, '_services_1_project_1_image', 'field_636b6190b9997'),
(1064, 50, 'services_1_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1065, 50, '_services_1_project_1_url', 'field_63845f2c73abc'),
(1066, 50, 'services_2_project_1_name', 'Project 1 - Name'),
(1067, 50, '_services_2_project_1_name', 'field_6384603898083'),
(1068, 50, 'services_2_project_1_architects_name', 'Project 1 - Architects name'),
(1069, 50, '_services_2_project_1_architects_name', 'field_6384607098084'),
(1070, 50, 'services_2_project_1_location', 'Project 1 - Location '),
(1071, 50, '_services_2_project_1_location', 'field_638460b298085'),
(1072, 50, 'services_2_project_1_image', '29'),
(1073, 50, '_services_2_project_1_image', 'field_636b6190b9997'),
(1074, 50, 'services_2_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1075, 50, '_services_2_project_1_url', 'field_63845f2c73abc'),
(1076, 50, 'services_2_project_2_name', 'Project 2 - Name'),
(1077, 50, '_services_2_project_2_name', 'field_638460c898086'),
(1078, 50, 'services_2_project_2_architects_name', 'Project 2 - Architects name'),
(1079, 50, '_services_2_project_2_architects_name', 'field_6384610198087'),
(1080, 50, 'services_2_project_2_location', 'Project 2 - Location'),
(1081, 50, '_services_2_project_2_location', 'field_6384610498088'),
(1082, 50, 'services_2_project_2_image', '28'),
(1083, 50, '_services_2_project_2_image', 'field_636b61bdb9998'),
(1084, 50, 'services_2_project_2_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1085, 50, '_services_2_project_2_url', 'field_6384613c98089'),
(1086, 50, 'services_3_project_1_name', 'Project 1 - Name'),
(1087, 50, '_services_3_project_1_name', 'field_6384603898083'),
(1088, 50, 'services_3_project_1_architects_name', 'Project 1 - Architects name'),
(1089, 50, '_services_3_project_1_architects_name', 'field_6384607098084'),
(1090, 50, 'services_3_project_1_location', 'Project 1 - Location'),
(1091, 50, '_services_3_project_1_location', 'field_638460b298085'),
(1092, 50, 'services_3_project_1_image', '27'),
(1093, 50, '_services_3_project_1_image', 'field_636b6190b9997'),
(1094, 50, 'services_3_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1095, 50, '_services_3_project_1_url', 'field_63845f2c73abc'),
(1096, 140, 'services', '4'),
(1097, 140, '_services', 'field_636b608bb9993'),
(1098, 140, 'services_0_layout', '1'),
(1099, 140, '_services_0_layout', 'field_636b60f6b9996'),
(1100, 140, 'services_0_title', '3D Rendering'),
(1101, 140, '_services_0_title', 'field_636b60b0b9994'),
(1102, 140, 'services_0_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1103, 140, '_services_0_description', 'field_636b60bfb9995'),
(1104, 140, 'services_0_image_1', '60'),
(1105, 140, '_services_0_image_1', 'field_636b6190b9997'),
(1106, 140, 'services_0_image_2', '28'),
(1107, 140, '_services_0_image_2', 'field_636b61bdb9998'),
(1108, 140, 'services_1_layout', '2'),
(1109, 140, '_services_1_layout', 'field_636b60f6b9996'),
(1110, 140, 'services_1_title', '360 Panoramas'),
(1111, 140, '_services_1_title', 'field_636b60b0b9994'),
(1112, 140, 'services_1_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1113, 140, '_services_1_description', 'field_636b60bfb9995'),
(1114, 140, 'services_1_image_1', '27'),
(1115, 140, '_services_1_image_1', 'field_636b6190b9997'),
(1116, 140, 'services_2_layout', '3'),
(1117, 140, '_services_2_layout', 'field_636b60f6b9996'),
(1118, 140, 'services_2_title', 'Fly-Troughts'),
(1119, 140, '_services_2_title', 'field_636b60b0b9994'),
(1120, 140, 'services_2_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1121, 140, '_services_2_description', 'field_636b60bfb9995'),
(1122, 140, 'services_2_image_1', '29'),
(1123, 140, '_services_2_image_1', 'field_636b6190b9997'),
(1124, 140, 'services_2_image_2', '30'),
(1125, 140, '_services_2_image_2', 'field_636b61bdb9998'),
(1126, 140, 'services_3_layout', '2'),
(1127, 140, '_services_3_layout', 'field_636b60f6b9996'),
(1128, 140, 'services_3_title', 'VR Tours'),
(1129, 140, '_services_3_title', 'field_636b60b0b9994'),
(1130, 140, 'services_3_description', 'We design and build beautiful bespoke interactive CGI virtual environments for premium brands, which deliver powerful and immersive customer engagement.'),
(1131, 140, '_services_3_description', 'field_636b60bfb9995'),
(1132, 140, 'services_3_image_1', '28'),
(1133, 140, '_services_3_image_1', 'field_636b6190b9997'),
(1134, 140, 'services_0_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1135, 140, '_services_0_project_1', 'field_63845f2c73abc'),
(1136, 140, 'services_0_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1137, 140, '_services_0_project_2', 'field_63845f5373abd'),
(1138, 140, 'services_1_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1139, 140, '_services_1_project_1', 'field_63845f2c73abc'),
(1140, 140, 'services_2_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1141, 140, '_services_2_project_1', 'field_63845f2c73abc'),
(1142, 140, 'services_2_project_2', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1143, 140, '_services_2_project_2', 'field_63845f5373abd'),
(1144, 140, 'services_3_project_1', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1145, 140, '_services_3_project_1', 'field_63845f2c73abc'),
(1146, 140, 'services_0_project_1_name', 'Project 1 - Name'),
(1147, 140, '_services_0_project_1_name', 'field_6384603898083'),
(1148, 140, 'services_0_project_1_architects_name', 'Project 1 - Architects name'),
(1149, 140, '_services_0_project_1_architects_name', 'field_6384607098084'),
(1150, 140, 'services_0_project_1_location', 'Project 1 - Location '),
(1151, 140, '_services_0_project_1_location', 'field_638460b298085'),
(1152, 140, 'services_0_project_1_image', '60'),
(1153, 140, '_services_0_project_1_image', 'field_636b6190b9997'),
(1154, 140, 'services_0_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1155, 140, '_services_0_project_1_url', 'field_63845f2c73abc'),
(1156, 140, 'services_0_project_2_name', 'Project 2 - Name'),
(1157, 140, '_services_0_project_2_name', 'field_638460c898086'),
(1158, 140, 'services_0_project_2_architects_name', 'Project 2 - Architects name'),
(1159, 140, '_services_0_project_2_architects_name', 'field_6384610198087'),
(1160, 140, 'services_0_project_2_location', 'Project 2 - Location'),
(1161, 140, '_services_0_project_2_location', 'field_6384610498088'),
(1162, 140, 'services_0_project_2_image', '31'),
(1163, 140, '_services_0_project_2_image', 'field_636b61bdb9998'),
(1164, 140, 'services_0_project_2_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1165, 140, '_services_0_project_2_url', 'field_6384613c98089'),
(1166, 140, 'services_1_project_1_name', 'Project 1 - Name'),
(1167, 140, '_services_1_project_1_name', 'field_6384603898083'),
(1168, 140, 'services_1_project_1_architects_name', 'Project 1 - Architects name'),
(1169, 140, '_services_1_project_1_architects_name', 'field_6384607098084'),
(1170, 140, 'services_1_project_1_location', 'Project 1 - Location'),
(1171, 140, '_services_1_project_1_location', 'field_638460b298085'),
(1172, 140, 'services_1_project_1_image', '30'),
(1173, 140, '_services_1_project_1_image', 'field_636b6190b9997'),
(1174, 140, 'services_1_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1175, 140, '_services_1_project_1_url', 'field_63845f2c73abc'),
(1176, 140, 'services_2_project_1_name', 'Project 1 - Name'),
(1177, 140, '_services_2_project_1_name', 'field_6384603898083'),
(1178, 140, 'services_2_project_1_architects_name', 'Project 1 - Architects name'),
(1179, 140, '_services_2_project_1_architects_name', 'field_6384607098084'),
(1180, 140, 'services_2_project_1_location', 'Project 1 - Location '),
(1181, 140, '_services_2_project_1_location', 'field_638460b298085'),
(1182, 140, 'services_2_project_1_image', '29'),
(1183, 140, '_services_2_project_1_image', 'field_636b6190b9997'),
(1184, 140, 'services_2_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1185, 140, '_services_2_project_1_url', 'field_63845f2c73abc'),
(1186, 140, 'services_2_project_2_name', 'Project 2 - Name'),
(1187, 140, '_services_2_project_2_name', 'field_638460c898086'),
(1188, 140, 'services_2_project_2_architects_name', 'Project 2 - Architects name'),
(1189, 140, '_services_2_project_2_architects_name', 'field_6384610198087'),
(1190, 140, 'services_2_project_2_location', 'Project 2 - Location'),
(1191, 140, '_services_2_project_2_location', 'field_6384610498088'),
(1192, 140, 'services_2_project_2_image', '28'),
(1193, 140, '_services_2_project_2_image', 'field_636b61bdb9998'),
(1194, 140, 'services_2_project_2_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1195, 140, '_services_2_project_2_url', 'field_6384613c98089'),
(1196, 140, 'services_3_project_1_name', 'Project 1 - Name'),
(1197, 140, '_services_3_project_1_name', 'field_6384603898083'),
(1198, 140, 'services_3_project_1_architects_name', 'Project 1 - Architects name'),
(1199, 140, '_services_3_project_1_architects_name', 'field_6384607098084'),
(1200, 140, 'services_3_project_1_location', 'Project 1 - Location'),
(1201, 140, '_services_3_project_1_location', 'field_638460b298085'),
(1202, 140, 'services_3_project_1_image', '27'),
(1203, 140, '_services_3_project_1_image', 'field_636b6190b9997'),
(1204, 140, 'services_3_project_1_url', 'https://vrto.me/_office/preview.php?p=6962&d=2021-10-10_1455&u=2504&c=75ebdde61a91bad12d2532376b4617456fb79d33'),
(1205, 140, '_services_3_project_1_url', 'field_63845f2c73abc');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-11-07 07:50:08', '2022-11-07 07:50:08', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical', '', '', '2022-11-16 12:33:06', '2022-11-16 12:33:06', '', 0, 'http://brist.loc/?p=1', 6, 'post', '', 1),
(3, 1, '2022-11-07 07:50:08', '2022-11-07 07:50:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://brist.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-11-07 07:50:08', '2022-11-07 07:50:08', '', 0, 'http://brist.loc/?page_id=3', 4, 'page', '', 0),
(5, 1, '2022-11-07 07:51:24', '2022-11-07 07:51:24', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@brist.loc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@brist.loc>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-11-07 07:51:24', '2022-11-07 07:51:24', '', 0, 'http://brist.loc/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2022-11-07 08:11:56', '2022-11-07 08:11:56', '', 'Brist logo black', '', 'inherit', 'open', 'closed', '', 'brist-logo-black', '', '', '2022-11-07 08:11:56', '2022-11-07 08:11:56', '', 0, 'http://brist.loc/wp-content/uploads/2022/11/Brist-logo-black.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2022-11-07 14:35:59', '2022-11-07 13:26:42', '', 'Behance', '', 'publish', 'closed', 'closed', '', 'behance', '', '', '2022-11-07 14:35:59', '2022-11-07 14:35:59', '', 0, 'http://brist.loc/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2022-11-07 14:35:59', '2022-11-07 13:26:42', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2022-11-07 14:35:59', '2022-11-07 14:35:59', '', 0, 'http://brist.loc/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2022-11-07 14:35:59', '2022-11-07 13:26:42', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2022-11-07 14:35:59', '2022-11-07 14:35:59', '', 0, 'http://brist.loc/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2022-11-07 14:35:59', '2022-11-07 13:26:42', '', 'Linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2022-11-07 14:35:59', '2022-11-07 14:35:59', '', 0, 'http://brist.loc/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2022-11-07 13:40:17', '2022-11-07 13:40:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'General', 'general', 'publish', 'closed', 'closed', '', 'group_63690a8022dec', '', '', '2022-11-10 13:24:54', '2022-11-10 13:24:54', '', 0, 'http://brist.loc/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(23, 1, '2022-11-07 14:27:08', '2022-11-07 14:27:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_6369152da71fe', '', '', '2022-11-10 13:24:54', '2022-11-10 13:24:54', '', 20, 'http://brist.loc/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2022-11-07 14:27:08', '2022-11-07 14:27:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tel', 'tel', 'publish', 'closed', 'closed', '', 'field_63691573a71ff', '', '', '2022-11-10 13:24:54', '2022-11-10 13:24:54', '', 20, 'http://brist.loc/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2022-11-07 14:27:08', '2022-11-07 14:27:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_636915aca7200', '', '', '2022-11-10 13:24:54', '2022-11-10 13:24:54', '', 20, 'http://brist.loc/?post_type=acf-field&#038;p=25', 2, 'acf-field', '', 0),
(26, 1, '2022-11-07 14:37:53', '2022-11-07 14:37:53', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_636918207a060', '', '', '2022-11-10 13:24:54', '2022-11-10 13:24:54', '', 20, 'http://brist.loc/?post_type=acf-field&#038;p=26', 3, 'acf-field', '', 0),
(27, 1, '2022-11-08 07:38:13', '2022-11-08 07:38:13', '', '319_Gardner_exterior_view_01_Final 1', '', 'inherit', 'open', 'closed', '', '319_gardner_exterior_view_01_final-1', '', '', '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 50, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-11-08 07:38:15', '2022-11-08 07:38:15', '', 'Rusanivka_Viiew_09_v8 1', '', 'inherit', 'open', 'closed', '', 'rusanivka_viiew_09_v8-1', '', '', '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 50, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2022-11-08 07:38:17', '2022-11-08 07:38:17', '', 'unsplash_eqnfN4WX2jQ', '', 'inherit', 'open', 'closed', '', 'unsplash_eqnfn4wx2jq', '', '', '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 50, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2022-11-08 07:38:18', '2022-11-08 07:38:18', '', 'unsplash_eqnfN4WX2jQ-1', '', 'inherit', 'open', 'closed', '', 'unsplash_eqnfn4wx2jq-1', '', '', '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 50, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2022-11-08 07:38:20', '2022-11-08 07:38:20', '', 'unsplash_eqnfN4WX2jQ-2', '', 'inherit', 'open', 'closed', '', 'unsplash_eqnfn4wx2jq-2', '', '', '2022-11-28 07:30:57', '2022-11-28 07:30:57', '', 50, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2022-11-08 07:39:18', '2022-11-08 07:39:18', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-11-08 07:39:18', '2022-11-08 07:39:18', '', 1, 'http://brist.loc/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-11-08 07:40:45', '2022-11-08 07:40:45', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical-2', '', '', '2022-11-16 14:01:45', '2022-11-16 14:01:45', '', 0, 'http://brist.loc/?p=33', 2, 'post', '', 0),
(34, 1, '2022-11-08 07:41:15', '2022-11-08 07:41:15', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical-3', '', '', '2022-11-16 12:33:04', '2022-11-16 12:33:04', '', 0, 'http://brist.loc/?p=34', 5, 'post', '', 0),
(35, 1, '2022-11-08 07:41:30', '2022-11-08 07:41:30', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical-4', '', '', '2022-11-16 12:32:50', '2022-11-16 12:32:50', '', 0, 'http://brist.loc/?p=35', 1, 'post', '', 0),
(36, 1, '2022-11-08 07:41:52', '2022-11-08 07:41:52', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical-5', '', '', '2022-11-16 12:33:01', '2022-11-16 12:33:01', '', 0, 'http://brist.loc/?p=36', 4, 'post', '', 0),
(37, 1, '2022-11-08 07:40:45', '2022-11-08 07:40:45', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-08 07:40:45', '2022-11-08 07:40:45', '', 33, 'http://brist.loc/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-11-08 07:41:15', '2022-11-08 07:41:15', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-08 07:41:15', '2022-11-08 07:41:15', '', 34, 'http://brist.loc/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-11-08 07:41:30', '2022-11-08 07:41:30', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-11-08 07:41:30', '2022-11-08 07:41:30', '', 35, 'http://brist.loc/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-11-08 07:41:52', '2022-11-08 07:41:52', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-08 07:41:52', '2022-11-08 07:41:52', '', 36, 'http://brist.loc/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-11-08 07:43:18', '2022-11-08 07:43:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Front page', 'front-page', 'publish', 'closed', 'closed', '', 'group_636a0852d35f5', '', '', '2022-11-10 13:24:07', '2022-11-10 13:24:07', '', 0, 'http://brist.loc/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2022-11-08 07:43:18', '2022-11-08 07:43:18', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:2:\"id\";s:3:\"min\";i:3;s:3:\"max\";i:10;s:8:\"elements\";s:0:\"\";}', 'Featured posts', 'featured_posts', 'publish', 'closed', 'closed', '', 'field_636a085322e06', '', '', '2022-11-08 14:33:48', '2022-11-08 14:33:48', '', 41, 'http://brist.loc/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(50, 1, '2022-11-08 12:35:37', '2022-11-08 12:35:37', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2022-11-28 07:32:05', '2022-11-28 07:32:05', '', 0, 'http://brist.loc/?page_id=50', 1, 'page', '', 0),
(51, 1, '2022-11-08 12:35:37', '2022-11-08 12:35:37', '', 'Services', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-11-08 12:35:37', '2022-11-08 12:35:37', '', 50, 'http://brist.loc/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-11-08 12:35:46', '2022-11-08 12:35:46', '', 'Meet us', '', 'publish', 'closed', 'closed', '', 'meet-us', '', '', '2022-11-09 13:37:51', '2022-11-09 13:37:51', '', 0, 'http://brist.loc/?page_id=52', 2, 'page', '', 0),
(53, 1, '2022-11-08 12:35:46', '2022-11-08 12:35:46', '', 'Meet us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-11-08 12:35:46', '2022-11-08 12:35:46', '', 52, 'http://brist.loc/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-11-08 12:35:57', '2022-11-08 12:35:57', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-11-11 09:57:20', '2022-11-11 09:57:20', '', 0, 'http://brist.loc/?page_id=54', 3, 'page', '', 0),
(55, 1, '2022-11-08 12:35:57', '2022-11-08 12:35:57', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2022-11-08 12:35:57', '2022-11-08 12:35:57', '', 54, 'http://brist.loc/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-11-10 13:47:08', '2022-11-08 12:36:18', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2022-11-10 13:47:08', '2022-11-10 13:47:08', '', 0, 'http://brist.loc/?p=56', 4, 'nav_menu_item', '', 0),
(57, 1, '2022-11-10 13:47:07', '2022-11-08 12:36:18', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2022-11-10 13:47:07', '2022-11-10 13:47:07', '', 0, 'http://brist.loc/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2022-11-10 13:47:07', '2022-11-08 12:36:18', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2022-11-10 13:47:07', '2022-11-10 13:47:07', '', 0, 'http://brist.loc/?p=58', 2, 'nav_menu_item', '', 0),
(59, 1, '2022-11-08 13:49:12', '2022-11-08 13:49:12', '', 'Name of Project Vertical', '', 'publish', 'open', 'open', '', 'name-of-project-vertical-6', '', '', '2022-11-16 12:32:59', '2022-11-16 12:32:59', '', 0, 'http://brist.loc/?p=59', 3, 'post', '', 0),
(60, 1, '2022-11-08 13:49:05', '2022-11-08 13:49:05', '', 'image 9-min', '', 'inherit', 'open', 'closed', '', 'image-9-min', '', '', '2022-11-08 13:49:05', '2022-11-08 13:49:05', '', 59, 'http://brist.loc/wp-content/uploads/2022/11/image-9-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2022-11-08 13:49:12', '2022-11-08 13:49:12', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-11-08 13:49:12', '2022-11-08 13:49:12', '', 59, 'http://brist.loc/?p=61', 0, 'revision', '', 0),
(62, 1, '2022-11-08 14:33:48', '2022-11-08 14:33:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Blockquote', 'blockquote', 'publish', 'closed', 'closed', '', 'field_636a68842b88a', '', '', '2022-11-08 14:33:48', '2022-11-08 14:33:48', '', 41, 'http://brist.loc/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2022-11-08 14:33:48', '2022-11-08 14:33:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Author name', 'author_name', 'publish', 'closed', 'closed', '', 'field_636a68b52b88b', '', '', '2022-11-08 14:33:48', '2022-11-08 14:33:48', '', 41, 'http://brist.loc/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(65, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-services.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Services page', 'services-page', 'publish', 'closed', 'closed', '', 'group_636b608b92630', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 0, 'http://brist.loc/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:12:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', '', 'services', 'publish', 'closed', 'closed', '', 'field_636b608bb9993', '', '', '2022-11-09 08:23:54', '2022-11-09 08:23:54', '', 65, 'http://brist.loc/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_636b60b0b9994', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=67', 2, 'acf-field', '', 0),
(68, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"65\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_636b60bfb9995', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=68', 3, 'acf-field', '', 0),
(69, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{i:1;s:9:\"2/3 + 1/3\";i:2;s:3:\"3/3\";i:3;s:9:\"1/3 + 2/3\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Layout', 'layout', 'publish', 'closed', 'closed', '', 'field_636b60f6b9996', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Project 1 - image', 'project_1_image', 'publish', 'closed', 'closed', '', 'field_636b6190b9997', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=70', 8, 'acf-field', '', 0),
(71, 1, '2022-11-09 08:16:50', '2022-11-09 08:16:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Project 2 - Image', 'project_2_image', 'publish', 'closed', 'closed', '', 'field_636b61bdb9998', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=71', 14, 'acf-field', '', 0),
(72, 1, '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 'Services', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-11-09 08:23:27', '2022-11-09 08:23:27', '', 50, 'http://brist.loc/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-meet-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Meet us page', 'meet-us-page', 'publish', 'closed', 'closed', '', 'group_636b78f706a26', '', '', '2022-11-09 10:07:51', '2022-11-09 10:07:51', '', 0, 'http://brist.loc/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Blockquote', 'blockquote', 'publish', 'closed', 'closed', '', 'field_636b78f7f66bb', '', '', '2022-11-09 10:07:51', '2022-11-09 10:07:51', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=74', 1, 'acf-field', '', 0),
(75, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_636b7939f66bc', '', '', '2022-11-09 10:07:51', '2022-11-09 10:07:51', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=75', 2, 'acf-field', '', 0),
(76, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:12:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', '', 'team', 'publish', 'closed', 'closed', '', 'field_636b7951f66bd', '', '', '2022-11-09 10:07:01', '2022-11-09 10:07:01', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=76', 4, 'acf-field', '', 0),
(77, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:9:\"thumbnail\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_636b796df66be', '', '', '2022-11-09 10:05:16', '2022-11-09 10:05:16', '', 76, 'http://brist.loc/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_636b798ff66bf', '', '', '2022-11-09 10:00:57', '2022-11-09 10:00:57', '', 76, 'http://brist.loc/?post_type=acf-field&p=78', 1, 'acf-field', '', 0),
(79, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_636b799af66c0', '', '', '2022-11-09 10:00:57', '2022-11-09 10:00:57', '', 76, 'http://brist.loc/?post_type=acf-field&p=79', 2, 'acf-field', '', 0),
(80, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:12:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', '', 'careers', 'publish', 'closed', 'closed', '', 'field_636b79c3f66c1', '', '', '2022-11-09 10:07:02', '2022-11-09 10:07:02', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=80', 6, 'acf-field', '', 0),
(81, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Job vacancy', 'job_vacancy', 'publish', 'closed', 'closed', '', 'field_636b79ebf66c2', '', '', '2022-11-09 10:00:57', '2022-11-09 10:00:57', '', 80, 'http://brist.loc/?post_type=acf-field&p=81', 0, 'acf-field', '', 0),
(82, 1, '2022-11-09 10:00:57', '2022-11-09 10:00:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Job description', 'job_description', 'publish', 'closed', 'closed', '', 'field_636b7a40f66c3', '', '', '2022-11-09 10:04:54', '2022-11-09 10:04:54', '', 80, 'http://brist.loc/?post_type=acf-field&#038;p=82', 1, 'acf-field', '', 0),
(83, 1, '2022-11-09 10:03:30', '2022-11-09 10:03:30', '', 'Screenshot 2022-01-04 at 21.02 2', '', 'inherit', 'open', 'closed', '', 'screenshot-2022-01-04-at-21-02-2', '', '', '2022-11-09 10:03:30', '2022-11-09 10:03:30', '', 52, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot-2022-01-04-at-21.02-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2022-11-09 10:05:18', '2022-11-09 10:05:18', '', 'Meet us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-11-09 10:05:18', '2022-11-09 10:05:18', '', 52, 'http://brist.loc/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-11-09 10:06:11', '2022-11-09 10:06:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'field_636b7b707f88f', '', '', '2022-11-09 10:07:01', '2022-11-09 10:07:01', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=85', 3, 'acf-field', '', 0),
(86, 1, '2022-11-09 10:06:11', '2022-11-09 10:06:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Careers', 'team_copy', 'publish', 'closed', 'closed', '', 'field_636b7b7a7f890', '', '', '2022-11-09 10:07:01', '2022-11-09 10:07:01', '', 73, 'http://brist.loc/?post_type=acf-field&#038;p=86', 5, 'acf-field', '', 0),
(87, 1, '2022-11-09 10:07:01', '2022-11-09 10:07:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Content', '_copy', 'publish', 'closed', 'closed', '', 'field_636b7bba8a532', '', '', '2022-11-09 10:07:01', '2022-11-09 10:07:01', '', 73, 'http://brist.loc/?post_type=acf-field&p=87', 0, 'acf-field', '', 0),
(88, 1, '2022-11-09 12:57:01', '2022-11-09 12:57:01', '', 'Meet us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-11-09 12:57:01', '2022-11-09 12:57:01', '', 52, 'http://brist.loc/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-11-09 13:37:51', '2022-11-09 13:37:51', '', 'Meet us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-11-09 13:37:51', '2022-11-09 13:37:51', '', 52, 'http://brist.loc/?p=89', 0, 'revision', '', 0),
(91, 1, '2022-11-10 09:37:07', '2022-11-10 09:37:07', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Work', 'work', 'publish', 'closed', 'closed', '', 'group_636cc57ee1aab', '', '', '2022-11-16 12:32:34', '2022-11-16 12:32:34', '', 0, 'http://brist.loc/?post_type=acf-field-group&#038;p=91', 0, 'acf-field-group', '', 0),
(92, 1, '2022-11-10 09:37:07', '2022-11-10 09:37:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Architects name', 'architects_name', 'publish', 'closed', 'closed', '', 'field_636cc57f4385f', '', '', '2022-11-10 09:37:07', '2022-11-10 09:37:07', '', 91, 'http://brist.loc/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2022-11-10 09:37:07', '2022-11-10 09:37:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_636cc5ba43860', '', '', '2022-11-10 09:37:07', '2022-11-10 09:37:07', '', 91, 'http://brist.loc/?post_type=acf-field&p=93', 1, 'acf-field', '', 0),
(94, 1, '2022-11-10 09:37:07', '2022-11-10 09:37:07', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:39:\"Paste the URL of the YouTube video page\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_637398062edf6\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"youtube\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_636cc5db43861', '', '', '2022-11-16 08:24:22', '2022-11-16 08:24:22', '', 91, 'http://brist.loc/?post_type=acf-field&#038;p=94', 3, 'acf-field', '', 0),
(95, 1, '2022-11-10 09:39:12', '2022-11-10 09:39:12', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-10 09:39:12', '2022-11-10 09:39:12', '', 33, 'http://brist.loc/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-11-10 09:39:58', '2022-11-10 09:39:58', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-10 09:39:58', '2022-11-10 09:39:58', '', 34, 'http://brist.loc/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-11-10 09:40:00', '2022-11-10 09:40:00', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-11-10 09:40:00', '2022-11-10 09:40:00', '', 35, 'http://brist.loc/?p=97', 0, 'revision', '', 0),
(98, 1, '2022-11-10 09:40:01', '2022-11-10 09:40:01', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-10 09:40:01', '2022-11-10 09:40:01', '', 36, 'http://brist.loc/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-11-10 09:40:03', '2022-11-10 09:40:03', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-11-10 09:40:03', '2022-11-10 09:40:03', '', 59, 'http://brist.loc/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-11-10 09:40:05', '2022-11-10 09:40:05', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-11-10 09:40:05', '2022-11-10 09:40:05', '', 1, 'http://brist.loc/?p=100', 0, 'revision', '', 0),
(102, 1, '2022-11-10 13:47:07', '2022-11-10 13:47:07', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2022-11-10 13:47:07', '2022-11-10 13:47:07', '', 0, 'http://brist.loc/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2022-11-10 14:59:57', '2022-11-10 14:59:57', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-10 14:59:57', '2022-11-10 14:59:57', '', 33, 'http://brist.loc/?p=103', 0, 'revision', '', 0),
(105, 1, '2022-11-15 13:34:25', '2022-11-15 13:34:25', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_637398062edf6\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"iframe\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Iframe', 'iframe', 'publish', 'closed', 'closed', '', 'field_637395515128f', '', '', '2022-11-16 12:32:34', '2022-11-16 12:32:34', '', 91, 'http://brist.loc/?post_type=acf-field&#038;p=105', 6, 'acf-field', '', 0),
(106, 1, '2022-11-15 13:34:46', '2022-11-15 13:34:46', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-11-15 13:34:46', '2022-11-15 13:34:46', '', 59, 'http://brist.loc/?p=106', 0, 'revision', '', 0),
(107, 1, '2022-11-15 13:47:25', '2022-11-15 13:47:25', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:5:\"image\";s:5:\"image\";s:7:\"youtube\";s:7:\"youtube\";s:9:\"videofile\";s:9:\"videofile\";s:6:\"iframe\";s:6:\"iframe\";}s:13:\"default_value\";s:5:\"image\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:10:\"horizontal\";s:17:\"save_other_choice\";i:0;}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_637398062edf6', '', '', '2022-11-16 12:32:34', '2022-11-16 12:32:34', '', 91, 'http://brist.loc/?post_type=acf-field&#038;p=107', 2, 'acf-field', '', 0),
(108, 1, '2022-11-15 13:52:35', '2022-11-15 13:52:35', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-11-15 13:52:35', '2022-11-15 13:52:35', '', 59, 'http://brist.loc/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-11-15 13:55:40', '2022-11-15 13:55:40', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-15 13:55:40', '2022-11-15 13:55:40', '', 34, 'http://brist.loc/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-11-15 13:55:45', '2022-11-15 13:55:45', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-11-15 13:55:45', '2022-11-15 13:55:45', '', 35, 'http://brist.loc/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-11-15 13:55:51', '2022-11-15 13:55:51', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-15 13:55:51', '2022-11-15 13:55:51', '', 36, 'http://brist.loc/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-11-15 13:55:55', '2022-11-15 13:55:55', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-15 13:55:55', '2022-11-15 13:55:55', '', 33, 'http://brist.loc/?p=112', 0, 'revision', '', 0),
(113, 1, '2022-11-15 13:56:48', '2022-11-15 13:56:48', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-15 13:56:48', '2022-11-15 13:56:48', '', 34, 'http://brist.loc/?p=113', 0, 'revision', '', 0),
(114, 1, '2022-11-15 13:56:51', '2022-11-15 13:56:51', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-11-15 13:56:51', '2022-11-15 13:56:51', '', 35, 'http://brist.loc/?p=114', 0, 'revision', '', 0),
(115, 1, '2022-11-15 13:56:55', '2022-11-15 13:56:55', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-11-15 13:56:55', '2022-11-15 13:56:55', '', 59, 'http://brist.loc/?p=115', 0, 'revision', '', 0),
(116, 1, '2022-11-15 13:56:59', '2022-11-15 13:56:59', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-15 13:56:59', '2022-11-15 13:56:59', '', 36, 'http://brist.loc/?p=116', 0, 'revision', '', 0),
(117, 1, '2022-11-15 13:57:03', '2022-11-15 13:57:03', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-15 13:57:03', '2022-11-15 13:57:03', '', 33, 'http://brist.loc/?p=117', 0, 'revision', '', 0),
(118, 1, '2022-11-16 08:24:22', '2022-11-16 08:24:22', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_637398062edf6\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"videofile\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"mp4\";}', 'MP4', 'mp4', 'publish', 'closed', 'closed', '', 'field_63749de96a384', '', '', '2022-11-16 12:32:34', '2022-11-16 12:32:34', '', 91, 'http://brist.loc/?post_type=acf-field&#038;p=118', 4, 'acf-field', '', 0),
(119, 1, '2022-11-16 08:31:11', '2022-11-16 08:31:11', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-11-16 08:31:11', '2022-11-16 08:31:11', '', 34, 'http://brist.loc/?p=119', 0, 'revision', '', 0),
(120, 1, '2022-11-16 08:34:39', '2022-11-16 08:34:39', '', 'Ink in Water Background (720p)', '', 'inherit', 'open', 'closed', '', 'ink-in-water-background-720p', '', '', '2022-11-16 08:34:39', '2022-11-16 08:34:39', '', 33, 'http://brist.loc/wp-content/uploads/2022/11/Ink-in-Water-Background-720p.mp4', 0, 'attachment', 'video/mp4', 0),
(121, 1, '2022-11-16 08:34:46', '2022-11-16 08:34:46', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-16 08:34:46', '2022-11-16 08:34:46', '', 33, 'http://brist.loc/?p=121', 0, 'revision', '', 0),
(122, 1, '2022-11-16 09:12:48', '2022-11-16 09:12:48', '', 'Screenshot_1', '', 'inherit', 'open', 'closed', '', 'screenshot_1', '', '', '2022-11-16 09:12:48', '2022-11-16 09:12:48', '', 59, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2022-11-16 12:32:34', '2022-11-16 12:32:34', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_637398062edf6\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"videofile\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:4:\"webm\";}', 'WEBM', 'webm', 'publish', 'closed', 'closed', '', 'field_6374d5bf9e583', '', '', '2022-11-16 12:32:34', '2022-11-16 12:32:34', '', 91, 'http://brist.loc/?post_type=acf-field&p=123', 5, 'acf-field', '', 0),
(124, 1, '2022-11-16 12:33:20', '2022-11-16 12:33:20', '', 'videoplayback', '', 'inherit', 'open', 'closed', '', 'videoplayback', '', '', '2022-11-16 12:33:20', '2022-11-16 12:33:20', '', 33, 'http://brist.loc/wp-content/uploads/2022/11/videoplayback.webm', 0, 'attachment', 'video/webm', 0),
(125, 1, '2022-11-16 12:33:35', '2022-11-16 12:33:35', '', 'Name of Project Vertical', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-11-16 12:33:35', '2022-11-16 12:33:35', '', 33, 'http://brist.loc/?p=125', 0, 'revision', '', 0),
(126, 1, '2022-11-16 14:01:33', '2022-11-16 14:01:33', '', 'Screenshot_1', '', 'inherit', 'open', 'closed', '', 'screenshot_1-2', '', '', '2022-11-16 14:01:33', '2022-11-16 14:01:33', '', 33, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2022-11-28 07:13:10', '2022-11-28 07:13:10', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Project 1 url', 'project_1_url', 'publish', 'closed', 'closed', '', 'field_63845f2c73abc', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=128', 9, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2022-11-28 07:14:37', '2022-11-28 07:14:37', '', 'Services', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-11-28 07:14:37', '2022-11-28 07:14:37', '', 50, 'http://brist.loc/?p=130', 0, 'revision', '', 0),
(131, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 1 - Name', 'project_1_name', 'publish', 'closed', 'closed', '', 'field_6384603898083', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=131', 5, 'acf-field', '', 0),
(132, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 1 - Architects name', 'project_1_architects_name', 'publish', 'closed', 'closed', '', 'field_6384607098084', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=132', 6, 'acf-field', '', 0),
(133, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 1 - Location', 'project_1_location', 'publish', 'closed', 'closed', '', 'field_638460b298085', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=133', 7, 'acf-field', '', 0),
(134, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 2 - Name', 'project_2_name', 'publish', 'closed', 'closed', '', 'field_638460c898086', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=134', 11, 'acf-field', '', 0),
(135, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 2 - Architects name', 'project_2_architects_name', 'publish', 'closed', 'closed', '', 'field_6384610198087', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=135', 12, 'acf-field', '', 0),
(136, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project 2 - Location', 'project_2_location', 'publish', 'closed', 'closed', '', 'field_6384610498088', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=136', 13, 'acf-field', '', 0),
(137, 1, '2022-11-28 07:24:08', '2022-11-28 07:24:08', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Project 2 - url', 'project_2_url', 'publish', 'closed', 'closed', '', 'field_6384613c98089', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=137', 15, 'acf-field', '', 0),
(138, 1, '2022-11-28 07:26:01', '2022-11-28 07:26:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Project 1', 'project_1', 'publish', 'closed', 'closed', '', 'field_63846239fd085', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=138', 4, 'acf-field', '', 0),
(139, 1, '2022-11-28 07:26:01', '2022-11-28 07:26:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_636b60f6b9996\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"2\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Project 2', 'project_2', 'publish', 'closed', 'closed', '', 'field_63846273fd086', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&#038;p=139', 10, 'acf-field', '', 0),
(140, 1, '2022-11-28 07:30:57', '2022-11-28 07:30:57', '', 'Services', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-11-28 07:30:57', '2022-11-28 07:30:57', '', 50, 'http://brist.loc/?p=140', 0, 'revision', '', 0),
(141, 1, '2022-11-28 07:31:33', '2022-11-28 07:31:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Service info', 'service_info', 'publish', 'closed', 'closed', '', 'field_638463bfb805c', '', '', '2022-11-28 07:31:33', '2022-11-28 07:31:33', '', 66, 'http://brist.loc/?post_type=acf-field&p=141', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 1),
(2, 'Main menu', 'main-menu', 0, 0),
(3, 'Social', 'social', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(33, 1, 0),
(34, 1, 0),
(35, 1, 0),
(36, 1, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 1, 0),
(102, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'smplfy-dev'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"dfb29d5a4d8e321b3c1b3db51c77b5d8ab7b1c06912cfeca7375657269e1eeae\";a:4:{s:10:\"expiration\";i:1669792255;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1669619455;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '127'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:470:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"http://brist.loc/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"1e2a8b60ba\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:10:\"smplfy-dev\";s:9:\"user_pass\";s:34:\"$P$BqjSjMAdIcpYCAMO6xqVyAgnMBZaij/\";s:13:\"user_nicename\";s:10:\"smplfy-dev\";s:10:\"user_email\";s:30:\"sergii.bystranivskyi@smplfy.eu\";s:8:\"user_url\";s:16:\"http://brist.loc\";s:15:\"user_registered\";s:19:\"2022-11-07 07:50:08\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"smplfy-dev\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:288:\"<p>Because of a change in your category base setting, some of your SEO data needs to be reprocessed.</p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"http://brist.loc/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:10:\"smplfy-dev\";s:9:\"user_pass\";s:34:\"$P$BqjSjMAdIcpYCAMO6xqVyAgnMBZaij/\";s:13:\"user_nicename\";s:10:\"smplfy-dev\";s:10:\"user_email\";s:30:\"sergii.bystranivskyi@smplfy.eu\";s:8:\"user_url\";s:16:\"http://brist.loc\";s:15:\"user_registered\";s:19:\"2022-11-07 07:50:08\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"smplfy-dev\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:313:\"You are not receiving updates or support! Fix this problem by adding this site and enabling Yoast SEO Premium for it in <a href=\"https://yoa.st/13j?php_version=7.4&platform=wordpress&platform_version=6.1.1&software=premium&software_version=19.10&days_active=6-30&user_language=en_US\" target=\"_blank\">My Yoast</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:31:\"wpseo-dismiss-yoast-seo-premium\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:10:\"smplfy-dev\";s:9:\"user_pass\";s:34:\"$P$BqjSjMAdIcpYCAMO6xqVyAgnMBZaij/\";s:13:\"user_nicename\";s:10:\"smplfy-dev\";s:10:\"user_email\";s:30:\"sergii.bystranivskyi@smplfy.eu\";s:8:\"user_url\";s:16:\"http://brist.loc\";s:15:\"user_registered\";s:19:\"2022-11-07 07:50:08\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"smplfy-dev\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:10:\"copy_posts\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(20, 1, '_yoast_wpseo_profile_updated', '1667829915'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(22, 1, 'wp_user-settings-time', '1667981876'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'wpseo_title', ''),
(26, 1, 'wpseo_metadesc', ''),
(27, 1, 'wpseo_noindex_author', ''),
(28, 1, 'wpseo_content_analysis_disable', ''),
(29, 1, 'wpseo_keyword_analysis_disable', ''),
(30, 1, 'wpseo_user_schema', 'a:0:{}'),
(31, 1, 'facebook', ''),
(32, 1, 'instagram', ''),
(33, 1, 'linkedin', ''),
(34, 1, 'myspace', ''),
(35, 1, 'pinterest', ''),
(36, 1, 'soundcloud', ''),
(37, 1, 'tumblr', ''),
(38, 1, 'twitter', ''),
(39, 1, 'youtube', ''),
(40, 1, 'wikipedia', ''),
(41, 1, 'nav_menu_recently_edited', '2'),
(42, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:59:\"submitdiv,pageparentdiv,postimagediv,yoast_internal_linking\";s:6:\"normal\";s:81:\"acf-group_636a0852d35f5,wpseo_meta,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(43, 1, 'screen_layout_page', '2'),
(44, 1, 'closedpostboxes_page', 'a:2:{i:0;s:22:\"yoast_internal_linking\";i:1;s:10:\"wpseo_meta\";}'),
(45, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"postimagediv\";i:1;s:10:\"ao_metabox\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(46, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:2:{i:0;s:15:\"acf-description\";i:1;s:7:\"acf-key\";}'),
(47, 1, 'edit_acf-field-group_per_page', '20'),
(48, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_636cc57ee1aab\";s:4:\"side\";s:85:\"submitdiv,categorydiv,tagsdiv-post_tag,ao_metabox,postimagediv,yoast_internal_linking\";s:6:\"normal\";s:83:\"wpseo_meta,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(49, 1, 'screen_layout_post', '2'),
(50, 1, 'closedpostboxes_post', 'a:2:{i:0;s:22:\"yoast_internal_linking\";i:1;s:10:\"wpseo_meta\";}'),
(51, 1, 'metaboxhidden_post', 'a:9:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:10:\"ao_metabox\";i:3;s:11:\"postexcerpt\";i:4;s:13:\"trackbacksdiv\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'smplfy-dev', '$P$BqjSjMAdIcpYCAMO6xqVyAgnMBZaij/', 'smplfy-dev', 'sergii.bystranivskyi@smplfy.eu', 'http://brist.loc', '2022-11-07 07:50:08', '', 0, 'smplfy-dev');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://brist.loc/author/smplfy-dev/', '35:cd099288c39554bb72f19d1f5f7cf694', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/382e8d4ff7aadf83215c015ca918009c?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/382e8d4ff7aadf83215c015ca918009c?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-12-16 07:50:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-28 07:32:05', '2022-11-07 07:50:08'),
(2, 'http://brist.loc/?page_id=3', '27:442f7a5c87dc14e350a3886bb386555c', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-11-08 09:28:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-07 07:50:08', '2022-11-07 07:50:08'),
(4, 'http://brist.loc/name-of-project-vertical/', '42:1aa96a44f178c578785c55916256e104', 1, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', NULL, '31', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', '31', 'featured-image', '{\"width\":2269,\"height\":1359,\"filesize\":399863,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg\",\"size\":\"full\",\"id\":31,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-07 07:51:30', '2022-11-16 09:33:06', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 12:33:06', '2022-11-07 07:50:08'),
(5, 'http://brist.loc/./uncategorized/', '33:08bf5205b261e9975f5075717457d8f7', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 07:51:30', '2022-11-16 11:01:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-16 14:01:45', '2022-11-07 07:50:08'),
(6, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-11-08 11:04:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(7, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-11-08 11:35:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(8, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-11-08 11:35:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(9, 'http://brist.loc/', '17:36956ec861bb4b30600f7efb57bcdcad', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:51:30', '2022-12-16 07:50:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-28 07:32:05', '2022-11-07 07:50:08'),
(12, 'http://brist.loc/wp-content/uploads/2022/11/Brist-logo-black.png', '64:a0ef42099b5dece60ed992c7750b6a0e', 9, 'post', 'attachment', 1, 0, NULL, NULL, 'Brist logo black', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Brist-logo-black.png', NULL, '9', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Brist-logo-black.png', '9', 'attachment-image', '{\"width\":382,\"height\":168,\"filesize\":2785,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/Brist-logo-black.png\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/Brist-logo-black.png\",\"size\":\"full\",\"id\":9,\"alt\":\"\",\"pixels\":64176,\"type\":\"image/png\"}', NULL, NULL, NULL, '2022-11-07 08:11:56', '2022-11-08 11:35:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-07 08:11:56', '2022-11-07 08:11:56'),
(20, NULL, NULL, 16, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Behance', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 13:26:23', '2022-11-08 07:57:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-11-07 14:35:59', '2022-11-07 13:26:42'),
(21, NULL, NULL, 17, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Facebook', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 13:26:30', '2022-11-08 07:57:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-11-07 14:35:59', '2022-11-07 13:26:42'),
(22, NULL, NULL, 18, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Instagram', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 13:26:36', '2022-11-08 07:57:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-11-07 14:35:59', '2022-11-07 13:26:42'),
(23, NULL, NULL, 19, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Linkedin', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 13:26:40', '2022-11-08 07:57:50', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-11-07 14:35:59', '2022-11-07 13:26:42'),
(24, 'http://brist.loc/?post_type=acf-field-group&p=20', '48:14e60ecbde8f00ecb9191ea7c8faa08b', 20, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'General', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 13:40:17', '2022-11-10 10:24:54', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:24:54', '2022-11-07 13:40:17'),
(27, 'http://brist.loc/?post_type=acf-field&p=23', '42:d54ab50d595d05638273490e99d58486', 23, 'post', 'acf-field', 1, 20, NULL, NULL, 'Email', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 14:27:08', '2022-11-10 10:24:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-10 13:24:54', '2022-11-07 14:27:08'),
(28, 'http://brist.loc/?post_type=acf-field&p=24', '42:c006df6a5bf5cf12cdcecc8ee8755976', 24, 'post', 'acf-field', 1, 20, NULL, NULL, 'Tel', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 14:27:08', '2022-11-10 10:24:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-10 13:24:54', '2022-11-07 14:27:08'),
(29, 'http://brist.loc/?post_type=acf-field&p=25', '42:026e73684b3487bf41592929910ceb1d', 25, 'post', 'acf-field', 1, 20, NULL, NULL, 'Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 14:27:08', '2022-11-10 10:24:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-10 13:24:54', '2022-11-07 14:27:08'),
(30, 'http://brist.loc/?post_type=acf-field&p=26', '42:d8c55126c30bbcdd19dce4e8f3a6d291', 26, 'post', 'acf-field', 1, 20, NULL, NULL, 'Map', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-07 14:37:53', '2022-11-10 10:24:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-10 13:24:54', '2022-11-07 14:37:53'),
(31, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', '84:8cec37bd2953dbdb588370c7cc7e77ba', 27, 'post', 'attachment', 1, 50, NULL, NULL, '319_Gardner_exterior_view_01_Final 1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', NULL, '27', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', '27', 'attachment-image', '{\"width\":2269,\"height\":1359,\"filesize\":413722,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg\",\"size\":\"full\",\"id\":27,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2022-11-08 07:38:13', '2022-11-09 05:23:27', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 08:23:27', '2022-11-08 07:38:13'),
(32, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', '71:631c215aa5d3a47a19781d2899dfd038', 28, 'post', 'attachment', 1, 50, NULL, NULL, 'Rusanivka_Viiew_09_v8 1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', NULL, '28', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', '28', 'attachment-image', '{\"width\":2269,\"height\":1359,\"filesize\":349100,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg\",\"size\":\"full\",\"id\":28,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2022-11-08 07:38:15', '2022-11-09 05:23:27', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 08:23:27', '2022-11-08 07:38:15'),
(33, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', '68:50e7fcc736dea3218c6983560dbfa634', 29, 'post', 'attachment', 1, 50, NULL, NULL, 'unsplash_eqnfN4WX2jQ', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', NULL, '29', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', '29', 'attachment-image', '{\"width\":2269,\"height\":1293,\"filesize\":509598,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg\",\"size\":\"full\",\"id\":29,\"alt\":\"\",\"pixels\":2933817,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2022-11-08 07:38:17', '2022-11-09 05:23:27', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 08:23:27', '2022-11-08 07:38:17'),
(34, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg', '70:cc5bd2359f3bded933ae3b5dc2037b0b', 30, 'post', 'attachment', 1, 50, NULL, NULL, 'unsplash_eqnfN4WX2jQ-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg', NULL, '30', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg', '30', 'attachment-image', '{\"width\":2269,\"height\":1359,\"filesize\":299623,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-1.jpg\",\"size\":\"full\",\"id\":30,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2022-11-08 07:38:18', '2022-11-09 05:23:27', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 08:23:27', '2022-11-08 07:38:18'),
(35, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', '70:a172faf5a01f7dafd7e703b3cb65f577', 31, 'post', 'attachment', 1, 50, NULL, NULL, 'unsplash_eqnfN4WX2jQ-2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', NULL, '31', 'attachment-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg', '31', 'attachment-image', '{\"width\":2269,\"height\":1359,\"filesize\":399863,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ-2.jpg\",\"size\":\"full\",\"id\":31,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2022-11-08 07:38:20', '2022-11-28 04:30:57', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:30:57', '2022-11-08 07:38:20'),
(36, 'http://brist.loc/name-of-project-vertical-2/', '44:e11c1d4871888ef1d7505025239d4511', 33, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1-scaled.jpg', NULL, '126', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1-scaled.jpg', '126', 'featured-image', '{\"width\":2560,\"height\":1439,\"filesize\":183252,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1-scaled.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/Screenshot_1-1-scaled.jpg\",\"size\":\"full\",\"id\":126,\"alt\":\"\",\"pixels\":3683840,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-08 07:40:20', '2022-11-16 11:01:45', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 14:01:45', '2022-11-08 07:40:45'),
(37, 'http://brist.loc/name-of-project-vertical-3/', '44:4669c8fe79dadddc1883f9633a6f36d2', 34, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', NULL, '29', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg', '29', 'featured-image', '{\"width\":2269,\"height\":1293,\"filesize\":509598,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/unsplash_eqnfN4WX2jQ.jpg\",\"size\":\"full\",\"id\":29,\"alt\":\"\",\"pixels\":2933817,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-08 07:40:25', '2022-11-16 09:33:04', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 12:33:04', '2022-11-08 07:41:15'),
(38, 'http://brist.loc/name-of-project-vertical-4/', '44:fd44672c881966535e3736329ea14a2c', 35, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', NULL, '28', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg', '28', 'featured-image', '{\"width\":2269,\"height\":1359,\"filesize\":349100,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/Rusanivka_Viiew_09_v8-1.jpg\",\"size\":\"full\",\"id\":28,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-08 07:40:29', '2022-11-16 09:32:50', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 12:32:50', '2022-11-08 07:41:30'),
(39, 'http://brist.loc/name-of-project-vertical-5/', '44:76055dfd6b6d6bd102c65642d650a640', 36, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', NULL, '27', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg', '27', 'featured-image', '{\"width\":2269,\"height\":1359,\"filesize\":413722,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/319_Gardner_exterior_view_01_Final-1.jpg\",\"size\":\"full\",\"id\":27,\"alt\":\"\",\"pixels\":3083571,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-08 07:40:33', '2022-11-16 09:33:01', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 12:33:01', '2022-11-08 07:41:52'),
(40, 'http://brist.loc/?post_type=acf-field-group&p=41', '48:c29c3a30de4281279a6e1e0470a24575', 41, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Front page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 07:43:18', '2022-11-10 10:24:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:24:07', '2022-11-08 07:43:18'),
(41, 'http://brist.loc/?post_type=acf-field&p=42', '42:754bee108a641c713c962fead447a8c1', 42, 'post', 'acf-field', 1, 41, NULL, NULL, 'Featured posts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 07:43:18', '2022-11-08 11:33:48', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-08 14:33:48', '2022-11-08 07:43:18'),
(46, 'http://brist.loc/services/', '26:a09d206effbec3ac49785cdd6e39ddb4', 50, 'post', 'page', 1, 0, NULL, NULL, 'Services', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:35:37', '2022-11-28 04:32:05', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-28 07:32:05', '2022-11-08 12:35:37'),
(47, 'http://brist.loc/meet-us/', '25:eedfd5aa1c323addb31bd456f77cd0e6', 52, 'post', 'page', 1, 0, NULL, NULL, 'Meet us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:35:46', '2022-11-09 10:37:51', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-09 13:37:51', '2022-11-08 12:35:46'),
(48, 'http://brist.loc/contact/', '25:3653eac2b2cf863c7c5a20a8225eb25f', 54, 'post', 'page', 1, 0, NULL, NULL, 'Contact', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:35:57', '2022-11-11 06:57:20', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-11 09:57:20', '2022-11-08 12:35:57'),
(49, 'http://brist.loc/56/', '20:4c190fc4a7dfe5f409a457ca043e8129', 56, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:36:05', '2022-11-10 10:47:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:47:08', '2022-11-08 12:36:18'),
(50, 'http://brist.loc/57/', '20:2d74f230705baf76b691f8446707f981', 57, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:36:05', '2022-11-10 10:47:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:47:07', '2022-11-08 12:36:18'),
(51, 'http://brist.loc/58/', '20:99bca881486cbea506f8d12815150961', 58, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 12:36:05', '2022-11-10 10:47:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:47:07', '2022-11-08 12:36:18'),
(52, 'http://brist.loc/name-of-project-vertical-6/', '44:ef3c042a2afa8fa076233fbbd56e07fe', 59, 'post', 'post', 1, 0, NULL, NULL, 'Name of Project Vertical', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-scaled.jpg', NULL, '122', 'featured-image', NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-scaled.jpg', '122', 'featured-image', '{\"width\":2560,\"height\":1276,\"filesize\":260817,\"url\":\"http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-scaled.jpg\",\"path\":\"D:\\\\domains\\\\brist/wp-content/uploads/2022/11/Screenshot_1-scaled.jpg\",\"size\":\"full\",\"id\":122,\"alt\":\"\",\"pixels\":3266560,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2022-11-08 13:48:54', '2022-11-16 09:32:59', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-11-16 12:32:59', '2022-11-08 13:49:12'),
(53, 'http://brist.loc/wp-content/uploads/2022/11/image-9-min.jpg', '59:7de088e4bf6219b8ebddffd921521dd0', 60, 'post', 'attachment', 1, 59, NULL, NULL, 'image 9-min', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/image-9-min.jpg', NULL, '60', 'attachment-image', NULL, NULL, NULL, '60', 'attachment-image', NULL, NULL, NULL, NULL, '2022-11-08 13:49:05', '2022-11-08 13:49:12', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-08 13:49:05', '2022-11-08 13:49:05'),
(54, 'http://brist.loc/?post_type=acf-field&p=62', '42:8293868465205eefcf15be47a707430c', 62, 'post', 'acf-field', 1, 41, NULL, NULL, 'Blockquote', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 14:33:48', '2022-11-08 11:33:48', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-08 14:33:48', '2022-11-08 14:33:48'),
(55, 'http://brist.loc/?post_type=acf-field&p=63', '42:fd53db4427566e710fd021e300b228f0', 63, 'post', 'acf-field', 1, 41, NULL, NULL, 'Author name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-08 14:33:48', '2022-11-08 11:33:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-08 14:33:48', '2022-11-08 14:33:48'),
(56, 'http://brist.loc/?post_type=acf-field-group&p=65', '48:20a51ae4a08c51e6ce739eaf3cbf425e', 65, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Services page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(57, 'http://brist.loc/?post_type=acf-field&p=66', '42:19b5daa172d62c1c764ff8b2ea94e692', 66, 'post', 'acf-field', 1, 65, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-09 05:23:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 08:23:54', '2022-11-09 08:16:50'),
(58, 'http://brist.loc/?post_type=acf-field&p=67', '42:212b0b0ab4d9cf33c6f8abddeae9700b', 67, 'post', 'acf-field', 1, 66, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(59, 'http://brist.loc/?post_type=acf-field&p=68', '42:c1ba66b78b4efa168efce01520d3de6b', 68, 'post', 'acf-field', 1, 66, NULL, NULL, 'Description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(60, 'http://brist.loc/?post_type=acf-field&p=69', '42:58abfe37af8cd19bb45d916aef6d0530', 69, 'post', 'acf-field', 1, 66, NULL, NULL, 'Layout', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(61, 'http://brist.loc/?post_type=acf-field&p=70', '42:0e591a0aec01ade5e48322b403ce5d7a', 70, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1 &#8211; image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(62, 'http://brist.loc/?post_type=acf-field&p=71', '42:c4dee139c7b4870cd11cf3bc46c85382', 71, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2 &#8211; Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 08:16:50', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-09 08:16:50'),
(63, 'http://brist.loc/?post_type=acf-field-group&p=73', '48:cccc370473e65c750aaa75878e722b7a', 73, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Meet us page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:07:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-09 10:07:51', '2022-11-09 10:00:57'),
(64, 'http://brist.loc/?post_type=acf-field&p=74', '42:50b30205387be8622b90ff53cfd4a97b', 74, 'post', 'acf-field', 1, 73, NULL, NULL, 'Blockquote', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:07:51', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:51', '2022-11-09 10:00:57'),
(65, 'http://brist.loc/?post_type=acf-field&p=75', '42:353c9b6702d23f1c4dd1c2a39c4a9448', 75, 'post', 'acf-field', 1, 73, NULL, NULL, 'Description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:07:51', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:51', '2022-11-09 10:00:57'),
(66, 'http://brist.loc/?post_type=acf-field&p=76', '42:16f481d2c62dff5decf591f9115061bb', 76, 'post', 'acf-field', 1, 73, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:07:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:01', '2022-11-09 10:00:57'),
(67, 'http://brist.loc/?post_type=acf-field&p=77', '42:25a39c4f4c17116b929f0c7b32f399c8', 77, 'post', 'acf-field', 1, 76, NULL, NULL, 'Photo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:05:16', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:05:16', '2022-11-09 10:00:57'),
(68, 'http://brist.loc/?post_type=acf-field&p=78', '42:a9c528c9d504ad41813f98949aa39ebd', 78, 'post', 'acf-field', 1, 76, NULL, NULL, 'Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:00:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-09 10:00:57', '2022-11-09 10:00:57'),
(69, 'http://brist.loc/?post_type=acf-field&p=79', '42:4eb3d1fd4dc54ad9d3a2aac7e4ef248e', 79, 'post', 'acf-field', 1, 76, NULL, NULL, 'Position', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:00:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-09 10:00:57', '2022-11-09 10:00:57'),
(70, 'http://brist.loc/?post_type=acf-field&p=80', '42:b2978c565c58669da1d6ff68c788df63', 80, 'post', 'acf-field', 1, 73, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:07:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:02', '2022-11-09 10:00:57'),
(71, 'http://brist.loc/?post_type=acf-field&p=81', '42:13d8237050d98559181df0f9d8dd3ddd', 81, 'post', 'acf-field', 1, 80, NULL, NULL, 'Job vacancy', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:00:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-09 10:00:57', '2022-11-09 10:00:57'),
(72, 'http://brist.loc/?post_type=acf-field&p=82', '42:4157c0b271c80f0e3bb7068f7ea13c49', 82, 'post', 'acf-field', 1, 80, NULL, NULL, 'Job description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:00:57', '2022-11-09 07:04:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:04:54', '2022-11-09 10:00:57'),
(73, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot-2022-01-04-at-21.02-2.jpg', '80:d2e45c0d94fbd9a16c3f21c832384ed9', 83, 'post', 'attachment', 1, 52, NULL, NULL, 'Screenshot 2022-01-04 at 21.02 2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot-2022-01-04-at-21.02-2.jpg', NULL, '83', 'attachment-image', NULL, NULL, NULL, '83', 'attachment-image', NULL, NULL, NULL, NULL, '2022-11-09 10:03:30', '2022-11-09 07:03:30', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:03:30', '2022-11-09 10:03:30'),
(74, 'http://brist.loc/?post_type=acf-field&p=85', '42:a739fd0c10a6733d5f8c6bd433d80b79', 85, 'post', 'acf-field', 1, 73, NULL, NULL, 'Team', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:06:11', '2022-11-09 07:07:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:01', '2022-11-09 10:06:11'),
(75, 'http://brist.loc/?post_type=acf-field&p=86', '42:5535bf474a84e61ca86188fdda1de437', 86, 'post', 'acf-field', 1, 73, NULL, NULL, 'Careers', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:06:11', '2022-11-09 07:07:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:01', '2022-11-09 10:06:11'),
(76, 'http://brist.loc/?post_type=acf-field&p=87', '42:86dbb497a5a1d61a01ac7823586fd3a0', 87, 'post', 'acf-field', 1, 73, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-09 10:07:01', '2022-11-09 07:07:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-09 10:07:01', '2022-11-09 10:07:01'),
(78, 'http://brist.loc/?post_type=acf-field-group&p=91', '48:88d1d730dc872a1e23ee1bcee644c8a2', 91, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Work', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-10 09:37:07', '2022-11-16 09:32:34', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-16 12:32:34', '2022-11-10 09:37:07'),
(79, 'http://brist.loc/?post_type=acf-field&p=92', '42:4eca9b34e05e776981ab330ab2d77110', 92, 'post', 'acf-field', 1, 91, NULL, NULL, 'Architects name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-10 09:37:07', '2022-11-10 06:37:07', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-10 09:37:07', '2022-11-10 09:37:07'),
(80, 'http://brist.loc/?post_type=acf-field&p=93', '42:0a99799ee32a5827e03b9255291030ab', 93, 'post', 'acf-field', 1, 91, NULL, NULL, 'Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-10 09:37:07', '2022-11-10 06:37:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 09:37:07', '2022-11-10 09:37:07'),
(81, 'http://brist.loc/?post_type=acf-field&p=94', '42:c01a1e224fcb9db8578d116d35234b3e', 94, 'post', 'acf-field', 1, 91, NULL, NULL, 'Youtube', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-10 09:37:07', '2022-11-16 05:24:22', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 08:24:22', '2022-11-10 09:37:07'),
(83, 'http://brist.loc/work/', '22:6475bd75800a294b87548621f7c594b7', 102, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Work', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-10 13:47:04', '2022-11-10 10:47:07', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-11-10 13:47:07', '2022-11-10 13:47:07'),
(84, 'http://brist.loc/?post_type=acf-field&p=105', '43:8a0138b4289e409c463700f4c24c3d0e', 105, 'post', 'acf-field', 1, 91, NULL, NULL, 'Iframe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-15 13:34:25', '2022-11-16 09:32:34', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 12:32:34', '2022-11-15 13:34:25'),
(85, 'http://brist.loc/?post_type=acf-field&p=107', '43:cd12e0233d1dacca4a1f92ba66bc5f29', 107, 'post', 'acf-field', 1, 91, NULL, NULL, 'Type', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-15 13:47:25', '2022-11-16 09:32:34', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 12:32:34', '2022-11-15 13:47:25'),
(86, 'http://brist.loc/?post_type=acf-field&p=118', '43:f8c9e65eb670498a591edd4f63493655', 118, 'post', 'acf-field', 1, 91, NULL, NULL, 'MP4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-16 08:24:22', '2022-11-16 09:32:34', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 12:32:34', '2022-11-16 08:24:22'),
(87, 'http://brist.loc/wp-content/uploads/2022/11/Ink-in-Water-Background-720p.mp4', '76:09cf381780e8e8598d068ede5cb4ef86', 120, 'post', 'attachment', 1, 33, NULL, NULL, 'Ink in Water Background (720p)', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 08:34:39', '2022-11-16 05:34:39', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 08:34:39', '2022-11-16 08:34:39'),
(88, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1.jpg', '60:ed70babc8f36702bb67ea866494c22ce', 122, 'post', 'attachment', 1, 59, NULL, NULL, 'Screenshot_1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1.jpg', NULL, '122', 'attachment-image', NULL, NULL, NULL, '122', 'attachment-image', NULL, NULL, NULL, NULL, '2022-11-16 09:12:48', '2022-11-16 06:12:48', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 09:12:48', '2022-11-16 09:12:48'),
(89, 'http://brist.loc/?post_type=acf-field&p=123', '43:8041453f72c4280d5958dbae5d6283df', 123, 'post', 'acf-field', 1, 91, NULL, NULL, 'WEBM', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-16 12:32:34', '2022-11-16 09:32:34', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 12:32:34', '2022-11-16 12:32:34'),
(90, 'http://brist.loc/wp-content/uploads/2022/11/videoplayback.webm', '62:9ab7a45d27103de9ce25cced1c44a393', 124, 'post', 'attachment', 1, 33, NULL, NULL, 'videoplayback', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 12:33:20', '2022-11-16 09:33:20', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 12:33:20', '2022-11-16 12:33:20'),
(91, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1.jpg', '62:abc37f9c927625afccbb298105bb8699', 126, 'post', 'attachment', 1, 33, NULL, NULL, 'Screenshot_1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://brist.loc/wp-content/uploads/2022/11/Screenshot_1-1.jpg', NULL, '126', 'attachment-image', NULL, NULL, NULL, '126', 'attachment-image', NULL, NULL, NULL, NULL, '2022-11-16 14:01:33', '2022-11-16 11:01:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-16 14:01:33', '2022-11-16 14:01:33'),
(92, 'http://brist.loc/?post_type=acf-field&p=128', '43:0b64583a3f46bef7560c4cb1065f5faf', 128, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1 url', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:13:10', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:13:10'),
(94, 'http://brist.loc/?post_type=acf-field&p=131', '43:c01be898a4f93ed8cf60be70a73bd41a', 131, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1 &#8211; Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(95, 'http://brist.loc/?post_type=acf-field&p=132', '43:fdd70989c5191f7b4f2da3bca4b84050', 132, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1 &#8211; Architects name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(96, 'http://brist.loc/?post_type=acf-field&p=133', '43:3795681db1443517143baa26eb6766ff', 133, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1 &#8211; Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(97, 'http://brist.loc/?post_type=acf-field&p=134', '43:d8ef4f2e9f6dcfba5b0ae216a0828993', 134, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2 &#8211; Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(98, 'http://brist.loc/?post_type=acf-field&p=135', '43:6f7082a7025fcd1b88551dcbd2ff1ff7', 135, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2 &#8211; Architects name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(99, 'http://brist.loc/?post_type=acf-field&p=136', '43:8a2c2b93e5043213c85c855be21e9896', 136, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2 &#8211; Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(100, 'http://brist.loc/?post_type=acf-field&p=137', '43:677b99f3b2347dd1febf67945375f34f', 137, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2 &#8211; url', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:24:08', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:24:08'),
(101, 'http://brist.loc/?post_type=acf-field&p=138', '43:fe7743cfb7953abb3f177ad073aff360', 138, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:26:01', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:26:01'),
(102, 'http://brist.loc/?post_type=acf-field&p=139', '43:27e740120f2fca384a5376e58c670ab5', 139, 'post', 'acf-field', 1, 66, NULL, NULL, 'Project 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:26:01', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:26:01'),
(103, 'http://brist.loc/?post_type=acf-field&p=141', '43:094b304175176d696e8c1659aeef31e5', 141, 'post', 'acf-field', 1, 66, NULL, NULL, 'Service info', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-28 07:31:33', '2022-11-28 04:31:33', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-11-28 07:31:33', '2022-11-28 07:31:33');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ancestor_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(2, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(9, 0, 0, 1),
(12, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(27, 24, 1, 1),
(28, 24, 1, 1),
(29, 24, 1, 1),
(30, 24, 1, 1),
(31, 46, 1, 1),
(32, 46, 1, 1),
(33, 46, 1, 1),
(34, 46, 1, 1),
(35, 46, 1, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(38, 0, 0, 1),
(39, 0, 0, 1),
(40, 0, 0, 1),
(41, 40, 1, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(56, 0, 0, 1),
(57, 56, 1, 1),
(58, 56, 2, 1),
(58, 57, 1, 1),
(59, 56, 2, 1),
(59, 57, 1, 1),
(60, 56, 2, 1),
(60, 57, 1, 1),
(61, 56, 2, 1),
(61, 57, 1, 1),
(62, 56, 2, 1),
(62, 57, 1, 1),
(63, 0, 0, 1),
(64, 63, 1, 1),
(65, 63, 1, 1),
(66, 63, 1, 1),
(67, 63, 2, 1),
(67, 66, 1, 1),
(70, 63, 1, 1),
(72, 63, 2, 1),
(72, 70, 1, 1),
(74, 63, 1, 1),
(75, 63, 1, 1),
(78, 0, 0, 1),
(81, 78, 1, 1),
(83, 0, 0, 1),
(84, 78, 1, 1),
(85, 78, 1, 1),
(86, 78, 1, 1),
(92, 56, 2, 1),
(92, 57, 1, 1),
(94, 56, 2, 1),
(94, 57, 1, 1),
(95, 56, 2, 1),
(95, 57, 1, 1),
(96, 56, 2, 1),
(96, 57, 1, 1),
(97, 56, 2, 1),
(97, 57, 1, 1),
(98, 56, 2, 1),
(98, 57, 1, 1),
(99, 56, 2, 1),
(99, 57, 1, 1),
(100, 56, 2, 1),
(100, 57, 1, 1),
(101, 56, 2, 1),
(101, 57, 1, 1),
(102, 56, 2, 1),
(102, 57, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(24, '20190715101200'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(25, '20210827093024'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_prominent_words`
--

DROP TABLE IF EXISTS `wp_yoast_prominent_words`;
CREATE TABLE `wp_yoast_prominent_words` (
  `id` int(11) UNSIGNED NOT NULL,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Индексы таблицы `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Индексы таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Индексы таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Индексы таблицы `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stem` (`stem`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `indexable_id_and_stem` (`indexable_id`,`stem`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2915;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1206;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
