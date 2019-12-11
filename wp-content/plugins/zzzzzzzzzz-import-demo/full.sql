/*
 Navicat MySQL Data Transfer

 Source Server         : shahab
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : ehrajat-dev

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 10/12/2019 23:37:15
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
  `comment_date` datetime(0) NOT NULL,
  `comment_date_gmt` datetime(0) NOT NULL,
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
INSERT INTO `wp_comments` VALUES (1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-14 14:55:03', '2019-08-14 14:55:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
  `link_updated` datetime(0) NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 515 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'admin', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'ejarehkhodro@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '1', 'yes');
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
INSERT INTO `wp_options` VALUES (29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '0', 'yes');
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
INSERT INTO `wp_options` VALUES (93, 'initial_db_version', '44719', 'yes');
INSERT INTO `wp_options` VALUES (94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (95, 'fresh_site', '1', 'yes');
INSERT INTO `wp_options` VALUES (96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (102, 'cron', 'a:5:{i:1576050903;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576076103;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576076114;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576076116;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (113, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (115, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES (138, 'recently_activated', 'a:1:{s:43:\"dont-muck-my-markup/dont-muck-my-markup.php\";i:1575574919;}', 'yes');
INSERT INTO `wp_options` VALUES (145, 'recovery_mode_email_last_sent', '1575677938', 'yes');
INSERT INTO `wp_options` VALUES (277, 'active_plugins', 'a:10:{i:0;s:18:\"1-debug/plugin.php\";i:1;s:19:\"2-common/plugin.php\";i:2;s:22:\"3-attribute/plugin.php\";i:3;s:19:\"4-access/plugin.php\";i:4;s:18:\"5-extra/plugin.php\";i:5;s:18:\"6-input/plugin.php\";i:6;s:18:\"7-block/plugin.php\";i:7;s:21:\"8-fieldset/plugin.php\";i:8;s:43:\"fast-user-switching/fast-user-switching.php\";i:9;s:33:\"zzzzzzzzzz-import-demo/plugin.php\";}', 'yes');
INSERT INTO `wp_options` VALUES (344, 'admin_email_lifespan', '1590615090', 'yes');
INSERT INTO `wp_options` VALUES (345, 'db_upgraded', '', 'yes');
INSERT INTO `wp_options` VALUES (347, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (355, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1576033335;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (362, 'fus_settings', 'a:3:{s:8:\"fus_name\";i:1;s:8:\"fus_role\";i:1;s:12:\"fus_username\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (363, 'tikemp_recent_imp_users', 'a:1:{i:0;s:47:\"2&demo demo&Subscriber - demo&November 29, 2019\";}', 'yes');
INSERT INTO `wp_options` VALUES (429, 'dmmm', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (441, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576029982;s:7:\"checked\";a:11:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:18:\"1-debug/plugin.php\";s:5:\"1.0.0\";s:19:\"2-common/plugin.php\";s:5:\"1.0.0\";s:22:\"3-attribute/plugin.php\";s:5:\"1.0.0\";s:19:\"4-access/plugin.php\";s:5:\"1.0.0\";s:18:\"5-extra/plugin.php\";s:5:\"1.0.0\";s:18:\"6-input/plugin.php\";s:5:\"1.0.0\";s:18:\"7-block/plugin.php\";s:5:\"1.0.0\";s:21:\"8-fieldset/plugin.php\";s:5:\"1.0.0\";s:33:\"zzzzzzzzzz-import-demo/plugin.php\";s:5:\"1.0.0\";s:43:\"fast-user-switching/fast-user-switching.php\";s:5:\"1.4.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES (507, '_site_transient_timeout_theme_roots', '1576035134', 'no');
INSERT INTO `wp_options` VALUES (508, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (510, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576033336;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');

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
  `post_date` datetime(0) NOT NULL,
  `post_date_gmt` datetime(0) NOT NULL,
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
  `post_modified` datetime(0) NOT NULL,
  `post_modified_gmt` datetime(0) NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES (1, 1, '2019-08-14 14:55:03', '2019-08-14 14:55:03', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-08-14 14:55:03', '2019-08-14 14:55:03', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES (2, 1, '2019-08-14 14:55:03', '2019-08-14 14:55:03', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-14 14:55:03', '2019-08-14 14:55:03', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2019-08-14 14:55:03', '2019-08-14 14:55:03', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-14 14:55:03', '2019-08-14 14:55:03', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0);

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
INSERT INTO `wp_terms` VALUES (1, 'Uncategorized', 'uncategorized', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_custom
-- ----------------------------
INSERT INTO `wp_tt_attr_custom` VALUES (1, '', '', 'custom_attr1', 'custom_value1', NULL, NULL, '2019-09-17 08:01:52', '2019-09-17 08:01:52');
INSERT INTO `wp_tt_attr_custom` VALUES (2, '', '', 'custom_attr2', 'custom_value2', NULL, NULL, '2019-09-17 08:02:00', '2019-09-17 08:02:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_event
-- ----------------------------
INSERT INTO `wp_tt_attr_html_event` VALUES (1, 'Test Of Event 1', 'test-event1', 'onclick', '%%E%%return \'1-2\';', 'This is a test for global attributes of events', 'Myehrajat', '2019-08-24 17:57:31', '2019-08-24 17:57:31');
INSERT INTO `wp_tt_attr_html_event` VALUES (2, 'Test Of Event 2', 'test-event2', 'onkeypress', '%%E%%return 3;', 'This is a test for global attributes of events', 'Myehrajat', '2019-08-24 17:57:37', '2019-08-24 17:57:37');

-- ----------------------------
-- Table structure for wp_tt_attr_html_event_jsfunction
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_event_jsfunction`;
CREATE TABLE `wp_tt_attr_html_event_jsfunction`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsfunction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_event_jsfunction
-- ----------------------------
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (1, 'Test Of Event Js Functions 1', 'test-js1', 'console.log(\'clicked\');', 'This is only Js function test for global event attribute', 'Myehrajat', '2019-08-24 17:58:00', '2019-08-24 17:58:00');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (2, 'Test Of Event Js Functions 2', 'test-js2', 'console.log(\'clicked second\');', 'This is only Js function test for global event attribute', 'Myehrajat', '2019-08-24 17:58:02', '2019-08-24 17:58:02');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (3, 'Test Of Event Js Functions 3', 'test-js3', 'console.log(\'key pressed\');', 'This is only Js function test for global event attribute', 'Myehrajat', '2019-09-16 01:11:14', '2019-09-16 01:11:14');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global` VALUES (1, 'Test Of Global Attribute', 'test-global-attr', '%%E%%return \'l\';', 'words', '%%E%%return \'1,2\';', 'true', 'true', '%%E%%return \'1-2\';', 'rtl', 'true', 'move', '', 'this_id', 'tel', 'is-attr', 'item_id', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', 'itemscope', 'http://schema.org/Thing', 'fa-ir', '%%E%% return \'1-2\' ; ', 'slot_element_name', 'true', '%%E%%return \'1-2\';', '1', 'this is a test title', 'yes', 'This is only a test for global attributes', 'Myehrajat', '2019-08-14 10:25:44', '2019-08-14 10:25:44');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_class
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_class` VALUES (1, 'Test Of Class 1', 'test-class-1', 'class-1', 'This is only a test for class global attribute', 'Myehrajat', '2019-09-16 01:20:24', '2019-09-16 01:20:17');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (2, 'Test Of Class 2', 'test-class-2', 'class-2', 'This is only a test for class global attribute', 'Myehrajat', '2019-09-16 00:32:29', '2019-09-16 00:32:29');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_data
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_data` VALUES (1, 'Test Of Data Attribute 1', 'test-attribute-1', 'attribute-1', 'value1', 'This is only test of data-attribute', 'Myehrajat', '2019-09-16 00:41:45', '2019-09-16 00:41:45');
INSERT INTO `wp_tt_attr_html_global_data` VALUES (2, 'Test Of Data Attribute 2', 'test-attribute-2', 'attribute-2', 'value2', 'This is only test of data-attribute', 'Myehrajat', '2019-09-16 00:41:50', '2019-09-16 00:41:50');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_itemprop
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_itemprop` VALUES (1, 'Test Of ItemProp Attribute 1', 'test-itemprop1', 'itemprop1', 'This is only a test for itemprop attributes', 'Myehrajat', '2019-09-16 01:06:05', '2019-09-16 01:06:05');
INSERT INTO `wp_tt_attr_html_global_itemprop` VALUES (2, 'Test Of ItemProp Attribute 1', 'test-itemprop2', 'itemprop2', 'This is only a test for itemprop attributes', 'Myehrajat', '2019-09-16 01:06:15', '2019-09-16 01:06:15');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_itemref
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_itemref` VALUES (1, 'Test Of ItemRef Attribute 1', 'test-itemref1', 'itemref1', 'This is only a test for itemref attributes', 'Myehrajat', '2019-09-16 01:07:09', '2019-09-16 01:07:09');
INSERT INTO `wp_tt_attr_html_global_itemref` VALUES (2, 'Test Of ItemRef Attribute 2', 'test-itemref2', 'itemref2', 'This is only a test for itemref attributes', 'Myehrajat', '2019-09-16 01:07:12', '2019-09-16 01:07:12');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_style
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_style` VALUES (1, 'Test Of Style 1', 'test-style', 'background-color', 'red', 'important', 'This is only test of global attribute of style', 'Myehrajat', '2019-09-16 01:14:41', '2019-09-16 01:14:41');
INSERT INTO `wp_tt_attr_html_global_style` VALUES (2, 'Test Of Style 2', 'test-style', 'text-align', 'left', '', 'This is only test of global attribute of style', 'Myehrajat', '2019-09-16 01:15:42', '2019-09-16 01:15:42');

-- ----------------------------
-- Table structure for wp_tt_attr_input_attr_list
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_attr_list`;
CREATE TABLE `wp_tt_attr_input_attr_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_label_function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query_value_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_label_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `json_value_pointer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_attr_list
-- ----------------------------
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (1, '', '', 'json', 'disabled', NULL, '', NULL, NULL, NULL, 'http://localhost/wp-content/plugins/zzzzzzzzzz-import-demo/sample.json.php', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->car', '%%E%%return \'1\';', NULL, NULL, '2019-10-19 13:41:32', '2019-10-19 13:41:32');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (2, '', '', 'query', NULL, NULL, NULL, 'SELECT * FROM wp_tt_input_types', 'return $a->epithet;', 'return $a->html_type;', NULL, NULL, NULL, '%%E%%return \'1\';', NULL, NULL, '2019-10-19 13:41:35', '2019-10-19 13:41:35');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (3, '', '', 'value', NULL, 'label', 'value', NULL, NULL, NULL, NULL, NULL, NULL, '%%E%%return \'1\';', NULL, NULL, '2019-10-19 13:41:40', '2019-10-19 13:41:40');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (4, '', '', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:40:04', '2019-10-23 16:40:04');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (5, '', '', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:40:08', '2019-10-23 16:40:08');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (6, '', '', NULL, NULL, NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:40:10', '2019-10-23 16:40:10');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (7, '', '', NULL, NULL, NULL, '%%E%%return \'2019-10-21\';', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:54:36', '2019-10-23 16:54:36');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (8, '', '', NULL, NULL, NULL, '2019-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:54:43', '2019-10-23 16:54:43');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (9, '', '', NULL, NULL, NULL, '2019-10-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 16:54:45', '2019-10-23 16:54:45');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (10, '', '', NULL, NULL, NULL, '2018-01-01T20:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:00:20', '2019-10-23 17:00:20');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (11, '', '', NULL, NULL, NULL, '2019-12-29T18:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:00:21', '2019-10-23 17:00:21');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (12, '', '', NULL, NULL, NULL, '2018-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:00:22', '2019-10-23 17:00:22');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (13, '', '', NULL, NULL, NULL, '2019-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:00:23', '2019-10-23 17:00:23');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (14, '', '', NULL, NULL, NULL, '18:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:40', '2019-10-23 17:11:40');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (15, '', '', NULL, NULL, NULL, '20:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:42', '2019-10-23 17:11:42');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (16, '', '', NULL, NULL, NULL, '2019-W12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:43', '2019-10-23 17:11:43');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (17, '', '', NULL, NULL, NULL, '2019-W39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:45', '2019-10-23 17:11:45');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (18, '', '', NULL, NULL, NULL, '2019-12-29T18:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:46', '2019-10-23 17:11:46');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (19, '', '', NULL, NULL, NULL, '2018-01-01T20:23:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:11:49', '2019-10-23 17:11:49');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (20, '', '', NULL, NULL, NULL, '#cccccc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:23:17', '2019-10-23 17:23:17');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (21, '', '', NULL, NULL, NULL, '#ff0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:23:19', '2019-10-23 17:23:19');
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (22, '', '', NULL, NULL, NULL, '#000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-23 17:23:20', '2019-10-23 17:23:20');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_checkbox_radio
-- ----------------------------
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (1, 'Checkbox Attr', 'checkbox-attr', 'autofocus', 'checked', 'required', 'Checkbox Attr Test', 'Myehrajat', '2019-10-19 10:04:15', '2019-10-19 10:04:15');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (2, 'Radio Attr', 'radio-attr', 'autofocus', 'checked', 'required', 'Radio Attr Test', 'Myehrajat', '2019-10-19 10:05:06', '2019-10-19 10:05:06');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_color
-- ----------------------------
INSERT INTO `wp_tt_attr_input_color` VALUES (1, 'Color Attr', 'Color -attr', 'on', 'autofocus', 'the-list-id', '20-22', 'Color Attr', 'Myehrajat', '2019-10-19 09:07:28', '2019-10-19 09:07:28');

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_date_time_related
-- ----------------------------
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (1, 'Date Test', 'Date Test', 'on', 'autofocus', 'list-id', '7-9', '2019-12-29', '2018-01-01', '', 'required', '7', 'Date Test Attr', 'Myehrajat', '2019-10-07 19:17:09', '2019-10-07 19:17:09');
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (2, 'Datetime-local Test', 'Datetime-local-Test', 'on', 'autofocus', 'list-id', '10-11', '2019-12-29T20:23:55', '2018-01-01T20:23:55', '', 'required', '%%E%% return 1*60*100;', 'Datetime-local Test Attr', 'Myehrajat', '2019-10-07 19:17:09', '2019-10-07 19:17:09');
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (3, 'Month Test', 'Month-Test', 'on', 'autofocus', 'list-id', '12-13', '2019-12', '2018-01', '', 'required', '2', 'Month Test Attr', 'Myehrajat', '2019-10-19 04:26:22', '2019-10-19 04:26:22');
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (4, 'Time Test', 'Time-Test', 'on', 'autofocus', 'list-id', '14-15', '18:23:55', '20:23:55', '', 'required', '%%E%% return 1*60*60;', 'Time Test Attr', 'Myehrajat', '2019-10-19 04:26:32', '2019-10-19 04:26:32');
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (5, 'Week Test', 'Week-Test', 'on', 'autofocus', 'list-id', '16-17', '2019-W40', '2019-W12', '', 'required', '3', 'Week Test Attr', 'Myehrajat', '2019-10-19 04:26:48', '2019-10-19 04:26:48');
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (6, 'Datetime Test', 'Datetime-Test', 'on', 'autofocus', 'list-id', '18-19', '2019-12-30T18:23:55', '2018-01-01T20:23:55', '', 'required', '%%E%% return 7*60*60;', 'Datetime Test Attr', 'Myehrajat', '2019-10-19 04:27:10', '2019-10-19 04:27:10');

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_email
-- ----------------------------
INSERT INTO `wp_tt_attr_input_email` VALUES (1, 'Email Test', 'email-attr', 'on', 'autofocus', 'list-id', '1-3', '20', '11', 'multiple', '[[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2, 3}$]', 'Email', '', 'required', '50', 'Email attr', 'Myehrajat', '2019-10-07 18:26:02', '2019-10-07 18:26:02');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_file
-- ----------------------------
INSERT INTO `wp_tt_attr_input_file` VALUES (1, 'Test Of File', 'fileattr', '1-4', 'autofocus', 'capture', 'multiple', 'required', 'Test file attrs', 'Myehrajat', '2019-10-07 16:06:50', '2019-10-07 16:06:50');

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
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (1, 'All Image', 'image', 'image/*', NULL, NULL, '2019-10-07 16:23:20', '2019-10-07 16:23:20');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (2, 'Zip Files', 'zip', '.zip', NULL, NULL, '2019-10-07 16:23:21', '2019-10-07 16:23:21');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (3, 'Audio only MP3', 'mp3', 'audio/mp3', NULL, NULL, '2019-10-07 16:23:23', '2019-10-07 16:23:23');
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (4, 'Text Files UTF8', 'utf8-text', 'text/plain;charset=UTF-8', NULL, NULL, '2019-10-07 17:53:24', '2019-10-07 17:53:24');

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
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_image
-- ----------------------------
INSERT INTO `wp_tt_attr_input_image` VALUES (1, 'Test Of Image', 'image-test', 'Image Alt', 'autofocus', 'https://google.com', 'multipart/form-data', 'get', 'formnovalidate', '_self', '20', 'https://moz.com/assets/images/blog/categories/whiteboard-friday.png?27dcaca', '40', 'Test of imag attr', 'Myehrajat', '2019-10-07 15:32:45', '2019-10-07 15:32:45');

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_number
-- ----------------------------
INSERT INTO `wp_tt_attr_input_number` VALUES (1, 'Number Attr', 'number-attr', 'on', 'autofocus', 'list-id', '4-6', '10.555', '-10.555', 'Place holder', '', 'required', '0.01', 'Test of number attr', 'Myehrajat', '2019-10-04 21:47:37', '2019-10-04 21:47:37');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_password
-- ----------------------------
INSERT INTO `wp_tt_attr_input_password` VALUES (1, 'Password Attributes', 'pass-attr', 'on', 'autofocus', '20', '10', '[a-z A-Z 0-9]', 'Password here', '', 'required', '30', 'this is sepecifc attr for password', NULL, '2019-10-04 20:40:43', '2019-10-04 20:40:43');

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_range
-- ----------------------------
INSERT INTO `wp_tt_attr_input_range` VALUES (1, 'Range Test', 'range-test', 'on', 'autofocus', 'list-id', '4-6', '10.1', '-10.1', 'multiple', '0.1', 'This is a test of range field', 'Myehrajat', '2019-10-04 20:04:53', '2019-10-04 20:04:53');

-- ----------------------------
-- Table structure for wp_tt_attr_input_select
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select`;
CREATE TABLE `wp_tt_attr_input_select`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unselected_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autocomplete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autofocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optgroup_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'Select Test', '', 'انتخاب کنید', 'on', 'autofocus', '', 'required', '1', 'option', '1-2', '1-3', NULL, NULL, '2019-10-24 18:23:49', '2019-10-24 18:23:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_optgroup
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_optgroup` VALUES (1, '', '', 'first group', '1', '%%E%%return \'1\';', NULL, NULL, '2019-10-24 18:24:02', '2019-10-24 18:24:02');
INSERT INTO `wp_tt_attr_input_select_optgroup` VALUES (2, '', '', 'seco', '2', '%%E%%return \'1\';', NULL, NULL, '2019-11-03 15:59:37', '2019-11-03 15:59:37');

-- ----------------------------
-- Table structure for wp_tt_attr_input_select_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select_options`;
CREATE TABLE `wp_tt_attr_input_select_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `selected` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_text_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_label_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_value_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_text_pointer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_label_pointer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_value_pointer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_options
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, '', '', 'json', NULL, '', '', 'selected', '', NULL, NULL, NULL, NULL, 'http://localhost/wp-content/plugins/zzzzzzzzzz-import-demo/sample.json.php', 'example[$i][$i]->options[0]->car', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->country', '%%E%%return \'1\';', NULL, NULL, '2019-10-24 19:14:37', '2019-10-24 19:14:37');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (2, '', '', 'query', NULL, '', '', 'selected', '', 'SELECT * FROM wp_tt_input_types', 'return $a->epithet;', 'return $a->epithet;', 'return $a->html_type;', NULL, NULL, NULL, NULL, '%%E%%return \'1\';', NULL, NULL, '2019-10-24 19:14:38', '2019-10-24 19:14:38');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (3, '', '', 'value', 'Text', 'disabled', 'Label', 'selected', 'Value', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%%E%%return \'1\';', NULL, NULL, '2019-10-24 19:14:41', '2019-10-24 19:14:41');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_submit
-- ----------------------------
INSERT INTO `wp_tt_attr_input_submit` VALUES (1, 'Test Of Submit', 'test-submit', 'autofocus', 'https://google.com', 'multipart/form-data', 'get', 'formnovalidate', '_blank', 'This is a test for submit', 'Myehrajat', '2019-10-04 17:36:32', '2019-10-04 17:36:32');

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `minlength` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_tel_url
-- ----------------------------
INSERT INTO `wp_tt_attr_input_tel_url` VALUES (1, 'Test Of Tel', 'test-tel', 'mobile tel-local section-a', 'autofocus', 'tel-list-id', '1-3', '40', '12', '[0-9]', 'Tel Place Holder', '', '', '40', 'This is tel field test', 'Myehrajat', '2019-09-19 11:41:22', '2019-09-19 11:41:22');
INSERT INTO `wp_tt_attr_input_tel_url` VALUES (2, 'Test Of URL', 'test-url', 'on', 'autofocus', 'list-id', '1-3', '40', '15', '[^(?:[a-z](?:[-a-z0-9\\+\\.])*:(?:\\/\\/(?:(?:%[0-9a-f][0-9a-f]|[-a-z0-9\\._~\\x{A0}-\\x{D7FF}\\x{F900}-\\x{FDCF}\\x{FDF0}-\\x{FFEF}\\x{10000}-\\x{1FFFD}\\x{20000}-\\x{2FFFD}\\x{30000}-\\x{3FFFD}\\x{40000}-\\x{4FFFD}\\x{50000}-\\x{5FFFD}\\x{60000}-\\x{6FFFD}\\x{70000}-\\x{7FFFD}]', 'URL Place Holder', '', '', '40', 'This is url field test', 'Myehrajat', '2019-10-04 14:45:58', '2019-10-04 14:45:58');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_text_search
-- ----------------------------
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'Text Attr', 'text-attr', 'name billing section-a', 'autofocus', 'textdirection', 'text-list-id', '1-3', '20', '4', '[a-z A-Z 0-9]', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-09-17 05:41:24', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (2, 'Search Attr', 'search-attr', 'on', 'autofocus', 'textdirection', 'list-id', '1-3', '20', '4', '[a-z A-Z 0-9]', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-10-19 12:15:30', '2019-10-19 12:15:30');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (3, 'Input One', '', '', '', '', '', '', '', '', '', 'Input One', '', '', '', NULL, NULL, '2019-12-05 19:29:46', '2019-12-05 19:29:46');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (4, 'Input Two', '', '', '', '', '', '', '', '', '', 'Input Two', '', '', '', NULL, NULL, '2019-12-05 19:29:47', '2019-12-05 19:29:47');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (5, 'Input Three', '', '', '', '', '', '', '', '', '', 'Input Three', '', '', '', NULL, NULL, '2019-12-08 11:58:42', '2019-12-08 11:58:42');

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
INSERT INTO `wp_tt_attr_input_textarea` VALUES (1, '', '', 'TEXT IS HERE', 'on', '40', '90', '40', 'placeholder', 'readonly', 'required', '10', 'hard', NULL, NULL, '2019-10-31 22:46:22', '2019-10-31 22:46:22');

-- ----------------------------
-- Table structure for wp_tt_block
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_block`;
CREATE TABLE `wp_tt_block`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_third` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_block
-- ----------------------------
INSERT INTO `wp_tt_block` VALUES (1, 'Block One', '', NULL, NULL, NULL, '24-25', '1', '2', '28', '1', '', '', NULL, '2019-11-29 23:56:54', '2019-11-29 23:56:54');
INSERT INTO `wp_tt_block` VALUES (2, 'Block Two', '', NULL, NULL, NULL, '26', '3', '3', '29', '1', '1', '', NULL, '2019-12-05 19:55:30', '2019-12-05 19:55:30');
INSERT INTO `wp_tt_block` VALUES (3, 'Block Three', '', NULL, NULL, NULL, '27', NULL, '', '30', '1', '1', '', NULL, '2019-12-07 17:57:49', '2019-12-07 17:57:49');
INSERT INTO `wp_tt_block` VALUES (4, 'Block Four', '', NULL, NULL, NULL, '28', NULL, '', '31', '1', '2', '', NULL, '2019-12-07 19:14:43', '2019-12-07 19:14:43');
INSERT INTO `wp_tt_block` VALUES (5, 'Block Five', '', NULL, NULL, NULL, '28', NULL, NULL, '32', '', '', '', NULL, '2019-12-07 19:14:46', '2019-12-07 19:14:46');

-- ----------------------------
-- Table structure for wp_tt_fieldset
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_fieldset`;
CREATE TABLE `wp_tt_fieldset`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `legend_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_third` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_fieldset
-- ----------------------------
INSERT INTO `wp_tt_fieldset` VALUES (1, 'Fieldset One', 'Fieldset One', '', 'form-id', 'Fieldset One', '', '', '1', NULL, NULL, NULL, '24-25', '', '2', '', '', '1', '', NULL, '2019-12-08 16:29:54', '2019-12-08 16:29:54');
INSERT INTO `wp_tt_fieldset` VALUES (2, 'Fieldset Two', 'Fieldset Two', '', 'form-id', 'Fieldset Two', '', NULL, '1', NULL, NULL, NULL, '26', '', '', '', '', '1', '', NULL, '2019-12-08 16:30:10', '2019-12-08 16:30:10');
INSERT INTO `wp_tt_fieldset` VALUES (3, 'Fieldset Three', 'Fieldset Three', '', 'form-id', 'Fieldset Three', '', NULL, '3', NULL, NULL, NULL, '27', '', '', '', '', '', '', NULL, '2019-12-08 16:30:11', '2019-12-08 16:30:11');
INSERT INTO `wp_tt_fieldset` VALUES (4, 'Fieldset Four', 'Fieldset Four', '', 'form-id', 'Fieldset Four', '', NULL, '4', NULL, NULL, NULL, '28', '', '', '', '', '', '', NULL, '2019-12-08 16:30:12', '2019-12-08 16:30:12');
INSERT INTO `wp_tt_fieldset` VALUES (5, 'Fieldset Five', 'Fieldset Five', '', 'form-id', 'Fieldset Five', '', NULL, '5', NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, '2019-12-08 16:30:13', '2019-12-08 16:30:13');
INSERT INTO `wp_tt_fieldset` VALUES (6, 'Fieldset Six', 'Fieldset Six', '', 'form-id', 'Fieldset Six', '', NULL, '6', NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, '2019-12-08 16:30:14', '2019-12-08 16:30:14');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any string',
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_input_specific_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `access_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input
-- ----------------------------
INSERT INTO `wp_tt_input` VALUES (1, 'Test Text Input', 'test-text', '1', '', 'form_id', 'textfield', '1', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '1', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (2, 'Test Search Input', 'test-search', '2', '', 'form_id', 'searchfield', '2', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (3, 'Test Tel Input', 'test-tel', '3', '', 'form_id', 'telfield', '3', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (4, 'Test URL Input', 'test-url', '4', '', 'form_id', 'urlfield', '4', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (5, 'Test Submit Input', 'test-submit', '5', '', 'form_id', 'submitfield', '5', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (6, 'Test Range Input', 'test-range', '6', '', 'form_id', 'rangefield', '6', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (7, 'Password Input', 'test-password', '7', '', 'form_id', 'passwordfield', '7', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (8, 'Number Input', 'test-number', '8', '', 'form_id', 'numberfield', '8', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (9, 'Image Input', 'test-image', '9', '', 'form-id', 'imagefield', '9', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-07 15:27:50', '2019-10-07 15:27:50');
INSERT INTO `wp_tt_input` VALUES (10, 'File Input', 'test-file', '10', '', 'form-id', 'filefield', '10', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-07 16:09:06', '2019-10-07 16:09:06');
INSERT INTO `wp_tt_input` VALUES (11, 'Email Input', 'test-email', '11', '', 'form-id', 'emailfield', '11', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-07 16:09:06', '2019-10-07 16:09:06');
INSERT INTO `wp_tt_input` VALUES (12, 'Date Input', 'date-input', '12', '', 'form-id', 'datefield', '12', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (13, 'Datetime-local Input', 'datetime-local-input', '13', '', 'form-id', 'datetime-localfield', '13', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-19 06:44:52', '2019-10-19 06:44:52');
INSERT INTO `wp_tt_input` VALUES (14, 'Month Input', 'month-input', '14', '', 'form-id', 'monthfield', '14', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'3\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (15, 'Time Input', 'time-input', '15', '', 'form-id', 'timefield', '15', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'4\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (16, 'Week Input', 'week-input', '16', '', 'form-id', 'weekfield', '16', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'5\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (17, 'Datetime Input', 'datetime-input', '17', '', 'form-id', 'datetimefield', '17', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'6\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (18, 'Color Input', 'color-input', '18', '', 'form-id', 'colorfield', '18', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (19, 'Checkbox Input', 'checkbox-input', '19', '', 'form-id', 'checkboxfield', '19', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-19 10:03:26', '2019-10-19 10:03:26');
INSERT INTO `wp_tt_input` VALUES (20, 'Radio Input', 'radio-input', '20', '', 'form-id', 'radiofield', '20', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-19 10:06:44', '2019-10-19 10:06:44');
INSERT INTO `wp_tt_input` VALUES (21, 'Hidden Input', 'hidden-input', '21', '', 'form-id', 'hiddenfield', '21', 'Value Data', '%%E%%return \'1\';', '', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-19 10:21:03', '2019-10-19 10:21:03');
INSERT INTO `wp_tt_input` VALUES (22, 'Select Input', 'select-input', '22', '', 'form-id', 'selectfield', '22', '', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-24 16:54:15', '2019-10-24 16:54:15');
INSERT INTO `wp_tt_input` VALUES (23, 'Textarea Input', 'textarea-input', '23', '', 'form-id', 'textareafield', '23', '', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '', NULL, 'Myehrajat', '2019-10-31 22:48:18', '2019-10-31 22:48:18');
INSERT INTO `wp_tt_input` VALUES (24, 'Input One', 'input-one', '24', '', 'form-id', 'input-one', '1', '', '', '3', '', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (25, 'Input Two', 'input-two', '25', '', 'form-id', 'input-two', '1', '', '', '4', '', '', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (26, 'input Three', 'input-three', '26', '', 'form-id', 'input-three', '1', '', '', '5', '', '', NULL, NULL, '2019-12-08 11:57:49', '2019-12-08 11:57:49');
INSERT INTO `wp_tt_input` VALUES (27, 'input Four', 'input Four', '26', '', 'form-id', 'input Four', '1', '', '', '3', '', '', NULL, NULL, '2019-12-08 14:28:58', '2019-12-08 14:28:58');
INSERT INTO `wp_tt_input` VALUES (28, 'input Five', 'input Five', '26', '', 'form-id', 'input Five', '1', '', '', '4', '', '', NULL, NULL, '2019-12-08 14:29:02', '2019-12-08 14:29:02');

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input_types
-- ----------------------------
INSERT INTO `wp_tt_input_types` VALUES (1, 'Text Field', 'text_field', 'text', 'simple-text', 'sst_text', 'This is simple text input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (2, 'Search Field', 'search_field', 'search', 'simple-search', 'sst_search', 'This is simple search input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (3, 'Tel Field', 'tel_field', 'tel', 'simple-tel', 'sst_tel', 'This is simple tel input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (4, 'Url Field', 'url_field', 'url', 'simple-url', 'sst_url', 'This is simple url input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (5, 'Submit Field', 'submit_field', 'submit', 'simple-submit', 'sst_submit', 'This is simple submit input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (6, 'Range Field', 'range_field', 'range', 'simple-range', 'sst_range', 'This is simple range input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (7, 'Password Field', 'password_field', 'password', 'simple-password', 'sst_password', 'This is simple password input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (8, 'Number Field', 'number_field', 'number', 'simple-number', 'sst_number', 'This is simple number input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (9, 'Image Field', 'image_field', 'image', 'simple-image', 'sst_image', 'This is simple image input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (10, 'File Field', 'file_field', 'file', 'simple-file', 'sst_file', 'This is simple file input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (11, 'Email Field', 'email_field', 'email', 'simple-email', 'sst_email', 'This is simple email input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (12, 'Date Field', 'date_field', 'date', 'simple-date', 'sst_date', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (13, 'Datetime-local Field', 'datetime-local_field', 'datetime-local', 'simple-datetime-local', 'sst_datetime_local', 'This is simple datetime-local input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (14, 'Month Field', 'month_field', 'month', 'simple-month', 'sst_month', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (15, 'Time Field', 'time_field', 'time', 'simple-time', 'sst_time', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (16, 'Week Field', 'week_field', 'week', 'simple-week', 'sst_week', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (17, 'Datetime Field', 'datetime_field', 'datetime', 'simple-datetime', 'sst_datetime', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (18, 'Color Field', 'color_field', 'color', 'simple-color', 'sst_color', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (19, 'Checkbox Field', 'checkbox_field', 'checkbox', 'simple-checkbox', 'sst_checkbox', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (20, 'Radio Field', 'radio_field', 'radio', 'simple-radio', 'sst_radio', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (21, 'Hidden Field', 'hidden_field', 'hidden', 'simple-hidden', 'sst_hidden', 'This is simple hidden input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (22, 'Select Field', 'select_field', 'select', 'simple-select', 'sst_select', 'This is simple select input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');
INSERT INTO `wp_tt_input_types` VALUES (23, 'Textarea Field', 'textarea_field', 'textarea', 'simple-textarea', 'sst_textarea', 'This is simple textarea input type as a HTML code!', 'Ehrajat', '2019-11-26 00:28:03', '2019-11-26 00:28:03');

-- ----------------------------
-- Table structure for wp_tt_legend
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_legend`;
CREATE TABLE `wp_tt_legend`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_legend
-- ----------------------------
INSERT INTO `wp_tt_legend` VALUES (1, 'Legend One', 'Legend One', 'Legend One', '1', '1', '40', '', NULL, '2019-12-08 18:27:47', '2019-12-08 18:27:47');

-- ----------------------------
-- Table structure for wp_tt_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_options`;
CREATE TABLE `wp_tt_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_tt_tags
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_tags`;
CREATE TABLE `wp_tt_tags`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_tag_id` int(11) NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_tags
-- ----------------------------
INSERT INTO `wp_tt_tags` VALUES (1, 'Test Text Input', '', '<div style=\"border:1px solid black;padding: 10px; margin:5px;\"><label for=\"{attr:id}\">sample label.{attr:id}</label>', '<div>{var:sampleLabel}</div></div>', 25, '', NULL, '2019-11-06 08:13:34', '2019-11-06 08:13:34');
INSERT INTO `wp_tt_tags` VALUES (2, 'Test Search Input', '', '<div style=\"border:1px solid blue;padding: 10px; margin:5px;\"><label for=\"{attr:id}\">sample label.{attr:id}</label>', '<div>{var:sampleLabel}</div></div>', NULL, '', NULL, '2019-11-06 16:23:50', '2019-11-06 16:23:50');
INSERT INTO `wp_tt_tags` VALUES (3, 'Test Tel Input', '', 'Test Tel Input', 'Test Tel Input', NULL, '', NULL, '2019-11-06 16:23:51', '2019-11-06 16:23:51');
INSERT INTO `wp_tt_tags` VALUES (4, 'Test URL Input', '', 'Test URL Input', 'Test URL Input', NULL, '', NULL, '2019-11-06 16:23:52', '2019-11-06 16:23:52');
INSERT INTO `wp_tt_tags` VALUES (5, 'Test Submit Input', '', 'Test Submit Input', 'Test Submit Input', NULL, '', NULL, '2019-11-06 16:23:52', '2019-11-06 16:23:52');
INSERT INTO `wp_tt_tags` VALUES (6, 'Test Range Input', '', 'Test Range Input', 'Test Range Input', NULL, '', NULL, '2019-11-06 16:23:53', '2019-11-06 16:23:53');
INSERT INTO `wp_tt_tags` VALUES (7, 'Password Input', '', 'Password Input', 'Password Input', NULL, '', NULL, '2019-11-06 16:23:54', '2019-11-06 16:23:54');
INSERT INTO `wp_tt_tags` VALUES (8, 'Number Input', '', 'Number Input', 'Number Input', NULL, '', NULL, '2019-11-06 16:23:54', '2019-11-06 16:23:54');
INSERT INTO `wp_tt_tags` VALUES (9, 'Image Input', '', 'Image Input', 'Image Input', NULL, '', NULL, '2019-11-06 16:23:55', '2019-11-06 16:23:55');
INSERT INTO `wp_tt_tags` VALUES (10, 'File Input', '', 'File Input', 'File Input', NULL, '', NULL, '2019-11-06 16:23:55', '2019-11-06 16:23:55');
INSERT INTO `wp_tt_tags` VALUES (11, 'Email Input', '', 'Email Input', 'Email Input', NULL, '', NULL, '2019-11-06 16:24:01', '2019-11-06 16:24:01');
INSERT INTO `wp_tt_tags` VALUES (12, 'Date Input', '', 'Date Input', 'Date Input', NULL, '', NULL, '2019-11-06 16:24:02', '2019-11-06 16:24:02');
INSERT INTO `wp_tt_tags` VALUES (13, 'Datetime-local Input', '', 'Datetime-local Input', 'Datetime-local Input', NULL, '', NULL, '2019-11-06 16:24:05', '2019-11-06 16:24:05');
INSERT INTO `wp_tt_tags` VALUES (14, 'Month Input', '', 'Month Input', 'Month Input', NULL, '', NULL, '2019-11-06 16:24:07', '2019-11-06 16:24:07');
INSERT INTO `wp_tt_tags` VALUES (15, 'Time Input', '', 'Time Input', 'Time Input', NULL, '', NULL, '2019-11-06 16:24:10', '2019-11-06 16:24:10');
INSERT INTO `wp_tt_tags` VALUES (16, 'Week Input', '', 'Week Input', 'Week Input', NULL, '', NULL, '2019-11-06 16:24:17', '2019-11-06 16:24:17');
INSERT INTO `wp_tt_tags` VALUES (17, 'Datetime Input', '', 'Datetime Input', 'Datetime Input', NULL, '', NULL, '2019-11-06 16:24:23', '2019-11-06 16:24:23');
INSERT INTO `wp_tt_tags` VALUES (18, 'Color Input', '', 'Color Input', 'Color Input', NULL, '', NULL, '2019-11-06 16:24:29', '2019-11-06 16:24:29');
INSERT INTO `wp_tt_tags` VALUES (19, 'Checkbox Input', '', 'Checkbox Input', 'Checkbox Input', NULL, '', NULL, '2019-11-06 16:24:36', '2019-11-06 16:24:36');
INSERT INTO `wp_tt_tags` VALUES (20, 'Radio Input', '', 'Radio Input', 'Radio Input', NULL, '', NULL, '2019-11-06 16:24:40', '2019-11-06 16:24:40');
INSERT INTO `wp_tt_tags` VALUES (21, 'Hidden Input', '', 'Hidden Input', 'Hidden Input', NULL, '', NULL, '2019-11-06 16:24:41', '2019-11-06 16:24:41');
INSERT INTO `wp_tt_tags` VALUES (22, 'Select Input', '', 'Select Input', 'Select Input', NULL, '', NULL, '2019-11-06 16:24:46', '2019-11-06 16:24:46');
INSERT INTO `wp_tt_tags` VALUES (23, 'Textarea Input', '', 'Textarea Input', 'Textarea Input', NULL, '', NULL, '2019-11-06 16:24:49', '2019-11-06 16:24:49');
INSERT INTO `wp_tt_tags` VALUES (24, 'Input One', '', '<div style=\"padding: 3px; margin:3px; background-color:blue \" id=\"input-one\" >Input One', '</div>', 27, '', NULL, '2019-12-05 19:31:43', '2019-12-05 19:31:43');
INSERT INTO `wp_tt_tags` VALUES (25, 'Input Two', '', '<div style=\"padding: 3px; margin:3px;background-color:blue\" id=\"input-two\">Input Two\r\n', '</div>', 27, '', NULL, '2019-12-05 19:31:45', '2019-12-05 19:31:45');
INSERT INTO `wp_tt_tags` VALUES (26, 'Input Three', '', '<div style=\"padding: 3px; margin:3px;background-color:green\" id=\"input-Three\">Input Three', '</div>', 27, '', NULL, '2019-11-11 15:18:46', '2019-11-11 15:18:46');
INSERT INTO `wp_tt_tags` VALUES (27, 'Input Parent', '', '<div style=\"padding: 3px; margin:3px;background-color:green\" id=\"input-one\">Input Parent', '</div>', NULL, '', NULL, '2019-11-11 15:18:46', '2019-11-11 15:18:46');
INSERT INTO `wp_tt_tags` VALUES (28, 'Block One', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-one\">Block One', '</div>', 33, '', NULL, '0000-00-00 00:00:00', '2019-12-05 07:43:49');
INSERT INTO `wp_tt_tags` VALUES (29, 'Block Two', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-two\">Block Two', '</div>', 33, '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (30, 'Block Three', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-three\">Block Three', '</div>', 33, '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (31, 'Block Four', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-four\">Block Four', '</div>', 33, '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (32, 'Block Five', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-five\">Block Five', '</div>', 33, '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (33, 'Parent Block One', '', '<div style=\"padding: 3px; margin:3px;background-color:aqua\" id=\"parent-block\">Parent Block', '</div>', NULL, '', NULL, '2019-12-05 19:51:47', '2019-12-05 19:51:47');
INSERT INTO `wp_tt_tags` VALUES (35, 'Fieldset One', '', '', '', NULL, '', NULL, '2019-12-08 18:28:42', '2019-12-08 18:28:42');
INSERT INTO `wp_tt_tags` VALUES (36, 'Fieldset One', '', '', '', NULL, '', NULL, '2019-12-08 18:28:46', '2019-12-08 18:28:46');
INSERT INTO `wp_tt_tags` VALUES (37, 'Fieldset One', '', '', '', NULL, '', NULL, '2019-12-08 18:28:47', '2019-12-08 18:28:47');
INSERT INTO `wp_tt_tags` VALUES (38, 'Fieldset One', '', '', '', NULL, '', NULL, '2019-12-08 18:28:48', '2019-12-08 18:28:48');
INSERT INTO `wp_tt_tags` VALUES (39, 'Fieldset One', '', '', '', NULL, '', NULL, '2019-12-08 18:28:49', '2019-12-08 18:28:49');
INSERT INTO `wp_tt_tags` VALUES (40, 'Legend One', '', '<div style=\"padding: 3px; margin:3px;background-color:aqua\" id=\"legend-one\">Legend One', '</div>', NULL, '', NULL, '2019-12-08 18:29:10', '2019-12-08 18:29:10');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_user_access
-- ----------------------------
INSERT INTO `wp_tt_user_access` VALUES (1, '', '', 'enable', '2', 'enable', '2', 'enable', '2', '', NULL, '2019-11-29 14:24:41', '2019-11-29 14:24:41');
INSERT INTO `wp_tt_user_access` VALUES (2, '', '', '', '', '', '', '', '', '', NULL, '2019-11-29 14:24:46', '2019-11-29 14:24:46');

-- ----------------------------
-- Table structure for wp_tt_variable
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_variable`;
CREATE TABLE `wp_tt_variable`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_variable
-- ----------------------------
INSERT INTO `wp_tt_variable` VALUES (1, '', '', 'sampleLabel', 'Sample Label', '', NULL, '2019-11-29 20:51:29', '2019-11-29 20:51:29');
INSERT INTO `wp_tt_variable` VALUES (2, '', '', 'nextLable', 'Next Label', '', NULL, '2019-11-29 21:22:57', '2019-11-29 21:22:57');

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
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'admin');
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
INSERT INTO `wp_usermeta` VALUES (16, 1, 'session_tokens', 'a:3:{s:64:\"f67f869ab17f5f260e50e167544601ee1b3d2a4345b2e1a65d2bf66b9e47d3ff\";a:4:{s:10:\"expiration\";i:1575728516;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575555716;}s:64:\"db64253eb3d409f7fca3f7b8038011e178b4c45db790caa1e7839e27ee44bd09\";a:4:{s:10:\"expiration\";i:1575730778;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575557978;}s:64:\"ab1850d5c520096e78890ed035b1e4e260cc418c017561011173b0a091807940\";a:4:{s:10:\"expiration\";i:1575743509;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575570709;}}');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '7');
INSERT INTO `wp_usermeta` VALUES (18, 2, 'nickname', 'demo');
INSERT INTO `wp_usermeta` VALUES (19, 2, 'first_name', 'demo');
INSERT INTO `wp_usermeta` VALUES (20, 2, 'last_name', 'demo');
INSERT INTO `wp_usermeta` VALUES (21, 2, 'description', '');
INSERT INTO `wp_usermeta` VALUES (22, 2, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES (23, 2, 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta` VALUES (24, 2, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES (25, 2, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES (26, 2, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES (27, 2, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES (28, 2, 'locale', '');
INSERT INTO `wp_usermeta` VALUES (29, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (30, 2, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES (31, 2, 'dismissed_wp_pointers', '');

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
  `user_registered` datetime(0) NOT NULL,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `user_login_key`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nicename`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES (1, 'admin', '$P$BsWSQOHe0N1BAKUP7eEqtrRME44woe1', 'admin', 'ejarehkhodro@gmail.com', '', '2019-08-14 14:55:03', '', 0, 'admin');
INSERT INTO `wp_users` VALUES (2, 'demo', '$P$Bnt.WcYYe.fRlhvrHqbZ/lTK2Z0aNu0', 'demo', 'demo@hhhh.com', '', '2019-11-29 23:02:35', '1575068556:$P$BnSj/ighpSOuwhamdU6VklhYvoqbiA.', 0, 'demo demo');

SET FOREIGN_KEY_CHECKS = 1;
