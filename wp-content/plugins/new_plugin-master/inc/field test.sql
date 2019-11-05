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

 Date: 04/11/2019 22:40:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (1, '', '', 'json', 'disabled', NULL, '', NULL, NULL, NULL, 'http://localhost/wp-content/plugins/new_plugin-master/sample.json.php', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->car', '%%E%%return \'1\';', NULL, NULL, '2019-10-19 13:41:32', '2019-10-19 13:41:32');
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
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'Select Test', '', 'انتخاب کنید', 'on', 'autofocus', '', 'required', '1', '1-2', '1-3', NULL, NULL, '2019-10-24 18:23:49', '2019-10-24 18:23:49');

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
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, '', '', 'json', NULL, '', '', 'selected', '', NULL, NULL, NULL, NULL, 'http://localhost/wp-content/plugins/new_plugin-master/sample.json.php', 'example[$i][$i]->options[0]->car', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->country', '%%E%%return \'1\';', NULL, NULL, '2019-10-24 19:14:37', '2019-10-24 19:14:37');
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_text_search
-- ----------------------------
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'Text Attr', 'text-attr', 'name billing section-a', 'autofocus', 'textdirection', 'text-list-id', '1-3', '20', '4', '[a-z A-Z 0-9]', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-09-17 05:41:24', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (2, 'Search Attr', 'search-attr', 'on', 'autofocus', 'textdirection', 'list-id', '1-3', '20', '4', '[a-z A-Z 0-9]', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-10-19 12:15:30', '2019-10-19 12:15:30');

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
-- Table structure for wp_tt_input
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_input`;
CREATE TABLE `wp_tt_input`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:disabled',
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of form',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any string.Other than isindex, any non-empty value for name is allowed. The name _charset_ is special which applying in hidden input name return user encoding.',
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:id of input type',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Values:any string',
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_input_specific_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_id_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_id_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pack_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `controller_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input
-- ----------------------------
INSERT INTO `wp_tt_input` VALUES (1, 'Test Text Input', 'test-text', '', 'form_id', 'textfield', '1', 'Value Data', '', '%%E%%return \'1\';', '', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (2, 'Test Search Input', 'test-search', '', 'form_id', 'searchfield', '2', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (3, 'Test Tel Input', 'test-tel', '', 'form_id', 'telfield', '3', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (4, 'Test URL Input', 'test-url', '', 'form_id', 'urlfield', '4', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (5, 'Test Submit Input', 'test-submit', '', 'form_id', 'submitfield', '5', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (6, 'Test Range Input', 'test-range', '', 'form_id', 'rangefield', '6', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (7, 'Password Input', 'test-password', '', 'form_id', 'passwordfield', '7', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (8, 'Number Input', 'test-number', '', 'form_id', 'numberfield', '8', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (9, 'Image Input', 'test-image', '', 'form-id', 'imagefield', '9', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-07 15:27:50', '2019-10-07 15:27:50');
INSERT INTO `wp_tt_input` VALUES (10, 'File Input', 'test-file', '', 'form-id', 'filefield', '10', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-07 16:09:06', '2019-10-07 16:09:06');
INSERT INTO `wp_tt_input` VALUES (11, 'Email Input', 'test-email', '', 'form-id', 'emailfield', '11', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-07 16:09:06', '2019-10-07 16:09:06');
INSERT INTO `wp_tt_input` VALUES (12, 'Date Input', 'date-input', '', 'form-id', 'datefield', '12', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (13, 'Datetime-local Input', 'datetime-local-input', '', 'form-id', 'datetime-localfield', '13', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-19 06:44:52', '2019-10-19 06:44:52');
INSERT INTO `wp_tt_input` VALUES (14, 'Month Input', 'month-input', '', 'form-id', 'monthfield', '14', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'3\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (15, 'Time Input', 'time-input', '', 'form-id', 'timefield', '15', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'4\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (16, 'Week Input', 'week-input', '', 'form-id', 'weekfield', '16', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'5\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (17, 'Datetime Input', 'datetime-input', '', 'form-id', 'datetimefield', '17', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'6\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (18, 'Color Input', 'color-input', '', 'form-id', 'colorfield', '18', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-10 16:22:01', '2019-10-10 16:22:01');
INSERT INTO `wp_tt_input` VALUES (19, 'Checkbox Input', 'checkbox-input', '', 'form-id', 'checkboxfield', '19', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-19 10:03:26', '2019-10-19 10:03:26');
INSERT INTO `wp_tt_input` VALUES (20, 'Radio Input', 'radio-input', '', 'form-id', 'radiofield', '20', 'Value Data', '%%E%%return \'1\';', '%%E%%return \'2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-19 10:06:44', '2019-10-19 10:06:44');
INSERT INTO `wp_tt_input` VALUES (21, 'Hidden Input', 'hidden-input', '', 'form-id', 'hiddenfield', '21', 'Value Data', '%%E%%return \'1\';', '', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-19 10:21:03', '2019-10-19 10:21:03');
INSERT INTO `wp_tt_input` VALUES (22, 'Select Input', 'select-input', '', 'form-id', 'selectfield', '22', '', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-24 16:54:15', '2019-10-24 16:54:15');
INSERT INTO `wp_tt_input` VALUES (23, 'Textarea Input', 'textarea-input', '', 'form-id', 'textareafield', '23', '', '%%E%%return \'1\';', '%%E%%return \'1\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', '', NULL, NULL, 'Myehrajat', '2019-10-31 22:48:18', '2019-10-31 22:48:18');

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
INSERT INTO `wp_tt_input_types` VALUES (1, 'Text Field', 'text_field', 'text', 'simple-text', 'sst_text', 'This is simple text input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (2, 'Search Field', 'search_field', 'search', 'simple-search', 'sst_search', 'This is simple search input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (3, 'Tel Field', 'tel_field', 'tel', 'simple-tel', 'sst_tel', 'This is simple tel input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (4, 'Url Field', 'url_field', 'url', 'simple-url', 'sst_url', 'This is simple url input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (5, 'Submit Field', 'submit_field', 'submit', 'simple-submit', 'sst_submit', 'This is simple submit input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (6, 'Range Field', 'range_field', 'range', 'simple-range', 'sst_range', 'This is simple range input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (7, 'Password Field', 'password_field', 'password', 'simple-password', 'sst_password', 'This is simple password input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (8, 'Number Field', 'number_field', 'number', 'simple-number', 'sst_number', 'This is simple number input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (9, 'Image Field', 'image_field', 'image', 'simple-image', 'sst_image', 'This is simple image input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (10, 'File Field', 'file_field', 'file', 'simple-file', 'sst_file', 'This is simple file input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (11, 'Email Field', 'email_field', 'email', 'simple-email', 'sst_email', 'This is simple email input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (12, 'Date Field', 'date_field', 'date', 'simple-date', 'sst_date', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (13, 'Datetime-local Field', 'datetime-local_field', 'datetime-local', 'simple-datetime-local', 'sst_datetime_local', 'This is simple datetime-local input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (14, 'Month Field', 'month_field', 'month', 'simple-month', 'sst_month', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (15, 'Time Field', 'time_field', 'time', 'simple-time', 'sst_time', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (16, 'Week Field', 'week_field', 'week', 'simple-week', 'sst_week', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (17, 'Datetime Field', 'datetime_field', 'datetime', 'simple-datetime', 'sst_datetime', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (18, 'Color Field', 'color_field', 'color', 'simple-color', 'sst_color', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (19, 'Checkbox Field', 'checkbox_field', 'checkbox', 'simple-checkbox', 'sst_checkbox', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (20, 'Radio Field', 'radio_field', 'radio', 'simple-radio', 'sst_radio', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (21, 'Hidden Field', 'hidden_field', 'hidden', 'simple-hidden', 'sst_hidden', 'This is simple hidden input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (22, 'Select Field', 'select_field', 'select', 'simple-select', 'sst_select', 'This is simple select input type as a HTML code!', 'Ehrajat', '2019-11-01 04:12:08', '2019-11-01 04:12:08');
INSERT INTO `wp_tt_input_types` VALUES (23, 'Textarea Field', 'textarea_field', 'textarea', 'simple-textarea', 'sst_textarea', 'This is simple textarea input type as a HTML code!', 'Ehrajat', '2019-11-01 04:13:36', '2019-11-01 04:13:36');

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

SET FOREIGN_KEY_CHECKS = 1;
