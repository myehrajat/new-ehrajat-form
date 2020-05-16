/*
 Navicat Premium Data Transfer

 Source Server         : myehrajat
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : ehrajat-dev

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 14/05/2020 01:56:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kode_meli_prefix
-- ----------------------------
DROP TABLE IF EXISTS `kode_meli_prefix`;
CREATE TABLE `kode_meli_prefix`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ostan` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shahr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `kode_meli_prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1212 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kode_meli_prefix
-- ----------------------------
INSERT INTO `kode_meli_prefix` VALUES (1, 'آذربایجان شرقی', 'آذرشهر', '169');
INSERT INTO `kode_meli_prefix` VALUES (2, 'آذربایجان شرقی', 'آذرشهر', '169');
INSERT INTO `kode_meli_prefix` VALUES (3, 'آذربایجان شرقی', 'اسکو', '170');
INSERT INTO `kode_meli_prefix` VALUES (4, 'آذربایجان شرقی', 'اهر', '149');
INSERT INTO `kode_meli_prefix` VALUES (5, 'آذربایجان شرقی', 'اهر', '150');
INSERT INTO `kode_meli_prefix` VALUES (6, 'آذربایجان شرقی', 'بستان آباد', '171');
INSERT INTO `kode_meli_prefix` VALUES (7, 'آذربایجان شرقی', 'بناب', '168');
INSERT INTO `kode_meli_prefix` VALUES (8, 'آذربایجان شرقی', 'تبریز', '136');
INSERT INTO `kode_meli_prefix` VALUES (9, 'آذربایجان شرقی', 'تبریز', '137');
INSERT INTO `kode_meli_prefix` VALUES (10, 'آذربایجان شرقی', 'تبریز', '138');
INSERT INTO `kode_meli_prefix` VALUES (11, 'آذربایجان شرقی', 'ترکمانچای', '545');
INSERT INTO `kode_meli_prefix` VALUES (12, 'آذربایجان شرقی', 'جلفا', '505');
INSERT INTO `kode_meli_prefix` VALUES (13, 'آذربایجان شرقی', 'چاروایماق', '636');
INSERT INTO `kode_meli_prefix` VALUES (14, 'آذربایجان شرقی', 'سراب', '164');
INSERT INTO `kode_meli_prefix` VALUES (15, 'آذربایجان شرقی', 'سراب', '165');
INSERT INTO `kode_meli_prefix` VALUES (16, 'آذربایجان شرقی', 'شبستر', '172');
INSERT INTO `kode_meli_prefix` VALUES (17, 'آذربایجان شرقی', 'صوفیان', '623');
INSERT INTO `kode_meli_prefix` VALUES (18, 'آذربایجان شرقی', 'عجب شیر', '506');
INSERT INTO `kode_meli_prefix` VALUES (19, 'آذربایجان شرقی', 'کلیبر', '519');
INSERT INTO `kode_meli_prefix` VALUES (20, 'آذربایجان شرقی', 'مراغه', '154');
INSERT INTO `kode_meli_prefix` VALUES (21, 'آذربایجان شرقی', 'مراغه', '155');
INSERT INTO `kode_meli_prefix` VALUES (22, 'آذربایجان شرقی', 'مرند', '158');
INSERT INTO `kode_meli_prefix` VALUES (23, 'آذربایجان شرقی', 'ملکان', '507');
INSERT INTO `kode_meli_prefix` VALUES (24, 'آذربایجان شرقی', 'میانه', '152');
INSERT INTO `kode_meli_prefix` VALUES (25, 'آذربایجان شرقی', 'میانه', '153');
INSERT INTO `kode_meli_prefix` VALUES (26, 'آذربایجان شرقی', 'ورزقان', '567');
INSERT INTO `kode_meli_prefix` VALUES (27, 'آذربایجان شرقی', 'هریس', '173');
INSERT INTO `kode_meli_prefix` VALUES (28, 'آذربایجان شرقی', 'هشترود', '159');
INSERT INTO `kode_meli_prefix` VALUES (29, 'آذربایجان شرقی', 'هشترود', '160');
INSERT INTO `kode_meli_prefix` VALUES (30, 'آذربایجان شرقی', 'هوراند', '604');
INSERT INTO `kode_meli_prefix` VALUES (31, 'آذربایجان غربی', 'ارومیه', '274');
INSERT INTO `kode_meli_prefix` VALUES (32, 'آذربایجان غربی', 'ارومیه', '275');
INSERT INTO `kode_meli_prefix` VALUES (33, 'آذربایجان غربی', 'اشنویه', '295');
INSERT INTO `kode_meli_prefix` VALUES (34, 'آذربایجان غربی', 'انزل', '637');
INSERT INTO `kode_meli_prefix` VALUES (35, 'آذربایجان غربی', 'بوکان', '292');
INSERT INTO `kode_meli_prefix` VALUES (36, 'آذربایجان غربی', 'پلدشت', '492');
INSERT INTO `kode_meli_prefix` VALUES (37, 'آذربایجان غربی', 'پیرانشهر', '289');
INSERT INTO `kode_meli_prefix` VALUES (38, 'آذربایجان غربی', 'تخت سلیمان', '677');
INSERT INTO `kode_meli_prefix` VALUES (39, 'آذربایجان غربی', 'تکاب', '294');
INSERT INTO `kode_meli_prefix` VALUES (40, 'آذربایجان غربی', 'چایپاره', '493');
INSERT INTO `kode_meli_prefix` VALUES (41, 'آذربایجان غربی', 'خوی', '279');
INSERT INTO `kode_meli_prefix` VALUES (42, 'آذربایجان غربی', 'خوی', '280');
INSERT INTO `kode_meli_prefix` VALUES (43, 'آذربایجان غربی', 'سردشت', '288');
INSERT INTO `kode_meli_prefix` VALUES (44, 'آذربایجان غربی', 'سلماس', '284');
INSERT INTO `kode_meli_prefix` VALUES (45, 'آذربایجان غربی', 'سلماس', '285');
INSERT INTO `kode_meli_prefix` VALUES (46, 'آذربایجان غربی', 'سیلوانه', '638');
INSERT INTO `kode_meli_prefix` VALUES (47, 'آذربایجان غربی', 'سیه چشمه(چالدران)', '291');
INSERT INTO `kode_meli_prefix` VALUES (48, 'آذربایجان غربی', 'شوط', '640');
INSERT INTO `kode_meli_prefix` VALUES (49, 'آذربایجان غربی', 'شاهین دژ', '293');
INSERT INTO `kode_meli_prefix` VALUES (50, 'آذربایجان غربی', 'کشاورز', '675');
INSERT INTO `kode_meli_prefix` VALUES (51, 'آذربایجان غربی', 'ماکو', '282');
INSERT INTO `kode_meli_prefix` VALUES (52, 'آذربایجان غربی', 'ماکو', '283');
INSERT INTO `kode_meli_prefix` VALUES (53, 'آذربایجان غربی', 'مهاباد', '286');
INSERT INTO `kode_meli_prefix` VALUES (54, 'آذربایجان غربی', 'مهاباد', '287');
INSERT INTO `kode_meli_prefix` VALUES (55, 'آذربایجان غربی', 'میاندوآب', '296');
INSERT INTO `kode_meli_prefix` VALUES (56, 'آذربایجان غربی', 'میاندوآب', '297');
INSERT INTO `kode_meli_prefix` VALUES (57, 'آذربایجان غربی', 'نقده', '290');
INSERT INTO `kode_meli_prefix` VALUES (58, 'همدان', 'اسدآباد', '400');
INSERT INTO `kode_meli_prefix` VALUES (59, 'همدان', 'اسدآباد', '401');
INSERT INTO `kode_meli_prefix` VALUES (60, 'همدان', 'بهار', '404');
INSERT INTO `kode_meli_prefix` VALUES (61, 'همدان', 'بهار', '405');
INSERT INTO `kode_meli_prefix` VALUES (62, 'همدان', 'تویسرکان', '397');
INSERT INTO `kode_meli_prefix` VALUES (63, 'همدان', 'رزن', '398');
INSERT INTO `kode_meli_prefix` VALUES (64, 'همدان', 'رزن', '399');
INSERT INTO `kode_meli_prefix` VALUES (65, 'همدان', 'شراء و پیشخوار', '647');
INSERT INTO `kode_meli_prefix` VALUES (66, 'همدان', 'فامنین', '502');
INSERT INTO `kode_meli_prefix` VALUES (67, 'همدان', 'قلقل رود', '584');
INSERT INTO `kode_meli_prefix` VALUES (68, 'همدان', 'کبودرآهنگ', '402');
INSERT INTO `kode_meli_prefix` VALUES (69, 'همدان', 'کبودرآهنگ', '403');
INSERT INTO `kode_meli_prefix` VALUES (70, 'همدان', 'ملایر', '392');
INSERT INTO `kode_meli_prefix` VALUES (71, 'همدان', 'ملایر', '393');
INSERT INTO `kode_meli_prefix` VALUES (72, 'همدان', 'نهاوند', '395');
INSERT INTO `kode_meli_prefix` VALUES (73, 'همدان', 'نهاوند', '396');
INSERT INTO `kode_meli_prefix` VALUES (74, 'همدان', 'همدان', '386');
INSERT INTO `kode_meli_prefix` VALUES (75, 'همدان', 'همدان', '387');
INSERT INTO `kode_meli_prefix` VALUES (76, 'یزد', 'ابرکوه', '503');
INSERT INTO `kode_meli_prefix` VALUES (77, 'یزد', 'اردکان', '444');
INSERT INTO `kode_meli_prefix` VALUES (78, 'یزد', 'اشکذر', '551');
INSERT INTO `kode_meli_prefix` VALUES (79, 'یزد', 'بافق', '447');
INSERT INTO `kode_meli_prefix` VALUES (80, 'یزد', 'بهاباد', '561');
INSERT INTO `kode_meli_prefix` VALUES (81, 'یزد', 'تفت', '445');
INSERT INTO `kode_meli_prefix` VALUES (82, 'یزد', 'دستگردان', '718');
INSERT INTO `kode_meli_prefix` VALUES (83, 'یزد', 'طبس', '83');
INSERT INTO `kode_meli_prefix` VALUES (84, 'یزد', 'مهریز', '446');
INSERT INTO `kode_meli_prefix` VALUES (85, 'یزد', 'میبد', '448');
INSERT INTO `kode_meli_prefix` VALUES (86, 'یزد', 'نیر', '552');
INSERT INTO `kode_meli_prefix` VALUES (87, 'یزد', 'هرات و مروست', '543');
INSERT INTO `kode_meli_prefix` VALUES (88, 'یزد', 'یزد', '442');
INSERT INTO `kode_meli_prefix` VALUES (89, 'یزد', 'یزد', '443');
INSERT INTO `kode_meli_prefix` VALUES (90, 'مرکزی', 'آشتیان', '51');
INSERT INTO `kode_meli_prefix` VALUES (91, 'مرکزی', 'اراک', '52');
INSERT INTO `kode_meli_prefix` VALUES (92, 'مرکزی', 'اراک', '53');
INSERT INTO `kode_meli_prefix` VALUES (93, 'مرکزی', 'تفرش', '58');
INSERT INTO `kode_meli_prefix` VALUES (94, 'مرکزی', 'خمین', '55');
INSERT INTO `kode_meli_prefix` VALUES (95, 'مرکزی', 'خنداب', '617');
INSERT INTO `kode_meli_prefix` VALUES (96, 'مرکزی', 'دلیجان', '57');
INSERT INTO `kode_meli_prefix` VALUES (97, 'مرکزی', 'زرند مرکزی', '618');
INSERT INTO `kode_meli_prefix` VALUES (98, 'مرکزی', 'ساوه', '59');
INSERT INTO `kode_meli_prefix` VALUES (99, 'مرکزی', 'ساوه', '60');
INSERT INTO `kode_meli_prefix` VALUES (100, 'مرکزی', 'سربند', '61');
INSERT INTO `kode_meli_prefix` VALUES (101, 'مرکزی', 'سربند', '62');
INSERT INTO `kode_meli_prefix` VALUES (102, 'مرکزی', 'فراهان', '544');
INSERT INTO `kode_meli_prefix` VALUES (103, 'مرکزی', 'محلات', '56');
INSERT INTO `kode_meli_prefix` VALUES (104, 'مرکزی', 'وفس', '571');
INSERT INTO `kode_meli_prefix` VALUES (105, 'مرکزی', 'هندودر', '593');
INSERT INTO `kode_meli_prefix` VALUES (106, 'هرمزگان', 'ابوموسی', '667');
INSERT INTO `kode_meli_prefix` VALUES (107, 'هرمزگان', 'بستک', '348');
INSERT INTO `kode_meli_prefix` VALUES (108, 'هرمزگان', 'بشاگرد', '586');
INSERT INTO `kode_meli_prefix` VALUES (109, 'هرمزگان', 'بندرعباس', '338');
INSERT INTO `kode_meli_prefix` VALUES (110, 'هرمزگان', 'بندرعباس', '339');
INSERT INTO `kode_meli_prefix` VALUES (111, 'هرمزگان', 'بندرلنگه', '343');
INSERT INTO `kode_meli_prefix` VALUES (112, 'هرمزگان', 'بندرلنگه', '344');
INSERT INTO `kode_meli_prefix` VALUES (113, 'هرمزگان', 'جاسک', '346');
INSERT INTO `kode_meli_prefix` VALUES (114, 'هرمزگان', 'حاجی آباد', '337');
INSERT INTO `kode_meli_prefix` VALUES (115, 'هرمزگان', 'خمیر', '554');
INSERT INTO `kode_meli_prefix` VALUES (116, 'هرمزگان', 'رودان', '469');
INSERT INTO `kode_meli_prefix` VALUES (117, 'هرمزگان', 'فین', '537');
INSERT INTO `kode_meli_prefix` VALUES (118, 'هرمزگان', 'قشم', '345');
INSERT INTO `kode_meli_prefix` VALUES (119, 'هرمزگان', 'گاوبندی', '470');
INSERT INTO `kode_meli_prefix` VALUES (120, 'هرمزگان', 'میناب', '341');
INSERT INTO `kode_meli_prefix` VALUES (121, 'هرمزگان', 'میناب', '342');
INSERT INTO `kode_meli_prefix` VALUES (122, 'لرستان', 'ازنا', '483');
INSERT INTO `kode_meli_prefix` VALUES (123, 'لرستان', 'ازنا', '484');
INSERT INTO `kode_meli_prefix` VALUES (124, 'لرستان', 'اشترینان', '557');
INSERT INTO `kode_meli_prefix` VALUES (125, 'لرستان', 'الشتر', '418');
INSERT INTO `kode_meli_prefix` VALUES (126, 'لرستان', 'الیگودرز', '416');
INSERT INTO `kode_meli_prefix` VALUES (127, 'لرستان', 'الیگودرز', '417');
INSERT INTO `kode_meli_prefix` VALUES (128, 'لرستان', 'بروجرد', '412');
INSERT INTO `kode_meli_prefix` VALUES (129, 'لرستان', 'بروجرد', '413');
INSERT INTO `kode_meli_prefix` VALUES (130, 'لرستان', 'پاپی', '592');
INSERT INTO `kode_meli_prefix` VALUES (131, 'لرستان', 'چغلوندی', '612');
INSERT INTO `kode_meli_prefix` VALUES (132, 'لرستان', 'چگنی', '613');
INSERT INTO `kode_meli_prefix` VALUES (133, 'لرستان', 'خرم آباد', '406');
INSERT INTO `kode_meli_prefix` VALUES (134, 'لرستان', 'خرم آباد', '407');
INSERT INTO `kode_meli_prefix` VALUES (135, 'لرستان', 'دورود', '421');
INSERT INTO `kode_meli_prefix` VALUES (136, 'لرستان', 'رومشکان', '598');
INSERT INTO `kode_meli_prefix` VALUES (137, 'لرستان', 'کوهدشت', '419');
INSERT INTO `kode_meli_prefix` VALUES (138, 'لرستان', 'ملاوی(پلدختر)', '385');
INSERT INTO `kode_meli_prefix` VALUES (139, 'لرستان', 'نورآباد(دلفان)', '420');
INSERT INTO `kode_meli_prefix` VALUES (140, 'لرستان', 'ویسیان', '528');
INSERT INTO `kode_meli_prefix` VALUES (141, 'مازندران', 'آمل', '213');
INSERT INTO `kode_meli_prefix` VALUES (142, 'مازندران', 'آمل', '214');
INSERT INTO `kode_meli_prefix` VALUES (143, 'مازندران', 'بابل', '205');
INSERT INTO `kode_meli_prefix` VALUES (144, 'مازندران', 'بابل', '206');
INSERT INTO `kode_meli_prefix` VALUES (145, 'مازندران', 'بابلسر', '498');
INSERT INTO `kode_meli_prefix` VALUES (146, 'مازندران', 'بندپی', '568');
INSERT INTO `kode_meli_prefix` VALUES (147, 'مازندران', 'بندپی شرقی', '711');
INSERT INTO `kode_meli_prefix` VALUES (148, 'مازندران', 'بهشهر', '217');
INSERT INTO `kode_meli_prefix` VALUES (149, 'مازندران', 'بهشهر', '218');
INSERT INTO `kode_meli_prefix` VALUES (150, 'مازندران', 'تنکابن', '221');
INSERT INTO `kode_meli_prefix` VALUES (151, 'مازندران', 'جویبار', '582');
INSERT INTO `kode_meli_prefix` VALUES (152, 'مازندران', 'چالوس', '483');
INSERT INTO `kode_meli_prefix` VALUES (153, 'مازندران', 'چمستان', '625');
INSERT INTO `kode_meli_prefix` VALUES (154, 'مازندران', 'چهاردانگه', '576');
INSERT INTO `kode_meli_prefix` VALUES (155, 'مازندران', 'دودانگه', '578');
INSERT INTO `kode_meli_prefix` VALUES (156, 'مازندران', 'رامسر', '227');
INSERT INTO `kode_meli_prefix` VALUES (157, 'مازندران', 'ساری', '208');
INSERT INTO `kode_meli_prefix` VALUES (158, 'مازندران', 'ساری', '209');
INSERT INTO `kode_meli_prefix` VALUES (159, 'مازندران', 'سوادکوه', '225');
INSERT INTO `kode_meli_prefix` VALUES (160, 'مازندران', 'شیرگاه', '577');
INSERT INTO `kode_meli_prefix` VALUES (161, 'مازندران', 'عباس آباد', '712');
INSERT INTO `kode_meli_prefix` VALUES (162, 'مازندران', 'قائمشهر', '215');
INSERT INTO `kode_meli_prefix` VALUES (163, 'مازندران', 'قائمشهر', '216');
INSERT INTO `kode_meli_prefix` VALUES (164, 'مازندران', 'کجور', '626');
INSERT INTO `kode_meli_prefix` VALUES (165, 'مازندران', 'کلاردشت', '627');
INSERT INTO `kode_meli_prefix` VALUES (166, 'مازندران', 'گلوگاه', '579');
INSERT INTO `kode_meli_prefix` VALUES (167, 'مازندران', 'میاندورود', '713');
INSERT INTO `kode_meli_prefix` VALUES (168, 'مازندران', 'نکاء', '499');
INSERT INTO `kode_meli_prefix` VALUES (169, 'مازندران', 'نور', '222');
INSERT INTO `kode_meli_prefix` VALUES (170, 'مازندران', 'نوشهر', '219');
INSERT INTO `kode_meli_prefix` VALUES (171, 'مازندران', 'نوشهر', '220');
INSERT INTO `kode_meli_prefix` VALUES (172, 'مازندران', 'هراز و محمودآباد', '500');
INSERT INTO `kode_meli_prefix` VALUES (173, 'مازندران', 'هراز و محمودآباد', '501');
INSERT INTO `kode_meli_prefix` VALUES (174, 'گلستان', 'آزادشهر', '623');
INSERT INTO `kode_meli_prefix` VALUES (175, 'گلستان', 'آق قلا', '497');
INSERT INTO `kode_meli_prefix` VALUES (176, 'گلستان', 'بندرترکمن', '223');
INSERT INTO `kode_meli_prefix` VALUES (177, 'گلستان', 'بندرگز', '689');
INSERT INTO `kode_meli_prefix` VALUES (178, 'گلستان', 'رامیان', '487');
INSERT INTO `kode_meli_prefix` VALUES (179, 'گلستان', 'علی آباد', '226');
INSERT INTO `kode_meli_prefix` VALUES (180, 'گلستان', 'کردکوی', '224');
INSERT INTO `kode_meli_prefix` VALUES (181, 'گلستان', 'کلاله', '486');
INSERT INTO `kode_meli_prefix` VALUES (182, 'گلستان', 'گرگان', '211');
INSERT INTO `kode_meli_prefix` VALUES (183, 'گلستان', 'گرگان', '212');
INSERT INTO `kode_meli_prefix` VALUES (184, 'گلستان', 'گمیشان', '628');
INSERT INTO `kode_meli_prefix` VALUES (185, 'گلستان', 'گنبد کاووس', '202');
INSERT INTO `kode_meli_prefix` VALUES (186, 'گلستان', 'گنبد کاووس', '203');
INSERT INTO `kode_meli_prefix` VALUES (187, 'گلستان', 'مراوه تپه', '531');
INSERT INTO `kode_meli_prefix` VALUES (188, 'گلستان', 'مینودشت', '488');
INSERT INTO `kode_meli_prefix` VALUES (189, 'گیلان', 'آستارا', '261');
INSERT INTO `kode_meli_prefix` VALUES (190, 'گیلان', 'آستانه', '273');
INSERT INTO `kode_meli_prefix` VALUES (191, 'گیلان', 'املش', '630');
INSERT INTO `kode_meli_prefix` VALUES (192, 'گیلان', 'بندرانزلی', '264');
INSERT INTO `kode_meli_prefix` VALUES (193, 'گیلان', 'خمام', '518');
INSERT INTO `kode_meli_prefix` VALUES (194, 'گیلان', 'رحیم آباد', '631');
INSERT INTO `kode_meli_prefix` VALUES (195, 'گیلان', 'رشت', '258');
INSERT INTO `kode_meli_prefix` VALUES (196, 'گیلان', 'رشت', '259');
INSERT INTO `kode_meli_prefix` VALUES (197, 'گیلان', 'رضوانشهر', '570');
INSERT INTO `kode_meli_prefix` VALUES (198, 'گیلان', 'رودبار', '265');
INSERT INTO `kode_meli_prefix` VALUES (199, 'گیلان', 'رودسر', '268');
INSERT INTO `kode_meli_prefix` VALUES (200, 'گیلان', 'رودسر', '269');
INSERT INTO `kode_meli_prefix` VALUES (201, 'گیلان', 'سنگر', '653');
INSERT INTO `kode_meli_prefix` VALUES (202, 'گیلان', 'سیاهکل', '517');
INSERT INTO `kode_meli_prefix` VALUES (203, 'گیلان', 'شفت', '569');
INSERT INTO `kode_meli_prefix` VALUES (204, 'گیلان', 'صومعه سرا', '267');
INSERT INTO `kode_meli_prefix` VALUES (205, 'گیلان', 'طالش', '262');
INSERT INTO `kode_meli_prefix` VALUES (206, 'گیلان', 'طالش', '263');
INSERT INTO `kode_meli_prefix` VALUES (207, 'گیلان', 'عمارلو', '593');
INSERT INTO `kode_meli_prefix` VALUES (208, 'گیلان', 'فومن', '266');
INSERT INTO `kode_meli_prefix` VALUES (209, 'گیلان', 'کوچصفهان', '693');
INSERT INTO `kode_meli_prefix` VALUES (210, 'گیلان', 'لاهیجان', '271');
INSERT INTO `kode_meli_prefix` VALUES (211, 'گیلان', 'لاهیجان', '272');
INSERT INTO `kode_meli_prefix` VALUES (212, 'گیلان', 'لشت نشاء', '694');
INSERT INTO `kode_meli_prefix` VALUES (213, 'گیلان', 'لنگرود', '270');
INSERT INTO `kode_meli_prefix` VALUES (214, 'گیلان', 'ماسال و شاندرمن', '516');
INSERT INTO `kode_meli_prefix` VALUES (215, 'کرمانشاه', 'اسلام آباد', '333');
INSERT INTO `kode_meli_prefix` VALUES (216, 'کرمانشاه', 'اسلام آباد', '334');
INSERT INTO `kode_meli_prefix` VALUES (217, 'کرمانشاه', 'باینگان', '691');
INSERT INTO `kode_meli_prefix` VALUES (218, 'کرمانشاه', 'پاوه', '322');
INSERT INTO `kode_meli_prefix` VALUES (219, 'کرمانشاه', 'پاوه', '323');
INSERT INTO `kode_meli_prefix` VALUES (220, 'کرمانشاه', 'ثلاث باباجانی', '595');
INSERT INTO `kode_meli_prefix` VALUES (221, 'کرمانشاه', 'جوانرود', '395');
INSERT INTO `kode_meli_prefix` VALUES (222, 'کرمانشاه', 'حمیل', '641');
INSERT INTO `kode_meli_prefix` VALUES (223, 'کرمانشاه', 'روانسر', '596');
INSERT INTO `kode_meli_prefix` VALUES (224, 'کرمانشاه', 'سرپل ذهاب', '336');
INSERT INTO `kode_meli_prefix` VALUES (225, 'کرمانشاه', 'سنقر', '335');
INSERT INTO `kode_meli_prefix` VALUES (226, 'کرمانشاه', 'صحنه', '496');
INSERT INTO `kode_meli_prefix` VALUES (227, 'کرمانشاه', 'قصرشیرین', '337');
INSERT INTO `kode_meli_prefix` VALUES (228, 'کرمانشاه', 'کرمانشاه', '324');
INSERT INTO `kode_meli_prefix` VALUES (229, 'کرمانشاه', 'کرمانشاه', '325');
INSERT INTO `kode_meli_prefix` VALUES (230, 'کرمانشاه', 'کرند', '394');
INSERT INTO `kode_meli_prefix` VALUES (231, 'کرمانشاه', 'کنگاور', '330');
INSERT INTO `kode_meli_prefix` VALUES (232, 'کرمانشاه', 'گیلانغرب', '332');
INSERT INTO `kode_meli_prefix` VALUES (233, 'کرمانشاه', 'هرسین', '331');
INSERT INTO `kode_meli_prefix` VALUES (234, 'کهکیلویه و بویراحمد', 'باشت', '687');
INSERT INTO `kode_meli_prefix` VALUES (235, 'کهکیلویه و بویراحمد', 'بویراحمد(یاسوج)', '422');
INSERT INTO `kode_meli_prefix` VALUES (236, 'کهکیلویه و بویراحمد', 'بویراحمد(یاسوج)', '423');
INSERT INTO `kode_meli_prefix` VALUES (237, 'کهکیلویه و بویراحمد', 'بهمنی', '599');
INSERT INTO `kode_meli_prefix` VALUES (238, 'کهکیلویه و بویراحمد', 'چاروسا', '600');
INSERT INTO `kode_meli_prefix` VALUES (239, 'کهکیلویه و بویراحمد', 'دروهان', '688');
INSERT INTO `kode_meli_prefix` VALUES (240, 'کهکیلویه و بویراحمد', 'کهکیلویه(دهدشت)', '424');
INSERT INTO `kode_meli_prefix` VALUES (241, 'کهکیلویه و بویراحمد', 'کهکیلویه(دهدشت)', '425');
INSERT INTO `kode_meli_prefix` VALUES (242, 'کهکیلویه و بویراحمد', 'گچساران(دوگنبدان)', '426');
INSERT INTO `kode_meli_prefix` VALUES (243, 'کهکیلویه و بویراحمد', 'لنده', '550');
INSERT INTO `kode_meli_prefix` VALUES (244, 'کهکیلویه و بویراحمد', 'مارگون', '697');
INSERT INTO `kode_meli_prefix` VALUES (245, 'کردستان', 'بانه', '384');
INSERT INTO `kode_meli_prefix` VALUES (246, 'کردستان', 'بیجار', '377');
INSERT INTO `kode_meli_prefix` VALUES (247, 'کردستان', 'بیجار', '378');
INSERT INTO `kode_meli_prefix` VALUES (248, 'کردستان', 'دهگلان', '558');
INSERT INTO `kode_meli_prefix` VALUES (249, 'کردستان', 'دیواندره', '385');
INSERT INTO `kode_meli_prefix` VALUES (250, 'کردستان', 'سروآباد', '646');
INSERT INTO `kode_meli_prefix` VALUES (251, 'کردستان', 'سقز', '375');
INSERT INTO `kode_meli_prefix` VALUES (252, 'کردستان', 'سقز', '376');
INSERT INTO `kode_meli_prefix` VALUES (253, 'کردستان', 'سنندج', '372');
INSERT INTO `kode_meli_prefix` VALUES (254, 'کردستان', 'سنندج', '373');
INSERT INTO `kode_meli_prefix` VALUES (255, 'کردستان', 'قروه', '379');
INSERT INTO `kode_meli_prefix` VALUES (256, 'کردستان', 'قروه', '380');
INSERT INTO `kode_meli_prefix` VALUES (257, 'کردستان', 'کامیاران', '383');
INSERT INTO `kode_meli_prefix` VALUES (258, 'کردستان', 'کرانی', '674');
INSERT INTO `kode_meli_prefix` VALUES (259, 'کردستان', 'مریوان', '381');
INSERT INTO `kode_meli_prefix` VALUES (260, 'کردستان', 'مریوان', '382');
INSERT INTO `kode_meli_prefix` VALUES (261, 'کردستان', 'نمشیر', '676');
INSERT INTO `kode_meli_prefix` VALUES (262, 'کرمان', 'ارزونیه', '722');
INSERT INTO `kode_meli_prefix` VALUES (263, 'کرمان', 'انار', '542');
INSERT INTO `kode_meli_prefix` VALUES (264, 'کرمان', 'بافت', '312');
INSERT INTO `kode_meli_prefix` VALUES (265, 'کرمان', 'شهربابک', '313');
INSERT INTO `kode_meli_prefix` VALUES (266, 'کرمان', 'بردسیر', '317');
INSERT INTO `kode_meli_prefix` VALUES (267, 'کرمان', 'بم', '310');
INSERT INTO `kode_meli_prefix` VALUES (268, 'کرمان', 'بم', '311');
INSERT INTO `kode_meli_prefix` VALUES (269, 'کرمان', 'جیرفت', '302');
INSERT INTO `kode_meli_prefix` VALUES (270, 'کرمان', 'جیرفت', '303');
INSERT INTO `kode_meli_prefix` VALUES (271, 'کرمان', 'رابر', '583');
INSERT INTO `kode_meli_prefix` VALUES (272, 'کرمان', 'راور', '321');
INSERT INTO `kode_meli_prefix` VALUES (273, 'کرمان', 'راین', '382');
INSERT INTO `kode_meli_prefix` VALUES (274, 'کرمان', 'رفسنجان', '304');
INSERT INTO `kode_meli_prefix` VALUES (275, 'کرمان', 'رفسنجان', '305');
INSERT INTO `kode_meli_prefix` VALUES (276, 'کرمان', 'رودبار کهنوج', '536');
INSERT INTO `kode_meli_prefix` VALUES (277, 'کرمان', 'ریگان', '605');
INSERT INTO `kode_meli_prefix` VALUES (278, 'کرمان', 'زرند', '308');
INSERT INTO `kode_meli_prefix` VALUES (279, 'کرمان', 'زرند', '309');
INSERT INTO `kode_meli_prefix` VALUES (280, 'کرمان', 'سیرجان', '306');
INSERT INTO `kode_meli_prefix` VALUES (281, 'کرمان', 'سیرجان', '307');
INSERT INTO `kode_meli_prefix` VALUES (282, 'کرمان', 'شهداد', '319');
INSERT INTO `kode_meli_prefix` VALUES (283, 'کرمان', 'شهربابک', '314');
INSERT INTO `kode_meli_prefix` VALUES (284, 'کرمان', 'عنبرآباد', '606');
INSERT INTO `kode_meli_prefix` VALUES (285, 'کرمان', 'فهرج', '320');
INSERT INTO `kode_meli_prefix` VALUES (286, 'کرمان', 'قلعه گنج', '698');
INSERT INTO `kode_meli_prefix` VALUES (287, 'کرمان', 'کرمان', '298');
INSERT INTO `kode_meli_prefix` VALUES (288, 'کرمان', 'کرمان', '299');
INSERT INTO `kode_meli_prefix` VALUES (289, 'کرمان', 'کوهبنان', '535');
INSERT INTO `kode_meli_prefix` VALUES (290, 'کرمان', 'کهنوج', '315');
INSERT INTO `kode_meli_prefix` VALUES (291, 'کرمان', 'کهنوج', '316');
INSERT INTO `kode_meli_prefix` VALUES (292, 'کرمان', 'گلباف', '318');
INSERT INTO `kode_meli_prefix` VALUES (293, 'کرمان', 'ماهان', '607');
INSERT INTO `kode_meli_prefix` VALUES (294, 'کرمان', 'منوجان', '608');
INSERT INTO `kode_meli_prefix` VALUES (295, 'قزوین', 'آبیک', '508');
INSERT INTO `kode_meli_prefix` VALUES (296, 'قزوین', 'آوج', '538');
INSERT INTO `kode_meli_prefix` VALUES (297, 'قزوین', 'البرز', '728');
INSERT INTO `kode_meli_prefix` VALUES (298, 'قزوین', 'بوئین زهرا', '509');
INSERT INTO `kode_meli_prefix` VALUES (299, 'قزوین', 'تاکستان', '438');
INSERT INTO `kode_meli_prefix` VALUES (300, 'قزوین', 'تاکستان', '439');
INSERT INTO `kode_meli_prefix` VALUES (301, 'قزوین', 'رودبار الموت', '580');
INSERT INTO `kode_meli_prefix` VALUES (302, 'قزوین', 'رودبار شهرستان', '590');
INSERT INTO `kode_meli_prefix` VALUES (303, 'قزوین', 'ضیاءآباد', '559');
INSERT INTO `kode_meli_prefix` VALUES (304, 'قزوین', 'طارم سفلی', '588');
INSERT INTO `kode_meli_prefix` VALUES (305, 'قزوین', 'قزوین', '431');
INSERT INTO `kode_meli_prefix` VALUES (306, 'قزوین', 'قزوین', '432');
INSERT INTO `kode_meli_prefix` VALUES (307, 'قم', 'قم', '37');
INSERT INTO `kode_meli_prefix` VALUES (308, 'قم', 'قم', '38');
INSERT INTO `kode_meli_prefix` VALUES (309, 'قم', 'کهک', '702');
INSERT INTO `kode_meli_prefix` VALUES (310, 'فارس', 'آباده', '240');
INSERT INTO `kode_meli_prefix` VALUES (311, 'فارس', 'آباده', '241');
INSERT INTO `kode_meli_prefix` VALUES (312, 'فارس', 'آباده طشک', '670');
INSERT INTO `kode_meli_prefix` VALUES (313, 'فارس', 'ارسنجان', '648');
INSERT INTO `kode_meli_prefix` VALUES (314, 'فارس', 'استهبان', '252');
INSERT INTO `kode_meli_prefix` VALUES (315, 'فارس', 'اشکنان', '678');
INSERT INTO `kode_meli_prefix` VALUES (316, 'فارس', 'سپیدان', '253');
INSERT INTO `kode_meli_prefix` VALUES (317, 'فارس', 'اوز', '649');
INSERT INTO `kode_meli_prefix` VALUES (318, 'فارس', 'بوانات', '513');
INSERT INTO `kode_meli_prefix` VALUES (319, 'فارس', 'بیضا', '546');
INSERT INTO `kode_meli_prefix` VALUES (320, 'فارس', 'جویم', '671');
INSERT INTO `kode_meli_prefix` VALUES (321, 'فارس', 'جهرم', '246');
INSERT INTO `kode_meli_prefix` VALUES (322, 'فارس', 'جهرم', '247');
INSERT INTO `kode_meli_prefix` VALUES (323, 'فارس', 'حاجی آباد(زرین دشت)', '654');
INSERT INTO `kode_meli_prefix` VALUES (324, 'فارس', 'خرامه', '548');
INSERT INTO `kode_meli_prefix` VALUES (325, 'فارس', 'خشت و کمارج', '547');
INSERT INTO `kode_meli_prefix` VALUES (326, 'فارس', 'خفر', '655');
INSERT INTO `kode_meli_prefix` VALUES (327, 'فارس', 'داراب', '248');
INSERT INTO `kode_meli_prefix` VALUES (328, 'فارس', 'داراب', '249');
INSERT INTO `kode_meli_prefix` VALUES (329, 'فارس', 'سروستان', '514');
INSERT INTO `kode_meli_prefix` VALUES (330, 'فارس', 'سعادت آباد', '665');
INSERT INTO `kode_meli_prefix` VALUES (331, 'فارس', 'شیبکوه', '673');
INSERT INTO `kode_meli_prefix` VALUES (332, 'فارس', 'شیراز', '228');
INSERT INTO `kode_meli_prefix` VALUES (333, 'فارس', 'شیراز', '229');
INSERT INTO `kode_meli_prefix` VALUES (334, 'فارس', 'شیراز', '230');
INSERT INTO `kode_meli_prefix` VALUES (335, 'فارس', 'فراشبند', '679');
INSERT INTO `kode_meli_prefix` VALUES (336, 'فارس', 'فسا', '256');
INSERT INTO `kode_meli_prefix` VALUES (337, 'فارس', 'فسا', '257');
INSERT INTO `kode_meli_prefix` VALUES (338, 'فارس', 'فیروزآباد', '244');
INSERT INTO `kode_meli_prefix` VALUES (339, 'فارس', 'فیروزآباد', '245');
INSERT INTO `kode_meli_prefix` VALUES (340, 'فارس', 'قنقری(خرم بید)', '681');
INSERT INTO `kode_meli_prefix` VALUES (341, 'فارس', 'قیروکارزین', '723');
INSERT INTO `kode_meli_prefix` VALUES (342, 'فارس', 'کازرون', '236');
INSERT INTO `kode_meli_prefix` VALUES (343, 'فارس', 'کازرون', '237');
INSERT INTO `kode_meli_prefix` VALUES (344, 'فارس', 'کوار', '683');
INSERT INTO `kode_meli_prefix` VALUES (345, 'فارس', 'کراش', '656');
INSERT INTO `kode_meli_prefix` VALUES (346, 'فارس', 'لارستان', '250');
INSERT INTO `kode_meli_prefix` VALUES (347, 'فارس', 'لارستان', '251');
INSERT INTO `kode_meli_prefix` VALUES (348, 'فارس', 'لامرد', '515');
INSERT INTO `kode_meli_prefix` VALUES (349, 'فارس', 'مرودشت', '242');
INSERT INTO `kode_meli_prefix` VALUES (350, 'فارس', 'مرودشت', '243');
INSERT INTO `kode_meli_prefix` VALUES (351, 'فارس', 'ممسنی', '238');
INSERT INTO `kode_meli_prefix` VALUES (352, 'فارس', 'ممسنی', '239');
INSERT INTO `kode_meli_prefix` VALUES (353, 'فارس', 'مهر', '657');
INSERT INTO `kode_meli_prefix` VALUES (354, 'فارس', 'نی ریز', '255');
INSERT INTO `kode_meli_prefix` VALUES (355, 'سمنان', 'ایوانکی', '684');
INSERT INTO `kode_meli_prefix` VALUES (356, 'سمنان', 'بسطام', '700');
INSERT INTO `kode_meli_prefix` VALUES (357, 'سمنان', 'بیارجمند', '642');
INSERT INTO `kode_meli_prefix` VALUES (358, 'سمنان', 'دامغان', '457');
INSERT INTO `kode_meli_prefix` VALUES (359, 'سمنان', 'سمنان', '456');
INSERT INTO `kode_meli_prefix` VALUES (360, 'سمنان', 'شاهرود', '458');
INSERT INTO `kode_meli_prefix` VALUES (361, 'سمنان', 'شاهرود', '459');
INSERT INTO `kode_meli_prefix` VALUES (362, 'سمنان', 'گرمسار', '460');
INSERT INTO `kode_meli_prefix` VALUES (363, 'سمنان', 'مهدیشهر', '530');
INSERT INTO `kode_meli_prefix` VALUES (364, 'سمنان', 'میامی', '520');
INSERT INTO `kode_meli_prefix` VALUES (365, 'سیستان و بلوچستان', 'ایرانشهر', '358');
INSERT INTO `kode_meli_prefix` VALUES (366, 'سیستان و بلوچستان', 'ایرانشهر', '359');
INSERT INTO `kode_meli_prefix` VALUES (367, 'سیستان و بلوچستان', 'بزمان', '682');
INSERT INTO `kode_meli_prefix` VALUES (368, 'سیستان و بلوچستان', 'بمپور', '703');
INSERT INTO `kode_meli_prefix` VALUES (369, 'سیستان و بلوچستان', 'چابهار', '364');
INSERT INTO `kode_meli_prefix` VALUES (370, 'سیستان و بلوچستان', 'چابهار', '365');
INSERT INTO `kode_meli_prefix` VALUES (371, 'سیستان و بلوچستان', 'خاش', '371');
INSERT INTO `kode_meli_prefix` VALUES (372, 'سیستان و بلوچستان', 'دشتیاری', '701');
INSERT INTO `kode_meli_prefix` VALUES (373, 'سیستان و بلوچستان', 'راسک', '720');
INSERT INTO `kode_meli_prefix` VALUES (374, 'سیستان و بلوچستان', 'زابل', '366');
INSERT INTO `kode_meli_prefix` VALUES (375, 'سیستان و بلوچستان', 'زابل', '367');
INSERT INTO `kode_meli_prefix` VALUES (376, 'سیستان و بلوچستان', 'زابلی', '704');
INSERT INTO `kode_meli_prefix` VALUES (377, 'سیستان و بلوچستان', 'زاهدان', '361');
INSERT INTO `kode_meli_prefix` VALUES (378, 'سیستان و بلوچستان', 'زاهدان', '362');
INSERT INTO `kode_meli_prefix` VALUES (379, 'سیستان و بلوچستان', 'سراوان', '369');
INSERT INTO `kode_meli_prefix` VALUES (380, 'سیستان و بلوچستان', 'سراوان', '370');
INSERT INTO `kode_meli_prefix` VALUES (381, 'سیستان و بلوچستان', 'سرباز', '635');
INSERT INTO `kode_meli_prefix` VALUES (382, 'سیستان و بلوچستان', 'سیب و سوران', '668');
INSERT INTO `kode_meli_prefix` VALUES (383, 'سیستان و بلوچستان', 'شهرکی و ناروئی(زهک)', '533');
INSERT INTO `kode_meli_prefix` VALUES (384, 'سیستان و بلوچستان', 'شیب آب', '705');
INSERT INTO `kode_meli_prefix` VALUES (385, 'سیستان و بلوچستان', 'فنوج', '699');
INSERT INTO `kode_meli_prefix` VALUES (386, 'سیستان و بلوچستان', 'قصرقند', '669');
INSERT INTO `kode_meli_prefix` VALUES (387, 'سیستان و بلوچستان', 'کنارک', '725');
INSERT INTO `kode_meli_prefix` VALUES (388, 'سیستان و بلوچستان', 'لاشار(اسپکه)', '597');
INSERT INTO `kode_meli_prefix` VALUES (389, 'سیستان و بلوچستان', 'میرجاوه', '611');
INSERT INTO `kode_meli_prefix` VALUES (390, 'سیستان و بلوچستان', 'نیک شهر', '525');
INSERT INTO `kode_meli_prefix` VALUES (391, 'خوزستان', 'آبادان', '181');
INSERT INTO `kode_meli_prefix` VALUES (392, 'خوزستان', 'آغاجاری', '527');
INSERT INTO `kode_meli_prefix` VALUES (393, 'خوزستان', 'اروندکنار', '585');
INSERT INTO `kode_meli_prefix` VALUES (394, 'خوزستان', 'امیدیه', '685');
INSERT INTO `kode_meli_prefix` VALUES (395, 'خوزستان', 'اندیکا', '663');
INSERT INTO `kode_meli_prefix` VALUES (396, 'خوزستان', 'اندیمشک', '192');
INSERT INTO `kode_meli_prefix` VALUES (397, 'خوزستان', 'اندیمشک', '193');
INSERT INTO `kode_meli_prefix` VALUES (398, 'خوزستان', 'اهواز', '174');
INSERT INTO `kode_meli_prefix` VALUES (399, 'خوزستان', 'اهواز', '175');
INSERT INTO `kode_meli_prefix` VALUES (400, 'خوزستان', 'ایذه', '183');
INSERT INTO `kode_meli_prefix` VALUES (401, 'خوزستان', 'ایذه', '184');
INSERT INTO `kode_meli_prefix` VALUES (402, 'خوزستان', 'باغ ملک', '481');
INSERT INTO `kode_meli_prefix` VALUES (403, 'خوزستان', 'بندر امام خمینی', '706');
INSERT INTO `kode_meli_prefix` VALUES (404, 'خوزستان', 'بندرماهشهر', '194');
INSERT INTO `kode_meli_prefix` VALUES (405, 'خوزستان', 'بندرماهشهر', '195');
INSERT INTO `kode_meli_prefix` VALUES (406, 'خوزستان', 'بهبهان', '185');
INSERT INTO `kode_meli_prefix` VALUES (407, 'خوزستان', 'بهبهان', '186');
INSERT INTO `kode_meli_prefix` VALUES (408, 'خوزستان', 'خرمشهر', '182');
INSERT INTO `kode_meli_prefix` VALUES (409, 'خوزستان', 'دزفول', '199');
INSERT INTO `kode_meli_prefix` VALUES (410, 'خوزستان', 'دزفول', '200');
INSERT INTO `kode_meli_prefix` VALUES (411, 'خوزستان', 'دشت آزادگان', '198');
INSERT INTO `kode_meli_prefix` VALUES (412, 'خوزستان', 'رامشیر', '662');
INSERT INTO `kode_meli_prefix` VALUES (413, 'خوزستان', 'رامهرمز', '190');
INSERT INTO `kode_meli_prefix` VALUES (414, 'خوزستان', 'رامهرمز', '191');
INSERT INTO `kode_meli_prefix` VALUES (415, 'خوزستان', 'سردشت', '692');
INSERT INTO `kode_meli_prefix` VALUES (416, 'خوزستان', 'شادگان', '189');
INSERT INTO `kode_meli_prefix` VALUES (417, 'خوزستان', 'شاوور', '707');
INSERT INTO `kode_meli_prefix` VALUES (418, 'خوزستان', 'شوش', '526');
INSERT INTO `kode_meli_prefix` VALUES (419, 'خوزستان', 'شوشتر', '187');
INSERT INTO `kode_meli_prefix` VALUES (420, 'خوزستان', 'شوشتر', '188');
INSERT INTO `kode_meli_prefix` VALUES (421, 'خوزستان', 'گتوند', '729');
INSERT INTO `kode_meli_prefix` VALUES (422, 'خوزستان', 'لالی', '730');
INSERT INTO `kode_meli_prefix` VALUES (423, 'خوزستان', 'مسجدسلیمان', '196');
INSERT INTO `kode_meli_prefix` VALUES (424, 'خوزستان', 'مسجدسلیمان', '197');
INSERT INTO `kode_meli_prefix` VALUES (425, 'خوزستان', 'هندیجان', '661');
INSERT INTO `kode_meli_prefix` VALUES (426, 'خوزستان', 'هویزه', '680');
INSERT INTO `kode_meli_prefix` VALUES (427, 'خراسان رضوی', 'احمدآباد', '643');
INSERT INTO `kode_meli_prefix` VALUES (428, 'خراسان رضوی', 'بجستان', '562');
INSERT INTO `kode_meli_prefix` VALUES (429, 'خراسان رضوی', 'بردسکن', '572');
INSERT INTO `kode_meli_prefix` VALUES (430, 'خراسان رضوی', 'تایباد', '74');
INSERT INTO `kode_meli_prefix` VALUES (431, 'خراسان رضوی', 'تخت جلگه', '644');
INSERT INTO `kode_meli_prefix` VALUES (432, 'خراسان رضوی', 'تربت جام', '72');
INSERT INTO `kode_meli_prefix` VALUES (433, 'خراسان رضوی', 'تربت جام', '73');
INSERT INTO `kode_meli_prefix` VALUES (434, 'خراسان رضوی', 'تربت حیدریه', '69');
INSERT INTO `kode_meli_prefix` VALUES (435, 'خراسان رضوی', 'تربت حیدریه', '70');
INSERT INTO `kode_meli_prefix` VALUES (436, 'خراسان رضوی', 'جغتای', '521');
INSERT INTO `kode_meli_prefix` VALUES (437, 'خراسان رضوی', 'جوین', '573');
INSERT INTO `kode_meli_prefix` VALUES (438, 'خراسان رضوی', 'چناران', '522');
INSERT INTO `kode_meli_prefix` VALUES (439, 'خراسان رضوی', 'خلیل آباد', '724');
INSERT INTO `kode_meli_prefix` VALUES (440, 'خراسان رضوی', 'خواف', '76');
INSERT INTO `kode_meli_prefix` VALUES (441, 'خراسان رضوی', 'درگز', '77');
INSERT INTO `kode_meli_prefix` VALUES (442, 'خراسان رضوی', 'رشتخوار', '650');
INSERT INTO `kode_meli_prefix` VALUES (443, 'خراسان رضوی', 'زبرخان', '574');
INSERT INTO `kode_meli_prefix` VALUES (444, 'خراسان رضوی', 'سبزوار', '78');
INSERT INTO `kode_meli_prefix` VALUES (445, 'خراسان رضوی', 'سبزوار', '79');
INSERT INTO `kode_meli_prefix` VALUES (446, 'خراسان رضوی', 'سرخس', '81');
INSERT INTO `kode_meli_prefix` VALUES (447, 'خراسان رضوی', 'فریمان', '84');
INSERT INTO `kode_meli_prefix` VALUES (448, 'خراسان رضوی', 'فیض آباد', '651');
INSERT INTO `kode_meli_prefix` VALUES (449, 'خراسان رضوی', 'قوچان', '86');
INSERT INTO `kode_meli_prefix` VALUES (450, 'خراسان رضوی', 'قوچان', '87');
INSERT INTO `kode_meli_prefix` VALUES (451, 'خراسان رضوی', 'کاشمر', '89');
INSERT INTO `kode_meli_prefix` VALUES (452, 'خراسان رضوی', 'کاشمر', '90');
INSERT INTO `kode_meli_prefix` VALUES (453, 'خراسان رضوی', 'کلات', '553');
INSERT INTO `kode_meli_prefix` VALUES (454, 'خراسان رضوی', 'گناباد', '91');
INSERT INTO `kode_meli_prefix` VALUES (455, 'خراسان رضوی', 'مشهد', '92');
INSERT INTO `kode_meli_prefix` VALUES (456, 'خراسان رضوی', 'مشهد', '93');
INSERT INTO `kode_meli_prefix` VALUES (457, 'خراسان رضوی', 'مشهد', '94');
INSERT INTO `kode_meli_prefix` VALUES (458, 'خراسان رضوی', 'مشهد منطقه2', '97');
INSERT INTO `kode_meli_prefix` VALUES (459, 'خراسان رضوی', 'مشهد منطقه3', '98');
INSERT INTO `kode_meli_prefix` VALUES (460, 'خراسان رضوی', 'مشهد منطقه1', '96');
INSERT INTO `kode_meli_prefix` VALUES (461, 'خراسان رضوی', 'نیشابور', '105');
INSERT INTO `kode_meli_prefix` VALUES (462, 'خراسان رضوی', 'نیشابور', '106');
INSERT INTO `kode_meli_prefix` VALUES (463, 'خراسان شمالی', 'اسفراین', '63');
INSERT INTO `kode_meli_prefix` VALUES (464, 'خراسان شمالی', 'بجنورد', '67');
INSERT INTO `kode_meli_prefix` VALUES (465, 'خراسان شمالی', 'بجنورد', '68');
INSERT INTO `kode_meli_prefix` VALUES (466, 'خراسان شمالی', 'جاجرم', '75');
INSERT INTO `kode_meli_prefix` VALUES (467, 'خراسان شمالی', 'رازوجرکلان', '591');
INSERT INTO `kode_meli_prefix` VALUES (468, 'خراسان شمالی', 'شیروان', '82');
INSERT INTO `kode_meli_prefix` VALUES (469, 'خراسان شمالی', 'فاروج', '635');
INSERT INTO `kode_meli_prefix` VALUES (470, 'خراسان شمالی', 'مانه و سملقان', '524');
INSERT INTO `kode_meli_prefix` VALUES (471, 'چهارمحال و بختیاری', 'اردل', '468');
INSERT INTO `kode_meli_prefix` VALUES (472, 'چهارمحال و بختیاری', 'بروجن', '465');
INSERT INTO `kode_meli_prefix` VALUES (473, 'چهارمحال و بختیاری', 'شهرکرد', '461');
INSERT INTO `kode_meli_prefix` VALUES (474, 'چهارمحال و بختیاری', 'شهرکرد', '462');
INSERT INTO `kode_meli_prefix` VALUES (475, 'چهارمحال و بختیاری', 'فارسان', '467');
INSERT INTO `kode_meli_prefix` VALUES (476, 'چهارمحال و بختیاری', 'فلارد', '632');
INSERT INTO `kode_meli_prefix` VALUES (477, 'چهارمحال و بختیاری', 'کوهرنگ', '555');
INSERT INTO `kode_meli_prefix` VALUES (478, 'چهارمحال و بختیاری', 'کیار', '633');
INSERT INTO `kode_meli_prefix` VALUES (479, 'چهارمحال و بختیاری', 'گندمان', '629');
INSERT INTO `kode_meli_prefix` VALUES (480, 'چهارمحال و بختیاری', 'لردگان', '466');
INSERT INTO `kode_meli_prefix` VALUES (481, 'چهارمحال و بختیاری', 'میانکوه', '696');
INSERT INTO `kode_meli_prefix` VALUES (482, 'خراسان جنوبی', 'بشرویه', '721');
INSERT INTO `kode_meli_prefix` VALUES (483, 'خراسان جنوبی', 'بیرجند', '64');
INSERT INTO `kode_meli_prefix` VALUES (484, 'خراسان جنوبی', 'بیرجند', '65');
INSERT INTO `kode_meli_prefix` VALUES (485, 'خراسان جنوبی', 'درمیان', '523');
INSERT INTO `kode_meli_prefix` VALUES (486, 'خراسان جنوبی', 'زیرکوه', '652');
INSERT INTO `kode_meli_prefix` VALUES (487, 'خراسان جنوبی', 'سرایان', '719');
INSERT INTO `kode_meli_prefix` VALUES (488, 'خراسان جنوبی', 'سربیشه', '716');
INSERT INTO `kode_meli_prefix` VALUES (489, 'خراسان جنوبی', 'فردوس', '85');
INSERT INTO `kode_meli_prefix` VALUES (490, 'خراسان جنوبی', 'قائنات', '88');
INSERT INTO `kode_meli_prefix` VALUES (491, 'خراسان جنوبی', 'نهبندان', '563');
INSERT INTO `kode_meli_prefix` VALUES (492, 'بوشهر', 'بندر دیلم', '529');
INSERT INTO `kode_meli_prefix` VALUES (493, 'بوشهر', 'بندر گناوه', '353');
INSERT INTO `kode_meli_prefix` VALUES (494, 'بوشهر', 'بوشهر', '349');
INSERT INTO `kode_meli_prefix` VALUES (495, 'بوشهر', 'بوشهر', '350');
INSERT INTO `kode_meli_prefix` VALUES (496, 'بوشهر', 'تنگستان', '355');
INSERT INTO `kode_meli_prefix` VALUES (497, 'بوشهر', 'جم', '609');
INSERT INTO `kode_meli_prefix` VALUES (498, 'بوشهر', 'دشتستان', '351');
INSERT INTO `kode_meli_prefix` VALUES (499, 'بوشهر', 'دشتستان', '352');
INSERT INTO `kode_meli_prefix` VALUES (500, 'بوشهر', 'دشتی', '354');
INSERT INTO `kode_meli_prefix` VALUES (501, 'بوشهر', 'دلوار', '732');
INSERT INTO `kode_meli_prefix` VALUES (502, 'بوشهر', 'دیر', '357');
INSERT INTO `kode_meli_prefix` VALUES (503, 'بوشهر', 'سعد آباد', '532');
INSERT INTO `kode_meli_prefix` VALUES (504, 'بوشهر', 'شبانکاره', '610');
INSERT INTO `kode_meli_prefix` VALUES (505, 'بوشهر', 'کنگان', '356');
INSERT INTO `kode_meli_prefix` VALUES (506, 'تهران', 'اسلامشهر', '556');
INSERT INTO `kode_meli_prefix` VALUES (507, 'تهران', 'پاکدشت', '658');
INSERT INTO `kode_meli_prefix` VALUES (508, 'تهران', 'تهران مرکزی', '1');
INSERT INTO `kode_meli_prefix` VALUES (509, 'تهران', 'تهران مرکزی', '2');
INSERT INTO `kode_meli_prefix` VALUES (510, 'تهران', 'تهران مرکزی', '3');
INSERT INTO `kode_meli_prefix` VALUES (511, 'تهران', 'تهران مرکزی', '4');
INSERT INTO `kode_meli_prefix` VALUES (512, 'تهران', 'تهران مرکزی', '5');
INSERT INTO `kode_meli_prefix` VALUES (513, 'تهران', 'تهران مرکزی', '6');
INSERT INTO `kode_meli_prefix` VALUES (514, 'تهران', 'تهران مرکزی', '7');
INSERT INTO `kode_meli_prefix` VALUES (515, 'تهران', 'تهران مرکزی', '8');
INSERT INTO `kode_meli_prefix` VALUES (516, 'تهران', 'تهران جنوب', '11');
INSERT INTO `kode_meli_prefix` VALUES (517, 'تهران', 'تهران شرق', '20');
INSERT INTO `kode_meli_prefix` VALUES (518, 'تهران', 'تهرانشمال', '25');
INSERT INTO `kode_meli_prefix` VALUES (519, 'تهران', 'تهران غرب', '15');
INSERT INTO `kode_meli_prefix` VALUES (520, 'تهران', 'دماوند', '43');
INSERT INTO `kode_meli_prefix` VALUES (521, 'تهران', 'رباط کریم', '666');
INSERT INTO `kode_meli_prefix` VALUES (522, 'تهران', 'شمیران', '44');
INSERT INTO `kode_meli_prefix` VALUES (523, 'تهران', 'شمیران', '45');
INSERT INTO `kode_meli_prefix` VALUES (524, 'تهران', 'شهرری', '48');
INSERT INTO `kode_meli_prefix` VALUES (525, 'تهران', 'شهرری', '49');
INSERT INTO `kode_meli_prefix` VALUES (526, 'تهران', 'شهریار', '490');
INSERT INTO `kode_meli_prefix` VALUES (527, 'تهران', 'شهریار', '491');
INSERT INTO `kode_meli_prefix` VALUES (528, 'تهران', 'فیروزکوه', '659');
INSERT INTO `kode_meli_prefix` VALUES (529, 'تهران', 'کهریزک', '664');
INSERT INTO `kode_meli_prefix` VALUES (530, 'تهران', 'ورامین', '41');
INSERT INTO `kode_meli_prefix` VALUES (531, 'تهران', 'ورامین', '42');
INSERT INTO `kode_meli_prefix` VALUES (532, 'البرز', 'طالقان', '695');
INSERT INTO `kode_meli_prefix` VALUES (533, 'البرز', 'کرج', '31');
INSERT INTO `kode_meli_prefix` VALUES (534, 'البرز', 'کرج', '32');
INSERT INTO `kode_meli_prefix` VALUES (535, 'البرز', 'نظرآباد', '717');
INSERT INTO `kode_meli_prefix` VALUES (536, 'البرز', 'ساوجبلاغ', '489');
INSERT INTO `kode_meli_prefix` VALUES (537, 'امور خارجه', 'امور خارجه', '471');
INSERT INTO `kode_meli_prefix` VALUES (538, 'امور خارجه', 'امور خارجه', '472');
INSERT INTO `kode_meli_prefix` VALUES (539, 'ایلام', 'آبدانان', '454');
INSERT INTO `kode_meli_prefix` VALUES (540, 'ایلام', 'ارکوازی(ملکشاهی)', '581');
INSERT INTO `kode_meli_prefix` VALUES (541, 'ایلام', 'ایلام', '449');
INSERT INTO `kode_meli_prefix` VALUES (542, 'ایلام', 'ایلام', '450');
INSERT INTO `kode_meli_prefix` VALUES (543, 'ایلام', 'ایوان', '616');
INSERT INTO `kode_meli_prefix` VALUES (544, 'ایلام', 'بدره', '534');
INSERT INTO `kode_meli_prefix` VALUES (545, 'ایلام', 'دره شهر', '455');
INSERT INTO `kode_meli_prefix` VALUES (546, 'ایلام', 'دهلران', '451');
INSERT INTO `kode_meli_prefix` VALUES (547, 'ایلام', 'زرین آباد', '726');
INSERT INTO `kode_meli_prefix` VALUES (548, 'ایلام', 'شیروان لومار', '634');
INSERT INTO `kode_meli_prefix` VALUES (549, 'ایلام', 'شیروان و چرداول', '453');
INSERT INTO `kode_meli_prefix` VALUES (550, 'ایلام', 'موسیان', '727');
INSERT INTO `kode_meli_prefix` VALUES (551, 'ایلام', 'مهران', '452');
INSERT INTO `kode_meli_prefix` VALUES (552, 'اردبیل', 'اردبیل', '145');
INSERT INTO `kode_meli_prefix` VALUES (553, 'اردبیل', 'اردبیل', '146');
INSERT INTO `kode_meli_prefix` VALUES (554, 'اردبیل', 'ارشق', '731');
INSERT INTO `kode_meli_prefix` VALUES (555, 'اردبیل', 'انگوت', '690');
INSERT INTO `kode_meli_prefix` VALUES (556, 'اردبیل', 'بیله سوار', '601');
INSERT INTO `kode_meli_prefix` VALUES (557, 'اردبیل', 'پارس آباد', '504');
INSERT INTO `kode_meli_prefix` VALUES (558, 'اردبیل', 'خلخال', '163');
INSERT INTO `kode_meli_prefix` VALUES (559, 'اردبیل', 'خورش رستم', '714');
INSERT INTO `kode_meli_prefix` VALUES (560, 'اردبیل', 'سرعین', '715');
INSERT INTO `kode_meli_prefix` VALUES (561, 'اردبیل', 'سنجبد(کوثر)', '566');
INSERT INTO `kode_meli_prefix` VALUES (562, 'اردبیل', 'مشکین شهر', '166');
INSERT INTO `kode_meli_prefix` VALUES (563, 'اردبیل', 'مشکین شهر', '167');
INSERT INTO `kode_meli_prefix` VALUES (564, 'اردبیل', 'مغان', '161');
INSERT INTO `kode_meli_prefix` VALUES (565, 'اردبیل', 'مغان', '162');
INSERT INTO `kode_meli_prefix` VALUES (566, 'اردبیل', 'نمین', '686');
INSERT INTO `kode_meli_prefix` VALUES (567, 'اردبیل', 'نیر', '603');
INSERT INTO `kode_meli_prefix` VALUES (568, 'اصفهان', 'آران و بیدگل', '619');
INSERT INTO `kode_meli_prefix` VALUES (569, 'اصفهان', 'اردستان', '118');
INSERT INTO `kode_meli_prefix` VALUES (570, 'اصفهان', 'اصفهان', '127');
INSERT INTO `kode_meli_prefix` VALUES (571, 'اصفهان', 'اصفهان', '128');
INSERT INTO `kode_meli_prefix` VALUES (572, 'اصفهان', 'اصفهان', '129');
INSERT INTO `kode_meli_prefix` VALUES (573, 'اصفهان', 'باغ بهادران', '620');
INSERT INTO `kode_meli_prefix` VALUES (574, 'اصفهان', 'بوئین و میاندشت', '621');
INSERT INTO `kode_meli_prefix` VALUES (575, 'اصفهان', 'تیران و کرون', '549');
INSERT INTO `kode_meli_prefix` VALUES (576, 'اصفهان', 'جرقویه', '564');
INSERT INTO `kode_meli_prefix` VALUES (577, 'اصفهان', 'چادگان', '575');
INSERT INTO `kode_meli_prefix` VALUES (578, 'اصفهان', 'خمینی شهر', '113');
INSERT INTO `kode_meli_prefix` VALUES (579, 'اصفهان', 'خمینی شهر', '114');
INSERT INTO `kode_meli_prefix` VALUES (580, 'اصفهان', 'خوانسار', '122');
INSERT INTO `kode_meli_prefix` VALUES (581, 'اصفهان', 'خور و بیابانک', '540');
INSERT INTO `kode_meli_prefix` VALUES (582, 'اصفهان', 'دولت آباد', '660');
INSERT INTO `kode_meli_prefix` VALUES (583, 'اصفهان', 'سمیرم', '120');
INSERT INTO `kode_meli_prefix` VALUES (584, 'اصفهان', 'سمیرم سفلی (دهاقان)', '512');
INSERT INTO `kode_meli_prefix` VALUES (585, 'اصفهان', 'شاهین شهر', '510');
INSERT INTO `kode_meli_prefix` VALUES (586, 'اصفهان', 'شاهین شهر', '511');
INSERT INTO `kode_meli_prefix` VALUES (587, 'اصفهان', 'شهرضا', '119');
INSERT INTO `kode_meli_prefix` VALUES (588, 'اصفهان', 'فریدن', '115');
INSERT INTO `kode_meli_prefix` VALUES (589, 'اصفهان', 'فریدونشهر', '112');
INSERT INTO `kode_meli_prefix` VALUES (590, 'اصفهان', 'فلاورجان', '110');
INSERT INTO `kode_meli_prefix` VALUES (591, 'اصفهان', 'فلاورجان', '111');
INSERT INTO `kode_meli_prefix` VALUES (592, 'اصفهان', 'کاشان', '125');
INSERT INTO `kode_meli_prefix` VALUES (593, 'اصفهان', 'کاشان', '126');
INSERT INTO `kode_meli_prefix` VALUES (594, 'اصفهان', 'کوهپایه', '565');
INSERT INTO `kode_meli_prefix` VALUES (595, 'اصفهان', 'گلپایگان', '121');
INSERT INTO `kode_meli_prefix` VALUES (596, 'اصفهان', 'لنجان(زرینشهر)', '116');
INSERT INTO `kode_meli_prefix` VALUES (597, 'اصفهان', 'لنجان(زرینشهر)', '117');
INSERT INTO `kode_meli_prefix` VALUES (598, 'اصفهان', 'مبارکه', '541');
INSERT INTO `kode_meli_prefix` VALUES (599, 'اصفهان', 'میمه', '622');
INSERT INTO `kode_meli_prefix` VALUES (600, 'اصفهان', 'نائین', '124');
INSERT INTO `kode_meli_prefix` VALUES (601, 'اصفهان', 'نجف آباد', '108');
INSERT INTO `kode_meli_prefix` VALUES (602, 'اصفهان', 'نجف آباد', '109');
INSERT INTO `kode_meli_prefix` VALUES (603, 'اصفهان', 'نطنز', '123');
INSERT INTO `kode_meli_prefix` VALUES (604, 'زنجان', 'زنجان', '427');
INSERT INTO `kode_meli_prefix` VALUES (605, 'زنجان', 'زنجان', '428');
INSERT INTO `kode_meli_prefix` VALUES (606, 'زنجان', 'ابهر و خرمدره', '615');
INSERT INTO `kode_meli_prefix` VALUES (607, 'آذربایجان شرقی', 'آذرشهر', '169');
INSERT INTO `kode_meli_prefix` VALUES (608, 'آذربایجان شرقی', 'اسکو', '170');
INSERT INTO `kode_meli_prefix` VALUES (609, 'آذربایجان شرقی', 'اهر', '149');
INSERT INTO `kode_meli_prefix` VALUES (610, 'آذربایجان شرقی', 'اهر', '150');
INSERT INTO `kode_meli_prefix` VALUES (611, 'آذربایجان شرقی', 'بستان آباد', '171');
INSERT INTO `kode_meli_prefix` VALUES (612, 'آذربایجان شرقی', 'بناب', '168');
INSERT INTO `kode_meli_prefix` VALUES (613, 'آذربایجان شرقی', 'تبریز', '136');
INSERT INTO `kode_meli_prefix` VALUES (614, 'آذربایجان شرقی', 'تبریز', '137');
INSERT INTO `kode_meli_prefix` VALUES (615, 'آذربایجان شرقی', 'تبریز', '138');
INSERT INTO `kode_meli_prefix` VALUES (616, 'آذربایجان شرقی', 'ترکمانچای', '545');
INSERT INTO `kode_meli_prefix` VALUES (617, 'آذربایجان شرقی', 'جلفا', '505');
INSERT INTO `kode_meli_prefix` VALUES (618, 'آذربایجان شرقی', 'چاروایماق', '636');
INSERT INTO `kode_meli_prefix` VALUES (619, 'آذربایجان شرقی', 'سراب', '164');
INSERT INTO `kode_meli_prefix` VALUES (620, 'آذربایجان شرقی', 'سراب', '165');
INSERT INTO `kode_meli_prefix` VALUES (621, 'آذربایجان شرقی', 'شبستر', '172');
INSERT INTO `kode_meli_prefix` VALUES (622, 'آذربایجان شرقی', 'صوفیان', '623');
INSERT INTO `kode_meli_prefix` VALUES (623, 'آذربایجان شرقی', 'عجب شیر', '506');
INSERT INTO `kode_meli_prefix` VALUES (624, 'آذربایجان شرقی', 'کلیبر', '519');
INSERT INTO `kode_meli_prefix` VALUES (625, 'آذربایجان شرقی', 'مراغه', '154');
INSERT INTO `kode_meli_prefix` VALUES (626, 'آذربایجان شرقی', 'مراغه', '155');
INSERT INTO `kode_meli_prefix` VALUES (627, 'آذربایجان شرقی', 'مرند', '158');
INSERT INTO `kode_meli_prefix` VALUES (628, 'آذربایجان شرقی', 'ملکان', '507');
INSERT INTO `kode_meli_prefix` VALUES (629, 'آذربایجان شرقی', 'میانه', '152');
INSERT INTO `kode_meli_prefix` VALUES (630, 'آذربایجان شرقی', 'میانه', '153');
INSERT INTO `kode_meli_prefix` VALUES (631, 'آذربایجان شرقی', 'ورزقان', '567');
INSERT INTO `kode_meli_prefix` VALUES (632, 'آذربایجان شرقی', 'هریس', '173');
INSERT INTO `kode_meli_prefix` VALUES (633, 'آذربایجان شرقی', 'هشترود', '159');
INSERT INTO `kode_meli_prefix` VALUES (634, 'آذربایجان شرقی', 'هشترود', '160');
INSERT INTO `kode_meli_prefix` VALUES (635, 'آذربایجان شرقی', 'هوراند', '604');
INSERT INTO `kode_meli_prefix` VALUES (636, 'آذربایجان غربی', 'ارومیه', '274');
INSERT INTO `kode_meli_prefix` VALUES (637, 'آذربایجان غربی', 'ارومیه', '275');
INSERT INTO `kode_meli_prefix` VALUES (638, 'آذربایجان غربی', 'اشنویه', '295');
INSERT INTO `kode_meli_prefix` VALUES (639, 'آذربایجان غربی', 'انزل', '637');
INSERT INTO `kode_meli_prefix` VALUES (640, 'آذربایجان غربی', 'بوکان', '292');
INSERT INTO `kode_meli_prefix` VALUES (641, 'آذربایجان غربی', 'پلدشت', '492');
INSERT INTO `kode_meli_prefix` VALUES (642, 'آذربایجان غربی', 'پیرانشهر', '289');
INSERT INTO `kode_meli_prefix` VALUES (643, 'آذربایجان غربی', 'تخت سلیمان', '677');
INSERT INTO `kode_meli_prefix` VALUES (644, 'آذربایجان غربی', 'تکاب', '294');
INSERT INTO `kode_meli_prefix` VALUES (645, 'آذربایجان غربی', 'چایپاره', '493');
INSERT INTO `kode_meli_prefix` VALUES (646, 'آذربایجان غربی', 'خوی', '279');
INSERT INTO `kode_meli_prefix` VALUES (647, 'آذربایجان غربی', 'خوی', '280');
INSERT INTO `kode_meli_prefix` VALUES (648, 'آذربایجان غربی', 'سردشت', '288');
INSERT INTO `kode_meli_prefix` VALUES (649, 'آذربایجان غربی', 'سلماس', '284');
INSERT INTO `kode_meli_prefix` VALUES (650, 'آذربایجان غربی', 'سلماس', '285');
INSERT INTO `kode_meli_prefix` VALUES (651, 'آذربایجان غربی', 'سیلوانه', '638');
INSERT INTO `kode_meli_prefix` VALUES (652, 'آذربایجان غربی', 'سیه چشمه(چالدران)', '291');
INSERT INTO `kode_meli_prefix` VALUES (653, 'آذربایجان غربی', 'شوط', '640');
INSERT INTO `kode_meli_prefix` VALUES (654, 'آذربایجان غربی', 'شاهین دژ', '293');
INSERT INTO `kode_meli_prefix` VALUES (655, 'آذربایجان غربی', 'کشاورز', '675');
INSERT INTO `kode_meli_prefix` VALUES (656, 'آذربایجان غربی', 'ماکو', '282');
INSERT INTO `kode_meli_prefix` VALUES (657, 'آذربایجان غربی', 'ماکو', '283');
INSERT INTO `kode_meli_prefix` VALUES (658, 'آذربایجان غربی', 'مهاباد', '286');
INSERT INTO `kode_meli_prefix` VALUES (659, 'آذربایجان غربی', 'مهاباد', '287');
INSERT INTO `kode_meli_prefix` VALUES (660, 'آذربایجان غربی', 'میاندوآب', '296');
INSERT INTO `kode_meli_prefix` VALUES (661, 'آذربایجان غربی', 'میاندوآب', '297');
INSERT INTO `kode_meli_prefix` VALUES (662, 'آذربایجان غربی', 'نقده', '290');
INSERT INTO `kode_meli_prefix` VALUES (663, 'همدان', 'اسدآباد', '400');
INSERT INTO `kode_meli_prefix` VALUES (664, 'همدان', 'اسدآباد', '401');
INSERT INTO `kode_meli_prefix` VALUES (665, 'همدان', 'بهار', '404');
INSERT INTO `kode_meli_prefix` VALUES (666, 'همدان', 'بهار', '405');
INSERT INTO `kode_meli_prefix` VALUES (667, 'همدان', 'تویسرکان', '397');
INSERT INTO `kode_meli_prefix` VALUES (668, 'همدان', 'رزن', '398');
INSERT INTO `kode_meli_prefix` VALUES (669, 'همدان', 'رزن', '399');
INSERT INTO `kode_meli_prefix` VALUES (670, 'همدان', 'شراء و پیشخوار', '647');
INSERT INTO `kode_meli_prefix` VALUES (671, 'همدان', 'فامنین', '502');
INSERT INTO `kode_meli_prefix` VALUES (672, 'همدان', 'قلقل رود', '584');
INSERT INTO `kode_meli_prefix` VALUES (673, 'همدان', 'کبودرآهنگ', '402');
INSERT INTO `kode_meli_prefix` VALUES (674, 'همدان', 'کبودرآهنگ', '403');
INSERT INTO `kode_meli_prefix` VALUES (675, 'همدان', 'ملایر', '392');
INSERT INTO `kode_meli_prefix` VALUES (676, 'همدان', 'ملایر', '393');
INSERT INTO `kode_meli_prefix` VALUES (677, 'همدان', 'نهاوند', '395');
INSERT INTO `kode_meli_prefix` VALUES (678, 'همدان', 'نهاوند', '396');
INSERT INTO `kode_meli_prefix` VALUES (679, 'همدان', 'همدان', '386');
INSERT INTO `kode_meli_prefix` VALUES (680, 'همدان', 'همدان', '387');
INSERT INTO `kode_meli_prefix` VALUES (681, 'یزد', 'ابرکوه', '503');
INSERT INTO `kode_meli_prefix` VALUES (682, 'یزد', 'اردکان', '444');
INSERT INTO `kode_meli_prefix` VALUES (683, 'یزد', 'اشکذر', '551');
INSERT INTO `kode_meli_prefix` VALUES (684, 'یزد', 'بافق', '447');
INSERT INTO `kode_meli_prefix` VALUES (685, 'یزد', 'بهاباد', '561');
INSERT INTO `kode_meli_prefix` VALUES (686, 'یزد', 'تفت', '445');
INSERT INTO `kode_meli_prefix` VALUES (687, 'یزد', 'دستگردان', '718');
INSERT INTO `kode_meli_prefix` VALUES (688, 'یزد', 'طبس', '83');
INSERT INTO `kode_meli_prefix` VALUES (689, 'یزد', 'مهریز', '446');
INSERT INTO `kode_meli_prefix` VALUES (690, 'یزد', 'میبد', '448');
INSERT INTO `kode_meli_prefix` VALUES (691, 'یزد', 'نیر', '552');
INSERT INTO `kode_meli_prefix` VALUES (692, 'یزد', 'هرات و مروست', '543');
INSERT INTO `kode_meli_prefix` VALUES (693, 'یزد', 'یزد', '442');
INSERT INTO `kode_meli_prefix` VALUES (694, 'یزد', 'یزد', '443');
INSERT INTO `kode_meli_prefix` VALUES (695, 'مرکزی', 'آشتیان', '51');
INSERT INTO `kode_meli_prefix` VALUES (696, 'مرکزی', 'اراک', '52');
INSERT INTO `kode_meli_prefix` VALUES (697, 'مرکزی', 'اراک', '53');
INSERT INTO `kode_meli_prefix` VALUES (698, 'مرکزی', 'تفرش', '58');
INSERT INTO `kode_meli_prefix` VALUES (699, 'مرکزی', 'خمین', '55');
INSERT INTO `kode_meli_prefix` VALUES (700, 'مرکزی', 'خنداب', '617');
INSERT INTO `kode_meli_prefix` VALUES (701, 'مرکزی', 'دلیجان', '57');
INSERT INTO `kode_meli_prefix` VALUES (702, 'مرکزی', 'زرند مرکزی', '618');
INSERT INTO `kode_meli_prefix` VALUES (703, 'مرکزی', 'ساوه', '59');
INSERT INTO `kode_meli_prefix` VALUES (704, 'مرکزی', 'ساوه', '60');
INSERT INTO `kode_meli_prefix` VALUES (705, 'مرکزی', 'سربند', '61');
INSERT INTO `kode_meli_prefix` VALUES (706, 'مرکزی', 'سربند', '62');
INSERT INTO `kode_meli_prefix` VALUES (707, 'مرکزی', 'فراهان', '544');
INSERT INTO `kode_meli_prefix` VALUES (708, 'مرکزی', 'محلات', '56');
INSERT INTO `kode_meli_prefix` VALUES (709, 'مرکزی', 'وفس', '571');
INSERT INTO `kode_meli_prefix` VALUES (710, 'مرکزی', 'هندودر', '593');
INSERT INTO `kode_meli_prefix` VALUES (711, 'هرمزگان', 'ابوموسی', '667');
INSERT INTO `kode_meli_prefix` VALUES (712, 'هرمزگان', 'بستک', '348');
INSERT INTO `kode_meli_prefix` VALUES (713, 'هرمزگان', 'بشاگرد', '586');
INSERT INTO `kode_meli_prefix` VALUES (714, 'هرمزگان', 'بندرعباس', '338');
INSERT INTO `kode_meli_prefix` VALUES (715, 'هرمزگان', 'بندرعباس', '339');
INSERT INTO `kode_meli_prefix` VALUES (716, 'هرمزگان', 'بندرلنگه', '343');
INSERT INTO `kode_meli_prefix` VALUES (717, 'هرمزگان', 'بندرلنگه', '344');
INSERT INTO `kode_meli_prefix` VALUES (718, 'هرمزگان', 'جاسک', '346');
INSERT INTO `kode_meli_prefix` VALUES (719, 'هرمزگان', 'حاجی آباد', '337');
INSERT INTO `kode_meli_prefix` VALUES (720, 'هرمزگان', 'خمیر', '554');
INSERT INTO `kode_meli_prefix` VALUES (721, 'هرمزگان', 'رودان', '469');
INSERT INTO `kode_meli_prefix` VALUES (722, 'هرمزگان', 'فین', '537');
INSERT INTO `kode_meli_prefix` VALUES (723, 'هرمزگان', 'قشم', '345');
INSERT INTO `kode_meli_prefix` VALUES (724, 'هرمزگان', 'گاوبندی', '470');
INSERT INTO `kode_meli_prefix` VALUES (725, 'هرمزگان', 'میناب', '341');
INSERT INTO `kode_meli_prefix` VALUES (726, 'هرمزگان', 'میناب', '342');
INSERT INTO `kode_meli_prefix` VALUES (727, 'لرستان', 'ازنا', '483');
INSERT INTO `kode_meli_prefix` VALUES (728, 'لرستان', 'ازنا', '484');
INSERT INTO `kode_meli_prefix` VALUES (729, 'لرستان', 'اشترینان', '557');
INSERT INTO `kode_meli_prefix` VALUES (730, 'لرستان', 'الشتر', '418');
INSERT INTO `kode_meli_prefix` VALUES (731, 'لرستان', 'الیگودرز', '416');
INSERT INTO `kode_meli_prefix` VALUES (732, 'لرستان', 'الیگودرز', '417');
INSERT INTO `kode_meli_prefix` VALUES (733, 'لرستان', 'بروجرد', '412');
INSERT INTO `kode_meli_prefix` VALUES (734, 'لرستان', 'بروجرد', '413');
INSERT INTO `kode_meli_prefix` VALUES (735, 'لرستان', 'پاپی', '592');
INSERT INTO `kode_meli_prefix` VALUES (736, 'لرستان', 'چغلوندی', '612');
INSERT INTO `kode_meli_prefix` VALUES (737, 'لرستان', 'چگنی', '613');
INSERT INTO `kode_meli_prefix` VALUES (738, 'لرستان', 'خرم آباد', '406');
INSERT INTO `kode_meli_prefix` VALUES (739, 'لرستان', 'خرم آباد', '407');
INSERT INTO `kode_meli_prefix` VALUES (740, 'لرستان', 'دورود', '421');
INSERT INTO `kode_meli_prefix` VALUES (741, 'لرستان', 'رومشکان', '598');
INSERT INTO `kode_meli_prefix` VALUES (742, 'لرستان', 'کوهدشت', '419');
INSERT INTO `kode_meli_prefix` VALUES (743, 'لرستان', 'ملاوی(پلدختر)', '385');
INSERT INTO `kode_meli_prefix` VALUES (744, 'لرستان', 'نورآباد(دلفان)', '420');
INSERT INTO `kode_meli_prefix` VALUES (745, 'لرستان', 'ویسیان', '528');
INSERT INTO `kode_meli_prefix` VALUES (746, 'مازندران', 'آمل', '213');
INSERT INTO `kode_meli_prefix` VALUES (747, 'مازندران', 'آمل', '214');
INSERT INTO `kode_meli_prefix` VALUES (748, 'مازندران', 'بابل', '205');
INSERT INTO `kode_meli_prefix` VALUES (749, 'مازندران', 'بابل', '206');
INSERT INTO `kode_meli_prefix` VALUES (750, 'مازندران', 'بابلسر', '498');
INSERT INTO `kode_meli_prefix` VALUES (751, 'مازندران', 'بندپی', '568');
INSERT INTO `kode_meli_prefix` VALUES (752, 'مازندران', 'بندپی شرقی', '711');
INSERT INTO `kode_meli_prefix` VALUES (753, 'مازندران', 'بهشهر', '217');
INSERT INTO `kode_meli_prefix` VALUES (754, 'مازندران', 'بهشهر', '218');
INSERT INTO `kode_meli_prefix` VALUES (755, 'مازندران', 'تنکابن', '221');
INSERT INTO `kode_meli_prefix` VALUES (756, 'مازندران', 'جویبار', '582');
INSERT INTO `kode_meli_prefix` VALUES (757, 'مازندران', 'چالوس', '483');
INSERT INTO `kode_meli_prefix` VALUES (758, 'مازندران', 'چمستان', '625');
INSERT INTO `kode_meli_prefix` VALUES (759, 'مازندران', 'چهاردانگه', '576');
INSERT INTO `kode_meli_prefix` VALUES (760, 'مازندران', 'دودانگه', '578');
INSERT INTO `kode_meli_prefix` VALUES (761, 'مازندران', 'رامسر', '227');
INSERT INTO `kode_meli_prefix` VALUES (762, 'مازندران', 'ساری', '208');
INSERT INTO `kode_meli_prefix` VALUES (763, 'مازندران', 'ساری', '209');
INSERT INTO `kode_meli_prefix` VALUES (764, 'مازندران', 'سوادکوه', '225');
INSERT INTO `kode_meli_prefix` VALUES (765, 'مازندران', 'شیرگاه', '577');
INSERT INTO `kode_meli_prefix` VALUES (766, 'مازندران', 'عباس آباد', '712');
INSERT INTO `kode_meli_prefix` VALUES (767, 'مازندران', 'قائمشهر', '215');
INSERT INTO `kode_meli_prefix` VALUES (768, 'مازندران', 'قائمشهر', '216');
INSERT INTO `kode_meli_prefix` VALUES (769, 'مازندران', 'کجور', '626');
INSERT INTO `kode_meli_prefix` VALUES (770, 'مازندران', 'کلاردشت', '627');
INSERT INTO `kode_meli_prefix` VALUES (771, 'مازندران', 'گلوگاه', '579');
INSERT INTO `kode_meli_prefix` VALUES (772, 'مازندران', 'میاندورود', '713');
INSERT INTO `kode_meli_prefix` VALUES (773, 'مازندران', 'نکاء', '499');
INSERT INTO `kode_meli_prefix` VALUES (774, 'مازندران', 'نور', '222');
INSERT INTO `kode_meli_prefix` VALUES (775, 'مازندران', 'نوشهر', '219');
INSERT INTO `kode_meli_prefix` VALUES (776, 'مازندران', 'نوشهر', '220');
INSERT INTO `kode_meli_prefix` VALUES (777, 'مازندران', 'هراز و محمودآباد', '500');
INSERT INTO `kode_meli_prefix` VALUES (778, 'مازندران', 'هراز و محمودآباد', '501');
INSERT INTO `kode_meli_prefix` VALUES (779, 'گلستان', 'آزادشهر', '623');
INSERT INTO `kode_meli_prefix` VALUES (780, 'گلستان', 'آق قلا', '497');
INSERT INTO `kode_meli_prefix` VALUES (781, 'گلستان', 'بندرترکمن', '223');
INSERT INTO `kode_meli_prefix` VALUES (782, 'گلستان', 'بندرگز', '689');
INSERT INTO `kode_meli_prefix` VALUES (783, 'گلستان', 'رامیان', '487');
INSERT INTO `kode_meli_prefix` VALUES (784, 'گلستان', 'علی آباد', '226');
INSERT INTO `kode_meli_prefix` VALUES (785, 'گلستان', 'کردکوی', '224');
INSERT INTO `kode_meli_prefix` VALUES (786, 'گلستان', 'کلاله', '486');
INSERT INTO `kode_meli_prefix` VALUES (787, 'گلستان', 'گرگان', '211');
INSERT INTO `kode_meli_prefix` VALUES (788, 'گلستان', 'گرگان', '212');
INSERT INTO `kode_meli_prefix` VALUES (789, 'گلستان', 'گمیشان', '628');
INSERT INTO `kode_meli_prefix` VALUES (790, 'گلستان', 'گنبد کاووس', '202');
INSERT INTO `kode_meli_prefix` VALUES (791, 'گلستان', 'گنبد کاووس', '203');
INSERT INTO `kode_meli_prefix` VALUES (792, 'گلستان', 'مراوه تپه', '531');
INSERT INTO `kode_meli_prefix` VALUES (793, 'گلستان', 'مینودشت', '488');
INSERT INTO `kode_meli_prefix` VALUES (794, 'گیلان', 'آستارا', '261');
INSERT INTO `kode_meli_prefix` VALUES (795, 'گیلان', 'آستانه', '273');
INSERT INTO `kode_meli_prefix` VALUES (796, 'گیلان', 'املش', '630');
INSERT INTO `kode_meli_prefix` VALUES (797, 'گیلان', 'بندرانزلی', '264');
INSERT INTO `kode_meli_prefix` VALUES (798, 'گیلان', 'خمام', '518');
INSERT INTO `kode_meli_prefix` VALUES (799, 'گیلان', 'رحیم آباد', '631');
INSERT INTO `kode_meli_prefix` VALUES (800, 'گیلان', 'رشت', '258');
INSERT INTO `kode_meli_prefix` VALUES (801, 'گیلان', 'رشت', '259');
INSERT INTO `kode_meli_prefix` VALUES (802, 'گیلان', 'رضوانشهر', '570');
INSERT INTO `kode_meli_prefix` VALUES (803, 'گیلان', 'رودبار', '265');
INSERT INTO `kode_meli_prefix` VALUES (804, 'گیلان', 'رودسر', '268');
INSERT INTO `kode_meli_prefix` VALUES (805, 'گیلان', 'رودسر', '269');
INSERT INTO `kode_meli_prefix` VALUES (806, 'گیلان', 'سنگر', '653');
INSERT INTO `kode_meli_prefix` VALUES (807, 'گیلان', 'سیاهکل', '517');
INSERT INTO `kode_meli_prefix` VALUES (808, 'گیلان', 'شفت', '569');
INSERT INTO `kode_meli_prefix` VALUES (809, 'گیلان', 'صومعه سرا', '267');
INSERT INTO `kode_meli_prefix` VALUES (810, 'گیلان', 'طالش', '262');
INSERT INTO `kode_meli_prefix` VALUES (811, 'گیلان', 'طالش', '263');
INSERT INTO `kode_meli_prefix` VALUES (812, 'گیلان', 'عمارلو', '593');
INSERT INTO `kode_meli_prefix` VALUES (813, 'گیلان', 'فومن', '266');
INSERT INTO `kode_meli_prefix` VALUES (814, 'گیلان', 'کوچصفهان', '693');
INSERT INTO `kode_meli_prefix` VALUES (815, 'گیلان', 'لاهیجان', '271');
INSERT INTO `kode_meli_prefix` VALUES (816, 'گیلان', 'لاهیجان', '272');
INSERT INTO `kode_meli_prefix` VALUES (817, 'گیلان', 'لشت نشاء', '694');
INSERT INTO `kode_meli_prefix` VALUES (818, 'گیلان', 'لنگرود', '270');
INSERT INTO `kode_meli_prefix` VALUES (819, 'گیلان', 'ماسال و شاندرمن', '516');
INSERT INTO `kode_meli_prefix` VALUES (820, 'کرمانشاه', 'اسلام آباد', '333');
INSERT INTO `kode_meli_prefix` VALUES (821, 'کرمانشاه', 'اسلام آباد', '334');
INSERT INTO `kode_meli_prefix` VALUES (822, 'کرمانشاه', 'باینگان', '691');
INSERT INTO `kode_meli_prefix` VALUES (823, 'کرمانشاه', 'پاوه', '322');
INSERT INTO `kode_meli_prefix` VALUES (824, 'کرمانشاه', 'پاوه', '323');
INSERT INTO `kode_meli_prefix` VALUES (825, 'کرمانشاه', 'ثلاث باباجانی', '595');
INSERT INTO `kode_meli_prefix` VALUES (826, 'کرمانشاه', 'جوانرود', '395');
INSERT INTO `kode_meli_prefix` VALUES (827, 'کرمانشاه', 'حمیل', '641');
INSERT INTO `kode_meli_prefix` VALUES (828, 'کرمانشاه', 'روانسر', '596');
INSERT INTO `kode_meli_prefix` VALUES (829, 'کرمانشاه', 'سرپل ذهاب', '336');
INSERT INTO `kode_meli_prefix` VALUES (830, 'کرمانشاه', 'سنقر', '335');
INSERT INTO `kode_meli_prefix` VALUES (831, 'کرمانشاه', 'صحنه', '496');
INSERT INTO `kode_meli_prefix` VALUES (832, 'کرمانشاه', 'قصرشیرین', '337');
INSERT INTO `kode_meli_prefix` VALUES (833, 'کرمانشاه', 'کرمانشاه', '324');
INSERT INTO `kode_meli_prefix` VALUES (834, 'کرمانشاه', 'کرمانشاه', '325');
INSERT INTO `kode_meli_prefix` VALUES (835, 'کرمانشاه', 'کرند', '394');
INSERT INTO `kode_meli_prefix` VALUES (836, 'کرمانشاه', 'کنگاور', '330');
INSERT INTO `kode_meli_prefix` VALUES (837, 'کرمانشاه', 'گیلانغرب', '332');
INSERT INTO `kode_meli_prefix` VALUES (838, 'کرمانشاه', 'هرسین', '331');
INSERT INTO `kode_meli_prefix` VALUES (839, 'کهکیلویه و بویراحمد', 'باشت', '687');
INSERT INTO `kode_meli_prefix` VALUES (840, 'کهکیلویه و بویراحمد', 'بویراحمد(یاسوج)', '422');
INSERT INTO `kode_meli_prefix` VALUES (841, 'کهکیلویه و بویراحمد', 'بویراحمد(یاسوج)', '423');
INSERT INTO `kode_meli_prefix` VALUES (842, 'کهکیلویه و بویراحمد', 'بهمنی', '599');
INSERT INTO `kode_meli_prefix` VALUES (843, 'کهکیلویه و بویراحمد', 'چاروسا', '600');
INSERT INTO `kode_meli_prefix` VALUES (844, 'کهکیلویه و بویراحمد', 'دروهان', '688');
INSERT INTO `kode_meli_prefix` VALUES (845, 'کهکیلویه و بویراحمد', 'کهکیلویه(دهدشت)', '424');
INSERT INTO `kode_meli_prefix` VALUES (846, 'کهکیلویه و بویراحمد', 'کهکیلویه(دهدشت)', '425');
INSERT INTO `kode_meli_prefix` VALUES (847, 'کهکیلویه و بویراحمد', 'گچساران(دوگنبدان)', '426');
INSERT INTO `kode_meli_prefix` VALUES (848, 'کهکیلویه و بویراحمد', 'لنده', '550');
INSERT INTO `kode_meli_prefix` VALUES (849, 'کهکیلویه و بویراحمد', 'مارگون', '697');
INSERT INTO `kode_meli_prefix` VALUES (850, 'کردستان', 'بانه', '384');
INSERT INTO `kode_meli_prefix` VALUES (851, 'کردستان', 'بیجار', '377');
INSERT INTO `kode_meli_prefix` VALUES (852, 'کردستان', 'بیجار', '378');
INSERT INTO `kode_meli_prefix` VALUES (853, 'کردستان', 'دهگلان', '558');
INSERT INTO `kode_meli_prefix` VALUES (854, 'کردستان', 'دیواندره', '385');
INSERT INTO `kode_meli_prefix` VALUES (855, 'کردستان', 'سروآباد', '646');
INSERT INTO `kode_meli_prefix` VALUES (856, 'کردستان', 'سقز', '375');
INSERT INTO `kode_meli_prefix` VALUES (857, 'کردستان', 'سقز', '376');
INSERT INTO `kode_meli_prefix` VALUES (858, 'کردستان', 'سنندج', '372');
INSERT INTO `kode_meli_prefix` VALUES (859, 'کردستان', 'سنندج', '373');
INSERT INTO `kode_meli_prefix` VALUES (860, 'کردستان', 'قروه', '379');
INSERT INTO `kode_meli_prefix` VALUES (861, 'کردستان', 'قروه', '380');
INSERT INTO `kode_meli_prefix` VALUES (862, 'کردستان', 'کامیاران', '383');
INSERT INTO `kode_meli_prefix` VALUES (863, 'کردستان', 'کرانی', '674');
INSERT INTO `kode_meli_prefix` VALUES (864, 'کردستان', 'مریوان', '381');
INSERT INTO `kode_meli_prefix` VALUES (865, 'کردستان', 'مریوان', '382');
INSERT INTO `kode_meli_prefix` VALUES (866, 'کردستان', 'نمشیر', '676');
INSERT INTO `kode_meli_prefix` VALUES (867, 'کرمان', 'ارزونیه', '722');
INSERT INTO `kode_meli_prefix` VALUES (868, 'کرمان', 'انار', '542');
INSERT INTO `kode_meli_prefix` VALUES (869, 'کرمان', 'بافت', '312');
INSERT INTO `kode_meli_prefix` VALUES (870, 'کرمان', 'شهربابک', '313');
INSERT INTO `kode_meli_prefix` VALUES (871, 'کرمان', 'بردسیر', '317');
INSERT INTO `kode_meli_prefix` VALUES (872, 'کرمان', 'بم', '310');
INSERT INTO `kode_meli_prefix` VALUES (873, 'کرمان', 'بم', '311');
INSERT INTO `kode_meli_prefix` VALUES (874, 'کرمان', 'جیرفت', '302');
INSERT INTO `kode_meli_prefix` VALUES (875, 'کرمان', 'جیرفت', '303');
INSERT INTO `kode_meli_prefix` VALUES (876, 'کرمان', 'رابر', '583');
INSERT INTO `kode_meli_prefix` VALUES (877, 'کرمان', 'راور', '321');
INSERT INTO `kode_meli_prefix` VALUES (878, 'کرمان', 'راین', '382');
INSERT INTO `kode_meli_prefix` VALUES (879, 'کرمان', 'رفسنجان', '304');
INSERT INTO `kode_meli_prefix` VALUES (880, 'کرمان', 'رفسنجان', '305');
INSERT INTO `kode_meli_prefix` VALUES (881, 'کرمان', 'رودبار کهنوج', '536');
INSERT INTO `kode_meli_prefix` VALUES (882, 'کرمان', 'ریگان', '605');
INSERT INTO `kode_meli_prefix` VALUES (883, 'کرمان', 'زرند', '308');
INSERT INTO `kode_meli_prefix` VALUES (884, 'کرمان', 'زرند', '309');
INSERT INTO `kode_meli_prefix` VALUES (885, 'کرمان', 'سیرجان', '306');
INSERT INTO `kode_meli_prefix` VALUES (886, 'کرمان', 'سیرجان', '307');
INSERT INTO `kode_meli_prefix` VALUES (887, 'کرمان', 'شهداد', '319');
INSERT INTO `kode_meli_prefix` VALUES (888, 'کرمان', 'شهربابک', '314');
INSERT INTO `kode_meli_prefix` VALUES (889, 'کرمان', 'عنبرآباد', '606');
INSERT INTO `kode_meli_prefix` VALUES (890, 'کرمان', 'فهرج', '320');
INSERT INTO `kode_meli_prefix` VALUES (891, 'کرمان', 'قلعه گنج', '698');
INSERT INTO `kode_meli_prefix` VALUES (892, 'کرمان', 'کرمان', '298');
INSERT INTO `kode_meli_prefix` VALUES (893, 'کرمان', 'کرمان', '299');
INSERT INTO `kode_meli_prefix` VALUES (894, 'کرمان', 'کوهبنان', '535');
INSERT INTO `kode_meli_prefix` VALUES (895, 'کرمان', 'کهنوج', '315');
INSERT INTO `kode_meli_prefix` VALUES (896, 'کرمان', 'کهنوج', '316');
INSERT INTO `kode_meli_prefix` VALUES (897, 'کرمان', 'گلباف', '318');
INSERT INTO `kode_meli_prefix` VALUES (898, 'کرمان', 'ماهان', '607');
INSERT INTO `kode_meli_prefix` VALUES (899, 'کرمان', 'منوجان', '608');
INSERT INTO `kode_meli_prefix` VALUES (900, 'قزوین', 'آبیک', '508');
INSERT INTO `kode_meli_prefix` VALUES (901, 'قزوین', 'آوج', '538');
INSERT INTO `kode_meli_prefix` VALUES (902, 'قزوین', 'البرز', '728');
INSERT INTO `kode_meli_prefix` VALUES (903, 'قزوین', 'بوئین زهرا', '509');
INSERT INTO `kode_meli_prefix` VALUES (904, 'قزوین', 'تاکستان', '438');
INSERT INTO `kode_meli_prefix` VALUES (905, 'قزوین', 'تاکستان', '439');
INSERT INTO `kode_meli_prefix` VALUES (906, 'قزوین', 'رودبار الموت', '580');
INSERT INTO `kode_meli_prefix` VALUES (907, 'قزوین', 'رودبار شهرستان', '590');
INSERT INTO `kode_meli_prefix` VALUES (908, 'قزوین', 'ضیاءآباد', '559');
INSERT INTO `kode_meli_prefix` VALUES (909, 'قزوین', 'طارم سفلی', '588');
INSERT INTO `kode_meli_prefix` VALUES (910, 'قزوین', 'قزوین', '431');
INSERT INTO `kode_meli_prefix` VALUES (911, 'قزوین', 'قزوین', '432');
INSERT INTO `kode_meli_prefix` VALUES (912, 'قم', 'قم', '37');
INSERT INTO `kode_meli_prefix` VALUES (913, 'قم', 'قم', '38');
INSERT INTO `kode_meli_prefix` VALUES (914, 'قم', 'کهک', '702');
INSERT INTO `kode_meli_prefix` VALUES (915, 'فارس', 'آباده', '240');
INSERT INTO `kode_meli_prefix` VALUES (916, 'فارس', 'آباده', '241');
INSERT INTO `kode_meli_prefix` VALUES (917, 'فارس', 'آباده طشک', '670');
INSERT INTO `kode_meli_prefix` VALUES (918, 'فارس', 'ارسنجان', '648');
INSERT INTO `kode_meli_prefix` VALUES (919, 'فارس', 'استهبان', '252');
INSERT INTO `kode_meli_prefix` VALUES (920, 'فارس', 'اشکنان', '678');
INSERT INTO `kode_meli_prefix` VALUES (921, 'فارس', 'سپیدان', '253');
INSERT INTO `kode_meli_prefix` VALUES (922, 'فارس', 'اوز', '649');
INSERT INTO `kode_meli_prefix` VALUES (923, 'فارس', 'بوانات', '513');
INSERT INTO `kode_meli_prefix` VALUES (924, 'فارس', 'بیضا', '546');
INSERT INTO `kode_meli_prefix` VALUES (925, 'فارس', 'جویم', '671');
INSERT INTO `kode_meli_prefix` VALUES (926, 'فارس', 'جهرم', '246');
INSERT INTO `kode_meli_prefix` VALUES (927, 'فارس', 'جهرم', '247');
INSERT INTO `kode_meli_prefix` VALUES (928, 'فارس', 'حاجی آباد(زرین دشت)', '654');
INSERT INTO `kode_meli_prefix` VALUES (929, 'فارس', 'خرامه', '548');
INSERT INTO `kode_meli_prefix` VALUES (930, 'فارس', 'خشت و کمارج', '547');
INSERT INTO `kode_meli_prefix` VALUES (931, 'فارس', 'خفر', '655');
INSERT INTO `kode_meli_prefix` VALUES (932, 'فارس', 'داراب', '248');
INSERT INTO `kode_meli_prefix` VALUES (933, 'فارس', 'داراب', '249');
INSERT INTO `kode_meli_prefix` VALUES (934, 'فارس', 'سروستان', '514');
INSERT INTO `kode_meli_prefix` VALUES (935, 'فارس', 'سعادت آباد', '665');
INSERT INTO `kode_meli_prefix` VALUES (936, 'فارس', 'شیبکوه', '673');
INSERT INTO `kode_meli_prefix` VALUES (937, 'فارس', 'شیراز', '228');
INSERT INTO `kode_meli_prefix` VALUES (938, 'فارس', 'شیراز', '229');
INSERT INTO `kode_meli_prefix` VALUES (939, 'فارس', 'شیراز', '230');
INSERT INTO `kode_meli_prefix` VALUES (940, 'فارس', 'فراشبند', '679');
INSERT INTO `kode_meli_prefix` VALUES (941, 'فارس', 'فسا', '256');
INSERT INTO `kode_meli_prefix` VALUES (942, 'فارس', 'فسا', '257');
INSERT INTO `kode_meli_prefix` VALUES (943, 'فارس', 'فیروزآباد', '244');
INSERT INTO `kode_meli_prefix` VALUES (944, 'فارس', 'فیروزآباد', '245');
INSERT INTO `kode_meli_prefix` VALUES (945, 'فارس', 'قنقری(خرم بید)', '681');
INSERT INTO `kode_meli_prefix` VALUES (946, 'فارس', 'قیروکارزین', '723');
INSERT INTO `kode_meli_prefix` VALUES (947, 'فارس', 'کازرون', '236');
INSERT INTO `kode_meli_prefix` VALUES (948, 'فارس', 'کازرون', '237');
INSERT INTO `kode_meli_prefix` VALUES (949, 'فارس', 'کوار', '683');
INSERT INTO `kode_meli_prefix` VALUES (950, 'فارس', 'کراش', '656');
INSERT INTO `kode_meli_prefix` VALUES (951, 'فارس', 'لارستان', '250');
INSERT INTO `kode_meli_prefix` VALUES (952, 'فارس', 'لارستان', '251');
INSERT INTO `kode_meli_prefix` VALUES (953, 'فارس', 'لامرد', '515');
INSERT INTO `kode_meli_prefix` VALUES (954, 'فارس', 'مرودشت', '242');
INSERT INTO `kode_meli_prefix` VALUES (955, 'فارس', 'مرودشت', '243');
INSERT INTO `kode_meli_prefix` VALUES (956, 'فارس', 'ممسنی', '238');
INSERT INTO `kode_meli_prefix` VALUES (957, 'فارس', 'ممسنی', '239');
INSERT INTO `kode_meli_prefix` VALUES (958, 'فارس', 'مهر', '657');
INSERT INTO `kode_meli_prefix` VALUES (959, 'فارس', 'نی ریز', '255');
INSERT INTO `kode_meli_prefix` VALUES (960, 'سمنان', 'ایوانکی', '684');
INSERT INTO `kode_meli_prefix` VALUES (961, 'سمنان', 'بسطام', '700');
INSERT INTO `kode_meli_prefix` VALUES (962, 'سمنان', 'بیارجمند', '642');
INSERT INTO `kode_meli_prefix` VALUES (963, 'سمنان', 'دامغان', '457');
INSERT INTO `kode_meli_prefix` VALUES (964, 'سمنان', 'سمنان', '456');
INSERT INTO `kode_meli_prefix` VALUES (965, 'سمنان', 'شاهرود', '458');
INSERT INTO `kode_meli_prefix` VALUES (966, 'سمنان', 'شاهرود', '459');
INSERT INTO `kode_meli_prefix` VALUES (967, 'سمنان', 'گرمسار', '460');
INSERT INTO `kode_meli_prefix` VALUES (968, 'سمنان', 'مهدیشهر', '530');
INSERT INTO `kode_meli_prefix` VALUES (969, 'سمنان', 'میامی', '520');
INSERT INTO `kode_meli_prefix` VALUES (970, 'سیستان و بلوچستان', 'ایرانشهر', '358');
INSERT INTO `kode_meli_prefix` VALUES (971, 'سیستان و بلوچستان', 'ایرانشهر', '359');
INSERT INTO `kode_meli_prefix` VALUES (972, 'سیستان و بلوچستان', 'بزمان', '682');
INSERT INTO `kode_meli_prefix` VALUES (973, 'سیستان و بلوچستان', 'بمپور', '703');
INSERT INTO `kode_meli_prefix` VALUES (974, 'سیستان و بلوچستان', 'چابهار', '364');
INSERT INTO `kode_meli_prefix` VALUES (975, 'سیستان و بلوچستان', 'چابهار', '365');
INSERT INTO `kode_meli_prefix` VALUES (976, 'سیستان و بلوچستان', 'خاش', '371');
INSERT INTO `kode_meli_prefix` VALUES (977, 'سیستان و بلوچستان', 'دشتیاری', '701');
INSERT INTO `kode_meli_prefix` VALUES (978, 'سیستان و بلوچستان', 'راسک', '720');
INSERT INTO `kode_meli_prefix` VALUES (979, 'سیستان و بلوچستان', 'زابل', '366');
INSERT INTO `kode_meli_prefix` VALUES (980, 'سیستان و بلوچستان', 'زابل', '367');
INSERT INTO `kode_meli_prefix` VALUES (981, 'سیستان و بلوچستان', 'زابلی', '704');
INSERT INTO `kode_meli_prefix` VALUES (982, 'سیستان و بلوچستان', 'زاهدان', '361');
INSERT INTO `kode_meli_prefix` VALUES (983, 'سیستان و بلوچستان', 'زاهدان', '362');
INSERT INTO `kode_meli_prefix` VALUES (984, 'سیستان و بلوچستان', 'سراوان', '369');
INSERT INTO `kode_meli_prefix` VALUES (985, 'سیستان و بلوچستان', 'سراوان', '370');
INSERT INTO `kode_meli_prefix` VALUES (986, 'سیستان و بلوچستان', 'سرباز', '635');
INSERT INTO `kode_meli_prefix` VALUES (987, 'سیستان و بلوچستان', 'سیب و سوران', '668');
INSERT INTO `kode_meli_prefix` VALUES (988, 'سیستان و بلوچستان', 'شهرکی و ناروئی(زهک)', '533');
INSERT INTO `kode_meli_prefix` VALUES (989, 'سیستان و بلوچستان', 'شیب آب', '705');
INSERT INTO `kode_meli_prefix` VALUES (990, 'سیستان و بلوچستان', 'فنوج', '699');
INSERT INTO `kode_meli_prefix` VALUES (991, 'سیستان و بلوچستان', 'قصرقند', '669');
INSERT INTO `kode_meli_prefix` VALUES (992, 'سیستان و بلوچستان', 'کنارک', '725');
INSERT INTO `kode_meli_prefix` VALUES (993, 'سیستان و بلوچستان', 'لاشار(اسپکه)', '597');
INSERT INTO `kode_meli_prefix` VALUES (994, 'سیستان و بلوچستان', 'میرجاوه', '611');
INSERT INTO `kode_meli_prefix` VALUES (995, 'سیستان و بلوچستان', 'نیک شهر', '525');
INSERT INTO `kode_meli_prefix` VALUES (996, 'خوزستان', 'آبادان', '181');
INSERT INTO `kode_meli_prefix` VALUES (997, 'خوزستان', 'آغاجاری', '527');
INSERT INTO `kode_meli_prefix` VALUES (998, 'خوزستان', 'اروندکنار', '585');
INSERT INTO `kode_meli_prefix` VALUES (999, 'خوزستان', 'امیدیه', '685');
INSERT INTO `kode_meli_prefix` VALUES (1000, 'خوزستان', 'اندیکا', '663');
INSERT INTO `kode_meli_prefix` VALUES (1001, 'خوزستان', 'اندیمشک', '192');
INSERT INTO `kode_meli_prefix` VALUES (1002, 'خوزستان', 'اندیمشک', '193');
INSERT INTO `kode_meli_prefix` VALUES (1003, 'خوزستان', 'اهواز', '174');
INSERT INTO `kode_meli_prefix` VALUES (1004, 'خوزستان', 'اهواز', '175');
INSERT INTO `kode_meli_prefix` VALUES (1005, 'خوزستان', 'ایذه', '183');
INSERT INTO `kode_meli_prefix` VALUES (1006, 'خوزستان', 'ایذه', '184');
INSERT INTO `kode_meli_prefix` VALUES (1007, 'خوزستان', 'باغ ملک', '481');
INSERT INTO `kode_meli_prefix` VALUES (1008, 'خوزستان', 'بندر امام خمینی', '706');
INSERT INTO `kode_meli_prefix` VALUES (1009, 'خوزستان', 'بندرماهشهر', '194');
INSERT INTO `kode_meli_prefix` VALUES (1010, 'خوزستان', 'بندرماهشهر', '195');
INSERT INTO `kode_meli_prefix` VALUES (1011, 'خوزستان', 'بهبهان', '185');
INSERT INTO `kode_meli_prefix` VALUES (1012, 'خوزستان', 'بهبهان', '186');
INSERT INTO `kode_meli_prefix` VALUES (1013, 'خوزستان', 'خرمشهر', '182');
INSERT INTO `kode_meli_prefix` VALUES (1014, 'خوزستان', 'دزفول', '199');
INSERT INTO `kode_meli_prefix` VALUES (1015, 'خوزستان', 'دزفول', '200');
INSERT INTO `kode_meli_prefix` VALUES (1016, 'خوزستان', 'دشت آزادگان', '198');
INSERT INTO `kode_meli_prefix` VALUES (1017, 'خوزستان', 'رامشیر', '662');
INSERT INTO `kode_meli_prefix` VALUES (1018, 'خوزستان', 'رامهرمز', '190');
INSERT INTO `kode_meli_prefix` VALUES (1019, 'خوزستان', 'رامهرمز', '191');
INSERT INTO `kode_meli_prefix` VALUES (1020, 'خوزستان', 'سردشت', '692');
INSERT INTO `kode_meli_prefix` VALUES (1021, 'خوزستان', 'شادگان', '189');
INSERT INTO `kode_meli_prefix` VALUES (1022, 'خوزستان', 'شاوور', '707');
INSERT INTO `kode_meli_prefix` VALUES (1023, 'خوزستان', 'شوش', '526');
INSERT INTO `kode_meli_prefix` VALUES (1024, 'خوزستان', 'شوشتر', '187');
INSERT INTO `kode_meli_prefix` VALUES (1025, 'خوزستان', 'شوشتر', '188');
INSERT INTO `kode_meli_prefix` VALUES (1026, 'خوزستان', 'گتوند', '729');
INSERT INTO `kode_meli_prefix` VALUES (1027, 'خوزستان', 'لالی', '730');
INSERT INTO `kode_meli_prefix` VALUES (1028, 'خوزستان', 'مسجدسلیمان', '196');
INSERT INTO `kode_meli_prefix` VALUES (1029, 'خوزستان', 'مسجدسلیمان', '197');
INSERT INTO `kode_meli_prefix` VALUES (1030, 'خوزستان', 'هندیجان', '661');
INSERT INTO `kode_meli_prefix` VALUES (1031, 'خوزستان', 'هویزه', '680');
INSERT INTO `kode_meli_prefix` VALUES (1032, 'خراسان رضوی', 'احمدآباد', '643');
INSERT INTO `kode_meli_prefix` VALUES (1033, 'خراسان رضوی', 'بجستان', '562');
INSERT INTO `kode_meli_prefix` VALUES (1034, 'خراسان رضوی', 'بردسکن', '572');
INSERT INTO `kode_meli_prefix` VALUES (1035, 'خراسان رضوی', 'تایباد', '74');
INSERT INTO `kode_meli_prefix` VALUES (1036, 'خراسان رضوی', 'تخت جلگه', '644');
INSERT INTO `kode_meli_prefix` VALUES (1037, 'خراسان رضوی', 'تربت جام', '72');
INSERT INTO `kode_meli_prefix` VALUES (1038, 'خراسان رضوی', 'تربت جام', '73');
INSERT INTO `kode_meli_prefix` VALUES (1039, 'خراسان رضوی', 'تربت حیدریه', '69');
INSERT INTO `kode_meli_prefix` VALUES (1040, 'خراسان رضوی', 'تربت حیدریه', '70');
INSERT INTO `kode_meli_prefix` VALUES (1041, 'خراسان رضوی', 'جغتای', '521');
INSERT INTO `kode_meli_prefix` VALUES (1042, 'خراسان رضوی', 'جوین', '573');
INSERT INTO `kode_meli_prefix` VALUES (1043, 'خراسان رضوی', 'چناران', '522');
INSERT INTO `kode_meli_prefix` VALUES (1044, 'خراسان رضوی', 'خلیل آباد', '724');
INSERT INTO `kode_meli_prefix` VALUES (1045, 'خراسان رضوی', 'خواف', '76');
INSERT INTO `kode_meli_prefix` VALUES (1046, 'خراسان رضوی', 'درگز', '77');
INSERT INTO `kode_meli_prefix` VALUES (1047, 'خراسان رضوی', 'رشتخوار', '650');
INSERT INTO `kode_meli_prefix` VALUES (1048, 'خراسان رضوی', 'زبرخان', '574');
INSERT INTO `kode_meli_prefix` VALUES (1049, 'خراسان رضوی', 'سبزوار', '78');
INSERT INTO `kode_meli_prefix` VALUES (1050, 'خراسان رضوی', 'سبزوار', '79');
INSERT INTO `kode_meli_prefix` VALUES (1051, 'خراسان رضوی', 'سرخس', '81');
INSERT INTO `kode_meli_prefix` VALUES (1052, 'خراسان رضوی', 'فریمان', '84');
INSERT INTO `kode_meli_prefix` VALUES (1053, 'خراسان رضوی', 'فیض آباد', '651');
INSERT INTO `kode_meli_prefix` VALUES (1054, 'خراسان رضوی', 'قوچان', '86');
INSERT INTO `kode_meli_prefix` VALUES (1055, 'خراسان رضوی', 'قوچان', '87');
INSERT INTO `kode_meli_prefix` VALUES (1056, 'خراسان رضوی', 'کاشمر', '89');
INSERT INTO `kode_meli_prefix` VALUES (1057, 'خراسان رضوی', 'کاشمر', '90');
INSERT INTO `kode_meli_prefix` VALUES (1058, 'خراسان رضوی', 'کلات', '553');
INSERT INTO `kode_meli_prefix` VALUES (1059, 'خراسان رضوی', 'گناباد', '91');
INSERT INTO `kode_meli_prefix` VALUES (1060, 'خراسان رضوی', 'مشهد', '92');
INSERT INTO `kode_meli_prefix` VALUES (1061, 'خراسان رضوی', 'مشهد', '93');
INSERT INTO `kode_meli_prefix` VALUES (1062, 'خراسان رضوی', 'مشهد', '94');
INSERT INTO `kode_meli_prefix` VALUES (1063, 'خراسان رضوی', 'مشهد منطقه2', '97');
INSERT INTO `kode_meli_prefix` VALUES (1064, 'خراسان رضوی', 'مشهد منطقه3', '98');
INSERT INTO `kode_meli_prefix` VALUES (1065, 'خراسان رضوی', 'مشهد منطقه1', '96');
INSERT INTO `kode_meli_prefix` VALUES (1066, 'خراسان رضوی', 'نیشابور', '105');
INSERT INTO `kode_meli_prefix` VALUES (1067, 'خراسان رضوی', 'نیشابور', '106');
INSERT INTO `kode_meli_prefix` VALUES (1068, 'خراسان شمالی', 'اسفراین', '63');
INSERT INTO `kode_meli_prefix` VALUES (1069, 'خراسان شمالی', 'بجنورد', '67');
INSERT INTO `kode_meli_prefix` VALUES (1070, 'خراسان شمالی', 'بجنورد', '68');
INSERT INTO `kode_meli_prefix` VALUES (1071, 'خراسان شمالی', 'جاجرم', '75');
INSERT INTO `kode_meli_prefix` VALUES (1072, 'خراسان شمالی', 'رازوجرکلان', '591');
INSERT INTO `kode_meli_prefix` VALUES (1073, 'خراسان شمالی', 'شیروان', '82');
INSERT INTO `kode_meli_prefix` VALUES (1074, 'خراسان شمالی', 'فاروج', '635');
INSERT INTO `kode_meli_prefix` VALUES (1075, 'خراسان شمالی', 'مانه و سملقان', '524');
INSERT INTO `kode_meli_prefix` VALUES (1076, 'چهارمحال و بختیاری', 'اردل', '468');
INSERT INTO `kode_meli_prefix` VALUES (1077, 'چهارمحال و بختیاری', 'بروجن', '465');
INSERT INTO `kode_meli_prefix` VALUES (1078, 'چهارمحال و بختیاری', 'شهرکرد', '461');
INSERT INTO `kode_meli_prefix` VALUES (1079, 'چهارمحال و بختیاری', 'شهرکرد', '462');
INSERT INTO `kode_meli_prefix` VALUES (1080, 'چهارمحال و بختیاری', 'فارسان', '467');
INSERT INTO `kode_meli_prefix` VALUES (1081, 'چهارمحال و بختیاری', 'فلارد', '632');
INSERT INTO `kode_meli_prefix` VALUES (1082, 'چهارمحال و بختیاری', 'کوهرنگ', '555');
INSERT INTO `kode_meli_prefix` VALUES (1083, 'چهارمحال و بختیاری', 'کیار', '633');
INSERT INTO `kode_meli_prefix` VALUES (1084, 'چهارمحال و بختیاری', 'گندمان', '629');
INSERT INTO `kode_meli_prefix` VALUES (1085, 'چهارمحال و بختیاری', 'لردگان', '466');
INSERT INTO `kode_meli_prefix` VALUES (1086, 'چهارمحال و بختیاری', 'میانکوه', '696');
INSERT INTO `kode_meli_prefix` VALUES (1087, 'خراسان جنوبی', 'بشرویه', '721');
INSERT INTO `kode_meli_prefix` VALUES (1088, 'خراسان جنوبی', 'بیرجند', '64');
INSERT INTO `kode_meli_prefix` VALUES (1089, 'خراسان جنوبی', 'بیرجند', '65');
INSERT INTO `kode_meli_prefix` VALUES (1090, 'خراسان جنوبی', 'درمیان', '523');
INSERT INTO `kode_meli_prefix` VALUES (1091, 'خراسان جنوبی', 'زیرکوه', '652');
INSERT INTO `kode_meli_prefix` VALUES (1092, 'خراسان جنوبی', 'سرایان', '719');
INSERT INTO `kode_meli_prefix` VALUES (1093, 'خراسان جنوبی', 'سربیشه', '716');
INSERT INTO `kode_meli_prefix` VALUES (1094, 'خراسان جنوبی', 'فردوس', '85');
INSERT INTO `kode_meli_prefix` VALUES (1095, 'خراسان جنوبی', 'قائنات', '88');
INSERT INTO `kode_meli_prefix` VALUES (1096, 'خراسان جنوبی', 'نهبندان', '563');
INSERT INTO `kode_meli_prefix` VALUES (1097, 'بوشهر', 'بندر دیلم', '529');
INSERT INTO `kode_meli_prefix` VALUES (1098, 'بوشهر', 'بندر گناوه', '353');
INSERT INTO `kode_meli_prefix` VALUES (1099, 'بوشهر', 'بوشهر', '349');
INSERT INTO `kode_meli_prefix` VALUES (1100, 'بوشهر', 'بوشهر', '350');
INSERT INTO `kode_meli_prefix` VALUES (1101, 'بوشهر', 'تنگستان', '355');
INSERT INTO `kode_meli_prefix` VALUES (1102, 'بوشهر', 'جم', '609');
INSERT INTO `kode_meli_prefix` VALUES (1103, 'بوشهر', 'دشتستان', '351');
INSERT INTO `kode_meli_prefix` VALUES (1104, 'بوشهر', 'دشتستان', '352');
INSERT INTO `kode_meli_prefix` VALUES (1105, 'بوشهر', 'دشتی', '354');
INSERT INTO `kode_meli_prefix` VALUES (1106, 'بوشهر', 'دلوار', '732');
INSERT INTO `kode_meli_prefix` VALUES (1107, 'بوشهر', 'دیر', '357');
INSERT INTO `kode_meli_prefix` VALUES (1108, 'بوشهر', 'سعد آباد', '532');
INSERT INTO `kode_meli_prefix` VALUES (1109, 'بوشهر', 'شبانکاره', '610');
INSERT INTO `kode_meli_prefix` VALUES (1110, 'بوشهر', 'کنگان', '356');
INSERT INTO `kode_meli_prefix` VALUES (1111, 'تهران', 'اسلامشهر', '556');
INSERT INTO `kode_meli_prefix` VALUES (1112, 'تهران', 'پاکدشت', '658');
INSERT INTO `kode_meli_prefix` VALUES (1113, 'تهران', 'تهران مرکزی', '1');
INSERT INTO `kode_meli_prefix` VALUES (1114, 'تهران', 'تهران مرکزی', '2');
INSERT INTO `kode_meli_prefix` VALUES (1115, 'تهران', 'تهران مرکزی', '3');
INSERT INTO `kode_meli_prefix` VALUES (1116, 'تهران', 'تهران مرکزی', '4');
INSERT INTO `kode_meli_prefix` VALUES (1117, 'تهران', 'تهران مرکزی', '5');
INSERT INTO `kode_meli_prefix` VALUES (1118, 'تهران', 'تهران مرکزی', '6');
INSERT INTO `kode_meli_prefix` VALUES (1119, 'تهران', 'تهران مرکزی', '7');
INSERT INTO `kode_meli_prefix` VALUES (1120, 'تهران', 'تهران مرکزی', '8');
INSERT INTO `kode_meli_prefix` VALUES (1121, 'تهران', 'تهران جنوب', '11');
INSERT INTO `kode_meli_prefix` VALUES (1122, 'تهران', 'تهران شرق', '20');
INSERT INTO `kode_meli_prefix` VALUES (1123, 'تهران', 'تهرانشمال', '25');
INSERT INTO `kode_meli_prefix` VALUES (1124, 'تهران', 'تهران غرب', '15');
INSERT INTO `kode_meli_prefix` VALUES (1125, 'تهران', 'دماوند', '43');
INSERT INTO `kode_meli_prefix` VALUES (1126, 'تهران', 'رباط کریم', '666');
INSERT INTO `kode_meli_prefix` VALUES (1127, 'تهران', 'شمیران', '44');
INSERT INTO `kode_meli_prefix` VALUES (1128, 'تهران', 'شمیران', '45');
INSERT INTO `kode_meli_prefix` VALUES (1129, 'تهران', 'شهرری', '48');
INSERT INTO `kode_meli_prefix` VALUES (1130, 'تهران', 'شهرری', '49');
INSERT INTO `kode_meli_prefix` VALUES (1131, 'تهران', 'شهریار', '490');
INSERT INTO `kode_meli_prefix` VALUES (1132, 'تهران', 'شهریار', '491');
INSERT INTO `kode_meli_prefix` VALUES (1133, 'تهران', 'فیروزکوه', '659');
INSERT INTO `kode_meli_prefix` VALUES (1134, 'تهران', 'کهریزک', '664');
INSERT INTO `kode_meli_prefix` VALUES (1135, 'تهران', 'ورامین', '41');
INSERT INTO `kode_meli_prefix` VALUES (1136, 'تهران', 'ورامین', '42');
INSERT INTO `kode_meli_prefix` VALUES (1137, 'البرز', 'طالقان', '695');
INSERT INTO `kode_meli_prefix` VALUES (1138, 'البرز', 'کرج', '31');
INSERT INTO `kode_meli_prefix` VALUES (1139, 'البرز', 'کرج', '32');
INSERT INTO `kode_meli_prefix` VALUES (1140, 'البرز', 'نظرآباد', '717');
INSERT INTO `kode_meli_prefix` VALUES (1141, 'البرز', 'ساوجبلاغ', '489');
INSERT INTO `kode_meli_prefix` VALUES (1142, 'امور خارجه', 'امور خارجه', '471');
INSERT INTO `kode_meli_prefix` VALUES (1143, 'امور خارجه', 'امور خارجه', '472');
INSERT INTO `kode_meli_prefix` VALUES (1144, 'ایلام', 'آبدانان', '454');
INSERT INTO `kode_meli_prefix` VALUES (1145, 'ایلام', 'ارکوازی(ملکشاهی)', '581');
INSERT INTO `kode_meli_prefix` VALUES (1146, 'ایلام', 'ایلام', '449');
INSERT INTO `kode_meli_prefix` VALUES (1147, 'ایلام', 'ایلام', '450');
INSERT INTO `kode_meli_prefix` VALUES (1148, 'ایلام', 'ایوان', '616');
INSERT INTO `kode_meli_prefix` VALUES (1149, 'ایلام', 'بدره', '534');
INSERT INTO `kode_meli_prefix` VALUES (1150, 'ایلام', 'دره شهر', '455');
INSERT INTO `kode_meli_prefix` VALUES (1151, 'ایلام', 'دهلران', '451');
INSERT INTO `kode_meli_prefix` VALUES (1152, 'ایلام', 'زرین آباد', '726');
INSERT INTO `kode_meli_prefix` VALUES (1153, 'ایلام', 'شیروان لومار', '634');
INSERT INTO `kode_meli_prefix` VALUES (1154, 'ایلام', 'شیروان و چرداول', '453');
INSERT INTO `kode_meli_prefix` VALUES (1155, 'ایلام', 'موسیان', '727');
INSERT INTO `kode_meli_prefix` VALUES (1156, 'ایلام', 'مهران', '452');
INSERT INTO `kode_meli_prefix` VALUES (1157, 'اردبیل', 'اردبیل', '145');
INSERT INTO `kode_meli_prefix` VALUES (1158, 'اردبیل', 'اردبیل', '146');
INSERT INTO `kode_meli_prefix` VALUES (1159, 'اردبیل', 'ارشق', '731');
INSERT INTO `kode_meli_prefix` VALUES (1160, 'اردبیل', 'انگوت', '690');
INSERT INTO `kode_meli_prefix` VALUES (1161, 'اردبیل', 'بیله سوار', '601');
INSERT INTO `kode_meli_prefix` VALUES (1162, 'اردبیل', 'پارس آباد', '504');
INSERT INTO `kode_meli_prefix` VALUES (1163, 'اردبیل', 'خلخال', '163');
INSERT INTO `kode_meli_prefix` VALUES (1164, 'اردبیل', 'خورش رستم', '714');
INSERT INTO `kode_meli_prefix` VALUES (1165, 'اردبیل', 'سرعین', '715');
INSERT INTO `kode_meli_prefix` VALUES (1166, 'اردبیل', 'سنجبد(کوثر)', '566');
INSERT INTO `kode_meli_prefix` VALUES (1167, 'اردبیل', 'مشکین شهر', '166');
INSERT INTO `kode_meli_prefix` VALUES (1168, 'اردبیل', 'مشکین شهر', '167');
INSERT INTO `kode_meli_prefix` VALUES (1169, 'اردبیل', 'مغان', '161');
INSERT INTO `kode_meli_prefix` VALUES (1170, 'اردبیل', 'مغان', '162');
INSERT INTO `kode_meli_prefix` VALUES (1171, 'اردبیل', 'نمین', '686');
INSERT INTO `kode_meli_prefix` VALUES (1172, 'اردبیل', 'نیر', '603');
INSERT INTO `kode_meli_prefix` VALUES (1173, 'اصفهان', 'آران و بیدگل', '619');
INSERT INTO `kode_meli_prefix` VALUES (1174, 'اصفهان', 'اردستان', '118');
INSERT INTO `kode_meli_prefix` VALUES (1175, 'اصفهان', 'اصفهان', '127');
INSERT INTO `kode_meli_prefix` VALUES (1176, 'اصفهان', 'اصفهان', '128');
INSERT INTO `kode_meli_prefix` VALUES (1177, 'اصفهان', 'اصفهان', '129');
INSERT INTO `kode_meli_prefix` VALUES (1178, 'اصفهان', 'باغ بهادران', '620');
INSERT INTO `kode_meli_prefix` VALUES (1179, 'اصفهان', 'بوئین و میاندشت', '621');
INSERT INTO `kode_meli_prefix` VALUES (1180, 'اصفهان', 'تیران و کرون', '549');
INSERT INTO `kode_meli_prefix` VALUES (1181, 'اصفهان', 'جرقویه', '564');
INSERT INTO `kode_meli_prefix` VALUES (1182, 'اصفهان', 'چادگان', '575');
INSERT INTO `kode_meli_prefix` VALUES (1183, 'اصفهان', 'خمینی شهر', '113');
INSERT INTO `kode_meli_prefix` VALUES (1184, 'اصفهان', 'خمینی شهر', '114');
INSERT INTO `kode_meli_prefix` VALUES (1185, 'اصفهان', 'خوانسار', '122');
INSERT INTO `kode_meli_prefix` VALUES (1186, 'اصفهان', 'خور و بیابانک', '540');
INSERT INTO `kode_meli_prefix` VALUES (1187, 'اصفهان', 'دولت آباد', '660');
INSERT INTO `kode_meli_prefix` VALUES (1188, 'اصفهان', 'سمیرم', '120');
INSERT INTO `kode_meli_prefix` VALUES (1189, 'اصفهان', 'سمیرم سفلی (دهاقان)', '512');
INSERT INTO `kode_meli_prefix` VALUES (1190, 'اصفهان', 'شاهین شهر', '510');
INSERT INTO `kode_meli_prefix` VALUES (1191, 'اصفهان', 'شاهین شهر', '511');
INSERT INTO `kode_meli_prefix` VALUES (1192, 'اصفهان', 'شهرضا', '119');
INSERT INTO `kode_meli_prefix` VALUES (1193, 'اصفهان', 'فریدن', '115');
INSERT INTO `kode_meli_prefix` VALUES (1194, 'اصفهان', 'فریدونشهر', '112');
INSERT INTO `kode_meli_prefix` VALUES (1195, 'اصفهان', 'فلاورجان', '110');
INSERT INTO `kode_meli_prefix` VALUES (1196, 'اصفهان', 'فلاورجان', '111');
INSERT INTO `kode_meli_prefix` VALUES (1197, 'اصفهان', 'کاشان', '125');
INSERT INTO `kode_meli_prefix` VALUES (1198, 'اصفهان', 'کاشان', '126');
INSERT INTO `kode_meli_prefix` VALUES (1199, 'اصفهان', 'کوهپایه', '565');
INSERT INTO `kode_meli_prefix` VALUES (1200, 'اصفهان', 'گلپایگان', '121');
INSERT INTO `kode_meli_prefix` VALUES (1201, 'اصفهان', 'لنجان(زرینشهر)', '116');
INSERT INTO `kode_meli_prefix` VALUES (1202, 'اصفهان', 'لنجان(زرینشهر)', '117');
INSERT INTO `kode_meli_prefix` VALUES (1203, 'اصفهان', 'مبارکه', '541');
INSERT INTO `kode_meli_prefix` VALUES (1204, 'اصفهان', 'میمه', '622');
INSERT INTO `kode_meli_prefix` VALUES (1205, 'اصفهان', 'نائین', '124');
INSERT INTO `kode_meli_prefix` VALUES (1206, 'اصفهان', 'نجف آباد', '108');
INSERT INTO `kode_meli_prefix` VALUES (1207, 'اصفهان', 'نجف آباد', '109');
INSERT INTO `kode_meli_prefix` VALUES (1208, 'اصفهان', 'نطنز', '123');
INSERT INTO `kode_meli_prefix` VALUES (1209, 'زنجان', 'زنجان', '427');
INSERT INTO `kode_meli_prefix` VALUES (1210, 'زنجان', 'زنجان', '428');
INSERT INTO `kode_meli_prefix` VALUES (1211, 'زنجان', 'ابهر و خرمدره', '615');

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
INSERT INTO `wp_comments` VALUES (1, 1, 'یک نویسندهٔ دیدگاه در وردپرس', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-14 08:50:03', '2019-12-14 05:20:03', 'سلام، این یک دیدگاه است.\nبرای شروع مدیریت، ویرایش و پاک کردن دیدگاه‌ها، لطفا بخش دیدگاه‌ها در پیشخوان را ببینید.\nتصاویر نویسندگان دیدگاه از <a href=\"https://gravatar.com\">Gravatar</a> گرفته می‌شود.', 0, '1', '', '', 0, 0);

-- ----------------------------
-- Table structure for wp_custom_country
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_country`;
CREATE TABLE `wp_custom_country`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 1326 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'ادمین', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'یک سایت دیگر با وردپرس فارسی', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'asdas@g.com', 'yes');
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
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:14:{i:0;s:19:\"01-debug/plugin.php\";i:1;s:20:\"02-common/plugin.php\";i:2;s:23:\"03-attribute/plugin.php\";i:3;s:20:\"04-access/plugin.php\";i:4;s:19:\"05-extra/plugin.php\";i:5;s:19:\"06-input/plugin.php\";i:6;s:19:\"07-block/plugin.php\";i:7;s:22:\"08-fieldset/plugin.php\";i:8;s:18:\"09-form/plugin.php\";i:9;s:21:\"10-process/plugin.php\";i:10;s:25:\"11-data-action/plugin.php\";i:11;s:25:\"99-import-demo/plugin.php\";i:12;s:27:\"bootsrap-enqueue/plugin.php\";i:13;s:17:\"custom/plugin.php\";}', 'yes');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '', 'yes');
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
INSERT INTO `wp_options` VALUES (82, 'timezone_string', 'Atlantic/Azores', 'yes');
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
INSERT INTO `wp_options` VALUES (93, 'admin_email_lifespan', '1591852802', 'yes');
INSERT INTO `wp_options` VALUES (94, 'initial_db_version', '45805', 'yes');
INSERT INTO `wp_options` VALUES (95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (96, 'fresh_site', '1', 'yes');
INSERT INTO `wp_options` VALUES (97, 'WPLANG', '', 'yes');
INSERT INTO `wp_options` VALUES (98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:5:{i:1589407803;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589433603;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589433616;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589433617;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
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
INSERT INTO `wp_options` VALUES (134, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (143, 'recently_activated', 'a:2:{s:43:\"fast-user-switching/fast-user-switching.php\";i:1588019618;s:33:\"jquery-updater/jquery-updater.php\";i:1588019396;}', 'yes');
INSERT INTO `wp_options` VALUES (144, 'fus_settings', 'a:3:{s:8:\"fus_name\";i:1;s:8:\"fus_role\";i:1;s:12:\"fus_username\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (145, 'recovery_mode_email_last_sent', '1584364953', 'yes');
INSERT INTO `wp_options` VALUES (162, 'new_admin_email', 'asdas@g.com', 'yes');
INSERT INTO `wp_options` VALUES (1150, 'core_updater.lock', '1588018410', 'no');
INSERT INTO `wp_options` VALUES (1319, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1589403523;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (1320, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589403522;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (1321, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589403522;s:8:\"response\";a:1:{s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/jquery-updater.3.5.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES (1323, '_site_transient_timeout_theme_roots', '1589405322', 'no');
INSERT INTO `wp_options` VALUES (1324, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES (1, 1, '2019-12-14 08:50:03', '2019-12-14 05:20:03', '<!-- wp:paragraph -->\n<p>به وردپرس خوش آمدید. این اولین نوشتهٔ شماست. این را ویرایش یا حذف کنید، سپس نوشتن را شروع نمایید!</p>\n<!-- /wp:paragraph -->', 'سلام دنیا!', '', 'publish', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2019-12-14 08:50:03', '2019-12-14 05:20:03', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES (2, 1, '2019-12-14 08:50:03', '2019-12-14 05:20:03', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href=\"http://localhost/wp-admin/\">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'برگه نمونه', '', 'publish', 'closed', 'open', '', 'برگه-نمونه', '', '', '2019-12-14 08:50:03', '2019-12-14 05:20:03', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2019-12-14 08:50:03', '2019-12-14 05:20:03', '<!-- wp:heading --><h2>ما که هستیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>نشانی وب‌سایت ما: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>کدامیک از اطلاعات شخصی را جمع آوری میکنیم و چرا</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>دیدگاه‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>هنگامی که بازدیدکنندگان نظرات خود را در سایت می‌نویسند، ما اطلاعاتی را که در فرم نظرات و همچنین بازدید کننده‌ها ارائه می‌شود جمع آوری می‌کنیم &#8217;s آدرس IP و رجیستر عامل کاربر مرورگر برای کمک به تشخیص هرزنامه.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>یک رشته ناشناس ایجاد شده از آدرس ایمیل شما (همچنین هش نامیده می‌شود) ممکن است به سرویس Gravatar ارائه شود تا ببینید آیا از آن استفاده می‌کنید. سیاست حفظ حریم خصوصی خدمات Gravatar در اینجا در دسترس است: https://automattic.com/privacy/. پس از تأیید نظر شما، تصویر نمایه شما در متن نظر شما قابل مشاهده است.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>رسانه</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر تصاویر را به وبسایت آپلود کنید، نباید آپلود تصاویر با داده‌های مکان جغرافیایی (EXIF GPS) شامل شود. بازدیدکنندگان وب سایت می‌توانند هر گونه اطلاعات مکان را از تصاویر در وب سایت دانلود و استخراج کنند.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>فرم‌های تماس</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>کوکی‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر شما نظر خود را در سایت ما ثبت کنید، ممکن است برای ذخیره نام، آدرس ایمیل و وب سایت خود در کوکی‌ها تصمیم گیری کنید. اینها برای راحتی شما هستند، به طوری که شما مجبور نیستید دوباره جزئیات خود را پر کنید زمانی که نظر دیگری را ترک کنید. این کوکی‌ها یک سال طول خواهد کشید.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر از برگه ورود ما بازدید نمایید، ما یک کوکی موقت برای مشخص نمودن اینکه آیا مروگر شما کوکی قبول می‌کند را تنظیم می‌کنیم. این کوکی محتوای اطلاعات شخصی شما نیست و وقتی مرورگر شما بسته می‌شود از بین می‌رود.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>هنگام ورود به سیستم، ما همچنین کوکی‌ها را تنظیم خواهیم کرد تا اطلاعات ورود به سیستم و گزینه‌های صفحه نمایش خود را ذخیره کنید. کوکی‌های ورود به سیستم برای دو روز گذشته و کوکی‌های گزینه‌های صفحه نمایش برای یک سال گذشته است. اگر شما انتخاب کنید &quot; به یاد داشته باشید من Me&quot;، ورود شما برای دو هفته ادامه خواهد داشت. اگر از حساب خود خارج شوید، کوکی‌های ورود حذف خواهند شد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر یک مقاله را ویرایش یا منتشر کنید، یک کوکی اضافی در مرورگر شما ذخیره خواهد شد. این کوکی حاوی اطلاعات شخصی نیست و به سادگی نشان می‌دهد که شناسه پست مقاله شما فقط ویرایش شده است. بعد از یک روز منقضی می‌شود.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>محتوای جاسازی‌شده از دیگر وب‌سایت‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>مقالات موجود در این سایت ممکن است شامل محتوای تعبیه شده (مثلا ویدئوها، تصاویر، مقالات و غیره) باشد. مطالب جاسازی شده از وب سایت‌های دیگر رفتار دقیقا همان طوری که بازدید کننده از وب سایت دیگر بازدید کرده است.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>این وبسایت‌ها ممکن است اطلاعاتی مربوط به شما را جمع‌آوری کنند، از کوکی‌ها استفاده کنند، ردیابی سوم شخص اضافه را جاسازی کنند و تعامل شما را با محتوای تعبیه شده نظارت کنند که شامل ردیابی تعامل شما با محتوای جاسازی شده است اگر حساب کاربری داشته و به آن وبسایت وارد شده باشید.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>تجزیه و تحلیل</h3><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات شما را با چه کسی به اشتراک می‌گذاریم</h2><!-- /wp:heading --><!-- wp:heading --><h2>چه مدت ما اطلاعات شما را حفظ می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر یک نظر را ترک کنید، نظر و متادیتای آن به طور نامحدود حفظ می‌شوند. این به این معنا است که ما می‌توانیم به جای برگزاری آنها در یک خط مؤثر، به طور خودکار هر نظر پیگیری را تصدیق و تأیید کنیم.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>برای کاربرانی که در وب سایت ما ثبت نام می‌کنند (اگر وجود داشته باشند)، ما همچنین اطلاعات شخصی را که در مشخصات کاربر آنها ارائه می‌کنیم، ذخیره می‌کنیم. همه کاربران می‌توانند اطلاعات شخصی خود را در هر زمان (به جز آنها که نمی‌توانند نام کاربری خود را تغییر دهند) ببینند، ویرایش و یا حذف کنند. مدیران وب سایت همچنین می‌توانند این اطلاعات را مشاهده و ویرایش کنند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>حقوقی که بر روی داده‌هایتان دارید</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر در این سایت حساب کاربری دارید یا نظرها را ترک کرده اید، می‌توانید درخواست دریافت یک فایل صادر شده از اطلاعات شخصی که ما در مورد شما نگه می‌داریم، از جمله هر گونه داده‌ای که برای ما ارائه کرده اید. همچنین می‌توانید درخواست کنید که ما هر گونه اطلاعات شخصی که در مورد شما نگه داریم پاک کنیم. این شامل اطلاعاتی نیست که ما مجبور به نگهداری آنها برای اهداف اداری، قانونی یا امنیتی باشیم.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>داده‌های شما را به کجا ارسال می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>دیدگاه‌های بازدیدکننده ممکن است از طریق یک سرویس تشخیص جفنگ خودکار بررسی شوند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>اطلاعات تماس شما</h2><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات اضافی</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چگونه از اطلاعات شما حفاظت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چه رویه‌های نقض اطلاعات در حال حاضر وجود دارد</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>چه چیز جدیدی از داده‌ها دریافت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>تصمیم گیری خودکار و / یا پروفایل ما با داده‌های کاربر انجام می‌شود</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>الزامات افشای قانونی صنعت</h3><!-- /wp:heading -->', 'سیاست حریم خصوصی', '', 'draft', 'closed', 'open', '', 'سیاست-حفظ-حریم-خصوصی', '', '', '2019-12-14 08:50:03', '2019-12-14 05:20:03', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0);

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
-- Table structure for wp_test_table
-- ----------------------------
DROP TABLE IF EXISTS `wp_test_table`;
CREATE TABLE `wp_test_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col_one` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `col_two` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `col_three` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `col_four` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `col_five` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3094 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_test_table
-- ----------------------------
INSERT INTO `wp_test_table` VALUES (2965, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhh', '2020-02-29 09:42:11', 'hhhhhhhhhhhhhhhhhhsssssssshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '0_5e5aa2422706f9.64361337');
INSERT INTO `wp_test_table` VALUES (2966, 'bbbbbbbb1cccccccccc3', 'bbbbbbbb1', 'cccccccccc3', '2020-03-10 09:59:00', 'cccccccccc3ssssssssbbbbbbbb1cccccccccc3', '0_5e67af56d010e0.70674872');
INSERT INTO `wp_test_table` VALUES (2967, 'bbbbb2ccccccc6', 'bbbbb2', 'ccccccc6', '2020-03-10 09:59:00', 'ccccccc6ssssssssbbbbb2ccccccc6', '0_5e67af56d010e0.70674872');
INSERT INTO `wp_test_table` VALUES (2968, 'bbbbbbbbbbbb1ccccccccc1bbbbbbbbbbbb1ccccccccccccc2bbbbbbbbbbbb1ccccccccccc3', 'bbbbbbbbbbbb1', 'ccccccccc1', '2020-03-10 10:00:09', 'ccccccccc1ssssssssbbbbbbbbbbbb1ccccccccc1bbbbbbbbbbbb1ccccccccccccc2bbbbbbbbbbbb1ccccccccccc3', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2969, NULL, 'bbbbbbbbbbbb1', 'ccccccccccccc2', '2020-03-10 10:00:09', 'ccccccccccccc2ssssssss', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2970, NULL, 'bbbbbbbbbbbb1', 'ccccccccccc3', '2020-03-10 10:00:09', 'ccccccccccc3ssssssss', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2971, 'bbbbbbbbb2ccccccccc4bbbbbbbbb2ccccccc5bbbbbbbbb2cccccccccccc6', 'bbbbbbbbb2', 'ccccccccc4', '2020-03-10 10:00:09', 'ccccccccc4ssssssssbbbbbbbbb2ccccccccc4bbbbbbbbb2ccccccc5bbbbbbbbb2cccccccccccc6', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2972, NULL, 'bbbbbbbbb2', 'ccccccc5', '2020-03-10 10:00:09', 'ccccccc5ssssssss', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2973, NULL, 'bbbbbbbbb2', 'cccccccccccc6', '2020-03-10 10:00:09', 'cccccccccccc6ssssssss', '0_5e67c7755dda70.84591001');
INSERT INTO `wp_test_table` VALUES (2974, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 17:51:36', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2975, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 17:51:36', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2976, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 17:51:36', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2977, NULL, 'b222222222222', 'c44444444444', '2020-03-14 17:51:36', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2978, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 17:51:56', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2979, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 17:51:56', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2980, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 17:51:56', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2981, NULL, 'b222222222222', 'c44444444444', '2020-03-14 17:51:56', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2982, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 17:55:53', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2983, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 17:55:53', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2984, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 17:55:53', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2985, NULL, 'b222222222222', 'c44444444444', '2020-03-14 17:55:53', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2986, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 17:56:34', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2987, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 17:56:34', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2988, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 17:56:34', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2989, NULL, 'b222222222222', 'c44444444444', '2020-03-14 17:56:34', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2990, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:01:43', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2991, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:01:43', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2992, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:01:43', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2993, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:01:43', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2994, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:02:15', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2995, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:02:15', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2996, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:02:16', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2997, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:02:16', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2998, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:02:34', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (2999, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:02:34', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3000, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:02:34', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3001, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:02:34', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3002, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:04:03', '', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3003, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:04:03', '', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3004, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:04:03', '', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3005, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:04:03', '', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3006, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:04:41', 'ccccccc1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3007, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:04:41', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3008, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:04:41', 'c333333333333ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3009, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:04:41', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3010, NULL, 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:06:55', 'ccccccc1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3011, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:06:55', 'cccccc2ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3012, NULL, 'b222222222222', 'c333333333333', '2020-03-14 18:06:55', 'c333333333333ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3013, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:06:55', 'c44444444444ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3014, NULL, 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:07:44', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3015, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:07:44', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3016, NULL, 'b222222222222', 'c333333333333', '2020-03-14 18:07:44', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3017, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:07:44', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3018, NULL, 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:08:46', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3019, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:08:46', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3020, NULL, 'b222222222222', 'c333333333333', '2020-03-14 18:08:46', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3021, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:08:46', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3022, NULL, 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:09:11', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3023, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:09:11', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3024, NULL, 'b222222222222', 'c333333333333', '2020-03-14 18:09:11', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3025, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:09:11', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3026, NULL, 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:10:16', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3027, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:10:16', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3028, NULL, 'b222222222222', 'c333333333333', '2020-03-14 18:10:16', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3029, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:10:16', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3030, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:10:35', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3031, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:10:35', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3032, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:10:35', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3033, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:10:35', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3034, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 18:11:05', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3035, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 18:11:05', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3036, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 18:11:05', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3037, NULL, 'b222222222222', 'c44444444444', '2020-03-14 18:11:05', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3038, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:29:38', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3039, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:29:38', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3040, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:29:38', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3041, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:29:38', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3042, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:31:54', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3043, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:31:54', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3044, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:31:54', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3045, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:31:55', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3046, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:32:11', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3047, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:32:11', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3048, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:32:11', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3049, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:32:11', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3050, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:32:42', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3051, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:32:42', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3052, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:32:42', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3053, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:32:42', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3054, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:35:06', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3055, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:35:06', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3056, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:35:06', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3057, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:35:06', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3058, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:35:43', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3059, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:35:43', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3060, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:35:43', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3061, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:35:43', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3062, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:36:31', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3063, NULL, 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:36:31', 'bbbbbbbbbbb1ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3064, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:36:31', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3065, NULL, 'b222222222222', 'c44444444444', '2020-03-14 19:36:31', 'b222222222222ssssssss', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3066, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:36:46', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3067, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:36:46', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3068, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:36:46', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3069, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 19:36:46', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3070, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:41:31', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3071, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:41:31', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3072, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:41:31', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3073, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 19:41:31', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3074, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:41:47', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3075, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:41:47', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3076, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:41:47', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3077, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 19:41:47', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3078, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 19:43:33', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3079, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 19:43:33', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3080, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 19:43:33', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3081, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 19:43:33', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3082, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 20:24:07', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3083, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 20:24:07', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3084, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 20:24:07', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3085, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 20:24:07', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3086, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 20:25:13', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3087, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 20:25:13', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3088, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 20:25:13', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3089, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 20:25:13', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3090, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'ccccccc1', '2020-03-14 20:27:57', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3091, 'bbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', 'bbbbbbbbbbb1', 'cccccc2', '2020-03-14 20:27:57', 'bbbbbbbbbbb1ssssssssbbbbbbbbbbb1ccccccc1bbbbbbbbbbb1cccccc2', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3092, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c333333333333', '2020-03-14 20:27:57', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');
INSERT INTO `wp_test_table` VALUES (3093, 'b222222222222c333333333333b222222222222c44444444444', 'b222222222222', 'c44444444444', '2020-03-14 20:27:57', 'b222222222222ssssssssb222222222222c333333333333b222222222222c44444444444', '0_5e6d7bec599fc9.96666300');

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '7');
INSERT INTO `wp_usermeta` VALUES (18, 1, 'session_tokens', 'a:1:{s:64:\"70556ca007368f1c3cb8b23ba606dc53ebba420f9fad9afc71669b3b3bd94b31\";a:4:{s:10:\"expiration\";i:1588191110;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588018310;}}');

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
INSERT INTO `wp_users` VALUES (1, 'admin', '$P$BViZ0Pg5hq.oJHlrRWDZ1Uh2WZ6.i0.', 'admin', 'asdas@g.com', '', '2019-12-14 05:20:03', '', 0, 'admin');

SET FOREIGN_KEY_CHECKS = 1;
