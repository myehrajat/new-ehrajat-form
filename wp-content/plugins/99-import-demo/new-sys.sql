/*
 Navicat Premium Data Transfer

 Source Server         : myehrajat
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : new-sys

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 31/05/2020 04:55:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_comments
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments`  (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`) USING BTREE,
  INDEX `comment_post_ID`(`comment_post_ID`) USING BTREE,
  INDEX `comment_approved_date_gmt`(`comment_approved`, `comment_date_gmt`) USING BTREE,
  INDEX `comment_date_gmt`(`comment_date_gmt`) USING BTREE,
  INDEX `comment_parent`(`comment_parent`) USING BTREE,
  INDEX `comment_author_email`(`comment_author_email`(10)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------
INSERT INTO `wp_comments` VALUES (1, 1, 'یک نویسندهٔ دیدگاه در وردپرس', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-26 09:43:36', '2020-05-26 06:13:36', 'سلام، این یک دیدگاه است.\nبرای شروع مدیریت، ویرایش و پاک کردن دیدگاه‌ها، لطفا بخش دیدگاه‌ها در پیشخوان را ببینید.\nتصاویر نویسندگان دیدگاه از <a href=\"https://gravatar.com\">Gravatar</a> گرفته می‌شود.', 0, '1', '', '', 0, 0);

-- ----------------------------
-- Table structure for wp_custom_country
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_country`;
CREATE TABLE `wp_custom_country`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_country
-- ----------------------------
INSERT INTO `wp_custom_country` VALUES (1, 'ایران', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (2, 'امریکا', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (3, 'انگلیس', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (4, 'چین', '', '', '0_5ed267f8ba2872.83072146', NULL, '2020-05-30 18:34:55', '2020-05-30 18:34:55');
INSERT INTO `wp_custom_country` VALUES (5, 'کانادا', '', '', '0_5ed2c9438ebf14.73954117', NULL, '2020-05-31 01:29:57', '2020-05-31 01:29:57');

-- ----------------------------
-- Table structure for wp_custom_currency
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_currency`;
CREATE TABLE `wp_custom_currency`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_sign_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_currency_ratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'How many of this currency make parent currency',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_currency
-- ----------------------------
INSERT INTO `wp_custom_currency` VALUES (53, '1', 'تومان', '', '', 'right', '48', '', '', '1_5ed2f39cb4cab5.65740982', NULL, '2020-05-31 04:31:02', '2020-05-31 04:31:02');
INSERT INTO `wp_custom_currency` VALUES (54, '1', 'ریال', '', '', 'right', '53', '1/10', '', '1_5ed2f3c1a70847.85182242', NULL, '2020-05-31 04:31:18', '2020-05-31 04:31:18');

-- ----------------------------
-- Table structure for wp_custom_currency_rate
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_currency_rate`;
CREATE TABLE `wp_custom_currency_rate`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `base_currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exchanged_currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_currency_rate
-- ----------------------------
INSERT INTO `wp_custom_currency_rate` VALUES (5, '54', '53', '1/10', '', '', NULL, '2020-05-31 04:31:18', '2020-05-31 04:31:18');

-- ----------------------------
-- Table structure for wp_links
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links`  (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE,
  INDEX `link_visible`(`link_visible`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options`  (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE,
  INDEX `autoload`(`autoload`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'سیستم مدیریت اجاره خودرو', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'یک سایت دیگر با وردپرس فارسی', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'ejarehkhodro@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '6', 'yes');
INSERT INTO `wp_options` VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES (18, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES (24, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES (25, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES (29, 'rewrite_rules', 'a:75:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:15:{i:0;s:28:\"00_eval_functions/plugin.php\";i:1;s:19:\"01-debug/plugin.php\";i:2;s:20:\"02-common/plugin.php\";i:3;s:23:\"03-attribute/plugin.php\";i:4;s:20:\"04-access/plugin.php\";i:5;s:19:\"05-extra/plugin.php\";i:6;s:19:\"06-input/plugin.php\";i:7;s:19:\"07-block/plugin.php\";i:8;s:22:\"08-fieldset/plugin.php\";i:9;s:18:\"09-form/plugin.php\";i:10;s:21:\"10-process/plugin.php\";i:11;s:25:\"11-data-action/plugin.php\";i:12;s:25:\"99-import-demo/plugin.php\";i:13;s:27:\"bootsrap-enqueue/plugin.php\";i:14;s:17:\"custom/plugin.php\";}', 'yes');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '+3.5', 'yes');
INSERT INTO `wp_options` VALUES (38, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (39, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES (40, 'template', 'twentynineteen', 'yes');
INSERT INTO `wp_options` VALUES (41, 'stylesheet', 'twentynineteen', 'yes');
INSERT INTO `wp_options` VALUES (42, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES (43, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES (44, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES (45, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES (46, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES (47, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES (48, 'db_version', '45805', 'yes');
INSERT INTO `wp_options` VALUES (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES (50, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES (51, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES (52, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES (53, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES (54, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES (55, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES (56, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES (57, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES (61, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES (62, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES (64, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES (65, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO `wp_options` VALUES (67, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES (68, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES (71, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES (73, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES (74, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES (76, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (82, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES (83, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (84, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES (85, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES (88, 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `wp_options` VALUES (92, 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO `wp_options` VALUES (93, 'admin_email_lifespan', '1606025609', 'yes');
INSERT INTO `wp_options` VALUES (94, 'initial_db_version', '45805', 'yes');
INSERT INTO `wp_options` VALUES (95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (96, 'fresh_site', '1', 'yes');
INSERT INTO `wp_options` VALUES (97, 'WPLANG', 'fa_IR', 'yes');
INSERT INTO `wp_options` VALUES (98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:6:{i:1590884018;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590905617;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590905618;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590905637;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590905639;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (115, 'recovery_keys', 'a:1:{s:22:\"53926NQFnAYNZQpGMdpvUW\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BPefm9NXHYRBSEX4..74iF5dhaQyF60\";s:10:\"created_at\";i:1590882796;}}', 'yes');
INSERT INTO `wp_options` VALUES (117, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES (128, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1591078438', 'no');
INSERT INTO `wp_options` VALUES (129, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (130, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1591078439', 'no');
INSERT INTO `wp_options` VALUES (131, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `wp_options` VALUES (133, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (136, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (140, 'recovery_mode_email_last_sent', '1590882796', 'yes');
INSERT INTO `wp_options` VALUES (197, '_site_transient_timeout_theme_roots', '1590864231', 'no');
INSERT INTO `wp_options` VALUES (198, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (201, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fa_IR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1590862435;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (202, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590862436;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (203, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1590883159;s:7:\"checked\";a:18:{s:27:\"bootsrap-enqueue/plugin.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:17:\"custom/plugin.php\";s:5:\"1.0.0\";s:19:\"01-debug/plugin.php\";s:5:\"1.0.0\";s:20:\"02-common/plugin.php\";s:5:\"1.0.0\";s:23:\"03-attribute/plugin.php\";s:5:\"1.0.0\";s:20:\"04-access/plugin.php\";s:5:\"1.0.0\";s:19:\"05-extra/plugin.php\";s:5:\"1.0.0\";s:19:\"06-input/plugin.php\";s:5:\"1.0.0\";s:19:\"07-block/plugin.php\";s:5:\"1.0.0\";s:22:\"08-fieldset/plugin.php\";s:5:\"1.0.0\";s:18:\"09-form/plugin.php\";s:5:\"1.0.0\";s:21:\"10-process/plugin.php\";s:5:\"1.0.0\";s:25:\"11-data-action/plugin.php\";s:5:\"1.0.0\";s:25:\"99-import-demo/plugin.php\";s:5:\"1.0.0\";s:28:\"00_eval_functions/plugin.php\";s:5:\"1.0.0\";s:43:\"fast-user-switching/fast-user-switching.php\";s:5:\"1.4.8\";s:33:\"jquery-updater/jquery-updater.php\";s:5:\"3.5.0\";}s:8:\"response\";a:1:{s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/jquery-updater.3.5.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES (208, '_site_transient_timeout_browser_3159e548b459a213a1c6a2a1736ee626', '1591487582', 'no');
INSERT INTO `wp_options` VALUES (209, '_site_transient_browser_3159e548b459a213a1c6a2a1736ee626', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (210, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1590925985', 'no');
INSERT INTO `wp_options` VALUES (211, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:20:\"WordCamp Kent Online\";s:3:\"url\";s:30:\"https://2020.kent.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-05-30 12:30:00\";s:8:\"end_date\";s:19:\"2020-05-31 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.1536674;s:9:\"longitude\";d:-81.3578859;}}}}', 'no');
INSERT INTO `wp_options` VALUES (212, '_transient_timeout_plugin_slugs', '1590969565', 'no');
INSERT INTO `wp_options` VALUES (213, '_transient_plugin_slugs', 'a:18:{i:0;s:27:\"bootsrap-enqueue/plugin.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:17:\"custom/plugin.php\";i:3;s:19:\"01-debug/plugin.php\";i:4;s:20:\"02-common/plugin.php\";i:5;s:23:\"03-attribute/plugin.php\";i:6;s:20:\"04-access/plugin.php\";i:7;s:19:\"05-extra/plugin.php\";i:8;s:19:\"06-input/plugin.php\";i:9;s:19:\"07-block/plugin.php\";i:10;s:22:\"08-fieldset/plugin.php\";i:11;s:18:\"09-form/plugin.php\";i:12;s:21:\"10-process/plugin.php\";i:13;s:25:\"11-data-action/plugin.php\";i:14;s:25:\"99-import-demo/plugin.php\";i:15;s:28:\"00_eval_functions/plugin.php\";i:16;s:43:\"fast-user-switching/fast-user-switching.php\";i:17;s:33:\"jquery-updater/jquery-updater.php\";}', 'no');
INSERT INTO `wp_options` VALUES (214, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1590925987', 'no');
INSERT INTO `wp_options` VALUES (215, '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 May 2020 11:05:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.5-alpha-47862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/05/the-month-in-wordpress-april-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 May 2020 09:31:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8571\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"April continued to be a challenging time for the WordPress community, with many under stay-at-home recommendations. However, it was also an exciting month in which we created new ways to connect with and inspire each other! This month, amazing contributors moved more WordCamps online and shipped new releases for WordPress and Gutenberg. For the latest, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8195:\"\n<p>April continued to be a challenging time for the WordPress community, with many under stay-at-home recommendations. However, it was also an exciting month in which we created new ways to connect with and inspire each other! This month, amazing contributors moved more WordCamps online and shipped new releases for WordPress and Gutenberg. For the latest, read on. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.4.1 released</h2>\n\n\n\n<p>On April 24th,&nbsp; <a href=\"https://make.wordpress.org/core/2020/04/24/wordpress-5-4-1-rc1/\">WordPress 5.4.1 Release Candidate 1</a> (RC1) was released for testing, quickly followed by the official <a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">release of WordPress 5.4.1</a> on April 29th. This security release features 17 bug fixes and seven security fixes, so we recommend updating your sites immediately. To download WordPress 5.4.1, visit your Dashboard, click on Updates, then Update Now, or download the latest version directly from WordPress.org. For more information, visit <a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\">this post</a>, review the <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes on Trac</a>, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-4-1/\">version 5.4.1 HelpHub documentation page</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg 7.9 and 8.0 released</h2>\n\n\n\n<p>It was another exciting month for Gutenberg, with the release of <a href=\"https://make.wordpress.org/core/2020/04/15/whats-new-in-gutenberg-15-april/\">7.9</a> and <a href=\"https://make.wordpress.org/core/2020/04/29/whats-new-in-gutenberg-29-april/\">8.0</a>! Version 7.9 brought new block design tools, three new patterns, and improved block markup. Gutenberg 8.0 continued to refine the new block patterns feature, with additional options for inline formatting, and extending the functionality of the Code Editor. In addition to these new features, both releases included new enhancements and APIs, along with a number of bug fixes, performance improvements, some experiments, and more! You can read all the details about the latest Gutenberg releases in the announcement posts for <a href=\"https://make.wordpress.org/core/2020/04/15/whats-new-in-gutenberg-15-april/\">7.9</a> and <a href=\"https://make.wordpress.org/core/2020/04/29/whats-new-in-gutenberg-29-april/\">8.0</a>.&nbsp;</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>BuddyPress 6.0.0</h2>\n\n\n\n<p><a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-beta2/\">BuddyPress 6.0.0-beta2</a> was released for testing in mid-April, leading to the <a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-release-candidate/\">BuddyPress 6.0.0 Release Candidate</a>, announced on April 29. This is an important step before&nbsp; the final release of BuddyPress 6.0.0, which is slated for Thursday, May 14. Changes and new features in this release include moving the profile photo and user cover image under the BP Members component, and a new BP Rest API. Additionally, this release will introduce the first round of BuddyPress Blocks! Last, but not least, BuddyPress 6.0.0 will require at least PHP 5.6 and WordPress 4.8.&nbsp;</p>\n\n\n\n<p>Want to get involved? <a href=\"https://buddypress.org/2020/04/buddypress-6-0-0-release-candidate/\">Test the 6.0.0-RC here</a>! You can also help by <a href=\"https://translate.wordpress.org/projects/wp-plugins/buddypress/dev/\">translating BuddyPress into another language</a>, or let the team know of any issues you find, either in <a href=\"https://buddypress.org/support\">the support forums</a> and/or in their <a href=\"https://buddypress.trac.wordpress.org/\">development tracker</a>.&nbsp;</p>\n\n\n\n<h2>WordCamp US goes online, apply to speak!</h2>\n\n\n\n<p>WordCamp US will <a href=\"https://2020.us.wordcamp.org/2020/04/30/wordcamp-us-will-be-virtually-awesome/\">take place online due to the COVID-19 pandemic</a>. The event still runs from October 27-29, 2020, and will be free to anyone who wishes to attend. The team plans to offer&nbsp; what WCUS has historically brought to the community in person: sessions and workshops, Contributor Day, a hallway track, and of course, State of the Word.&nbsp;</p>\n\n\n\n<p>Interested in speaking at WCUS? The <a href=\"https://2020.us.wordcamp.org/2020/03/16/call-for-speakers-is-now-open/\">Call for Speakers</a> is still open! You can apply to speak on the <a href=\"https://2020.wcus-speakers.org/\">speaker application site</a> until May 31, 2020 at 11:59 pm CDT (UTC-5).&nbsp;</p>\n\n\n\n<p>Additionally, the <a href=\"https://2020.us.wordcamp.org/2020/03/23/call-for-cities-for-wcus-2021-2022/\">Call for Cities is also open</a>. If your community is interested in hosting WordCamp US in 2021 &amp; 2022, please <a href=\"https://wordcampcentral.survey.fm/wcus-2021-2022\">fill out this application</a>.&nbsp;</p>\n\n\n\n<p>For the latest information about WordCamp US, sign up for updates on the <a href=\"https://2020.us.wordcamp.org/\">website</a>, or follow <a href=\"https://www.facebook.com/WordCampUSA/\">Facebook</a>, <a href=\"https://twitter.com/WordCampUS\">Twitter</a>, or <a href=\"https://www.instagram.com/wordcampus/?hl=en\">Instagram</a>.&nbsp;</p>\n\n\n\n<h2>WordCamp Europe 2020 goes virtual&nbsp;</h2>\n\n\n\n<p>Last month, WordCamp Europe decided to postpone its Porto event to 2021. This April, the WCEU organizing team announced that the <a href=\"https://2020.europe.wordcamp.org/2020/04/06/wordcamp-europe-2020-is-moving-online/\">2020 WordCamp will be online</a>! WordCamp Europe 2020 Online will take place from June 4-6, 2020, and tickets will be free. There will be a <a href=\"https://make.wordpress.org/updates/2020/04/15/wordcamp-europe-2020-contributor-day-update/\">virtual Contributor Day</a> on June 4, and then two half days of live-streamed talks and workshops. To participate, get your free ticket <a href=\"https://2020.europe.wordcamp.org/tickets/\">here</a>.&nbsp;</p>\n\n\n\n<p>To get the latest news for WordCamp Europe 2020 Online, follow on <a href=\"https://www.facebook.com/WCEurope/\">Facebook</a>, <a href=\"https://twitter.com/wceurope?lang=en\">Twitter</a>, <a href=\"https://www.linkedin.com/company/wordcampeurope/\">LinkedIn</a>, or on <a href=\"https://www.instagram.com/wceurope/?hl=en\">Instagram</a>.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li><a href=\"https://make.wordpress.org/core/2020/04/08/wordpress-5-5-call-for-tickets/\">The WordPress 5.5 release cycle has officially been kicked off with a Call for Tickets</a>.</li><li><a href=\"https://make.wordpress.org/themes/2020/04/03/proposal-github-theme-review/\">Read the proposal for a new GitHub Theme review process.</a>.</li><li><a href=\"https://wordpress.tv/event/wpblocktalk-april-2020/\">Did you miss WPBlockTalk, or want to watch that really interesting session again? All talks are available on WordPress.tv!</a></li><li><a href=\"https://make.wordpress.org/core/2020/04/01/feature-plugin-proposal-wp-consent-api/\">The Core team has introduced a proposal for a new Consent API as a feature plugin</a>.</li><li><a href=\"https://make.wordpress.org/updates/2020/04/30/quarterly-updates-q1-2020/\">All WordPress contribution teams have reported on their recent work in the first quarterly update of 2020</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8571\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 5.4.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Apr 2020 19:56:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8553\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"WordPress 5.4.1 is now available! This security and maintenance release features 17 bug fixes in addition to 7 security fixes. Because this is a security release, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated. WordPress 5.4.1 is a short-cycle security and maintenance release. The next [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7029:\"\n<p>WordPress 5.4.1 is now available!</p>\n\n\n\n<p>This security and maintenance release features 17 <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priorityhttps://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">bug fixes</a> in addition to 7 security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated.</p>\n\n\n\n<p>WordPress 5.4.1 is a short-cycle security and maintenance release. The next major release will be version 5.5.</p>\n\n\n\n<p>You can download WordPress 5.4.1 by downloading from WordPress.org, or visit your Dashboard → Updates and click Update Now.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h3>Security Updates</h3>\n\n\n\n<p>Seven security issues affect WordPress versions 5.4 and earlier. If you haven’t yet updated to 5.4, all WordPress versions since 3.7 have also been updated to fix the following security issues:</p>\n\n\n\n<ul><li>Props to <a href=\"https://hackerone.com/hijibiji\">Muaz Bin Abdus Sattar</a> and <a href=\"https://hackerone.com/dyennez\">Jannes</a> who both independently reported an issue where password reset tokens were not properly invalidated.</li><li>Props to <a href=\"https://github.com/ka1n4t\">ka1n4t</a> for finding an issue where certain private posts can be viewed unauthenticated.</li><li>Props to <a href=\"https://evanricafort.com/\">Evan Ricafort</a> for discovering an XSS issue in the Customizer</li><li>Props to Ben Bidner from the WordPress Security Team who discovered an XSS issue in the search block.</li><li>Props to Nick Daugherty from <a href=\"https://wpvip.com\">WordPress VIP</a> / WordPress Security Team who discovered an XSS issue in <code>wp-object-cache</code>.</li><li>Props to Ronnie Goodrich (<a href=\"https://hackerone.com/kahoots\">Kahoots</a>) and <a href=\"http://pentestusa.com/\">Jason Medeiros</a> who independently reported an XSS issue in file uploads.</li><li>Props to <a href=\"https://weston.ruter.net/\">Weston Ruter</a> for fixing a stored XSS vulnerability in the WordPress customizer.</li><li>Additionally, an authenticated XSS issue in the block editor was discovered by Nguyen The Duc (<a href=\"https://twitter.com/ducnt_\">ducnt</a>) in WordPress 5.4 RC1 and RC2. It was fixed in 5.4 RC5. We wanted to be sure to give credit and thank them for all of their work in making WordPress more secure.</li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>\n\n\n\n<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.4.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-4-1/\">version 5.4.1 HelpHub documentation page</a>.</p>\n\n\n\n<p>In addition to the security researchers mentioned above, thank you to everyone who helped make WordPress 5.4.1 happen:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/arnaudbroes/\">arnaudbroes</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">DhrRob</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">Søren Brønsted</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">tellthemachines</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, and <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8553\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"People of WordPress: Mario Peshev\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Apr 2020 00:57:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:158:\"In the April edition of our \"People of WordPress\" series, you\'ll find out how Mario Peshev went from self-taught developer to teaching basic digital literacy.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12069:\"\n<p><em>You’ve probably heard that WordPress is open source software, and may know that it’s created and run by volunteers. Enthusiasts share many examples of how WordPress has changed people’s lives for the better. In this monthly series, we share some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Computer science in the nineties</strong></h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8539\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?w=200&amp;ssl=1 200w, https://i2.wp.com/wordpress.org/news/files/2020/04/25de575216d3743f80181b2dca2cd7d9.jpeg?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 200px) 100vw, 200px\" data-recalc-dims=\"1\" /><figcaption>Mario Peshev</figcaption></figure></div>\n\n\n\n<p>Mario has been hooked on computers ever since he&nbsp;got his first one in 1996. He started with digging into MS-DOS and Windows 3.1 first and learned tons by trial and error. Following that adventure, Mario built his first HTML site in 1999. He found development so exciting that he spent day and night learning QBasic and started working at the local PC game club. Mario got involved with several other things related to website administration (translating security bulletins, setting up simple sites, etc) and soon found the technology field was full of activities he really enjoyed.</p>\n\n\n\n<h2><strong>The Corporate Lifestyle</strong></h2>\n\n\n\n<p>Mario started studying programming including an intensive high-level course for C#, Java development, and software engineering, and eventually got a job in a corporate environment. He soon became a team lead there, managing all the planning and paperwork for their projects.</p>\n\n\n\n<p>But he continued freelancing on the side. He grew his own network of technical experts through attending, volunteering at, and organizing conferences. He also ran a technical forum and regularly spoke at universities and enterprise companies.</p>\n\n\n\n<h2><strong>Remote Working and Business Opportunity</strong></h2>\n\n\n\n<p>The combination of a high workload and a daily three-hour-long commute made Mario’s life difficult. Many of his friends were still studying, traveling or unemployed. The blissful and calm lives they lived seemed like a fairy tale to him. And even while both his managers and his clients were abroad, he was unable to obtain permission to work remotely.&nbsp;</p>\n\n\n\n<p>So Mario decided to leave his job and start freelancing full time. But he found he faced a massive challenge.&nbsp;</p>\n\n\n\n<p>He discovered Java projects were pretty large and required an established team of people working together in an office. All job opportunities were on-site, and some even required relocation abroad. Certified Java programmers weren’t being hired on a remote basis.&nbsp;</p>\n\n\n\n<p>As Mario had some PHP experience from previous jobs, he used this to start his freelance career. For his projects, he used both plain PHP and PHP frameworks like CakePHP and CodeIgniter.&nbsp;</p>\n\n\n\n<p>For a while, Mario accepted work using commonly known platforms including Joomla, Drupal, and WordPress. In addition, he worked on PHP, Java, Python and some C# projects for a couple of years, after which he decided to switch to WordPress completely.</p>\n\n\n\n<h2><strong>Building products</strong></h2>\n\n\n\n<p>One of his projects involved a technically challenging charity backed by several international organizations. Unexpected shortages in the team put him in the technical lead position. As a result, Mario found himself planning the next phases, meeting with the client regularly, and renegotiating the terms. The team completed the project successfully, and after the launch, a TV campaign led millions of visitors to the website.</p>\n\n\n\n<p>As a result of the successful launch, this client invited Mario to participate in more WordPress projects, including building a custom framework.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“I wasn’t that acquainted with WordPress back then. For me, a conventional person trained in architectural design patterns and best practices, WordPress seemed like an eccentric young hipster somewhere on the line between insane and genius at the same time. I had to spend a couple of months learning WordPress from the inside out.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<p>As his interest in WordPress grew, Mario stopped delivering other custom platforms, and converted clients to WordPress.&nbsp;</p>\n\n\n\n<h2><strong>European Community</strong></h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?fit=632%2C356&amp;ssl=1\" alt=\"Mario presenting to an audience\" class=\"wp-image-8546\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=2560&amp;ssl=1 2560w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=1536%2C864&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?resize=2048%2C1152&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2020/04/20191001_144227-scaled.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Mario presenting at a WordCamp</figcaption></figure>\n\n\n\n<p>For Mario, one of the key selling points of WordPress was the international openness. He had previously been involved with other open source communities, some of which were US-focused. He felt they were more reliant on meeting people in person. With events only taking place in the US, this made building relationships much harder for people living in other countries.</p>\n\n\n\n<p>While the WordPress project started out in the US, the WordPress community quickly globalized. Dozens of WordCamps and hundreds of Meetup events take place around the globe every year.&nbsp; All of these events bring a wide variety of people sharing their enthusiasm for WordPress together.</p>\n\n\n\n<p>For Mario, the birth of WordCamp Europe was something magical. The fact that hundreds, and later on thousands, of people from all over the world gathered around the topic of WordPress speaks for itself. Mario has been involved with organizing WordCamp Europe twice (in 2014 and 2015).&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“There’s nothing like meeting WordPress enthusiasts and professionals from more than 50 countries brainstorming and working together at a WordCamp. You simply have to be there to understand how powerful it all is.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Growing businesses and teams</strong></h2>\n\n\n\n<p>A key WordPress benefit is its popularity – an ever growing project currently powering <a href=\"https://w3techs.com/technologies/details/cm-wordpress\">more than 35% of the Internet [2020].</a> It’s popular enough to be a de facto standard for websites, platforms, e-commerce and blogs.&nbsp;</p>\n\n\n\n<p>WordPress has a low barrier to entry. You can achieve a lot without being an expert, meaning most people can start gaining experience without having to spend years learning how to code. That also makes it easier to build businesses and teams.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“Being able to use a tool that is user-friendly, not overly complicated and easily extensible makes introducing it to team members faster and easier. It requires less time for adjustment, and as a result makes a team stronger and faster. The fact that this tool is cost-effective also allows more startups to enter the market. It requires&nbsp; less time and investments to launch an MVP. This boosts the entire ecosystem.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Helping Others</strong></h2>\n\n\n\n<p>Mario also introduced WordPress to children and young people. He taught them how to use WordPress as a tool for homework and class assignments. By using WordPress, they were able to learn the basics of designing themes, developing plugins, marketing statistics, social media, copywriting, and so much more. This approachable introduction to the software meant technical skills were not needed.</p>\n\n\n\n<p>He was also part of a team of volunteers who helped a group of young people living at a foster home struggling to provide for themselves. The team taught the basic digital literacy skills necessary in the modern workplace and potentially pay for their rent and basic needs. This included working with Microsoft Word, Excel and WordPress, as well as some basic design and marketing skills. </p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“When you look at that from another perspective, a platform that could save lives &#8211; literally &#8211; and change the world for better is worth contributing to, in any possible manner.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Contributing to the WordPress community</strong></h2>\n\n\n\n<p>From the core team to supporting and organizing WordCamps, Mario has long been an active contributor to the global WordPress project. He is passionate about the connections fostered by people who are involved in building both the WordPress software and the community around it.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>“The WordPress community consists of people of all race and color, living all around the world, working as teachers, developers, bloggers, designers, business owners. Let’s work together to help each other. Let’s stick together and show&nbsp; the world WordPress can help make it a better place.”</em></p><cite>Mario Peshev</cite></blockquote>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Thanks to Alison Rothwell (<a href=\'https://profiles.wordpress.org/wpfiddlybits/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Abha Thakor (<a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>), Josepha Haden (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>) and Topher DeRosia (<a href=\'https://profiles.wordpress.org/topher1kenobe/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>topher1kenobe</a>). Thank you to Mario Peshev (<a href=\'https://profiles.wordpress.org/nofearinc/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nofearinc</a>) for sharing his #ContributorStory.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?w=632&#038;ssl=1\" alt=\"HeroPress logo\" class=\"wp-image-8409\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p><em>This post is based on </em><a href=\"https://heropress.com/essays/wordpress-gave-perfect-identity/\"><em>an article originally published on HeroPress.com</em></a><em>, a community initiative created by </em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2020/04/people-of-wordpress-mario-peshev/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8536\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/04/the-month-in-wordpress-march-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Apr 2020 12:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8532\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8588:\"\n<p>The month of March was both a tough and exciting time for the WordPress open-source project. With COVID-19 declared a pandemic, in-person events have had to adapt quickly &#8211; a challenge for any community. March culminated with the release of WordPress 5.4, an exhilarating milestone only made possible by dedicated contributors. For all the latest, read on.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.4 “Adderley”</h2>\n\n\n\n<p>WordPress 5.4 “Adderley” <a href=\"https://wordpress.org/news/2020/03/adderley/\">was released on March 31</a> and includes a robust list of new blocks, enhancements, and new features for both users and developers. The primary focus areas of this release included the block editor, privacy, accessibility, and developer improvements, with the full list of enhancements covered in <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">the 5.4 field guide</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Releases of Gutenberg 7.7 and 7.8</h2>\n\n\n\n<p>It’s been another busy month for Gutenberg, this time with the release of Gutenberg <a href=\"https://make.wordpress.org/core/2020/03/11/whats-new-in-gutenberg-11-march/\">7.7</a> and <a href=\"https://make.wordpress.org/core/2020/03/26/whats-new-in-gutenberg-25-march/\">7.8</a>. Gutenberg 7.7 introduced block patterns &#8211; predefined block layouts that are ready to use and tweak. This is an important step towards Full Site Editing, which is currently targeted for inclusion in WordPress 5.6. As a first iteration, you can pick and insert patterns from the Block Patterns UI, which has been added as a sidebar plugin.</p>\n\n\n\n<p>Gutenberg 7.7 also includes a refresh of the Block UI, which better responds to the ways users interact with the editor. For more information on the User UI and Block Patterns, read <a href=\"https://make.wordpress.org/themes/2020/03/18/block-based-themes-meeting-notes/\">this summary of the most recent Block-Based Themes meeting</a>. Gutenberg 7.8, introduced on March 25, further enhanced this Block UI redesign. Both releases also included a suite of improvements, bug fixes, new APIs, documentation, and more!</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordCamp cancellations and shift to online events</h2>\n\n\n\n<p>In early March, the Community team issued <a href=\"https://make.wordpress.org/community/2020/03/11/new-recommendations-for-event-organizers-in-light-of-covid-19/\">new recommendations for event organizers</a> in light of growing concerns around COVID-19. Following this guidance, and with COVID-19 declared a pandemic, WordPress community organizers reluctantly but responsibly <a href=\"https://make.wordpress.org/community/2020/03/12/latest-updates-on-changes-to-wordcamps/\">postponed or canceled their upcoming WordCamps</a> and meetups.</p>\n\n\n\n<p>As community events are an important part of the WordPress open-source project, the Community team made suggestions for <a href=\"https://make.wordpress.org/community/2020/03/20/taking-charity-hackathons-online/\">taking charity hackathons online</a>, <a href=\"https://make.wordpress.org/community/2020/03/24/community-events-in-the-time-of-covid-19/\">proposed interim adjustments</a> to existing community event guidelines, and provided <a href=\"https://make.wordpress.org/community/2020/03/13/online-conference-organizer-training/\">training for online conference organizing</a> with Crowdcast. The team is currently working on building a <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">Virtual Events Handbook</a> that will continue to support WordPress community organizers at this time.&nbsp;</p>\n\n\n\n<p>Want to get involved with the WordPress Community team, host your own virtual WordPress event, or help improve the documentation for all of this? Follow <a href=\"https://make.wordpress.org/community/\">the Community team blog</a>, learn more about <a href=\"https://make.wordpress.org/community/handbook/virtual-events/\">virtual events</a>, and join the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Link your GitHub profile to WordPress.org</h2>\n\n\n\n<p>Last month, <a href=\"https://make.wordpress.org/core/2020/02/21/working-on-trac-tickets-using-github-pull-requests/\">an experimental feature</a> was added to Trac, WordPress Core’s bug-tracking system, to improve collaboration between Trac and GitHub. This month, to help make tracking contributions to the WordPress project across multiple locations easier, there is <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">a new option</a> to connect your GitHub account to your WordPress.org profile. This connection allows for more accurate acknowledgement and recognition of contributors. You can connect your GitHub account to your WordPress.org account by editing your WordPress.org profile.</p>\n\n\n\n<p>For more information and instructions on how to connect your accounts, <a href=\"https://make.wordpress.org/core/2020/03/19/associating-github-accounts-with-wordpress-org-profiles/\">read the announcement post</a>.</p>\n\n\n\n<h2>Modernizing WordPress coding standards</h2>\n\n\n\n<p>Defined coding standards is an important step in creating the consistent codebase needed to prepare for requiring PHP 7.x for WordPress Core. As such, <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">coding standards have been proposed</a> for implementation in WordPress Coding Standards 3.0.0. This includes new proposed standards for namespace declarations, import use statements, fully qualified names in inline code, traits and interfaces, type declarations, declare statements/strict typing, the ::class constant, operators, and more.&nbsp;</p>\n\n\n\n<p>Want to get involved or view the full list of currently proposed new coding standards? Visit and add your feedback to the post on <a href=\"https://make.wordpress.org/core/2020/03/20/updating-the-coding-standards-for-modern-php/\">updating the Coding standards for modern PHP</a> and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>On March 16, <a href=\"https://make.wordpress.org/core/2020/03/18/auto-updates-feature-meeting-summary-march-17th-2020/\">Version 0.3 of the auto-updates feature was released</a>, including fixes to a number of issues and the introduction of email notifications.&nbsp;</li><li>WordCamp US announced that <a href=\"https://2020.us.wordcamp.org/2020/03/26/wcus-is-happening/\">the 2020 event will happen</a>, one way or another. But the team need your help to make sure that it’s another fantastic event. <a href=\"https://2020.us.wordcamp.org/2020/03/16/call-for-speakers-is-now-open/\">Consider applying to be a speaker</a>!</li><li>Speaking of WordCamp US, <a href=\"https://2020.us.wordcamp.org/2020/03/23/call-for-cities-for-wcus-2021-2022/\">the Call for Cities for WCUS 2021/2022</a> is now open. If your community is interested in being a future WCUS host, <a href=\"https://wordcampcentral.survey.fm/wcus-2021-2022\">apply today</a>!</li><li>With COVID-19 preventing in-person community events, the Diverse Speaker Training (#wpdiversity) Group encourages you to <a href=\"https://make.wordpress.org/community/2020/03/17/covid-19-and-the-diverse-speaker-training-wpdiversity-group/\">host a virtual Diverse Speaker Workshop</a> to prepare speakers for when we are able to meet in person again. To get started, <a href=\"https://tiny.cc/wpdiversity\">visit this page</a>.&nbsp;</li><li>An <a href=\"https://make.wordpress.org/updates/2020/03/06/update-progress-on-goals/\">update for progress on 2020 goals</a> has been posted, sharing some more defined targets and schedule.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8532\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.4 “Adderley”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wordpress.org/news/2020/03/adderley/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Mar 2020 19:04:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8455\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:255:\"Version 5.4 \"Adderley\" of WordPress is available for download or update in your WordPress dashboard. This version brings you more ways to make content come alive with your best images and helps make your vision real by putting blocks in the perfect place.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:45:\"https://s.w.org/images/core/5.4/textcolor.mp4\";s:6:\"length\";s:6:\"440616\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:52946:\"\n<p class=\"has-text-color has-very-dark-gray-color\">Here it is! Named “Adderley” in honor of Nat Adderley, the latest and greatest version of WordPress is available for&nbsp;<a href=\"https://wordpress.org/download/\">download</a>&nbsp;or update in your dashboard.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=632%2C632&#038;ssl=1\" alt=\"\" class=\"wp-image-8484\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1024%2C1024&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=300%2C300&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=768%2C768&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=1536%2C1536&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=2048%2C2048&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#0400e0\"><div class=\"wp-block-cover__inner-container\">\n<p style=\"font-size:32px\" class=\"has-text-align-center\"><strong>Say hello to more and better.</strong></p>\n\n\n\n<p class=\"has-text-align-center has-medium-font-size\">More ways to make your pages come alive. With easier ways to get it all done and looking better than ever—and boosts in speed you can feel.</p>\n</div></div>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"has-text-align-left\"><strong>Welcome to WordPress 5.4</strong></h2>\n\n\n\n<p style=\"font-size:15px\" class=\"has-text-align-left\"><strong>Every major release adds more to the block editor.</strong></p>\n\n\n\n<p style=\"font-size:18px\">More ways to make posts and pages come alive with your best images. More ways to bring your visitors in, and keep them engaged, with the richness of embedded media from the web’s top services.</p>\n\n\n\n<p style=\"font-size:18px\">More ways to make your vision real, and put blocks in the perfect place—even if a particular kind of block is new to you. More efficient processes.</p>\n\n\n\n<p style=\"font-size:18px\">And more speed everywhere, so as you build sections or galleries, or just type in a line of prose, you can feel how much faster your work flows.</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8480\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<h3>Two new blocks. And better blocks overall.</h3>\n\n\n\n<ul><li>Two brand-new blocks: Social Icons and Buttons make adding interactive features fast and easy.</li><li>New ways with color: Gradients in the Buttons and Cover block, toolbar access to color options in Rich Text blocks, and for the first time, color options in the Group and Columns blocks.</li><li>Guess a whole lot less! Version 5.4 streamlines the whole process for placing and replacing multimedia in every block. Now it works the same way in almost every block!</li><li>And if you’ve ever thought your image in the Media+Text block should link to something else—perhaps a picture of a brochure should download that brochure as a document? Well, now it can.</li></ul>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.4/textcolor.mp4\"></video></figure>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Cleaner UI, clearer navigation—and easier tabbing!</h3>\n\n\n\n<ul><li>Clearer block navigation with block breadcrumbs. And easier selection once you get there.</li><li>For when you need to navigate with the keyboard, better tabbing and focus. Plus, you can tab over to the sidebar of nearly any block.</li><li>Speed! 14% faster loading of the editor, 51% faster time-to-type!</li><li>Tips are gone. In their place, a Welcome Guide window you can bring up when you need it—and only when you need it—again and again.</li><li>Know at a glance whether you’re in a block’s Edit or Navigation mode. Or, if you have restricted vision, your screen reader will tell you which mode you’re in.</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">Of course, if you want to work with the very latest tools and features, <strong><a href=\"https://wordpress.org/plugins/gutenberg/\">install the Gutenberg plugin</a></strong>. You’ll get to be the first to use new and exciting features in the block editor before anyone else has seen them!</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8481\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=2000&amp;ssl=1 2000w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<h3>Your fundamental right: privacy</h3>\n\n\n\n<p>5.4 helps with a variety of privacy issues around the world. So when users and stakeholders ask about regulatory compliance, or how your team handles user data, the answers should be a lot easier to get right.</p>\n\n\n\n<p>Take a look:</p>\n\n\n\n<ul><li>Now personal data exports include users session information and users location data from the community events widget. Plus, a table of contents!</li><li>See progress as you process export and erasure requests through the privacy tools.</li><li>Plus, little enhancements throughout give the privacy tools a little cleaner look. Your eyes will thank you!</li></ul>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=632%2C316&#038;ssl=1\" alt=\"\" class=\"wp-image-8482\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=1536%2C768&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=2000&amp;ssl=1 2000w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2><strong>Just for developers</strong></h2>\n\n\n\n<h3>Add custom fields to menu items—natively</h3>\n\n\n\n<p>Two new actions let you add custom fields to menu items—without a plugin and without writing custom walkers.</p>\n\n\n\n<p>On the Menus admin screen, <code>wp_nav_menu_item_custom_fields</code> fires just before the move buttons of a nav menu item in the menu editor.</p>\n\n\n\n<p>In the Customizer, <code>wp_nav_menu_item_custom_fields_customize_template</code> fires at the end of the menu-items form-fields template.</p>\n\n\n\n<p>Check your code and see where these new actions can replace your custom code, and if you’re concerned about duplication, add a check for the WordPress version.</p>\n\n\n\n<h3>Blocks! Simpler styling, new APIs and embeds</h3>\n\n\n\n<ul><li>Radically simpler block styling. Negative margins and default padding are gone! Now you can style blocks the way you need them. And, a refactor got rid of four redundant wrapper divs.</li><li>If you build plugins, now you can register collections of your blocks by namespace across categories—a great way to get more brand visibility.</li><li>Let users do more with two new APIs: block variations and gradients.</li><li>In embeds, now the block editor supports TikTok—and CollegeHumor is gone.</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">There’s lots more for developers to love in WordPress 5.4. To discover more and learn how to make these changes shine on your sites, themes, plugins and more, check the <strong><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a></strong>.</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2><strong>The Squad</strong></h2>\n\n\n\n<p>This release was led by&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, and&nbsp;<a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. They were enthusiastically supported by a release squad:</p>\n\n\n\n<ul><li><strong>Editor Tech</strong>: Jorge Filipe Costa (<strong><a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">@jorgefelipecosta</a></strong>)</li><li><strong>Editor Design</strong>: Mark Uraine (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/mapk/\"><strong>@mapk</strong></a>)</li><li><strong>Core Tech</strong>: Sergey Biryukov (<a href=\"https://profiles.wordpress.org/sergeybiryukov/\"><strong>@sergeybiryukov</strong></a>)</li><li><strong>Design</strong>: Tammie Lister (<strong><a href=\"https://profiles.wordpress.org/karmatosed/\">@karmatosed</a></strong>)</li><li><strong>Docs Coordinator</strong>:&nbsp;JB Audras (<a href=\"https://profiles.wordpress.org/audrasjb/\"><strong>@audrasjb</strong></a>)</li><li><strong>Docs &amp; Comms Wrangler</strong>: Mary Baum (<strong><a href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a></strong>)</li></ul>\n\n\n\n<p>The squad was joined throughout the release cycle by <strong>552 generous volunteer contributors</strong> who collectively worked on <strong><a href=\"https://core.trac.wordpress.org/milestone/5.4\">361</a> tickets on Trac</strong> and <strong>1226 pull requests on GitHub</strong>.</p>\n\n\n\n<p>Put on a Nat Adderley playlist, click that update button (or&nbsp;<a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>\n\n\n<a href=\"https://profiles.wordpress.org/0v3rth3d4wn/\">0v3rth3d4wn</a>, <a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb/\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamboro/\">adamboro</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/shaikhaezaz80/\">Aezaz Shaikh</a>, <a href=\"https://profiles.wordpress.org/aftabmuni/\">Aftab Ali Muni</a>, <a href=\"https://profiles.wordpress.org/akibjorklund/\">Aki Bj&#246;rklund</a>, <a href=\"https://profiles.wordpress.org/smallprogrammers/\">Akib</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/akshayar/\">akshayar</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juh&#233; Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/viper007bond/\">Alex Mills</a>, <a href=\"https://profiles.wordpress.org/alexholsgrove/\">AlexHolsgrove</a>, <a href=\"https://profiles.wordpress.org/alexischenal/\">alexischenal</a>, <a href=\"https://profiles.wordpress.org/alextran/\">alextran</a>, <a href=\"https://profiles.wordpress.org/alishankhan/\">alishankhan</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/alpipego/\">alpipego</a>, <a href=\"https://profiles.wordpress.org/amirs17/\">Amir Seljubac</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>, <a href=\"https://profiles.wordpress.org/agawish/\">Amr Gawish</a>, <a href=\"https://profiles.wordpress.org/amykamala/\">Amy Kamala</a>, <a href=\"https://profiles.wordpress.org/anantajitjg/\">Anantajit JG</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Nor&#233;n</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andr&#233;s</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andreaitm/\">andreaitm</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aandrewdixon/\">Andrew Dixon</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>, <a href=\"https://profiles.wordpress.org/eatingrules/\">Andrew Wilder</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/paranoia1906/\">Anthony Ledesma</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/apermo/\">Apermo</a>, <a href=\"https://profiles.wordpress.org/apieschel/\">apieschel</a>, <a href=\"https://profiles.wordpress.org/aravindajith/\">Aravind Ajith</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/arenddeboer/\">arenddeboer</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/arnaudbroes/\">arnaudbroes</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/ashokrd2013/\">ashokrd2013</a>, <a href=\"https://profiles.wordpress.org/ataurr/\">Ataur R</a>, <a href=\"https://profiles.wordpress.org/ate-up-with-motor/\">Ate Up With Motor</a>, <a href=\"https://profiles.wordpress.org/autotutorial/\">autotutorial</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/bahia0019/\">bahia0019</a>, <a href=\"https://profiles.wordpress.org/b-07/\">Bappi</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bengreeley/\">ben.greeley</a>, <a href=\"https://profiles.wordpress.org/benedictsinger/\">benedictsinger</a>, <a href=\"https://profiles.wordpress.org/bfintal/\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/bibliofille/\">bibliofille</a>, <a href=\"https://profiles.wordpress.org/bilgilabs/\">bilgilabs</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/skypressatx/\">BMO</a>, <a href=\"https://profiles.wordpress.org/boga86/\">Boga86</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bwmarkle/\">Brad Markle</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/ceyhun0/\">ceyhun0</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">Chetan Satasiya</a>, <a href=\"https://profiles.wordpress.org/chinteshprajapati/\">Chintesh Prajapati</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cklosows/\">Chris Klosowski</a>, <a href=\"https://profiles.wordpress.org/eclare/\">Chris Trynkiewicz (Sukces Strony)</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/christianamohr/\">Christiana Mohr</a>, <a href=\"https://profiles.wordpress.org/clayisland/\">clayisland</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/crdunst/\">crdunst</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/xendo/\">Dademaru</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">Damián Suárez</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/daniloercoli/\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/darrenlambert/\">darrenlambert</a>, <a href=\"https://profiles.wordpress.org/davidshq/\">Dave Mackey</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">Dave Smith</a>, <a href=\"https://profiles.wordpress.org/daveslaughter/\">daveslaughter</a>, <a href=\"https://profiles.wordpress.org/davewp196/\">DaveWP196</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/superdav42/\">David Stone</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/dhavalkasvala/\">Dhaval kasavala</a>, <a href=\"https://profiles.wordpress.org/dhurlburtusa/\">dhurlburtusa</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dipeshkakadiya/\">dipeshkakadiya</a>, <a href=\"https://profiles.wordpress.org/djp424/\">djp424</a>, <a href=\"https://profiles.wordpress.org/dominic_ks/\">dominic_ks</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/dotancohen/\">Dotan Cohen</a>, <a href=\"https://profiles.wordpress.org/dphiffer/\">dphiffer</a>, <a href=\"https://profiles.wordpress.org/dragosh635/\">dragosh635</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eden159/\">eden159</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/disillusia/\">edmundcwm</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">Eduardo Toledo</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">Ellen Bauer</a>, <a href=\"https://profiles.wordpress.org/aliveic/\">Emil E</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/equin0x80/\">equin0x80</a>, <a href=\"https://profiles.wordpress.org/erikkroes/\">erikkroes</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/fabifott/\">Fabian</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/fahimmurshed/\">Fahim Murshed</a>, <a href=\"https://profiles.wordpress.org/faisal03/\">Faisal Alvi</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/felipeloureirosantos/\">Felipe Santos</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fernandovbsouza/\">Fernando Souza</a>, <a href=\"https://profiles.wordpress.org/fervillz/\">fervillz</a>, <a href=\"https://profiles.wordpress.org/fgiannar/\">fgiannar</a>, <a href=\"https://profiles.wordpress.org/flaviozavan/\">flaviozavan</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/fotisps/\">Fotis Pastrakis</a>, <a href=\"https://profiles.wordpress.org/efarem/\">Frank Martin</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/guddu1315/\">Gaurang Dabhi</a>, <a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/girishpanchal/\">Girish Panchal</a>, <a href=\"https://profiles.wordpress.org/glebkema/\">Gleb Kemarsky</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/grafruessel/\">grafruessel</a>, <a href=\"https://profiles.wordpress.org/gregrickaby/\">Greg Rickaby</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/bordoni/\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hamedmoodi/\">hamedmoodi</a>, <a href=\"https://profiles.wordpress.org/hampzter/\">hAmpzter</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">happiryu</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/harry-milatz/\">Harry Milatz</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/helgatheviking/\">helgatheviking</a>, <a href=\"https://profiles.wordpress.org/henryholtgeerts/\">Henry Holtgeerts</a>, <a href=\"https://profiles.wordpress.org/imani3011/\">Himani Lotia</a>, <a href=\"https://profiles.wordpress.org/krynes/\">Hubert Kubiak</a>, <a href=\"https://profiles.wordpress.org/i3anaan/\">i3anaan</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianatkins/\">ianatkins</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/ideaboxcreations/\">IdeaBox Creations</a>, <a href=\"https://profiles.wordpress.org/shaampk1/\">Ihtisham Zahoor</a>, <a href=\"https://profiles.wordpress.org/intimez/\">intimez</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ispreview/\">ispreview</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">Jakub Binda</a>, <a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jameslnewell/\">jameslnewell</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/studiotwee/\">Jasper van der Meer</a>, <a href=\"https://profiles.wordpress.org/jaydeep23290/\">jaydeep23290</a>, <a href=\"https://profiles.wordpress.org/jdy68/\">jdy68</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jblz/\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/phpbits/\">Jeffrey Carandang</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/miss_jwo/\">Jenny Wong</a>, <a href=\"https://profiles.wordpress.org/jepperask/\">jepperask</a>, <a href=\"https://profiles.wordpress.org/jeremyclarke/\">Jer Clarke</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">Jerry Jones</a>, <a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/jon81/\">Jon</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jg-visual/\">Jonathan Goldford</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joonasvanhatapio/\">Joonas Vanhatapio</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jqz/\">jqz</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/derweili/\">Julian Weiland</a>, <a href=\"https://profiles.wordpress.org/juliankimmig/\">julian.kimmig</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/nukaga/\">Junko Nukaga</a>, <a href=\"https://profiles.wordpress.org/jurgen/\">jurgen</a>, <a href=\"https://profiles.wordpress.org/justdaiv/\">justdaiv</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/kalpshit/\">KalpShit Akabari</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kennithnichol/\">Kennith Nichol</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/khushbu19/\">Khushbu Modi</a>, <a href=\"https://profiles.wordpress.org/killerbishop/\">killerbishop</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kkarpieszuk/\">kkarpieszuk</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kokkieh/\">KokkieH</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/klopez8/\">Krystyna</a>, <a href=\"https://profiles.wordpress.org/kubiq/\">kubiq</a>, <a href=\"https://profiles.wordpress.org/wpkuf/\">kuflievskiy</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kyliesabra/\">kyliesabra</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/leandroalonso/\">leandroalonso</a>, <a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>, <a href=\"https://profiles.wordpress.org/lgrev01/\">lgrev01</a>, <a href=\"https://profiles.wordpress.org/linuxologos/\">linuxologos</a>, <a href=\"https://profiles.wordpress.org/lisota/\">lisota</a>, <a href=\"https://profiles.wordpress.org/lorenzof/\">Lorenzo Fracassi</a>, <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a>, <a href=\"https://profiles.wordpress.org/luisrivera/\">luisrivera</a>, <a href=\"https://profiles.wordpress.org/lukaswaudentio/\">lukaswaudentio</a>, <a href=\"https://profiles.wordpress.org/ljasinskipl/\">Lukasz Jasinski</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/wodarekly/\">Lydia Wodarek</a>, <a href=\"https://profiles.wordpress.org/vinoth06/\">M A Vinoth Kumar</a>, <a href=\"https://profiles.wordpress.org/maciejmackowiak/\">maciejmackowiak</a>, <a href=\"https://profiles.wordpress.org/mahesh901122/\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/marius84/\">Marius84</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mmarzeotti/\">Mark Marzeotti</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/hinjiriyo/\">Martin Stehle</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matstars/\">Mat Gargano</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/mattkeys/\">Matt Keys</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/mattnyeus/\">mattcursor</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">Matthew Kevins</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayanksonawat/\">mayanksonawat</a>, <a href=\"https://profiles.wordpress.org/mbrailer/\">mbrailer</a>, <a href=\"https://profiles.wordpress.org/mehidi258/\">Mehidi Hassan</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michaelecklund/\">Michael Ecklund</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">Michael Panaga</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle Schulp</a>, <a href=\"https://profiles.wordpress.org/mickaelperrin/\">mickaelperrin</a>, <a href=\"https://profiles.wordpress.org/miette49/\">miette49</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mmtr86/\">Miguel Torres</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel [WPLib Box project lead]</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikejdent/\">mikejdent</a>, <a href=\"https://profiles.wordpress.org/msaari/\">Mikko Saari</a>, <a href=\"https://profiles.wordpress.org/iihglobal/\">Milan Patel</a>, <a href=\"https://profiles.wordpress.org/gdragon/\">Milan Petrovic</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mircoraffinetti/\">mircoraffinetti</a>, <a href=\"https://profiles.wordpress.org/mjnewman/\">mjnewman</a>, <a href=\"https://profiles.wordpress.org/mlbrgl/\">mlbrgl</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/morganestes/\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mppfeiffer/\">mppfeiffer</a>, <a href=\"https://profiles.wordpress.org/mryoga/\">mryoga</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mujuonly/\">mujuonly</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nagoke/\">nagoke</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/finchps/\">Nate Finch</a>, <a href=\"https://profiles.wordpress.org/mukto90/\">Nazmul Ahsan</a>, <a href=\"https://profiles.wordpress.org/nekomajin/\">nekomajin</a>, <a href=\"https://profiles.wordpress.org/nextscripts/\">NextScripts</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nsundberg/\">Nicklas Sundberg</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicole2292/\">nicole2292</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikhilgupte/\">nikhilgupte</a>, <a href=\"https://profiles.wordpress.org/nilamacharya/\">nilamacharya</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/noyle/\">noyle</a>, <a href=\"https://profiles.wordpress.org/nsubugak/\">nsubugak</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/oldenburg/\">oldenburg</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/ottok/\">Otto Kek&#228;l&#228;inen</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/iaaxpage/\">page-carbajal</a>, <a href=\"https://profiles.wordpress.org/pagewidth/\">pagewidth</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/rixeo/\">Paul Kevin</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/pcarvalho/\">pcarvalho</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/perrywagle/\">perrywagle</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pierrelannoy/\">Pierre Lannoy</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/prashantvatsh/\">Prashant Singh</a>, <a href=\"https://profiles.wordpress.org/pratik-jain/\">Pratik Jain</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/priyankabehera155/\">Priyanka Behera</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/raamdev/\">Raam Dev</a>, <a href=\"https://profiles.wordpress.org/bamadesigner/\">Rachel Cherry</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ragnarokatz/\">ragnarokatz</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/raoulunger/\">raoulunger</a>, <a href=\"https://profiles.wordpress.org/razamalik/\">razamalik</a>, <a href=\"https://profiles.wordpress.org/remcotolsma/\">Remco Tolsma</a>, <a href=\"https://profiles.wordpress.org/rephotsirch/\">rephotsirch</a>, <a href=\"https://profiles.wordpress.org/rheinardkorf/\">rheinardkorf</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/quicoto/\">Ricard Torres</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/rimadoshi/\">rimadoshi</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rconde/\">Roi Conde</a>, <a href=\"https://profiles.wordpress.org/murgroland/\">Roland Murg</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Woln&#253;</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/kingkool68/\">Russell Heimlich</a>, <a href=\"https://profiles.wordpress.org/rryyaanndd/\">Ryan</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/looswebstudio/\">Ryo</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">S&#233;bastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">S&#248;ren Br&#248;nsted</a>, <a href=\"https://profiles.wordpress.org/sablednah/\">sablednah</a>, <a href=\"https://profiles.wordpress.org/viralsampat/\">Sampat Viral</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samuelfernandez/\">SamuelFernandez</a>, <a href=\"https://profiles.wordpress.org/zanderz/\">Sander</a>, <a href=\"https://profiles.wordpress.org/santilinwp/\">santilinwp</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/tivus/\">Schuhwerk</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/scvleon/\">scvleon</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/sgastard/\">sgastard</a>, <a href=\"https://profiles.wordpress.org/sgoen/\">sgoen</a>, <a href=\"https://profiles.wordpress.org/shahariaazam/\">Shaharia Azam</a>, <a href=\"https://profiles.wordpress.org/cafenoirdesign/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/shariqkhan2012/\">shariqkhan2012</a>, <a href=\"https://profiles.wordpress.org/sncoker/\">Shawntelle Coker</a>, <a href=\"https://profiles.wordpress.org/sheparddw/\">sheparddw</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shizumi/\">Shizumi Yoshiaki</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sirreal/\">sirreal</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/socalchristina/\">socalchristina</a>, <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spenserhale/\">spenserhale</a>, <a href=\"https://profiles.wordpress.org/sproutchris/\">sproutchris</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/starvoters1/\">starvoters1</a>, <a href=\"https://profiles.wordpress.org/steelwagstaff/\">SteelWagstaff</a>, <a href=\"https://profiles.wordpress.org/steevithak/\">steevithak</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/steffanhalv/\">steffanhalv</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell/\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/matthias-reuter/\">straightvisions GmbH</a>, <a href=\"https://profiles.wordpress.org/stroona/\">stroona.com</a>, <a href=\"https://profiles.wordpress.org/subratamal/\">Subrata Mal</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/swapnild/\">swapnild</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/takeshifurusato/\">Takeshi Furusato</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>, <a href=\"https://profiles.wordpress.org/tbschen/\">TBschen</a>, <a href=\"https://profiles.wordpress.org/tdlewis77/\">tdlewis77</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/thamaraiselvam/\">Thamaraiselvam</a>, <a href=\"https://profiles.wordpress.org/thefarlilacfield/\">thefarlilacfield</a>, <a href=\"https://profiles.wordpress.org/themezee/\">ThemeZee</a>, <a href=\"https://profiles.wordpress.org/timhavinga/\">Tim Havinga</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timon33/\">timon33</a>, <a href=\"https://profiles.wordpress.org/spaceshipone/\">Timoth&#233;e Brosille</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmanoilov/\">tmanoilov</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tomgreer/\">Tom Greer</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tommix/\">tommix</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, <a href=\"https://profiles.wordpress.org/tristangemus/\">tristangemus</a>, <a href=\"https://profiles.wordpress.org/tristanleboss/\">tristanleboss</a>, <a href=\"https://profiles.wordpress.org/tsuyoring/\">tsuyoring</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/upadalavipul/\">upadalavipul</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/varunshanbhag/\">Varun Shanbhag</a>, <a href=\"https://profiles.wordpress.org/veminom/\">Veminom</a>, <a href=\"https://profiles.wordpress.org/vinita29/\">Vinita Tandulkar</a>, <a href=\"https://profiles.wordpress.org/virgodesign/\">virgodesign</a>, <a href=\"https://profiles.wordpress.org/vsamoletov/\">Vlad. S.</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/waleedt93/\">waleedt93</a>, <a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/websupporter/\">websupporter</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">William Patton</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">wpgurudev</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/wptoolsdev/\">wptoolsdev</a>, <a href=\"https://profiles.wordpress.org/xedinunknown-1/\">xedinunknown-1</a>, <a href=\"https://profiles.wordpress.org/yale01/\">yale01</a>, <a href=\"https://profiles.wordpress.org/collet/\">Yannicki</a>, <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>, <a href=\"https://profiles.wordpress.org/yordansoares/\">Yordan Soares</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/zachflauaus/\">zachflauaus</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zaffarn/\">Zee</a>, and <a href=\"https://profiles.wordpress.org/zsusag/\">zsusag</a>.\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>Many thanks to all of the community volunteers who contribute in the&nbsp;<a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.4. Their efforts bring WordPress fully translated to&nbsp;46 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want to learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8455\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 28 Mar 2020 00:47:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8451\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"The fifth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the WordPress Beta Tester plugin (choose the “bleeding edge nightlies” option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2181:\"\n<p><br>The fifth release candidate for WordPress 5.4 is live!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>You can test the WordPress 5.4 release candidate in two ways:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.4-RC5.zip\">download the release candidate here</a> (zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It’s your source for details on all the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8451\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Mar 2020 22:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8444\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The fourth release candidate for WordPress 5.4 is live! WordPress 5.4 is currently scheduled to land on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! You can test the WordPress 5.4 release candidate in two ways: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge nightlies” option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2395:\"\n<p>The fourth release candidate for WordPress 5.4 is live!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to land on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>You can test the WordPress 5.4 release candidate in two ways:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC4.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC4 commits the new <a href=\"https://core.trac.wordpress.org/ticket/49295\">About page</a> and&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/49688\">updates the editor packages</a>.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. The priority in testing is compatibility. If you find issues, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure them out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;is also out! It&#8217;s your source for details on all the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language besides English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8444\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Mar 2020 21:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8432\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"The third release candidate for WordPress 5.4 is now available! WordPress 5.4 is currently scheduled to be released on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! There are two ways to test the WordPress 5.4 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"David Baumwald\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4104:\"\n<p>The third release candidate for WordPress 5.4 is now available!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.4 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC3.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC3 addresses improvements to the new About page and&nbsp;<a href=\"https://core.trac.wordpress.org/query?id=49657%2C49621%2C48164%2C49577%2C47053%2C48303%2C49374%2C49619&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">8 fixes</a>&nbsp;for the following bugs and regressions:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/ticket/49657\"></a><a href=\"https://core.trac.wordpress.org/ticket/49657\">49657</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/49657\">Block Editor: Update WordPress Packages WordPress 5.4 RC 3</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49621\"></a><a href=\"https://core.trac.wordpress.org/ticket/49621\">49621</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/49621\">Travis: Download Chromium for E2E Tests Only</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49164\"></a><a href=\"https://core.trac.wordpress.org/ticket/48164\">48164</a> &#8211; <a href=\"https://core.trac.wordpress.org/ticket/48164\">media_sideload_image Should Store Original URL and Optionally Check for Dupes</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49577\">49577 &#8211; Site Health Status Dashboard Provides Incorrect Items Count on Initial Load</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/47053\">47053 &#8211; Accessibility: Need to set proper &#8216;tabindex&#8217; in &#8216;Skip To Toolbar&#8217; HTML</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/48303\">48303 &#8211; Docblock Improvements for 5.4</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49374\">49374 &#8211; Use get_post_states to Denote Special Pages on the Added Menu Item Accordions</a></li><li><a href=\"https://core.trac.wordpress.org/ticket/49619\">49619 &#8211; Use &lt;hr /&gt; Instead of Margin on Freedoms Page</a></li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8432\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2020/03/wordpress-5-4-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Mar 2020 21:40:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8422\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:385:\"The second release candidate for WordPress 5.4 is now available! WordPress 5.4 is currently scheduled to be released on&#160;March 31 2020, and we need&#160;your&#160;help to get there—if you haven’t tried 5.4 yet, now is the time! There are two ways to test the WordPress 5.4 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3311:\"\n<p>The second release candidate for WordPress 5.4 is now available!</p>\n\n\n\n<p>WordPress 5.4 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-4/\">March 31 2020</a></strong>, and we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.4 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.4 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.4-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.4, please see the&nbsp;<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>RC2 addresses improvements to the new About page and <a href=\"https://core.trac.wordpress.org/query?id=49611%2C49318%2C49295%2C49585%2C49568%2C49549&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">5 fixes</a> for the following bugs and regressions:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/ticket/49611\">49611</a> &#8211; Block Editor: Update WordPress Packages WordPress 5.4 RC 2</li><li><a href=\"https://core.trac.wordpress.org/ticket/49318\">49318</a> &#8211; Bundled Themes: Twenty Twenty content font CSS selector is too important</li><li><a href=\"https://core.trac.wordpress.org/ticket/49585\">49585</a> &#8211; REST API: Fix typo in disable-custom-gradients theme feature description</li><li><a href=\"https://core.trac.wordpress.org/ticket/49568\">49568</a> &#8211; Block Editor: Fix visual regression in editor&#8217;s color picker</li><li><a href=\"https://core.trac.wordpress.org/ticket/49549\">49549</a> &#8211; Bundled Themes: Calendar widget CSS fixes on various Bundled themes</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.4 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.4. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8422\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:79:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"People of WordPress: Mary Job\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Mar 2020 16:30:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Interviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8406\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:189:\"In the March edition of our \"People of WordPress\" series, you\'ll find out how Mary Job grew from a timid, curious cat into a public speaker and organizer of WordPress Meetups and WordCamps.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9720:\"\n<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.&nbsp;</em></p>\n\n\n\n<h2>How it all began</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=632%2C844&#038;ssl=1\" alt=\"Mary Job at WordCamp Kampala 2020\" class=\"wp-image-8410\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=767%2C1024&amp;ssl=1 767w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=225%2C300&amp;ssl=1 225w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?resize=768%2C1025&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/02/At-WordCamp-Kampala-2020.jpeg?w=809&amp;ssl=1 809w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Mary Job at WordCamp Kampala 2020</figcaption></figure>\n\n\n\n<p>Mary remembers when cybercafés started trending in Nigeria. She had just finished high school and was awaiting her results for admission to university. She spent all of her time (10 hours a day) and all of her pocket money buying bulk time online at cafes. All the way through university that was true, until in 2008 she graduated with a degree in philosophy and bought her own computer and modem.</p>\n\n\n\n<p>She started blogging in 2009. Initially, she tried out Blogger, Hubpages, and WordPress—but found WordPress too complicated.&nbsp;</p>\n\n\n\n<h2>Growing up as a timid but curious cat</h2>\n\n\n\n<p>Mary is one of four kids, and the only girl among her siblings. Throughout her childhood she felt shy, even though others didn’t always see her that way. </p>\n\n\n\n<p>When she first started her personal blog, it was mostly an opportunity for her to speak her mind where she was comfortable. Blogging gave her a medium to express her thoughts and with every new post she became a better writer.</p>\n\n\n\n<h2>Rediscovering WordPress</h2>\n\n\n\n<p>After completing a postgraduate diploma in mass communication, Mary started a Masters degree in Information Management. This required a three month internship. She decided to volunteer in Ghana in 2015 at the headquarters of the Salesians of Don Bosco in West Africa (SDBAFW<strong>)</strong> where her uncle was based.</p>\n\n\n\n<p>While she was there, her uncle asked Mary why she was not blogging on WordPress, which also happened to be the software the organisation used. She explained how difficult and complicated it was so he shared a group of beginner-level tutorial videos with her.</p>\n\n\n\n<p>After two weeks of watching those videos, she started to realize she could have a full-time career doing this. So she immediately joined a number of online training groups so she could learn everything.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I saw a lot of people earning an income from things I knew and did for the fun of it. I found myself asking why I had not turned my passion into a business.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>Not long after that, she was contacted by a website editor who was impressed by her blog. With the information available online for WordPress, she was able to learn everything she needed to improve and redesign a site for what turned into her first client.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8412\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?w=512&amp;ssl=1 512w, https://i1.wp.com/wordpress.org/news/files/2020/03/my-home-office-in-2016.jpeg?resize=300%2C169&amp;ssl=1 300w\" sizes=\"(max-width: 512px) 100vw, 512px\" data-recalc-dims=\"1\" /><figcaption>Mary&#8217;s home office in 2016</figcaption></figure>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I visited the <a href=\"https://wordpress.org/showcase/\">WordPress.org showcase</a> and was wowed with all the good things I could do with WordPress.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>In 2016 after a year of deep WordPress learning, she had fallen in love with the CMS and wanted to give back to the <a href=\"https://make.wordpress.org/\">WordPress open source project</a>.&nbsp;</p>\n\n\n\n<p>She volunteered to help the Community team. And when she moved to Lagos later that year, she discovered there was an active WordPress Meetup community. This started her journey toward becoming a WordPress Meetup Co-organizer and a Global Community Team Deputy.</p>\n\n\n\n<p>Today the Nigerian WordPress community continues to grow, as has the <a href=\"https://www.meetup.com/Lagos-WordPress-Meetup-Group\">Lagos WordPress Meetup</a> group. The first Nigerian WordCamp took place in Lagos in 2018 and a <a href=\"https://2020.lagos.wordcamp.org/\">2020 event is being planned</a>. A local WordPress community also developed in Mary’s hometown in Ijebu.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I have made great friends and met co-organizers in the community who are dedicated to building and sharing their WordPress knowledge with the community like I am.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<h2>What did Mary gain from using and contributing to WordPress?</h2>\n\n\n\n<ul><li>She <strong>overcame her stage fright</strong> by getting up in front of an audience at her local Meetup to introduce speakers and to talk about the WordPress community.&nbsp;</li><li>She <strong>attended her first of many African WordCamps </strong>in Cape Town, South Africa. Coincidentally this was also her first time outside West Africa. Before that, she had not been in an aircraft for more than one hour.</li><li>She <strong>earned money</strong> from WordPress web design projects to sustain her during her learning period. Mary continues to use WordPress in her work and says she is still learning every day!</li><li>She got to <strong>jump off</strong> Signal Hill in Cape Town when visiting a WordCamp!&nbsp;</li></ul>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?fit=632%2C422&amp;ssl=1\" alt=\"\" class=\"wp-image-8413\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?w=1683&amp;ssl=1 1683w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=300%2C200&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=1024%2C683&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=768%2C512&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?resize=1536%2C1024&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2020/03/Moderating-a-Panel-at-WCLOS2019.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Mary moderating a panel at WordCamp Lagos in 2019</figcaption></figure>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Essentially, the community has taught me to be a better communicator, and a better person. I’ve made friends across the world that have become like a family to me.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<p>She now runs a village hub in Ijebu,&nbsp; where she teaches girls digital skills and WordPress as a way of giving back to her town.</p>\n\n\n\n<p>Since she started on this journey, Mary has gotten a fulltime job supporting a WordPress plugin. She’s also become a Community Team Rep and continues to build and foster communities.</p>\n\n\n\n<h2>Mary’s advice to others</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Always seek to understand the basics of whatever knowledge you seek. Never jump in too fast, wanting to spiral to the top while ignoring the learning curve. You will likely crash down effortlessly if you do so, and would have learned nothing.</em></p><cite>Mary Job</cite></blockquote>\n\n\n\n<h2>Contributors</h2>\n\n\n\n<p>Thanks to Alison Rothwell (<a href=\"https://profiles.wordpress.org/wpfiddlybits/\">@wpfiddlybits</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a>), Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>). Thank you to Mary Job (<a href=\"https://profiles.wordpress.org/mariaojob/\">@maryojob</a>) for sharing her #ContributorStory.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/heropress_logo_180.png?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8409\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p><em>This post is based on </em><a href=\"https://heropress.com/essays/wordpress-gave-perfect-identity/\"><em>an article originally published on HeroPress.com</em></a><em>, a community initiative created by </em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/03/people-of-wordpress-mary-job/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"18\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8406\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 30 May 2020 23:53:07 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 13 May 2020 11:05:48 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911120210\";}', 'no');
INSERT INTO `wp_options` VALUES (216, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1590925987', 'no');
INSERT INTO `wp_options` VALUES (217, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1590882787', 'no');
INSERT INTO `wp_options` VALUES (218, '_transient_timeout_dash_v2_ccb55a4e4b351a220e50ef4117d7dc27', '1590925989', 'no');
INSERT INTO `wp_options` VALUES (219, '_transient_dash_v2_ccb55a4e4b351a220e50ef4117d7dc27', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2020/05/the-month-in-wordpress-april-2020/\'>The Month in WordPress: April 2020</a></li></ul></div><div class=\"rss-widget\"><p><strong>خطای RSS:</strong> WP HTTP Error: نشانی معتبر نیست.</p></div>', 'no');

-- ----------------------------
-- Table structure for wp_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (2, 3, '_wp_page_template', 'default');

-- ----------------------------
-- Table structure for wp_posts
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `post_name`(`post_name`(191)) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `post_date`, `ID`) USING BTREE,
  INDEX `post_parent`(`post_parent`) USING BTREE,
  INDEX `post_author`(`post_author`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES (1, 1, '2020-05-26 09:43:36', '2020-05-26 06:13:36', '<!-- wp:paragraph -->\n<p>به وردپرس خوش آمدید. این اولین نوشتهٔ شماست. این را ویرایش یا حذف کنید، سپس نوشتن را شروع نمایید!</p>\n<!-- /wp:paragraph -->', 'سلام دنیا!', '', 'publish', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2020-05-26 09:43:36', '2020-05-26 06:13:36', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES (2, 1, '2020-05-26 09:43:36', '2020-05-26 06:13:36', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href=\"http://localhost/wp-admin/\">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'برگه نمونه', '', 'publish', 'closed', 'open', '', 'برگه-نمونه', '', '', '2020-05-26 09:43:36', '2020-05-26 06:13:36', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2020-05-26 09:43:36', '2020-05-26 06:13:36', '<!-- wp:heading --><h2>ما که هستیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>نشانی وب‌سایت ما: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>کدامیک از اطلاعات شخصی را جمع آوری میکنیم و چرا</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>دیدگاه‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>هنگامی که بازدیدکنندگان نظرات خود را در سایت می‌نویسند، ما اطلاعاتی را که در فرم نظرات و همچنین بازدید کننده‌ها ارائه می‌شود جمع آوری می‌کنیم &#8217;s آدرس IP و رجیستر عامل کاربر مرورگر برای کمک به تشخیص هرزنامه.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>یک رشته ناشناس ایجاد شده از آدرس ایمیل شما (همچنین هش نامیده می‌شود) ممکن است به سرویس Gravatar ارائه شود تا ببینید آیا از آن استفاده می‌کنید. سیاست حفظ حریم خصوصی خدمات Gravatar در اینجا در دسترس است: https://automattic.com/privacy/. پس از تأیید نظر شما، تصویر نمایه شما در متن نظر شما قابل مشاهده است.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>رسانه</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر تصاویر را به وبسایت آپلود کنید، نباید آپلود تصاویر با داده‌های مکان جغرافیایی (EXIF GPS) شامل شود. بازدیدکنندگان وب سایت می‌توانند هر گونه اطلاعات مکان را از تصاویر در وب سایت دانلود و استخراج کنند.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>فرم‌های تماس</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>کوکی‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر شما نظر خود را در سایت ما ثبت کنید، ممکن است برای ذخیره نام، آدرس ایمیل و وب سایت خود در کوکی‌ها تصمیم گیری کنید. اینها برای راحتی شما هستند، به طوری که شما مجبور نیستید دوباره جزئیات خود را پر کنید زمانی که نظر دیگری را ترک کنید. این کوکی‌ها یک سال طول خواهد کشید.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر از برگه ورود ما بازدید نمایید، ما یک کوکی موقت برای مشخص نمودن اینکه آیا مروگر شما کوکی قبول می‌کند را تنظیم می‌کنیم. این کوکی محتوای اطلاعات شخصی شما نیست و وقتی مرورگر شما بسته می‌شود از بین می‌رود.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>هنگام ورود به سیستم، ما همچنین کوکی‌ها را تنظیم خواهیم کرد تا اطلاعات ورود به سیستم و گزینه‌های صفحه نمایش خود را ذخیره کنید. کوکی‌های ورود به سیستم برای دو روز گذشته و کوکی‌های گزینه‌های صفحه نمایش برای یک سال گذشته است. اگر شما انتخاب کنید &quot; به یاد داشته باشید من Me&quot;، ورود شما برای دو هفته ادامه خواهد داشت. اگر از حساب خود خارج شوید، کوکی‌های ورود حذف خواهند شد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر یک مقاله را ویرایش یا منتشر کنید، یک کوکی اضافی در مرورگر شما ذخیره خواهد شد. این کوکی حاوی اطلاعات شخصی نیست و به سادگی نشان می‌دهد که شناسه پست مقاله شما فقط ویرایش شده است. بعد از یک روز منقضی می‌شود.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>محتوای جاسازی‌شده از دیگر وب‌سایت‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>مقالات موجود در این سایت ممکن است شامل محتوای تعبیه شده (مثلا ویدئوها، تصاویر، مقالات و غیره) باشد. مطالب جاسازی شده از وب سایت‌های دیگر رفتار دقیقا همان طوری که بازدید کننده از وب سایت دیگر بازدید کرده است.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>این وبسایت‌ها ممکن است اطلاعاتی مربوط به شما را جمع‌آوری کنند، از کوکی‌ها استفاده کنند، ردیابی سوم شخص اضافه را جاسازی کنند و تعامل شما را با محتوای تعبیه شده نظارت کنند که شامل ردیابی تعامل شما با محتوای جاسازی شده است اگر حساب کاربری داشته و به آن وبسایت وارد شده باشید.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>تجزیه و تحلیل</h3><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات شما را با چه کسی به اشتراک می‌گذاریم</h2><!-- /wp:heading --><!-- wp:heading --><h2>چه مدت ما اطلاعات شما را حفظ می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر یک نظر را ترک کنید، نظر و متادیتای آن به طور نامحدود حفظ می‌شوند. این به این معنا است که ما می‌توانیم به جای برگزاری آنها در یک خط مؤثر، به طور خودکار هر نظر پیگیری را تصدیق و تأیید کنیم.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>برای کاربرانی که در وب سایت ما ثبت نام می‌کنند (اگر وجود داشته باشند)، ما همچنین اطلاعات شخصی را که در مشخصات کاربر آنها ارائه می‌کنیم، ذخیره می‌کنیم. همه کاربران می‌توانند اطلاعات شخصی خود را در هر زمان (به جز آنها که نمی‌توانند نام کاربری خود را تغییر دهند) ببینند، ویرایش و یا حذف کنند. مدیران وب سایت همچنین می‌توانند این اطلاعات را مشاهده و ویرایش کنند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>حقوقی که بر روی داده‌هایتان دارید</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر در این سایت حساب کاربری دارید یا نظرها را ترک کرده اید، می‌توانید درخواست دریافت یک فایل صادر شده از اطلاعات شخصی که ما در مورد شما نگه می‌داریم، از جمله هر گونه داده‌ای که برای ما ارائه کرده اید. همچنین می‌توانید درخواست کنید که ما هر گونه اطلاعات شخصی که در مورد شما نگه داریم پاک کنیم. این شامل اطلاعاتی نیست که ما مجبور به نگهداری آنها برای اهداف اداری، قانونی یا امنیتی باشیم.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>داده‌های شما را به کجا ارسال می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>دیدگاه‌های بازدیدکننده ممکن است از طریق یک سرویس تشخیص جفنگ خودکار بررسی شوند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>اطلاعات تماس شما</h2><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات اضافی</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چگونه از اطلاعات شما حفاظت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چه رویه‌های نقض اطلاعات در حال حاضر وجود دارد</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چه چیز جدیدی از داده‌ها دریافت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>تصمیم گیری خودکار و / یا پروفایل ما با داده‌های کاربر انجام می‌شود</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>الزامات افشای قانونی صنعت</h3><!-- /wp:heading -->', 'سیاست حریم خصوصی', '', 'draft', 'closed', 'open', '', 'سیاست-حفظ-حریم-خصوصی', '', '', '2020-05-26 09:43:36', '2020-05-26 06:13:36', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (4, 1, '2020-05-26 09:43:59', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-26 09:43:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0);

-- ----------------------------
-- Table structure for wp_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships`  (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`, `term_taxonomy_id`) USING BTREE,
  INDEX `term_taxonomy_id`(`term_taxonomy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0);

-- ----------------------------
-- Table structure for wp_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy`  (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`) USING BTREE,
  UNIQUE INDEX `term_id_taxonomy`(`term_id`, `taxonomy`) USING BTREE,
  INDEX `taxonomy`(`taxonomy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 1);

-- ----------------------------
-- Table structure for wp_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `term_id`(`term_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_terms
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms`  (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`) USING BTREE,
  INDEX `slug`(`slug`(191)) USING BTREE,
  INDEX `name`(`name`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
INSERT INTO `wp_terms` VALUES (1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0);

-- ----------------------------
-- Table structure for wp_tt_attr_changer
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_changer`;
CREATE TABLE `wp_tt_attr_changer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remove_attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_changer_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_changer_condition`;
CREATE TABLE `wp_tt_attr_changer_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `condition` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Conditions must be in javascript code rules',
  `attr_changer_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_custom
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_custom`;
CREATE TABLE `wp_tt_attr_custom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_event
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_event`;
CREATE TABLE `wp_tt_attr_html_event`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsfunction_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_event_jsfunction
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_event_jsfunction`;
CREATE TABLE `wp_tt_attr_html_event_jsfunction`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsfunction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_global
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global`;
CREATE TABLE `wp_tt_attr_html_global`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accesskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:visit:https://html.spec.whatwg.org/dev/interaction.html#the-accesskey-attribute',
  `autocapitalize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:off or none(No capitalize letter) | on or sentences(First letter of sentence) | words(First letter of words) | characters(ALL characters uppercase)',
  `class_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_global_class table this support complex ids.',
  `contenteditable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:true | false.',
  `contextmenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'NOTE:This is obsolete Values:The id name of <menu> element',
  `data_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_global_data table this support complex ids.',
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:ltr | rtl | auto. NOTE: IE/Edge does not support the auto keyword on elements',
  `draggable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:true | false | auto.',
  `dropzone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:copy | move | link. NOTE:The most of browser not support this attribute (Samsung browser supports). This is This is an experimental technology.',
  `hidden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:true | false.',
  `the_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Any string but with there are limitations as id\'s value must not contain whitespace (spaces, tabs etc.) .Using characters except ASCII letters, digits, _, - and . may cause compatibility problems, as they weren\'t allowed in HTML 4. Though this restriction has been lifted in HTML5, an ID should start with a letter for compatibility.',
  `inputmode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:none | text | decimal | numeric | tel | search | email | url.',
  `is` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:JS custom element defined. Specified custom element name has been successfully defined in the document, and extends the element type it is being applied to it. Custom element names should start with a-z and contain a-z and at least one - with optionally 0-9.You should not use the x-, polymer-, ng- prefixes. Visit:https://github.com/sindresorhus/validate-element-name',
  `itemid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:The Whatwg.org definition specifies that an itemid must be a URL. However, URN may also be used. Note:An itemid attribute can only be specified for an element that has both itemscope and itemtype attributes',
  `itemprop_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_global_itemprop table this support complex ids.',
  `itemref_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_global_itemref table this support complex ids. NOTE: Itemref attribute can only be specified on elements that have an itemscope attribute specified.',
  `itemscope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Not NULL value define itemscope. NOTE:Itemscope has no value at all',
  `itemtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:URL. URL to schema project defined type see:http://schema.org/Thing',
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Language code,may with hyphen-separated language subtags.Visit registerd languages:http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry.And visit this github project to see and search all subtag language codes:https://r12a.github.io/app-subtags/',
  `onevent_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_event table this support complex ids',
  `slot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:The name of slot element.this follow the rule of attribute name value.This is an experimental technology',
  `spellcheck` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:true | false.',
  `style_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Ids of attr_html_global_style table this support complex ids.',
  `tabindex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:-1 (Unreachable by tab) | 0 (Make reachable by tab) | Positive numbers (Sequence of reaching by tab).',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:No limitation even multiline is acceptable.',
  `translate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:yes | no.',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global` VALUES (1, 'Bootstrap class for input', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 05:35:16', '2020-03-16 05:35:16');
INSERT INTO `wp_tt_attr_html_global` VALUES (2, 'Bootstrap class for submit', '', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 06:58:21', '2020-03-16 06:58:21');
INSERT INTO `wp_tt_attr_html_global` VALUES (3, 'Slug maker', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', NULL, NULL, '2020-03-16 07:39:55', '2020-03-16 07:39:55');
INSERT INTO `wp_tt_attr_html_global` VALUES (4, 'Bootstrap class for checkbox', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-17 06:10:46', '2020-03-17 06:10:46');

-- ----------------------------
-- Table structure for wp_tt_attr_html_global_class
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global_class`;
CREATE TABLE `wp_tt_attr_html_global_class`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_class
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_class` VALUES (1, 'Bootstrap class for input', 'Bootstrap class-for-input', 'form-control', 'Bootstrap class for input', NULL, '2020-03-16 06:37:35', '2020-03-16 06:37:35');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (2, 'Bootstrap class for submit', 'Bootstrap class for submit', 'btn btn-primary', 'Bootstrap class for submit', NULL, '2020-03-16 06:56:03', '2020-03-16 06:56:03');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (3, 'Bootstrap class for checkbox', 'Bootstrap class for checkbox', 'form-check-input', 'Bootstrap class for checkbox', NULL, '2020-03-17 06:11:38', '2020-03-17 06:11:38');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (4, 'Bootstrap Checkbox Toggle', 'Bootstrap Checkbox Toggle', 'checkbox', NULL, NULL, '2020-04-18 10:09:15', '2020-04-18 10:09:15');

-- ----------------------------
-- Table structure for wp_tt_attr_html_global_data
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global_data`;
CREATE TABLE `wp_tt_attr_html_global_data`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_global_itemprop
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global_itemprop`;
CREATE TABLE `wp_tt_attr_html_global_itemprop`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemprop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:URL | String.NOTE: Disallow \':\' characters in non-URL values.Space and \'.\' is not allowed.',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_global_itemref
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global_itemref`;
CREATE TABLE `wp_tt_attr_html_global_itemref`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Id of other HTML element. Id rules: any string but with there are limitations as id\'s value must not contain whitespace (spaces, tabs etc.) .Using characters except ASCII letters, digits, _, - and . may cause compatibility problems, as they weren\'t allowed in HTML 4. Though this restriction has been lifted in HTML5, an ID should start with a letter for compatibility.',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_html_global_style
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_global_style`;
CREATE TABLE `wp_tt_attr_html_global_style`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `css_attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:properties defined in https://www.w3.org/Style/CSS/all-properties.en.html',
  `css_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:CSS properties values',
  `important` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:true | false',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_attr_list
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_attr_list`;
CREATE TABLE `wp_tt_attr_input_attr_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Values:query | json_url | value',
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_checkbox_radio
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_checkbox_radio`;
CREATE TABLE `wp_tt_attr_input_checkbox_radio`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_checkbox_radio
-- ----------------------------
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (1, 'موقعیت نماد واحد پول', '', '', '', '', 'left', NULL, NULL, '2020-05-30 22:41:24', '2020-05-30 22:41:24');

-- ----------------------------
-- Table structure for wp_tt_attr_input_color
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_color`;
CREATE TABLE `wp_tt_attr_input_color`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_date_time_related
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_date_time_related`;
CREATE TABLE `wp_tt_attr_input_date_time_related`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_email
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_email`;
CREATE TABLE `wp_tt_attr_input_email`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_file
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_file`;
CREATE TABLE `wp_tt_attr_input_file`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `capture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_file
-- ----------------------------
INSERT INTO `wp_tt_attr_input_file` VALUES (1, 'پرچم', '', '1-4', '', '', '', '', '', NULL, NULL, '2020-05-26 11:57:39', '2020-05-26 11:57:39');

-- ----------------------------
-- Table structure for wp_tt_attr_input_file_accept
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_file_accept`;
CREATE TABLE `wp_tt_attr_input_file_accept`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_file_accept
-- ----------------------------
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (1, '', '', 'png', NULL, NULL, '2020-05-26 11:58:06', '2020-05-26 11:58:06');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (2, '', '', 'jpg', NULL, NULL, '2020-05-26 11:58:09', '2020-05-26 11:58:09');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (3, '', '', 'jpeg', NULL, NULL, '2020-05-26 11:58:13', '2020-05-26 11:58:13');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (4, '', '', 'gif', NULL, NULL, '2020-05-26 11:58:21', '2020-05-26 11:58:21');

-- ----------------------------
-- Table structure for wp_tt_attr_input_image
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_image`;
CREATE TABLE `wp_tt_attr_input_image`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formenctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formmethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formnovalidate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formtarget` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_number
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_number`;
CREATE TABLE `wp_tt_attr_input_number`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_number
-- ----------------------------
INSERT INTO `wp_tt_attr_input_number` VALUES (1, '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, NULL, '2020-05-30 22:06:09', '2020-05-30 22:06:09');
INSERT INTO `wp_tt_attr_input_number` VALUES (2, '', '', '', '', '', '', '', '', '', '', '', '0.00000000001', '', NULL, NULL, '2020-05-31 01:43:06', '2020-05-31 01:43:06');

-- ----------------------------
-- Table structure for wp_tt_attr_input_password
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_password`;
CREATE TABLE `wp_tt_attr_input_password`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_range
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_range`;
CREATE TABLE `wp_tt_attr_input_range`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_select
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select`;
CREATE TABLE `wp_tt_attr_input_select`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unselected_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `optgroup_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'کشور', 'country', 'کشور را انتخاب کنید', '', '', '', 'required', '', '', '', '1', NULL, NULL, '2020-05-30 03:51:10', '2020-05-30 03:51:10');
INSERT INTO `wp_tt_attr_input_select` VALUES (2, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', '', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (3, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', 'required', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');

-- ----------------------------
-- Table structure for wp_tt_attr_input_select_optgroup
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select_optgroup`;
CREATE TABLE `wp_tt_attr_input_select_optgroup`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_select_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select_options`;
CREATE TABLE `wp_tt_attr_input_select_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Values:query | json_url | value',
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `selected` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_options
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, 'کشور', '', 'query', 'SELECT * FROM wp_custom_country', NULL, 'return $a->country;', 'return $a->country;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-05-30 03:52:17', '2020-05-30 03:52:17');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (2, 'واحد پول', '', 'query', 'SELECT\r\ncountry.id AS country_id,\r\n	country.country AS country,\r\n	currency.currency AS currency,\r\n	currency.country_id AS currency_country_id,\r\n	currency.id AS id\r\n	\r\nFROM\r\n	wp_custom_currency AS currency\r\n	JOIN wp_custom_country AS country\r\n	WHERE country.id = currency.country_id', NULL, 'return $a->currency.\' \'.$a->country;', 'return $a->currency.\' \'.$a->country;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-05-30 07:08:08', '2020-05-30 07:08:08');

-- ----------------------------
-- Table structure for wp_tt_attr_input_submit
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_submit`;
CREATE TABLE `wp_tt_attr_input_submit`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formenctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formmethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formnovalidate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formtarget` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_tel_url
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_tel_url`;
CREATE TABLE `wp_tt_attr_input_tel_url`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_attr_input_text_search
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_text_search`;
CREATE TABLE `wp_tt_attr_input_text_search`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:can contain one, two or three part space seperated,{generic,person,contact} {sectio-*} {opt}.the part of section and opt is optional and opt name must be matched by its type of generic,person,contact. visit:https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete',
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:autofocus',
  `dirname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any+.dir. to making it easy we attach it .dir automatically so you dont attach .dir',
  `list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of datalist element.',
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of datalist element.',
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any number positive and negative, negative means no limit zero applied to prevent typing.',
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any number positive and negative, negative means no limit zero applied to prevent typing.',
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:Regular expression pattern',
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any string',
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:readonly',
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:required',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any number positive and negative,zero and negative means default.',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_text_search
-- ----------------------------
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'required', '', '', '', '', '', '', '', '', '', '', '', 'required', '', '', NULL, NULL, '2020-05-26 11:42:14', '2020-05-26 11:42:14');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (2, 'not required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-05-30 06:33:45', '2020-05-30 06:33:45');

-- ----------------------------
-- Table structure for wp_tt_attr_input_textarea
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_textarea`;
CREATE TABLE `wp_tt_attr_input_textarea`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cols` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rows` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wrap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_textarea
-- ----------------------------
INSERT INTO `wp_tt_attr_input_textarea` VALUES (1, 'توضیحات', '', NULL, '', '', '', '', 'توضیحات', '', '', '', '', NULL, NULL, '2020-05-26 12:00:58', '2020-05-26 12:00:58');

-- ----------------------------
-- Table structure for wp_tt_block
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_block`;
CREATE TABLE `wp_tt_block`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_third` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_block
-- ----------------------------
INSERT INTO `wp_tt_block` VALUES (1, 'کشور', NULL, 'block', 'input', NULL, '11-13', NULL, '', '2', '1', '9', NULL, NULL, '2020-05-26 11:44:19', '2020-05-26 11:44:19');
INSERT INTO `wp_tt_block` VALUES (2, 'واحد پول', NULL, 'block', 'input', NULL, '21-28', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-05-30 03:54:24', '2020-05-30 03:54:24');
INSERT INTO `wp_tt_block` VALUES (3, 'نرخ تبدیل ارز', NULL, 'block', 'input', NULL, '31-33', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-05-31 01:43:37', '2020-05-31 01:43:37');

-- ----------------------------
-- Table structure for wp_tt_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_condition`;
CREATE TABLE `wp_tt_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_data_action
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action`;
CREATE TABLE `wp_tt_data_action`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `colval_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `single_func_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Run only one time after all insert has done',
  `single_func_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Run only one time befor any insert has done',
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action
-- ----------------------------
INSERT INTO `wp_tt_data_action` VALUES (1, 'کشور', 'country', 'database', '1', '11-13', NULL, NULL, NULL, NULL, '2020-05-29 18:33:30', '2020-05-29 18:33:30');
INSERT INTO `wp_tt_data_action` VALUES (2, 'واحد پول', 'currency', 'database', '2', '21-28', NULL, NULL, 'sys_insert_currency_rate({vals:parent_currency_id},{insert_id},{vals:parent_currency_ratio});\r\n/*{insert_id} is base and parent_currency_id is exchange*/', NULL, '2020-05-30 07:00:33', '2020-05-30 07:00:33');
INSERT INTO `wp_tt_data_action` VALUES (3, 'نرخ تبدیل ارز', NULL, 'database', '3', '31-34', NULL, '//add other currecny subcurrecncy ratio automatically', NULL, NULL, '2020-05-31 01:46:31', '2020-05-31 01:46:31');
INSERT INTO `wp_tt_data_action` VALUES (4, NULL, NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-05-31 01:46:32', '2020-05-31 01:46:32');
INSERT INTO `wp_tt_data_action` VALUES (5, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '2020-05-31 02:07:42', '2020-05-31 02:07:42');

-- ----------------------------
-- Table structure for wp_tt_data_action_colval
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_colval`;
CREATE TABLE `wp_tt_data_action_colval`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ref_parsed_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_colval
-- ----------------------------
INSERT INTO `wp_tt_data_action_colval` VALUES (11, 'کشور', 'country-1', 'simple-variable', 'country', 'country-1', 'country-1', NULL, NULL, '', NULL, '2020-05-29 18:37:17', '2020-05-29 18:37:17');
INSERT INTO `wp_tt_data_action_colval` VALUES (12, 'پرچم', 'flag-1', 'file', 'flag', 'flag-1', 'flag-1', '/country-flags/', NULL, '', NULL, '2020-05-29 18:37:18', '2020-05-29 18:37:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (13, 'توضیحات', 'desc-1', 'simple-variable', 'desc', 'desc-1', 'desc-1', NULL, NULL, '', NULL, '2020-05-29 18:37:19', '2020-05-29 18:37:19');
INSERT INTO `wp_tt_data_action_colval` VALUES (21, 'کشور', 'country_id-2', 'simple-variable', 'country_id', 'country_id-2', 'country_id-2', NULL, NULL, '', NULL, '2020-05-30 08:32:18', '2020-05-30 08:32:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (22, 'واحد پول', 'currency-2', 'simple-variable', 'currency', 'currency-2', 'currency-2', NULL, NULL, '', NULL, '2020-05-30 08:32:20', '2020-05-30 08:32:20');
INSERT INTO `wp_tt_data_action_colval` VALUES (23, 'علامت واحد پول', 'currency_sign-2', 'simple-variable', 'currency_sign', 'currency_sign-2', 'currency_sign-2', NULL, NULL, '', NULL, '2020-05-30 08:32:28', '2020-05-30 08:32:28');
INSERT INTO `wp_tt_data_action_colval` VALUES (24, 'مخفف واحد پولی', 'currency_code-2', 'simple-variable', 'currency_code', 'currency_code-2', 'currency_abbr-2', NULL, NULL, '', NULL, '2020-05-30 08:32:31', '2020-05-30 08:32:31');
INSERT INTO `wp_tt_data_action_colval` VALUES (25, 'موقعیت نماد', 'currency_sign_position-2', 'code', 'currency_sign_position', 'currency_sign_position-2', 'if({vals:currency_sign_position}==\'left\'){\r\n	return \'left\';\r\n}else{\r\n	return \'right\';\r\n}\r\n', NULL, NULL, '', NULL, '2020-05-30 08:32:32', '2020-05-30 08:32:32');
INSERT INTO `wp_tt_data_action_colval` VALUES (26, 'واحد پول بالاتر', 'parent_currency_id-2', 'simple-variable', 'parent_currency_id', 'parent_currency_id-2', 'parent_currency_id-2', NULL, NULL, '', NULL, '2020-05-30 08:32:34', '2020-05-30 08:32:34');
INSERT INTO `wp_tt_data_action_colval` VALUES (27, 'نرخ معادل با واحد پول بالاتر', 'parent_currency_ratio-2', 'simple-variable', 'parent_currency_ratio', 'parent_currency_ratio-2', 'parent_currency_ratio-2', NULL, NULL, '', NULL, '2020-05-30 08:33:11', '2020-05-30 08:33:11');
INSERT INTO `wp_tt_data_action_colval` VALUES (28, 'توضیحات', 'desc-2', 'simple-variable', 'desc', 'desc-2', 'desc-2', NULL, NULL, '', NULL, '2020-05-30 22:09:56', '2020-05-30 22:09:56');
INSERT INTO `wp_tt_data_action_colval` VALUES (31, 'ارز پایه', 'base_currency_id-3', 'simple-variable', 'base_currency_id', 'base_currency_id-3', 'base_currency_id-3', NULL, NULL, '', NULL, '2020-05-31 01:37:43', '2020-05-31 01:37:43');
INSERT INTO `wp_tt_data_action_colval` VALUES (32, 'ارز معادل', 'exchanged_currency_id-3', 'simple-variable', 'exchanged_currency_id', 'exchanged_currency_id-3', 'exchanged_currency_id-3', NULL, NULL, '', NULL, '2020-05-31 01:37:44', '2020-05-31 01:37:44');
INSERT INTO `wp_tt_data_action_colval` VALUES (33, 'نرخ تبدیل', 'rate-3', 'simple-variable', 'rate', 'rate-3', 'rate-3', NULL, NULL, '', NULL, '2020-05-31 01:37:48', '2020-05-31 01:37:48');
INSERT INTO `wp_tt_data_action_colval` VALUES (34, 'توضیحات', 'desc-3', 'simple-variable', 'desc', 'desc-3', 'desc-3', NULL, NULL, '', NULL, '2020-05-31 02:03:41', '2020-05-31 02:03:41');

-- ----------------------------
-- Table structure for wp_tt_data_action_database
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_database`;
CREATE TABLE `wp_tt_data_action_database`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prevent_insert_rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `added_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edited_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `prevented_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `database_error_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_database
-- ----------------------------
INSERT INTO `wp_tt_data_action_database` VALUES (1, 'کشور', 'country', 'custom_country', 'country={country-1}', 'country', 'کشور جدید {data_value:country} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات کشور با آی دی {insert_id} ویرایش شد.<br>', 'نام کشور تکراری است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-05-29 18:34:11', '2020-05-29 18:34:11');
INSERT INTO `wp_tt_data_action_database` VALUES (2, 'واحد پول', 'currency', 'custom_currency', 'country_id={country_id-2} AND currency={currency-2}', 'currency', 'واحد پول جدید {data_value:currency} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات واحد پول با آی دی {insert_id} ویرایش شد.<br>', 'واحد پول تکراری است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, 'sys_insert_currency_rate({vals:parent_currency_id},{insert_id},{vals:parent_currency_ratio});\r\n/*{insert_id} is base and parent_currency_id is exchange*/', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_database` VALUES (3, 'نرخ تبدیل ارز', 'currency_rate', 'custom_currency_rate', '(base_currency_id={base_currency_id-3} AND exchanged_currency_id={exchanged_currency_id-3}) OR (exchanged_currency_id={base_currency_id-3} AND base_currency_id={exchanged_currency_id-3}) OR {base_currency_id-3}={exchanged_currency_id-3}', 'currency_rate', 'نرخ تبدیل ارز جدید با آی دی {insert_id} افزوده شد.<br>', 'نرخ تبدیل ارز با آی دی {insert_id} ویرایش شد.<br>', 'نرخ تبدیل ارز تکراری است و قبلا تعریف شده است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_tt_data_action_file
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_file`;
CREATE TABLE `wp_tt_data_action_file`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path_to_save` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lifetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_data_action_mail
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_mail`;
CREATE TABLE `wp_tt_data_action_mail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recipient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bcc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `replyto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt_email_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_data_action_request
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_request`;
CREATE TABLE `wp_tt_data_action_request`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `base_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_data_action_sms
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_sms`;
CREATE TABLE `wp_tt_data_action_sms`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_numbers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_evals
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_evals`;
CREATE TABLE `wp_tt_evals`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eval` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_fieldset
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_fieldset`;
CREATE TABLE `wp_tt_fieldset`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `legend_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_third` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_form
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_form`;
CREATE TABLE `wp_tt_form`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:has been removed from HTML5 instead use it in your input',
  `accept_charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A space- or comma-delimited list of character encodings that the client accepts.Including:ASCII,ANSI,Unicode,UTF-8,UTF-16,UTF-32,UNKNOWN is reserved.Note:In previous versions of HTML, the different character encodings could be delimited by spaces or commas. In HTML5, only spaces are allowed as delimiters.',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The URI of a program that processes the form information',
  `autocapitalize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'This is a nonstandard attribute used by iOS Safari Mobile. Valuse:none,sentences,words,characters,on,off.Note on,off in ios 5 is deprecated',
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:one,off',
  `enctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:application/x-www-form-urlencoded,multipart/form-data,text/plain',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:post,get,dialog. Note dialog is needed form enclosed by <dialog> tag',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `novalidate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'This Boolean attribute indicates that the form is not to be validated when submitted',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:_self,_blank,_parent,_top',
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_third` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `use_ajax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_form
-- ----------------------------
INSERT INTO `wp_tt_form` VALUES (1, 'کشور', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '1', '', '1', '1', 'yes', '', NULL, '2020-05-26 11:48:29', '2020-05-26 11:48:29');
INSERT INTO `wp_tt_form` VALUES (2, 'واحد پول', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '2', '', '1', '1', 'yes', '', NULL, '2020-05-30 03:55:26', '2020-05-30 03:55:26');
INSERT INTO `wp_tt_form` VALUES (3, 'نرخ تبدیل ارز', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '3', '', '1', '1', 'yes', '', NULL, '2020-05-31 01:45:20', '2020-05-31 01:45:20');

-- ----------------------------
-- Table structure for wp_tt_input
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_input`;
CREATE TABLE `wp_tt_input`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:disabled',
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of form',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any string.Other than isindex, any non-empty value for name is allowed. The name _charset_ is special which applying in hidden input name return user encoding.',
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of input type',
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_input_specific_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_meta_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eval_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_changer_condition_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modal_process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modal_insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input
-- ----------------------------
INSERT INTO `wp_tt_input` VALUES (1, 'ذخیره', 'submit', '6', '', '', 'submit', '5', '2', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '2020-05-26 11:27:22');
INSERT INTO `wp_tt_input` VALUES (11, 'کشور', 'country-1', '4', '', '', 'country-1', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:16:56', '2020-05-26 11:16:56');
INSERT INTO `wp_tt_input` VALUES (12, 'پرچم', 'flag-1', '4', '', '', 'flag-1', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:17:08', '2020-05-26 11:17:08');
INSERT INTO `wp_tt_input` VALUES (13, 'توضیحات', 'desc-1', '4', '', '', 'desc-1', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:17:17', '2020-05-26 11:17:17');
INSERT INTO `wp_tt_input` VALUES (21, 'کشور', 'country_id-2', '4', '', '', 'country_id-2', '22', '1', '1', '', '1', '', '', '', '1', 'country', NULL, NULL, '2020-05-26 11:18:40', '2020-05-26 11:18:40');
INSERT INTO `wp_tt_input` VALUES (22, 'واحد پول', 'currency-2', '4', '', '', 'currency-2', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (23, 'نماد واحد پول', 'currency_sign-2', '4', '', '', 'currency_sign-2', '1', '1', '2', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (24, 'مخفف واحد پولی', 'currency_code-2', '4', '', '', 'currency_code-2', '1', '1', '2', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (25, 'موقعیت نماد', 'currency_sign_position-2', '6', '', '', 'currency_sign_position-2', '26', '1', '1', '', '1', '5-8', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (26, 'واحد پول بالاتر', 'parent_currency_id-2', '4', '', '', 'parent_currency_id-2', '24', '1', '2', '', '1', '1-4', '', '', '', '', NULL, NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (27, 'نرخ معادل با واحد پول بالاتر', 'parent_currency_ratio-2', '4', '', '', 'parent_currency_ratio-2', '1', '1', '2', '', '1', '', '', '', '', '', 'مثال: اگر واحد پول ریال است و واحد پول بالاتر تومان نرخ معادل آن 1/10 است.', NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (28, 'توضیحات', 'desc-2', '4', '', '', 'desc-2', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-30 20:10:09', '2020-05-30 20:10:09');
INSERT INTO `wp_tt_input` VALUES (31, 'ارز پایه', 'base_currency_id-3', '4', '', '', 'base_currency_id-3', '22', '1', '3', '', '1', '', '', '', '', '', 'این ارز واحد یک در نظر گرفته می شود. و چه میزان از ارز معادل برابر یک واحد این ارز است؟', NULL, '2020-05-30 22:10:43', '2020-05-30 22:10:43');
INSERT INTO `wp_tt_input` VALUES (32, 'ارز معادل', 'exchanged_currency_id-3', '4', '', '', 'exchanged_currency_id-3', '22', '1', '3', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 01:36:13', '2020-05-31 01:36:13');
INSERT INTO `wp_tt_input` VALUES (33, 'نرخ تبدیل', 'rate-3', '4', '', '', 'rate-3', '8', '1', '2', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 01:36:16', '2020-05-31 01:36:16');
INSERT INTO `wp_tt_input` VALUES (34, 'توضیحات', 'desc-3', '4', '', '', 'desc-3', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 02:04:20', '2020-05-31 02:04:20');

-- ----------------------------
-- Table structure for wp_tt_input_meta
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_input_meta`;
CREATE TABLE `wp_tt_input_meta`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input_meta
-- ----------------------------
INSERT INTO `wp_tt_input_meta` VALUES (1, NULL, NULL, 'controller-input-name', 'country_id-2', '', NULL, '2020-05-30 08:04:22', '2020-05-30 08:04:22');
INSERT INTO `wp_tt_input_meta` VALUES (2, NULL, NULL, 'query-on-change', 'SELECT country.id AS country_id, country.country AS country, currency.currency AS currency, currency.country_id AS currency_country_id, currency.id AS id FROM wp_custom_currency AS currency JOIN wp_custom_country AS country ON country.id = currency.country_id WHERE country.id={name:country_id-2}', NULL, NULL, '2020-05-30 08:04:36', '2020-05-30 08:04:36');
INSERT INTO `wp_tt_input_meta` VALUES (3, NULL, NULL, 'return-type', 'string', NULL, NULL, '2020-05-30 08:04:43', '2020-05-30 08:04:43');
INSERT INTO `wp_tt_input_meta` VALUES (4, NULL, NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT country.id AS country_id,country.country AS country,currency.currency AS currency,currency.country_id AS currency_country_id,currency.id AS id FROM wp_custom_currency AS currency JOIN wp_custom_country AS country ON country.id = currency.country_id WHERE country.id=\\\'{name:country_id-2}\\\'\", \"text\" :\"currency\", \"label\":\"currency\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-05-30 08:07:20', '2020-05-30 08:07:20');
INSERT INTO `wp_tt_input_meta` VALUES (5, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-05-30 22:00:10', '2020-05-30 22:00:10');
INSERT INTO `wp_tt_input_meta` VALUES (6, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-05-30 22:00:11', '2020-05-30 22:00:11');
INSERT INTO `wp_tt_input_meta` VALUES (7, NULL, NULL, 'data-on', 'نماد در سمت چپ رقم', NULL, NULL, '2020-05-30 22:00:14', '2020-05-30 22:00:14');
INSERT INTO `wp_tt_input_meta` VALUES (8, NULL, NULL, 'data-off', 'نماد در سمت راست رقم', NULL, NULL, '2020-05-30 22:00:17', '2020-05-30 22:00:17');
INSERT INTO `wp_tt_input_meta` VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-30 22:00:20', '2020-05-30 22:00:20');

-- ----------------------------
-- Table structure for wp_tt_input_types
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_input_types`;
CREATE TABLE `wp_tt_input_types`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `html_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input_types
-- ----------------------------
INSERT INTO `wp_tt_input_types` VALUES (1, 'Text Field', 'text_field', 'text', 'simple-text', 'sst_text', 'This is simple text input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (2, 'Search Field', 'search_field', 'search', 'simple-search', 'sst_search', 'This is simple search input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (3, 'Tel Field', 'tel_field', 'tel', 'simple-tel', 'sst_tel', 'This is simple tel input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (4, 'Url Field', 'url_field', 'url', 'simple-url', 'sst_url', 'This is simple url input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (5, 'Submit Field', 'submit_field', 'submit', 'simple-submit', 'sst_submit', 'This is simple submit input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (6, 'Range Field', 'range_field', 'range', 'simple-range', 'sst_range', 'This is simple range input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (7, 'Password Field', 'password_field', 'password', 'simple-password', 'sst_password', 'This is simple password input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (8, 'Number Field', 'number_field', 'number', 'simple-number', 'sst_number', 'This is simple number input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (9, 'Image Field', 'image_field', 'image', 'simple-image', 'sst_image', 'This is simple image input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (10, 'File Field', 'file_field', 'file', 'simple-file', 'sst_file', 'This is simple file input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (11, 'Email Field', 'email_field', 'email', 'simple-email', 'sst_email', 'This is simple email input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (12, 'Date Field', 'date_field', 'date', 'simple-date', 'sst_date', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (13, 'Datetime-local Field', 'datetime-local_field', 'datetime-local', 'simple-datetime-local', 'sst_datetime_local', 'This is simple datetime-local input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (14, 'Month Field', 'month_field', 'month', 'simple-month', 'sst_month', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (15, 'Time Field', 'time_field', 'time', 'simple-time', 'sst_time', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (16, 'Week Field', 'week_field', 'week', 'simple-week', 'sst_week', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (17, 'Datetime Field', 'datetime_field', 'datetime', 'simple-datetime', 'sst_datetime', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (18, 'Color Field', 'color_field', 'color', 'simple-color', 'sst_color', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (19, 'Checkbox Field', 'checkbox_field', 'checkbox', 'simple-checkbox', 'sst_checkbox', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (20, 'Radio Field', 'radio_field', 'radio', 'simple-radio', 'sst_radio', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (21, 'Hidden Field', 'hidden_field', 'hidden', 'simple-hidden', 'sst_hidden', 'This is simple hidden input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');
INSERT INTO `wp_tt_input_types` VALUES (22, 'Select Field', 'select_field', 'select', 'simple-select', 'sst_select', 'This is simple select input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (23, 'Textarea Field', 'textarea_field', 'textarea', 'simple-textarea', 'sst_textarea', 'This is simple textarea input type as a HTML code!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (24, 'Depened Select Field', 'depend_select', 'select', 'depend-select', 'sst_depend_select', 'This is Depened Select Field!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (25, 'Code Editor', 'code_editor', 'hidden', 'code-editor', 'sst_code_editor', 'This is code editor by Ace editor!', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (26, 'Checkbox Bootstrap Toggle Field', 'checkbox_bootstrap_toggle', 'checkbox', 'checkbox-bootstrap-toggle', 'sst_checkbox_bootstrap_toggle', 'This is Checkbox Bootstrap Toggle Field! Meta:data-size,data-width,data-height,data-onstyle,data-offstyle,data-style,data-on,data-off', 'Ehrajat', '2020-05-26 06:14:59', '2020-05-26 06:14:59');
INSERT INTO `wp_tt_input_types` VALUES (27, 'Persian and gregorian datetime picker', 'persian-bootstrap4-datetime-picker', 'text', 'persian-bootstrap4-datetime-picker', 'sst_persian_bootstrap4_datetime_picker', 'This is persian datetime picker', 'Ehrajat', '2020-05-26 06:14:58', '2020-05-26 06:14:58');

-- ----------------------------
-- Table structure for wp_tt_legend
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_legend`;
CREATE TABLE `wp_tt_legend`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_options`;
CREATE TABLE `wp_tt_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_process
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_process`;
CREATE TABLE `wp_tt_process`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `form_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condition_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_action_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_process
-- ----------------------------
INSERT INTO `wp_tt_process` VALUES (1, 'کشور', '', '1', '', '1', '', NULL, '2020-05-26 10:51:21', '2020-05-26 10:51:21');
INSERT INTO `wp_tt_process` VALUES (2, 'واحد پول', '', '2', '', '2', '', NULL, '2020-05-26 10:51:38', '2020-05-26 10:51:38');
INSERT INTO `wp_tt_process` VALUES (3, 'نرخ تبدیل ارز', '', '3', '', '3', '', NULL, '2020-05-31 01:46:08', '2020-05-31 01:46:08');
INSERT INTO `wp_tt_process` VALUES (4, '', '', '', '', '', '', NULL, '2020-05-31 01:46:08', '2020-05-31 01:46:08');

-- ----------------------------
-- Table structure for wp_tt_tags
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_tags`;
CREATE TABLE `wp_tt_tags`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_tags
-- ----------------------------
INSERT INTO `wp_tt_tags` VALUES (1, 'Form Tag', 'Form-Tag', '<div style=\"padding:12px;\"><h2 style=\"text-shadow:1px 1px 5px blue;\">{own-data:epithet}</h2>', '</div>', NULL, NULL, NULL, '2020-03-16 06:08:08', '2020-03-16 06:08:08');
INSERT INTO `wp_tt_tags` VALUES (2, 'Block Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:01', '2020-03-16 06:44:01');
INSERT INTO `wp_tt_tags` VALUES (3, 'FieldSet Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:03', '2020-03-16 06:44:03');
INSERT INTO `wp_tt_tags` VALUES (4, 'Bootstrap Form Input (With Label)', 'Bootstrap Form-Input-With-Label', '<div class=\"form-group\"><label for=\"{attr:id}\">{own-data:epithet}</label>', '<small id=\"passwordHelpBlock\" class=\"form-text text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-03-16 06:09:12', '2020-03-16 06:09:12');
INSERT INTO `wp_tt_tags` VALUES (5, 'Bootstrap Form Checkbox Input', NULL, '<div class=\"form-group form-check\">\r\n', '<label class=\"form-check-label\" for=\"{attr:id}\">{own-data:epithet}</label><small class=\"text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-03-17 06:08:12', '2020-03-17 06:08:12');
INSERT INTO `wp_tt_tags` VALUES (6, 'Bootstrap Form Toggle Checkbox Input', NULL, '<div class=\"form-group form-check\">\r\n', '<small class=\"text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-04-19 03:05:25', '2020-04-19 03:05:25');

-- ----------------------------
-- Table structure for wp_tt_user_access
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_user_access`;
CREATE TABLE `wp_tt_user_access`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `except_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_edit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `except_edit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_add` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `except_add` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_user_access
-- ----------------------------
INSERT INTO `wp_tt_user_access` VALUES (1, 'All Capabiltities For All Users', '', 'enable', '', 'enable', '', 'enable', '', '', NULL, '2020-03-16 05:34:24', '2020-03-16 05:34:24');

-- ----------------------------
-- Table structure for wp_tt_vals
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_vals`;
CREATE TABLE `wp_tt_vals`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` mediumblob NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_vals
-- ----------------------------
INSERT INTO `wp_tt_vals` VALUES (1, '1_5eccc3a157db26.59208129', 0x7B227072223A2231222C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35656363633361313537646232362E3539323038313239222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '1', '2020-05-26 11:52:23', '2020-05-26 11:52:23');
INSERT INTO `wp_tt_vals` VALUES (2, '0_5ed11764ad26f1.27984776', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22636F756E7472792D315B315D223A225C75303661395C75303632375C75303634365C75303632375C75303632665C7530363237222C22646573632D315B305D223A225C75303633335C75303633315C75303633325C75303634355C75303663635C75303634365C7530363435222C22646573632D315B315D223A225C75303633335C75303633315C75303633325C75303634355C75303663635C75303634365C7530363261227D, '0', '2020-05-29 18:39:02', '2020-05-29 22:46:49');
INSERT INTO `wp_tt_vals` VALUES (3, '0_5ed151e36619f6.12266603', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:48:15', '2020-05-29 22:48:15');
INSERT INTO `wp_tt_vals` VALUES (4, '0_5ed151f4bdbb65.95664203', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:48:34', '2020-05-29 22:48:34');
INSERT INTO `wp_tt_vals` VALUES (5, '0_5ed152b9183030.05595338', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2262626262626262222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:51:47', '2020-05-29 22:52:37');
INSERT INTO `wp_tt_vals` VALUES (6, '0_5ed152f0b099e7.58633071', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226666666666666666222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:52:43', '2020-05-29 22:53:24');
INSERT INTO `wp_tt_vals` VALUES (7, '0_5ed153361a7608.22868888', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226767676767676767222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:53:54', '2020-05-29 22:54:37');
INSERT INTO `wp_tt_vals` VALUES (8, '0_5ed153682f6f04.77265675', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22646464646464222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:54:42', '2020-05-29 22:54:42');
INSERT INTO `wp_tt_vals` VALUES (9, '0_5ed1536fa1bde0.43408136', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22737373737373737373222C22646573632D315B305D223A22227D, '0', '2020-05-29 22:54:51', '2020-05-29 22:54:51');
INSERT INTO `wp_tt_vals` VALUES (10, '0_5ed16855d00cb4.14068786', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 00:24:53', '2020-05-30 00:25:34');
INSERT INTO `wp_tt_vals` VALUES (11, '0_5ed169734ec249.11613300', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303634365C75303634365C75303634365C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 00:28:47', '2020-05-30 00:32:12');
INSERT INTO `wp_tt_vals` VALUES (12, '0_5ed16a4663a6e3.34023970', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2276767676767676222C22636F756E7472792D315B315D223A2276767676767676222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 00:32:24', '2020-05-30 00:33:11');
INSERT INTO `wp_tt_vals` VALUES (13, '0_5ed16a855f9257.48145773', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2220222C22646573632D315B305D223A22227D, '0', '2020-05-30 00:33:21', '2020-05-30 00:33:22');
INSERT INTO `wp_tt_vals` VALUES (14, '0_5ed16a8c8b6a63.97772717', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2220222C22646573632D315B305D223A22227D, '0', '2020-05-30 00:33:26', '2020-05-30 00:33:26');
INSERT INTO `wp_tt_vals` VALUES (15, '0_5ed17be6a9d159.01117008', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227373737373222C22646573632D315B305D223A22227D, '0', '2020-05-30 01:47:48', '2020-05-30 02:04:27');
INSERT INTO `wp_tt_vals` VALUES (16, '0_5ed17fe9da0413.68779271', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272727272727272222C22646573632D315B305D223A22727272727272727272727272227D, '0', '2020-05-30 02:04:41', '2020-05-30 02:09:33');
INSERT INTO `wp_tt_vals` VALUES (17, '0_5ed1815ecc71e8.67608230', 0x7B22636F756E7472792D315B305D223A22737373737373222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F696D616765735F636F6C76616C5C2F305F313539303738383537375F506F72736368655F50616E616D6572612E6A7067222C22646573632D315B305D223A22227D, '0', '2020-05-30 02:10:53', '2020-05-30 02:12:57');
INSERT INTO `wp_tt_vals` VALUES (18, '0_5ed19a94284314.07839789', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 03:58:31', '2020-05-30 03:58:31');
INSERT INTO `wp_tt_vals` VALUES (19, '0_5ed19ac8582241.57126393', 0x7B22636F756E7472792D315B305D223A226B6B6B6B6B6B6B222C22646573632D315B305D223A22227D, '0', '2020-05-30 03:59:17', '2020-05-30 03:59:50');
INSERT INTO `wp_tt_vals` VALUES (20, '0_5ed19afee726c2.57628608', 0x7B22636F756E7472792D315B305D223A226464646464646464222C22636F756E7472792D315B315D223A2273737373737373737373737373222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:00:23', '2020-05-30 04:02:58');
INSERT INTO `wp_tt_vals` VALUES (21, '0_5ed19beaedeb83.09503402', 0x7B22636F756E7472792D315B305D223A2273737373737373222C22636F756E7472792D315B315D223A22737373737373222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:04:11', '2020-05-30 04:04:11');
INSERT INTO `wp_tt_vals` VALUES (22, '0_5ed19bf77ed175.30519230', 0x7B22636F756E7472792D315B305D223A22737373736161616161737373222C22636F756E7472792D315B315D223A22617364617364617364222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539303739353236385F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:04:28', '2020-05-30 04:04:28');
INSERT INTO `wp_tt_vals` VALUES (23, '0_5ed19c79e8f528.39012396', 0x7B22636F756E7472792D315B305D223A226664677364616661736466222C22636F756E7472792D315B315D223A2273616466736466222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:06:31', '2020-05-30 04:11:00');
INSERT INTO `wp_tt_vals` VALUES (24, '0_5ed19d9051b479.62439981', 0x7B22636F756E7472792D315B305D223A227667626667222C22636F756E7472792D315B315D223A22646667646667222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:11:11', '2020-05-30 04:11:12');
INSERT INTO `wp_tt_vals` VALUES (25, '0_5ed19db3260c78.39475002', 0x7B22636F756E7472792D315B305D223A2266666666666666222C22636F756E7472792D315B315D223A226666666666666666222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:11:48', '2020-05-30 04:11:48');
INSERT INTO `wp_tt_vals` VALUES (26, '0_5ed19dc47e35f7.36520879', 0x7B22636F756E7472792D315B305D223A226666666666666666666664222C22646573632D315B305D223A22227D, '0', '2020-05-30 04:12:00', '2020-05-30 04:12:16');
INSERT INTO `wp_tt_vals` VALUES (27, '0_5ed19ddc95c3d0.92671865', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2265656565656565222C22646573632D315B305D223A22227D, '0', '2020-05-30 04:12:23', '2020-05-30 04:12:23');
INSERT INTO `wp_tt_vals` VALUES (28, '0_5ed19fc80b0133.29361817', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2265747277657472776572222C22646573632D315B305D223A22227D, '0', '2020-05-30 04:20:34', '2020-05-30 04:20:35');
INSERT INTO `wp_tt_vals` VALUES (29, '0_5ed19fd5948494.30955106', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227373737373737373737373222C22646573632D315B305D223A22227D, '0', '2020-05-30 04:20:49', '2020-05-30 04:20:50');
INSERT INTO `wp_tt_vals` VALUES (30, '0_5ed1a03db6dcc2.77691675', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22657771726574657774222C22636F756E7472792D315B315D223A226577727165726366222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:22:36', '2020-05-30 04:22:36');
INSERT INTO `wp_tt_vals` VALUES (31, '0_5ed1a063083537.42704365', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22676767676767676767222C22636F756E7472792D315B315D223A22676773646673646661736466222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:23:15', '2020-05-30 04:23:15');
INSERT INTO `wp_tt_vals` VALUES (32, '0_5ed1a08f2e0674.44121523', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2273737373737373617364222C22636F756E7472792D315B315D223A2261736473222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:23:56', '2020-05-30 04:23:56');
INSERT INTO `wp_tt_vals` VALUES (33, '0_5ed1a0e56bfc53.55191974', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22737373737373222C22636F756E7472792D315B315D223A226161616161222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:25:24', '2020-05-30 04:25:24');
INSERT INTO `wp_tt_vals` VALUES (34, '0_5ed1a159c69dd0.00373123', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2265656565656565656565656565222C22636F756E7472792D315B315D223A22333333333333222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:27:19', '2020-05-30 04:27:19');
INSERT INTO `wp_tt_vals` VALUES (35, '0_5ed1a171e8fe03.65630031', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2265776572717765222C22636F756E7472792D315B315D223A2233343334222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:27:45', '2020-05-30 04:27:45');
INSERT INTO `wp_tt_vals` VALUES (36, '0_5ed1a1d5426048.19543162', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2264787A7A222C22636F756E7472792D315B315D223A22787A78222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:29:23', '2020-05-30 04:29:23');
INSERT INTO `wp_tt_vals` VALUES (37, '0_5ed1a21490a495.48941429', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2269696969696969696969696969696969222C22636F756E7472792D315B315D223A2274747474747474222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:30:27', '2020-05-30 04:30:27');
INSERT INTO `wp_tt_vals` VALUES (38, '0_5ed1a240804011.36038137', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2264646464222C22636F756E7472792D315B315D223A22646464646464646464222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 04:31:16', '2020-05-30 04:31:16');
INSERT INTO `wp_tt_vals` VALUES (39, '0_5ed1b9b7a73fe2.98758197', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272727272727272222C22636F756E7472792D315B315D223A22727272727272222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:11:18', '2020-05-30 06:11:18');
INSERT INTO `wp_tt_vals` VALUES (40, '0_5ed1ba2de1dc57.89092284', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272727272727272222C22636F756E7472792D315B315D223A22777777777777222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:13:15', '2020-05-30 06:13:15');
INSERT INTO `wp_tt_vals` VALUES (41, '0_5ed1ba690cb800.39584861', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226466686764666867646667222C22636F756E7472792D315B315D223A227265656565657734222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:14:17', '2020-05-30 06:14:17');
INSERT INTO `wp_tt_vals` VALUES (42, '0_5ed1ba89aefcf7.80766019', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22747474747474747474747472222C22636F756E7472792D315B315D223A22797979797979797979797972222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:14:49', '2020-05-30 06:14:49');
INSERT INTO `wp_tt_vals` VALUES (43, '0_5ed1baaccd42c5.31881758', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2265656565656565656565656565656565656565656565656565727272727272727272727272222C22636F756E7472792D315B315D223A22657274676767676767676767676767222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:15:23', '2020-05-30 06:15:24');
INSERT INTO `wp_tt_vals` VALUES (44, '0_5ed1bada5f8365.94457705', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22747474747474747474747472656565222C22636F756E7472792D315B315D223A22657272727272727272727272727479222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:16:09', '2020-05-30 06:16:09');
INSERT INTO `wp_tt_vals` VALUES (45, '0_5ed1bb1ab1cf94.80503647', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2277777777777765717271776572222C22636F756E7472792D315B315D223A226577776572776572776572222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:17:14', '2020-05-30 06:17:14');
INSERT INTO `wp_tt_vals` VALUES (46, '0_5ed1bb9ed7b2c9.39568867', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22646464646464646464222C22636F756E7472792D315B315D223A227361646661736466222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:19:24', '2020-05-30 06:19:24');
INSERT INTO `wp_tt_vals` VALUES (47, '0_5ed1bbcf1c4e22.87277019', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226464646464646464646461646464222C22636F756E7472792D315B315D223A227373737373737373737361222C22646573632D315B305D223A22222C22646573632D315B315D223A22227D, '0', '2020-05-30 06:20:16', '2020-05-30 06:20:16');
INSERT INTO `wp_tt_vals` VALUES (48, '0_5ed1bebb5332f3.90308276', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 06:32:42', '2020-05-30 06:32:42');
INSERT INTO `wp_tt_vals` VALUES (49, '0_5ed1c78b0e0175.57556931', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C22646573632D315B305D223A22227D, '0', '2020-05-30 07:10:19', '2020-05-30 07:10:19');
INSERT INTO `wp_tt_vals` VALUES (50, '0_5ed1dbd482b521.22557635', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 08:36:51', '2020-05-30 08:36:51');
INSERT INTO `wp_tt_vals` VALUES (51, '0_5ed1dbe6e88b16.10563973', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 08:37:06', '2020-05-30 08:37:06');
INSERT INTO `wp_tt_vals` VALUES (52, '0_5ed1dc62af1a62.59557203', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227272727272727272727272727272222C22646573632D315B305D223A22227D, '0', '2020-05-30 08:39:10', '2020-05-30 08:39:10');
INSERT INTO `wp_tt_vals` VALUES (53, '0_5ed1dc8886f322.66454462', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303663635C75303634385C75303634365C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 08:39:52', '2020-05-30 08:39:52');
INSERT INTO `wp_tt_vals` VALUES (54, '0_5ed1dc987a9152.02247031', 0x7B227072223A2232222C22636F756E7472795F69642D32223A5B2233225D2C2263757272656E63792D32223A5B225C75303663635C75303634385C75303633315C7530363438225D2C2263757272656E63795F7369676E2D32223A5B2245225D2C2263757272656E63795F616262722D32223A5B22657572225D2C22706172656E745F63757272656E63795F726174696F2D32223A5B22225D2C22646573632D32223A5B22225D2C227375626D6974223A225375626D6974222C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656431646339383761393135322E3032323437303331222C225F5F7373745F5F646174615F616374696F6E73223A2232222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-30 08:42:54', '2020-05-30 08:45:41');
INSERT INTO `wp_tt_vals` VALUES (55, '0_5ed1ddf0d47a23.65327077', 0x7B227072223A2232222C22636F756E7472795F69642D32223A5B2233225D2C2263757272656E63792D32223A5B225C75303663635C75303634385C75303633315C7530363438225D2C2263757272656E63795F7369676E2D32223A5B225C75303634644575225D2C2263757272656E63795F616262722D32223A5B22225D2C22706172656E745F63757272656E63795F726174696F2D32223A5B22225D2C22646573632D32223A5B22225D2C227375626D6974223A225375626D6974222C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656431646466306434376132332E3635333237303737222C225F5F7373745F5F646174615F616374696F6E73223A2232222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-30 08:46:22', '2020-05-30 08:47:27');
INSERT INTO `wp_tt_vals` VALUES (56, '0_5ed1de7559a582.27231125', 0x7B225F5F7373745F5F70726F636573735F6964223A2232222C22636F756E7472795F69642D32223A5B2233225D2C2263757272656E63792D32223A5B225C75303663635C75303634385C75303633315C7530363438225D2C2263757272656E63795F7369676E2D32223A5B225C75303632625C7530363339225D2C2263757272656E63795F616262722D32223A5B22225D2C22706172656E745F63757272656E63795F726174696F2D32223A5B22225D2C22646573632D32223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656431646537353539613538322E3237323331313235222C225F5F7373745F5F646174615F616374696F6E73223A2232222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-30 08:48:11', '2020-05-30 08:48:11');
INSERT INTO `wp_tt_vals` VALUES (57, '0_5ed1dea238f821.38902385', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2233222C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303633315C7530363438222C2263757272656E63795F7369676E2D325B305D223A226575222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 08:49:02', '2020-05-30 08:49:02');
INSERT INTO `wp_tt_vals` VALUES (58, '0_5ed1df0e9b66d6.46491751', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2233222C2263757272656E63792D325B305D223A225C75303633335C75303634365C7530363261222C2263757272656E63795F7369676E2D325B305D223A225C7530366363222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 08:50:55', '2020-05-30 08:50:55');
INSERT INTO `wp_tt_vals` VALUES (59, '0_5ed1ea921b97a3.19482269', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2233222C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303633315C7530363438222C2263757272656E63795F7369676E2D325B305D223A224575222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 09:40:23', '2020-05-30 09:40:23');
INSERT INTO `wp_tt_vals` VALUES (60, '0_5ed1eb314b4c93.49825860', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22636F756E7472792D315B315D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C22636F756E7472792D315B325D223A225C75303632375C75303634365C75303661665C75303634345C75303663635C7530363333222C22646573632D315B305D223A22222C22646573632D315B315D223A22222C22646573632D315B325D223A22227D, '0', '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_tt_vals` VALUES (61, '0_5ed1eb7493c329.79654130', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 09:43:33', '2020-05-30 09:43:33');
INSERT INTO `wp_tt_vals` VALUES (62, '0_5ed1ec3acffe04.74007343', 0x7B22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2231222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-30 09:47:01', '2020-05-30 09:47:01');
INSERT INTO `wp_tt_vals` VALUES (63, '0_5ed1ec505736e7.78738833', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 09:47:14', '2020-05-30 09:47:14');
INSERT INTO `wp_tt_vals` VALUES (64, '0_5ed1ec5da00161.35644493', 0x7B22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303633335C75303634365C7530363261222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2232222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22313030222C22646573632D325B305D223A22227D, '0', '2020-05-30 10:58:25', '2020-05-30 10:58:25');
INSERT INTO `wp_tt_vals` VALUES (65, '0_5ed267f8ba2872.83072146', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303638365C75303663635C7530363436222C22646573632D315B305D223A22227D, '0', '2020-05-30 18:34:54', '2020-05-30 18:34:54');
INSERT INTO `wp_tt_vals` VALUES (66, '0_5ed267d5d5ea31.98739341', 0x7B22636F756E7472795F69642D32223A2234222C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 18:35:10', '2020-05-30 18:35:10');
INSERT INTO `wp_tt_vals` VALUES (67, '0_5ed268f7da0722.37764574', 0x7B22636F756E7472795F69642D325B305D223A2234222C2263757272656E63792D325B305D223A225C75303632635C75303663635C75303632375C75303632365C7530363438222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2234222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-30 18:40:58', '2020-05-30 18:40:58');
INSERT INTO `wp_tt_vals` VALUES (68, '0_5ed26a0e5515d9.82143252', 0x7B22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303637655C75303634365C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2232222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-30 18:44:58', '2020-05-30 18:44:58');
INSERT INTO `wp_tt_vals` VALUES (69, '0_5ed26a74e69809.59246264', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 18:45:31', '2020-05-30 18:45:32');
INSERT INTO `wp_tt_vals` VALUES (70, '0_5ed26a86cb46c4.48984670', 0x7B22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2238222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 18:46:03', '2020-05-30 18:46:05');
INSERT INTO `wp_tt_vals` VALUES (71, '0_5ed29a2fc88316.45586585', 0x7B22636F756E7472795F69642D32223A2231222C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A225C7530363261222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:14:21', '2020-05-30 22:14:21');
INSERT INTO `wp_tt_vals` VALUES (72, '0_5ed29cac137f87.94784398', 0x7B22636F756E7472795F69642D32223A2231222C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:20:10', '2020-05-30 22:20:10');
INSERT INTO `wp_tt_vals` VALUES (73, '0_5ed29cea863027.12138329', 0x7B22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F616262722D325B305D223A22222C22706172656E745F63757272656E63795F69642D325B305D223A2232222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:23:57', '2020-05-30 22:23:57');
INSERT INTO `wp_tt_vals` VALUES (74, '0_5ed29e5c274db3.68897677', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A2224222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:27:29', '2020-05-30 22:27:29');
INSERT INTO `wp_tt_vals` VALUES (75, '0_5ed2a097a39103.10073186', 0x7B22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A22737373737373222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A2234222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:36:23', '2020-05-30 22:36:23');
INSERT INTO `wp_tt_vals` VALUES (76, '0_5ed2a0a869c2c2.22364003', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22737373737373222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:36:38', '2020-05-30 22:36:38');
INSERT INTO `wp_tt_vals` VALUES (77, '0_5ed2a10e5ac699.76553409', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:38:59', '2020-05-30 22:39:00');
INSERT INTO `wp_tt_vals` VALUES (78, '0_5ed2a20f6d4e71.73751148', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A226565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:42:36', '2020-05-30 22:42:36');
INSERT INTO `wp_tt_vals` VALUES (79, '0_5ed2a21b0778f2.82600288', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:42:46', '2020-05-30 22:42:46');
INSERT INTO `wp_tt_vals` VALUES (80, '0_5ed2a2250a4057.07834936', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:42:57', '2020-05-30 22:42:57');
INSERT INTO `wp_tt_vals` VALUES (81, '0_5ed2a25aa00e45.00850467', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227474747474222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:43:51', '2020-05-30 22:43:51');
INSERT INTO `wp_tt_vals` VALUES (82, '0_5ed2a27ec1c7e5.66823535', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22737373737373222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:44:28', '2020-05-30 22:44:28');
INSERT INTO `wp_tt_vals` VALUES (83, '0_5ed2a2b6ea4fd0.92637517', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22737373737373222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:45:22', '2020-05-30 22:45:22');
INSERT INTO `wp_tt_vals` VALUES (84, '0_5ed2a2c40ae440.63374509', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22646464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:45:38', '2020-05-30 22:45:38');
INSERT INTO `wp_tt_vals` VALUES (85, '0_5ed2a2d8010d81.39189730', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:46:41', '2020-05-30 22:46:41');
INSERT INTO `wp_tt_vals` VALUES (86, '0_5ed2a30e38c757.46134718', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2265656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A227269676874222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:46:55', '2020-05-30 22:46:55');
INSERT INTO `wp_tt_vals` VALUES (87, '0_5ed2a341072320.04511185', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22353535353535222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:47:51', '2020-05-30 22:47:51');
INSERT INTO `wp_tt_vals` VALUES (88, '0_5ed2a3521ef464.01535251', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A227269676874222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:48:00', '2020-05-30 22:48:00');
INSERT INTO `wp_tt_vals` VALUES (89, '0_5ed2a3b96b5cd3.23673153', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A22656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:49:47', '2020-05-30 22:49:47');
INSERT INTO `wp_tt_vals` VALUES (90, '0_5ed2a3de8e52c8.66980011', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2272727272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-30 22:50:21', '2020-05-30 22:50:21');
INSERT INTO `wp_tt_vals` VALUES (91, '0_5ed2a45e171d91.73461191', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2273737373737373222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:52:27', '2020-05-30 22:52:27');
INSERT INTO `wp_tt_vals` VALUES (92, '0_5ed2a47584f825.80387583', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:52:50', '2020-05-30 22:52:50');
INSERT INTO `wp_tt_vals` VALUES (93, '0_5ed2a489eff690.62050823', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22646464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:53:10', '2020-05-30 22:53:10');
INSERT INTO `wp_tt_vals` VALUES (94, '0_5ed2a499495f94.10928671', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2264646464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-30 22:53:27', '2020-05-30 22:53:27');
INSERT INTO `wp_tt_vals` VALUES (95, '0_5ed2c60a914860.85983090', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:16:32', '2020-05-31 01:16:32');
INSERT INTO `wp_tt_vals` VALUES (96, '0_5ed2c630368295.18409287', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:16:54', '2020-05-31 01:16:54');
INSERT INTO `wp_tt_vals` VALUES (97, '0_5ed2c6610e7c24.97404483', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:17:34', '2020-05-31 01:17:34');
INSERT INTO `wp_tt_vals` VALUES (98, '0_5ed2c66b1230e4.19421542', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:17:50', '2020-05-31 01:17:50');
INSERT INTO `wp_tt_vals` VALUES (99, '0_5ed2c6d50151e0.31429821', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:19:29', '2020-05-31 01:19:29');
INSERT INTO `wp_tt_vals` VALUES (100, '0_5ed2c717b79081.94174170', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2264646464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:20:36', '2020-05-31 01:20:36');
INSERT INTO `wp_tt_vals` VALUES (101, '0_5ed2c741c21347.09946953', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:21:22', '2020-05-31 01:21:22');
INSERT INTO `wp_tt_vals` VALUES (102, '0_5ed2c77eddb650.27775306', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303633315C7530363438222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:22:19', '2020-05-31 01:22:19');
INSERT INTO `wp_tt_vals` VALUES (103, '0_5ed2c7e6e970b8.72726678', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303633315C7530363438222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:24:03', '2020-05-31 01:24:03');
INSERT INTO `wp_tt_vals` VALUES (104, '0_5ed2c87d26f5e3.38034072', 0x7B22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A226666666666222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F69642D325B305D223A223331222C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:26:37', '2020-05-31 01:26:37');
INSERT INTO `wp_tt_vals` VALUES (105, '0_5ed2c8aa81af94.82249551', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2268686868686868686868222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:27:19', '2020-05-31 01:27:19');
INSERT INTO `wp_tt_vals` VALUES (106, '0_5ed2c8df916148.39947063', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227474747474747474222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:28:12', '2020-05-31 01:28:12');
INSERT INTO `wp_tt_vals` VALUES (107, '0_5ed2c8ee13e270.37671445', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22646464646464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D32223A6E756C6C2C22646573632D325B305D223A22227D, '0', '2020-05-31 01:28:26', '2020-05-31 01:28:26');
INSERT INTO `wp_tt_vals` VALUES (108, '0_5ed2c9438ebf14.73954117', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303661395C75303632375C75303634365C75303632375C75303632665C7530363237222C22646573632D315B305D223A22227D, '0', '2020-05-31 01:29:57', '2020-05-31 01:29:57');
INSERT INTO `wp_tt_vals` VALUES (109, '0_5ed2c935ab82b1.83512429', 0x7B22636F756E7472795F69642D32223A2235222C2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:30:02', '2020-05-31 01:30:02');
INSERT INTO `wp_tt_vals` VALUES (110, '0_5ed2c967d483f4.02147152', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223339222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:30:34', '2020-05-31 01:31:02');
INSERT INTO `wp_tt_vals` VALUES (111, '0_5ed2c991bcda35.97545593', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:31:22', '2020-05-31 01:31:22');
INSERT INTO `wp_tt_vals` VALUES (112, '0_5ed2c9a48bc8b5.67092743', 0x7B22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303633335C75303634365C7530363261222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F69642D325B305D223A223431222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 01:31:33', '2020-05-31 01:31:34');
INSERT INTO `wp_tt_vals` VALUES (113, '0_5ed2cfaec1a444.67278550', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432636661656331613434342E3637323738353530222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C22626173655F63757272656E63795F69642D33223A5B223431225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223339225D2C22726174652D33223A5B223137353030225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 01:57:50', '2020-05-31 01:57:50');
INSERT INTO `wp_tt_vals` VALUES (114, '0_5ed2cff90a5fa1.28891950', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223339225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223431225D2C22726174652D33223A5B223137353030225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432636666393061356661312E3238383931393530222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 01:58:34', '2020-05-31 01:58:34');
INSERT INTO `wp_tt_vals` VALUES (115, '0_5ed2d00fd14e26.83327902', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223339225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223430225D2C22726174652D33223A5B2234343434225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643030666431346532362E3833333237393032222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 01:58:55', '2020-05-31 01:58:55');
INSERT INTO `wp_tt_vals` VALUES (116, '0_5ed2d0b1e9e654.16791712', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223430225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223431225D2C22726174652D33223A5B223333333333225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643062316539653635342E3136373931373132222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 02:01:47', '2020-05-31 02:01:47');
INSERT INTO `wp_tt_vals` VALUES (117, '0_5ed2d0e1e0bc62.65204973', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223431225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223431225D2C22726174652D33223A5B22333333225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643065316530626336322E3635323034393733222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 02:02:51', '2020-05-31 02:02:51');
INSERT INTO `wp_tt_vals` VALUES (118, '0_5ed2d16d61cbe2.65685870', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223430225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223339225D2C22726174652D33223A5B2231225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643136643631636265322E3635363835383730222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 02:05:14', '2020-05-31 02:05:14');
INSERT INTO `wp_tt_vals` VALUES (119, '0_5ed2d1dfeb4dd1.20101273', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223430225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223339225D2C22726174652D33223A5B2234225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643164666562346464312E3230313031323733222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 02:06:36', '2020-05-31 02:06:36');
INSERT INTO `wp_tt_vals` VALUES (120, '0_5ed2d1fed29659.87651583', 0x7B225F5F7373745F5F70726F636573735F6964223A2233222C22626173655F63757272656E63795F69642D33223A5B223339225D2C2265786368616E6765645F63757272656E63795F69642D33223A5B223431225D2C22726174652D33223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656432643166656432393635392E3837363531353833222C225F5F7373745F5F646174615F616374696F6E73223A2233222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-05-31 02:07:05', '2020-05-31 02:07:05');
INSERT INTO `wp_tt_vals` VALUES (121, '0_5ed2d274b04ad7.92693663', 0x7B22646573632D33223A6E756C6C2C22626173655F63757272656E63795F69642D335B305D223A223430222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223339222C22726174652D335B305D223A223130227D, '0', '2020-05-31 02:09:11', '2020-05-31 02:09:11');
INSERT INTO `wp_tt_vals` VALUES (122, '0_5ed2d4a98ed397.70548095', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227272727272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223339222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22302E3131313131313131222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:19:33', '2020-05-31 02:19:33');
INSERT INTO `wp_tt_vals` VALUES (123, '0_5ed2daf35ed720.52731905', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:45:49', '2020-05-31 02:45:49');
INSERT INTO `wp_tt_vals` VALUES (124, '0_5ed2db5dc489c2.26409108', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:49:45', '2020-05-31 02:50:40');
INSERT INTO `wp_tt_vals` VALUES (125, '0_5ed2dc4e8cb066.57907296', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:51:55', '2020-05-31 02:51:55');
INSERT INTO `wp_tt_vals` VALUES (126, '0_5ed2dc9936ae09.43474054', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:52:41', '2020-05-31 02:52:41');
INSERT INTO `wp_tt_vals` VALUES (127, '0_5ed2dd56408555.86956994', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 02:55:33', '2020-05-31 02:55:34');
INSERT INTO `wp_tt_vals` VALUES (128, '0_5ed2e2ab0361b5.52254276', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:18:39', '2020-05-31 03:18:40');
INSERT INTO `wp_tt_vals` VALUES (129, '0_5ed2e2f8210254.69951288', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303663635C75303663635C75303663635C75303663635C75303663635C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:19:34', '2020-05-31 03:19:34');
INSERT INTO `wp_tt_vals` VALUES (130, '0_5ed2e320231c59.91280682', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:20:14', '2020-05-31 03:20:15');
INSERT INTO `wp_tt_vals` VALUES (131, '0_5ed2e33edd7343.51947627', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632365C75303632365C75303632365C75303632365C75303632365C75303632365C75303632365C7530363236222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:20:45', '2020-05-31 03:20:45');
INSERT INTO `wp_tt_vals` VALUES (132, '0_5ed2e3b9af1701.73691667', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303663635C75303663635C75303663635C75303663635C75303663635C75303663635C75303663635C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:22:54', '2020-05-31 03:22:54');
INSERT INTO `wp_tt_vals` VALUES (133, '0_5ed2e3e05d2a94.11661780', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303663635C75303632625C75303634325C75303633355C75303632625C7530363432222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:23:25', '2020-05-31 03:23:25');
INSERT INTO `wp_tt_vals` VALUES (134, '0_5ed2e4319405c1.95028676', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A227979797979797979222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A223130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:24:47', '2020-05-31 03:24:48');
INSERT INTO `wp_tt_vals` VALUES (135, '0_5ed2e4bf12adc5.14330771', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A223535353535353535353535222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:27:09', '2020-05-31 03:27:09');
INSERT INTO `wp_tt_vals` VALUES (136, '0_5ed2e52d85f278.41722655', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:28:59', '2020-05-31 03:28:59');
INSERT INTO `wp_tt_vals` VALUES (137, '0_5ed2e580e173e1.59499260', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:30:42', '2020-05-31 03:30:42');
INSERT INTO `wp_tt_vals` VALUES (138, '0_5ed2e5d9900708.97347180', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:31:58', '2020-05-31 03:31:58');
INSERT INTO `wp_tt_vals` VALUES (139, '0_5ed2e63bf3a7f3.35860287', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:33:29', '2020-05-31 03:33:29');
INSERT INTO `wp_tt_vals` VALUES (140, '0_5ed2e6d2ac6222.04898051', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:36:06', '2020-05-31 03:36:06');
INSERT INTO `wp_tt_vals` VALUES (141, '0_5ed2e73d862110.96288118', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633345C75303632375C75303634375C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223437222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-05-31 03:37:58', '2020-05-31 03:37:59');
INSERT INTO `wp_tt_vals` VALUES (142, '0_5ed2ee82a49da9.45687792', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A227373737373222C22646573632D325B305D223A22227D, '0', '2020-05-31 04:14:21', '2020-05-31 04:14:21');
INSERT INTO `wp_tt_vals` VALUES (143, '0_5ed2f0c1ba6083.76133234', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22737373737373737373737361222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 04:18:22', '2020-05-31 04:18:22');
INSERT INTO `wp_tt_vals` VALUES (144, '0_5ed2f0d0d64634.22965068', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2265656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223434222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-05-31 04:18:38', '2020-05-31 04:18:38');
INSERT INTO `wp_tt_vals` VALUES (145, '1_5ed2f39cb4cab5.65740982', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223438222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '1', '2020-05-31 04:31:02', '2020-05-31 04:31:02');
INSERT INTO `wp_tt_vals` VALUES (146, '1_5ed2f3c1a70847.85182242', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223533222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '1', '2020-05-31 04:31:18', '2020-05-31 04:31:18');

-- ----------------------------
-- Table structure for wp_tt_variable
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_variable`;
CREATE TABLE `wp_tt_variable`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta`  (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`umeta_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'myehrajat');
INSERT INTO `wp_usermeta` VALUES (2, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES (3, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta` VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES (9, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES (11, 1, 'locale', '');
INSERT INTO `wp_usermeta` VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES (14, 1, 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta` VALUES (15, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES (16, 1, 'session_tokens', 'a:1:{s:64:\"6bc5e2294ba9888113fd8d48bc0827238f7c3472814e666612a862d4ff7e16f5\";a:4:{s:10:\"expiration\";i:1591055581;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590882781;}}');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- ----------------------------
-- Table structure for wp_users
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `user_login_key`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nicename`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES (1, 'myehrajat', '$P$B6q4ORLp1LCyaKf4iQPf9xSTtM9t7z1', 'myehrajat', 'ejarehkhodro@gmail.com', '', '2020-05-26 06:13:36', '', 0, 'myehrajat');

SET FOREIGN_KEY_CHECKS = 1;
