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

 Date: 07/07/2020 16:08:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 00-new_sys
-- ----------------------------
DROP TABLE IF EXISTS `00-new_sys`;
CREATE TABLE `00-new_sys`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

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
-- Table structure for wp_custom_acquaintance_type
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_acquaintance_type`;
CREATE TABLE `wp_custom_acquaintance_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_address
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_address`;
CREATE TABLE `wp_custom_address`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `block_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apartment_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verified` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_area
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_area`;
CREATE TABLE `wp_custom_area`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_city
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_city`;
CREATE TABLE `wp_custom_city`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_city
-- ----------------------------
INSERT INTO `wp_custom_city` VALUES (1, '1', '1', 'کرج', '6', '', '0_5efa048a4828f5.94349831', NULL, '2020-06-29 19:41:16', '2020-06-29 19:41:16');

-- ----------------------------
-- Table structure for wp_custom_contact
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_contact`;
CREATE TABLE `wp_custom_contact`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relation_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_country
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_country`;
CREATE TABLE `wp_custom_country`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_currency
-- ----------------------------
INSERT INTO `wp_custom_currency` VALUES (1, '1', 'ریال', '', '', 'right', '', '', '', '0_5efbb1a9cfe7e5.12120754', NULL, '2020-07-01 02:12:13', '2020-07-01 02:12:13');

-- ----------------------------
-- Table structure for wp_custom_currency_rate
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_currency_rate`;
CREATE TABLE `wp_custom_currency_rate`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `base_currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exchanged_currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_education
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_education`;
CREATE TABLE `wp_custom_education`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_income_expenditure_source
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_income_expenditure_source`;
CREATE TABLE `wp_custom_income_expenditure_source`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'income/expenditure',
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'income/expenditure',
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_job
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_job`;
CREATE TABLE `wp_custom_job`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_legal_person_type
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_legal_person_type`;
CREATE TABLE `wp_custom_legal_person_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_payment_method
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_payment_method`;
CREATE TABLE `wp_custom_payment_method`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'income/expenditure',
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_person
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_person`;
CREATE TABLE `wp_custom_person`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_legal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `legal_person_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `legal_person_national_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `legal_person_notary_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statute_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `national_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `national_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `father_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `national_id_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `national_card_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `driving_licence_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `driving_licence_issue_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `driving_licence_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passport_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passport_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tax_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reference_person_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acquaintance_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_person
-- ----------------------------
INSERT INTO `wp_custom_person` VALUES (1, 'تشریفات ', 'طباطبایی', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '0_5efbb197d1ee84.22974507', NULL, '2020-07-01 02:12:18', '2020-07-01 02:12:18');

-- ----------------------------
-- Table structure for wp_custom_phone
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_phone`;
CREATE TABLE `wp_custom_phone`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phone_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extension_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verified` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_phone
-- ----------------------------
INSERT INTO `wp_custom_phone` VALUES (1, '1', '', '', '', 'ssss', '', '', '', '0_5f01936adc0392.71116817', NULL, '2020-07-05 13:16:56', '2020-07-05 13:16:56');
INSERT INTO `wp_custom_phone` VALUES (2, '1', '', '', '', '444444', '', '', '', '0_5f019d08211834.37939732', NULL, '2020-07-05 13:57:41', '2020-07-05 13:57:41');
INSERT INTO `wp_custom_phone` VALUES (3, '1', '', '', '', 'ttttttttt', '', '', '', '0_5f019d5100cf77.00930504', NULL, '2020-07-05 13:58:54', '2020-07-05 13:58:54');
INSERT INTO `wp_custom_phone` VALUES (4, '1', '', '', '', 'rewe', '', '', '', '0_5f019dbe3bf059.05983755', NULL, '2020-07-05 14:00:44', '2020-07-05 14:00:44');
INSERT INTO `wp_custom_phone` VALUES (5, '1', '', '', '', 'rertertet', '', '', '', '0_5f019dde90d4c3.46487485', NULL, '2020-07-05 14:01:17', '2020-07-05 14:01:17');
INSERT INTO `wp_custom_phone` VALUES (6, '1', '', '', '', 'rrrrertert', '', '', '', '0_5f019e401777c6.17690609', NULL, '2020-07-05 14:02:57', '2020-07-05 14:02:57');
INSERT INTO `wp_custom_phone` VALUES (7, '1', '', '', '', 'rewtrwertw434', '', '', '', '0_5f019e5ac21a92.22771142', NULL, '2020-07-05 14:03:22', '2020-07-05 14:03:22');
INSERT INTO `wp_custom_phone` VALUES (8, '1', '', '', '', 'ewrerwe', '', '', '', '0_5f01a224ac7504.13285236', NULL, '2020-07-05 14:19:29', '2020-07-05 14:19:29');
INSERT INTO `wp_custom_phone` VALUES (9, '1', '', '', '', 'wwwwwwwww', '', '', '', '0_5f01a2579d6bf8.48535380', NULL, '2020-07-05 14:20:22', '2020-07-05 14:20:22');
INSERT INTO `wp_custom_phone` VALUES (10, '1', '', '', '', 'ewtertewr', '', '', '', '0_5f01a33876e694.96276018', NULL, '2020-07-05 14:24:07', '2020-07-05 14:24:07');

-- ----------------------------
-- Table structure for wp_custom_relation
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_relation`;
CREATE TABLE `wp_custom_relation`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_social_network
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_social_network`;
CREATE TABLE `wp_custom_social_network`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_state
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_state`;
CREATE TABLE `wp_custom_state`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_custom_state
-- ----------------------------
INSERT INTO `wp_custom_state` VALUES (1, '1', 'تهران', '2', '', '0_5efa04764f8665.52114126', NULL, '2020-06-29 19:41:01', '2020-06-29 19:41:01');

-- ----------------------------
-- Table structure for wp_custom_tax
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_tax`;
CREATE TABLE `wp_custom_tax`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'inclusive(vat)/exlusive(without vat)/compund/fixed/normal',
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 599 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:6:{i:1593944018;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593972818;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1594016017;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594016037;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594016039;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
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
INSERT INTO `wp_options` VALUES (133, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (136, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (140, 'recovery_mode_email_last_sent', '1590882796', 'yes');
INSERT INTO `wp_options` VALUES (590, '_site_transient_timeout_theme_roots', '1593937843', 'no');
INSERT INTO `wp_options` VALUES (591, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (594, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"fa_IR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fa_IR/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.4-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.4\";s:7:\"version\";s:5:\"5.3.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1593936049;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (595, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1593936050;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (596, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1593936051;s:7:\"checked\";a:18:{s:27:\"bootsrap-enqueue/plugin.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:17:\"custom/plugin.php\";s:5:\"1.0.0\";s:19:\"01-debug/plugin.php\";s:5:\"1.0.0\";s:20:\"02-common/plugin.php\";s:5:\"1.0.0\";s:23:\"03-attribute/plugin.php\";s:5:\"1.0.0\";s:20:\"04-access/plugin.php\";s:5:\"1.0.0\";s:19:\"05-extra/plugin.php\";s:5:\"1.0.0\";s:19:\"06-input/plugin.php\";s:5:\"1.0.0\";s:19:\"07-block/plugin.php\";s:5:\"1.0.0\";s:22:\"08-fieldset/plugin.php\";s:5:\"1.0.0\";s:18:\"09-form/plugin.php\";s:5:\"1.0.0\";s:21:\"10-process/plugin.php\";s:5:\"1.0.0\";s:25:\"11-data-action/plugin.php\";s:5:\"1.0.0\";s:25:\"99-import-demo/plugin.php\";s:5:\"1.0.0\";s:28:\"00_eval_functions/plugin.php\";s:5:\"1.0.0\";s:43:\"fast-user-switching/fast-user-switching.php\";s:5:\"1.4.8\";s:33:\"jquery-updater/jquery-updater.php\";s:5:\"3.5.0\";}s:8:\"response\";a:1:{s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/jquery-updater.3.5.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
  `input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Make any change you want before redending input in input_data you only need change $ input_data it will return it automatically',
  `block_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Make any change you want before redending block in block_data you only need change $ block_data it will return it automatically',
  `fieldset_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Make any change you want before redending fieldset in fieldset_data you only need change $ fieldset_data it will return it automatically',
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remove_attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_changer
-- ----------------------------
INSERT INTO `wp_tt_attr_changer` VALUES (1, 'حقوقی است', NULL, '252', '12,13', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-06 16:42:36', '2020-06-06 16:42:36');
INSERT INTO `wp_tt_attr_changer` VALUES (2, 'حقوقی است', NULL, '252', '12,13', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-06 16:43:02', '2020-06-06 16:43:02');
INSERT INTO `wp_tt_attr_changer` VALUES (3, 'حقوقی است', NULL, '', '11', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-09 15:44:23', '2020-06-09 15:44:23');
INSERT INTO `wp_tt_attr_changer` VALUES (4, 'حقوقی است', NULL, '', '11', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-09 15:44:24', '2020-06-09 15:44:24');
INSERT INTO `wp_tt_attr_changer` VALUES (5, 'حقوقی نیست', NULL, '', '11', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-09 15:44:25', '2020-06-09 15:44:25');
INSERT INTO `wp_tt_attr_changer` VALUES (6, 'حقوقی نیست', NULL, '', '11', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-09 15:44:25', '2020-06-09 15:44:25');
INSERT INTO `wp_tt_attr_changer` VALUES (7, 'حقوقی نیست', NULL, '252', '12,13', '', 'hidden', '', 'remove', NULL, NULL, '0000-00-00 00:00:00', '2020-06-09 15:44:26');
INSERT INTO `wp_tt_attr_changer` VALUES (8, 'حقوقی نیست', NULL, '252', '12,13', '', 'disabled', '', 'remove', NULL, NULL, '0000-00-00 00:00:00', '2020-06-09 15:48:44');
INSERT INTO `wp_tt_attr_changer` VALUES (9, 'اتباع داخلی است', NULL, '', '11,13', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-09 18:57:08', '2020-06-09 18:57:08');
INSERT INTO `wp_tt_attr_changer` VALUES (10, 'اتباع داخلی است', NULL, '', '11,13', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-09 18:57:09', '2020-06-09 18:57:09');
INSERT INTO `wp_tt_attr_changer` VALUES (11, 'اتباع داخلی است', NULL, '', '12', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-09 18:57:09', '2020-06-09 18:57:09');
INSERT INTO `wp_tt_attr_changer` VALUES (12, 'اتباع داخلی است', NULL, '', '12', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-09 18:57:10', '2020-06-09 18:57:10');
INSERT INTO `wp_tt_attr_changer` VALUES (13, 'اتباع داخلی نیست', NULL, '', '11,12', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-09 18:57:12', '2020-06-09 18:57:12');
INSERT INTO `wp_tt_attr_changer` VALUES (14, 'اتباع داخلی نیست', NULL, '', '11,12', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-09 21:54:01', '2020-06-09 21:54:01');
INSERT INTO `wp_tt_attr_changer` VALUES (15, 'اتباع داخلی نیست', NULL, '', '13', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-09 21:54:02', '2020-06-09 21:54:02');
INSERT INTO `wp_tt_attr_changer` VALUES (16, 'اتباع داخلی نیست', NULL, '', '13', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-09 21:54:03', '2020-06-09 21:54:03');
INSERT INTO `wp_tt_attr_changer` VALUES (21, 'تلفن همراه است', NULL, '', '22', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-29 04:43:45', '2020-06-29 04:43:45');
INSERT INTO `wp_tt_attr_changer` VALUES (22, 'تلفن همراه است', NULL, '', '22', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-29 04:43:46', '2020-06-29 04:43:46');
INSERT INTO `wp_tt_attr_changer` VALUES (23, 'تلفن همراه نیست', NULL, '', '22', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-29 04:43:47', '2020-06-29 04:43:47');
INSERT INTO `wp_tt_attr_changer` VALUES (24, 'تلفن همراه نیست', NULL, '', '22', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-29 04:43:56', '2020-06-29 04:43:56');
INSERT INTO `wp_tt_attr_changer` VALUES (31, 'آدرس دارد', NULL, '', '25', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-29 04:43:57', '2020-06-29 04:43:57');
INSERT INTO `wp_tt_attr_changer` VALUES (32, 'آدرس دارد', NULL, '', '25', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-29 15:04:35', '2020-06-29 15:04:35');
INSERT INTO `wp_tt_attr_changer` VALUES (33, 'آدرس ندارد', NULL, '', '25', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-29 15:04:37', '2020-06-29 15:04:37');
INSERT INTO `wp_tt_attr_changer` VALUES (34, 'آدرس ندارد', NULL, '', '25', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-29 15:04:38', '2020-06-29 15:04:38');
INSERT INTO `wp_tt_attr_changer` VALUES (35, 'تلفن دارد', NULL, '', '24', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-29 15:04:40', '2020-06-29 15:04:40');
INSERT INTO `wp_tt_attr_changer` VALUES (36, 'تلفن دارد', NULL, '', '24', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-29 15:04:42', '2020-06-29 15:04:42');
INSERT INTO `wp_tt_attr_changer` VALUES (37, 'تلفن ندارد', NULL, '', '24', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-29 15:09:20', '2020-06-29 15:09:20');
INSERT INTO `wp_tt_attr_changer` VALUES (38, 'تلفن ندارد', NULL, '', '24', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-29 15:09:22', '2020-06-29 15:09:22');
INSERT INTO `wp_tt_attr_changer` VALUES (41, 'اطلاعات تماس متعلق به خودش است', NULL, '', '28', '', 'disabled', 'disabled', '', NULL, NULL, '2020-06-30 18:15:21', '2020-06-30 18:15:21');
INSERT INTO `wp_tt_attr_changer` VALUES (42, 'اطلاعات تماس متعلق به خودش است', NULL, '', '28', '', 'hidden', 'hidden', '', NULL, NULL, '2020-06-30 18:15:22', '2020-06-30 18:15:22');
INSERT INTO `wp_tt_attr_changer` VALUES (43, 'اطلاعات تماس متعلق به خودش نیست', NULL, '', '28', '', 'disabled', '', 'remove', NULL, NULL, '2020-06-30 18:15:41', '2020-06-30 18:15:41');
INSERT INTO `wp_tt_attr_changer` VALUES (44, 'اطلاعات تماس متعلق به خودش نیست', NULL, '', '28', '', 'hidden', '', 'remove', NULL, NULL, '2020-06-30 18:15:42', '2020-06-30 18:15:42');

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_changer_condition
-- ----------------------------
INSERT INTO `wp_tt_attr_changer_condition` VALUES (1, NULL, NULL, '{self}==\'legal\'', '1-4', NULL, NULL, '2020-06-06 16:35:14', '2020-06-06 16:35:14');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (2, NULL, NULL, '{self}!=\'legal\'', '5-8', NULL, NULL, '2020-06-06 16:36:24', '2020-06-06 16:36:24');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (3, NULL, NULL, '{self}==\'domestic_citizen\' && {name:temp_is_legal_person-10}!=\'legal\'', '9-12', NULL, NULL, '2020-06-09 15:50:06', '2020-06-09 15:50:06');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (4, NULL, NULL, '{self}!=\'domestic_citizen\' && {name:temp_is_legal_person-10}!=\'legal\'', '13-16', NULL, NULL, '2020-06-09 21:51:01', '2020-06-09 21:51:01');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (5, 'نوع خط تلفن = همراه یا پیجر', NULL, '{self}==1 || {self}==4', '21-22', NULL, NULL, '2020-06-29 04:40:19', '2020-06-29 04:40:19');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (6, 'نوع خط تلفن = ثابت', NULL, '{self}==2 || {self}==3', '23-24', NULL, NULL, '2020-06-29 04:41:58', '2020-06-29 04:41:58');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (7, 'آدرس دارد', NULL, '{self}==\'has_address\'', '31-32', NULL, NULL, '2020-06-29 14:45:16', '2020-06-29 14:45:16');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (8, 'آدرس ندارد', NULL, 'else', '33-34', NULL, NULL, '2020-06-29 14:45:18', '2020-06-29 14:45:18');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (9, 'تلفن دارد', NULL, '{self}==\'has_phone\'', '35-36', NULL, NULL, '2020-06-29 14:47:27', '2020-06-29 14:47:27');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (10, 'تلفن ندارد', NULL, 'else', '37-38', NULL, NULL, '2020-06-29 14:47:28', '2020-06-29 14:47:28');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (11, 'تعلق اطلاعات تماس به خودش', NULL, '{self}==\'own_contact\'', '41-42', NULL, NULL, '2020-06-30 18:08:47', '2020-06-30 18:08:47');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (12, 'تعلق اطلاعات تماس به خودش', NULL, 'else', '43-44', NULL, NULL, '2020-06-30 18:08:49', '2020-06-30 18:08:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_custom
-- ----------------------------
INSERT INTO `wp_tt_attr_custom` VALUES (1, '', '', 'required', 'required', NULL, NULL, '2020-06-02 04:22:56', '2020-06-02 04:22:56');

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
INSERT INTO `wp_tt_attr_html_event` VALUES (1, 'تایید کد ملی', '', 'onkeyup', '1', NULL, NULL, '2020-06-05 03:26:11', '2020-06-05 03:26:11');
INSERT INTO `wp_tt_attr_html_event` VALUES (2, 'تایید کد ملی', '', 'onchange', '1', NULL, NULL, '2020-06-05 03:26:36', '2020-06-05 03:26:36');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_event_jsfunction
-- ----------------------------
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (1, '', '', 'var isValidNationalCode = function(code) {\r\n    if (code.length !== 10 || /(\\d)(\\1){9}/.test(code)) return false;\r\n\r\n    var sum = 0,\r\n        chars = code.split(\'\');\r\n\r\n    for (var i = 0; i < 9; i++) sum += +chars[i] * (10 - i);\r\n\r\n    var lastDigit,\r\n        remainder = sum % 11;\r\n\r\n    lastDigit = remainder < 2 ? remainder : 11 - remainder;\r\n\r\n    return +chars[9] === lastDigit;\r\n};\r\n', NULL, NULL, '2020-06-05 03:40:27', '2020-06-05 03:40:27');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (2, 'اعتبار سنجی کد ملی', '', 'var isValidNationalCode = function(code) {\r\n    if (code.length !== 10 || /(\\d)(\\1){9}/.test(code)) return false;\r\n\r\n    var sum = 0,\r\n        chars = code.split(\'\');\r\n\r\n    for (var i = 0; i < 9; i++) sum += +chars[i] * (10 - i);\r\n\r\n    var lastDigit,\r\n        remainder = sum % 11;\r\n\r\n    lastDigit = remainder < 2 ? remainder : 11 - remainder;\r\n\r\n    return +chars[9] === lastDigit;\r\n};\r\n', NULL, NULL, '2020-06-05 03:40:27', '2020-06-05 03:40:27');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global` VALUES (1, 'Bootstrap class for input', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 05:35:16', '2020-03-16 05:35:16');
INSERT INTO `wp_tt_attr_html_global` VALUES (2, 'Bootstrap class for submit', '', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 06:58:21', '2020-03-16 06:58:21');
INSERT INTO `wp_tt_attr_html_global` VALUES (3, 'Slug maker', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 07:39:55', '2020-03-16 07:39:55');
INSERT INTO `wp_tt_attr_html_global` VALUES (4, 'Bootstrap class for checkbox', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa', '', '', '', '', '', '', '', NULL, NULL, '2020-03-17 06:10:46', '2020-03-17 06:10:46');
INSERT INTO `wp_tt_attr_html_global` VALUES (5, 'کدملی', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa', '1,2', '', '', '', '', '', '', NULL, NULL, '2020-06-05 03:24:53', '2020-06-05 03:24:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_class
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_class` VALUES (1, 'Bootstrap class for input', 'Bootstrap class-for-input', 'form-control', 'Bootstrap class for input', NULL, '2020-03-16 06:37:35', '2020-03-16 06:37:35');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (2, 'Bootstrap class for submit', 'Bootstrap class for submit', 'btn btn-primary', 'Bootstrap class for submit', NULL, '2020-03-16 06:56:03', '2020-03-16 06:56:03');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (3, 'Bootstrap class for checkbox', 'Bootstrap class for checkbox', ' form-check-inline', 'Bootstrap class for checkbox', NULL, '2020-03-17 06:11:38', '2020-03-17 06:11:38');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (4, 'Bootstrap Checkbox Toggle', 'Bootstrap Checkbox Toggle', 'checkbox', NULL, NULL, '2020-04-18 10:09:15', '2020-04-18 10:09:15');
INSERT INTO `wp_tt_attr_html_global_class` VALUES (5, 'Bootstrap File Input', 'Bootstrap File Input', 'custom-file-input', NULL, NULL, '2020-06-10 02:31:30', '2020-06-10 02:31:30');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_checkbox_radio
-- ----------------------------
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (1, 'موقعیت نماد واحد پول', '', '', '', '', 'left', NULL, NULL, '2020-05-30 22:41:24', '2020-05-30 22:41:24');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (2, 'نوع شخص', '', '', '', '', 'legal', NULL, NULL, '2020-06-06 16:18:56', '2020-06-06 16:18:56');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (3, 'تابعیت', '', '', 'checked', '', 'domestic_citizen\r\n', NULL, NULL, '2020-06-06 16:20:37', '2020-06-06 16:20:37');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (4, 'تایید شده', '', '', '', '', '1', NULL, NULL, '2020-06-10 05:40:27', '2020-06-10 05:40:27');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (5, 'آدرس', '', '', 'checked', '', 'has_address', NULL, NULL, '2020-06-29 14:40:31', '2020-06-29 14:40:31');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (6, 'تلفن', '', '', 'checked', '', 'has_phone', NULL, NULL, '2020-06-29 14:40:33', '2020-06-29 14:40:33');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (7, 'تعلق اطلاعات تماس به خودش', '', '', 'checked', '', 'own_contact', NULL, NULL, '2020-06-30 17:57:00', '2020-06-30 17:57:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_date_time_related
-- ----------------------------
INSERT INTO `wp_tt_attr_input_date_time_related` VALUES (1, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-04 01:02:20', '2020-06-04 01:02:20');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_email
-- ----------------------------
INSERT INTO `wp_tt_attr_input_email` VALUES (1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-04 01:01:14', '2020-06-04 01:01:14');

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
INSERT INTO `wp_tt_attr_input_file` VALUES (1, 'فقط عکس', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:57:39', '2020-05-26 11:57:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_file_accept
-- ----------------------------
INSERT INTO `wp_tt_attr_input_file_accept` VALUES (1, '', '', 'image/*', NULL, NULL, '2020-05-26 11:58:06', '2020-05-26 11:58:06');

-- ----------------------------
-- Table structure for wp_tt_attr_input_hidden
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_hidden`;
CREATE TABLE `wp_tt_attr_input_hidden`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_hidden
-- ----------------------------
INSERT INTO `wp_tt_attr_input_hidden` VALUES (1, 'legal', '', '1', NULL, NULL, '2020-06-05 00:15:36', '2020-06-05 00:15:36');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_number
-- ----------------------------
INSERT INTO `wp_tt_attr_input_number` VALUES (1, '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, NULL, '2020-05-30 22:06:09', '2020-05-30 22:06:09');
INSERT INTO `wp_tt_attr_input_number` VALUES (2, '', '', '', '', '', '', '', '', '', '', '', '0.00000000001', '', NULL, NULL, '2020-05-31 01:43:06', '2020-05-31 01:43:06');
INSERT INTO `wp_tt_attr_input_number` VALUES (3, '', '', '', '', '', '', '', '', '', '', 'required', '0.00000000001', '', NULL, NULL, '2020-06-02 04:12:21', '2020-06-02 04:12:21');
INSERT INTO `wp_tt_attr_input_number` VALUES (4, '', '', '', '', '', '', '999', '', '', '', '', '1', '', NULL, NULL, '2020-06-10 05:28:41', '2020-06-10 05:28:41');
INSERT INTO `wp_tt_attr_input_number` VALUES (5, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-10 05:39:07', '2020-06-10 05:39:07');

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'کشور', 'country', 'کشور را انتخاب کنید', '', '', '', '', '', '', '', '1', NULL, NULL, '2020-05-30 03:51:10', '2020-05-30 03:51:10');
INSERT INTO `wp_tt_attr_input_select` VALUES (2, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', '', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (3, 'واحد پول', '', 'واحد پول را انتخاب کنید', '', '', '', 'required', '', '', '', '2', NULL, NULL, '2020-05-31 01:40:33', '2020-05-31 01:40:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (4, 'واحد پول بالاتر', '', 'واحد پول را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-02 01:56:17', '2020-06-02 01:56:17');
INSERT INTO `wp_tt_attr_input_select` VALUES (5, 'نوع مالیات', '', 'نوع مالیات را انتخاب کنید.', '', '', '', 'required', '', '', '', '3-7', NULL, NULL, '2020-06-02 04:00:19', '2020-06-02 04:00:19');
INSERT INTO `wp_tt_attr_input_select` VALUES (6, 'محل درآمد یا هزینه', '', 'محل درآمد یا هزینه', '', '', '', 'required', '', '', '', '8-9', NULL, NULL, '2020-06-02 07:43:49', '2020-06-02 07:43:49');
INSERT INTO `wp_tt_attr_input_select` VALUES (7, 'محل درآمد یا هزینه اصلی', '', 'محل درآمد یا هزینه اصلی را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-03 15:26:28', '2020-06-03 15:26:28');
INSERT INTO `wp_tt_attr_input_select` VALUES (8, 'روش پرداخت اصلی', '', 'روش پرداخت اصلی را انتخاب کنید', '', '', '', '', '', '', '', '10-11', NULL, NULL, '2020-06-02 07:45:47', '2020-06-02 07:45:47');
INSERT INTO `wp_tt_attr_input_select` VALUES (9, 'نام گروه مادر شخص حقوقی', '', 'نام گروه مادر شخص حقوقی را انتخاب کنید', '', '', '', '', '', '', '', '10,12', NULL, NULL, '2020-06-03 19:08:49', '2020-06-03 19:08:49');
INSERT INTO `wp_tt_attr_input_select` VALUES (10, 'نام گروه مادر نحوه آشنایی', '', 'نام گروه مادر نحوه آشنایی را انتخاب کنید', '', '', '', '', '', '', '', '10,13', NULL, NULL, '2020-06-03 19:08:52', '2020-06-03 19:08:52');
INSERT INTO `wp_tt_attr_input_select` VALUES (11, 'گروه شخص حقوقی', '', 'گروه شخص حقوقی انتخاب کنید', '', '', '', '', '', '', '', '10,14', NULL, NULL, '2020-06-03 23:27:09', '2020-06-03 23:27:09');
INSERT INTO `wp_tt_attr_input_select` VALUES (12, 'اشخاص', '', 'شخص را انتخاب کنید', '', '', '', '', '', '', '', '10,15', NULL, NULL, '2020-06-04 01:03:18', '2020-06-04 01:03:18');
INSERT INTO `wp_tt_attr_input_select` VALUES (13, 'تحصیلات', '', 'تحصیلات را انتخاب کنید', '', '', '', '', '', '', '', '10,16', NULL, NULL, '2020-06-07 21:39:44', '2020-06-07 21:39:44');
INSERT INTO `wp_tt_attr_input_select` VALUES (14, 'نوع تلفن', '', 'نوع تلفن را انتخاب کنید', '', '', '', '', '', '', '', '17-20', NULL, NULL, '2020-06-10 05:35:08', '2020-06-10 05:35:08');
INSERT INTO `wp_tt_attr_input_select` VALUES (15, 'استان', '', 'استان را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-10 13:27:48', '2020-06-10 13:27:48');
INSERT INTO `wp_tt_attr_input_select` VALUES (16, 'شهر', '', 'شهر را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-14 12:26:33', '2020-06-14 12:26:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (17, 'شغل', '', 'شغل را انتخاب کنید', '', '', '', '', '', '', '', '10,21', NULL, NULL, '2020-06-20 20:29:33', '2020-06-20 20:29:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (18, 'منطقه', '', 'منطقه را انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 05:36:36', '2020-06-29 05:36:36');
INSERT INTO `wp_tt_attr_input_select` VALUES (19, 'پیش شماره کشور', '', 'پیش شماره کشور انتخاب کنید', '', '', '', '', '', '', '', '22', NULL, NULL, '2020-06-29 19:22:43', '2020-06-29 19:22:43');
INSERT INTO `wp_tt_attr_input_select` VALUES (20, 'پیش شماره استان', '', 'پیش شماره استان انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 19:22:44', '2020-06-29 19:22:44');
INSERT INTO `wp_tt_attr_input_select` VALUES (21, 'پیش شماره شهر', '', 'پیش شماره شهر انتخاب کنید', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 19:23:07', '2020-06-29 19:23:07');
INSERT INTO `wp_tt_attr_input_select` VALUES (22, 'نوع اطلاعات تماس', '', 'نوع اطلاعات تماس را انتخاب کنید', '', '', '', '', '', '', '', '23-26', NULL, NULL, '2020-06-29 21:51:38', '2020-06-29 21:51:38');
INSERT INTO `wp_tt_attr_input_select` VALUES (23, 'نسبت', '', 'نسبت را انتخاب کنید', '', '', '', '', '', '', '', '27', NULL, NULL, '2020-06-30 18:02:57', '2020-06-30 18:02:57');

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
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `label` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `selected` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_options
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, 'کشور', '', 'query', 'SELECT * FROM wp_custom_country', NULL, 'return $a->country;', 'return $a->country;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-05-30 03:52:17', '2020-05-30 03:52:17');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (2, 'واحد پول', '', 'query', 'SELECT\r\ncountry.id AS country_id,\r\n	country.country AS country,\r\n	currency.currency AS currency,\r\n	currency.country_id AS currency_country_id,\r\n	currency.id AS id\r\n	\r\nFROM\r\n	wp_custom_currency AS currency\r\n	JOIN wp_custom_country AS country\r\n	WHERE country.id = currency.country_id', NULL, 'return $a->currency.\' \'.$a->country;', 'return $a->currency.\' \'.$a->country;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-05-30 07:08:08', '2020-05-30 07:08:08');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (3, 'مالیات مشتمل (Inclusive)', '', 'value', '', NULL, 'مالیات مشتمل (Inclusive)', 'مالیات مشتمل (Inclusive)', 'inclusive', '', '', NULL, NULL, NULL, '2020-06-02 04:01:23', '2020-06-02 04:01:23');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (4, 'مالیات غیر مشتمل (Exclusive)', '', 'value', NULL, NULL, 'مالیات غیر مشتمل (Exclusive)', 'مالیات غیر مشتمل (Exclusive)', 'exclusive', '', '', NULL, NULL, NULL, '2020-06-02 04:01:47', '2020-06-02 04:01:47');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (5, 'مالیات ترکیبی ( Compound)', '', 'value', NULL, NULL, 'مالیات ترکیبی ( Compound)', 'مالیات ترکیبی ( Compound)', 'compound', '', '', NULL, NULL, NULL, '2020-06-02 04:03:09', '2020-06-02 04:03:09');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (6, 'مالیات ثابت (Fixed)', '', 'value', NULL, NULL, 'مالیات ثابت (Fixed)', 'مالیات ثابت (Fixed)', 'fixed', '', '', NULL, NULL, NULL, '2020-06-02 04:04:12', '2020-06-02 04:04:12');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (7, 'مالیات عادی (Normal)', '', 'value', NULL, NULL, 'مالیات عادی (Normal)', 'مالیات عادی (Normal)', 'normal', '', '', NULL, NULL, NULL, '2020-06-02 04:04:45', '2020-06-02 04:04:45');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (8, 'درآمد', '', 'value', NULL, NULL, 'درآمد', 'درآمد', 'income', '', '', NULL, NULL, NULL, '2020-06-02 07:51:40', '2020-06-02 07:51:40');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (9, 'هزینه', '', 'value', NULL, NULL, 'هزینه', 'هزینه', 'expenditure', '', '', NULL, NULL, NULL, '2020-06-02 07:51:43', '2020-06-02 07:51:43');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (10, 'هیچکدام', '', 'value', NULL, NULL, 'هیچکدام', 'هیچکدام', '', '', '', NULL, NULL, NULL, '2020-06-03 15:39:50', '2020-06-03 15:39:50');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (11, 'روش پرداخت', '', 'query', 'SELECT * FROM wp_custom_payment_method', NULL, 'return $a->name;', 'return $a->name;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-03 15:40:11', '2020-06-03 15:40:11');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (12, 'نام گروه مادر شخص حقوقی', '', 'query', 'SELECT * FROM wp_custom_legal_person_type', NULL, 'return $a->name;', 'return $a->name;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-03 19:11:05', '2020-06-03 19:11:05');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (13, 'نام گروه مادر نحوه آشنایی', '', 'query', 'SELECT * FROM wp_custom_acquaintance_type', NULL, 'return $a->name;', 'return $a->name;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-03 21:40:06', '2020-06-03 21:40:06');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (14, 'گروه شخص حقوقی', '', 'query', 'SELECT * FROM wp_custom_legal_person_type', NULL, 'return $a->name;', 'return $a->name;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-03 23:28:51', '2020-06-03 23:28:51');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (15, 'اشخاص', '', 'query', 'SELECT * FROM wp_custom_person', NULL, 'if(!empty($a->last_name) and !empty($a->name)){\r\nreturn $a->last_name.\' \'.$a->name;\r\n}elseif(!empty($a->last_name) and empty($a->name)){\r\nreturn $a->last_name;\r\n}elseif(empty($a->last_name) and !empty($a->name)){\r\nreturn $a->name;\r\n}else{\r\nreturn \'فرد ناشناخته\';\r\n\r\n}', 'if(!empty($a->last_name) and !empty($a->name)){\r\nreturn $a->last_name.\' \'.$a->name;\r\n}elseif(!empty($a->last_name) and empty($a->name)){\r\nreturn $a->last_name;\r\n}elseif(empty($a->last_name) and !empty($a->name)){\r\nreturn $a->name;\r\n}else{\r\nreturn \'فرد ناشناخته\';\r\n\r\n}', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-03 23:28:55', '2020-06-03 23:28:55');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (16, 'تحصیلات', '', 'query', 'SELECT * FROM wp_custom_education', NULL, 'return $a->name;', 'return $a->name;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-07 21:40:16', '2020-06-07 21:40:16');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (17, 'تلفن همراه', '', 'value', '', NULL, 'تلفن همراه', 'تلفن همراه', '1', '', '', NULL, NULL, NULL, '2020-06-10 05:36:00', '2020-06-10 05:36:00');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (18, 'تلفن ثابت', '', 'value', '', NULL, 'تلفن ثابت', 'تلفن ثابت', '2', '', '', NULL, NULL, NULL, '2020-06-10 05:36:06', '2020-06-10 05:36:06');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (19, 'فکس', '', 'value', '', NULL, 'فکس', 'فکس', '3', '', '', NULL, NULL, NULL, '2020-06-10 05:36:07', '2020-06-10 05:36:07');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (20, 'پیجر', '', 'value', NULL, NULL, 'پیجر', 'پیجر', '4', '', '', NULL, NULL, NULL, '2020-06-20 20:30:20', '2020-06-20 20:30:20');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (21, 'شغل', '', 'query', 'SELECT * FROM wp_custom_job', NULL, 'return $a->job;', 'return $a->job;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-29 04:54:10', '2020-06-29 04:54:10');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (22, 'پیش شماره کشور', '', 'query', 'SELECT * FROM wp_custom_country', NULL, 'return $a->country.\" (+\".$a->phone_code.\")\";', 'return $a->country.\" (+\".$a->phone_code.\")\";', 'return $a->phone_code;', '', '', NULL, NULL, NULL, '2020-06-29 19:24:36', '2020-06-29 19:24:36');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (23, 'منزل', '', 'value', NULL, NULL, 'منزل', 'منزل', '1', '', '', NULL, NULL, NULL, '2020-06-30 17:58:47', '2020-06-30 17:58:47');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (24, 'محل کار', '', 'value', NULL, NULL, 'محل کار', 'محل کار', '2', '', '', NULL, NULL, NULL, '2020-06-30 17:58:50', '2020-06-30 17:58:50');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (25, 'همراه', '', 'value', NULL, NULL, 'همراه', 'همراه', '3', '', '', NULL, NULL, NULL, '2020-06-30 17:58:51', '2020-06-30 17:58:51');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (26, 'منزل مجردی', '', 'value', NULL, NULL, 'منزل مجردی', 'منزل مجردی', '4', '', '', NULL, NULL, NULL, '2020-06-30 17:59:13', '2020-06-30 17:59:13');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (27, 'نسبت', '', 'query', 'SELECT * FROM wp_custom_relation', NULL, 'return $a->relation;', 'return $a->relation;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-06-30 18:03:41', '2020-06-30 18:03:41');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (28, '', '', NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, '2020-06-30 18:03:50', '2020-06-30 18:03:50');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_submit
-- ----------------------------
INSERT INTO `wp_tt_attr_input_submit` VALUES (1, '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-05 00:19:29', '2020-06-05 00:19:29');

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
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-05-26 11:42:14', '2020-05-26 11:42:14');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_block
-- ----------------------------
INSERT INTO `wp_tt_block` VALUES (1, 'کشور', NULL, 'block', 'input', NULL, '11-14', NULL, '', '2', '1', '9', NULL, NULL, '2020-05-26 11:44:19', '2020-05-26 11:44:19');
INSERT INTO `wp_tt_block` VALUES (2, 'واحد پول', NULL, 'block', 'input', NULL, '21-28', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-05-30 03:54:24', '2020-05-30 03:54:24');
INSERT INTO `wp_tt_block` VALUES (3, 'نرخ تبدیل ارز', NULL, 'block', 'input', NULL, '31-34', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-05-31 01:43:37', '2020-05-31 01:43:37');
INSERT INTO `wp_tt_block` VALUES (4, 'مالیات', NULL, 'block', 'input', NULL, '41-44', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-02 04:05:55', '2020-06-02 04:05:55');
INSERT INTO `wp_tt_block` VALUES (5, 'محل درآمد و هزینه', NULL, 'block', 'input', NULL, '51-54', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 14:10:39', '2020-06-03 14:10:39');
INSERT INTO `wp_tt_block` VALUES (6, 'روش پرداخت', NULL, 'block', 'input', NULL, '61-63', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 15:36:55', '2020-06-03 15:36:55');
INSERT INTO `wp_tt_block` VALUES (7, 'نوع شخص حقوقی', NULL, 'block', 'input', NULL, '71-73', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 15:36:56', '2020-06-03 15:36:56');
INSERT INTO `wp_tt_block` VALUES (8, 'نوع نحوه آشنایی', NULL, 'block', 'input', NULL, '81-83', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 15:36:57', '2020-06-03 15:36:57');
INSERT INTO `wp_tt_block` VALUES (9, 'شبکه اجتماعی', NULL, 'block', 'input', NULL, '91-92', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 15:36:58', '2020-06-03 15:36:58');
INSERT INTO `wp_tt_block` VALUES (10, 'تحصیلات', NULL, 'block', 'input', NULL, '101-102', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:08', '2020-06-03 23:14:08');
INSERT INTO `wp_tt_block` VALUES (11, 'اشخاص حقوقی', NULL, 'block', 'input', NULL, '111-126', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:09', '2020-06-03 23:14:09');
INSERT INTO `wp_tt_block` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', NULL, 'block', 'input', NULL, '151-171', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:10', '2020-06-03 23:14:10');
INSERT INTO `wp_tt_block` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', NULL, 'block', 'input', NULL, '201-218', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:10', '2020-06-03 23:14:10');
INSERT INTO `wp_tt_block` VALUES (14, 'اشخاص تعیین حقوقی و تابعیت', NULL, 'block', 'input', NULL, '251-252', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:10', '2020-06-03 23:14:10');
INSERT INTO `wp_tt_block` VALUES (15, 'اشخاص', NULL, 'block', 'input', NULL, NULL, NULL, '14,11-13', '2', '1', '9', NULL, NULL, '2020-06-03 23:14:11', '2020-06-03 23:14:11');
INSERT INTO `wp_tt_block` VALUES (16, 'استان', NULL, 'block', 'input', NULL, '261-264', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:11', '2020-06-03 23:14:11');
INSERT INTO `wp_tt_block` VALUES (17, 'شهر', NULL, 'block', 'input', NULL, '271-275', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:11', '2020-06-03 23:14:11');
INSERT INTO `wp_tt_block` VALUES (18, 'منطقه', NULL, 'block', 'input', NULL, '291-295', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:12', '2020-06-03 23:14:12');
INSERT INTO `wp_tt_block` VALUES (19, 'نسبت', NULL, 'block', 'input', NULL, '301-302', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:12', '2020-06-03 23:14:12');
INSERT INTO `wp_tt_block` VALUES (20, 'شغل', NULL, 'block', 'input', NULL, '311-312', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-03 23:14:12', '2020-06-03 23:14:12');
INSERT INTO `wp_tt_block` VALUES (21, 'نوع خط', NULL, 'block', 'input', NULL, '331', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:13', '2020-06-03 23:14:13');
INSERT INTO `wp_tt_block` VALUES (22, 'اطلاعات پیش شماره', NULL, 'block', 'input', NULL, '332-334', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-03 23:14:15', '2020-06-03 23:14:15');
INSERT INTO `wp_tt_block` VALUES (23, 'اطلاعات تلفن', NULL, 'block', 'input', NULL, '335-338', NULL, '', '2', '1', NULL, NULL, NULL, '2020-06-10 12:19:24', '2020-06-10 12:19:24');
INSERT INTO `wp_tt_block` VALUES (24, 'تلفن', NULL, 'block', 'input', NULL, NULL, NULL, '21-23', '2', '1', '9', NULL, NULL, '2020-06-29 04:46:35', '2020-06-29 04:46:35');
INSERT INTO `wp_tt_block` VALUES (25, 'آدرس', NULL, 'block', 'input', NULL, '351-362', NULL, NULL, '2', '1', '9', NULL, NULL, '2020-06-29 05:23:16', '2020-06-29 05:23:16');
INSERT INTO `wp_tt_block` VALUES (26, 'تعیین آدرس و تلفن', NULL, 'block', 'input', NULL, '371-372', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-29 14:41:24', '2020-06-29 14:41:24');
INSERT INTO `wp_tt_block` VALUES (27, 'آدرس و تلفن', NULL, 'block', 'input', NULL, NULL, NULL, '26,24,25', '2', '1', NULL, NULL, NULL, '2020-06-29 14:42:04', '2020-06-29 14:42:04');
INSERT INTO `wp_tt_block` VALUES (28, 'نسبت اشخاص', NULL, 'block', 'input', NULL, '381-383', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-30 18:12:38', '2020-06-30 18:12:38');
INSERT INTO `wp_tt_block` VALUES (29, 'نوع اطلاعات تماس', NULL, 'block', 'input', NULL, '391-393', NULL, NULL, '2', '1', NULL, NULL, NULL, '2020-06-30 18:12:57', '2020-06-30 18:12:57');
INSERT INTO `wp_tt_block` VALUES (30, 'اطلاعات تماس', NULL, 'block', 'input', NULL, '', NULL, '29,28,27', '2', '1', '9', NULL, NULL, '2020-06-30 18:14:36', '2020-06-30 18:14:36');

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
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action
-- ----------------------------
INSERT INTO `wp_tt_data_action` VALUES (1, 'کشور', 'country', 'database', '1', '11-14', NULL, NULL, NULL, NULL, '2020-05-29 18:33:30', '2020-05-29 18:33:30');
INSERT INTO `wp_tt_data_action` VALUES (2, 'واحد پول', 'currency', 'database', '2', '21-28', NULL, NULL, 'sys_insert_currency_rate({vals:parent_currency_id},{insert_id},{vals:parent_currency_ratio});\r\n/*{insert_id} is base and parent_currency_id is exchange*/', NULL, '2020-05-30 07:00:33', '2020-05-30 07:00:33');
INSERT INTO `wp_tt_data_action` VALUES (3, 'نرخ تبدیل ارز', NULL, 'database', '3', '31-34', NULL, '//add other currecny subcurrecncy ratio automatically', NULL, NULL, '2020-05-31 01:46:31', '2020-05-31 01:46:31');
INSERT INTO `wp_tt_data_action` VALUES (4, 'مالیات', NULL, 'database', '4', '41-44', NULL, NULL, NULL, NULL, '2020-05-31 01:46:32', '2020-05-31 01:46:32');
INSERT INTO `wp_tt_data_action` VALUES (5, 'محل درآمد و هزینه', NULL, 'database', '5', '51-54', NULL, NULL, NULL, NULL, '2020-05-31 02:07:42', '2020-05-31 02:07:42');
INSERT INTO `wp_tt_data_action` VALUES (6, 'روش پرداخت', NULL, 'database', '6', '61-63', NULL, NULL, NULL, NULL, '2020-06-03 15:41:23', '2020-06-03 15:41:23');
INSERT INTO `wp_tt_data_action` VALUES (7, 'نوع شخص حقوقی', NULL, 'database', '7', '71-73', NULL, NULL, NULL, NULL, '2020-06-03 15:41:24', '2020-06-03 15:41:24');
INSERT INTO `wp_tt_data_action` VALUES (8, 'نوع نحوه آشنایی', NULL, 'database', '8', '81-83', NULL, NULL, NULL, NULL, '2020-06-03 15:41:25', '2020-06-03 15:41:25');
INSERT INTO `wp_tt_data_action` VALUES (9, 'شبکه اجتماعی', NULL, 'database', '9', '91-92', NULL, NULL, NULL, NULL, '2020-06-03 15:41:26', '2020-06-03 15:41:26');
INSERT INTO `wp_tt_data_action` VALUES (10, 'تحصیلات', NULL, 'database', '10', '101-102', NULL, NULL, NULL, NULL, '2020-06-03 21:42:19', '2020-06-03 21:42:19');
INSERT INTO `wp_tt_data_action` VALUES (11, 'اشخاص حقوقی', NULL, 'database', '11', '111-140', NULL, NULL, NULL, NULL, '2020-06-03 21:42:21', '2020-06-03 21:42:21');
INSERT INTO `wp_tt_data_action` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', NULL, 'database', '12', '111-140', NULL, NULL, NULL, NULL, '2020-06-03 21:42:23', '2020-06-03 21:42:23');
INSERT INTO `wp_tt_data_action` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', NULL, 'database', '13', '111-140', NULL, NULL, NULL, NULL, '2020-06-03 21:42:25', '2020-06-03 21:42:25');
INSERT INTO `wp_tt_data_action` VALUES (14, NULL, NULL, 'database', '14', '', NULL, NULL, NULL, NULL, '2020-06-03 21:42:27', '2020-06-03 21:42:27');
INSERT INTO `wp_tt_data_action` VALUES (15, 'اشخاص', NULL, 'database', '15', '111-142', NULL, NULL, NULL, NULL, '2020-06-03 21:42:28', '2020-06-03 21:42:28');
INSERT INTO `wp_tt_data_action` VALUES (16, 'استان', NULL, 'database', '16', '261-264', NULL, NULL, NULL, NULL, '2020-06-03 21:42:29', '2020-06-03 21:42:29');
INSERT INTO `wp_tt_data_action` VALUES (17, 'شهر', NULL, 'database', '17', '271-275', NULL, NULL, NULL, NULL, '2020-06-03 21:42:31', '2020-06-03 21:42:31');
INSERT INTO `wp_tt_data_action` VALUES (18, 'منطقه', NULL, 'database', '18', '291-295', NULL, NULL, NULL, NULL, '2020-06-03 21:42:32', '2020-06-03 21:42:32');
INSERT INTO `wp_tt_data_action` VALUES (19, 'نسبت', NULL, 'database', '19', '301-302', NULL, NULL, NULL, NULL, '2020-06-03 21:42:36', '2020-06-03 21:42:36');
INSERT INTO `wp_tt_data_action` VALUES (20, 'شغل', NULL, 'database', '20', '311-312', NULL, NULL, NULL, NULL, '2020-06-03 21:42:39', '2020-06-03 21:42:39');
INSERT INTO `wp_tt_data_action` VALUES (21, '', NULL, 'database', '21', '', NULL, NULL, NULL, NULL, '2020-06-03 21:42:40', '2020-06-03 21:42:40');
INSERT INTO `wp_tt_data_action` VALUES (22, '', NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:19', '2020-06-29 21:17:19');
INSERT INTO `wp_tt_data_action` VALUES (23, '', NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:19', '2020-06-29 21:17:19');
INSERT INTO `wp_tt_data_action` VALUES (24, 'تلفن', NULL, 'database', '24', '331-338', NULL, NULL, NULL, NULL, '2020-06-29 21:17:20', '2020-06-29 21:17:20');
INSERT INTO `wp_tt_data_action` VALUES (25, 'آدرس', NULL, 'database', '25', '351-362', NULL, NULL, NULL, NULL, '2020-06-29 21:17:20', '2020-06-29 21:17:20');
INSERT INTO `wp_tt_data_action` VALUES (26, '', NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:20', '2020-06-29 21:17:20');
INSERT INTO `wp_tt_data_action` VALUES (27, 'آدرس و تلفن', NULL, 'database', '27', '331-338,351-362', NULL, NULL, NULL, NULL, '2020-06-29 21:17:21', '2020-06-29 21:17:21');
INSERT INTO `wp_tt_data_action` VALUES (28, NULL, NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:21', '2020-06-29 21:17:21');
INSERT INTO `wp_tt_data_action` VALUES (29, NULL, NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:21', '2020-06-29 21:17:21');
INSERT INTO `wp_tt_data_action` VALUES (30, 'اطلاعات تماس', NULL, 'database', '30', '331-338,351-362', NULL, NULL, NULL, NULL, '2020-06-29 21:17:22', '2020-06-29 21:17:22');
INSERT INTO `wp_tt_data_action` VALUES (31, NULL, NULL, 'database', NULL, '', NULL, NULL, NULL, NULL, '2020-06-29 21:17:22', '2020-06-29 21:17:22');

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
) ENGINE = InnoDB AUTO_INCREMENT = 405 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_colval
-- ----------------------------
INSERT INTO `wp_tt_data_action_colval` VALUES (11, 'کشور', 'country-1', 'simple-variable', 'country', 'country-1', 'country-1', NULL, NULL, '', NULL, '2020-05-29 18:37:17', '2020-05-29 18:37:17');
INSERT INTO `wp_tt_data_action_colval` VALUES (12, 'پرچم', 'flag-1', 'file', 'flag', 'flag-1', 'flag-1', '/country-flags/', NULL, '', NULL, '2020-05-29 18:37:18', '2020-05-29 18:37:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (13, 'پیش شماره', 'phone_code_1', 'simple-variable', 'phone_code', 'phone_code_1', 'phone_code_1', NULL, NULL, '', NULL, '2020-05-29 18:37:19', '2020-05-29 18:37:19');
INSERT INTO `wp_tt_data_action_colval` VALUES (14, 'توضیحات', 'desc-1', 'simple-variable', 'desc', 'desc-1', 'desc-1', NULL, NULL, '', NULL, '2020-06-05 15:08:40', '2020-06-05 15:08:40');
INSERT INTO `wp_tt_data_action_colval` VALUES (15, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-10 05:31:43', '2020-06-10 05:31:43');
INSERT INTO `wp_tt_data_action_colval` VALUES (21, 'کشور', 'country_id-2', 'simple-variable', 'country_id', 'country_id-2', 'country_id-2', NULL, NULL, '', NULL, '2020-05-30 08:32:18', '2020-05-30 08:32:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (22, 'واحد پول', 'currency-2', 'simple-variable', 'currency', 'currency-2', 'currency-2', NULL, NULL, '', NULL, '2020-05-30 08:32:20', '2020-05-30 08:32:20');
INSERT INTO `wp_tt_data_action_colval` VALUES (23, 'علامت واحد پول', 'currency_sign-2', 'simple-variable', 'currency_sign', 'currency_sign-2', 'currency_sign-2', NULL, NULL, '', NULL, '2020-05-30 08:32:28', '2020-05-30 08:32:28');
INSERT INTO `wp_tt_data_action_colval` VALUES (24, 'مخفف واحد پولی', 'currency_code-2', 'simple-variable', 'currency_code', 'currency_code-2', 'currency_abbr-2', NULL, NULL, '', NULL, '2020-05-30 08:32:31', '2020-05-30 08:32:31');
INSERT INTO `wp_tt_data_action_colval` VALUES (25, 'موقعیت نماد', 'currency_sign_position-2', 'code', 'currency_sign_position', 'currency_sign_position-2', 'if({vals:currency_sign_position}==\'left\'){\r\n	return \'left\';\r\n}else{\r\n	return \'right\';\r\n}\r\n', NULL, NULL, '', NULL, '2020-05-30 08:32:32', '2020-05-30 08:32:32');
INSERT INTO `wp_tt_data_action_colval` VALUES (26, 'واحد پول بالاتر', 'parent_currency_id-2', 'simple-variable', 'parent_currency_id', 'parent_currency_id-2', 'parent_currency_id-2', NULL, NULL, '', NULL, '2020-05-30 08:32:34', '2020-05-30 08:32:34');
INSERT INTO `wp_tt_data_action_colval` VALUES (27, 'نرخ معادل با واحد پول بالاتر', 'parent_currency_ratio-2', 'simple-variable', 'parent_currency_ratio', 'parent_currency_ratio-2', 'parent_currency_ratio-2', NULL, NULL, '', NULL, '2020-05-30 08:33:11', '2020-05-30 08:33:11');
INSERT INTO `wp_tt_data_action_colval` VALUES (28, 'توضیحات', 'desc-2', 'simple-variable', 'desc', 'desc-2', 'desc-2', NULL, NULL, '', NULL, '2020-05-30 22:09:56', '2020-05-30 22:09:56');
INSERT INTO `wp_tt_data_action_colval` VALUES (29, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:42', '2020-06-05 15:08:42');
INSERT INTO `wp_tt_data_action_colval` VALUES (31, 'ارز پایه', 'base_currency_id-3', 'simple-variable', 'base_currency_id', 'base_currency_id-3', 'base_currency_id-3', NULL, NULL, '', NULL, '2020-05-31 01:37:43', '2020-05-31 01:37:43');
INSERT INTO `wp_tt_data_action_colval` VALUES (32, 'ارز معادل', 'exchanged_currency_id-3', 'simple-variable', 'exchanged_currency_id', 'exchanged_currency_id-3', 'exchanged_currency_id-3', NULL, NULL, '', NULL, '2020-05-31 01:37:44', '2020-05-31 01:37:44');
INSERT INTO `wp_tt_data_action_colval` VALUES (33, 'نرخ تبدیل', 'rate-3', 'simple-variable', 'rate', 'rate-3', 'rate-3', NULL, NULL, '', NULL, '2020-05-31 01:37:48', '2020-05-31 01:37:48');
INSERT INTO `wp_tt_data_action_colval` VALUES (34, 'توضیحات', 'desc-3', 'simple-variable', 'desc', 'desc-3', 'desc-3', NULL, NULL, '', NULL, '2020-05-31 02:03:41', '2020-05-31 02:03:41');
INSERT INTO `wp_tt_data_action_colval` VALUES (35, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:44', '2020-06-05 15:08:44');
INSERT INTO `wp_tt_data_action_colval` VALUES (41, 'نام مالیات', 'name-4', 'simple-variable', 'name', 'name-4', 'name-4', NULL, NULL, '', NULL, '2020-06-02 05:29:49', '2020-06-02 05:29:49');
INSERT INTO `wp_tt_data_action_colval` VALUES (42, 'نوع مالیات', 'rate-4', 'simple-variable', 'rate', 'rate-4', 'rate-4', NULL, NULL, '', NULL, '2020-06-02 05:29:50', '2020-06-02 05:29:50');
INSERT INTO `wp_tt_data_action_colval` VALUES (43, 'نرخ', 'type-4', 'simple-variable', 'type', 'type-4', 'type-4', NULL, NULL, '', NULL, '2020-06-02 05:29:51', '2020-06-02 05:29:51');
INSERT INTO `wp_tt_data_action_colval` VALUES (44, 'توضیحات', 'desc-4', 'simple-variable', 'desc', 'desc-4', 'desc-4', NULL, NULL, '', NULL, '2020-06-02 05:29:53', '2020-06-02 05:29:53');
INSERT INTO `wp_tt_data_action_colval` VALUES (45, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:46', '2020-06-05 15:08:46');
INSERT INTO `wp_tt_data_action_colval` VALUES (51, 'نام محل درآمد و هزینه', 'name-5', 'simple-variable', 'name', 'name-5', 'name-5', NULL, NULL, '', NULL, '2020-06-02 06:06:26', '2020-06-02 06:06:26');
INSERT INTO `wp_tt_data_action_colval` VALUES (52, 'نوع', 'type-5', 'simple-variable', 'type', 'type-5', 'type-5', NULL, NULL, '', NULL, '2020-06-02 06:06:28', '2020-06-02 06:06:28');
INSERT INTO `wp_tt_data_action_colval` VALUES (53, 'محل درآمد و هزینه اصلی', 'parent_id-5', 'simple-variable', 'parent_id', 'parent_id-5', 'parent_id-5', NULL, NULL, '', NULL, '2020-06-02 06:06:29', '2020-06-02 06:06:29');
INSERT INTO `wp_tt_data_action_colval` VALUES (54, 'توضیحات', 'desc-5', 'simple-variable', 'desc', 'desc-5', 'desc-5', NULL, NULL, '', NULL, '2020-06-02 06:06:30', '2020-06-02 06:06:30');
INSERT INTO `wp_tt_data_action_colval` VALUES (55, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:48', '2020-06-05 15:08:48');
INSERT INTO `wp_tt_data_action_colval` VALUES (61, 'روش پرداخت', 'name-6', 'simple-variable', 'name', 'name-6', 'name-6', NULL, NULL, '', NULL, '2020-06-02 06:06:32', '2020-06-02 06:06:32');
INSERT INTO `wp_tt_data_action_colval` VALUES (62, 'روش پرداخت اصلی', 'parent_id-6', 'simple-variable', 'parent_id', 'parent_id-6', 'parent_id-6', NULL, NULL, '', NULL, '2020-06-03 15:44:25', '2020-06-03 15:44:25');
INSERT INTO `wp_tt_data_action_colval` VALUES (63, 'توضیحات', 'desc-6', 'simple-variable', 'desc', 'desc-6', 'desc-6', NULL, NULL, '', NULL, '2020-06-03 15:44:27', '2020-06-03 15:44:27');
INSERT INTO `wp_tt_data_action_colval` VALUES (64, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:49', '2020-06-05 15:08:49');
INSERT INTO `wp_tt_data_action_colval` VALUES (71, 'نام گروه شخص حقوقی', 'name-7', 'simple-variable', 'name', 'name-7', 'name-7', NULL, NULL, '', NULL, '2020-06-03 18:36:47', '2020-06-03 18:36:47');
INSERT INTO `wp_tt_data_action_colval` VALUES (72, 'نام گروه مادر شخص حقوقی', 'parent_id-7', 'simple-variable', 'parent_id', 'parent_id-7', 'parent_id-7', NULL, NULL, '', NULL, '2020-06-03 18:36:49', '2020-06-03 18:36:49');
INSERT INTO `wp_tt_data_action_colval` VALUES (73, 'توضیحات', 'desc-7', 'simple-variable', 'desc', 'desc-7', 'desc-7', NULL, NULL, '', NULL, '2020-06-03 18:36:50', '2020-06-03 18:36:50');
INSERT INTO `wp_tt_data_action_colval` VALUES (74, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:51', '2020-06-05 15:08:51');
INSERT INTO `wp_tt_data_action_colval` VALUES (81, 'نام گروه نحوه آشنایی', 'name-7', 'simple-variable', 'name', 'name-7', 'name-7', NULL, NULL, '', NULL, '2020-06-03 23:16:12', '2020-06-03 23:16:12');
INSERT INTO `wp_tt_data_action_colval` VALUES (82, 'نام گروه مادر نحوه آشنایی', 'parent_id-7', 'simple-variable', 'parent_id', 'parent_id-7', 'parent_id-7', NULL, NULL, '', NULL, '2020-06-03 23:16:13', '2020-06-03 23:16:13');
INSERT INTO `wp_tt_data_action_colval` VALUES (83, 'توضیحات', 'desc-7', 'simple-variable', 'desc', 'desc-7', 'desc-7', NULL, NULL, '', NULL, '2020-06-03 23:16:15', '2020-06-03 23:16:15');
INSERT INTO `wp_tt_data_action_colval` VALUES (84, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:53', '2020-06-05 15:08:53');
INSERT INTO `wp_tt_data_action_colval` VALUES (91, 'نام شبکه اجتماعی', 'name-8', 'simple-variable', 'name', 'name-8', 'name-8', NULL, NULL, '', NULL, '2020-06-03 23:17:00', '2020-06-03 23:17:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (92, 'توضیحات', 'desc-8', 'simple-variable', 'desc', 'desc-8', 'desc-8', NULL, NULL, '', NULL, '2020-06-03 23:17:01', '2020-06-03 23:17:01');
INSERT INTO `wp_tt_data_action_colval` VALUES (93, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:08:57', '2020-06-05 15:08:57');
INSERT INTO `wp_tt_data_action_colval` VALUES (101, 'عنوان سطح  تحصیلات', 'name-9', 'simple-variable', 'name', 'name-9', 'name-9', NULL, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (102, 'توضیحات', 'desc-9', 'simple-variable', 'desc', 'desc-9', 'desc-9', NULL, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (103, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-05 15:10:03', '2020-06-05 15:10:03');
INSERT INTO `wp_tt_data_action_colval` VALUES (111, 'name', 'name-10', 'simple-variable', 'name', 'name-10', 'name-10', NULL, NULL, '', NULL, '2020-06-04 04:26:25', '2020-06-04 04:26:25');
INSERT INTO `wp_tt_data_action_colval` VALUES (112, 'last_name', 'last_name-10', 'simple-variable', 'last_name', 'last_name-10', 'last_name-10', '/legal_person_logo/', NULL, '', NULL, '2020-06-04 04:26:25', '2020-06-04 04:26:25');
INSERT INTO `wp_tt_data_action_colval` VALUES (113, 'image', 'image-10', 'file', 'image', 'image-10', 'image-10', '/person/', NULL, '', NULL, '2020-06-05 00:03:35', '2020-06-05 00:03:35');
INSERT INTO `wp_tt_data_action_colval` VALUES (114, 'is_legal', 'is_legal-10', 'simple-variable', 'is_legal', 'is_legal-10', 'is_legal-10', '', NULL, '', NULL, '2020-06-05 01:40:05', '2020-06-05 01:40:05');
INSERT INTO `wp_tt_data_action_colval` VALUES (115, 'legal_person_type_id', 'legal_person_type_id-10', 'simple-variable', 'legal_person_type_id', 'legal_person_type_id-10', 'legal_person_type_id-10', '', NULL, '', NULL, '2020-06-04 04:26:25', '2020-06-04 04:26:25');
INSERT INTO `wp_tt_data_action_colval` VALUES (116, 'legal_person_national_id', 'legal_person_national_id-10', 'simple-variable', 'legal_person_national_id', 'legal_person_national_id-10', 'legal_person_national_id-10', '', NULL, '', NULL, '2020-06-04 04:32:23', '2020-06-04 04:32:23');
INSERT INTO `wp_tt_data_action_colval` VALUES (117, 'legal_person_notary_id', 'legal_person_notary_id-10', 'simple-variable', 'legal_person_notary_id', 'legal_person_notary_id-10', 'legal_person_notary_id-10', '', NULL, '', NULL, '2020-06-05 05:09:51', '2020-06-05 05:09:51');
INSERT INTO `wp_tt_data_action_colval` VALUES (118, 'statute_image', 'statute_image-10', 'file', 'statute_image', 'statute_image-10', 'statute_image-10', '', NULL, '', NULL, '2020-06-05 05:09:52', '2020-06-05 05:09:52');
INSERT INTO `wp_tt_data_action_colval` VALUES (119, 'national_id', 'national_id-10', 'simple-variable', 'national_id', 'national_id-10', 'national_id-10', '', NULL, '', NULL, '2020-06-05 05:09:52', '2020-06-05 05:09:52');
INSERT INTO `wp_tt_data_action_colval` VALUES (120, 'national_card', 'national_card-10', 'file', 'national_card', 'national_card-10', 'national_card-10', '/national_card/', NULL, '', NULL, '2020-06-05 05:09:52', '2020-06-05 05:09:52');
INSERT INTO `wp_tt_data_action_colval` VALUES (121, 'birth_date', 'birth_date-10', 'simple-variable', 'birth_date', 'birth_date-10', 'birth_date-10', '', NULL, '', NULL, '2020-06-05 05:09:52', '2020-06-05 05:09:52');
INSERT INTO `wp_tt_data_action_colval` VALUES (122, 'birth_place', 'birth_place-10', 'simple-variable', 'birth_place', 'birth_place-10', 'birth_place-10', '', NULL, '', NULL, '2020-06-05 05:09:53', '2020-06-05 05:09:53');
INSERT INTO `wp_tt_data_action_colval` VALUES (123, 'father_name', 'father_name-10', 'simple-variable', 'father_name', 'father_name-10', 'father_name-10', '', NULL, '', NULL, '2020-06-05 05:09:53', '2020-06-05 05:09:53');
INSERT INTO `wp_tt_data_action_colval` VALUES (124, 'national_id_2', 'national_id_2-10', 'simple-variable', 'national_id_2', 'national_id_2-10', 'national_id_2-10', '', NULL, '', NULL, '2020-06-05 05:09:54', '2020-06-05 05:09:54');
INSERT INTO `wp_tt_data_action_colval` VALUES (125, 'national_card_2', 'national_card_2-10', 'simple-variable', 'national_card_2', 'national_card_2-10', 'national_card_2-10', '', NULL, '', NULL, '2020-06-05 05:09:54', '2020-06-05 05:09:54');
INSERT INTO `wp_tt_data_action_colval` VALUES (126, 'driving_licence_no', 'driving_licence_no-10', 'simple-variable', 'driving_licence_no', 'driving_licence_no-10', 'driving_licence_no-10', '', NULL, '', NULL, '2020-06-05 05:09:54', '2020-06-05 05:09:54');
INSERT INTO `wp_tt_data_action_colval` VALUES (127, 'driving_licence_issue_date', 'driving_licence_issue_date-10', 'simple-variable', 'driving_licence_issue_date', 'driving_licence_issue_date-10', 'driving_licence_issue_date-10', NULL, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (128, 'driving_licence_card', 'driving_licence_card-10', 'file', 'driving_licence_card', 'driving_licence_card-10', 'driving_licence_card-10', '/driving_licence_card/', NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (129, 'currency_id', 'currency_id-10', 'simple-variable', 'currency_id', 'currency_id-10', 'currency_id-10', '', NULL, '', NULL, '2020-06-10 03:51:33', '2020-06-10 03:51:33');
INSERT INTO `wp_tt_data_action_colval` VALUES (130, 'passport_no', 'passport_no-10', 'simple-variable', 'passport_no', 'passport_no-10', 'passport_no-10', NULL, NULL, '', NULL, '2020-06-05 15:28:22', '2020-06-05 15:28:22');
INSERT INTO `wp_tt_data_action_colval` VALUES (131, 'passport_image', 'passport_image-10', 'file', 'passport_image', 'passport_image-10', 'passport_image-10', '/passport_image/', NULL, '', NULL, '2020-06-10 03:51:33', '2020-06-10 03:51:33');
INSERT INTO `wp_tt_data_action_colval` VALUES (132, 'nationality', 'nationality-10', 'simple-variable', 'nationality', 'nationality-10', 'nationality-10', NULL, NULL, '', NULL, '2020-06-10 03:51:34', '2020-06-10 03:51:34');
INSERT INTO `wp_tt_data_action_colval` VALUES (133, 'tax_code', 'tax_code-10', 'simple-variable', 'tax_code', 'tax_code-10', 'tax_code-10', NULL, NULL, '', NULL, '2020-06-10 03:51:34', '2020-06-10 03:51:34');
INSERT INTO `wp_tt_data_action_colval` VALUES (134, 'reference_person_id', 'reference_person_id-10', 'simple-variable', 'reference_person_id', 'reference_person_id-10', 'reference_person_id-10', NULL, NULL, '', NULL, '2020-06-10 03:51:34', '2020-06-10 03:51:34');
INSERT INTO `wp_tt_data_action_colval` VALUES (135, 'acquaintance_type_id', 'acquaintance_type_id-10', 'simple-variable', 'acquaintance_type_id', 'acquaintance_type_id-10', 'acquaintance_type_id-10', NULL, NULL, '', NULL, '2020-06-10 03:51:35', '2020-06-10 03:51:35');
INSERT INTO `wp_tt_data_action_colval` VALUES (136, 'job', 'job-10', 'simple-variable', 'job', 'job-10', 'job-10', NULL, NULL, '', NULL, '2020-06-10 03:51:40', '2020-06-10 03:51:40');
INSERT INTO `wp_tt_data_action_colval` VALUES (137, 'education', 'education-10', 'simple-variable', 'education', 'education-10', 'education-10', NULL, NULL, '', NULL, '2020-06-10 03:51:40', '2020-06-10 03:51:40');
INSERT INTO `wp_tt_data_action_colval` VALUES (138, 'email', 'email-10', 'simple-variable', 'email', 'email-10', 'email-10', NULL, NULL, '', NULL, '2020-06-10 03:51:41', '2020-06-10 03:51:41');
INSERT INTO `wp_tt_data_action_colval` VALUES (139, 'website', 'website-10', 'simple-variable', 'website', 'website-10', 'website-10', NULL, NULL, '', NULL, '2020-06-10 03:51:41', '2020-06-10 03:51:41');
INSERT INTO `wp_tt_data_action_colval` VALUES (140, 'desc', 'desc-10', 'simple-variable', 'desc', 'desc-10', 'desc-10', NULL, NULL, '', NULL, '2020-06-10 03:51:41', '2020-06-10 03:51:41');
INSERT INTO `wp_tt_data_action_colval` VALUES (141, 'شخص حقوقی', 'temp_is_legal_person', 'temporary', 'temp_is_legal_person', 'temp_is_legal_person', 'temp_is_legal_person', NULL, NULL, '', NULL, '2020-06-10 03:51:42', '2020-06-10 03:51:42');
INSERT INTO `wp_tt_data_action_colval` VALUES (142, 'تابعیت داخلی', 'temp_nationality', 'temporary', 'temp_nationality', 'temp_nationality', 'temp_nationality', NULL, NULL, '', NULL, '2020-06-15 21:34:18', '2020-06-15 21:34:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (143, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-15 21:34:20', '2020-06-15 21:34:20');
INSERT INTO `wp_tt_data_action_colval` VALUES (261, 'کشور', 'country_id-11', 'simple-variable', 'country_id', 'country_id-11', 'country_id-11', NULL, NULL, '', NULL, '2020-06-10 04:35:13', '2020-06-10 04:35:13');
INSERT INTO `wp_tt_data_action_colval` VALUES (262, 'استان', 'state_name-11', 'simple-variable', 'state_name', 'state_name-11', 'state_name-11', NULL, NULL, '', NULL, '2020-06-10 12:56:44', '2020-06-10 12:56:44');
INSERT INTO `wp_tt_data_action_colval` VALUES (263, 'پیش شماره استان', 'phone_code-11', 'simple-variable', 'phone_code', 'phone_code-11', 'phone_code-11', NULL, NULL, '', NULL, '2020-06-10 12:56:46', '2020-06-10 12:56:46');
INSERT INTO `wp_tt_data_action_colval` VALUES (264, 'توضیحات', 'desc-11', 'simple-variable', 'desc', 'desc-11', 'desc-11', NULL, NULL, '', NULL, '2020-06-10 12:56:48', '2020-06-10 12:56:48');
INSERT INTO `wp_tt_data_action_colval` VALUES (265, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-10 12:56:50', '2020-06-10 12:56:50');
INSERT INTO `wp_tt_data_action_colval` VALUES (271, 'کشور', 'country_id-12', 'simple-variable', 'country_id', 'country_id-12', 'country_id-12', NULL, NULL, '', NULL, '2020-06-10 21:54:22', '2020-06-10 21:54:22');
INSERT INTO `wp_tt_data_action_colval` VALUES (272, 'استان', 'state_id-12', 'simple-variable', 'state_id', 'state_id-12', 'state_id-12', NULL, NULL, '', NULL, '2020-06-10 21:54:23', '2020-06-10 21:54:23');
INSERT INTO `wp_tt_data_action_colval` VALUES (273, 'شهر', 'city_name-12', 'simple-variable', 'city_name', 'city_name-12', 'city_name-12', NULL, NULL, '', NULL, '2020-06-10 21:54:25', '2020-06-10 21:54:25');
INSERT INTO `wp_tt_data_action_colval` VALUES (274, 'پیش شماره شهر', 'phone_code-12', 'simple-variable', 'phone_code', 'phone_code-12', 'phone_code-12', NULL, NULL, '', NULL, '2020-06-10 21:54:26', '2020-06-10 21:54:26');
INSERT INTO `wp_tt_data_action_colval` VALUES (275, 'توضیحات', 'desc-12', 'simple-variable', 'desc', 'desc-12', 'desc-12', NULL, NULL, '', NULL, '2020-06-10 21:54:27', '2020-06-10 21:54:27');
INSERT INTO `wp_tt_data_action_colval` VALUES (276, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-10 21:54:29', '2020-06-10 21:54:29');
INSERT INTO `wp_tt_data_action_colval` VALUES (291, 'کشور', 'country_id-13', 'simple-variable', 'country_id', 'country_id-13', 'country_id-13', NULL, NULL, '', NULL, '2020-06-14 13:18:44', '2020-06-14 13:18:44');
INSERT INTO `wp_tt_data_action_colval` VALUES (292, 'استان', 'state_id-13', 'simple-variable', 'state_id', 'state_id-13', 'state_id-13', NULL, NULL, '', NULL, '2020-06-14 13:18:47', '2020-06-14 13:18:47');
INSERT INTO `wp_tt_data_action_colval` VALUES (293, 'شهر', 'city_id-13', 'simple-variable', 'city_id', 'city_id-13', 'city_id-13', NULL, NULL, '', NULL, '2020-06-14 13:18:48', '2020-06-14 13:18:48');
INSERT INTO `wp_tt_data_action_colval` VALUES (294, 'منطقه', 'area_name-13', 'simple-variable', 'area_name', 'area_name-13', 'area_name-13', NULL, NULL, '', NULL, '2020-06-14 13:18:49', '2020-06-14 13:18:49');
INSERT INTO `wp_tt_data_action_colval` VALUES (295, 'توضیحات', 'desc-13', 'simple-variable', 'desc', 'desc-13', 'desc-13', NULL, NULL, '', NULL, '2020-06-14 13:18:53', '2020-06-14 13:18:53');
INSERT INTO `wp_tt_data_action_colval` VALUES (296, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-14 13:18:54', '2020-06-14 13:18:54');
INSERT INTO `wp_tt_data_action_colval` VALUES (301, 'عنوان نسبت', 'relation-14', 'simple-variable', 'relation', 'relation-14', 'relation-14', NULL, NULL, '', NULL, '2020-06-14 13:54:16', '2020-06-14 13:54:16');
INSERT INTO `wp_tt_data_action_colval` VALUES (302, 'توضیحات', 'desc-14', 'simple-variable', 'desc', 'desc-14', 'desc-14', NULL, NULL, '', NULL, '2020-06-14 13:54:18', '2020-06-14 13:54:18');
INSERT INTO `wp_tt_data_action_colval` VALUES (303, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-20 20:13:05', '2020-06-20 20:13:05');
INSERT INTO `wp_tt_data_action_colval` VALUES (311, 'شغل', 'job-15', 'simple-variable', 'job', 'job-15', 'job-15', NULL, NULL, '', NULL, '2020-06-20 20:13:06', '2020-06-20 20:13:06');
INSERT INTO `wp_tt_data_action_colval` VALUES (312, 'توضیحات', 'desc-15', 'simple-variable', 'desc', 'desc-15', 'desc-15', NULL, NULL, '', NULL, '2020-06-20 20:13:07', '2020-06-20 20:13:07');
INSERT INTO `wp_tt_data_action_colval` VALUES (313, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-20 20:13:09', '2020-06-20 20:13:09');
INSERT INTO `wp_tt_data_action_colval` VALUES (331, 'نوع خط', 'phone_type-16', 'simple-variable', 'phone_type', 'phone_type-16', 'phone_type-16', NULL, NULL, '', NULL, '2020-06-30 21:31:59', '2020-06-30 21:31:59');
INSERT INTO `wp_tt_data_action_colval` VALUES (332, 'کشور', 'country_code-16', 'simple-variable', 'country_code', 'country_code-16', 'country_code-16', NULL, NULL, '', NULL, '2020-06-30 21:32:36', '2020-06-30 21:32:36');
INSERT INTO `wp_tt_data_action_colval` VALUES (333, 'استان', 'state_code-16', 'simple-variable', 'state_code', 'state_code-16', 'state_code-16', NULL, NULL, '', NULL, '2020-06-30 21:32:37', '2020-06-30 21:32:37');
INSERT INTO `wp_tt_data_action_colval` VALUES (334, 'شهر', 'city_code-16', 'simple-variable', 'city_code', 'city_code-16', 'city_code-16', NULL, NULL, '', NULL, '2020-06-30 21:32:37', '2020-06-30 21:32:37');
INSERT INTO `wp_tt_data_action_colval` VALUES (335, 'شماره', 'phone_no-16', 'simple-variable', 'phone_no', 'phone_no-16', 'phone_no-16', NULL, NULL, '', NULL, '2020-06-30 21:32:38', '2020-06-30 21:32:38');
INSERT INTO `wp_tt_data_action_colval` VALUES (336, 'داخلی', 'extension_no-16', 'simple-variable', 'extension_no', 'extension_no-16', 'extension_no-16', NULL, NULL, '', NULL, '2020-06-30 21:32:38', '2020-06-30 21:32:38');
INSERT INTO `wp_tt_data_action_colval` VALUES (337, 'تایید شده', 'verified-16', 'simple-variable', 'verified', 'verified-16', 'verified-16', NULL, NULL, '', NULL, '2020-06-30 21:32:38', '2020-06-30 21:32:38');
INSERT INTO `wp_tt_data_action_colval` VALUES (338, 'توضیحات', 'desc-16', 'simple-variable', 'desc', 'desc-16', 'desc-16', NULL, NULL, '', NULL, '2020-06-30 21:32:38', '2020-06-30 21:32:38');
INSERT INTO `wp_tt_data_action_colval` VALUES (339, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-06-30 21:32:39', '2020-06-30 21:32:39');
INSERT INTO `wp_tt_data_action_colval` VALUES (351, 'کشور', 'country_id-17', 'simple-variable', 'country_id', 'country_id-17', 'country_id-17', NULL, NULL, '', NULL, '2020-06-30 21:32:39', '2020-06-30 21:32:39');
INSERT INTO `wp_tt_data_action_colval` VALUES (352, 'استان', 'state_id-17', 'simple-variable', 'state_id', 'state_id-17', 'state_id-17', NULL, NULL, '', NULL, '2020-06-30 21:32:40', '2020-06-30 21:32:40');
INSERT INTO `wp_tt_data_action_colval` VALUES (353, 'شهر', 'city_id-17', 'simple-variable', 'city_id', 'city_id-17', 'city_id-17', NULL, NULL, '', NULL, '2020-07-01 01:57:20', '2020-07-01 01:57:20');
INSERT INTO `wp_tt_data_action_colval` VALUES (354, 'منطقه', 'area_id-17', 'simple-variable', 'area_id', 'area_id-17', 'area_id-17', NULL, NULL, '', NULL, '2020-07-01 01:57:21', '2020-07-01 01:57:21');
INSERT INTO `wp_tt_data_action_colval` VALUES (355, 'خیایان اصلی', 'main_street-17', 'simple-variable', 'main_street', 'main_street-17', 'main_street-17', NULL, NULL, '', NULL, '2020-07-01 01:57:21', '2020-07-01 01:57:21');
INSERT INTO `wp_tt_data_action_colval` VALUES (356, 'آدرس', 'address-17', 'simple-variable', 'address', 'address-17', 'address-17', NULL, NULL, '', NULL, '2020-07-01 01:57:21', '2020-07-01 01:57:21');
INSERT INTO `wp_tt_data_action_colval` VALUES (357, 'پلاک', 'block_no-17', 'simple-variable', 'block_no', 'block_no-17', 'block_no-17', NULL, NULL, '', NULL, '2020-07-01 01:57:21', '2020-07-01 01:57:21');
INSERT INTO `wp_tt_data_action_colval` VALUES (358, 'واحد', 'apartment_no-17', 'simple-variable', 'apartment_no', 'apartment_no-17', 'apartment_no-17', NULL, NULL, '', NULL, '2020-07-01 01:57:22', '2020-07-01 01:57:22');
INSERT INTO `wp_tt_data_action_colval` VALUES (359, 'طول جغرافیایی', 'longitude-17', 'simple-variable', 'longitude', 'longitude-17', 'longitude-17', NULL, NULL, '', NULL, '2020-07-01 01:57:22', '2020-07-01 01:57:22');
INSERT INTO `wp_tt_data_action_colval` VALUES (360, 'عرض جغرافیایی', 'latitude-17', 'simple-variable', 'latitude', 'latitude-17', 'latitude-17', NULL, NULL, '', NULL, '2020-07-01 01:57:22', '2020-07-01 01:57:22');
INSERT INTO `wp_tt_data_action_colval` VALUES (361, 'تایید شده', 'verified-17', 'simple-variable', 'verified', 'verified-17', 'verified-17', NULL, NULL, '', NULL, '2020-07-01 01:57:23', '2020-07-01 01:57:23');
INSERT INTO `wp_tt_data_action_colval` VALUES (362, 'توضیحات', 'desc-17', 'simple-variable', 'desc', 'desc-17', 'desc-17', NULL, NULL, '', NULL, '2020-07-01 01:57:23', '2020-07-01 01:57:23');
INSERT INTO `wp_tt_data_action_colval` VALUES (363, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-07-01 01:57:24', '2020-07-01 01:57:24');
INSERT INTO `wp_tt_data_action_colval` VALUES (381, 'نسبت', 'relation_id-18', 'simple-variable', 'relation_id', 'relation_id-18', 'relation_id-18', NULL, NULL, '', NULL, '2020-07-01 01:57:24', '2020-07-01 01:57:24');
INSERT INTO `wp_tt_data_action_colval` VALUES (382, 'نام منتسب', 'name-18', 'simple-variable', 'name', 'name-18', 'name-18', NULL, NULL, '', NULL, '2020-07-01 02:13:47', '2020-07-01 02:13:47');
INSERT INTO `wp_tt_data_action_colval` VALUES (383, 'نام خانوادگی منتسب', 'last_name-18', 'simple-variable', 'last_name', 'last_name-18', 'last_name-18', NULL, NULL, '', NULL, '2020-07-01 02:13:49', '2020-07-01 02:13:49');
INSERT INTO `wp_tt_data_action_colval` VALUES (384, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-07-01 02:13:51', '2020-07-01 02:13:51');
INSERT INTO `wp_tt_data_action_colval` VALUES (391, 'شخص', 'person_id-18', 'simple-variable', 'person_id', 'person_id-18', 'person_id-18', NULL, NULL, '', NULL, '2020-07-01 02:14:07', '2020-07-01 02:14:07');
INSERT INTO `wp_tt_data_action_colval` VALUES (392, 'نوع اطلاعات تماس', 'type-18', 'simple-variable', 'type', 'type-18', 'type-18', NULL, NULL, '', NULL, '2020-07-01 02:14:10', '2020-07-01 02:14:10');
INSERT INTO `wp_tt_data_action_colval` VALUES (393, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-07-01 02:14:13', '2020-07-01 02:14:13');
INSERT INTO `wp_tt_data_action_colval` VALUES (401, 'آی دی تلفن', 'phone_id-18', 'variable', 'phone_id', '', '$insert_ref[\'phone\']', NULL, NULL, '', NULL, '2020-07-01 02:19:10', '2020-07-01 02:19:10');
INSERT INTO `wp_tt_data_action_colval` VALUES (402, 'آی دی آدرس', 'address_id-18', 'variable', 'address_id', '', '$insert_ref[\'address\']', NULL, NULL, '', NULL, '2020-07-01 02:19:12', '2020-07-01 02:19:12');
INSERT INTO `wp_tt_data_action_colval` VALUES (403, '', '', '', '', '', '', NULL, NULL, '', NULL, '2020-07-01 02:19:14', '2020-07-01 02:19:14');

-- ----------------------------
-- Table structure for wp_tt_data_action_database
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_database`;
CREATE TABLE `wp_tt_data_action_database`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prevent_insert_rule_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `added_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edited_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `database_error_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_before` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple_func_after` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_database
-- ----------------------------
INSERT INTO `wp_tt_data_action_database` VALUES (1, 'کشور', 'custom_country', 'custom_country', '1', 'country', 'کشور جدید {data_value:country} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات کشور با آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-05-29 18:34:11', '2020-05-29 18:34:11');
INSERT INTO `wp_tt_data_action_database` VALUES (2, 'واحد پول', 'custom_currency', 'custom_currency', '2', 'currency', 'واحد پول جدید {data_value:currency} با آی دی {insert_id} افزوده شد.<br>', 'اطلاعات واحد پول با آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, 'sys_insert_currency_rate({vals:parent_currency_id},{insert_id},{vals:parent_currency_ratio});\r\n/*{insert_id} is base and parent_currency_id is exchange*/', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_database` VALUES (3, 'نرخ تبدیل ارز', 'custom_currency_rate', 'custom_currency_rate', '3', 'currency_rate', 'نرخ تبدیل ارز جدید با آی دی {insert_id} افزوده شد.<br>', 'نرخ تبدیل ارز با آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_database` VALUES (4, 'مالیات', 'custom_tax', 'custom_tax', '4', 'tax', 'مالیات {data_value:name} با شماره آی دی  {insert_id} افزوده شد.<br>', 'مالیات {data_value:name} با شماره آی دی  {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-02 05:28:36', '2020-06-02 05:28:36');
INSERT INTO `wp_tt_data_action_database` VALUES (5, 'محل درآمد و هزینه', 'custom_income_expenditure_source', 'custom_income_expenditure_source', '5', 'income_expenditure_source', 'محل هزینه درآمد {data_value:name} با شماره آی دی {insert_id} افزوده شد.<br>', 'محل هزینه درآمد {data_value:name} با شماره آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:21:00', '2020-06-03 15:21:00');
INSERT INTO `wp_tt_data_action_database` VALUES (6, 'روش پرداخت', 'custom_payment_method', 'custom_payment_method', '6', 'payment_method', 'روش پرداخت {data_value:name} با شماره آی دی {insert_id} افزوده شد.<br>', 'روش پرداخت {data_value:name} با شماره آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:41:44', '2020-06-03 15:41:44');
INSERT INTO `wp_tt_data_action_database` VALUES (7, 'نوع شخص حقوقی', 'custom_legal_person_type', 'custom_legal_person_type', '7', 'legal_person_type', 'نوع شخص حقوقی {data_value:name} با شماره آی دی {insert_id} افزوده شد.<br>', 'نوع شخص حقوقی {data_value:name} با شماره آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:41:44', '2020-06-03 15:41:44');
INSERT INTO `wp_tt_data_action_database` VALUES (8, 'نوع نحوه آشنایی', 'custom_acquaintance_type', 'custom_acquaintance_type', '8', 'acquaintance_type', 'نوع نحوه آشنایی {data_value:name} با شماره آی دی {insert_id} افزوده شد.<br>', 'نوع نحوه آشنایی {data_value:name} با شماره آی دی {insert_id} ویرایش شد.<br>', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:41:45', '2020-06-03 15:41:45');
INSERT INTO `wp_tt_data_action_database` VALUES (9, 'شبکه اجتماعی', 'custom_social_network', 'custom_social_network', '9', 'social_network', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:41:46', '2020-06-03 15:41:46');
INSERT INTO `wp_tt_data_action_database` VALUES (10, 'تحصیلات', 'custom_education', 'custom_education', '10', 'education', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 15:41:48', '2020-06-03 15:41:48');
INSERT INTO `wp_tt_data_action_database` VALUES (11, 'اشخاص حقوقی', 'custom_person', 'custom_person', '11', 'person', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:21:59', '2020-06-03 23:21:59');
INSERT INTO `wp_tt_data_action_database` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', 'custom_person', 'custom_person', '12', 'person', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:00', '2020-06-03 23:22:00');
INSERT INTO `wp_tt_data_action_database` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', 'custom_person', 'custom_person', '13', 'person', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:00', '2020-06-03 23:22:00');
INSERT INTO `wp_tt_data_action_database` VALUES (14, NULL, '', '', NULL, NULL, 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:00', '2020-06-03 23:22:00');
INSERT INTO `wp_tt_data_action_database` VALUES (15, 'اشخاص', 'custom_person', 'custom_person', '15', 'person', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:00', '2020-06-03 23:22:00');
INSERT INTO `wp_tt_data_action_database` VALUES (16, 'استان', 'custom_state', 'custom_state', '16', 'state', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:01', '2020-06-03 23:22:01');
INSERT INTO `wp_tt_data_action_database` VALUES (17, 'شهر', 'custom_city', 'custom_city', '17', 'city', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:01', '2020-06-03 23:22:01');
INSERT INTO `wp_tt_data_action_database` VALUES (18, 'منطقه', 'custom_area', 'custom_area', '18', 'area', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:01', '2020-06-03 23:22:01');
INSERT INTO `wp_tt_data_action_database` VALUES (19, 'نسبت', 'custom_relation', 'custom_relation', '19', 'relation', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-03 23:22:02', '2020-06-03 23:22:02');
INSERT INTO `wp_tt_data_action_database` VALUES (21, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-03 23:22:03', '2020-06-03 23:22:03');
INSERT INTO `wp_tt_data_action_database` VALUES (22, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:14', '2020-06-29 21:18:14');
INSERT INTO `wp_tt_data_action_database` VALUES (23, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:14', '2020-06-29 21:18:14');
INSERT INTO `wp_tt_data_action_database` VALUES (24, 'تلفن', 'custom_phone', 'custom_phone', '24', 'phone', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-29 21:18:14', '2020-06-29 21:18:14');
INSERT INTO `wp_tt_data_action_database` VALUES (25, 'آدرس', 'custom_address', 'custom_address', '25', 'address', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-29 21:18:15', '2020-06-29 21:18:15');
INSERT INTO `wp_tt_data_action_database` VALUES (26, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:15', '2020-06-29 21:18:15');
INSERT INTO `wp_tt_data_action_database` VALUES (27, 'آدرس و تلفن', 'custom_contact', 'custom_contact', '26-27', 'contact', 'added', 'edited', 'خطای پایگاه داده رخ داده است.<br>', NULL, NULL, NULL, '2020-06-29 21:18:16', '2020-06-29 21:18:16');
INSERT INTO `wp_tt_data_action_database` VALUES (28, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:16', '2020-06-29 21:18:16');
INSERT INTO `wp_tt_data_action_database` VALUES (29, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:16', '2020-06-29 21:18:16');
INSERT INTO `wp_tt_data_action_database` VALUES (30, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:16', '2020-06-29 21:18:16');
INSERT INTO `wp_tt_data_action_database` VALUES (31, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:17', '2020-06-29 21:18:17');
INSERT INTO `wp_tt_data_action_database` VALUES (32, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:17', '2020-06-29 21:18:17');
INSERT INTO `wp_tt_data_action_database` VALUES (33, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-29 21:18:18', '2020-06-29 21:18:18');

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
-- Table structure for wp_tt_data_action_prevent_insert_rule
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action_prevent_insert_rule`;
CREATE TABLE `wp_tt_data_action_prevent_insert_rule`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `php_rule` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mysql_rule` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `prevented_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_prevent_insert_rule
-- ----------------------------
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (1, 'کشور', '', '', 'country={country}', 'نام کشور تکراری است.<br>', '', NULL, '2020-07-01 18:26:22', '2020-07-01 18:26:22');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (2, 'واحد پول', '', '', 'country_id={country_id} AND currency={currency}', 'واحد پول تکراری است.<br>', '', NULL, '2020-07-01 19:57:26', '2020-07-01 19:57:26');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (3, 'نرخ تبدیل ارز', '', '', '(base_currency_id={base_currency_id} AND exchanged_currency_id={exchanged_currency_id}) OR (exchanged_currency_id={base_currency_id} AND base_currency_id={exchanged_currency_id}) OR {base_currency_id}={exchanged_currency_id}', 'نرخ تبدیل ارز تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:36', '2020-07-01 19:57:36');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (4, 'مالیات', '', '', 'rate={rate} AND type={type}\r\n\r\n', 'این مالیات تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:37', '2020-07-01 19:57:37');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (5, 'محل درآمد و هزینه', '', '', '(name={name} AND type={type})\r\n\r\n', 'این محل هزینه و خرج تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:37', '2020-07-01 19:57:37');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (6, 'روش پرداخت', '', '', 'name={name} AND parent_id={parent_id}\r\n', 'این روش پرداخت تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:37', '2020-07-01 19:57:37');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (7, 'نوع شخص حقوقی', '', '', 'name={name} AND parent_id={parent_id}\r\n', 'این نوع شخص حقوقی تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:37', '2020-07-01 19:57:37');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (8, 'نوع نحوه آشنایی', '', '', 'name={name} AND parent_id={parent_id}\r\n', 'این نوع نحوه آشنایی تکراری است و قبلا تعریف شده است.<br>', '', NULL, '2020-07-01 19:57:38', '2020-07-01 19:57:38');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (9, 'شبکه اجتماعی', '', '', 'name={name}\r\n', 'duplicate', '', NULL, '2020-07-01 19:57:38', '2020-07-01 19:57:38');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (10, 'تحصیلات', '', '', 'name={name}\r\n', 'duplicate', '', NULL, '2020-07-01 19:57:39', '2020-07-01 19:57:39');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (11, 'اشخاص حقوقی', '', '', '(legal_person_national_id={legal_person_national_id} AND legal_person_national_id!=\'\') OR (legal_person_national_id=\'\' AND name={name})\r\n', 'duplicate', '', NULL, '2020-07-01 19:57:39', '2020-07-01 19:57:39');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', '', '', '(national_id={national_id} AND national_id!=\'\') OR (national_id=\'\' AND name={name})\r\n', 'duplicate', '', NULL, '2020-07-01 19:57:39', '2020-07-01 19:57:39');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', '', '', '(passport_no={passport_no} AND passport_no!=\'\') OR (passport_no=\'\' AND name={name})\r\n', 'duplicate', '', NULL, '2020-07-01 19:57:40', '2020-07-01 19:57:40');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (14, '', '', '', '', 'duplicate', '', NULL, '2020-07-01 19:57:40', '2020-07-01 19:57:40');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (15, 'اشخاص', '', '', '({temp_is_legal_person-10}=\'legal\' OR (legal_person_national_id={legal_person_national_id} AND legal_person_national_id!=\'\') OR (legal_person_national_id=\'\' AND name={name})) OR (({temp_is_legal_person-10}!=\'legal\' AND  {temp_nationality-10}=\'domestic_citizen\') AND (national_id={national_id} AND national_id!=\'\') OR (national_id=\'\' AND name={name})) OR (({temp_is_legal_person-10}!=\'legal\' AND  {temp_nationality-10}!=\'domestic_citizen\') AND ((passport_no={passport_no} AND passport_no!=\'\') OR (passport_no=\'\' AND name={name})\r\n))', 'duplicate', '', NULL, '2020-07-01 19:57:40', '2020-07-01 19:57:40');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (16, 'استان', '', '', 'country_id={country_id} AND state_name={state_name}', 'duplicate', '', NULL, '2020-07-01 19:57:41', '2020-07-01 19:57:41');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (17, 'شهر', '', '', 'country_id={country_id} AND state_id={state_id}  AND city_name={city_name}', 'duplicate', '', NULL, '2020-07-01 19:57:41', '2020-07-01 19:57:41');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (18, 'منطقه', '', '', 'country_id={country_id} AND state_id={state_id}  AND city_id={city_id} AND area_name={area_name}', 'duplicate', '', NULL, '2020-07-01 19:57:41', '2020-07-01 19:57:41');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (19, 'نسبت', '', '', 'relation={relation}', 'duplicate', '', NULL, '2020-07-01 19:57:42', '2020-07-01 19:57:42');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (20, 'شغل', '', '', 'job={job}', 'duplicate', '', NULL, '2020-07-01 19:57:42', '2020-07-01 19:57:42');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (21, '', '', '', '', '', '', NULL, '2020-07-01 19:57:42', '2020-07-01 19:57:42');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (22, '', '', '', '', '', '', NULL, '2020-07-01 19:57:43', '2020-07-01 19:57:43');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (23, '', '', '', '', '', '', NULL, '2020-07-01 19:57:43', '2020-07-01 19:57:43');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (24, 'تلفن', '', '', '(country_code={country_code} AND state_code={state_code} AND city_code={city_code} AND city_code={city_code} AND phone_no={phone_no} AND  extension_no={extension_no})', 'تلفن تکراری است', '', NULL, '2020-07-01 19:57:43', '2020-07-01 19:57:43');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (25, 'آدرس', '', '', '(longitude={longitude} AND latitude={latitude} AND block_no={apartment_no} AND apartment_no={apartment_no} AND longitude!={longitude} AND latitude!={latitude}) OR (block_no={apartment_no} AND apartment_no={apartment_no} AND country_id={country_id} AND state_id={state_id} AND city_id={city_id} AND area_id={area_id} AND main_street={main_street} AND address={address})\r\n', 'آدرس تکراری است', '', NULL, '2020-07-01 19:57:44', '2020-07-01 19:57:44');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (26, 'تلفن خالی', '', '({col-value:country_code}==\'\' and {col-value:state_code}==\'\' and {col-value:city_code}==\'\' and {col-value:city_code}==\'\' and {col-value:phone_no}==\'\' and  {col-value:extension_no}==\'\')', '', 'ggggggggggg', '', NULL, '2020-07-01 19:57:44', '2020-07-01 19:57:44');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (27, 'آدرس خالی', '', '({col-value:longitude}==\'\' and {col-value:latitude}==\'\' and {col-value:apartment_no}==\'\'  and {col-value:block_no}==\'\'  and {col-value:address}==\'\' and {col-value:main_street}==\'\' and {col-value:area_id}==\'\' and {col-value:city_id}==\'\' and {col-value:state_id}==\'\' and {col-value:country_id}==\'\') ', '', 'ssssssssss', '', NULL, '2020-07-01 19:57:44', '2020-07-01 19:57:44');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (28, '', '', '', '', '', '', NULL, '2020-07-01 19:57:45', '2020-07-01 19:57:45');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (29, '', '', '', '', '', '', NULL, '2020-07-01 19:57:45', '2020-07-01 19:57:45');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (30, '', '', '', '', '', '', NULL, '2020-07-01 19:57:45', '2020-07-01 19:57:45');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (31, '', '', '', '', '', '', NULL, '2020-07-01 19:57:46', '2020-07-01 19:57:46');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (32, '', '', '', '', '', '', NULL, '2020-07-01 19:57:46', '2020-07-01 19:57:46');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (33, '', '', '', '', '', '', NULL, '2020-07-01 19:57:46', '2020-07-01 19:57:46');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (34, '', '', '', '1', '', '', NULL, '2020-07-01 19:57:47', '2020-07-01 19:57:47');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (35, '', '', '', '1', '', '', NULL, '2020-07-01 19:57:47', '2020-07-01 19:57:47');
INSERT INTO `wp_tt_data_action_prevent_insert_rule` VALUES (36, '', '', '', '1', '', '', NULL, '2020-07-01 19:57:47', '2020-07-01 19:57:47');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_form
-- ----------------------------
INSERT INTO `wp_tt_form` VALUES (1, 'کشور', '', '', '', '', '', '', 'multipart/form-data', 'get', '', '', '', '', '', 'block', 'input', '', '1', '1', '', '1', '1', 'yes', '', NULL, '2020-05-26 11:48:29', '2020-05-26 11:48:29');
INSERT INTO `wp_tt_form` VALUES (2, 'واحد پول', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '2', '', '1', '1', 'yes', '', NULL, '2020-05-30 03:55:26', '2020-05-30 03:55:26');
INSERT INTO `wp_tt_form` VALUES (3, 'نرخ تبدیل ارز', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '3', '', '1', '1', 'yes', '', NULL, '2020-05-31 01:45:20', '2020-05-31 01:45:20');
INSERT INTO `wp_tt_form` VALUES (4, 'مالیات', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '4', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:35', '2020-06-02 04:06:35');
INSERT INTO `wp_tt_form` VALUES (5, 'محل درآمد و هزینه', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '5', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:52', '2020-06-02 04:06:52');
INSERT INTO `wp_tt_form` VALUES (6, 'روش پرداخت', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '6', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:53', '2020-06-02 04:06:53');
INSERT INTO `wp_tt_form` VALUES (7, 'نوع شخص حقوقی', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '7', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:53', '2020-06-02 04:06:53');
INSERT INTO `wp_tt_form` VALUES (8, 'نوع نحوه آشنایی', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '8', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:54', '2020-06-02 04:06:54');
INSERT INTO `wp_tt_form` VALUES (9, 'شبکه اجتماعی', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '9', '', '1', '1', 'yes', '', NULL, '2020-06-02 04:06:55', '2020-06-02 04:06:55');
INSERT INTO `wp_tt_form` VALUES (10, 'تحصیلات', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '10', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:44', '2020-06-03 23:13:44');
INSERT INTO `wp_tt_form` VALUES (11, 'اشخاص حقوقی', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '11', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:45', '2020-06-03 23:13:45');
INSERT INTO `wp_tt_form` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '12', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:47', '2020-06-03 23:13:47');
INSERT INTO `wp_tt_form` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '13', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:48', '2020-06-03 23:13:48');
INSERT INTO `wp_tt_form` VALUES (14, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-15 04:07:36', '2020-06-15 04:07:36');
INSERT INTO `wp_tt_form` VALUES (15, 'اشخاص', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '15', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:49', '2020-06-03 23:13:49');
INSERT INTO `wp_tt_form` VALUES (16, 'استان', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '16', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:51', '2020-06-03 23:13:51');
INSERT INTO `wp_tt_form` VALUES (17, 'شهر', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '17', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:54', '2020-06-03 23:13:54');
INSERT INTO `wp_tt_form` VALUES (18, 'منطقه', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '18', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:56', '2020-06-03 23:13:56');
INSERT INTO `wp_tt_form` VALUES (19, 'نسبت', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '19', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:57', '2020-06-03 23:13:57');
INSERT INTO `wp_tt_form` VALUES (20, 'شغل', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '20', '', '1', '1', 'yes', '', NULL, '2020-06-03 23:13:59', '2020-06-03 23:13:59');
INSERT INTO `wp_tt_form` VALUES (21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-03 23:14:25', '2020-06-03 23:14:25');
INSERT INTO `wp_tt_form` VALUES (22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-29 04:47:31', '2020-06-29 04:47:31');
INSERT INTO `wp_tt_form` VALUES (23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-29 04:47:32', '2020-06-29 04:47:32');
INSERT INTO `wp_tt_form` VALUES (24, 'تلفن', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '24', '', '1', '1', ' yes', '', NULL, '2020-06-29 04:47:33', '2020-06-29 04:47:33');
INSERT INTO `wp_tt_form` VALUES (25, 'آدرس', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '25', '', '1', '1', 'yes', '', NULL, '2020-06-29 05:24:00', '2020-06-29 05:24:00');
INSERT INTO `wp_tt_form` VALUES (26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-29 14:43:19', '2020-06-29 14:43:19');
INSERT INTO `wp_tt_form` VALUES (27, 'آدرس و تلفن', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '27', '', '1', '1', 'yes', '', NULL, '2020-06-29 14:43:21', '2020-06-29 14:43:21');
INSERT INTO `wp_tt_form` VALUES (28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-30 18:18:43', '2020-06-30 18:18:43');
INSERT INTO `wp_tt_form` VALUES (29, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2020-06-30 18:18:44', '2020-06-30 18:18:44');
INSERT INTO `wp_tt_form` VALUES (30, 'اطلاعات تماس', '', '', '', '', '', '', 'multipart/form-data', 'post', '', '', '', '', '', 'block', 'input', '', '1', '30', '', '1', '1', 'yes', '', NULL, '2020-06-30 18:18:46', '2020-06-30 18:18:46');

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
  `modal_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_modal_insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 403 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input
-- ----------------------------
INSERT INTO `wp_tt_input` VALUES (1, 'ذخیره', 'submit', '8', '', '', 'submit', '5', '2', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '2020-05-26 11:27:22');
INSERT INTO `wp_tt_input` VALUES (2, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:31', '2020-06-05 14:22:31');
INSERT INTO `wp_tt_input` VALUES (11, 'کشور', 'country-1', '4', '', '', 'country-1', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:16:56', '2020-05-26 11:16:56');
INSERT INTO `wp_tt_input` VALUES (12, 'پرچم', 'flag-1', '7', '', '', 'flag-1', '10', '6', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:17:08', '2020-05-26 11:17:08');
INSERT INTO `wp_tt_input` VALUES (13, 'پیش شماره', 'phone_code_1', '4', '', '', 'phone_code_1', '8', '1', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:17:17', '2020-05-26 11:17:17');
INSERT INTO `wp_tt_input` VALUES (14, 'توضیحات', 'desc-1', '4', '', '', 'desc-1', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:33', '2020-06-05 14:22:33');
INSERT INTO `wp_tt_input` VALUES (15, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:31:35', '2020-06-10 05:31:35');
INSERT INTO `wp_tt_input` VALUES (21, 'کشور', 'country_id-2', '4', '', '', 'country_id-2', '22', '1', '1', '1', '1', '', '', '', '1', '', NULL, NULL, '2020-05-26 11:18:40', '2020-05-26 11:18:40');
INSERT INTO `wp_tt_input` VALUES (22, 'واحد پول', 'currency-2', '4', '', '', 'currency-2', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (23, 'نماد واحد پول', 'currency_sign-2', '4', '', '', 'currency_sign-2', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (24, 'مخفف واحد پولی', 'currency_code-2', '4', '', '', 'currency_code-2', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (25, 'موقعیت نماد', 'currency_sign_position-2', '6', '', '', 'currency_sign_position-2', '26', '1', '1', '', '1', '5-8', '', '', '', '', NULL, NULL, '2020-05-26 11:18:48', '2020-05-26 11:18:48');
INSERT INTO `wp_tt_input` VALUES (26, 'واحد پول بالاتر', 'parent_currency_id-2', '4', '', '', 'parent_currency_id-2', '24', '1', '4', '', '1', '1-4', '', '', '', '', NULL, NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (27, 'نرخ معادل با واحد پول بالاتر', 'parent_currency_ratio-2', '4', '', '', 'parent_currency_ratio-2', '1', '1', '1', '', '1', '', '', '', '', '', 'مثال: اگر واحد پول ریال است و واحد پول بالاتر تومان نرخ معادل آن 1/10 است.', NULL, '2020-05-26 11:18:49', '2020-05-26 11:18:49');
INSERT INTO `wp_tt_input` VALUES (28, 'توضیحات', 'desc-2', '4', '', '', 'desc-2', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-30 20:10:09', '2020-05-30 20:10:09');
INSERT INTO `wp_tt_input` VALUES (29, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:35', '2020-06-05 14:22:35');
INSERT INTO `wp_tt_input` VALUES (31, 'ارز پایه', 'base_currency_id-3', '4', '', '', 'base_currency_id-3', '22', '1', '3', '', '1', '', '', '', '2', '', 'این ارز واحد یک در نظر گرفته می شود. و چه میزان از ارز معادل برابر یک واحد این ارز است؟', NULL, '2020-05-30 22:10:43', '2020-05-30 22:10:43');
INSERT INTO `wp_tt_input` VALUES (32, 'ارز معادل', 'exchanged_currency_id-3', '4', '', '', 'exchanged_currency_id-3', '22', '1', '3', '', '1', '', '', '', '2', '', NULL, NULL, '2020-05-31 01:36:13', '2020-05-31 01:36:13');
INSERT INTO `wp_tt_input` VALUES (33, 'نرخ تبدیل', 'rate-3', '4', '', '', 'rate-3', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 01:36:16', '2020-05-31 01:36:16');
INSERT INTO `wp_tt_input` VALUES (34, 'توضیحات', 'desc-3', '4', '', '', 'desc-3', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-05-31 02:04:20', '2020-05-31 02:04:20');
INSERT INTO `wp_tt_input` VALUES (35, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:36', '2020-06-05 14:22:36');
INSERT INTO `wp_tt_input` VALUES (41, 'نام مالیات', 'name-4', '4', '', '', 'name-4', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 03:57:20', '2020-06-02 03:57:20');
INSERT INTO `wp_tt_input` VALUES (42, 'نوع مالیات', 'type-4', '4', '', '', 'type-4', '22', '1', '5', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 03:57:26', '2020-06-02 03:57:26');
INSERT INTO `wp_tt_input` VALUES (43, 'نرخ', 'rate-4', '4', '', '', 'rate-4', '8', '1', '2', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 03:57:33', '2020-06-02 03:57:33');
INSERT INTO `wp_tt_input` VALUES (44, 'توضیحات', 'desc-4', '4', '', '', 'desc-4', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 03:57:56', '2020-06-02 03:57:56');
INSERT INTO `wp_tt_input` VALUES (45, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:38', '2020-06-05 14:22:38');
INSERT INTO `wp_tt_input` VALUES (51, 'نام محل درآمد و هزینه', 'name-5', '4', '', '', 'name-5', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 06:04:39', '2020-06-02 06:04:39');
INSERT INTO `wp_tt_input` VALUES (52, 'نوع', 'type-5', '4', '', '', 'type-5', '22', '1', '6', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 06:04:41', '2020-06-02 06:04:41');
INSERT INTO `wp_tt_input` VALUES (53, 'محل درآمد و هزینه اصلی', 'parent_id-5', '4', '', '', 'parent_id-5', '24', '1', '7', '', '1', '9-12', '', '', '', '', NULL, NULL, '2020-06-02 06:04:43', '2020-06-02 06:04:43');
INSERT INTO `wp_tt_input` VALUES (54, 'توضیحات', 'desc-5', '4', '', '', 'desc-5', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-02 06:05:03', '2020-06-02 06:05:03');
INSERT INTO `wp_tt_input` VALUES (55, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:39', '2020-06-05 14:22:39');
INSERT INTO `wp_tt_input` VALUES (61, 'روش پرداخت', 'name-6', '4', '', '', 'name-6', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 14:07:28', '2020-06-03 14:07:28');
INSERT INTO `wp_tt_input` VALUES (62, 'روش پرداخت اصلی', 'parent_id-6', '4', '', '', 'parent_id-6', '22', '1', '8', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 15:29:47', '2020-06-03 15:29:47');
INSERT INTO `wp_tt_input` VALUES (63, 'توضیحات', 'desc-6', '4', '', '', 'desc-6', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 15:29:49', '2020-06-03 15:29:49');
INSERT INTO `wp_tt_input` VALUES (64, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:40', '2020-06-05 14:22:40');
INSERT INTO `wp_tt_input` VALUES (69, 'نام پدر', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:38:07', '2020-06-03 16:38:07');
INSERT INTO `wp_tt_input` VALUES (71, 'نام گروه شخص حقوقی', 'name-7', '4', '', '', 'name-7', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:38:10', '2020-06-03 16:38:10');
INSERT INTO `wp_tt_input` VALUES (72, 'نام گروه مادر شخص حقوقی', 'parent_id-7', '4', '', '', 'parent_id-7', '22', '1', '9', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:38:35', '2020-06-03 16:38:35');
INSERT INTO `wp_tt_input` VALUES (73, 'توضیحات', 'desc-7', '4', '', '', 'desc-7', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:38:37', '2020-06-03 16:38:37');
INSERT INTO `wp_tt_input` VALUES (74, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:42', '2020-06-05 14:22:42');
INSERT INTO `wp_tt_input` VALUES (81, 'نام گروه نحوه آشنایی', 'name-7', '4', '', '', 'name-7', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:55:04', '2020-06-03 16:55:04');
INSERT INTO `wp_tt_input` VALUES (82, 'نام گروه مادر نحوه آشنایی', 'parent_id-7', '4', '', '', 'parent_id-7', '22', '1', '10', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:55:06', '2020-06-03 16:55:06');
INSERT INTO `wp_tt_input` VALUES (83, 'توضیحات', 'desc-7', '4', '', '', 'desc-7', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:55:12', '2020-06-03 16:55:12');
INSERT INTO `wp_tt_input` VALUES (84, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:43', '2020-06-05 14:22:43');
INSERT INTO `wp_tt_input` VALUES (91, 'نام شبکه اجتماعی', 'name-8', '4', '', '', 'name-8', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:56:54', '2020-06-03 16:56:54');
INSERT INTO `wp_tt_input` VALUES (92, 'توضیحات', 'desc-8', '4', '', '', 'desc-8', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 16:56:54', '2020-06-03 16:56:54');
INSERT INTO `wp_tt_input` VALUES (93, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:47', '2020-06-05 14:22:47');
INSERT INTO `wp_tt_input` VALUES (101, 'عنوان سطح  تحصیلات', 'name-9', '4', '', '', 'name-9', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:03:37', '2020-06-03 17:03:37');
INSERT INTO `wp_tt_input` VALUES (102, 'توضیحات', 'desc-9', '4', '', '', 'desc-9', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:03:39', '2020-06-03 17:03:39');
INSERT INTO `wp_tt_input` VALUES (103, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:24:53', '2020-06-05 14:24:53');
INSERT INTO `wp_tt_input` VALUES (111, 'نام شخص حقوقی', 'name-10', '4', '', '', 'name-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:04:52', '2020-06-03 17:04:52');
INSERT INTO `wp_tt_input` VALUES (112, 'آرم', 'image-10', '4', '', '', 'image-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:27:48', '2020-06-03 17:27:48');
INSERT INTO `wp_tt_input` VALUES (113, 'گروه شخص حقوقی', 'legal_person_type_id-10', '4', '', '', 'legal_person_type_id-10', '22', '1', '11', '', '1', '', '', '', '3', '', NULL, NULL, '2020-06-03 21:31:31', '2020-06-03 21:31:31');
INSERT INTO `wp_tt_input` VALUES (114, 'شناسه ملی شخص حقوقی', 'legal_person_national_id-10', '4', '', '', 'legal_person_national_id-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 01:19:26', '2020-06-05 01:19:26');
INSERT INTO `wp_tt_input` VALUES (115, 'شماره ثبت شخص حقوقی', 'legal_person_notary_id-10', '4', '', '', 'legal_person_notary_id-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:27:59', '2020-06-03 17:27:59');
INSERT INTO `wp_tt_input` VALUES (116, 'تاریخ تاسیس', 'birth_date-10', '4', '', '', 'birth_date-10', '27', '1', '1', '', '1', '13-14', '', '', '', '', NULL, NULL, '2020-06-03 17:28:01', '2020-06-03 17:28:01');
INSERT INTO `wp_tt_input` VALUES (117, 'تابعیت', 'nationality-10', '4', '', '', 'nationality-10', '22', '1', '1', '', '1', '', '', '', '1', '', NULL, NULL, '2020-06-03 17:28:03', '2020-06-03 17:28:03');
INSERT INTO `wp_tt_input` VALUES (118, 'شماره مالیاتی', 'tax_code-10', '4', '', '', 'tax_code-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:28:04', '2020-06-03 17:28:04');
INSERT INTO `wp_tt_input` VALUES (119, 'واحد پول', 'currency_id-10', '4', '', '', 'currency_id-10', '22', '1', '3', '1', '1', '', '', '', '2', '', NULL, NULL, '2020-06-03 17:28:06', '2020-06-03 17:28:06');
INSERT INTO `wp_tt_input` VALUES (120, 'تصویر اساسنامه ', 'statute_image-10', '4', '', '', 'statute_image-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:28:08', '2020-06-03 17:28:08');
INSERT INTO `wp_tt_input` VALUES (121, 'آدرس ایمیل', 'email-10', '4', '', '', 'email-10', '11', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:28:25', '2020-06-03 17:28:25');
INSERT INTO `wp_tt_input` VALUES (122, 'آدرس وب سایت', 'website-10', '4', '', '', 'website-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 17:28:27', '2020-06-03 17:28:27');
INSERT INTO `wp_tt_input` VALUES (123, 'مرجع معرفی کننده', 'reference_person_id-10', '4', '', '', 'reference_person_id-10', '22', '1', '12', '', '1', '', '', '', '4', '', NULL, NULL, '2020-06-03 17:28:29', '2020-06-03 17:28:29');
INSERT INTO `wp_tt_input` VALUES (124, 'نحوه آشنایی', 'acquaintance_type_id-10', '4', '', '', 'acquaintance_type_id-10', '22', '1', '10', '', '1', '', '', '', '5', '', NULL, NULL, '2020-06-03 17:28:32', '2020-06-03 17:28:32');
INSERT INTO `wp_tt_input` VALUES (125, 'توضیحات', 'desc-10', '4', '', '', 'desc-10', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 05:15:57', '2020-06-05 05:15:57');
INSERT INTO `wp_tt_input` VALUES (126, 'is_legal', 'is_legal-10', '', '', '', 'is_legal-10', '21', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 05:04:33', '2020-06-05 05:04:33');
INSERT INTO `wp_tt_input` VALUES (127, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 14:22:50', '2020-06-05 14:22:50');
INSERT INTO `wp_tt_input` VALUES (151, 'نام', 'name-10', '4', '', '', 'name-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-03 21:30:43', '2020-06-03 21:30:43');
INSERT INTO `wp_tt_input` VALUES (152, 'نام خانوادگی', 'last_name-10', '4', '', '', 'last_name-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (153, 'کدملی', 'national_id-10', '4', '', '', 'national_id-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (154, 'تاریخ تولد', 'birth_date-10', '4', '', '', 'birth_date-10', '27', '1', '1', '', '1', '13-14', '', '', '', '', NULL, NULL, '2020-06-10 03:36:41', '2020-06-10 03:36:41');
INSERT INTO `wp_tt_input` VALUES (155, 'محل تولد', 'birth_place-10', '4', '', '', 'birth_place-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:43', '2020-06-10 03:36:43');
INSERT INTO `wp_tt_input` VALUES (156, 'نام پدر', 'father_name-10', '4', '', '', 'father_name-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:44', '2020-06-10 03:36:44');
INSERT INTO `wp_tt_input` VALUES (157, 'تصور کارت ملی', 'national_card-10', '4', '', '', 'national_card-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:45', '2020-06-10 03:36:45');
INSERT INTO `wp_tt_input` VALUES (158, 'شماره شناسنامه', 'national_id_2-10', '4', '', '', 'national_id_2-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:47', '2020-06-10 03:36:47');
INSERT INTO `wp_tt_input` VALUES (159, 'تصویر شناسنامه', 'national_card_2-10', '4', '', '', 'national_card_2-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:51', '2020-06-10 03:36:51');
INSERT INTO `wp_tt_input` VALUES (160, 'شماره گواهینامه', 'driving_licence_no-10', '4', '', '', 'driving_licence_no-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:36:55', '2020-06-10 03:36:55');
INSERT INTO `wp_tt_input` VALUES (161, 'تاریخ صدور گواهینامه', 'driving_licence_issue_date-10', '4', '', '', 'driving_licence_issue_date-10', '27', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (162, 'تصویر گواهینامه', 'driving_licence_card-10', '4', '', '', 'driving_licence_card-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (163, 'واحد پول', 'currency_id-10', '4', '', '', 'currency_id-10', '22', '1', '3', '1', '1', '', '', '', '2', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (164, 'شغل', 'job-10', '4', '', '', 'job-10', '22', '1', '17', '', '1', '', '', '', '6', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (165, 'تحصیلات', 'education-10', '4', '', '', 'education-10', '22', '1', '13', '', '1', '', '', '', '7', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (166, 'شماره مالیاتی', 'tax_code-10', '4', '', '', 'tax_code-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (167, 'آدرس وب سایت', 'website-10', '4', '', '', 'website-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (168, 'آدرس ایمیل', 'email-10', '4', '', '', 'email-10', '11', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (169, 'مرجع معرفی کننده', 'reference_person_id-10', '4', '', '', 'reference_person_id-10', '22', '1', '12', '', '1', '', '', '', '4', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (170, 'نحوه آشنایی', 'acquaintance_type_id-10', '4', '', '', 'acquaintance_type_id-10', '22', '1', '10', '', '1', '', '', '', '5', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (171, 'توضیحات', 'desc-10', '4', '', '', 'desc-10', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (172, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (201, 'نام', 'name-10', '4', '', '', 'name-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 05:52:19', '2020-06-05 05:52:19');
INSERT INTO `wp_tt_input` VALUES (202, 'نام خانوادگی', 'last_name-10', '4', '', '', 'last_name-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-05 05:52:20', '2020-06-05 05:52:20');
INSERT INTO `wp_tt_input` VALUES (203, 'تاریخ تولد', 'birth_date-10', '4', '', '', 'birth_date-10', '27', '1', '1', '', '1', '14-15', '', '', '', '', NULL, NULL, '2020-06-10 03:20:23', '2020-06-10 03:20:23');
INSERT INTO `wp_tt_input` VALUES (204, 'محل تولد', 'birth_place-10', '4', '', '', 'birth_place-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:39', '2020-06-10 03:33:39');
INSERT INTO `wp_tt_input` VALUES (205, 'نام پدر', 'father_name-10', '4', '', '', 'father_name-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:39', '2020-06-10 03:33:39');
INSERT INTO `wp_tt_input` VALUES (206, 'تابعیت', 'nationality-10', '4', '', '', 'nationality-10', '22', '1', '1', '', '1', '', '', '', '1', '', NULL, NULL, '2020-06-10 03:33:39', '2020-06-10 03:33:39');
INSERT INTO `wp_tt_input` VALUES (207, 'شماره گذرنامه', 'passport_no-10', '4', '', '', 'passport_no-10', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:40', '2020-06-10 03:33:40');
INSERT INTO `wp_tt_input` VALUES (208, 'تصویر گذرنامه', 'passport_image-10', '4', '', '', 'passport_image-10', '10', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:40', '2020-06-10 03:33:40');
INSERT INTO `wp_tt_input` VALUES (209, 'تاریخ صدور گواهینامه', 'driving_licence_issue_date-10', '4', '', '', 'driving_licence_issue_date-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:40', '2020-06-10 03:33:40');
INSERT INTO `wp_tt_input` VALUES (210, 'تصویر گواهینامه', 'driving_licence_card-10', '4', '', '', 'driving_licence_card-10', '27', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:33:59', '2020-06-10 03:33:59');
INSERT INTO `wp_tt_input` VALUES (211, 'واحد پول', 'currency_id-10', '4', '', '', 'currency_id-10', '10', '1', '1', '', '1', '', '', '', '2', '', NULL, NULL, '2020-06-10 03:34:01', '2020-06-10 03:34:01');
INSERT INTO `wp_tt_input` VALUES (212, 'شغل', 'job-10', '4', '', '', 'job-10', '22', '1', '17', '', '1', '', '', '', '6', '', NULL, NULL, '2020-06-10 03:34:03', '2020-06-10 03:34:03');
INSERT INTO `wp_tt_input` VALUES (213, 'تحصیلات', 'education-10', '4', '', '', 'education-10', '22', '1', '13', '', '1', '', '', '', '7', '', NULL, NULL, '2020-06-10 03:34:05', '2020-06-10 03:34:05');
INSERT INTO `wp_tt_input` VALUES (214, 'آدرس وب سایت', 'website-10', '4', '', '', 'website-10', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:34:06', '2020-06-10 03:34:06');
INSERT INTO `wp_tt_input` VALUES (215, 'آدرس ایمیل', 'email-10', '4', '', '', 'email-10', '11', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:25:49', '2020-06-10 03:25:49');
INSERT INTO `wp_tt_input` VALUES (216, 'مرجع معرفی کننده', 'reference_person_id-10', '4', '', '', 'reference_person_id-10', '22', '1', '12', '', '1', '', '', '', '4', '', NULL, NULL, '2020-06-10 03:34:27', '2020-06-10 03:34:27');
INSERT INTO `wp_tt_input` VALUES (217, 'نحوه آشنایی', 'acquaintance_type_id-10', '4', '', '', 'acquaintance_type_id-10', '22', '1', '10', '', '1', '', '', '', '5', '', NULL, NULL, '2020-06-10 03:34:39', '2020-06-10 03:34:39');
INSERT INTO `wp_tt_input` VALUES (218, 'توضیحات', 'desc-10', '4', '', '', 'desc-10', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:34:42', '2020-06-10 03:34:42');
INSERT INTO `wp_tt_input` VALUES (219, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:40:35', '2020-06-10 03:40:35');
INSERT INTO `wp_tt_input` VALUES (251, 'شخص حقوقی', 'temp_is_legal_person', '5', '', '', 'temp_is_legal_person-10', '19', '4', '2', '', '1', '', '', '1,2', '', '', NULL, NULL, '2020-06-10 03:40:38', '2020-06-10 03:40:38');
INSERT INTO `wp_tt_input` VALUES (252, 'تابعیت داخلی', 'temp_nationality', '5', '', '', 'temp_nationality-10', '19', '4', '3', '', '1', '', '', '3,4', '', '', NULL, NULL, '2020-06-10 03:40:42', '2020-06-10 03:40:42');
INSERT INTO `wp_tt_input` VALUES (253, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:58:50', '2020-06-10 03:58:50');
INSERT INTO `wp_tt_input` VALUES (261, 'کشور', 'country_id-11', '4', '', '', 'country_id-11', '22', '1', '1', '1', '1', '', '', '', '1', '', NULL, NULL, '2020-06-10 03:58:55', '2020-06-10 03:58:55');
INSERT INTO `wp_tt_input` VALUES (262, 'استان', 'state_name-11', '4', '', '', 'state_name-11', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:59:09', '2020-06-10 03:59:09');
INSERT INTO `wp_tt_input` VALUES (263, 'پیش شماره استان', 'phone_code-11', '4', '', '', 'phone_code-11', '8', '1', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:59:09', '2020-06-10 03:59:09');
INSERT INTO `wp_tt_input` VALUES (264, 'توضیحات', 'desc-11', '4', '', '', 'desc-11', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:59:10', '2020-06-10 03:59:10');
INSERT INTO `wp_tt_input` VALUES (265, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 03:59:10', '2020-06-10 03:59:10');
INSERT INTO `wp_tt_input` VALUES (271, 'کشور', 'country_id-12', '4', '', '', 'country_id-12', '22', '1', '1', '1', '1', '', '', '', '1', '', NULL, NULL, '2020-06-10 05:48:23', '2020-06-10 05:48:23');
INSERT INTO `wp_tt_input` VALUES (272, 'استان', 'state_id-12', '4', '', '', 'state_id-12', '24', '1', '15', '1', '1', '24-27', '', '', '8', '', NULL, NULL, '2020-06-10 05:49:55', '2020-06-10 05:49:55');
INSERT INTO `wp_tt_input` VALUES (273, 'شهر', 'city_name-12', '4', '', '', 'city_name-12', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:50:05', '2020-06-10 05:50:05');
INSERT INTO `wp_tt_input` VALUES (274, 'پیش شماره شهر', 'phone_code-12', '4', '', '', 'phone_code-12', '8', '1', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:50:12', '2020-06-10 05:50:12');
INSERT INTO `wp_tt_input` VALUES (275, 'توضیحات', 'desc-12', '4', '', '', 'desc-12', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:50:40', '2020-06-10 05:50:40');
INSERT INTO `wp_tt_input` VALUES (276, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:51:51', '2020-06-10 05:51:51');
INSERT INTO `wp_tt_input` VALUES (291, 'کشور', 'country_id-13', '4', '', '', 'country_id-13', '22', '1', '1', '1', '1', '', '', '', '1', '', NULL, NULL, '2020-06-10 05:55:11', '2020-06-10 05:55:11');
INSERT INTO `wp_tt_input` VALUES (292, 'استان', 'state_id-13', '4', '', '', 'state_id-13', '24', '1', '15', '1', '1', '28-31', '', '', '8', '', NULL, NULL, '2020-06-10 05:55:14', '2020-06-10 05:55:14');
INSERT INTO `wp_tt_input` VALUES (293, 'شهر', 'city_id-13', '4', '', '', 'city_id-13', '24', '1', '16', '1', '1', '32-35', '', '', '9', '', NULL, NULL, '2020-06-10 05:55:16', '2020-06-10 05:55:16');
INSERT INTO `wp_tt_input` VALUES (294, 'منطقه', 'area_name-13', '4', '', '', 'area_name-13', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:24', '2020-06-10 05:57:24');
INSERT INTO `wp_tt_input` VALUES (295, 'توضیحات', 'desc-13', '4', '', '', 'desc-13', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:24', '2020-06-10 05:57:24');
INSERT INTO `wp_tt_input` VALUES (296, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:25', '2020-06-10 05:57:25');
INSERT INTO `wp_tt_input` VALUES (301, 'عنوان نسبت', 'relation-14', '4', '', '', 'relation-14', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:31', '2020-06-10 05:57:31');
INSERT INTO `wp_tt_input` VALUES (302, 'توضیحات', 'desc-14', '4', '', '', 'desc-14', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:33', '2020-06-10 05:57:33');
INSERT INTO `wp_tt_input` VALUES (303, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 05:57:36', '2020-06-10 05:57:36');
INSERT INTO `wp_tt_input` VALUES (311, 'شغل', 'job-15', '4', '', '', 'job-15', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:01:16', '2020-06-10 06:01:16');
INSERT INTO `wp_tt_input` VALUES (312, 'توضیحات', 'desc-15', '4', '', '', 'desc-15', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:01:23', '2020-06-10 06:01:23');
INSERT INTO `wp_tt_input` VALUES (313, '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:01:26', '2020-06-10 06:01:26');
INSERT INTO `wp_tt_input` VALUES (331, 'نوع خط', 'phone_type-16', '4', '', '', 'phone_type-16', '22', '1', '14', '1', '1', '', '', '5-6', '', '', NULL, NULL, '2020-06-10 06:02:23', '2020-06-10 06:02:23');
INSERT INTO `wp_tt_input` VALUES (332, 'کشور', 'country_code-16', '4', '', '', 'country_code-16', '22', '1', '19', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:02:31', '2020-06-10 06:02:31');
INSERT INTO `wp_tt_input` VALUES (333, 'استان', 'state_code-16', '4', '', '', 'state_code-16', '24', '1', '20', '', '1', '50-53', '', '', '', '', NULL, NULL, '2020-06-10 06:04:16', '2020-06-10 06:04:16');
INSERT INTO `wp_tt_input` VALUES (334, 'شهر', 'city_code-16', '4', '', '', 'city_code-16', '24', '1', '21', '', '1', '54-57', '', '', '', '', NULL, NULL, '2020-06-10 06:04:36', '2020-06-10 06:04:36');
INSERT INTO `wp_tt_input` VALUES (335, 'شماره', 'phone_no-16', '4', '', '', 'phone_no-16', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:04:38', '2020-06-10 06:04:38');
INSERT INTO `wp_tt_input` VALUES (336, 'داخلی', 'extension_no-16', '4', '', '', 'extension_no-16', '8', '1', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-28 21:18:32', '2020-06-28 21:18:32');
INSERT INTO `wp_tt_input` VALUES (337, 'تایید شده', 'verified-16', '5', '', '', 'verified-16', '19', '4', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-29 04:06:46', '2020-06-29 04:06:46');
INSERT INTO `wp_tt_input` VALUES (338, 'توضیحات', 'desc-16', '4', '', '', 'desc-16', '23', '1', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-29 04:06:47', '2020-06-29 04:06:47');
INSERT INTO `wp_tt_input` VALUES (339, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 04:36:16', '2020-06-29 04:36:16');
INSERT INTO `wp_tt_input` VALUES (351, 'کشور', 'country_id-17', '4', '', '', 'country_id-17', '22', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:05:25', '2020-06-10 06:05:25');
INSERT INTO `wp_tt_input` VALUES (352, 'استان', 'state_id-17', '4', '', '', 'state_id-17', '24', '1', '15', '1', '1', '36-39', '', '', '8', '', NULL, NULL, '2020-06-10 06:05:32', '2020-06-10 06:05:32');
INSERT INTO `wp_tt_input` VALUES (353, 'شهر', 'city_id-17', '4', '', '', 'city_id-17', '24', '1', '16', '1', '1', '40-43', '', '', '', '', NULL, NULL, '2020-06-10 06:05:37', '2020-06-10 06:05:37');
INSERT INTO `wp_tt_input` VALUES (354, 'منطقه', 'area_id-17', '4', '', '', 'area_id-17', '24', '1', '18', '', '1', '44-47', '', '', '', '', NULL, NULL, '2020-06-10 06:05:38', '2020-06-10 06:05:38');
INSERT INTO `wp_tt_input` VALUES (355, 'خیایان اصلی', 'main_street-17', '4', '', '', 'main_street-17', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:05:39', '2020-06-10 06:05:39');
INSERT INTO `wp_tt_input` VALUES (356, 'آدرس', 'address-17', '4', '', '', 'address-17', '23', '1', '4', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 06:05:40', '2020-06-10 06:05:40');
INSERT INTO `wp_tt_input` VALUES (357, 'پلاک', 'block_no-17', '4', '', '', 'block_no-17', '1', '1', '1', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:02:44', '2020-06-10 12:02:44');
INSERT INTO `wp_tt_input` VALUES (358, 'واحد', 'apartment_no-17', '4', '', '', 'apartment_no-17', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:02:45', '2020-06-10 12:02:45');
INSERT INTO `wp_tt_input` VALUES (359, 'طول جغرافیایی', 'longitude-17', '4', '', '', 'longitude-17', '28', '1', '1', '', '1', '48', '', '', '', '', NULL, NULL, '2020-06-10 12:02:45', '2020-06-10 12:02:45');
INSERT INTO `wp_tt_input` VALUES (360, 'عرض جغرافیایی', 'latitude-17', '4', '', '', 'latitude-17', '28', '1', '1', '', '1', '49', '', '', '', '', NULL, NULL, '2020-06-10 12:02:49', '2020-06-10 12:02:49');
INSERT INTO `wp_tt_input` VALUES (361, 'تایید شده', 'verified-17', '5', '', '', 'verified-17', '19', '4', '4', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:02:49', '2020-06-10 12:02:49');
INSERT INTO `wp_tt_input` VALUES (362, 'توضیحات', 'desc-17', '4', '', '', 'desc-17', '23', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:02:49', '2020-06-10 12:02:49');
INSERT INTO `wp_tt_input` VALUES (363, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 14:37:22', '2020-06-29 14:37:22');
INSERT INTO `wp_tt_input` VALUES (371, 'آدرس', 'temp_has_address', '5', '', '', 'temp_has_address', '19', '4', '5', '', '1', '', '', '7,8', '', '', NULL, NULL, '2020-06-29 14:37:05', '2020-06-29 14:37:05');
INSERT INTO `wp_tt_input` VALUES (372, 'تلفن', 'temp_has_phone', '5', '', '', 'temp_has_phone', '19', '4', '6', '', '1', '', '', '9,10', '', '', NULL, NULL, '2020-06-29 14:37:08', '2020-06-29 14:37:08');
INSERT INTO `wp_tt_input` VALUES (373, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-29 14:37:11', '2020-06-29 14:37:11');
INSERT INTO `wp_tt_input` VALUES (381, 'نسبت', 'relation_id-18', '4', '', '', 'relation_id-18', '22', '1', '23', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:09:31', '2020-06-10 12:09:31');
INSERT INTO `wp_tt_input` VALUES (382, 'نام منتسب', 'name-18', '4', '', '', 'name-18', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:09:32', '2020-06-10 12:09:32');
INSERT INTO `wp_tt_input` VALUES (383, 'نام خانوادگی منتسب', 'last_name-18', '4', '', '', 'last_name-18', '1', '1', '1', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-10 12:09:32', '2020-06-10 12:09:32');
INSERT INTO `wp_tt_input` VALUES (384, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-30 18:10:14', '2020-06-30 18:10:14');
INSERT INTO `wp_tt_input` VALUES (391, 'شخص', 'person_id-18', '4', '', '', 'person_id-18', '22', '1', '12', '', '1', '', '', '', '', '', NULL, NULL, '2020-06-30 18:10:08', '2020-06-30 18:10:08');
INSERT INTO `wp_tt_input` VALUES (392, 'تعلق اطلاعات تماس به خودش', 'temp_own_number', '5', '', '', 'temp_own_contact', '19', '4', '7', '', '1', '', '', '11,12', '', '', NULL, NULL, '2020-06-30 18:10:11', '2020-06-30 18:10:11');
INSERT INTO `wp_tt_input` VALUES (393, 'نوع اطلاعات تماس', 'type-18', '4', '', '', 'type-18', '22', '1', '22', '1', '1', '', '', '', '', '', NULL, NULL, '2020-06-30 18:10:12', '2020-06-30 18:10:12');
INSERT INTO `wp_tt_input` VALUES (401, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-06-30 18:16:29', '2020-06-30 18:16:29');

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
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input_meta
-- ----------------------------
INSERT INTO `wp_tt_input_meta` VALUES (1, '26', NULL, 'controller-input-name', 'country_id-2', '', NULL, '2020-05-30 08:04:22', '2020-05-30 08:04:22');
INSERT INTO `wp_tt_input_meta` VALUES (2, '26', NULL, 'query-on-change', 'SELECT country.id AS country_id, country.country AS country, currency.currency AS currency, currency.country_id AS currency_country_id, currency.id AS id FROM wp_custom_currency AS currency JOIN wp_custom_country AS country ON country.id = currency.country_id WHERE country.id={name:country_id-2}', NULL, NULL, '2020-05-30 08:04:36', '2020-05-30 08:04:36');
INSERT INTO `wp_tt_input_meta` VALUES (3, '26', NULL, 'return-type', 'string', NULL, NULL, '2020-05-30 08:04:43', '2020-05-30 08:04:43');
INSERT INTO `wp_tt_input_meta` VALUES (4, '26', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT country.id AS country_id,country.country AS country,currency.currency AS currency,currency.country_id AS currency_country_id,currency.id AS id FROM wp_custom_currency AS currency JOIN wp_custom_country AS country ON country.id = currency.country_id WHERE country.id=\\\'{name:country_id-2}\\\'\", \"text\" :\"currency\", \"label\":\"currency\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-05-30 08:07:20', '2020-05-30 08:07:20');
INSERT INTO `wp_tt_input_meta` VALUES (5, '25', NULL, 'data-width', '280', NULL, NULL, '2020-05-30 22:00:10', '2020-05-30 22:00:10');
INSERT INTO `wp_tt_input_meta` VALUES (6, '25', NULL, 'data-height', '40', NULL, NULL, '2020-05-30 22:00:11', '2020-05-30 22:00:11');
INSERT INTO `wp_tt_input_meta` VALUES (7, '25', NULL, 'data-on', 'نماد در سمت چپ رقم', NULL, NULL, '2020-05-30 22:00:14', '2020-05-30 22:00:14');
INSERT INTO `wp_tt_input_meta` VALUES (8, '25', NULL, 'data-off', 'نماد در سمت راست رقم', NULL, NULL, '2020-05-30 22:00:17', '2020-05-30 22:00:17');
INSERT INTO `wp_tt_input_meta` VALUES (9, '53', NULL, 'controller-input-name', 'type-5', NULL, NULL, '2020-05-30 22:00:20', '2020-05-30 22:00:20');
INSERT INTO `wp_tt_input_meta` VALUES (10, '53', NULL, 'query-on-change', 'SELECT * FROM wp_custom_income_expenditure_source WHERE type={name:type-5}', NULL, NULL, '2020-06-03 13:54:47', '2020-06-03 13:54:47');
INSERT INTO `wp_tt_input_meta` VALUES (11, '53', NULL, 'return-type', 'string', NULL, NULL, '2020-06-03 14:03:39', '2020-06-03 14:03:39');
INSERT INTO `wp_tt_input_meta` VALUES (12, '53', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT * FROM wp_custom_income_expenditure_source WHERE type=\\\'{name:type-5}\\\'\", \"text\" :\"name\", \"label\":\"name\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-03 14:03:53', '2020-06-03 14:03:53');
INSERT INTO `wp_tt_input_meta` VALUES (13, '105', NULL, 'isGregorian', 'false', NULL, NULL, '2020-06-03 23:34:55', '2020-06-03 23:34:55');
INSERT INTO `wp_tt_input_meta` VALUES (14, '105', NULL, 'englishNumber', 'true', NULL, NULL, '2020-06-04 00:48:13', '2020-06-04 00:48:13');
INSERT INTO `wp_tt_input_meta` VALUES (15, '105', NULL, 'isGregorian', 'true', NULL, NULL, '2020-06-05 15:44:01', '2020-06-05 15:44:01');
INSERT INTO `wp_tt_input_meta` VALUES (16, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-06-06 16:21:42', '2020-06-06 16:21:42');
INSERT INTO `wp_tt_input_meta` VALUES (17, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-06-06 16:21:45', '2020-06-06 16:21:45');
INSERT INTO `wp_tt_input_meta` VALUES (18, NULL, NULL, 'data-on', 'حقوقی', NULL, NULL, '2020-06-06 16:21:46', '2020-06-06 16:21:46');
INSERT INTO `wp_tt_input_meta` VALUES (19, NULL, NULL, 'data-off', 'حقیقی', NULL, NULL, '2020-06-06 16:21:48', '2020-06-06 16:21:48');
INSERT INTO `wp_tt_input_meta` VALUES (20, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-06-06 16:21:50', '2020-06-06 16:21:50');
INSERT INTO `wp_tt_input_meta` VALUES (21, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-06-06 16:21:51', '2020-06-06 16:21:51');
INSERT INTO `wp_tt_input_meta` VALUES (22, NULL, NULL, 'data-on', 'اتباع داخلی', NULL, NULL, '2020-06-06 16:21:53', '2020-06-06 16:21:53');
INSERT INTO `wp_tt_input_meta` VALUES (23, NULL, NULL, 'data-off', 'اتباع خارجی', NULL, NULL, '2020-06-06 16:22:14', '2020-06-06 16:22:14');
INSERT INTO `wp_tt_input_meta` VALUES (24, NULL, NULL, 'controller-input-name', 'country_id-12', NULL, NULL, '2020-06-10 22:35:58', '2020-06-10 22:35:58');
INSERT INTO `wp_tt_input_meta` VALUES (25, NULL, NULL, 'query-on-change', 'SELECT country.id AS country_id, state.country_id AS state_country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id  WHERE country.id ={name:country_id-12}', NULL, NULL, '2020-06-10 22:36:07', '2020-06-10 22:36:07');
INSERT INTO `wp_tt_input_meta` VALUES (26, NULL, NULL, 'return-type', 'string', NULL, NULL, '2020-06-10 22:36:07', '2020-06-10 22:36:07');
INSERT INTO `wp_tt_input_meta` VALUES (27, NULL, NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT state.id AS state_id,state.country_id AS state_country_id,state.state_name AS state_state_name,country.id AS country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id WHERE country.id = \\\'{name:country_id-12}\\\'\", \"text\" :\"state_state_name\", \"label\":\"state_state_name\", \"value\":\"state_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-10 22:36:07', '2020-06-10 22:36:07');
INSERT INTO `wp_tt_input_meta` VALUES (28, 'استان', NULL, 'controller-input-name', 'country_id-13', NULL, NULL, '2020-06-14 12:27:33', '2020-06-14 12:27:33');
INSERT INTO `wp_tt_input_meta` VALUES (29, 'استان', NULL, 'query-on-change', 'SELECT country.id AS country_id, state.country_id AS state_country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id  WHERE country.id={name:country_id-13}', NULL, NULL, '2020-06-14 12:27:34', '2020-06-14 12:27:34');
INSERT INTO `wp_tt_input_meta` VALUES (30, 'استان', NULL, 'return-type', 'string', NULL, NULL, '2020-06-14 12:27:35', '2020-06-14 12:27:35');
INSERT INTO `wp_tt_input_meta` VALUES (31, 'استان', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT state.id AS state_id,state.country_id AS state_country_id,state.state_name AS state_state_name,country.id AS country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id WHERE country.id = \\\'{name:country_id-13}\\\'\", \"text\" :\"state_state_name\", \"label\":\"state_state_name\", \"value\":\"state_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-14 12:27:36', '2020-06-14 12:27:36');
INSERT INTO `wp_tt_input_meta` VALUES (32, 'شهر', NULL, 'controller-input-name', 'state_id-13', NULL, NULL, '2020-06-14 12:27:38', '2020-06-14 12:27:38');
INSERT INTO `wp_tt_input_meta` VALUES (33, 'شهر', NULL, 'query-on-change', 'SELECT state.id AS state_id, city.state_id AS city_state_id FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id  WHERE state.id ={name:state_id-13}', NULL, NULL, '2020-06-14 12:27:39', '2020-06-14 12:27:39');
INSERT INTO `wp_tt_input_meta` VALUES (34, 'شهر', NULL, 'return-type', 'string', NULL, NULL, '2020-06-14 12:27:41', '2020-06-14 12:27:41');
INSERT INTO `wp_tt_input_meta` VALUES (35, 'شهر', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT city.id AS city_id,city.state_id AS city_state_id,city.city_name AS city_city_name,state.id AS state_id FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id WHERE state.id = \\\'{name:state_id-13}\\\'\", \"text\" :\"city_city_name\", \"label\":\"city_city_name\", \"value\":\"city_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-14 12:27:44', '2020-06-14 12:27:44');
INSERT INTO `wp_tt_input_meta` VALUES (36, 'استان', NULL, 'controller-input-name', 'country_id-17', NULL, NULL, '2020-06-14 12:27:45', '2020-06-14 12:27:45');
INSERT INTO `wp_tt_input_meta` VALUES (37, 'استان', NULL, 'query-on-change', 'SELECT country.id AS country_id, state.country_id AS state_country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id  WHERE country.id={name:country_id-17}', NULL, NULL, '2020-06-29 05:32:34', '2020-06-29 05:32:34');
INSERT INTO `wp_tt_input_meta` VALUES (38, 'استان', NULL, 'return-type', 'string', NULL, NULL, '2020-06-29 05:32:35', '2020-06-29 05:32:35');
INSERT INTO `wp_tt_input_meta` VALUES (39, 'استان', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT state.id AS state_id,state.country_id AS state_country_id,state.state_name AS state_state_name,country.id AS country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id WHERE country.id = \\\'{name:country_id-17}\\\'\", \"text\" :\"state_state_name\", \"label\":\"state_state_name\", \"value\":\"state_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-29 05:32:36', '2020-06-29 05:32:36');
INSERT INTO `wp_tt_input_meta` VALUES (40, 'شهر', NULL, 'controller-input-name', 'state_id-17', NULL, NULL, '2020-06-29 05:34:59', '2020-06-29 05:34:59');
INSERT INTO `wp_tt_input_meta` VALUES (41, 'شهر', NULL, 'query-on-change', 'SELECT state.id AS state_id, city.state_id AS city_state_id FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id  WHERE state.id ={name:state_id-17}', NULL, NULL, '2020-06-29 05:35:00', '2020-06-29 05:35:00');
INSERT INTO `wp_tt_input_meta` VALUES (42, 'شهر', NULL, 'return-type', 'string', NULL, NULL, '2020-06-29 05:35:00', '2020-06-29 05:35:00');
INSERT INTO `wp_tt_input_meta` VALUES (43, 'شهر', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT city.id AS city_id,city.state_id AS city_state_id,city.city_name AS city_city_name,state.id AS state_id FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id WHERE state.id = \\\'{name:state_id-17}\\\'\", \"text\" :\"city_city_name\", \"label\":\"city_city_name\", \"value\":\"city_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-29 05:35:01', '2020-06-29 05:35:01');
INSERT INTO `wp_tt_input_meta` VALUES (44, 'منطقه', NULL, 'controller-input-name', 'city_id-17', NULL, NULL, '2020-06-29 05:37:27', '2020-06-29 05:37:27');
INSERT INTO `wp_tt_input_meta` VALUES (45, 'منطقه', NULL, 'query-on-change', 'SELECT city.id AS city_id, area.city_id AS area_city_id FROM wp_custom_area AS area JOIN wp_custom_city AS city ON city.id = area.city_id  WHERE city.id ={name:city_id-17}', NULL, NULL, '2020-06-29 05:37:29', '2020-06-29 05:37:29');
INSERT INTO `wp_tt_input_meta` VALUES (46, 'منطقه', NULL, 'return-type', 'string', NULL, NULL, '2020-06-29 05:37:30', '2020-06-29 05:37:30');
INSERT INTO `wp_tt_input_meta` VALUES (47, 'منطقه', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT area.id AS area_id,area.city_id AS area_city_id,area.area_name AS area_area_name,city.id AS city_id FROM wp_custom_area AS area JOIN wp_custom_city AS city ON city.id = area.city_id WHERE city.id = \\\'{name:city_id-17}\\\'\", \"text\" :\"area_area_name\", \"label\":\"area_area_name\", \"value\":\"area_id\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-29 05:37:31', '2020-06-29 05:37:31');
INSERT INTO `wp_tt_input_meta` VALUES (48, NULL, NULL, 'lat-or-lon', 'lon', NULL, NULL, '2020-06-29 06:42:08', '2020-06-29 06:42:08');
INSERT INTO `wp_tt_input_meta` VALUES (49, NULL, NULL, 'lat-or-lon', 'lat', NULL, NULL, '2020-06-29 06:43:19', '2020-06-29 06:43:19');
INSERT INTO `wp_tt_input_meta` VALUES (50, 'استان', NULL, 'controller-input-name', 'country_code-16', NULL, NULL, '2020-06-29 19:29:27', '2020-06-29 19:29:27');
INSERT INTO `wp_tt_input_meta` VALUES (51, 'استان', NULL, 'query-on-change', 'SELECT country.id AS country_id, country.phone_code AS country_phone_code, state.country_id AS state_country_id FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id  WHERE country.phone_code={name:country_code-16}', NULL, NULL, '2020-06-29 19:29:28', '2020-06-29 19:29:28');
INSERT INTO `wp_tt_input_meta` VALUES (52, 'استان', NULL, 'return-type', 'string', NULL, NULL, '2020-06-29 19:29:30', '2020-06-29 19:29:30');
INSERT INTO `wp_tt_input_meta` VALUES (53, 'استان', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT state.id AS state_id,state.phone_code AS state_phone_code,state.country_id AS state_country_id,state.state_name AS state_state_name,country.id AS country_id,country.phone_code AS country_phone_code, CONCAT(state.state_name, \\\' (\\\', state.phone_code,\\\')\\\') AS label FROM wp_custom_state AS state JOIN wp_custom_country AS country ON country.id = state.country_id WHERE country.phone_code = \\\'{name:country_code-16}\\\'\", \"text\" :\"label\", \"label\":\"label\", \"value\":\"state_phone_code\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-29 19:29:31', '2020-06-29 19:29:31');
INSERT INTO `wp_tt_input_meta` VALUES (54, 'شهر', NULL, 'controller-input-name', 'state_code-16', NULL, NULL, '2020-06-29 19:51:30', '2020-06-29 19:51:30');
INSERT INTO `wp_tt_input_meta` VALUES (55, 'شهر', NULL, 'query-on-change', 'SELECT state.id AS state_id, state.phone_code AS state_phone_code, city.state_id AS city_state_id FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id  WHERE state.phone_code={name:state_code-16}', NULL, NULL, '2020-06-29 19:51:33', '2020-06-29 19:51:33');
INSERT INTO `wp_tt_input_meta` VALUES (56, 'شهر', NULL, 'return-type', 'string', NULL, NULL, '2020-06-29 19:51:34', '2020-06-29 19:51:34');
INSERT INTO `wp_tt_input_meta` VALUES (57, 'شهر', NULL, 'query', '{ \"condition\":\"1==1\" , \"query\":\"SELECT city.id AS city_id,city.phone_code AS city_phone_code,city.state_id AS city_state_id,city.city_name AS city_city_name,state.id AS state_id,state.phone_code AS state_phone_code, CONCAT(city.city_name, \\\' (\\\', city.phone_code,\\\')\\\') AS label FROM wp_custom_city AS city JOIN wp_custom_state AS state ON state.id = city.state_id WHERE state.phone_code = \\\'{name:state_code-16}\\\'\", \"text\" :\"label\", \"label\":\"label\", \"value\":\"city_phone_code\" , \"selected\":\"\" , \"disabled\":\"\" }', NULL, NULL, '2020-06-29 19:51:35', '2020-06-29 19:51:35');

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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_tt_input_types` VALUES (28, ' Lat Log Location Text Field', 'sst_lat_log_location_text_field', 'text', 'lat-log-location-text', 'sst_lat_log_location_text', 'This is simple sst_lat_log_location_text input type as a HTML code!', 'Ehrajat', '2020-06-29 02:11:19', '2020-06-29 02:11:19');

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
-- Table structure for wp_tt_modal
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_modal`;
CREATE TABLE `wp_tt_modal`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readonly_input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_change_event_input_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_modal
-- ----------------------------
INSERT INTO `wp_tt_modal` VALUES (1, 'کشور', '', '1', 'country', '', '', '', NULL, '2020-06-28 15:37:13', '2020-06-28 15:37:13');
INSERT INTO `wp_tt_modal` VALUES (2, 'واحد پول', '', '2', 'currency', '', '', '', NULL, '2020-06-28 20:46:20', '2020-06-28 20:46:20');
INSERT INTO `wp_tt_modal` VALUES (3, 'نوع شخصیت حقوقی', '', '7', 'legal_person_type', '', '', '', NULL, '2020-06-28 20:47:02', '2020-06-28 20:47:02');
INSERT INTO `wp_tt_modal` VALUES (4, 'شخص', '', '15', 'person', '', '', '', NULL, '2020-06-28 21:14:28', '2020-06-28 21:14:28');
INSERT INTO `wp_tt_modal` VALUES (5, 'نحوه آشنایی', '', '8', 'acquaintance_type', '', '', '', NULL, '2020-06-28 21:14:53', '2020-06-28 21:14:53');
INSERT INTO `wp_tt_modal` VALUES (6, 'شغل', '', '20', 'job', '', '', '', NULL, '2020-06-28 21:15:39', '2020-06-28 21:15:39');
INSERT INTO `wp_tt_modal` VALUES (7, 'تحصیلات', '', '10', 'education', '', '', '', NULL, '2020-06-28 21:15:54', '2020-06-28 21:15:54');
INSERT INTO `wp_tt_modal` VALUES (8, 'استان', '', '16', 'state', '261:271', '271', '', NULL, '2020-06-28 21:17:31', '2020-06-28 21:17:31');
INSERT INTO `wp_tt_modal` VALUES (9, 'شهر', '', '17', 'city', '', '', '', NULL, '2020-06-28 21:18:00', '2020-06-28 21:18:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_process
-- ----------------------------
INSERT INTO `wp_tt_process` VALUES (1, 'کشور', '', '1', '', '1', '', NULL, '2020-05-26 10:51:21', '2020-05-26 10:51:21');
INSERT INTO `wp_tt_process` VALUES (2, 'واحد پول', '', '2', '', '2', '', NULL, '2020-05-26 10:51:38', '2020-05-26 10:51:38');
INSERT INTO `wp_tt_process` VALUES (3, 'نرخ تبدیل ارز', '', '3', '', '3', '', NULL, '2020-05-31 01:46:08', '2020-05-31 01:46:08');
INSERT INTO `wp_tt_process` VALUES (4, 'مالیات', '', '4', '', '4', '', NULL, '2020-05-31 01:46:08', '2020-05-31 01:46:08');
INSERT INTO `wp_tt_process` VALUES (5, 'محل درآمد و هزینه', '', '5', '', '5', '', NULL, '2020-06-02 04:08:20', '2020-06-02 04:08:20');
INSERT INTO `wp_tt_process` VALUES (6, 'روش پرداخت', '', '6', '', '6', '', NULL, '2020-06-02 04:08:20', '2020-06-02 04:08:20');
INSERT INTO `wp_tt_process` VALUES (7, 'نوع شخص حقوقی', '', '7', '', '7', '', NULL, '2020-06-02 04:08:21', '2020-06-02 04:08:21');
INSERT INTO `wp_tt_process` VALUES (8, 'نوع نحوه آشنایی', '', '8', '', '8', '', NULL, '2020-06-02 04:08:21', '2020-06-02 04:08:21');
INSERT INTO `wp_tt_process` VALUES (9, 'شبکه اجتماعی', '', '9', '', '9', '', NULL, '2020-06-02 04:08:22', '2020-06-02 04:08:22');
INSERT INTO `wp_tt_process` VALUES (10, 'تحصیلات', '', '10', '', '10', '', NULL, '2020-06-03 23:14:51', '2020-06-03 23:14:51');
INSERT INTO `wp_tt_process` VALUES (11, 'اشخاص حقوقی', '', '11', '', '11', '', NULL, '2020-06-03 23:14:52', '2020-06-03 23:14:52');
INSERT INTO `wp_tt_process` VALUES (12, 'اشخاص حقیقی (اتباع داخلی)', '', '12', '', '12', '', NULL, '2020-06-03 23:14:53', '2020-06-03 23:14:53');
INSERT INTO `wp_tt_process` VALUES (13, 'اشخاص حقیقی (اتباع خارجی)', '', '13', '', '13', '', NULL, '2020-06-03 23:14:54', '2020-06-03 23:14:54');
INSERT INTO `wp_tt_process` VALUES (14, '', '', '', '', '', '', NULL, '2020-06-15 04:07:41', '2020-06-15 04:07:41');
INSERT INTO `wp_tt_process` VALUES (15, 'اشخاص', '', '15', '', '15', '', NULL, '2020-06-03 23:14:55', '2020-06-03 23:14:55');
INSERT INTO `wp_tt_process` VALUES (16, 'استان', '', '16', '', '16', '', NULL, '2020-06-03 23:14:57', '2020-06-03 23:14:57');
INSERT INTO `wp_tt_process` VALUES (17, 'شهر', '', '17', '', '17', '', NULL, '2020-06-03 23:14:58', '2020-06-03 23:14:58');
INSERT INTO `wp_tt_process` VALUES (18, 'منطقه', '', '18', '', '18', '', NULL, '2020-06-03 23:15:00', '2020-06-03 23:15:00');
INSERT INTO `wp_tt_process` VALUES (19, 'نسبت', '', '19', '', '19', '', NULL, '2020-06-03 23:15:01', '2020-06-03 23:15:01');
INSERT INTO `wp_tt_process` VALUES (20, 'شغل', '', '20', '', '20', '', NULL, '2020-06-03 23:15:02', '2020-06-03 23:15:02');
INSERT INTO `wp_tt_process` VALUES (21, '', '', '', '', '', '', NULL, '2020-06-03 23:15:04', '2020-06-03 23:15:04');
INSERT INTO `wp_tt_process` VALUES (22, '', '', '', '', '', '', NULL, '2020-06-29 04:48:33', '2020-06-29 04:48:33');
INSERT INTO `wp_tt_process` VALUES (23, '', '', '', '', '', '', NULL, '2020-06-29 04:48:34', '2020-06-29 04:48:34');
INSERT INTO `wp_tt_process` VALUES (24, 'تلفن', '', '24', '', '24', '', NULL, '2020-06-29 04:48:38', '2020-06-29 04:48:38');
INSERT INTO `wp_tt_process` VALUES (25, 'آدرس', '', '25', '', '25', '', NULL, '2020-06-29 05:24:42', '2020-06-29 05:24:42');
INSERT INTO `wp_tt_process` VALUES (26, '', '', '', '', '', '', NULL, '2020-06-29 14:44:04', '2020-06-29 14:44:04');
INSERT INTO `wp_tt_process` VALUES (27, 'آدرس و تلفن', '', '27', '', '24,25,27', '', NULL, '2020-06-29 14:44:07', '2020-06-29 14:44:07');
INSERT INTO `wp_tt_process` VALUES (28, '', '', '', '', '', '', NULL, '2020-06-30 18:19:34', '2020-06-30 18:19:34');
INSERT INTO `wp_tt_process` VALUES (29, '', '', '', '', '', '', NULL, '2020-06-30 18:19:35', '2020-06-30 18:19:35');
INSERT INTO `wp_tt_process` VALUES (30, 'اطلاعات تماس', '', '30', '', '30', '', NULL, '2020-06-30 18:19:37', '2020-06-30 18:19:37');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_tags
-- ----------------------------
INSERT INTO `wp_tt_tags` VALUES (1, 'Form Tag', 'Form-Tag', '<div style=\"padding:12px;\"><h2 style=\"text-shadow:1px 1px 5px blue;\">{own-data:epithet}</h2>', '</div>', NULL, NULL, NULL, '2020-03-16 06:08:08', '2020-03-16 06:08:08');
INSERT INTO `wp_tt_tags` VALUES (2, 'Block Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:01', '2020-03-16 06:44:01');
INSERT INTO `wp_tt_tags` VALUES (3, 'FieldSet Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:03', '2020-03-16 06:44:03');
INSERT INTO `wp_tt_tags` VALUES (4, 'Bootstrap Form Input (With Label)', 'Bootstrap Form-Input-With-Label', '<div class=\"form-group\"><label for=\"{attr:id}\">{own-data:epithet}</label>', '<small class=\"form-text text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-03-16 06:09:12', '2020-03-16 06:09:12');
INSERT INTO `wp_tt_tags` VALUES (5, 'Bootstrap Form Checkbox Input', NULL, '<div class=\"form-check\">\r\n', '<label class=\"form-check-label\" for=\"{attr:id}\">{own-data:epithet}</label></div>', NULL, NULL, NULL, '2020-03-17 06:08:12', '2020-03-17 06:08:12');
INSERT INTO `wp_tt_tags` VALUES (6, 'Bootstrap Form Toggle Checkbox Input', NULL, '<div class=\"form-group form-check\">\r\n', '<label class=\"form-check-label\" for=\"{attr:id}\">{own-data:epithet}</label><small class=\"text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-04-19 03:05:25', '2020-04-19 03:05:25');
INSERT INTO `wp_tt_tags` VALUES (7, 'Bootstrap File Input', NULL, '<div class=\"custom-file\"><label class=\"custom-file-label\" for=\"{attr:id}\">{own-data:epithet}</label>\r\n    ', '</div>', NULL, NULL, NULL, '2020-06-10 02:11:50', '2020-06-10 02:11:50');
INSERT INTO `wp_tt_tags` VALUES (8, 'butt', NULL, '<div>', '</div>', NULL, NULL, NULL, '2020-06-20 15:00:14', '2020-06-20 15:00:14');

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
) ENGINE = InnoDB AUTO_INCREMENT = 697 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_tt_vals` VALUES (161, '0_5ed595063b3c06.54577456', 0x7B225F5F7373745F5F70726F636573735F6964223A2234222C227461785F6E616D65223A5B22737373737373737373225D2C2272617465223A5B22696E636C7573697665225D2C2274797065223A5B22225D2C2264657363223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656435393530363362336330362E3534353737343536222C225F5F7373745F5F646174615F616374696F6E73223A2234222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-02 04:23:45', '2020-06-02 04:23:45');
INSERT INTO `wp_tt_vals` VALUES (162, '0_5ed5a604acf520.29859757', 0x7B225F5F7373745F5F70726F636573735F6964223A2234222C227461785F6E616D652D34223A5B225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437225D2C22726174652D34223A5B22696E636C7573697665225D2C22747970652D34223A5B2239225D2C22646573632D34223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656435613630346163663532302E3239383539373537222C225F5F7373745F5F646174615F616374696F6E73223A2234222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A6E756C6C7D, '0', '2020-06-02 05:36:40', '2020-06-02 05:36:40');
INSERT INTO `wp_tt_vals` VALUES (163, '0_5ed5a653d9ce88.26549240', 0x7B225F5F7373745F5F70726F636573735F6964223A2234222C227461785F6E616D652D34223A5B225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437225D2C22726174652D34223A5B22696E636C7573697665225D2C22747970652D34223A5B2239225D2C22646573632D34223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656435613635336439636538382E3236353439323430222C225F5F7373745F5F646174615F616374696F6E73223A2234222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A6E756C6C7D, '0', '2020-06-02 05:37:42', '2020-06-02 05:37:42');
INSERT INTO `wp_tt_vals` VALUES (164, '0_5ed5a6aa2a20a7.29766737', 0x7B225F5F7373745F5F70726F636573735F6964223A2234222C227461785F6E616D652D34223A5B225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437225D2C22726174652D34223A5B22696E636C7573697665225D2C22747970652D34223A5B2239225D2C22646573632D34223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656435613661613261323061372E3239373636373337222C225F5F7373745F5F646174615F616374696F6E73223A2234222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A6E756C6C7D, '0', '2020-06-02 05:39:04', '2020-06-02 05:39:04');
INSERT INTO `wp_tt_vals` VALUES (165, '0_5ed5a6c40a34c2.55852900', 0x7B225F5F7373745F5F70726F636573735F6964223A2234222C227461785F6E616D652D34223A5B225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437225D2C22726174652D34223A5B22696E636C7573697665225D2C22747970652D34223A5B2239225D2C22646573632D34223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656435613663343061333463322E3535383532393030222C225F5F7373745F5F646174615F616374696F6E73223A2234222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-02 05:39:30', '2020-06-02 05:39:31');
INSERT INTO `wp_tt_vals` VALUES (166, '0_5ed5a6e7c8b1a7.23826270', 0x7B227461785F6E616D652D345B305D223A225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437222C22726174652D345B305D223A22696E636C7573697665222C22747970652D345B305D223A2239222C22646573632D345B305D223A22227D, '0', '2020-06-02 05:41:32', '2020-06-02 05:41:32');
INSERT INTO `wp_tt_vals` VALUES (167, '0_5ed5a7889e9595.47563520', 0x7B227461785F6E616D652D345B305D223A225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437222C22726174652D345B305D223A2239222C22747970652D345B305D223A22696E636C7573697665222C22646573632D345B305D223A22227D, '0', '2020-06-02 05:42:47', '2020-06-02 05:42:47');
INSERT INTO `wp_tt_vals` VALUES (168, '0_5ed7803cba8f05.07242815', 0x7B225F5F7373745F5F70726F636573735F6964223A2235222C226E616D652D35223A5B225C75303632375C75303632635C75303632375C75303633315C7530363437205C75303632655C75303634385C75303632665C75303633315C7530363438225D2C22747970652D35223A5B22696E636F6D65225D2C22646573632D35223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656437383033636261386630352E3037323432383135222C225F5F7373745F5F646174615F616374696F6E73223A2235222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-03 15:20:15', '2020-06-03 15:20:15');
INSERT INTO `wp_tt_vals` VALUES (169, '0_5ed781846940a6.62000797', 0x7B226E616D652D355B305D223A225C75303632615C75303633395C75303634355C75303663635C75303633315C75303632375C7530363261222C22747970652D355B305D223A22657870656E646974757265222C22706172656E745F69642D355B305D223A2231222C22646573632D355B305D223A22227D, '0', '2020-06-03 15:25:19', '2020-06-03 15:25:19');
INSERT INTO `wp_tt_vals` VALUES (170, '0_5ed78657ac1d16.48999078', 0x7B225F5F7373745F5F70726F636573735F6964223A2236222C226E616D652D36223A5B225C75303634365C75303634325C75303632665C7530366363225D2C22706172656E745F69642D36223A5B2231225D2C22646573632D36223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656437383635376163316431362E3438393939303738222C225F5F7373745F5F646174615F616374696F6E73223A2236222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-03 15:45:39', '2020-06-03 15:45:39');
INSERT INTO `wp_tt_vals` VALUES (171, '0_5ed78e1c4cb591.87484345', 0x7B225F5F7373745F5F70726F636573735F6964223A2236222C226E616D652D36223A5B225C75303634365C75303634325C75303632665C7530366363225D2C22646573632D36223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656437386531633463623539312E3837343834333435222C225F5F7373745F5F646174615F616374696F6E73223A2236222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-03 16:18:49', '2020-06-03 16:18:49');
INSERT INTO `wp_tt_vals` VALUES (172, '0_5ed78e56d07073.56540896', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303634365C75303634325C75303632665C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-03 16:19:46', '2020-06-03 16:19:46');
INSERT INTO `wp_tt_vals` VALUES (173, '0_5ed791398beea6.25611925', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-03 16:32:16', '2020-06-03 16:32:16');
INSERT INTO `wp_tt_vals` VALUES (174, '0_5ed7914b5bd283.61519190', 0x7B226E616D652D365B305D223A225C75303661395C75303632375C75303633315C7530363261205C75303632385C7530363437205C75303661395C75303632375C75303633315C7530363261222C22706172656E745F69642D365B305D223A2232222C22646573632D365B305D223A22227D, '0', '2020-06-03 16:32:27', '2020-06-03 16:32:28');
INSERT INTO `wp_tt_vals` VALUES (175, '0_5ed7b6ecbbecf8.98882790', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:13:05', '2020-06-03 19:13:05');
INSERT INTO `wp_tt_vals` VALUES (176, '0_5ed7b70a027408.14281176', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:13:25', '2020-06-03 19:13:27');
INSERT INTO `wp_tt_vals` VALUES (177, '0_5ed7b73ddcac16.22886400', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:14:27', '2020-06-03 19:14:29');
INSERT INTO `wp_tt_vals` VALUES (178, '0_5ed7b77dbd3b17.80989033', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:15:20', '2020-06-03 19:15:20');
INSERT INTO `wp_tt_vals` VALUES (179, '0_5ed7b7c40d12f8.33608435', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:16:30', '2020-06-03 19:16:30');
INSERT INTO `wp_tt_vals` VALUES (180, '0_5ed7b802477e65.21387772', 0x7B226E616D652D375B305D223A225C75303634385C75303633325C75303633315C75303632375C75303632615C75303632655C75303632375C75303634365C7530363437222C22706172656E745F69642D375B305D223A2231222C22646573632D375B305D223A22227D, '0', '2020-06-03 19:17:42', '2020-06-03 19:17:42');
INSERT INTO `wp_tt_vals` VALUES (181, '0_5ed7e2aac6c865.25929175', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632655C75303633355C75303634385C75303633355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 22:19:39', '2020-06-03 22:19:40');
INSERT INTO `wp_tt_vals` VALUES (182, '0_5ed7e2bbbd8778.13784954', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632635C75303632375C75303633325C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-03 22:19:55', '2020-06-03 22:19:56');
INSERT INTO `wp_tt_vals` VALUES (183, '0_5ed7e2e4842f37.06984826', 0x7B226E616D652D375B305D223A225C75303634325C75303634325C75303634325C7530363432222C22706172656E745F69642D375B305D223A2231222C22646573632D375B305D223A22227D, '0', '2020-06-03 22:20:32', '2020-06-03 22:20:32');
INSERT INTO `wp_tt_vals` VALUES (184, '0_5ed7f17ab48141.14647051', 0x7B226E616D652D385B305D223A225C75303634315C75303663635C75303633335C75303632385C75303634385C7530366139222C22646573632D385B305D223A22227D, '0', '2020-06-03 23:22:51', '2020-06-03 23:22:52');
INSERT INTO `wp_tt_vals` VALUES (185, '0_5ed7f1c2216082.61322133', 0x7B226E616D652D385B305D223A225C75303634315C75303663635C75303633335C75303632385C75303634385C7530366139222C22646573632D385B305D223A22227D, '0', '2020-06-03 23:23:56', '2020-06-03 23:23:56');
INSERT INTO `wp_tt_vals` VALUES (186, '0_5ed837dda06918.49624262', 0x7B225F5F7373745F5F70726F636573735F6964223A223130222C226E616D652D39223A5B225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363225D2C226C6567616C5F706572736F6E5F747970655F69642D39223A5B2231225D2C226E6174696F6E616C5F69642D39223A5B22773232323232323232225D2C226E6174696F6E616C5F69645F322D39223A5B223232323232225D2C2262697274685F646174652D39223A5B22313339395C2F30335C2F3132225D2C227461785F636F64652D39223A5B2232323232323232225D2C22656D61696C2D39223A5B226577717765717740656D61692E636F6D225D2C22776562736974652D39223A5B2268747470733A5C2F5C2F7777772E636F6D225D2C226163717561696E74616E63655F747970655F69642D39223A5B2231225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656438333764646130363931382E3439363234323632222C225F5F7373745F5F646174615F616374696F6E73223A223130222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-04 04:23:49', '2020-06-04 04:23:49');
INSERT INTO `wp_tt_vals` VALUES (187, '0_5ed8391c8a9806.28446701', 0x7B226E6174696F6E616C5F63617264223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C22646573632D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A22773232323232323232222C226E6174696F6E616C5F69645F322D395B305D223A223232323232222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3036222C227461785F636F64652D395B305D223A2232323232323232222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C226163717561696E74616E63655F747970655F69642D395B305D223A2231227D, '0', '2020-06-04 04:28:38', '2020-06-04 04:28:38');
INSERT INTO `wp_tt_vals` VALUES (188, '0_5ed839563d52c1.18033461', 0x7B226E6174696F6E616C5F63617264223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C22646573632D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A22773232323232323232222C226E6174696F6E616C5F69645F322D395B305D223A223232323232222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3232222C227461785F636F64652D395B305D223A2232323232323232222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C226163717561696E74616E63655F747970655F69642D395B305D223A2232227D, '0', '2020-06-04 04:29:35', '2020-06-04 04:29:35');
INSERT INTO `wp_tt_vals` VALUES (189, '0_5ed8398626b291.01921578', 0x7B226E6174696F6E616C5F63617264223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C22646573632D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A22773232323232323232222C226E6174696F6E616C5F69645F322D395B305D223A223232323232222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3133222C227461785F636F64652D395B305D223A2232323232323232222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C226163717561696E74616E63655F747970655F69642D395B305D223A2231227D, '0', '2020-06-04 04:30:24', '2020-06-04 04:30:24');
INSERT INTO `wp_tt_vals` VALUES (190, '0_5ed839a90516b6.21833336', 0x7B226E6174696F6E616C5F63617264223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C22646573632D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A22773232323232323232222C226E6174696F6E616C5F69645F322D395B305D223A223232323232222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3132222C227461785F636F64652D395B305D223A2232323232323232222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C226163717561696E74616E63655F747970655F69642D395B305D223A2231227D, '0', '2020-06-04 04:30:59', '2020-06-04 04:30:59');
INSERT INTO `wp_tt_vals` VALUES (191, '0_5ed83a14278da3.09635851', 0x7B226E6174696F6E616C5F63617264223A6E756C6C2C226E616D652D395B305D223A226565656565656565222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A226565656565656565656565656565656565656565222C226E6174696F6E616C5F69645F322D395B305D223A226565656565656565656565656565656565656565656565222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3036222C227461785F636F64652D395B305D223A22656565656565656565656565222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C227265666572656E63655F706572736F6E5F69642D395B305D223A2231222C226163717561696E74616E63655F747970655F69642D395B305D223A2231222C22646573632D395B305D223A2273737373737373227D, '0', '2020-06-04 04:33:02', '2020-06-04 04:33:03');
INSERT INTO `wp_tt_vals` VALUES (192, '0_5ed83aaacc23e2.33197534', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22646464646464222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:35:04', '2020-06-04 04:35:04');
INSERT INTO `wp_tt_vals` VALUES (193, '0_5ed83b026a7659.13009099', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227272222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:36:32', '2020-06-04 04:36:32');
INSERT INTO `wp_tt_vals` VALUES (194, '0_5ed83b1548a831.79607868', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227272727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:36:50', '2020-06-04 04:36:50');
INSERT INTO `wp_tt_vals` VALUES (195, '0_5ed83b6790fc50.65010721', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227474222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:38:12', '2020-06-04 04:38:12');
INSERT INTO `wp_tt_vals` VALUES (196, '0_5ed83b89c01ba8.40432847', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:38:46', '2020-06-04 04:38:46');
INSERT INTO `wp_tt_vals` VALUES (197, '0_5ed83bb83963e2.12615373', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:39:33', '2020-06-04 04:39:33');
INSERT INTO `wp_tt_vals` VALUES (198, '0_5ed83c0714dd34.63986472', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-04 04:40:52', '2020-06-04 04:40:52');
INSERT INTO `wp_tt_vals` VALUES (199, '0_5ed840ef846662.97434548', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2264646464646464222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:01:48', '2020-06-04 05:01:48');
INSERT INTO `wp_tt_vals` VALUES (200, '0_5ed8411699a795.43957869', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:02:28', '2020-06-04 05:02:28');
INSERT INTO `wp_tt_vals` VALUES (201, '0_5ed84135028cd1.79589317', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22737373736161616161737373222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:02:59', '2020-06-04 05:02:59');
INSERT INTO `wp_tt_vals` VALUES (202, '0_5ed8416650a959.69285580', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22646464646464222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:03:47', '2020-06-04 05:03:47');
INSERT INTO `wp_tt_vals` VALUES (203, '0_5ed8427236c484.67199040', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22747474747474747474222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:08:16', '2020-06-04 05:08:29');
INSERT INTO `wp_tt_vals` VALUES (204, '0_5ed84290d5ccd6.64080671', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227474747474747474222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:08:47', '2020-06-04 05:08:47');
INSERT INTO `wp_tt_vals` VALUES (205, '0_5ed842aa0aa518.54764462', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22747474747474747474222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:09:12', '2020-06-04 05:09:13');
INSERT INTO `wp_tt_vals` VALUES (206, '0_5ed842fa38fcf5.90544326', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2272727272727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:10:31', '2020-06-04 05:10:31');
INSERT INTO `wp_tt_vals` VALUES (207, '0_5ed8430e8785f0.34174663', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22353535353535353535353535222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:10:54', '2020-06-04 05:10:54');
INSERT INTO `wp_tt_vals` VALUES (208, '0_5ed843d9720800.17523387', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22646464646464343434343434343434222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:14:16', '2020-06-04 05:14:16');
INSERT INTO `wp_tt_vals` VALUES (209, '0_5ed843f427bc85.72403056', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2274747474747474747474222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:14:41', '2020-06-04 05:14:41');
INSERT INTO `wp_tt_vals` VALUES (210, '0_5ed844528f5062.78544902', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:16:16', '2020-06-04 05:16:16');
INSERT INTO `wp_tt_vals` VALUES (211, '0_5ed845592bc831.12896297', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226464646464643434343434343434347772222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:20:42', '2020-06-04 05:20:42');
INSERT INTO `wp_tt_vals` VALUES (212, '0_5ed845884aae33.13537637', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C75303634363333333333333333222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:21:28', '2020-06-04 05:21:28');
INSERT INTO `wp_tt_vals` VALUES (213, '0_5ed8459e1ba792.54038695', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A226768646764666867222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:21:50', '2020-06-04 05:21:50');
INSERT INTO `wp_tt_vals` VALUES (214, '0_5ed84621185275.62420063', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C75303634367373737373737373222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313233323033395F506F72736368655F50616E616D6572612E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 05:23:59', '2020-06-04 05:23:59');
INSERT INTO `wp_tt_vals` VALUES (215, '0_5ed8d6377a3185.14184588', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2273737373737373737365776572776572222C22646573632D315B305D223A2273737373737373227D, '0', '2020-06-04 15:38:54', '2020-06-04 15:38:54');
INSERT INTO `wp_tt_vals` VALUES (216, '0_5ed8d9f97f0e18.32740249', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227373737373737373222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:54:46', '2020-06-04 15:54:46');
INSERT INTO `wp_tt_vals` VALUES (217, '0_5ed8da2189f514.23939579', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A227474747474222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:55:26', '2020-06-04 15:55:26');
INSERT INTO `wp_tt_vals` VALUES (218, '0_5ed8da4b9b9987.93087468', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2272727272727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:56:09', '2020-06-04 15:56:09');
INSERT INTO `wp_tt_vals` VALUES (219, '0_5ed8da627722c1.60832140', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A22727272727272727272222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:56:31', '2020-06-04 15:56:31');
INSERT INTO `wp_tt_vals` VALUES (220, '0_5ed8da72a05de2.32515026', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2234323232323232323232222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:56:47', '2020-06-04 15:56:47');
INSERT INTO `wp_tt_vals` VALUES (221, '0_5ed8daad7916c7.08101937', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A2268666E66686E72222C22646573632D315B305D223A22227D, '0', '2020-06-04 15:57:46', '2020-06-04 15:57:46');
INSERT INTO `wp_tt_vals` VALUES (222, '0_5ed8dfe3713836.93915042', 0x7B22666C6167223A6E756C6C2C22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:20:01', '2020-06-04 16:20:01');
INSERT INTO `wp_tt_vals` VALUES (223, '0_5ed8e0d7d385d5.00053443', 0x7B22636F756E7472792D315B305D223A226464646464643434343434343434343434222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237313634365F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:24:06', '2020-06-04 16:24:06');
INSERT INTO `wp_tt_vals` VALUES (224, '0_5ed8e17b5750f6.21692579', 0x7B22636F756E7472792D315B305D223A223535353535222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237313833335F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:26:50', '2020-06-04 16:27:13');
INSERT INTO `wp_tt_vals` VALUES (225, '0_5ed8e1b6ae06c1.65096795', 0x7B22636F756E7472792D315B305D223A223535353535353535222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237313837305F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:27:50', '2020-06-04 16:27:50');
INSERT INTO `wp_tt_vals` VALUES (226, '0_5ed8e2b86aa727.08496858', 0x7B22636F756E7472792D315B305D223A22353535353535353535353535222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237323133375F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:32:05', '2020-06-04 16:32:17');
INSERT INTO `wp_tt_vals` VALUES (227, '0_5ed8e2fda1c3a6.17789441', 0x7B22636F756E7472792D315B305D223A2234343434343434343434222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237323139355F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:33:15', '2020-06-04 16:33:15');
INSERT INTO `wp_tt_vals` VALUES (228, '0_5ed8e3ce025e34.37355891', 0x7B22636F756E7472792D315B305D223A2272727272727272727272222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237323430335F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:36:43', '2020-06-04 16:36:43');
INSERT INTO `wp_tt_vals` VALUES (229, '0_5ed8e467ec74e2.76233691', 0x7B22636F756E7472792D315B305D223A2265656565656565656565222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237323537355F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:39:15', '2020-06-04 16:39:35');
INSERT INTO `wp_tt_vals` VALUES (230, '0_5ed8e492516526.24574636', 0x7B22636F756E7472792D315B305D223A223535353535353535353535353535353535353535353535222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237323630305F72656E742D6361722E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:40:00', '2020-06-04 16:40:00');
INSERT INTO `wp_tt_vals` VALUES (231, '0_5ed8e861724365.73372294', 0x7B22636F756E7472792D315B305D223A226565656565656565656565222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237333537345F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:56:14', '2020-06-04 16:56:14');
INSERT INTO `wp_tt_vals` VALUES (232, '0_5ed8e88e98a508.79755169', 0x7B22636F756E7472792D315B305D223A22357765747765727477657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237333632305F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 16:57:00', '2020-06-04 16:57:00');
INSERT INTO `wp_tt_vals` VALUES (233, '0_5ed8e9769d6167.38217846', 0x7B22636F756E7472792D315B305D223A227272727272727272222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237333835315F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:00:51', '2020-06-04 17:00:51');
INSERT INTO `wp_tt_vals` VALUES (234, '0_5ed8e9972cb0f5.23481050', 0x7B22636F756E7472792D315B305D223A2272657472657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237333838335F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:01:23', '2020-06-04 17:01:23');
INSERT INTO `wp_tt_vals` VALUES (235, '0_5ed8ea617ec8b9.67835034', 0x7B22636F756E7472792D315B305D223A2234343434343434222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237343038365F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:04:46', '2020-06-04 17:04:46');
INSERT INTO `wp_tt_vals` VALUES (236, '0_5ed8ea756921e1.46237951', 0x7B22636F756E7472792D315B305D223A227474747474747474747474222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237343132345F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:05:24', '2020-06-04 17:05:24');
INSERT INTO `wp_tt_vals` VALUES (237, '0_5ed8f0ed708826.42467261', 0x7B22636F756E7472792D315B305D223A2272657472657774727765222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237353736325F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:32:42', '2020-06-04 17:32:42');
INSERT INTO `wp_tt_vals` VALUES (238, '0_5ed8f1bc7d94f3.09774023', 0x7B22636F756E7472792D315B305D223A2264646464646465727774776574222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237353937305F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:36:10', '2020-06-04 17:36:10');
INSERT INTO `wp_tt_vals` VALUES (239, '0_5ed8f3e3ce1a56.85892404', 0x7B22636F756E7472792D315B305D223A2272746572657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363532325F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:45:21', '2020-06-04 17:45:22');
INSERT INTO `wp_tt_vals` VALUES (240, '0_5ed8f42fcdcb05.66074850', 0x7B22636F756E7472792D315B305D223A226572776572776572222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363539375F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:46:37', '2020-06-04 17:46:37');
INSERT INTO `wp_tt_vals` VALUES (241, '0_5ed8f462079460.92478296', 0x7B22636F756E7472792D315B305D223A2265727765727477222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363634385F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:47:27', '2020-06-04 17:47:28');
INSERT INTO `wp_tt_vals` VALUES (242, '0_5ed8f47e2bb868.22981494', 0x7B22636F756E7472792D315B305D223A226572776572747765777777777777222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363637365F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:47:56', '2020-06-04 17:47:56');
INSERT INTO `wp_tt_vals` VALUES (243, '0_5ed8f4b832a902.24168635', 0x7B22636F756E7472792D315B305D223A226466736673646673646673222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363733335F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:48:53', '2020-06-04 17:48:53');
INSERT INTO `wp_tt_vals` VALUES (244, '0_5ed8f4e9000c52.98891947', 0x7B22636F756E7472792D315B305D223A226572746572746572222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363738325F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:49:42', '2020-06-04 17:49:42');
INSERT INTO `wp_tt_vals` VALUES (245, '0_5ed8f58ca5ad18.82845481', 0x7B22636F756E7472792D315B305D223A2265727465727465222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237363934355F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:52:25', '2020-06-04 17:52:25');
INSERT INTO `wp_tt_vals` VALUES (246, '0_5ed8f6fdb29e32.70394763', 0x7B22636F756E7472792D315B305D223A2272727272727272727272222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237373331355F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:58:35', '2020-06-04 17:58:35');
INSERT INTO `wp_tt_vals` VALUES (247, '0_5ed8f7476aec32.91607775', 0x7B22636F756E7472792D315B305D223A227274657274657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237373338385F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 17:59:48', '2020-06-04 17:59:48');
INSERT INTO `wp_tt_vals` VALUES (248, '0_5ed8f770b85066.72785501', 0x7B22636F756E7472792D315B305D223A227265746572746572222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237373433305F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:00:30', '2020-06-04 18:00:30');
INSERT INTO `wp_tt_vals` VALUES (249, '0_5ed8f7aa1e1b14.87437865', 0x7B22636F756E7472792D315B305D223A2274747474747474726572222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237373438385F72656E742D6361722E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:01:27', '2020-06-04 18:01:28');
INSERT INTO `wp_tt_vals` VALUES (250, '0_5ed8fcc06b8233.24996630', 0x7B22636F756E7472792D315B305D223A2266676464736673222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237383739325F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:23:12', '2020-06-04 18:23:12');
INSERT INTO `wp_tt_vals` VALUES (251, '0_5ed8fcf1d53308.95595348', 0x7B22636F756E7472792D315B305D223A226577727765727765222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237383833395F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:23:58', '2020-06-04 18:23:59');
INSERT INTO `wp_tt_vals` VALUES (252, '0_5ed8fd27ed7b21.73070783', 0x7B22636F756E7472792D315B305D223A227274796572747965727479222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237383839325F506F72736368655F50616E616D6572612E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:24:52', '2020-06-04 18:24:52');
INSERT INTO `wp_tt_vals` VALUES (253, '0_5ed8fd92649e21.69564909', 0x7B22636F756E7472792D315B305D223A227765727765727765222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237383939385F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:26:38', '2020-06-04 18:26:38');
INSERT INTO `wp_tt_vals` VALUES (254, '0_5ed8fda26050d6.59908095', 0x7B22636F756E7472792D315B305D223A22727479727479222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237393031355F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:26:55', '2020-06-04 18:26:55');
INSERT INTO `wp_tt_vals` VALUES (255, '0_5ed8fe5940bf61.36682346', 0x7B22636F756E7472792D315B305D223A22726574657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313237393139385F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 18:29:58', '2020-06-04 18:29:58');
INSERT INTO `wp_tt_vals` VALUES (256, '0_5ed907e478bac4.60494972', 0x7B22636F756E7472792D315B305D223A2235353535353535353535353574222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313238313634315F416E6E6F746174696F6E2E706E67222C22646573632D315B305D223A22227D, '0', '2020-06-04 19:10:41', '2020-06-04 19:10:41');
INSERT INTO `wp_tt_vals` VALUES (257, '0_5ed90870dce626.25643058', 0x7B22636F756E7472792D315B305D223A22747279727479657274222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313238313738325F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 19:13:01', '2020-06-04 19:13:02');
INSERT INTO `wp_tt_vals` VALUES (258, '0_5ed908ae7c08d9.96060564', 0x7B22636F756E7472792D315B305D223A226565656565656565222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313238313835325F494D475F32303139313030325F303030312E6A7067222C22646573632D315B305D223A22227D, '0', '2020-06-04 19:14:03', '2020-06-04 19:14:12');
INSERT INTO `wp_tt_vals` VALUES (259, '0_5ed947add290d5.65599572', 0x7B22636F756E7472792D315B305D223A226565656565656565656565656565222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313239373937315F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 23:42:51', '2020-06-04 23:42:51');
INSERT INTO `wp_tt_vals` VALUES (260, '0_5ed947fa90a003.36044518', 0x7B22636F756E7472792D315B305D223A226565656565656565656565222C22666C61675B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F636F756E7472792D666C6167735C2F305F313539313239383034385F436170747572652E504E47222C22646573632D315B305D223A22227D, '0', '2020-06-04 23:44:08', '2020-06-04 23:44:08');
INSERT INTO `wp_tt_vals` VALUES (261, '0_5ed94829a3bf19.40575899', 0x7B226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A226565656565656565656565656565656565656565222C226E6174696F6E616C5F69645F322D395B305D223A226565656565656565656565656565656565656565656565222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3036222C227461785F636F64652D395B305D223A22656565656565656565656565222C226E6174696F6E616C5F636172645B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F6E6174696F6E616C5F636172645C2F305F313539313239383133355F494D475F32303139313030325F303030312E6A7067222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C227265666572656E63655F706572736F6E5F69642D395B305D223A2231222C226163717561696E74616E63655F747970655F69642D395B305D223A2231222C22646573632D395B305D223A22227D, '0', '2020-06-04 23:45:35', '2020-06-04 23:45:35');
INSERT INTO `wp_tt_vals` VALUES (262, '0_5ed95cb4aec311.94171978', 0x7B227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303632655C7530363335205C75303632645C75303634325C75303634385C75303634325C7530366363222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2231222C226E6174696F6E616C5F69642D395B305D223A226565656565656565656565656565656565656565222C226E6174696F6E616C5F69645F322D395B305D223A223232323232222C2262697274685F646174652D395B305D223A22313339395C2F30335C2F3036222C227461785F636F64652D395B305D223A2232323232323232222C226E6174696F6E616C5F636172645B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F6E6174696F6E616C5F636172645C2F305F313539313330333336395F494D475F32303139313030325F303030312E6A7067222C22656D61696C2D395B305D223A226577717765717740656D61692E636F6D222C22776562736974652D395B305D223A2268747470733A5C2F5C2F7777772E636F6D222C226163717561696E74616E63655F747970655F69642D395B305D223A2231222C22646573632D395B305D223A22222C2269735F6C6567616C2D395B305D223A2231227D, '0', '2020-06-05 01:12:49', '2020-06-05 01:12:49');
INSERT INTO `wp_tt_vals` VALUES (263, '0_5ed98231048d19.01415189', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-05 03:52:50', '2020-06-05 03:52:50');
INSERT INTO `wp_tt_vals` VALUES (264, '0_5ed9824f7c2619.82310341', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A223733222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-05 03:53:03', '2020-06-05 03:53:03');
INSERT INTO `wp_tt_vals` VALUES (265, '0_5ed9826b59ebe1.47112056', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C22646573632D315B305D223A22227D, '0', '2020-06-05 03:53:27', '2020-06-05 03:53:27');
INSERT INTO `wp_tt_vals` VALUES (266, '0_5ed9827bc55c35.41031180', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C22646573632D315B305D223A22227D, '0', '2020-06-05 03:53:43', '2020-06-05 03:53:43');
INSERT INTO `wp_tt_vals` VALUES (267, '0_5ed982845516c6.15631483', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-05 03:54:11', '2020-06-05 03:54:11');
INSERT INTO `wp_tt_vals` VALUES (268, '0_5ed9829f111b81.48877440', 0x7B22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F69642D325B305D223A2231222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F3130222C22646573632D325B305D223A22227D, '0', '2020-06-05 03:54:43', '2020-06-05 03:54:43');
INSERT INTO `wp_tt_vals` VALUES (269, '0_5ed982be96e142.04237711', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-05 03:54:56', '2020-06-05 03:54:56');
INSERT INTO `wp_tt_vals` VALUES (270, '0_5ed982cacceee5.08031367', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303633335C75303634365C7530363261222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D325B305D223A2233222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22315C2F313030222C22646573632D325B305D223A22227D, '0', '2020-06-05 03:55:14', '2020-06-05 03:55:14');
INSERT INTO `wp_tt_vals` VALUES (271, '0_5ed982ead2aa18.54654052', 0x7B22626173655F63757272656E63795F69642D335B305D223A2233222C2265786368616E6765645F63757272656E63795F69642D335B305D223A2231222C22726174652D335B305D223A223137373030222C22646573632D335B305D223A22227D, '0', '2020-06-05 03:55:49', '2020-06-05 03:55:49');
INSERT INTO `wp_tt_vals` VALUES (272, '0_5ed9830633c124.87054541', 0x7B226E616D652D345B305D223A225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437222C22726174652D345B305D223A2239222C22747970652D345B305D223A226578636C7573697665222C22646573632D345B305D223A22227D, '0', '2020-06-05 03:57:01', '2020-06-05 03:57:01');
INSERT INTO `wp_tt_vals` VALUES (273, '0_5ed9834aca4723.33999311', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632375C75303632635C75303632375C75303633315C7530363437205C75303632655C75303634385C75303632665C75303633315C7530363438222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-05 03:57:30', '2020-06-05 03:57:30');
INSERT INTO `wp_tt_vals` VALUES (274, '0_5ed983651f46c1.16633817', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303634315C75303633315C75303634385C7530363334205C75303634345C75303634385C75303632375C75303633325C7530363435222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-05 03:57:39', '2020-06-05 03:57:39');
INSERT INTO `wp_tt_vals` VALUES (275, '0_5ed9836f6abf59.60503122', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632615C75303633395C75303634355C75303663635C75303633315C75303632375C7530363261222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-05 03:57:55', '2020-06-05 03:57:55');
INSERT INTO `wp_tt_vals` VALUES (276, '0_5ed9837d9e4447.65522233', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632655C75303633315C75303663635C7530363266205C75303634345C75303634385C75303632375C75303633325C7530363435222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-05 03:58:15', '2020-06-05 03:58:15');
INSERT INTO `wp_tt_vals` VALUES (277, '0_5ed983923c9223.40211056', 0x7B226E616D652D355B305D223A225C75303632615C75303633395C75303634385C75303663635C7530363336205C75303633315C75303634385C75303633615C7530363436222C22747970652D355B305D223A22657870656E646974757265222C22706172656E745F69642D355B305D223A2233222C22646573632D355B305D223A22227D, '0', '2020-06-05 03:58:32', '2020-06-05 03:58:32');
INSERT INTO `wp_tt_vals` VALUES (278, '0_5ed983b4543ce6.98807930', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-05 03:58:59', '2020-06-05 03:59:00');
INSERT INTO `wp_tt_vals` VALUES (279, '0_5ed983c1148c53.80775919', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303633615C75303663635C7530363331205C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-05 03:59:12', '2020-06-05 03:59:12');
INSERT INTO `wp_tt_vals` VALUES (280, '0_5ed983ca3b7f38.80353192', 0x7B226E616D652D365B305D223A225C75303634365C75303634325C7530363266205C75303632385C7530363437205C75303633315C75303663635C75303632375C7530363434222C22706172656E745F69642D365B305D223A2232222C22646573632D365B305D223A22227D, '0', '2020-06-05 03:59:26', '2020-06-05 03:59:26');
INSERT INTO `wp_tt_vals` VALUES (281, '0_5ed983d8addb46.85603150', 0x7B226E616D652D365B305D223A225C75303661395C75303632375C75303633315C7530363261205C75303632385C7530363437205C75303661395C75303632375C75303633315C7530363261222C22706172656E745F69642D365B305D223A2231222C22646573632D365B305D223A22227D, '0', '2020-06-05 03:59:38', '2020-06-05 03:59:38');
INSERT INTO `wp_tt_vals` VALUES (282, '0_5ed983f2026219.70576577', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:00', '2020-06-05 04:00:00');
INSERT INTO `wp_tt_vals` VALUES (283, '0_5ed983fb031c81.95149587', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303633395C75303634355C75303634385C75303634355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:06', '2020-06-05 04:00:06');
INSERT INTO `wp_tt_vals` VALUES (284, '0_5ed98400c04596.71692364', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632655C75303633355C75303634385C75303633355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:16', '2020-06-05 04:00:16');
INSERT INTO `wp_tt_vals` VALUES (285, '0_5ed9840aaf5107.84440238', 0x7B226E616D652D375B305D223A225C75303633345C75303633315C75303661395C7530363261205C75303632615C75303632635C75303632375C75303633315C7530366363222C22706172656E745F69642D375B305D223A2233222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:32', '2020-06-05 04:00:33');
INSERT INTO `wp_tt_vals` VALUES (286, '0_5ed9841de1b793.45400624', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632635C75303632375C75303633325C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:46', '2020-06-05 04:00:46');
INSERT INTO `wp_tt_vals` VALUES (287, '0_5ed98428333092.29174138', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632645C75303663635C75303633375C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:00:55', '2020-06-05 04:00:55');
INSERT INTO `wp_tt_vals` VALUES (288, '0_5ed9843155a320.36715637', 0x7B226E616D652D375B305D223A225C75303632385C75303663635C75303634345C75303632385C75303634385C75303633315C7530363266222C22706172656E745F69642D375B305D223A2232222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:01:04', '2020-06-05 04:01:04');
INSERT INTO `wp_tt_vals` VALUES (289, '0_5ed98439e51b34.96131495', 0x7B226E616D652D375B305D223A225C75303634385C75303632385C75303633335C75303632375C75303663635C7530363261222C22706172656E745F69642D375B305D223A2231222C22646573632D375B305D223A22227D, '0', '2020-06-05 04:01:14', '2020-06-05 04:01:14');
INSERT INTO `wp_tt_vals` VALUES (290, '0_5ed984475217e4.44137541', 0x7B226E616D652D385B305D223A225C75303634315C75303663635C75303633335C75303632385C75303634385C7530366139222C22646573632D385B305D223A22227D, '0', '2020-06-05 04:01:24', '2020-06-05 04:01:24');
INSERT INTO `wp_tt_vals` VALUES (291, '0_5ed9844eae5ed1.32359856', 0x7B226E616D652D385B305D223A225C75303632375C75303663635C75303634365C75303633335C75303632615C75303632375C75303661665C75303633315C75303632375C7530363435222C22646573632D385B305D223A22227D, '0', '2020-06-05 04:01:36', '2020-06-05 04:01:36');
INSERT INTO `wp_tt_vals` VALUES (292, '0_5ed984e08cc871.51941723', 0x7B227265666572656E63655F706572736F6E5F69642D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303633315C75303661395C7530363261205C75303633315C75303634375C75303637655C75303634385C75303663635C75303632375C7530363436205C75303632615C75303632635C75303632375C75303633315C7530363261205C75303634375C75303663635C75303634385C7530363237222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2234222C226E6174696F6E616C5F69642D395B305D223A22222C226E6174696F6E616C5F69645F322D395B305D223A22222C2262697274685F646174652D395B305D223A22222C227461785F636F64652D395B305D223A22222C2263757272656E63795F69642D395B305D223A2231222C22656D61696C2D395B305D223A22222C22776562736974652D395B305D223A22222C226163717561696E74616E63655F747970655F69642D395B305D223A2233222C22646573632D395B305D223A22227D, '0', '2020-06-05 04:04:39', '2020-06-05 04:04:39');
INSERT INTO `wp_tt_vals` VALUES (293, '0_5ed985120eb7c3.56850462', 0x7B226E616D652D395B305D223A225C75303633345C75303633315C75303661395C7530363261205C75303632375C75303634375C75303634385C75303633315C7530363237205C75303633335C75303634345C75303632375C75303634355C7530363261205C75303661665C75303633335C75303632615C7530363331222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2234222C226E6174696F6E616C5F69642D395B305D223A22222C226E6174696F6E616C5F69645F322D395B305D223A22222C2262697274685F646174652D395B305D223A22222C227461785F636F64652D395B305D223A22222C2263757272656E63795F69642D395B305D223A2231222C22656D61696C2D395B305D223A22222C22776562736974652D395B305D223A22222C227265666572656E63655F706572736F6E5F69642D395B305D223A2231222C226163717561696E74616E63655F747970655F69642D395B305D223A2232222C22646573632D395B305D223A22227D, '0', '2020-06-05 04:05:26', '2020-06-05 04:05:26');
INSERT INTO `wp_tt_vals` VALUES (294, '0_5ed9855ba0b8b2.78713193', 0x7B226C6567616C5F706572736F6E5F747970655F69642D39223A6E756C6C2C226E616D652D395B305D223A225C75303633345C75303633315C75303661395C7530363261205C75303632375C75303634375C75303634385C75303633315C7530363237205C75303633335C75303634345C75303632375C75303634355C7530363261205C75303661665C75303633335C75303632615C7530363331222C226E6174696F6E616C5F69642D395B305D223A22222C226E6174696F6E616C5F69645F322D395B305D223A22222C2262697274685F646174652D395B305D223A22222C227461785F636F64652D395B305D223A22222C2263757272656E63795F69642D395B305D223A2231222C22656D61696C2D395B305D223A22222C22776562736974652D395B305D223A22222C227265666572656E63655F706572736F6E5F69642D395B305D223A2231222C226163717561696E74616E63655F747970655F69642D395B305D223A2231222C22646573632D395B305D223A22227D, '0', '2020-06-05 04:07:17', '2020-06-05 04:07:17');
INSERT INTO `wp_tt_vals` VALUES (295, '0_5ed9864cdec640.23293435', 0x7B226E616D652D395B305D223A225C75303633345C75303633315C75303661395C7530363261205C75303632375C75303634375C75303634385C75303633315C7530363237205C75303633335C75303634345C75303632375C75303634355C7530363261205C75303661665C75303633335C75303632615C7530363331222C226C6567616C5F706572736F6E5F747970655F69642D395B305D223A2234222C226E6174696F6E616C5F69642D395B305D223A22222C226E6174696F6E616C5F69645F322D395B305D223A22222C2262697274685F646174652D395B305D223A22222C227461785F636F64652D395B305D223A22222C2263757272656E63795F69642D395B305D223A2231222C22656D61696C2D395B305D223A22222C22776562736974652D395B305D223A22222C227265666572656E63655F706572736F6E5F69642D395B305D223A2231222C226163717561696E74616E63655F747970655F69642D395B305D223A2232222C22646573632D395B305D223A22227D, '0', '2020-06-05 04:10:06', '2020-06-05 04:10:07');
INSERT INTO `wp_tt_vals` VALUES (296, '0_5ed99d69743579.14229189', 0x7B226E616D652D38223A6E756C6C2C22646573632D38223A6E756C6C7D, '0', '2020-06-05 05:48:44', '2020-06-05 05:48:44');
INSERT INTO `wp_tt_vals` VALUES (297, '0_5ed99df3c1b8a8.62764698', 0x7B226E616D652D395B305D223A225C75303632385C7530366363205C75303633335C75303634385C75303632375C7530363266222C22646573632D395B305D223A22227D, '0', '2020-06-05 05:51:05', '2020-06-05 05:51:05');
INSERT INTO `wp_tt_vals` VALUES (298, '0_5ed99e0bcf7ab0.75005829', 0x7B226E616D652D395B305D223A225C75303633335C75303663635C75303661395C7530363434222C22646573632D395B305D223A22227D, '0', '2020-06-05 05:51:21', '2020-06-05 05:51:21');
INSERT INTO `wp_tt_vals` VALUES (299, '0_5ed99e14ac5b61.59307090', 0x7B226E616D652D395B305D223A225C75303632665C75303663635C75303637655C75303634345C7530363435222C22646573632D395B305D223A22227D, '0', '2020-06-05 05:51:29', '2020-06-05 05:51:29');
INSERT INTO `wp_tt_vals` VALUES (300, '0_5ed99e1b7a05f4.79969947', 0x7B226E616D652D395B305D223A225C75303634345C75303663635C75303633335C75303632375C75303634365C7530363333222C22646573632D395B305D223A22227D, '0', '2020-06-05 05:51:36', '2020-06-05 05:51:36');
INSERT INTO `wp_tt_vals` VALUES (301, '0_5eda29a68b1cd8.05905244', 0x7B227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226E616D652D31305B305D223A225C75303632615C75303633345C75303633315C75303663635C75303634315C75303632375C7530363261205C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C22696D6167655B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F6C6567616C5F706572736F6E5F6C6F676F5C2F305F313539313335353938305F72656E742D6361722E6A7067222C226C6567616C5F706572736F6E5F747970655F69642D31305B305D223A2231222C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D31305B305D223A2231313131313131313131222C226C6567616C5F706572736F6E5F6E6F746172795F69642D31305B305D223A223131313131313131222C2262697274685F646174652D31305B305D223A22313339395C2F30335C2F3036222C226E6174696F6E616C6974792D31305B305D223A2231222C227461785F636F64652D31305B305D223A22313131222C2263757272656E63795F69642D31305B305D223A2231222C22737461747574655F696D6167655B305D223A22687474703A5C2F5C2F6C6F63616C686F73745C2F6E6174696F6E616C5F636172645C2F305F313539313335353938305F494D475F32303139313030325F303030312E6A7067222C22656D61696C2D31305B305D223A22656A617265686B686F64726F40676D61696C2E636F6D222C22776562736974652D31305B305D223A2268747470733A5C2F5C2F656A617265686B686F64726F2E636F6D222C226163717561696E74616E63655F747970655F69642D31305B305D223A2234222C22646573632D31305B305D223A22222C2269735F6C6567616C2D31305B305D223A2231227D, '0', '2020-06-05 15:49:39', '2020-06-05 15:49:40');
INSERT INTO `wp_tt_vals` VALUES (302, '0_5edd14841066f8.57658924', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632375C75303632635C75303632375C75303633315C7530363437205C75303632655C75303634385C75303632665C75303633315C7530363438222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-07 20:53:57', '2020-06-07 20:53:57');
INSERT INTO `wp_tt_vals` VALUES (303, '0_5edd15aeb5c4b6.40182352', 0x7B226E616D652D385B305D223A225C75303634315C75303663635C75303633335C75303632385C75303634385C7530366139222C22646573632D385B305D223A22227D, '0', '2020-06-07 20:58:44', '2020-06-07 20:58:45');
INSERT INTO `wp_tt_vals` VALUES (304, '0_5edd15c49467c5.16976380', 0x7B226E616D652D385B305D223A225C75303632375C75303663635C75303634365C75303633335C75303632615C75303632375C75303661665C75303633315C75303632375C7530363435222C22646573632D385B305D223A22227D, '0', '2020-06-07 20:58:55', '2020-06-07 20:58:55');
INSERT INTO `wp_tt_vals` VALUES (305, '0_5edd15ca92f608.82383354', 0x7B226E616D652D385B305D223A225C75303632615C75303634385C75303663635C75303663635C75303632615C7530363331222C22646573632D385B305D223A22227D, '0', '2020-06-07 20:59:08', '2020-06-07 20:59:08');
INSERT INTO `wp_tt_vals` VALUES (306, '0_5edd1fe9d233a4.75088807', 0x7B226E616D652D395B305D223A225C75303634345C75303663635C75303633335C75303632375C75303634365C7530363333222C22646573632D395B305D223A22227D, '0', '2020-06-07 21:42:17', '2020-06-07 21:42:17');
INSERT INTO `wp_tt_vals` VALUES (307, '0_5edd1ff3ac9391.05731700', 0x7B226E616D652D395B305D223A225C75303632665C75303663635C75303637655C75303634345C7530363435222C22646573632D395B305D223A22227D, '0', '2020-06-07 21:42:23', '2020-06-07 21:42:23');
INSERT INTO `wp_tt_vals` VALUES (308, '0_5ee0242b7ba121.41844066', 0x7B227072223A223134222C2274656D705F6E6174696F6E616C6974792D3130223A5B22646F6D65737469635F636974697A656E225D2C226E616D652D3130223A5B5B225C75303633345C75303634375C75303632375C7530363238225D5D2C226C6173745F6E616D652D3130223A5B5B225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363225D5D2C226E6174696F6E616C5F69642D3130223A5B5B22225D5D2C2262697274685F646174652D3130223A5B5B22225D5D2C2262697274685F706C6163652D3130223A5B5B22225D5D2C226661746865725F6E616D652D3130223A5B5B22225D5D2C226E6174696F6E616C5F69645F322D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F6E6F2D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F69737375655F646174652D3130223A5B5B22225D5D2C2263757272656E63795F69642D3130223A5B5B2231225D5D2C226A6F622D3130223A5B5B22225D5D2C227461785F636F64652D3130223A5B5B22225D5D2C22776562736974652D3130223A5B5B22225D5D2C22656D61696C2D3130223A5B5B22225D5D2C22646573632D3130223A5B5B22225D5D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656530323432623762613132312E3431383434303636222C225F5F7373745F5F646174615F616374696F6E73223A223134222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A7B226E6174696F6E616C5F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C226E6174696F6E616C5F636172645F322D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C2264726976696E675F6C6963656E63655F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D7D7D, '0', '2020-06-10 04:38:12', '2020-06-10 04:38:12');
INSERT INTO `wp_tt_vals` VALUES (309, '0_5ee0249217ba83.76533691', 0x7B227072223A223134222C2274656D705F6E6174696F6E616C6974792D3130223A5B22646F6D65737469635F636974697A656E225D2C226E616D652D3130223A5B5B225C75303633345C75303634375C75303632375C7530363238225D5D2C226C6173745F6E616D652D3130223A5B5B225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363225D5D2C226E6174696F6E616C5F69642D3130223A5B5B22225D5D2C2262697274685F646174652D3130223A5B5B22225D5D2C2262697274685F706C6163652D3130223A5B5B22225D5D2C226661746865725F6E616D652D3130223A5B5B22225D5D2C226E6174696F6E616C5F69645F322D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F6E6F2D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F69737375655F646174652D3130223A5B5B22225D5D2C2263757272656E63795F69642D3130223A5B5B2231225D5D2C226A6F622D3130223A5B5B22225D5D2C227461785F636F64652D3130223A5B5B22225D5D2C22776562736974652D3130223A5B5B22225D5D2C22656D61696C2D3130223A5B5B22225D5D2C22646573632D3130223A5B5B22225D5D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656530323439323137626138332E3736353333363931222C225F5F7373745F5F646174615F616374696F6E73223A223134222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A7B226E6174696F6E616C5F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C226E6174696F6E616C5F636172645F322D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C2264726976696E675F6C6963656E63655F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D7D7D, '0', '2020-06-10 04:38:57', '2020-06-10 04:38:57');
INSERT INTO `wp_tt_vals` VALUES (310, '0_5ee024dfcab9a3.82722515', 0x7B227072223A223134222C2274656D705F6E6174696F6E616C6974792D3130223A5B22646F6D65737469635F636974697A656E225D2C226E616D652D3130223A5B5B225C75303633345C75303634375C75303632375C7530363238225D5D2C226C6173745F6E616D652D3130223A5B5B225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363225D5D2C226E6174696F6E616C5F69642D3130223A5B5B22225D5D2C2262697274685F646174652D3130223A5B5B22225D5D2C2262697274685F706C6163652D3130223A5B5B22225D5D2C226661746865725F6E616D652D3130223A5B5B22225D5D2C226E6174696F6E616C5F69645F322D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F6E6F2D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F69737375655F646174652D3130223A5B5B22225D5D2C2263757272656E63795F69642D3130223A5B5B2231225D5D2C226A6F622D3130223A5B5B22225D5D2C227461785F636F64652D3130223A5B5B22225D5D2C22776562736974652D3130223A5B5B22225D5D2C22656D61696C2D3130223A5B5B22225D5D2C22646573632D3130223A5B5B22225D5D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656530323464666361623961332E3832373232353135222C225F5F7373745F5F646174615F616374696F6E73223A223134222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A7B226E6174696F6E616C5F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C226E6174696F6E616C5F636172645F322D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C2264726976696E675F6C6963656E63655F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D7D7D, '0', '2020-06-10 04:40:16', '2020-06-10 04:40:16');
INSERT INTO `wp_tt_vals` VALUES (311, '0_5ee09aacc3e799.65914887', 0x7B227072223A223136222C22636F756E7472795F69642D3131223A5B2231225D2C2273746174655F6E616D652D3131223A5B225C75303632615C75303634375C75303633315C75303632375C7530363436225D2C2270686F6E655F636F64652D3131223A5B223231225D2C22646573632D3131223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656530396161636333653739392E3635393134383837222C225F5F7373745F5F646174615F616374696F6E73223A223136222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-10 13:03:06', '2020-06-10 13:03:06');
INSERT INTO `wp_tt_vals` VALUES (312, '0_5ee09af96e9402.03436083', 0x7B227072223A223136222C22636F756E7472795F69642D3131223A5B2231225D2C2273746174655F6E616D652D3131223A5B225C75303632615C75303634375C75303633315C75303632375C7530363436225D2C2270686F6E655F636F64652D3131223A5B22303231225D2C22646573632D3131223A5B22225D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656530396166393665393430322E3033343336303833222C225F5F7373745F5F646174615F616374696F6E73223A223136222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-06-10 13:04:09', '2020-06-10 13:04:09');
INSERT INTO `wp_tt_vals` VALUES (313, '0_5ee09b1d2cbed3.77015050', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22303231222C22646573632D31315B305D223A22227D, '0', '2020-06-10 13:04:44', '2020-06-10 13:04:44');
INSERT INTO `wp_tt_vals` VALUES (314, '0_5ee117a378de20.91026918', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22303231222C22646573632D31315B305D223A22227D, '0', '2020-06-10 21:56:06', '2020-06-10 21:56:06');
INSERT INTO `wp_tt_vals` VALUES (315, '0_5ee12637133466.14164659', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303633315C75303634355C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-10 22:58:18', '2020-06-10 22:58:18');
INSERT INTO `wp_tt_vals` VALUES (316, '0_5ee126cdf09d81.53365284', 0x7B22636F756E7472795F69642D31315B305D223A2232222C2273746174655F6E616D652D31315B305D223A225C75303632325C75303634345C75303632375C75303632385C75303632375C75303634355C7530363237222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-10 23:00:48', '2020-06-10 23:00:48');
INSERT INTO `wp_tt_vals` VALUES (317, '0_5ee127073110f1.23038317', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661665C75303634345C75303633335C75303632615C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-10 23:01:43', '2020-06-10 23:01:43');
INSERT INTO `wp_tt_vals` VALUES (318, '0_5ee1277f68bd58.60229864', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303634375C75303634355C75303632665C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-10 23:03:43', '2020-06-10 23:03:43');
INSERT INTO `wp_tt_vals` VALUES (319, '0_5ee1284cc5f863.69849460', 0x7B22636F756E7472792D315B305D223A225C75303661395C75303632375C75303634365C75303632375C75303632665C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-10 23:07:10', '2020-06-10 23:07:10');
INSERT INTO `wp_tt_vals` VALUES (320, '0_5ee128902de1f8.99169460', 0x7B22636F756E7472792D315B305D223A225C75303661395C75303632375C75303634365C75303632375C75303632665C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-10 23:08:15', '2020-06-10 23:08:15');
INSERT INTO `wp_tt_vals` VALUES (321, '0_5ee128de010922.89043441', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303633335C75303637655C75303632375C75303634365C75303663635C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-10 23:09:32', '2020-06-10 23:09:32');
INSERT INTO `wp_tt_vals` VALUES (322, '0_5ee144d2968c31.90532616', 0x7B22636F756E7472792D315B305D223A225C75303663635C75303634385C75303634365C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:08:54', '2020-06-11 01:08:54');
INSERT INTO `wp_tt_vals` VALUES (323, '0_5ee1455bb770d9.53965356', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303661395C75303634385C75303632375C75303632665C75303634385C7530363331222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:11:08', '2020-06-11 01:11:08');
INSERT INTO `wp_tt_vals` VALUES (324, '0_5ee14801918ee7.76347304', 0x7B22636F756E7472792D315B305D223A225C75303633345C75303663635C75303634345C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:22:25', '2020-06-11 01:22:25');
INSERT INTO `wp_tt_vals` VALUES (325, '0_5ee148839fe986.19953340', 0x7B22636F756E7472792D315B305D223A225C75303633315C75303634385C75303633335C75303663635C7530363437222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:24:38', '2020-06-11 01:24:39');
INSERT INTO `wp_tt_vals` VALUES (326, '0_5ee149d0939386.30569830', 0x7B22636F756E7472792D315B305D223A225C75303639385C75303632375C75303637655C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:30:12', '2020-06-11 01:30:12');
INSERT INTO `wp_tt_vals` VALUES (327, '0_5ee149f2afdcc8.21373158', 0x7B22636F756E7472792D315B305D223A225C75303638365C7530366139222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:30:42', '2020-06-11 01:30:42');
INSERT INTO `wp_tt_vals` VALUES (328, '0_5ee14a56dcf521.88548925', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303632615C75303633315C75303663635C7530363334222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:32:25', '2020-06-11 01:32:25');
INSERT INTO `wp_tt_vals` VALUES (329, '0_5ee14a85954086.13457315', 0x7B22636F756E7472792D315B305D223A225C75303634355C75303632375C75303634345C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:33:08', '2020-06-11 01:33:08');
INSERT INTO `wp_tt_vals` VALUES (330, '0_5ee14ab2869349.46577219', 0x7B22636F756E7472792D315B305D223A225C75303632325C75303634345C75303634355C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:33:58', '2020-06-11 01:33:58');
INSERT INTO `wp_tt_vals` VALUES (331, '0_5ee14ad2eee8f6.94314191', 0x7B22636F756E7472792D315B305D223A225C75303634355C75303632375C75303634345C75303633325C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:34:28', '2020-06-11 01:34:28');
INSERT INTO `wp_tt_vals` VALUES (332, '0_5ee14b63c68a69.78694752', 0x7B22636F756E7472792D315B305D223A225C75303637655C75303633315C7530363438222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:36:48', '2020-06-11 01:36:48');
INSERT INTO `wp_tt_vals` VALUES (333, '0_5ee14b72f3c904.63801256', 0x7B22636F756E7472792D315B305D223A225C75303637655C75303633315C7530363438222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:37:04', '2020-06-11 01:37:04');
INSERT INTO `wp_tt_vals` VALUES (334, '0_5ee14b8f473228.02997523', 0x7B22636F756E7472792D315B305D223A225C75303634315C75303633315C75303632375C75303634365C75303633335C7530363437222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:37:35', '2020-06-11 01:37:35');
INSERT INTO `wp_tt_vals` VALUES (335, '0_5ee14cae224886.61696014', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633335C75303634345C75303634365C7530363266222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:42:29', '2020-06-11 01:42:30');
INSERT INTO `wp_tt_vals` VALUES (336, '0_5ee14d129e30f4.21692754', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634365C75303661665C75303634345C75303663635C7530363333222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:44:01', '2020-06-11 01:44:02');
INSERT INTO `wp_tt_vals` VALUES (337, '0_5ee14e8e00a722.92341576', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303633335C75303632615C75303633315C75303632375C75303634345C75303663635C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:50:23', '2020-06-11 01:50:23');
INSERT INTO `wp_tt_vals` VALUES (338, '0_5ee14ebcdfb3a9.99261876', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634365C75303632665C75303634385C75303634365C75303633325C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:51:08', '2020-06-11 01:51:08');
INSERT INTO `wp_tt_vals` VALUES (339, '0_5ee14f11f29333.16682673', 0x7B22636F756E7472792D315B305D223A22656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:52:28', '2020-06-11 01:52:29');
INSERT INTO `wp_tt_vals` VALUES (340, '0_5ee14f7e1a2b90.97101041', 0x7B22636F756E7472792D315B305D223A226167222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:54:19', '2020-06-11 01:54:19');
INSERT INTO `wp_tt_vals` VALUES (341, '0_5ee14f91adc258.79030380', 0x7B22636F756E7472792D315B305D223A2273737373737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:54:37', '2020-06-11 01:54:37');
INSERT INTO `wp_tt_vals` VALUES (342, '0_5ee14fa48cb010.74579996', 0x7B22636F756E7472792D315B305D223A2264646464646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:55:03', '2020-06-11 01:55:03');
INSERT INTO `wp_tt_vals` VALUES (343, '0_5ee14fbdcf6e61.32058549', 0x7B22636F756E7472792D315B305D223A2273737373737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 01:55:43', '2020-06-11 01:55:43');
INSERT INTO `wp_tt_vals` VALUES (344, '0_5ee1520c3424b6.82185144', 0x7B22636F756E7472792D315B305D223A2273737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:05:15', '2020-06-11 02:05:15');
INSERT INTO `wp_tt_vals` VALUES (345, '0_5ee1526d2262c6.88216049', 0x7B22636F756E7472792D315B305D223A22727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:06:48', '2020-06-11 02:06:48');
INSERT INTO `wp_tt_vals` VALUES (346, '0_5ee1528b41d078.58293494', 0x7B22636F756E7472792D315B305D223A2272727272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:07:19', '2020-06-11 02:07:19');
INSERT INTO `wp_tt_vals` VALUES (347, '0_5ee152da94cae8.55802277', 0x7B22636F756E7472792D315B305D223A226464646464646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:08:38', '2020-06-11 02:08:38');
INSERT INTO `wp_tt_vals` VALUES (348, '0_5ee1536a97e117.71246195', 0x7B22636F756E7472792D315B305D223A2265656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:11:01', '2020-06-11 02:11:02');
INSERT INTO `wp_tt_vals` VALUES (349, '0_5ee154b0c2f3e2.63165962', 0x7B22636F756E7472792D315B305D223A227373737361646166222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:16:31', '2020-06-11 02:16:31');
INSERT INTO `wp_tt_vals` VALUES (350, '0_5ee154c4b00603.88214349', 0x7B22636F756E7472792D315B305D223A22737373737373737373646664222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:16:51', '2020-06-11 02:16:51');
INSERT INTO `wp_tt_vals` VALUES (351, '0_5ee156180df8f0.08962041', 0x7B22636F756E7472792D315B305D223A2265776572776572776572222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:22:28', '2020-06-11 02:22:28');
INSERT INTO `wp_tt_vals` VALUES (352, '0_5ee1562dd112c6.57449450', 0x7B22636F756E7472792D315B305D223A22656565656565656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:22:54', '2020-06-11 02:22:54');
INSERT INTO `wp_tt_vals` VALUES (353, '0_5ee1564eb13712.86020019', 0x7B22636F756E7472792D315B305D223A2265776572776572776533222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:23:23', '2020-06-11 02:23:23');
INSERT INTO `wp_tt_vals` VALUES (354, '0_5ee156c5105097.05507529', 0x7B22636F756E7472792D315B305D223A2234353435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:25:21', '2020-06-11 02:25:21');
INSERT INTO `wp_tt_vals` VALUES (355, '0_5ee1576f055ee2.87697974', 0x7B22636F756E7472792D315B305D223A22657772776572773233222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:28:12', '2020-06-11 02:28:12');
INSERT INTO `wp_tt_vals` VALUES (356, '0_5ee1578dde8700.26426180', 0x7B22636F756E7472792D315B305D223A2234343434343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:28:41', '2020-06-11 02:28:41');
INSERT INTO `wp_tt_vals` VALUES (357, '0_5ee158e3aeb650.46899118', 0x7B22636F756E7472792D315B305D223A22343434343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:34:25', '2020-06-11 02:34:25');
INSERT INTO `wp_tt_vals` VALUES (358, '0_5ee15900ba93b7.17925613', 0x7B22636F756E7472792D315B305D223A22776572776572222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:34:52', '2020-06-11 02:34:52');
INSERT INTO `wp_tt_vals` VALUES (359, '0_5ee1591ede28d1.19545374', 0x7B22636F756E7472792D315B305D223A2234333435333435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:35:22', '2020-06-11 02:35:23');
INSERT INTO `wp_tt_vals` VALUES (360, '0_5ee159810df8e5.38723730', 0x7B22636F756E7472792D315B305D223A22736164617364222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:37:01', '2020-06-11 02:37:02');
INSERT INTO `wp_tt_vals` VALUES (361, '0_5ee159df2bee81.08700740', 0x7B22636F756E7472792D315B305D223A22353434353334222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:38:34', '2020-06-11 02:38:34');
INSERT INTO `wp_tt_vals` VALUES (362, '0_5ee15a25c27160.80239325', 0x7B22636F756E7472792D315B305D223A227765727765727765723333333333333333222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:39:45', '2020-06-11 02:39:45');
INSERT INTO `wp_tt_vals` VALUES (363, '0_5ee15afb2caa64.00265694', 0x7B22636F756E7472792D315B305D223A227373737373737373737373737373737361222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 02:43:19', '2020-06-11 02:43:19');
INSERT INTO `wp_tt_vals` VALUES (364, '0_5ee164714b5003.51616494', 0x7B22636F756E7472792D315B305D223A2273737373737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:23:42', '2020-06-11 03:23:44');
INSERT INTO `wp_tt_vals` VALUES (365, '0_5ee164abd19c34.23874390', 0x7B22636F756E7472792D315B305D223A2268736C6C6C222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:24:40', '2020-06-11 03:24:41');
INSERT INTO `wp_tt_vals` VALUES (366, '0_5ee164daac90b2.27874257', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:25:29', '2020-06-11 03:25:29');
INSERT INTO `wp_tt_vals` VALUES (367, '0_5ee1655bf17d40.04488253', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:27:56', '2020-06-11 03:27:56');
INSERT INTO `wp_tt_vals` VALUES (368, '0_5ee1659a1cc636.60028267', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303633335C75303632615C75303633315C75303632375C75303634345C75303663635C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:28:42', '2020-06-11 03:28:43');
INSERT INTO `wp_tt_vals` VALUES (369, '0_5ee1664bb49a29.53092736', 0x7B22636F756E7472792D315B305D223A225C75303638365C75303663635C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:31:46', '2020-06-11 03:31:46');
INSERT INTO `wp_tt_vals` VALUES (370, '0_5ee1669f605e12.30058516', 0x7B22636F756E7472792D315B305D223A225C75303633335C75303663635C75303633315C75303632375C75303634345C75303663635C75303634385C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:33:10', '2020-06-11 03:33:11');
INSERT INTO `wp_tt_vals` VALUES (371, '0_5ee167580e0b72.90420420', 0x7B22636F756E7472792D315B305D223A226565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:36:04', '2020-06-11 03:36:04');
INSERT INTO `wp_tt_vals` VALUES (372, '0_5ee1677cdf4455.00310897', 0x7B22636F756E7472792D315B305D223A22737373737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:36:41', '2020-06-11 03:36:41');
INSERT INTO `wp_tt_vals` VALUES (373, '0_5ee167dfc0d668.14642924', 0x7B22636F756E7472792D315B305D223A2235353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:38:20', '2020-06-11 03:38:20');
INSERT INTO `wp_tt_vals` VALUES (374, '0_5ee168078026d3.14716995', 0x7B22636F756E7472792D315B305D223A226565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:39:00', '2020-06-11 03:39:00');
INSERT INTO `wp_tt_vals` VALUES (375, '0_5ee16823cf8349.68855069', 0x7B22636F756E7472792D315B305D223A227361646673616466222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:39:28', '2020-06-11 03:39:29');
INSERT INTO `wp_tt_vals` VALUES (376, '0_5ee16834f10be3.21247219', 0x7B22636F756E7472792D315B305D223A22657772776572776572222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:39:45', '2020-06-11 03:39:45');
INSERT INTO `wp_tt_vals` VALUES (377, '0_5ee168b8e06c34.09065311', 0x7B22636F756E7472792D315B305D223A22646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:41:58', '2020-06-11 03:41:58');
INSERT INTO `wp_tt_vals` VALUES (378, '0_5ee16ce790e7c2.31301854', 0x7B22636F756E7472792D315B305D223A2264646464646464646464646464646473737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 03:59:48', '2020-06-11 03:59:48');
INSERT INTO `wp_tt_vals` VALUES (379, '0_5ee16d4fb8b725.35578548', 0x7B22636F756E7472792D315B305D223A2265656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:01:31', '2020-06-11 04:01:31');
INSERT INTO `wp_tt_vals` VALUES (380, '0_5ee16d6da39576.66737421', 0x7B22636F756E7472792D315B305D223A2265656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:02:02', '2020-06-11 04:02:02');
INSERT INTO `wp_tt_vals` VALUES (381, '0_5ee16d807150a6.33948942', 0x7B22636F756E7472792D315B305D223A22657274657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:02:19', '2020-06-11 04:02:20');
INSERT INTO `wp_tt_vals` VALUES (382, '0_5ee16d97aa29b7.77540226', 0x7B22636F756E7472792D315B305D223A2272727272727272727272656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:02:48', '2020-06-11 04:02:48');
INSERT INTO `wp_tt_vals` VALUES (383, '0_5ee16dbc63ea68.65406938', 0x7B22636F756E7472792D315B305D223A2273737373737373737373737373616161616161616161616161222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:03:22', '2020-06-11 04:03:22');
INSERT INTO `wp_tt_vals` VALUES (384, '0_5ee16dee91b555.87092491', 0x7B22636F756E7472792D315B305D223A22727272656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:04:11', '2020-06-11 04:04:11');
INSERT INTO `wp_tt_vals` VALUES (385, '0_5ee16e2769b637.86898206', 0x7B22636F756E7472792D315B305D223A226572746572746572222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:05:06', '2020-06-11 04:05:06');
INSERT INTO `wp_tt_vals` VALUES (386, '0_5ee16efea25a51.01448116', 0x7B22636F756E7472792D315B305D223A227272727272727272727265777274726574222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:08:43', '2020-06-11 04:08:43');
INSERT INTO `wp_tt_vals` VALUES (387, '0_5ee16fe523bd34.94356659', 0x7B22636F756E7472792D315B305D223A227272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:12:32', '2020-06-11 04:12:32');
INSERT INTO `wp_tt_vals` VALUES (388, '0_5ee16ffbb9d438.18072685', 0x7B22636F756E7472792D315B305D223A2267676767676767676767222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:12:59', '2020-06-11 04:12:59');
INSERT INTO `wp_tt_vals` VALUES (389, '0_5ee170471274b7.96968120', 0x7B22636F756E7472792D315B305D223A223535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:14:13', '2020-06-11 04:14:13');
INSERT INTO `wp_tt_vals` VALUES (390, '0_5ee1706c9f3353.05843227', 0x7B22636F756E7472792D315B305D223A227364666161736466222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:14:47', '2020-06-11 04:14:48');
INSERT INTO `wp_tt_vals` VALUES (391, '0_5ee170d06aa1b3.82533027', 0x7B22636F756E7472792D315B305D223A223535353535353565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:16:30', '2020-06-11 04:16:30');
INSERT INTO `wp_tt_vals` VALUES (392, '0_5ee170f33e9364.86391304', 0x7B22636F756E7472792D315B305D223A227272727272727272727272726577222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:17:02', '2020-06-11 04:17:02');
INSERT INTO `wp_tt_vals` VALUES (393, '0_5ee17152870493.54987977', 0x7B22636F756E7472792D315B305D223A2265656565656565656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:18:37', '2020-06-11 04:18:37');
INSERT INTO `wp_tt_vals` VALUES (394, '0_5ee171f18f7f14.71153592', 0x7B22636F756E7472792D315B305D223A2234343434343434343333333333333333222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:21:17', '2020-06-11 04:21:17');
INSERT INTO `wp_tt_vals` VALUES (395, '0_5ee172174fdaf4.08125964', 0x7B22636F756E7472792D315B305D223A2234333433343334222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:21:54', '2020-06-11 04:21:55');
INSERT INTO `wp_tt_vals` VALUES (396, '0_5ee172e1811233.29885939', 0x7B22636F756E7472792D315B305D223A226868686868686868222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-11 04:25:22', '2020-06-11 04:25:22');
INSERT INTO `wp_tt_vals` VALUES (397, '0_5ee211bcde1f62.67817620', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-11 15:43:12', '2020-06-11 15:43:12');
INSERT INTO `wp_tt_vals` VALUES (398, '0_5ee5e3f84a28d0.41237017', 0x7B22636F756E7472795F69642D31335B305D223A2231222C22636F756E7472795F69642D31335B315D223A2231222C2273746174655F69642D31335B305D223A2231222C2273746174655F69642D31335B315D223A2232222C22636974795F69642D31335B305D223A2231222C22636974795F69642D31335B315D223A2233222C22617265615F6E616D652D31335B305D223A225C75303634355C75303663635C75303632665C75303632375C7530363436205C75303632375C75303634355C75303632375C7530363435222C22617265615F6E616D652D31335B315D223A225C75303637655C75303632375C7530366363205C75303661395C75303634385C7530363437222C22646573632D31335B305D223A22222C22646573632D31335B315D223A22227D, '0', '2020-06-14 13:22:03', '2020-06-14 13:22:04');
INSERT INTO `wp_tt_vals` VALUES (399, '0_5ee5ed5108f311.13944287', 0x7B2272656C6174696F6E2D31345B305D223A225C75303632385C75303633315C75303632375C75303632665C7530363331222C22646573632D31345B305D223A22227D, '0', '2020-06-14 13:56:48', '2020-06-14 13:56:48');
INSERT INTO `wp_tt_vals` VALUES (400, '0_5ee5f62eeb0a18.15048567', 0x7B22636F756E7472792D315B305D223A225C75303632325C75303634345C75303632385C75303632375C75303634365C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 14:34:40', '2020-06-14 14:34:40');
INSERT INTO `wp_tt_vals` VALUES (401, '0_5ee5f6e6077fb6.46121644', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-14 14:37:42', '2020-06-14 14:37:42');
INSERT INTO `wp_tt_vals` VALUES (402, '0_5ee5f6f12eee60.92612326', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303633615C75303663635C75303633315C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-14 14:37:51', '2020-06-14 14:37:51');
INSERT INTO `wp_tt_vals` VALUES (403, '0_5ee5f6f91da499.75844936', 0x7B226E616D652D365B305D223A225C75303661395C75303632375C75303633315C7530363261205C75303632385C7530363437205C75303661395C75303632375C75303633315C7530363261222C22706172656E745F69642D365B305D223A2231222C22646573632D365B305D223A22227D, '0', '2020-06-14 14:38:00', '2020-06-14 14:38:00');
INSERT INTO `wp_tt_vals` VALUES (404, '0_5ee5f70308ac65.73665720', 0x7B226E616D652D365B305D223A225C75303632655C75303633315C75303663635C7530363266205C75303632375C75303663635C75303634365C75303632615C75303633315C75303634365C75303632615C7530366363222C22706172656E745F69642D365B305D223A2231222C22646573632D365B305D223A22227D, '0', '2020-06-14 14:38:16', '2020-06-14 14:38:16');
INSERT INTO `wp_tt_vals` VALUES (405, '0_5ee5f776ad66e5.55895067', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303633335C75303634345C75303634385C75303634365C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 14:40:06', '2020-06-14 14:40:06');
INSERT INTO `wp_tt_vals` VALUES (406, '0_5ee5f8a975a391.97671453', 0x7B22636F756E7472792D315B305D223A225C75303663635C75303634385C75303634365C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 14:45:15', '2020-06-14 14:45:15');
INSERT INTO `wp_tt_vals` VALUES (407, '0_5ee5fba7be12f7.14403375', 0x7B22636F756E7472792D315B305D223A225C75303663635C75303634385C75303634365C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 14:58:01', '2020-06-14 14:58:01');
INSERT INTO `wp_tt_vals` VALUES (408, '0_5ee5fbd54b3593.41793671', 0x7B22636F756E7472792D315B305D223A225C75303632385C75303632385C75303632385C75303632385C75303632385C75303632385C7530363238222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 14:58:40', '2020-06-14 14:58:40');
INSERT INTO `wp_tt_vals` VALUES (409, '0_5ee5fc477d9605.82889718', 0x7B22636F756E7472792D315B305D223A227272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 15:00:35', '2020-06-14 15:00:35');
INSERT INTO `wp_tt_vals` VALUES (410, '0_5ee62cf761dfc9.95306751', 0x7B22636F756E7472792D315B305D223A227474747474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:28:18', '2020-06-14 18:28:18');
INSERT INTO `wp_tt_vals` VALUES (411, '0_5ee62d7b6f7d24.89985617', 0x7B22636F756E7472792D315B305D223A22727272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:30:31', '2020-06-14 18:30:31');
INSERT INTO `wp_tt_vals` VALUES (412, '0_5ee62f2a8ed689.29047772', 0x7B22636F756E7472792D315B305D223A22353535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:37:44', '2020-06-14 18:37:44');
INSERT INTO `wp_tt_vals` VALUES (413, '0_5ee62f5ad81503.12842338', 0x7B22636F756E7472792D315B305D223A22656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:38:30', '2020-06-14 18:38:31');
INSERT INTO `wp_tt_vals` VALUES (414, '0_5ee62f8152ff94.70443272', 0x7B22636F756E7472792D315B305D223A22656565656565657777777777222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:39:09', '2020-06-14 18:39:09');
INSERT INTO `wp_tt_vals` VALUES (415, '0_5ee62fa0de8fd0.15377056', 0x7B22636F756E7472792D315B305D223A227272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:39:39', '2020-06-14 18:39:40');
INSERT INTO `wp_tt_vals` VALUES (416, '0_5ee62fb0a24496.01651868', 0x7B22636F756E7472792D315B305D223A227272727272727272727272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:39:56', '2020-06-14 18:39:56');
INSERT INTO `wp_tt_vals` VALUES (417, '0_5ee63150117665.16326963', 0x7B22636F756E7472792D315B305D223A22353535353535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 18:46:53', '2020-06-14 18:46:53');
INSERT INTO `wp_tt_vals` VALUES (418, '0_5ee639cd200987.54366103', 0x7B22636F756E7472792D315B305D223A22343434343434343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:23:05', '2020-06-14 19:23:05');
INSERT INTO `wp_tt_vals` VALUES (419, '0_5ee639f30e20c5.88291417', 0x7B22636F756E7472792D315B305D223A22353535353535353535343534222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:23:43', '2020-06-14 19:23:43');
INSERT INTO `wp_tt_vals` VALUES (420, '0_5ee63d40435883.06796120', 0x7B22636F756E7472792D315B305D223A223535353535353535657765222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:37:54', '2020-06-14 19:37:54');
INSERT INTO `wp_tt_vals` VALUES (421, '0_5ee63d72326780.31908085', 0x7B22636F756E7472792D315B305D223A22656565657777657477657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:38:38', '2020-06-14 19:38:38');
INSERT INTO `wp_tt_vals` VALUES (422, '0_5ee63d8ee52a99.46798025', 0x7B22636F756E7472792D315B305D223A2272727272727272727265656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:39:07', '2020-06-14 19:39:07');
INSERT INTO `wp_tt_vals` VALUES (423, '0_5ee63ddf7ac4e9.77749702', 0x7B22636F756E7472792D315B305D223A223434343434343434333433353435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:40:27', '2020-06-14 19:40:28');
INSERT INTO `wp_tt_vals` VALUES (424, '0_5ee63dfc281c92.57585607', 0x7B22636F756E7472792D315B305D223A223433343335343335333435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:40:56', '2020-06-14 19:40:56');
INSERT INTO `wp_tt_vals` VALUES (425, '0_5ee64180ba7218.38474715', 0x7B22636F756E7472792D315B305D223A22646464646464646464737373737373737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 19:55:56', '2020-06-14 19:55:56');
INSERT INTO `wp_tt_vals` VALUES (426, '0_5ee642c0203950.20941902', 0x7B22636F756E7472792D315B305D223A22657777777777777777777777777777777777777765222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:01:16', '2020-06-14 20:01:16');
INSERT INTO `wp_tt_vals` VALUES (427, '0_5ee64555ccdc62.24805758', 0x7B22636F756E7472792D315B305D223A223535353535353535353535353534343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:12:18', '2020-06-14 20:12:18');
INSERT INTO `wp_tt_vals` VALUES (428, '0_5ee645870e7547.54410653', 0x7B22636F756E7472792D315B305D223A2265747274657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:13:06', '2020-06-14 20:13:06');
INSERT INTO `wp_tt_vals` VALUES (429, '0_5ee645b050c134.98393057', 0x7B22636F756E7472792D315B305D223A22727472747972743435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:13:47', '2020-06-14 20:13:48');
INSERT INTO `wp_tt_vals` VALUES (430, '0_5ee645e17d10a5.66581554', 0x7B22636F756E7472792D315B305D223A22343434343434343434343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:14:36', '2020-06-14 20:14:36');
INSERT INTO `wp_tt_vals` VALUES (431, '0_5ee64626a6bbd0.84590602', 0x7B22636F756E7472792D315B305D223A226464646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:15:45', '2020-06-14 20:15:45');
INSERT INTO `wp_tt_vals` VALUES (432, '0_5ee646bbb9eac2.34892351', 0x7B22636F756E7472792D315B305D223A22727272727272727265222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:18:15', '2020-06-14 20:18:15');
INSERT INTO `wp_tt_vals` VALUES (433, '0_5ee648badf57b9.03899306', 0x7B22636F756E7472792D315B305D223A22656565656565656565656565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:26:46', '2020-06-14 20:26:46');
INSERT INTO `wp_tt_vals` VALUES (434, '0_5ee648d2c1e777.13503483', 0x7B22636F756E7472792D315B305D223A226565656565656565656565656565656577222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:27:09', '2020-06-14 20:27:09');
INSERT INTO `wp_tt_vals` VALUES (435, '0_5ee6494701dee8.44905915', 0x7B22636F756E7472792D315B305D223A22727272727272727274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:29:06', '2020-06-14 20:29:06');
INSERT INTO `wp_tt_vals` VALUES (436, '0_5ee649896081c9.38554130', 0x7B22636F756E7472792D315B305D223A2234343434343434343434343434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:30:13', '2020-06-14 20:30:13');
INSERT INTO `wp_tt_vals` VALUES (437, '0_5ee649f928dd65.60820393', 0x7B22636F756E7472792D315B305D223A223535353535353534222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:32:05', '2020-06-14 20:32:05');
INSERT INTO `wp_tt_vals` VALUES (438, '0_5ee64a43e73de5.14646748', 0x7B22636F756E7472792D315B305D223A2265777777777777777777777777222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:33:19', '2020-06-14 20:33:19');
INSERT INTO `wp_tt_vals` VALUES (439, '0_5ee64bee7c8e58.44191201', 0x7B22636F756E7472792D315B305D223A226464646464645C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 20:40:26', '2020-06-14 20:40:26');
INSERT INTO `wp_tt_vals` VALUES (440, '0_5ee65b5beee671.07101999', 0x7B22636F756E7472792D315B305D223A225C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C7530363262222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-14 21:46:15', '2020-06-14 21:46:15');
INSERT INTO `wp_tt_vals` VALUES (441, '0_5ee6b272529491.02716852', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A223938222C22646573632D315B305D223A22227D, '0', '2020-06-15 03:57:58', '2020-06-15 03:57:58');
INSERT INTO `wp_tt_vals` VALUES (442, '0_5ee6b282394367.80497878', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A2231222C22646573632D315B305D223A22227D, '0', '2020-06-15 03:58:14', '2020-06-15 03:58:14');
INSERT INTO `wp_tt_vals` VALUES (443, '0_5ee6b291f00df7.86118646', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-15 03:58:27', '2020-06-15 03:58:27');
INSERT INTO `wp_tt_vals` VALUES (444, '0_5ee6b29f374a94.93227058', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-15 03:58:50', '2020-06-15 03:58:51');
INSERT INTO `wp_tt_vals` VALUES (446, '0_5ee6b2d137c017.82866242', 0x7B22626173655F63757272656E63795F69642D335B305D223A2232222C2265786368616E6765645F63757272656E63795F69642D335B305D223A2231222C22726174652D335B305D223A22313830303030222C22646573632D335B305D223A22227D, '0', '2020-06-15 03:59:41', '2020-06-15 03:59:41');
INSERT INTO `wp_tt_vals` VALUES (447, '0_5ee6b2ea8228a3.60579984', 0x7B226E616D652D345B305D223A225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437222C22726174652D345B305D223A2239222C22747970652D345B305D223A226578636C7573697665222C22646573632D345B305D223A22227D, '0', '2020-06-15 04:00:07', '2020-06-15 04:00:08');
INSERT INTO `wp_tt_vals` VALUES (448, '0_5ee6b303d27473.16659980', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632375C75303632635C75303632375C75303633315C7530363437205C75303632655C75303634385C75303632665C75303633315C7530363438222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:00:18', '2020-06-15 04:00:18');
INSERT INTO `wp_tt_vals` VALUES (449, '0_5ee6b30d1313f8.78593987', 0x7B226E616D652D355B305D223A225C75303632375C75303633365C75303632375C75303634315C7530363437205C75303661395C75303663635C75303634345C75303634385C75303634355C75303632615C7530363331222C22747970652D355B305D223A22696E636F6D65222C22706172656E745F69642D355B305D223A2231222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:00:35', '2020-06-15 04:00:35');
INSERT INTO `wp_tt_vals` VALUES (450, '0_5ee6b31da3b4b3.70086142', 0x7B226E616D652D355B305D223A225C75303632655C75303633335C75303632375C75303633315C7530363261222C22747970652D355B305D223A22696E636F6D65222C22706172656E745F69642D355B305D223A2231222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:00:46', '2020-06-15 04:00:46');
INSERT INTO `wp_tt_vals` VALUES (451, '0_5ee6b3295f0f23.02479492', 0x7B226E616D652D355B305D223A225C75303632375C75303663635C75303632375C7530363238205C7530363438205C75303633305C75303634375C75303632375C7530363238222C22747970652D355B305D223A22696E636F6D65222C22706172656E745F69642D355B305D223A2231222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:01:01', '2020-06-15 04:01:01');
INSERT INTO `wp_tt_vals` VALUES (452, '0_5ee6b339104422.54172396', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632385C75303663635C75303634355C7530363437205C75303632385C75303632665C75303634365C7530363437222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:02:59', '2020-06-15 04:02:59');
INSERT INTO `wp_tt_vals` VALUES (453, '0_5ee6b3ad7ab1c3.35354605', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632655C75303633315C75303663635C7530363266205C75303632655C75303634385C75303632665C75303633315C7530363438222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-15 04:03:09', '2020-06-15 04:03:09');
INSERT INTO `wp_tt_vals` VALUES (454, '0_5ee6b3c81121f9.42271167', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-15 04:03:34', '2020-06-15 04:03:34');
INSERT INTO `wp_tt_vals` VALUES (455, '0_5ee6b3d16f28f2.18122752', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303634365C75303634325C75303632665C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-15 04:03:48', '2020-06-15 04:03:48');
INSERT INTO `wp_tt_vals` VALUES (456, '0_5ee6b3e1c648b7.93203985', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-15 04:04:01', '2020-06-15 04:04:01');
INSERT INTO `wp_tt_vals` VALUES (457, '0_5ee6b3ec10c747.28585688', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632655C75303633355C75303634385C75303633355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-15 04:04:10', '2020-06-15 04:04:10');
INSERT INTO `wp_tt_vals` VALUES (458, '0_5ee6b3f4570f80.09925073', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303633395C75303634355C75303634385C75303634355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-15 04:04:20', '2020-06-15 04:04:20');
INSERT INTO `wp_tt_vals` VALUES (459, '0_5ee6b40298bf65.39262669', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632635C75303632375C75303633325C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-15 04:04:33', '2020-06-15 04:04:33');
INSERT INTO `wp_tt_vals` VALUES (460, '0_5ee6b40c2b1220.61526103', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632645C75303663635C75303633375C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-15 04:04:42', '2020-06-15 04:04:42');
INSERT INTO `wp_tt_vals` VALUES (461, '0_5ee6b415a48f69.00971060', 0x7B226E616D652D385B305D223A225C75303634315C75303663635C75303633335C75303632385C75303634385C7530366139222C22646573632D385B305D223A22227D, '0', '2020-06-15 04:04:50', '2020-06-15 04:04:50');
INSERT INTO `wp_tt_vals` VALUES (462, '0_5ee6b41e217de0.97809580', 0x7B226E616D652D385B305D223A225C75303632375C75303663635C75303634365C75303633335C75303632615C75303632375C75303661665C75303633315C75303632375C7530363435222C22646573632D385B305D223A22227D, '0', '2020-06-15 04:04:58', '2020-06-15 04:04:58');
INSERT INTO `wp_tt_vals` VALUES (463, '0_5ee6b426743214.72623668', 0x7B226E616D652D395B305D223A225C75303634345C75303663635C75303633335C75303632375C75303634365C7530363333222C22646573632D395B305D223A22227D, '0', '2020-06-15 04:05:08', '2020-06-15 04:05:08');
INSERT INTO `wp_tt_vals` VALUES (464, '0_5ee6b446b693f0.84084617', 0x7B227072223A223135222C2274656D705F6E6174696F6E616C6974792D3130223A5B22646F6D65737469635F636974697A656E225D2C226E616D652D3130223A5B5B225C75303633345C75303634375C75303632375C7530363238225D5D2C226C6173745F6E616D652D3130223A5B5B225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363225D5D2C226E6174696F6E616C5F69642D3130223A5B5B22225D5D2C2262697274685F646174652D3130223A5B5B22225D5D2C2262697274685F706C6163652D3130223A5B5B22225D5D2C226661746865725F6E616D652D3130223A5B5B22225D5D2C226E6174696F6E616C5F69645F322D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F6E6F2D3130223A5B5B22225D5D2C2264726976696E675F6C6963656E63655F69737375655F646174652D3130223A5B5B22225D5D2C2263757272656E63795F69642D3130223A5B5B2231225D5D2C226A6F622D3130223A5B5B22225D5D2C227461785F636F64652D3130223A5B5B22225D5D2C22776562736974652D3130223A5B5B22225D5D2C22656D61696C2D3130223A5B5B22225D5D2C22646573632D3130223A5B5B22225D5D2C225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35656536623434366236393366302E3834303834363137222C225F5F7373745F5F646174615F616374696F6E73223A223135222C225F5F7373745F5F6D6F6465223A22616464222C225F5F7373745F5F66696C6573223A7B226E6174696F6E616C5F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C226E6174696F6E616C5F636172645F322D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D2C2264726976696E675F6C6963656E63655F636172642D3130223A7B226E616D65223A5B5B22225D5D2C2274797065223A5B5B22225D5D2C22746D705F6E616D65223A5B5B22225D5D2C226572726F72223A5B5B345D5D2C2273697A65223A5B5B305D5D7D7D7D, '0', '2020-06-15 04:06:02', '2020-06-15 04:06:02');
INSERT INTO `wp_tt_vals` VALUES (465, '0_5ee77b10059d25.26518595', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 18:17:16', '2020-06-15 18:17:16');
INSERT INTO `wp_tt_vals` VALUES (466, '0_5ee7a9605c1426.79696455', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:31:33', '2020-06-15 21:31:33');
INSERT INTO `wp_tt_vals` VALUES (467, '0_5ee7a98e6778b5.52369227', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:32:13', '2020-06-15 21:32:13');
INSERT INTO `wp_tt_vals` VALUES (468, '0_5ee7aa8590e970.50797182', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:36:27', '2020-06-15 21:36:27');
INSERT INTO `wp_tt_vals` VALUES (469, '0_5ee7aaabad02e6.11576475', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:37:03', '2020-06-15 21:37:03');
INSERT INTO `wp_tt_vals` VALUES (470, '0_5ee7ab8ed0e193.46910151', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:40:51', '2020-06-15 21:40:51');
INSERT INTO `wp_tt_vals` VALUES (471, '0_5ee7ac07356143.79264896', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:42:48', '2020-06-15 21:42:48');
INSERT INTO `wp_tt_vals` VALUES (472, '0_5ee7ac8172d175.29673829', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-15 21:44:51', '2020-06-15 21:44:52');
INSERT INTO `wp_tt_vals` VALUES (473, '0_5ee897544d3761.74064545', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-16 14:26:50', '2020-06-16 14:26:50');
INSERT INTO `wp_tt_vals` VALUES (474, '0_5ee8976b10f935.50575745', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303661395C75303634355C75303663635C7530363434222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-16 14:27:16', '2020-06-16 14:27:17');
INSERT INTO `wp_tt_vals` VALUES (475, '0_5ee89789647f39.44450059', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633315C75303633365C7530363237222C226C6173745F6E616D652D31305B305D5B305D223A225C75303632375C75303634355C75303663635C75303634365C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-16 14:28:20', '2020-06-16 14:28:20');
INSERT INTO `wp_tt_vals` VALUES (476, '0_5eea7c1e3813b2.72354373', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-18 00:55:08', '2020-06-18 00:55:08');
INSERT INTO `wp_tt_vals` VALUES (477, '0_5eea7c26c33751.12341300', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-18 00:55:16', '2020-06-18 00:55:16');
INSERT INTO `wp_tt_vals` VALUES (478, '0_5eea7c35eb1d52.27339814', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-18 00:55:44', '2020-06-18 00:55:44');
INSERT INTO `wp_tt_vals` VALUES (479, '0_5eea7c4ab5dda4.54586817', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A2224222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-18 00:56:08', '2020-06-18 00:56:08');
INSERT INTO `wp_tt_vals` VALUES (480, '0_5eea7c647f7561.13808938', 0x7B22626173655F63757272656E63795F69642D335B305D223A2232222C2265786368616E6765645F63757272656E63795F69642D335B305D223A2231222C22726174652D335B305D223A22313830303030222C22646573632D335B305D223A22227D, '0', '2020-06-18 00:56:34', '2020-06-18 00:56:34');
INSERT INTO `wp_tt_vals` VALUES (481, '0_5eea7c7e033de2.93856440', 0x7B226E616D652D345B305D223A225C75303634355C75303632375C75303634345C75303663635C75303632375C7530363261205C75303632385C7530363331205C75303632375C75303633315C75303633325C7530363334205C75303632375C75303634315C75303633325C75303634385C75303632665C7530363437222C22726174652D345B305D223A2239222C22747970652D345B305D223A22696E636C7573697665222C22646573632D345B305D223A22227D, '0', '2020-06-18 00:56:46', '2020-06-18 00:56:46');
INSERT INTO `wp_tt_vals` VALUES (482, '0_5eea7c893e0d10.93553335', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632375C75303632635C75303632375C75303633315C7530363437205C75303632655C75303634385C75303632665C75303633315C7530363438222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-18 00:56:56', '2020-06-18 00:56:57');
INSERT INTO `wp_tt_vals` VALUES (483, '0_5eea7c937805b8.49652264', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632665C75303632375C75303634355C75303632665C75303632375C75303633315C7530366363222C22747970652D355B305D223A22696E636F6D65222C22646573632D355B305D223A22227D, '0', '2020-06-18 00:57:07', '2020-06-18 00:57:07');
INSERT INTO `wp_tt_vals` VALUES (484, '0_5eea7c9e6d0933.07890113', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303633395C75303634345C75303634385C75303634315C7530363437222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-18 00:57:28', '2020-06-18 00:57:28');
INSERT INTO `wp_tt_vals` VALUES (485, '0_5eea7cb2e91923.16821060', 0x7B22706172656E745F69642D35223A6E756C6C2C226E616D652D355B305D223A225C75303632615C75303633395C75303634355C75303663635C75303633315C75303632375C7530363261222C22747970652D355B305D223A22657870656E646974757265222C22646573632D355B305D223A22227D, '0', '2020-06-18 00:57:44', '2020-06-18 00:57:44');
INSERT INTO `wp_tt_vals` VALUES (486, '0_5eea7cc4b176a6.40788229', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303632385C75303632375C75303634365C75303661395C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-18 00:57:54', '2020-06-18 00:57:54');
INSERT INTO `wp_tt_vals` VALUES (487, '0_5eea7ccc648901.89950545', 0x7B22706172656E745F69642D36223A6E756C6C2C226E616D652D365B305D223A225C75303634365C75303634325C75303632665C7530366363222C22646573632D365B305D223A22227D, '0', '2020-06-18 00:58:01', '2020-06-18 00:58:01');
INSERT INTO `wp_tt_vals` VALUES (488, '0_5eea7cd45d60d6.51602609', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632665C75303634385C75303634345C75303632615C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-18 00:58:09', '2020-06-18 00:58:09');
INSERT INTO `wp_tt_vals` VALUES (489, '0_5eea7cdbdae9b4.45471668', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303632655C75303633355C75303634385C75303633355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-18 00:58:17', '2020-06-18 00:58:17');
INSERT INTO `wp_tt_vals` VALUES (490, '0_5eea7ce3883801.74462988', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303633395C75303634355C75303634385C75303634355C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-18 00:58:24', '2020-06-18 00:58:24');
INSERT INTO `wp_tt_vals` VALUES (491, '0_5eea7ced6c3cc9.37778613', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632635C75303632375C75303633325C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-18 00:58:35', '2020-06-18 00:58:35');
INSERT INTO `wp_tt_vals` VALUES (492, '0_5eea7cf58082a7.17816313', 0x7B22706172656E745F69642D37223A6E756C6C2C226E616D652D375B305D223A225C75303634355C75303632645C75303663635C75303633375C7530366363222C22646573632D375B305D223A22227D, '0', '2020-06-18 00:58:45', '2020-06-18 00:58:45');
INSERT INTO `wp_tt_vals` VALUES (493, '0_5eea7d014b6680.08936204', 0x7B226E616D652D385B305D223A225C75303632615C75303634385C75303663635C75303663635C75303632615C7530363331222C22646573632D385B305D223A22227D, '0', '2020-06-18 00:58:57', '2020-06-18 00:58:57');
INSERT INTO `wp_tt_vals` VALUES (494, '0_5eea7d0c4ae2f6.96187838', 0x7B226E616D652D395B305D223A225C75303634345C75303663635C75303633335C75303632375C75303634365C7530363333222C22646573632D395B305D223A22227D, '0', '2020-06-18 00:59:05', '2020-06-18 00:59:05');
INSERT INTO `wp_tt_vals` VALUES (495, '0_5eea7d250b20c7.16287702', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D5B305D223A225C75303633345C75303634375C75303632375C7530363238222C226C6173745F6E616D652D31305B305D5B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D5B305D223A22222C2262697274685F646174652D31305B305D5B305D223A22222C2262697274685F706C6163652D31305B305D5B305D223A22222C226661746865725F6E616D652D31305B305D5B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D5B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D5B305D223A22222C2263757272656E63795F69642D31305B305D5B305D223A2231222C227461785F636F64652D31305B305D5B305D223A22222C226A6F622D31305B305D5B305D223A22222C22656D61696C2D31305B305D5B305D223A22222C22776562736974652D31305B305D5B305D223A22222C22646573632D31305B305D5B305D223A22227D, '0', '2020-06-18 00:59:38', '2020-06-18 00:59:38');
INSERT INTO `wp_tt_vals` VALUES (496, '0_5eed72cd824c27.88224831', 0x7B22636F756E7472792D315B305D223A225C75303661395C75303632375C75303634365C75303632375C75303632665C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 06:52:14', '2020-06-20 06:52:14');
INSERT INTO `wp_tt_vals` VALUES (497, '0_5eed7347000095.29096604', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2233222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 06:54:18', '2020-06-20 06:54:18');
INSERT INTO `wp_tt_vals` VALUES (498, '0_5eed73850e30e6.02985336', 0x7B22636F756E7472795F69642D31315B305D223A2233222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303632385C7530366139222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-20 06:55:17', '2020-06-20 06:55:17');
INSERT INTO `wp_tt_vals` VALUES (499, '0_5eede669a41972.47278382', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:05:39', '2020-06-20 15:05:39');
INSERT INTO `wp_tt_vals` VALUES (500, '0_5eede68e257f15.65703819', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633345C75303632375C75303634375C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:06:06', '2020-06-20 15:06:06');
INSERT INTO `wp_tt_vals` VALUES (501, '0_5eede7b3871468.42178334', 0x7B22636F756E7472792D315B305D223A225C75303663635C75303634385C75303634365C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 15:11:02', '2020-06-20 15:11:02');
INSERT INTO `wp_tt_vals` VALUES (502, '0_5eede7e2d03931.71218394', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2234222C2263757272656E63792D325B305D223A225C75303663635C75303634385C75303633315C7530363438222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:11:50', '2020-06-20 15:11:50');
INSERT INTO `wp_tt_vals` VALUES (503, '0_5eede80e3b9dd8.64589627', 0x7B22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633345C75303632375C7530366363222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C2263757272656E63795F7369676E5F706F736974696F6E2D325B305D223A226C656674222C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:12:31', '2020-06-20 15:12:31');
INSERT INTO `wp_tt_vals` VALUES (504, '0_5eede87a12c406.22399667', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:14:18', '2020-06-20 15:14:18');
INSERT INTO `wp_tt_vals` VALUES (505, '0_5eede9bd237711.67383531', 0x7B22636F756E7472792D315B305D223A225C75303634345C75303663635C75303632385C7530366363222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 15:19:39', '2020-06-20 15:19:39');
INSERT INTO `wp_tt_vals` VALUES (506, '0_5eedea8042b089.28131677', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C7530363262222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:22:53', '2020-06-20 15:22:53');
INSERT INTO `wp_tt_vals` VALUES (507, '0_5eedea9ab56431.01674672', 0x7B22636F756E7472792D315B305D223A225C75303634325C75303634325C75303634325C7530363432222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 15:23:17', '2020-06-20 15:23:17');
INSERT INTO `wp_tt_vals` VALUES (508, '0_5eedeaa3a69613.90738406', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C75303632625C7530363262222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:23:35', '2020-06-20 15:23:35');
INSERT INTO `wp_tt_vals` VALUES (509, '0_5eedf255ea3a13.61313154', 0x7B22636F756E7472792D315B305D223A225C75303634345C75303634345C75303634345C75303634345C75303634345C7530363434222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 15:56:19', '2020-06-20 15:56:20');
INSERT INTO `wp_tt_vals` VALUES (510, '0_5eedf25286df00.72152392', 0x7B22636F756E7472795F69642D32223A2237222C2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:56:33', '2020-06-20 15:56:33');
INSERT INTO `wp_tt_vals` VALUES (511, '0_5eedf2876d9740.49929827', 0x7B22636F756E7472792D315B305D223A225C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 15:57:06', '2020-06-20 15:57:06');
INSERT INTO `wp_tt_vals` VALUES (512, '0_5eedf2855f18c2.12228481', 0x7B22636F756E7472795F69642D32223A2238222C2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C2263757272656E63792D325B305D223A225C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C75303633335C7530363333222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 15:57:14', '2020-06-20 15:57:14');
INSERT INTO `wp_tt_vals` VALUES (513, '0_5eee0734d4a717.85055003', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 17:25:24', '2020-06-20 17:25:24');
INSERT INTO `wp_tt_vals` VALUES (514, '0_5eee074511c4f4.78919751', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:25:41', '2020-06-20 17:25:41');
INSERT INTO `wp_tt_vals` VALUES (515, '0_5eee07e8c170e8.17188143', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303632615C75303634385C75303634355C75303632375C7530363436222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:28:21', '2020-06-20 17:28:21');
INSERT INTO `wp_tt_vals` VALUES (516, '0_5eee0824e99557.88444688', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:29:22', '2020-06-20 17:29:22');
INSERT INTO `wp_tt_vals` VALUES (517, '0_5eee089488bd78.68626891', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2272727272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:31:14', '2020-06-20 17:31:14');
INSERT INTO `wp_tt_vals` VALUES (518, '0_5eee08edd4fde6.67004684', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A223434343434343434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:32:43', '2020-06-20 17:32:43');
INSERT INTO `wp_tt_vals` VALUES (519, '0_5eee093c2a37c9.08481132', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A226464646464222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:34:01', '2020-06-20 17:34:01');
INSERT INTO `wp_tt_vals` VALUES (520, '0_5eee09605dc576.13446377', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22727272727272727272222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 17:34:36', '2020-06-20 17:34:36');
INSERT INTO `wp_tt_vals` VALUES (521, '0_5eee127e6eaa38.84641827', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 18:13:30', '2020-06-20 18:13:30');
INSERT INTO `wp_tt_vals` VALUES (522, '0_5eee1289da6544.37361607', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2232222C2263757272656E63792D325B305D223A225C75303632665C75303634345C75303632375C7530363331222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 18:13:46', '2020-06-20 18:13:46');
INSERT INTO `wp_tt_vals` VALUES (523, '0_5eee1312a7d1c8.14036805', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 18:15:59', '2020-06-20 18:15:59');
INSERT INTO `wp_tt_vals` VALUES (524, '0_5eee1480a3e1b2.06800523', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A2265656565656565222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 18:22:05', '2020-06-20 18:22:05');
INSERT INTO `wp_tt_vals` VALUES (525, '0_5eee29ecddf159.04444826', 0x7B22636F756E7472792D315B305D223A2274747474747474747474727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-20 19:53:28', '2020-06-20 19:53:28');
INSERT INTO `wp_tt_vals` VALUES (526, '0_5eee2a0f89f1a2.11560070', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A22222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 19:54:06', '2020-06-20 19:54:06');
INSERT INTO `wp_tt_vals` VALUES (527, '0_5eee2aacd28a11.80561007', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A223434343434343434343433222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 19:56:41', '2020-06-20 19:56:41');
INSERT INTO `wp_tt_vals` VALUES (528, '0_5eee2ace484665.36285637', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A226565656577777777777777222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-06-20 19:57:15', '2020-06-20 19:57:15');
INSERT INTO `wp_tt_vals` VALUES (529, '0_5eee318033f3e5.67683868', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303633315C75303634355C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-20 20:25:57', '2020-06-20 20:25:57');
INSERT INTO `wp_tt_vals` VALUES (530, '0_5eee31ec332a23.33613598', 0x7B22636F756E7472795F69642D31325B305D223A2231222C2273746174655F69642D31325B305D223A2231222C22636974795F6E616D652D31325B305D223A225C75303632385C75303632375C75303634315C7530363432222C2270686F6E655F636F64652D31325B305D223A22222C22646573632D31325B305D223A22227D, '0', '2020-06-20 20:27:43', '2020-06-20 20:27:43');
INSERT INTO `wp_tt_vals` VALUES (531, '0_5eee321235d3a8.77428453', 0x7B2272656C6174696F6E2D31345B305D223A225C75303632385C75303633315C75303632375C75303632665C7530363331222C2272656C6174696F6E2D31345B315D223A225C75303632655C75303634385C75303632375C75303634375C7530363331222C22646573632D31345B305D223A22222C22646573632D31345B315D223A22227D, '0', '2020-06-20 20:28:20', '2020-06-20 20:28:20');
INSERT INTO `wp_tt_vals` VALUES (532, '0_5eee3228917b53.31281766', 0x7B226A6F622D31355B305D223A225C75303632665C75303661395C75303632615C7530363331205C75303632665C75303634365C75303632665C75303632375C75303634365C75303637655C75303633325C75303633345C7530366139222C22646573632D31355B305D223A22227D, '0', '2020-06-20 20:28:42', '2020-06-20 20:28:42');
INSERT INTO `wp_tt_vals` VALUES (533, '0_5ef1c58ed42fe6.17422716', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:34:19', '2020-06-23 13:34:19');
INSERT INTO `wp_tt_vals` VALUES (534, '0_5ef1c5b5c46280.45242851', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2272727272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:34:58', '2020-06-23 13:35:00');
INSERT INTO `wp_tt_vals` VALUES (535, '0_5ef1c5d1c84d66.49226910', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A226565656565656565222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:35:26', '2020-06-23 13:35:26');
INSERT INTO `wp_tt_vals` VALUES (536, '0_5ef1c5e4e75c19.50301072', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2272727272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:35:45', '2020-06-23 13:35:45');
INSERT INTO `wp_tt_vals` VALUES (537, '0_5ef1c5f5860fc8.18683474', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2272657265747265746572222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:36:02', '2020-06-23 13:36:02');
INSERT INTO `wp_tt_vals` VALUES (538, '0_5ef1c63a3e9020.80805748', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22657274657274657274222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 13:37:09', '2020-06-23 13:37:09');
INSERT INTO `wp_tt_vals` VALUES (539, '0_5ef1cec1cd1b48.20614828', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A227373737373737373222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-23 14:13:45', '2020-06-23 14:13:45');
INSERT INTO `wp_tt_vals` VALUES (540, '0_5ef1cf27190155.18856212', 0x7B22636F756E7472792D315B305D223A225C75303634355C75303632375C75303634345C75303632665C75303663635C7530363438222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-23 14:15:25', '2020-06-23 14:15:25');
INSERT INTO `wp_tt_vals` VALUES (541, '0_5ef70638d1bc86.07046101', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A227373737373737373222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-27 13:11:33', '2020-06-27 13:11:33');
INSERT INTO `wp_tt_vals` VALUES (542, '0_5ef8c06ae4aeb0.96404326', 0x7B22636F756E7472792D315B305D223A22747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 20:38:14', '2020-06-28 20:38:14');
INSERT INTO `wp_tt_vals` VALUES (543, '0_5ef8c08c1f9913.64198736', 0x7B22636F756E7472792D315B305D223A227272727272727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 20:38:47', '2020-06-28 20:38:47');
INSERT INTO `wp_tt_vals` VALUES (544, '0_5ef8c82265bd07.49628460', 0x7B22636F756E7472792D315B305D223A22545454545452525252525252222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 21:11:09', '2020-06-28 21:11:09');
INSERT INTO `wp_tt_vals` VALUES (545, '0_5ef8c8437b1f89.05775417', 0x7B22636F756E7472792D315B305D223A2274747274727479727974222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 21:11:45', '2020-06-28 21:11:45');
INSERT INTO `wp_tt_vals` VALUES (546, '0_5ef8c861792b91.85543268', 0x7B22636F756E7472792D315B305D223A22727272727272726565656565222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 21:12:12', '2020-06-28 21:12:12');
INSERT INTO `wp_tt_vals` VALUES (547, '0_5ef8c86fe162e6.86765493', 0x7B22636F756E7472792D315B305D223A22727272727272657274657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 21:12:27', '2020-06-28 21:12:27');
INSERT INTO `wp_tt_vals` VALUES (548, '0_5ef8c8cdbbfd92.86384660', 0x7B22636F756E7472792D315B305D223A22646464646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-28 21:14:01', '2020-06-28 21:14:01');
INSERT INTO `wp_tt_vals` VALUES (549, '0_5ef8cad71748c5.64416894', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22646464646464647364736473222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-28 21:22:46', '2020-06-28 21:22:46');
INSERT INTO `wp_tt_vals` VALUES (550, '0_5ef8cb1c4345f9.08894289', 0x7B22636F756E7472795F69642D31315B305D223A2235222C2273746174655F6E616D652D31315B305D223A2265656565656565222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-28 21:23:53', '2020-06-28 21:23:53');
INSERT INTO `wp_tt_vals` VALUES (551, '0_5ef8cb50ee0a84.44301484', 0x7B22636F756E7472795F69642D31315B305D223A2235222C2273746174655F6E616D652D31315B305D223A2265656565656565656565656565222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-28 21:24:48', '2020-06-28 21:24:48');
INSERT INTO `wp_tt_vals` VALUES (552, '0_5ef8cb7777c3e7.09754160', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2272727272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-28 21:25:23', '2020-06-28 21:25:23');
INSERT INTO `wp_tt_vals` VALUES (553, '0_5ef8eff9286c83.34709777', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2273737373737373737373222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:01:10', '2020-06-29 00:01:10');
INSERT INTO `wp_tt_vals` VALUES (554, '0_5ef8f08c65d537.71643017', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2234343434343434343434222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:03:36', '2020-06-29 00:03:36');
INSERT INTO `wp_tt_vals` VALUES (555, '0_5ef8f0ee4f07b0.08591446', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22343534333435333435333435333435222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:05:15', '2020-06-29 00:05:15');
INSERT INTO `wp_tt_vals` VALUES (556, '0_5ef8f114ebeb45.34457319', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 00:05:57', '2020-06-29 00:05:57');
INSERT INTO `wp_tt_vals` VALUES (557, '0_5ef8f12ece6f23.56791861', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 00:06:21', '2020-06-29 00:06:21');
INSERT INTO `wp_tt_vals` VALUES (558, '0_5ef8f143d85573.73280716', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303633315C75303634355C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:06:43', '2020-06-29 00:06:43');
INSERT INTO `wp_tt_vals` VALUES (559, '0_5ef8f15b812dc8.01149488', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:07:09', '2020-06-29 00:07:09');
INSERT INTO `wp_tt_vals` VALUES (560, '0_5ef8f193260758.05946416', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632375C75303634345C75303632385C75303633315C7530363332222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:08:04', '2020-06-29 00:08:05');
INSERT INTO `wp_tt_vals` VALUES (561, '0_5ef8f1e6d4f4b6.84943875', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303634315C75303632375C75303633315C7530363333222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:09:26', '2020-06-29 00:09:26');
INSERT INTO `wp_tt_vals` VALUES (562, '0_5ef8f20643cc64.90376030', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303663635C75303633325C7530363266222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:09:56', '2020-06-29 00:09:56');
INSERT INTO `wp_tt_vals` VALUES (563, '0_5ef8f225930ef2.73070325', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303633315C75303634355C75303632375C75303634365C75303633345C75303632375C7530363437222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:10:29', '2020-06-29 00:10:29');
INSERT INTO `wp_tt_vals` VALUES (564, '0_5ef8f27d4b2087.31113234', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632375C75303633355C75303634315C75303634375C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:12:02', '2020-06-29 00:12:02');
INSERT INTO `wp_tt_vals` VALUES (565, '0_5ef8f2ac744089.42024541', 0x7B22636F756E7472795F69642D31315B305D223A2232222C2273746174655F6E616D652D31315B305D223A225C75303632325C75303634345C75303632375C75303632385C75303632375C75303634355C7530363237222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:12:44', '2020-06-29 00:12:44');
INSERT INTO `wp_tt_vals` VALUES (566, '0_5ef8f2efc5e678.61730398', 0x7B22636F756E7472795F69642D31315B305D223A2232222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303632375C75303634345C75303663635C75303634315C75303633315C75303634365C75303663635C7530363237222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:13:53', '2020-06-29 00:13:53');
INSERT INTO `wp_tt_vals` VALUES (567, '0_5ef8f31314f7f9.60653680', 0x7B22636F756E7472795F69642D31315B305D223A2232222C2273746174655F6E616D652D31315B305D223A225C75303634385C75303632375C75303633345C75303634365C75303661665C75303632615C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:14:27', '2020-06-29 00:14:27');
INSERT INTO `wp_tt_vals` VALUES (568, '0_5ef8f3536931a9.64705612', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632655C75303634385C75303633325C75303633335C75303632615C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:15:40', '2020-06-29 00:15:40');
INSERT INTO `wp_tt_vals` VALUES (569, '0_5ef8f38ba08943.69536169', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632375C75303663635C75303634345C75303632375C7530363435222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:16:28', '2020-06-29 00:16:29');
INSERT INTO `wp_tt_vals` VALUES (570, '0_5ef8f3b3134250.36501572', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632655C75303633315C75303632375C75303633335C75303632375C7530363436205C75303633345C75303634355C75303632375C75303634345C7530366363222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:17:11', '2020-06-29 00:17:11');
INSERT INTO `wp_tt_vals` VALUES (571, '0_5ef8f3fd3d53c1.31190223', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632655C75303633315C75303632375C75303633335C75303632375C7530363436205C75303633315C75303633365C75303634385C7530366363222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:18:20', '2020-06-29 00:18:21');
INSERT INTO `wp_tt_vals` VALUES (572, '0_5ef8f4439dd158.49712002', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632655C75303633315C75303632375C75303633335C75303632375C7530363436205C75303632635C75303634365C75303634385C75303632385C7530366363222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:19:35', '2020-06-29 00:19:35');
INSERT INTO `wp_tt_vals` VALUES (573, '0_5ef8f6405366b3.55501827', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632325C75303633305C75303633315C75303632385C75303632375C75303663635C75303632635C75303632375C7530363436205C75303633345C75303633315C75303634325C7530366363222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:28:23', '2020-06-29 00:28:23');
INSERT INTO `wp_tt_vals` VALUES (574, '0_5ef8f6e62d9640.17552366', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632385C75303634365C75303632665C7530363331205C75303633395C75303632385C75303632375C7530363333222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:30:49', '2020-06-29 00:30:49');
INSERT INTO `wp_tt_vals` VALUES (575, '0_5ef8f76f9d4bd0.92574836', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303634665C75303633335C75303663635C75303633335C75303632615C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:33:08', '2020-06-29 00:33:08');
INSERT INTO `wp_tt_vals` VALUES (576, '0_5ef8f7d59371b6.60595693', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303633345C75303633345C75303633345C75303633345C7530363334222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:34:42', '2020-06-29 00:34:42');
INSERT INTO `wp_tt_vals` VALUES (577, '0_5ef8f98a309e28.05090092', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22646464646464646473222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:41:58', '2020-06-29 00:41:58');
INSERT INTO `wp_tt_vals` VALUES (578, '0_5ef8f9ab4754f1.44625619', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:42:32', '2020-06-29 00:42:32');
INSERT INTO `wp_tt_vals` VALUES (579, '0_5ef8f9d933d660.32933261', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22656565656565222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:43:16', '2020-06-29 00:43:16');
INSERT INTO `wp_tt_vals` VALUES (580, '0_5ef8fa5319c7e0.54519635', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A226565656577222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:45:20', '2020-06-29 00:45:20');
INSERT INTO `wp_tt_vals` VALUES (581, '0_5ef8fa719e5445.91898054', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22656565656577222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:45:49', '2020-06-29 00:45:49');
INSERT INTO `wp_tt_vals` VALUES (582, '0_5ef8fab3b46b05.53881155', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22617364617364617364222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:46:54', '2020-06-29 00:46:54');
INSERT INTO `wp_tt_vals` VALUES (583, '0_5ef8fac2db7d56.05279891', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2261736673666461736661736673222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:47:10', '2020-06-29 00:47:10');
INSERT INTO `wp_tt_vals` VALUES (584, '0_5ef8fae604fc36.49440033', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A226173646173646173222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:47:46', '2020-06-29 00:47:46');
INSERT INTO `wp_tt_vals` VALUES (585, '0_5ef8fb14b22dc3.87215496', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22737373737373737373616161616161616161222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:48:32', '2020-06-29 00:48:32');
INSERT INTO `wp_tt_vals` VALUES (586, '0_5ef8fb36815835.53048157', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2234333435333435333435222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:49:07', '2020-06-29 00:49:08');
INSERT INTO `wp_tt_vals` VALUES (587, '0_5ef8fb76682149.85915343', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22776572776572776572776572222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:50:10', '2020-06-29 00:50:10');
INSERT INTO `wp_tt_vals` VALUES (588, '0_5ef8fb9a33fd41.66026651', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A227272727272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:50:45', '2020-06-29 00:50:45');
INSERT INTO `wp_tt_vals` VALUES (589, '0_5ef8fbba4c7021.62223700', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22656565656565656565656577222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:51:17', '2020-06-29 00:51:17');
INSERT INTO `wp_tt_vals` VALUES (590, '0_5ef8fbd431ed02.14255365', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A223434343434343434343434222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:51:43', '2020-06-29 00:51:43');
INSERT INTO `wp_tt_vals` VALUES (591, '0_5ef8fc289a0806.76468609', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2273737373617364617364222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:53:08', '2020-06-29 00:53:08');
INSERT INTO `wp_tt_vals` VALUES (592, '0_5ef8fc5a63ea72.36811372', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2264646464646464646464646464646464222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:53:57', '2020-06-29 00:53:57');
INSERT INTO `wp_tt_vals` VALUES (593, '0_5ef8fc8a11a670.98949094', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22727272727272727272727272222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:54:47', '2020-06-29 00:54:47');
INSERT INTO `wp_tt_vals` VALUES (594, '0_5ef8fcfb03c4e3.81717020', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2266736467736467222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:56:38', '2020-06-29 00:56:38');
INSERT INTO `wp_tt_vals` VALUES (595, '0_5ef8fd7ac11a08.33431568', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22737373737373737361736164736173222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:58:48', '2020-06-29 00:58:48');
INSERT INTO `wp_tt_vals` VALUES (596, '0_5ef8fdbc3c8790.86867719', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22617364617364617364222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 00:59:52', '2020-06-29 00:59:52');
INSERT INTO `wp_tt_vals` VALUES (597, '0_5ef8fdcd6f8ad3.40718970', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A226572776572776572776572776572222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:00:09', '2020-06-29 01:00:09');
INSERT INTO `wp_tt_vals` VALUES (598, '0_5ef8fe015f6726.03353462', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 01:01:04', '2020-06-29 01:01:04');
INSERT INTO `wp_tt_vals` VALUES (599, '0_5ef8fe189b7525.42143951', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303634355C75303633315C75303663635C75303661395C7530363237222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 01:01:27', '2020-06-29 01:01:27');
INSERT INTO `wp_tt_vals` VALUES (600, '0_5ef8fe4a7dcd31.69161513', 0x7B22636F756E7472792D315B305D223A225C75303634315C75303633315C75303632375C75303634365C75303633335C7530363437222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 01:02:16', '2020-06-29 01:02:16');
INSERT INTO `wp_tt_vals` VALUES (601, '0_5ef8fe591c3793.25351715', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632375C75303634345C75303632385C75303633315C7530363332222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:02:31', '2020-06-29 01:02:31');
INSERT INTO `wp_tt_vals` VALUES (602, '0_5ef8fe856ebf88.17152494', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632375C75303663635C75303634345C75303632375C7530363435222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:03:15', '2020-06-29 01:03:15');
INSERT INTO `wp_tt_vals` VALUES (603, '0_5ef8feaf710c91.72070331', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303661395C75303633315C75303634355C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:03:58', '2020-06-29 01:03:58');
INSERT INTO `wp_tt_vals` VALUES (604, '0_5ef8ff1d9b6037.49785336', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303635305C75303663635C75303633325C7530363266222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:05:52', '2020-06-29 01:05:52');
INSERT INTO `wp_tt_vals` VALUES (605, '0_5ef8ff4f866ca6.26872101', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2266666666222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:06:35', '2020-06-29 01:06:35');
INSERT INTO `wp_tt_vals` VALUES (606, '0_5ef8ff75906230.38644213', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2273737373737373222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:07:13', '2020-06-29 01:07:13');
INSERT INTO `wp_tt_vals` VALUES (607, '0_5ef8ffba468771.27421603', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2265656565656565656565222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:08:22', '2020-06-29 01:08:22');
INSERT INTO `wp_tt_vals` VALUES (608, '0_5ef9002e4cac74.33210899', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2264736664667364222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:10:20', '2020-06-29 01:10:20');
INSERT INTO `wp_tt_vals` VALUES (609, '0_5ef9004133f701.86994552', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A227777777777777777777777222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:10:37', '2020-06-29 01:10:37');
INSERT INTO `wp_tt_vals` VALUES (610, '0_5ef900cf44b2b4.86605333', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2265656565656565656565656565656565656577222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:13:00', '2020-06-29 01:13:00');
INSERT INTO `wp_tt_vals` VALUES (611, '0_5ef900fa802936.47631087', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2264646464646464646464222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:13:41', '2020-06-29 01:13:42');
INSERT INTO `wp_tt_vals` VALUES (612, '0_5ef9055c931935.86214680', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A226565656565656565656577777777777777222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:32:24', '2020-06-29 01:32:24');
INSERT INTO `wp_tt_vals` VALUES (613, '0_5ef9058c5f9a33.15966631', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22737373737373616161616161616161222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:33:12', '2020-06-29 01:33:13');
INSERT INTO `wp_tt_vals` VALUES (614, '0_5ef906720850f4.37008309', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A22737373737373616161616161616161222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:37:01', '2020-06-29 01:37:02');
INSERT INTO `wp_tt_vals` VALUES (615, '0_5ef906888877a0.95349390', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A2273737373737373737373737373737373737373222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 01:37:24', '2020-06-29 01:37:24');
INSERT INTO `wp_tt_vals` VALUES (616, '0_5ef90c510ced76.33682246', 0x7B22636F756E7472795F69642D31315B305D223A2232222C2273746174655F6E616D652D31315B305D223A226464646464646464222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 02:02:03', '2020-06-29 02:02:03');
INSERT INTO `wp_tt_vals` VALUES (617, '0_5ef91707791404.34861643', 0x7B22636F756E7472795F69642D31315B305D223A2231222C22636F756E7472795F69642D31315B315D223A2231222C22636F756E7472795F69642D31315B325D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C75303634366161616161616161222C2273746174655F6E616D652D31315B315D223A22646464646464646464646464222C2273746174655F6E616D652D31315B325D223A22646473737373737373737373737373222C2270686F6E655F636F64652D31315B305D223A22222C2270686F6E655F636F64652D31315B315D223A22222C2270686F6E655F636F64652D31315B325D223A22222C22646573632D31315B305D223A22222C22646573632D31315B315D223A22222C22646573632D31315B325D223A22227D, '0', '2020-06-29 02:48:00', '2020-06-29 02:48:00');
INSERT INTO `wp_tt_vals` VALUES (618, '0_5ef9173c9eeeb5.96618114', 0x7B22636F756E7472792D315B305D223A2273737373737373737373737373737373737373222C22636F756E7472792D315B315D223A2261616161616161616161616161222C22636F756E7472792D315B325D223A2264776577777777777777222C2270686F6E655F636F64655F315B305D223A22222C2270686F6E655F636F64655F315B315D223A22222C2270686F6E655F636F64655F315B325D223A22222C22646573632D315B305D223A22222C22646573632D315B315D223A22222C22646573632D315B325D223A22227D, '0', '2020-06-29 02:48:50', '2020-06-29 02:48:51');
INSERT INTO `wp_tt_vals` VALUES (619, '0_5ef940183339d9.26531613', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-06-29 05:43:04', '2020-06-29 05:43:04');
INSERT INTO `wp_tt_vals` VALUES (620, '0_5ef940254e0be1.14378028', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A22222C22646573632D31315B305D223A22227D, '0', '2020-06-29 05:43:14', '2020-06-29 05:43:14');
INSERT INTO `wp_tt_vals` VALUES (621, '0_5ef940440ce822.11515382', 0x7B22636F756E7472795F69642D31325B305D223A2231222C2273746174655F69642D31325B305D223A2231222C22636974795F6E616D652D31325B305D223A225C75303637655C75303633315C75303632665C75303663635C7530363333222C2270686F6E655F636F64652D31325B305D223A22222C22646573632D31325B305D223A22227D, '0', '2020-06-29 05:43:47', '2020-06-29 05:43:47');
INSERT INTO `wp_tt_vals` VALUES (622, '0_5ef940531dd7f8.77217772', 0x7B22636F756E7472795F69642D31335B305D223A2231222C2273746174655F69642D31335B305D223A2231222C22636974795F69642D31335B305D223A2231222C22617265615F6E616D652D31335B305D223A225C75303634315C75303632375C7530363332205C75303632665C7530363438222C22646573632D31335B305D223A22227D, '0', '2020-06-29 05:44:06', '2020-06-29 05:44:06');
INSERT INTO `wp_tt_vals` VALUES (623, '0_5efa04579717c8.81774500', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A223938222C22646573632D315B305D223A22227D, '0', '2020-06-29 19:40:27', '2020-06-29 19:40:27');
INSERT INTO `wp_tt_vals` VALUES (624, '0_5efa04764f8665.52114126', 0x7B22636F756E7472795F69642D31315B305D223A2231222C2273746174655F6E616D652D31315B305D223A225C75303632615C75303634375C75303633315C75303632375C7530363436222C2270686F6E655F636F64652D31315B305D223A2232222C22646573632D31315B305D223A22227D, '0', '2020-06-29 19:41:01', '2020-06-29 19:41:01');
INSERT INTO `wp_tt_vals` VALUES (625, '0_5efa048a4828f5.94349831', 0x7B22636F756E7472795F69642D31325B305D223A2231222C2273746174655F69642D31325B305D223A2231222C22636974795F6E616D652D31325B305D223A225C75303661395C75303633315C7530363263222C2270686F6E655F636F64652D31325B305D223A2236222C22646573632D31325B305D223A22227D, '0', '2020-06-29 19:41:16', '2020-06-29 19:41:16');
INSERT INTO `wp_tt_vals` VALUES (626, '0_5efb71890dad80.64533191', 0x7B2270686F6E655F747970652D31365B305D223A2232222C22636F756E7472795F636F64652D31365B305D223A223938222C2273746174655F636F64652D31365B305D223A2232222C22636974795F636F64652D31365B305D223A2236222C2270686F6E655F6E6F2D31365B305D223A223039373838393639222C22657874656E73696F6E5F6E6F2D31365B305D223A2232222C2276657269666965642D31365B305D223A226C6567616C222C22646573632D31365B305D223A22227D, '0', '2020-06-30 21:38:49', '2020-06-30 21:38:49');
INSERT INTO `wp_tt_vals` VALUES (627, '0_5efb723f712f49.65516631', 0x7B2270686F6E655F747970652D31365B305D223A2233222C22636F756E7472795F636F64652D31365B305D223A223938222C2273746174655F636F64652D31365B305D223A2232222C22636974795F636F64652D31365B305D223A2236222C2270686F6E655F6E6F2D31365B305D223A22353535353535353535222C22657874656E73696F6E5F6E6F2D31365B305D223A2234222C2276657269666965642D31365B305D223A2231222C22646573632D31365B305D223A22343434343434227D, '0', '2020-06-30 21:41:43', '2020-07-01 02:04:50');
INSERT INTO `wp_tt_vals` VALUES (628, '0_5efbaffa618f35.52038060', 0x7B22617265615F69642D3137223A6E756C6C2C22636F756E7472795F69642D31375B305D223A2231222C22636F756E7472795F69642D31375B315D223A2231222C2273746174655F69642D31375B305D223A2231222C2273746174655F69642D31375B315D223A2231222C22636974795F69642D31375B305D223A2231222C22636974795F69642D31375B315D223A2231222C226D61696E5F7374726565742D31375B305D223A226666666666666666222C226D61696E5F7374726565742D31375B315D223A22736466736466736466736466736466222C22616464726573732D31375B305D223A226464646464646464222C22616464726573732D31375B315D223A2273646673646673646673646673646673222C22626C6F636B5F6E6F2D31375B305D223A22646473222C22626C6F636B5F6E6F2D31375B315D223A22736466736466736466736466222C2261706172746D656E745F6E6F2D31375B305D223A227364737364222C2261706172746D656E745F6E6F2D31375B315D223A22736466736466736466222C226C6F6E6769747564652D31375B305D223A227364667364222C226C6F6E6769747564652D31375B315D223A227364667364667364667364222C226C617469747564652D31375B305D223A22736466736466736466222C226C617469747564652D31375B315D223A22736466736466736466736466222C2276657269666965642D31375B305D223A2231222C2276657269666965642D31375B315D223A2231222C22646573632D31375B305D223A227373737373737373737373222C22646573632D31375B315D223A226173666173666173667364667364227D, '0', '2020-07-01 02:05:39', '2020-07-01 02:05:40');
INSERT INTO `wp_tt_vals` VALUES (629, '0_5efbb1a9cfe7e5.12120754', 0x7B2263757272656E63795F7369676E5F706F736974696F6E2D32223A6E756C6C2C22706172656E745F63757272656E63795F69642D32223A6E756C6C2C22636F756E7472795F69642D325B305D223A2231222C2263757272656E63792D325B305D223A225C75303633315C75303663635C75303632375C7530363434222C2263757272656E63795F7369676E2D325B305D223A22222C2263757272656E63795F636F64652D32223A6E756C6C2C22706172656E745F63757272656E63795F726174696F2D325B305D223A22222C22646573632D325B305D223A22227D, '0', '2020-07-01 02:12:12', '2020-07-01 02:12:13');
INSERT INTO `wp_tt_vals` VALUES (630, '0_5efbb197d1ee84.22974507', 0x7B22696D616765223A6E756C6C2C2269735F6C6567616C2D3130223A6E756C6C2C226C6567616C5F706572736F6E5F747970655F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6174696F6E616C5F69642D3130223A6E756C6C2C226C6567616C5F706572736F6E5F6E6F746172795F69642D3130223A6E756C6C2C22737461747574655F696D616765223A6E756C6C2C226E6174696F6E616C5F636172645F322D3130223A6E756C6C2C2263757272656E63795F69642D3130223A2231222C2270617373706F72745F6E6F2D3130223A6E756C6C2C2270617373706F72745F696D616765223A6E756C6C2C226E6174696F6E616C6974792D3130223A6E756C6C2C227265666572656E63655F706572736F6E5F69642D3130223A6E756C6C2C226163717561696E74616E63655F747970655F69642D3130223A6E756C6C2C226A6F622D3130223A6E756C6C2C22656475636174696F6E2D3130223A6E756C6C2C226E616D652D31305B305D223A225C75303632615C75303633345C75303633315C75303663635C75303634315C75303632375C753036326120222C226C6173745F6E616D652D31305B305D223A225C75303633375C75303632385C75303632375C75303633375C75303632385C75303632375C75303663635C7530366363222C226E6174696F6E616C5F69642D31305B305D223A22222C2262697274685F646174652D31305B305D223A22222C2262697274685F706C6163652D31305B305D223A22222C226661746865725F6E616D652D31305B305D223A22222C226E6174696F6E616C5F69645F322D31305B305D223A22222C2264726976696E675F6C6963656E63655F6E6F2D31305B305D223A22222C2264726976696E675F6C6963656E63655F69737375655F646174652D31305B305D223A22222C227461785F636F64652D31305B305D223A22222C22656D61696C2D31305B305D223A22222C22776562736974652D31305B305D223A22222C22646573632D31305B305D223A22227D, '0', '2020-07-01 02:12:18', '2020-07-01 02:12:18');
INSERT INTO `wp_tt_vals` VALUES (631, '0_5efbb550603898.73644271', 0x7B22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C2270686F6E655F747970652D31365B305D223A2231222C2270686F6E655F6E6F2D31365B305D223A226767676767676767676767676767222C22657874656E73696F6E5F6E6F2D31365B305D223A223434222C2276657269666965642D31365B305D223A2231222C22646573632D31365B305D223A227272727272727272727272727272222C22636F756E7472795F69642D31375B305D223A2231222C2273746174655F69642D31375B305D223A2231222C22636974795F69642D31375B305D223A2231222C226D61696E5F7374726565742D31375B305D223A22727272727272727272727272727272727272222C22616464726573732D31375B305D223A22727272727272727272727272727272727272727272727272222C22626C6F636B5F6E6F2D31375B305D223A227272727272727272727272727272727272222C2261706172746D656E745F6E6F2D31375B305D223A22727272727272727272727272727272727272727272727272727272727272727272727272727272222C226C6F6E6769747564652D31375B305D223A22727272727272727272727272222C226C617469747564652D31375B305D223A2272727272727272727272727272727272727272727272727272727272727272727272727272727272727272727272727272222C2276657269666965642D31375B305D223A2231222C22646573632D31375B305D223A2272727272727272727272727272727272727272727272227D, '0', '2020-07-01 02:28:16', '2020-07-01 02:28:16');
INSERT INTO `wp_tt_vals` VALUES (632, '0_5efbb603241633.84212894', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-01 02:32:03', '2020-07-01 02:32:03');
INSERT INTO `wp_tt_vals` VALUES (633, '0_5efbb6bb860144.57517513', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-01 02:34:09', '2020-07-01 02:34:09');
INSERT INTO `wp_tt_vals` VALUES (634, '0_5efbb6ddb735d9.79028557', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-01 02:34:38', '2020-07-01 02:34:38');
INSERT INTO `wp_tt_vals` VALUES (635, '0_5efbb70172d2b5.54968170', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-01 02:35:27', '2020-07-01 02:35:28');
INSERT INTO `wp_tt_vals` VALUES (636, '0_5efc95fca5e6b9.18689175', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-01 18:27:00', '2020-07-01 18:27:00');
INSERT INTO `wp_tt_vals` VALUES (637, '0_5efcaa858d9705.51546082', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303663635C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-01 19:53:54', '2020-07-01 19:53:54');
INSERT INTO `wp_tt_vals` VALUES (638, '0_5efdc0b03f1539.29295012', 0x7B22636F756E7472792D315B305D223A225C75303632375C75303632385C75303633315C75303632375C7530363436222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 15:41:35', '2020-07-02 15:41:35');
INSERT INTO `wp_tt_vals` VALUES (639, '0_5efdc2b4356ca4.22487447', 0x7B22636F756E7472792D315B305D223A22353535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 15:49:20', '2020-07-02 15:49:55');
INSERT INTO `wp_tt_vals` VALUES (640, '0_5efdc2e17f62e2.04747385', 0x7B22636F756E7472792D315B305D223A22646464646464222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 15:50:20', '2020-07-02 15:50:24');
INSERT INTO `wp_tt_vals` VALUES (641, '0_5efdc583b766b3.22088459', 0x7B22636F756E7472792D315B305D223A2274747474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:01:18', '2020-07-02 16:01:42');
INSERT INTO `wp_tt_vals` VALUES (642, '0_5efdc5b2dbf2e6.75408790', 0x7B22636F756E7472792D315B305D223A226868686868222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:02:06', '2020-07-02 16:02:15');
INSERT INTO `wp_tt_vals` VALUES (643, '0_5efdc845ebb853.02979119', 0x7B22636F756E7472792D315B305D223A22747474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:13:04', '2020-07-02 16:13:04');
INSERT INTO `wp_tt_vals` VALUES (644, '0_5efdc89d6c4ae6.90446798', 0x7B22636F756E7472792D315B305D223A227474747474747472727272727272222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:14:32', '2020-07-02 16:14:32');
INSERT INTO `wp_tt_vals` VALUES (645, '0_5efdc921cfcfa9.71121304', 0x7B22636F756E7472792D315B305D223A223535353535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:16:44', '2020-07-02 16:16:44');
INSERT INTO `wp_tt_vals` VALUES (646, '0_5efdc954a6e4f4.90985584', 0x7B22636F756E7472792D315B305D223A227474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:17:35', '2020-07-02 16:17:35');
INSERT INTO `wp_tt_vals` VALUES (647, '0_5efdc99cb0a3e9.87310954', 0x7B22636F756E7472792D315B305D223A227474747474747272727272727265222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-02 16:18:48', '2020-07-02 16:18:48');
INSERT INTO `wp_tt_vals` VALUES (648, '0_5f0045fed67d69.91794146', 0x7B22636F756E7472792D315B305D223A22777777777777777777222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:34:03', '2020-07-04 13:34:03');
INSERT INTO `wp_tt_vals` VALUES (649, '0_5f0046cded92b0.11408075', 0x7B22636F756E7472792D315B305D223A22747474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:37:31', '2020-07-04 13:37:31');
INSERT INTO `wp_tt_vals` VALUES (650, '0_5f0046f2ecd063.38655564', 0x7B22636F756E7472792D315B305D223A22747474747474747474222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:38:05', '2020-07-04 13:38:05');
INSERT INTO `wp_tt_vals` VALUES (651, '0_5f0046f833c815.45003876', 0x7B22636F756E7472792D315B305D223A22353534353435222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:38:11', '2020-07-04 13:38:11');
INSERT INTO `wp_tt_vals` VALUES (652, '0_5f004b6af0d074.40303642', 0x7B22636F756E7472792D315B305D223A227274727479727479222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:57:10', '2020-07-04 13:57:10');
INSERT INTO `wp_tt_vals` VALUES (653, '0_5f004b7f337400.41011051', 0x7B22636F756E7472792D315B305D223A2235353535353535353535222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:57:29', '2020-07-04 13:57:29');
INSERT INTO `wp_tt_vals` VALUES (654, '0_5f004bbf51a661.98150770', 0x7B22636F756E7472792D315B305D223A22747279727479727479222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:58:33', '2020-07-04 13:58:33');
INSERT INTO `wp_tt_vals` VALUES (655, '0_5f004bd7191ae8.44119158', 0x7B22636F756E7472792D315B305D223A227472747265747274776572747765222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:58:58', '2020-07-04 13:58:58');
INSERT INTO `wp_tt_vals` VALUES (656, '0_5f004bf7d69136.51555295', 0x7B22636F756E7472792D315B305D223A22657274657274657274657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 13:59:30', '2020-07-04 13:59:30');
INSERT INTO `wp_tt_vals` VALUES (657, '0_5f004c15463912.41560694', 0x7B22636F756E7472792D315B305D223A22727465727479657279657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 14:00:00', '2020-07-04 14:00:00');
INSERT INTO `wp_tt_vals` VALUES (658, '0_5f004c259dd608.52378313', 0x7B22636F756E7472792D315B305D223A22727465727479657279657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 14:00:16', '2020-07-04 14:00:16');
INSERT INTO `wp_tt_vals` VALUES (659, '0_5f004c422b6bb9.77183890', 0x7B22636F756E7472792D315B305D223A22747474747474747474747265727465727477657274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 14:00:45', '2020-07-04 14:00:45');
INSERT INTO `wp_tt_vals` VALUES (660, '0_5f0064acd25d32.35628461', 0x7B22636F756E7472792D315B305D223A2272727272727272726572746572747274222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 15:44:56', '2020-07-04 15:44:56');
INSERT INTO `wp_tt_vals` VALUES (661, '0_5f0066f2528b12.34430981', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 15:54:38', '2020-07-04 15:54:38');
INSERT INTO `wp_tt_vals` VALUES (662, '0_5f006bab0adf18.67292171', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:14:46', '2020-07-04 16:14:46');
INSERT INTO `wp_tt_vals` VALUES (663, '0_5f006bc78ee492.25064883', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:15:17', '2020-07-04 16:15:17');
INSERT INTO `wp_tt_vals` VALUES (664, '0_5f006bda143898.28394653', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:15:34', '2020-07-04 16:15:34');
INSERT INTO `wp_tt_vals` VALUES (665, '0_5f006bfd126758.57378730', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:16:08', '2020-07-04 16:16:08');
INSERT INTO `wp_tt_vals` VALUES (666, '0_5f006c1e7286e1.94139939', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:16:42', '2020-07-04 16:16:42');
INSERT INTO `wp_tt_vals` VALUES (667, '0_5f006c7e075ce0.59863858', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:18:17', '2020-07-04 16:18:17');
INSERT INTO `wp_tt_vals` VALUES (668, '0_5f006d442df3c1.71731357', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:22:01', '2020-07-04 16:22:01');
INSERT INTO `wp_tt_vals` VALUES (669, '0_5f006e98935e62.93156858', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 16:27:16', '2020-07-04 16:27:17');
INSERT INTO `wp_tt_vals` VALUES (670, '0_5f009096042583.82779268', 0x7B22636F756E7472792D315B305D223A2273737373222C2270686F6E655F636F64655F315B305D223A22222C22646573632D315B305D223A22227D, '0', '2020-07-04 18:52:17', '2020-07-04 18:52:17');
INSERT INTO `wp_tt_vals` VALUES (671, '0_5f00b935000410.87746070', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:46:40', '2020-07-04 21:46:40');
INSERT INTO `wp_tt_vals` VALUES (672, '0_5f00b998b6b720.82274706', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:47:19', '2020-07-04 21:47:19');
INSERT INTO `wp_tt_vals` VALUES (673, '0_5f00b9be183f13.47427292', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:47:55', '2020-07-04 21:47:55');
INSERT INTO `wp_tt_vals` VALUES (674, '0_5f00ba8de8ec29.37672155', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:51:22', '2020-07-04 21:51:23');
INSERT INTO `wp_tt_vals` VALUES (675, '0_5f00ba9ebd9449.94427223', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:51:46', '2020-07-04 21:51:46');
INSERT INTO `wp_tt_vals` VALUES (676, '0_5f00bac80dd477.40506645', 0x7B22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 21:52:29', '2020-07-04 21:52:29');
INSERT INTO `wp_tt_vals` VALUES (677, '0_5f00c276d0a7e8.33968356', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:25:15', '2020-07-04 22:25:16');
INSERT INTO `wp_tt_vals` VALUES (678, '0_5f00c69494fbc0.34055480', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:42:41', '2020-07-04 22:42:41');
INSERT INTO `wp_tt_vals` VALUES (679, '0_5f00c6a3c24876.74340890', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:42:56', '2020-07-04 22:42:56');
INSERT INTO `wp_tt_vals` VALUES (680, '0_5f00c7042c51b6.94133414', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:44:34', '2020-07-04 22:44:34');
INSERT INTO `wp_tt_vals` VALUES (681, '0_5f00c7302f4ad3.47340485', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:45:16', '2020-07-04 22:45:16');
INSERT INTO `wp_tt_vals` VALUES (682, '0_5f00c797b0c629.32500416', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:47:00', '2020-07-04 22:47:00');
INSERT INTO `wp_tt_vals` VALUES (683, '0_5f00c7c91bc8d0.17911541', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-04 22:47:56', '2020-07-04 22:47:56');
INSERT INTO `wp_tt_vals` VALUES (684, '0_5f01925d654692.11480690', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 13:12:12', '2020-07-05 13:12:12');
INSERT INTO `wp_tt_vals` VALUES (685, '0_5f01936adc0392.71116817', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 13:16:56', '2020-07-05 13:16:56');
INSERT INTO `wp_tt_vals` VALUES (686, '0_5f019d08211834.37939732', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 13:57:41', '2020-07-05 13:57:41');
INSERT INTO `wp_tt_vals` VALUES (687, '0_5f019d5100cf77.00930504', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 13:58:54', '2020-07-05 13:58:54');
INSERT INTO `wp_tt_vals` VALUES (688, '0_5f019dbe3bf059.05983755', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:00:44', '2020-07-05 14:00:45');
INSERT INTO `wp_tt_vals` VALUES (689, '0_5f019dde90d4c3.46487485', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:01:17', '2020-07-05 14:01:17');
INSERT INTO `wp_tt_vals` VALUES (690, '0_5f019e401777c6.17690609', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:02:57', '2020-07-05 14:02:57');
INSERT INTO `wp_tt_vals` VALUES (691, '0_5f019e5ac21a92.22771142', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:03:22', '2020-07-05 14:03:22');
INSERT INTO `wp_tt_vals` VALUES (692, '0_5f019e92768c08.61668438', 0x7B22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C2270686F6E655F747970652D31365B305D223A2231222C2270686F6E655F6E6F2D31365B305D223A22656565777777222C22657874656E73696F6E5F6E6F2D31365B305D223A22222C22646573632D31365B305D223A22227D, '0', '2020-07-05 14:04:15', '2020-07-05 14:04:15');
INSERT INTO `wp_tt_vals` VALUES (693, '0_5f019ea9a93ae9.97817144', 0x7B22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C2270686F6E655F747970652D31365B305D223A2231222C2270686F6E655F6E6F2D31365B305D223A22657274657472333433222C22657874656E73696F6E5F6E6F2D31365B305D223A22222C22646573632D31365B305D223A22227D, '0', '2020-07-05 14:04:38', '2020-07-05 14:04:38');
INSERT INTO `wp_tt_vals` VALUES (694, '0_5f01a224ac7504.13285236', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:19:28', '2020-07-05 14:19:29');
INSERT INTO `wp_tt_vals` VALUES (695, '0_5f01a2579d6bf8.48535380', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:20:22', '2020-07-05 14:20:23');
INSERT INTO `wp_tt_vals` VALUES (696, '0_5f01a33876e694.96276018', 0x7B2270686F6E655F747970652D3136223A6E756C6C2C22636F756E7472795F636F64652D3136223A6E756C6C2C2273746174655F636F64652D3136223A6E756C6C2C22636974795F636F64652D3136223A6E756C6C2C2270686F6E655F6E6F2D3136223A6E756C6C2C22657874656E73696F6E5F6E6F2D3136223A6E756C6C2C2276657269666965642D3136223A6E756C6C2C22646573632D3136223A6E756C6C2C22636F756E7472795F69642D3137223A6E756C6C2C2273746174655F69642D3137223A6E756C6C2C22636974795F69642D3137223A6E756C6C2C22617265615F69642D3137223A6E756C6C2C226D61696E5F7374726565742D3137223A6E756C6C2C22616464726573732D3137223A6E756C6C2C22626C6F636B5F6E6F2D3137223A6E756C6C2C2261706172746D656E745F6E6F2D3137223A6E756C6C2C226C6F6E6769747564652D3137223A6E756C6C2C226C617469747564652D3137223A6E756C6C2C2276657269666965642D3137223A6E756C6C2C22646573632D3137223A6E756C6C7D, '0', '2020-07-05 14:24:07', '2020-07-05 14:24:08');

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
