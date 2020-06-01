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

 Date: 02/06/2020 02:18:10
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_country
-- ----------------------------
INSERT INTO `wp_custom_country` VALUES (1, 'ایران', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (2, 'امریکا', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (3, 'انگلیس', '', '', '0_5ed1eb314b4c93.49825860', NULL, '2020-05-30 09:42:37', '2020-05-30 09:42:37');
INSERT INTO `wp_custom_country` VALUES (4, 'چین', '', '', '0_5ed267f8ba2872.83072146', NULL, '2020-05-30 18:34:55', '2020-05-30 18:34:55');
INSERT INTO `wp_custom_country` VALUES (5, 'کانادا', '', '', '0_5ed2c9438ebf14.73954117', NULL, '2020-05-31 01:29:57', '2020-05-31 01:29:57');
INSERT INTO `wp_custom_country` VALUES (6, 'ایران', '', '', '0_5ed574d572e1c5.95730529', NULL, '2020-06-02 02:06:24', '2020-06-02 02:06:24');
INSERT INTO `wp_custom_country` VALUES (7, 'ایران', '', '', '0_5ed5756e58ce79.25921874', NULL, '2020-06-02 02:08:57', '2020-06-02 02:08:57');

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
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_currency
-- ----------------------------
INSERT INTO `wp_custom_currency` VALUES (53, '1', 'تومان', '', '', 'right', '48', '', '', '1_5ed2f39cb4cab5.65740982', NULL, '2020-05-31 04:31:02', '2020-05-31 04:31:02');
INSERT INTO `wp_custom_currency` VALUES (54, '1', 'ریال', '', '', 'right', '53', '1/10', '', '1_5ed2f3c1a70847.85182242', NULL, '2020-05-31 04:31:18', '2020-05-31 04:31:18');
INSERT INTO `wp_custom_currency` VALUES (55, '2', 'دلار', '', '', 'right', '', '', '', '0_5ed56ff4df4806.63528882', NULL, '2020-06-02 01:46:02', '2020-06-02 01:46:02');
INSERT INTO `wp_custom_currency` VALUES (56, '2', 'سنت', '', '', 'right', '55', '1/100', '', '0_5ed5729980bfd6.61356458', NULL, '2020-06-02 01:57:21', '2020-06-02 01:57:21');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_currency_rate
-- ----------------------------
INSERT INTO `wp_custom_currency_rate` VALUES (7, '53', '55', '17500', '', '0_5ed572e6803001.95172630', NULL, '2020-06-02 01:58:15', '2020-06-02 01:58:15');
INSERT INTO `wp_custom_currency_rate` VALUES (8, '54', '56', '1/11111', 'dddddddd', '0_5ed5769d3ea9c4.07717501', NULL, '2020-06-02 02:14:12', '2020-06-02 02:14:12');

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
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:6:{i:1591049618;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591078417;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591078418;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591078437;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591078439;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (115, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (117, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES (128, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1591078438', 'no');
INSERT INTO `wp_options` VALUES (129, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (130, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1591078439', 'no');
INSERT INTO `wp_options` VALUES (131, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `wp_options` VALUES (133, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (136, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (140, 'recovery_mode_email_last_sent', '1590882796', 'yes');
INSERT INTO `wp_options` VALUES (208, '_site_transient_timeout_browser_3159e548b459a213a1c6a2a1736ee626', '1591487582', 'no');
INSERT INTO `wp_options` VALUES (209, '_site_transient_browser_3159e548b459a213a1c6a2a1736ee626', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (222, '_site_transient_timeout_theme_roots', '1591047303', 'no');
INSERT INTO `wp_options` VALUES (223, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (226, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fa_IR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1591045554;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (227, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591045555;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (228, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591045557;s:7:\"checked\";a:18:{s:27:\"bootsrap-enqueue/plugin.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:17:\"custom/plugin.php\";s:5:\"1.0.0\";s:19:\"01-debug/plugin.php\";s:5:\"1.0.0\";s:20:\"02-common/plugin.php\";s:5:\"1.0.0\";s:23:\"03-attribute/plugin.php\";s:5:\"1.0.0\";s:20:\"04-access/plugin.php\";s:5:\"1.0.0\";s:19:\"05-extra/plugin.php\";s:5:\"1.0.0\";s:19:\"06-input/plugin.php\";s:5:\"1.0.0\";s:19:\"07-block/plugin.php\";s:5:\"1.0.0\";s:22:\"08-fieldset/plugin.php\";s:5:\"1.0.0\";s:18:\"09-form/plugin.php\";s:5:\"1.0.0\";s:21:\"10-process/plugin.php\";s:5:\"1.0.0\";s:25:\"11-data-action/plugin.php\";s:5:\"1.0.0\";s:25:\"99-import-demo/plugin.php\";s:5:\"1.0.0\";s:28:\"00_eval_functions/plugin.php\";s:5:\"1.0.0\";s:43:\"fast-user-switching/fast-user-switching.php\";s:5:\"1.4.8\";s:33:\"jquery-updater/jquery-updater.php\";s:5:\"3.5.0\";}s:8:\"response\";a:1:{s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/jquery-updater.3.5.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'کشور', 'country', 'کشور را انتخاب کنید', '', '', '', 'required', '', '', '', '1', NULL, NULL, '2020-05-30 03:51:10', '2020-05-30 03:51:10');
INSERT INTO `wp_tt_attr_input_select` VALUES (2, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', '', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (3, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', 'required', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (4, 'واحد پول بالاتر', '', 'واحد پول را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-02 01:56:17', '2020-06-02 01:56:17');

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
INSERT INTO `wp_tt_block` VALUES (3, 'نرخ تبدیل ارز', NULL, 'block', 'input', NULL, '31-34', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-05-31 01:43:37', '2020-05-31 01:43:37');

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
INSERT INTO `wp_tt_data_action_database` VALUES (1, 'کشور', 'country', 'custom_country', 'country={country}', 'country', 'کشور جدید {data_value:country} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات کشور با آی دی {insert_id} ویرایش شد.<br>', 'نام کشور تکراری است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-05-29 18:34:11', '2020-05-29 18:34:11');
INSERT INTO `wp_tt_data_action_database` VALUES (2, 'واحد پول', 'currency', 'custom_currency', 'country_id={country_id} AND currency={currency}', 'currency', 'واحد پول جدید {data_value:currency} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات واحد پول با آی دی {insert_id} ویرایش شد.<br>', 'واحد پول تکراری است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, 'sys_insert_currency_rate({vals:parent_currency_id},{insert_id},{vals:parent_currency_ratio});\r\n/*{insert_id} is base and parent_currency_id is exchange*/', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_database` VALUES (3, 'نرخ تبدیل ارز', 'currency_rate', 'custom_currency_rate', '(base_currency_id={base_currency_id} AND exchanged_currency_id={exchanged_currency_id}) OR (exchanged_currency_id={base_currency_id} AND base_currency_id={exchanged_currency_id}) OR {base_currency_id}={exchanged_currency_id}', 'currency_rate', 'نرخ تبدیل ارز جدید با آی دی {insert_id} افزوده شد.<br>', 'نرخ تبدیل ارز با آی دی {insert_id} ویرایش شد.<br>', 'نرخ تبدیل ارز تکراری است و قبلا تعریف شده است.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
INSERT INTO `wp_tt_input` VALUES (26, 'واحد پول بالاتر', 'parent_currency_id-2', '4', '', '', 'parent_currency_id-2', '24', '1', '4', '', '1', '1-4', '', '', '', '', NULL, NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (27, 'نرخ معادل با واحد پول بالاتر', 'parent_currency_ratio-2', '4', '', '', 'parent_currency_ratio-2', '1', '1', '2', '', '1', '', '', '', '', '', 'مثال: اگر واحد پول ریال است و واحد پول بالاتر تومان نرخ معادل آن 1/10 است.', NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (28, 'توضیحات', 'desc-2', '4', '', '', 'desc-2', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-30 20:10:09', '2020-05-30 20:10:09');
INSERT INTO `wp_tt_input` VALUES (31, 'ارز پایه', 'base_currency_id-3', '4', '', '', 'base_currency_id-3', '22', '1', '3', '', '1', '', '', '', '', '', 'این ارز واحد یک در نظر گرفته می شود. و چه میزان از ارز معادل برابر یک واحد این ارز است؟', NULL, '2020-05-30 22:10:43', '2020-05-30 22:10:43');
INSERT INTO `wp_tt_input` VALUES (32, 'ارز معادل', 'exchanged_currency_id-3', '4', '', '', 'exchanged_currency_id-3', '22', '1', '3', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 01:36:13', '2020-05-31 01:36:13');
INSERT INTO `wp_tt_input` VALUES (33, 'نرخ تبدیل', 'rate-3', '4', '', '', 'rate-3', '1', '1', '2', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 01:36:16', '2020-05-31 01:36:16');
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
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_tt_vals` VALUES (147, '0_5ed56ff4df4806.63528882', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-02 01:46:02', '2020-06-02 01:46:02');
INSERT INTO `wp_tt_vals` VALUES (148, '0_5ed5729980bfd6.61356458', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303633335C75303634365C7530363261222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A223535222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F313030222C22646573632D325B305D223A22227D, '0', '2020-06-02 01:57:21', '2020-06-02 01:57:21');
INSERT INTO `wp_tt_vals` VALUES (149, '0_5ed572c0128733.51340379', 0x7B22646573632D33223A6E756C6C2C22626173655F63757272656E63795F69642D335B305D223A223535222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223533222C22726174652D335B305D223A223137353030227D, '0', '2020-06-02 01:57:41', '2020-06-02 01:57:41');
INSERT INTO `wp_tt_vals` VALUES (150, '0_5ed572e6803001.95172630', 0x7B22646573632D33223A6E756C6C2C22626173655F63757272656E63795F69642D335B305D223A223533222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223535222C22726174652D335B305D223A223137353030227D, '0', '2020-06-02 01:58:14', '2020-06-02 01:58:15');
INSERT INTO `wp_tt_vals` VALUES (151, '0_5ed5730e532c73.49282005', 0x7B22646573632D33223A6E756C6C2C22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223533222C22726174652D335B305D223A22313735303030227D, '0', '2020-06-02 02:00:15', '2020-06-02 02:00:15');
INSERT INTO `wp_tt_vals` VALUES (152, '0_5ed5739749bb69.39341683', 0x7B22626173655F63757272656E63795F69642D335B305D223A223535222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22315C2F3131313131222C22646573632D335B305D223A22227D, '0', '2020-06-02 02:01:12', '2020-06-02 02:01:13');
INSERT INTO `wp_tt_vals` VALUES (153, '0_5ed573b1c96112.18580482', 0x7B22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22222C22646573632D335B305D223A22227D, '0', '2020-06-02 02:01:36', '2020-06-02 02:01:36');
INSERT INTO `wp_tt_vals` VALUES (154, '0_5ed573cd9e0927.80082015', 0x7B22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22355C2F3636222C22646573632D335B305D223A22353535353535227D, '0', '2020-06-02 02:02:31', '2020-06-02 02:02:31');
INSERT INTO `wp_tt_vals` VALUES (155, '0_5ed5744c449410.15978120', 0x7B22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22335C2F333333222C22646573632D335B305D223A2272727477657274776572227D, '0', '2020-06-02 02:04:17', '2020-06-02 02:04:17');
INSERT INTO `wp_tt_vals` VALUES (156, '0_5ed574707c2332.00963918', 0x7B22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22315C2F3131313131222C22646573632D335B305D223A223535353535353535227D, '0', '2020-06-02 02:04:49', '2020-06-02 02:04:50');
INSERT INTO `wp_tt_vals` VALUES (157, '0_5ed574d572e1c5.95730529', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-02 02:06:24', '2020-06-02 02:06:24');
INSERT INTO `wp_tt_vals` VALUES (158, '0_5ed5756e58ce79.25921874', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-02 02:08:57', '2020-06-02 02:08:57');
INSERT INTO `wp_tt_vals` VALUES (159, '0_5ed5767bc172e9.75250162', 0x7B22626173655F63757272656E63795F69642D335B305D223A223536222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22315C2F3131313131222C22646573632D335B305D223A227373737373227D, '0', '2020-06-02 02:13:31', '2020-06-02 02:13:31');
INSERT INTO `wp_tt_vals` VALUES (160, '0_5ed5769d3ea9c4.07717501', 0x7B22626173655F63757272656E63795F69642D335B305D223A223534222C2265786368616E6765645F63757272656E63795F69642D335B305D223A223536222C22726174652D335B305D223A22315C2F3131313131222C22646573632D335B305D223A226464646464646464227D, '0', '2020-06-02 02:14:12', '2020-06-02 02:14:12');

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
