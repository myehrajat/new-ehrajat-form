/*
 Navicat Premium Data Transfer

 Source Server         : shahab
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : ehrajat-dev

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 16/02/2020 16:38:17
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
) ENGINE = InnoDB AUTO_INCREMENT = 407 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:15:{i:0;s:19:\"01-debug/plugin.php\";i:1;s:20:\"02-common/plugin.php\";i:2;s:23:\"03-attribute/plugin.php\";i:3;s:20:\"04-access/plugin.php\";i:4;s:19:\"05-extra/plugin.php\";i:5;s:19:\"06-input/plugin.php\";i:6;s:19:\"07-block/plugin.php\";i:7;s:22:\"08-fieldset/plugin.php\";i:8;s:18:\"09-form/plugin.php\";i:9;s:21:\"10-process/plugin.php\";i:10;s:25:\"11-data-action/plugin.php\";i:11;s:25:\"99-import-demo/plugin.php\";i:12;s:27:\"bootsrap-enqueue/plugin.php\";i:13;s:17:\"custom/plugin.php\";i:14;s:43:\"fast-user-switching/fast-user-switching.php\";}', 'yes');
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
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:5:{i:1581902403;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581916803;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581916816;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581916817;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
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
INSERT INTO `wp_options` VALUES (143, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (144, 'fus_settings', 'a:3:{s:8:\"fus_name\";i:1;s:8:\"fus_role\";i:1;s:12:\"fus_username\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (145, 'recovery_mode_email_last_sent', '1578707131', 'yes');
INSERT INTO `wp_options` VALUES (162, 'new_admin_email', 'asdas@g.com', 'yes');
INSERT INTO `wp_options` VALUES (398, '_site_transient_timeout_theme_roots', '1581877180', 'no');
INSERT INTO `wp_options` VALUES (399, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (401, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581875383;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-15 23:45:20\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (402, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581875384;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (403, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1581875386;s:7:\"checked\";a:16:{s:27:\"bootsrap-enqueue/plugin.php\";s:5:\"1.0.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:17:\"custom/plugin.php\";s:5:\"1.0.0\";s:19:\"01-debug/plugin.php\";s:5:\"1.0.0\";s:20:\"02-common/plugin.php\";s:5:\"1.0.0\";s:23:\"03-attribute/plugin.php\";s:5:\"1.0.0\";s:20:\"04-access/plugin.php\";s:5:\"1.0.0\";s:19:\"05-extra/plugin.php\";s:5:\"1.0.0\";s:19:\"06-input/plugin.php\";s:5:\"1.0.0\";s:19:\"07-block/plugin.php\";s:5:\"1.0.0\";s:22:\"08-fieldset/plugin.php\";s:5:\"1.0.0\";s:18:\"09-form/plugin.php\";s:5:\"1.0.0\";s:21:\"10-process/plugin.php\";s:5:\"1.0.0\";s:25:\"11-data-action/plugin.php\";s:5:\"1.0.0\";s:25:\"99-import-demo/plugin.php\";s:5:\"1.0.0\";s:43:\"fast-user-switching/fast-user-switching.php\";s:5:\"1.4.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global` VALUES (1, 'Test Of Global Attribute', 'test-global-attr', '%%E%%return \'l\';', 'words', '%%E%%return \'1,2\';', 'true', 'true', '%%E%%return \'1-2\';', 'rtl', 'true', 'move', '', 'this_id', 'tel', 'is-attr', 'item_id', '%%E%%return \'1-2\';', '%%E%%return \'1-2\';', 'itemscope', 'http://schema.org/Thing', 'fa-ir', '%%E%% return \'1-2\' ; ', 'slot_element_name', 'true', '%%E%%return \'1-2\';', '1', 'this is a test title', 'yes', 'This is only a test for global attributes', 'Myehrajat', '2019-08-14 10:25:44', '2019-08-14 10:25:44');
INSERT INTO `wp_tt_attr_html_global` VALUES (2, '', '', '', '', '', '', '', '', '', '', '', '', 'new', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-01-07 15:35:41', '2020-01-07 15:35:41');

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
INSERT INTO `wp_tt_attr_html_global_style` VALUES (1, 'Test Of Style 1', 'test-style', 'background-color', 'blue', 'important', 'This is only test of global attribute of style', 'Myehrajat', '2019-09-16 01:14:41', '2019-09-16 01:14:41');
INSERT INTO `wp_tt_attr_html_global_style` VALUES (2, 'Test Of Style 2', 'test-style', 'text-align', 'left', '', 'This is only test of global attribute of style', 'Myehrajat', '2019-09-16 01:15:42', '2019-09-16 01:15:42');

-- ----------------------------
-- Table structure for wp_tt_attr_input_attr_list
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_attr_list`;
CREATE TABLE `wp_tt_attr_input_attr_list`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Values:query | json_url | value',
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_label_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `query_value_function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json_label_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `json_value_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_attr_list
-- ----------------------------
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (1, '', '', 'json', 'disabled', NULL, '', NULL, NULL, NULL, 'http://localhost/wp-content/plugins/99-import-demo/sample.json.php', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->car', '%%E%%return \'1\';', NULL, NULL, '2019-10-19 13:41:32', '2019-10-19 13:41:32');
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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `list_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_optgroup
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_optgroup` VALUES (1, '', '', 'First Group', '1', '%%E%%return \'1\';', NULL, NULL, '2019-10-24 18:24:02', '2019-10-24 18:24:02');
INSERT INTO `wp_tt_attr_input_select_optgroup` VALUES (2, '', '', 'Second Group', '2', '%%E%%return \'1\';', NULL, NULL, '2019-11-03 15:59:37', '2019-11-03 15:59:37');

-- ----------------------------
-- Table structure for wp_tt_attr_input_select_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_input_select_options`;
CREATE TABLE `wp_tt_attr_input_select_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Values:query | json_url | value',
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
  `json_text_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `json_label_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `json_value_pointer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_options
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, '', '', 'json', NULL, '', '', 'selected', '', NULL, NULL, NULL, NULL, 'http://localhost/wp-content/plugins/99-import-demo/sample.json.php', 'example[$i][$i]->options[0]->car', 'example[$i][$i]->options[0]->model', 'example[$i][$i]->options[0]->country', '%%E%%return \'1\';', NULL, NULL, '2019-10-24 19:14:37', '2019-10-24 19:14:37');
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_submit
-- ----------------------------
INSERT INTO `wp_tt_attr_input_submit` VALUES (1, 'Test Of Submit', 'test-submit', 'autofocus', 'https://google.com', 'multipart/form-data', 'get', 'formnovalidate', '_blank', 'This is a test for submit', 'Myehrajat', '2019-10-04 17:36:32', '2019-10-04 17:36:32');
INSERT INTO `wp_tt_attr_input_submit` VALUES (2, 'Test Of Submit', 'test-submit', 'autofocus', '', '', '', '', '', 'This is a test for submit', 'Myehrajat', '2019-10-04 17:36:32', '2019-10-04 17:36:32');

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
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'Text Attr', 'text-attr', 'name billing section-a', 'autofocus', 'textdirection', 'text-list-id', '1-3', '20', '4', '[A-Za-z0-9]+', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-09-17 05:41:24', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (2, 'Search Attr', 'search-attr', 'on', 'autofocus', 'textdirection', 'list-id', '1-3', '20', '4', '[A-Za-z0-9]+', 'Place Holder', '', 'required', '35', 'this is sepecifc attr for text', 'Myehrajat', '2019-10-19 12:15:30', '2019-10-19 12:15:30');
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_block
-- ----------------------------
INSERT INTO `wp_tt_block` VALUES (1, 'Block One', '', NULL, NULL, NULL, '25', NULL, '7', '28', '1', '2', '', NULL, '2019-11-29 23:56:54', '2019-11-29 23:56:54');
INSERT INTO `wp_tt_block` VALUES (2, 'Block Two', '', NULL, NULL, NULL, '28', NULL, NULL, '29', '1', '2', '', NULL, '2019-12-05 19:55:30', '2019-12-05 19:55:30');
INSERT INTO `wp_tt_block` VALUES (3, 'Block Three', '', NULL, NULL, NULL, '27', NULL, NULL, '30', '1', '1', '', NULL, '2019-12-07 17:57:49', '2019-12-07 17:57:49');
INSERT INTO `wp_tt_block` VALUES (4, 'Block Four', '', NULL, NULL, NULL, '28', NULL, NULL, '31', '1', '2', '', NULL, '2019-12-07 19:14:43', '2019-12-07 19:14:43');
INSERT INTO `wp_tt_block` VALUES (5, 'Block Five', '', NULL, NULL, NULL, '28', NULL, NULL, '32', '', '', '', NULL, '2019-12-07 19:14:46', '2019-12-07 19:14:46');
INSERT INTO `wp_tt_block` VALUES (6, 'block Six', NULL, NULL, NULL, NULL, '28', NULL, '1', NULL, NULL, '2', NULL, NULL, '2020-01-08 15:04:17', '2020-01-08 15:04:17');
INSERT INTO `wp_tt_block` VALUES (7, NULL, NULL, NULL, NULL, NULL, '24', NULL, NULL, NULL, NULL, '3', NULL, NULL, '2020-02-13 04:14:23', '2020-02-13 04:14:23');

-- ----------------------------
-- Table structure for wp_tt_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_condition`;
CREATE TABLE `wp_tt_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_condition
-- ----------------------------
INSERT INTO `wp_tt_condition` VALUES (1, '', '', '$vals[\'input-three\'][0]==\'password\'', '2', '', NULL, '2020-01-08 16:45:15', '2020-01-08 16:45:15');
INSERT INTO `wp_tt_condition` VALUES (2, '', '', '$vals[\'input-three\'][0]==\'text\'', '3', '', NULL, '2020-01-08 16:45:56', '2020-01-08 16:45:56');
INSERT INTO `wp_tt_condition` VALUES (3, '', '', 'else', '4', '', NULL, '2020-01-08 16:46:04', '2020-01-08 16:46:04');

-- ----------------------------
-- Table structure for wp_tt_data_action
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_action`;
CREATE TABLE `wp_tt_data_action`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `colval_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duplicate_check` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `func_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `func_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action
-- ----------------------------
INSERT INTO `wp_tt_data_action` VALUES (1, NULL, NULL, 'tt_options', '2,3,7', 'html5/htdocs/images_data_action/', NULL, NULL, NULL, NULL, NULL, '2020-01-10 13:02:43', '2020-01-10 13:02:43');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ref_parsed_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_colval
-- ----------------------------
INSERT INTO `wp_tt_data_action_colval` VALUES (0, '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_data_action_colval` VALUES (1, '', '', 'variable', '', '', '', NULL, '', NULL, '2020-01-10 20:09:23', '2020-01-10 20:09:23');
INSERT INTO `wp_tt_data_action_colval` VALUES (2, '', '', 'file', 'key', 'input-two', '//images_colval/', NULL, '', NULL, '2020-01-10 20:09:30', '2020-01-10 20:09:30');
INSERT INTO `wp_tt_data_action_colval` VALUES (3, '', '', 'file', 'key', 'input-one', NULL, NULL, '', NULL, '2020-02-15 01:24:06', '2020-02-15 01:24:06');
INSERT INTO `wp_tt_data_action_colval` VALUES (4, '', '', 'extra', '', '', NULL, NULL, '', NULL, '2020-01-10 20:09:39', '2020-01-10 20:09:39');
INSERT INTO `wp_tt_data_action_colval` VALUES (5, '', '', 'function', '', '', NULL, NULL, '', NULL, '2020-01-10 20:13:03', '2020-01-10 20:13:03');
INSERT INTO `wp_tt_data_action_colval` VALUES (6, '', '', 'ecode', '', '', NULL, NULL, '', NULL, '2020-01-10 20:13:06', '2020-01-10 20:13:06');
INSERT INTO `wp_tt_data_action_colval` VALUES (7, '', '', 'file', 'file', 'input-five', '', NULL, '', NULL, '2020-01-31 16:41:05', '2020-01-31 16:41:05');
INSERT INTO `wp_tt_data_action_colval` VALUES (8, '', '', 'simple-variable', '', '', NULL, NULL, '', NULL, '2020-02-15 01:14:38', '2020-02-15 01:14:38');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_fieldset
-- ----------------------------
INSERT INTO `wp_tt_fieldset` VALUES (1, 'Fieldset One', 'Fieldset One', '', 'form-id', 'Fieldset One', '', NULL, '1', NULL, NULL, NULL, '24-25', '2', '2', '1', '1', '3', '', NULL, '2019-12-08 16:29:54', '2019-12-08 16:29:54');
INSERT INTO `wp_tt_fieldset` VALUES (2, 'Fieldset Two', 'Fieldset Two', '', 'form-id', 'Fieldset Two', '', NULL, '1', NULL, NULL, NULL, '26', '', '', '', '', '1', '', NULL, '2019-12-08 16:30:10', '2019-12-08 16:30:10');
INSERT INTO `wp_tt_fieldset` VALUES (3, 'Fieldset Three', 'Fieldset Three', '', 'form-id', 'Fieldset Three', '', NULL, '3', NULL, NULL, NULL, '27', '', '', '', '', '', '', NULL, '2019-12-08 16:30:11', '2019-12-08 16:30:11');
INSERT INTO `wp_tt_fieldset` VALUES (4, 'Fieldset Four', 'Fieldset Four', '', 'form-id', 'Fieldset Four', '', NULL, '4', NULL, NULL, NULL, '28', '', '', '', '', '', '', NULL, '2019-12-08 16:30:12', '2019-12-08 16:30:12');
INSERT INTO `wp_tt_fieldset` VALUES (5, 'Fieldset Five', 'Fieldset Five', '', 'form-id', 'Fieldset Five', '', NULL, '5', NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, '2019-12-08 16:30:13', '2019-12-08 16:30:13');
INSERT INTO `wp_tt_fieldset` VALUES (6, 'Fieldset Six', 'Fieldset Six', '', 'form-id', 'Fieldset Six', '', NULL, '6', NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, '2019-12-08 16:30:14', '2019-12-08 16:30:14');

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
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_form
-- ----------------------------
INSERT INTO `wp_tt_form` VALUES (1, 'Form Test One', 'Form-Test', '', '', 'http://localhost/', '', '', 'multipart/form-data', 'post', 'form_name_one', '', '_self', '1', '1', 'input', 'fieldset', 'block', '29', '6', '', '', '1', '', NULL, '2019-12-11 21:18:22', '2019-12-11 21:18:22');
INSERT INTO `wp_tt_form` VALUES (2, 'Form Test Two', 'Form Test Two', '', '', 'http://localhost/', '', '', 'multipart/form-data', 'post', 'form_name_two', '', '_self', '1', '1', 'fieldset', 'input', 'block', '1', '', '', '', '1', '', NULL, '2020-01-08 12:56:00', '2020-01-08 12:56:00');
INSERT INTO `wp_tt_form` VALUES (3, 'Form Test Three', 'Form Test Three', '', '', 'http://localhost/', '', '', 'multipart/form-data', 'post', 'form_name_three', '', '_self', '1', '1', 'block', 'fieldset', 'input', '2-4', '', '', '', '1', '', NULL, '2020-01-08 12:56:24', '2020-01-08 12:56:24');
INSERT INTO `wp_tt_form` VALUES (4, 'Form Test Four', 'Form Test Four', '', '', 'http://localhost/', '', '', 'multipart/form-data', 'post', 'form_name_four', '', '_self', '1', '1', 'block', 'fieldset', 'input', '', '4', '', '', '1', '', NULL, '2020-01-08 12:56:25', '2020-01-08 12:56:25');

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
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_tt_input` VALUES (24, 'Input One', 'input-one', '24', '', '', 'input-one', '10', '', '', '%%E%%return \'1\';', '', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');
INSERT INTO `wp_tt_input` VALUES (25, 'Input Two', 'input-two', '25', '', '', 'input-two', '10', '', '', '%%E%%return \'1\';', '', '', NULL, 'Myehrajat', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_tt_input` VALUES (26, 'input Three', 'input-three', '26', '', '', 'input-three', '1', '', '', '%%E%%return \'1\';', '', '', NULL, 'Myehrajat', '2019-12-08 11:57:49', '2019-12-08 11:57:49');
INSERT INTO `wp_tt_input` VALUES (27, 'input Four', 'input Four', '26', '', '', 'input-four', '1', '', '', '%%E%%return \'1\';', '', '', NULL, 'Myehrajat', '2019-12-08 14:28:58', '2019-12-08 14:28:58');
INSERT INTO `wp_tt_input` VALUES (28, 'input Five', 'input Five', '26', '', '', 'input-five', '10', '', '', '%%E%%return \'1\';', '', '', NULL, 'Myehrajat', '2019-12-08 14:29:02', '2019-12-08 14:29:02');
INSERT INTO `wp_tt_input` VALUES (29, 'submit me', 'test-submit', '5', '', '', '', '5', 'Value Data', '', '2', '', '', NULL, 'Myehrajat', '2019-09-17 05:38:00', '2019-09-17 05:38:00');

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
INSERT INTO `wp_tt_input_types` VALUES (1, 'Text Field', 'text_field', 'text', 'simple-text', 'sst_text', 'This is simple text input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (2, 'Search Field', 'search_field', 'search', 'simple-search', 'sst_search', 'This is simple search input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (3, 'Tel Field', 'tel_field', 'tel', 'simple-tel', 'sst_tel', 'This is simple tel input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (4, 'Url Field', 'url_field', 'url', 'simple-url', 'sst_url', 'This is simple url input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (5, 'Submit Field', 'submit_field', 'submit', 'simple-submit', 'sst_submit', 'This is simple submit input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (6, 'Range Field', 'range_field', 'range', 'simple-range', 'sst_range', 'This is simple range input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (7, 'Password Field', 'password_field', 'password', 'simple-password', 'sst_password', 'This is simple password input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (8, 'Number Field', 'number_field', 'number', 'simple-number', 'sst_number', 'This is simple number input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (9, 'Image Field', 'image_field', 'image', 'simple-image', 'sst_image', 'This is simple image input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (10, 'File Field', 'file_field', 'file', 'simple-file', 'sst_file', 'This is simple file input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (11, 'Email Field', 'email_field', 'email', 'simple-email', 'sst_email', 'This is simple email input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (12, 'Date Field', 'date_field', 'date', 'simple-date', 'sst_date', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (13, 'Datetime-local Field', 'datetime-local_field', 'datetime-local', 'simple-datetime-local', 'sst_datetime_local', 'This is simple datetime-local input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (14, 'Month Field', 'month_field', 'month', 'simple-month', 'sst_month', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (15, 'Time Field', 'time_field', 'time', 'simple-time', 'sst_time', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (16, 'Week Field', 'week_field', 'week', 'simple-week', 'sst_week', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (17, 'Datetime Field', 'datetime_field', 'datetime', 'simple-datetime', 'sst_datetime', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (18, 'Color Field', 'color_field', 'color', 'simple-color', 'sst_color', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (19, 'Checkbox Field', 'checkbox_field', 'checkbox', 'simple-checkbox', 'sst_checkbox', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (20, 'Radio Field', 'radio_field', 'radio', 'simple-radio', 'sst_radio', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (21, 'Hidden Field', 'hidden_field', 'hidden', 'simple-hidden', 'sst_hidden', 'This is simple hidden input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (22, 'Select Field', 'select_field', 'select', 'simple-select', 'sst_select', 'This is simple select input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');
INSERT INTO `wp_tt_input_types` VALUES (23, 'Textarea Field', 'textarea_field', 'textarea', 'simple-textarea', 'sst_textarea', 'This is simple textarea input type as a HTML code!', 'Ehrajat', '2020-01-07 22:33:51', '2020-01-07 22:33:51');

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
  `attr_custom_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
INSERT INTO `wp_tt_legend` VALUES (1, 'Legend One', 'Legend One', 'Legend One', '2', '1', '40', '', NULL, '2019-12-08 18:27:47', '2019-12-08 18:27:47');

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
-- Table structure for wp_tt_process
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_process`;
CREATE TABLE `wp_tt_process`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `form_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condition_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_action_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_process
-- ----------------------------
INSERT INTO `wp_tt_process` VALUES (1, 'Test Process One', '', '1', '1-3', '1', '', NULL, '2020-01-08 16:43:05', '2020-01-08 16:43:05');
INSERT INTO `wp_tt_process` VALUES (2, 'Test Process Two', '', '2', '', NULL, '', NULL, '2020-01-08 17:05:51', '2020-01-08 17:05:51');
INSERT INTO `wp_tt_process` VALUES (3, 'Test Process Three', '', '3', '', NULL, '', NULL, '2020-01-08 17:05:52', '2020-01-08 17:05:52');
INSERT INTO `wp_tt_process` VALUES (4, 'Test Process Four', '', '4', '', NULL, '', NULL, '2020-01-08 17:05:53', '2020-01-08 17:05:53');
INSERT INTO `wp_tt_process` VALUES (5, 'Test Process Five', '', '5', '', NULL, '', NULL, '2020-01-08 17:05:54', '2020-01-08 17:05:54');
INSERT INTO `wp_tt_process` VALUES (8, 'Test Process Six', '', '', '', NULL, '', NULL, '2020-01-08 17:37:10', '2020-01-08 17:37:10');

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
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_tags
-- ----------------------------
INSERT INTO `wp_tt_tags` VALUES (1, 'Test Text Input', '', '<div style=\"border:1px solid black;padding: 10px; margin:5px;\"><label for=\"{attr:id}\">sample label.{attr:id}</label>', '<div>{var:sampleLabel}</div></div>', '25', '', NULL, '2019-11-06 08:13:34', '2019-11-06 08:13:34');
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
INSERT INTO `wp_tt_tags` VALUES (24, 'Input One', '', '<div style=\"padding: 3px; margin:3px; background-color:blue \" id=\"input-one\" >Input One', '</div>', '27', '', NULL, '2019-12-05 19:31:43', '2019-12-05 19:31:43');
INSERT INTO `wp_tt_tags` VALUES (25, 'Input Two', '', '<div style=\"padding: 3px; margin:3px;background-color:blue\" id=\"input-two\">Input Two\r\n', '</div>', '27', '', NULL, '2019-12-05 19:31:45', '2019-12-05 19:31:45');
INSERT INTO `wp_tt_tags` VALUES (26, 'Input Three', '', '<div style=\"padding: 3px; margin:3px;background-color:green\" id=\"input-Three\">Input Three', '</div>', '27', '', NULL, '2019-11-11 15:18:46', '2019-11-11 15:18:46');
INSERT INTO `wp_tt_tags` VALUES (27, 'Input Parent', '', '<div style=\"padding: 3px; margin:3px;background-color:green\" id=\"input-one\">Input Parent', '</div>', NULL, '', NULL, '2019-11-11 15:18:46', '2019-11-11 15:18:46');
INSERT INTO `wp_tt_tags` VALUES (28, 'Block One', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-one\">Block One', '</div>', '33', '', NULL, '0000-00-00 00:00:00', '2019-12-05 07:43:49');
INSERT INTO `wp_tt_tags` VALUES (29, 'Block Two', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-two\">Block Two', '</div>', '33', '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (30, 'Block Three', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-three\">Block Three', '</div>', '33', '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (31, 'Block Four', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-four\">Block Four', '</div>', '33', '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
INSERT INTO `wp_tt_tags` VALUES (32, 'Block Five', '', '<div style=\"padding: 3px; margin:3px;background-color:red\" id=\"block-five\">Block Five', '</div>', '33', '', NULL, '2019-12-05 19:45:05', '2019-12-05 19:45:05');
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
) ENGINE = InnoDB AUTO_INCREMENT = 245 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_vals
-- ----------------------------
INSERT INTO `wp_tt_vals` VALUES (198, '0_5e17aa168a8613.62463767', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653137616131363861383631332E3632343633373637222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C22696E7075742D7468726565223A5B2270617373776F7264225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D6F6E65223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870323044372E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35383734395D7D2C22696E7075742D74776F223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870323044382E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870323044392E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B3130313332335D5D7D7D7D, '0', '2020-01-09 14:33:14', '2020-01-09 14:43:40');
INSERT INTO `wp_tt_vals` VALUES (199, '1_5e1928ccbfdfe6.76438393', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35653139323863636266646665362E3736343338333933222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D7468726565223A5B227375626D6974225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D6F6E65223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870344244422E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D74776F223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870344244432E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B34313638395D7D2C22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870344244442E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B35303631385D5D7D7D7D, '1', '2020-01-10 17:46:13', '2020-01-10 18:08:48');
INSERT INTO `wp_tt_vals` VALUES (200, '1_5e193c3811ad17.50482995', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35653139336333383131616431372E3530343832393935222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A22222C22696E7075742D7468726565223A5B227375626D6974225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D6F6E65223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454131412E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B34313638395D7D2C22696E7075742D74776F223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454131422E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454131432E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B35383734395D5D7D7D7D, '1', '2020-01-10 19:08:54', '2020-01-10 19:09:33');
INSERT INTO `wp_tt_vals` VALUES (201, '1_5e193c72f2b8a0.56958507', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35653139336337326632623861302E3536393538353037222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A22222C22696E7075742D7468726565223A5B227375626D6974225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D6F6E65223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703239332E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B34313638395D7D2C22696E7075742D74776F223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703239342E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703241342E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B35383734395D5D7D7D7D, '1', '2020-01-10 19:10:02', '2020-01-10 19:11:50');
INSERT INTO `wp_tt_vals` VALUES (202, '1_5e1951ff5e3ca7.06529633', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35653139353166663565336361372E3036353239363333222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C22696E7075742D7468726565223A5B2274657874222C2270617373776F7264225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870373333332E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870373333342E746D70225D5D2C226572726F72223A5B5B305D2C5B305D5D2C2273697A65223A5B5B34313638395D2C5B35383734395D5D7D7D7D, '1', '2020-01-10 20:41:53', '2020-01-10 20:41:53');
INSERT INTO `wp_tt_vals` VALUES (203, '1_5e195241508be5.04735878', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22315F35653139353234313530386265352E3034373335383738222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D7468726565223A5B22736561726368222C227375626D6974225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D46697665223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353832302E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353832312E746D70225D5D2C226572726F72223A5B5B305D2C5B305D5D2C2273697A65223A5B5B35383734395D2C5B3132363230395D5D7D7D7D, '1', '2020-01-10 20:43:06', '2020-01-10 20:49:25');
INSERT INTO `wp_tt_vals` VALUES (204, '0_5e34b0d6e40831.14317048', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334623064366534303833312E3134333137303438222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D7468726565223A5B5B22626262626262626262222C226262626262656565656565656565225D5D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 14:57:47', '2020-01-31 15:00:18');
INSERT INTO `wp_tt_vals` VALUES (205, '0_5e34b1a4105d77.88563782', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334623161343130356437372E3838353633373832222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D7468726565223A5B5B22626262626262626262222C2268686868686868225D5D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 15:01:19', '2020-01-31 15:01:19');
INSERT INTO `wp_tt_vals` VALUES (206, '0_5e34c7e0f0f508.14416620', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334633765306630663530382E3134343136363230222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D7468726565223A5B5B22626262626262626262222C22646464646464646464225D5D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 16:35:54', '2020-01-31 16:36:37');
INSERT INTO `wp_tt_vals` VALUES (207, '0_5e34c8b265efd5.91892822', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334633862323635656664352E3931383932383232222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D466F7572223A5B227777777777777777776060225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2264646464222C227373737373737373225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 16:39:45', '2020-01-31 16:43:25');
INSERT INTO `wp_tt_vals` VALUES (208, '0_5e34c9bd8fc638.95612509', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334633962643866633633382E3935363132353039222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D466F7572223A5B22777777777760225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B22676767676767225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 16:44:31', '2020-01-31 16:44:31');
INSERT INTO `wp_tt_vals` VALUES (209, '0_5e34c9f4a52da4.23314105', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334633966346135326461342E3233333134313035222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B22686868686868225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B226B6B6B6B6B6B6B225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 16:44:51', '2020-01-31 16:44:51');
INSERT INTO `wp_tt_vals` VALUES (210, '0_5e34ca1a9748c8.97503459', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653334636131613937343863382E3937353033343539222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B226B6B6B6B6B6B6B225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B226C6C6C6C6C6C6C6C6C6C6C222C223B3B3B3B3B3B3B3B3B3B3B3B3B3B3B225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-01-31 16:45:25', '2020-02-01 07:51:22');
INSERT INTO `wp_tt_vals` VALUES (211, '0_5e359ee56897f3.32334669', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653335396565353638393766332E3332333334363639222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B2274657874225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2270617373776F7264225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-01 07:53:19', '2020-02-01 07:54:56');
INSERT INTO `wp_tt_vals` VALUES (212, '0_5e35d2c055a590.78057926', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653335643263303535613539302E3738303537393236222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B22736561726368225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2274657874222C2270617373776F7264225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-01 11:34:35', '2020-02-01 12:05:58');
INSERT INTO `wp_tt_vals` VALUES (213, '0_5e4122d3981785.34266127', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653431323264333938313738352E3334323636313237222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B22736561726368225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2274657874222C2272616E6765225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-10 01:31:07', '2020-02-10 03:35:22');
INSERT INTO `wp_tt_vals` VALUES (214, '0_5e414027238aa3.03224388', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653431343032373233386161332E3033323234333838222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B2274657874225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2274656C225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-10 03:36:23', '2020-02-10 03:36:23');
INSERT INTO `wp_tt_vals` VALUES (215, '0_5e41404af32904.03036692', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653431343034616633323930342E3033303336363932222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B2274657874225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B22736561726368222C2274656C225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-10 03:36:50', '2020-02-10 08:19:20');
INSERT INTO `wp_tt_vals` VALUES (216, '0_5e4182b513cdd6.59954945', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653431383262353133636464362E3539393534393435222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B22736561726368222C2274657874225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B2270617373776F7264222C227375626D6974225D2C5B22636F6C6F72222C2268696464656E225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-10 08:20:48', '2020-02-12 10:36:18');
INSERT INTO `wp_tt_vals` VALUES (217, '0_5e4445fe088534.15040079', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434343566653038383533342E3135303430303739222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A22736561726368222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274656C222C2270617373776F7264225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 10:38:01', '2020-02-12 11:27:21');
INSERT INTO `wp_tt_vals` VALUES (218, '0_5e4451a3f1ce89.89074331', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434353161336631636538392E3839303734333331222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A22736561726368222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274656C222C2272616E6765225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 11:27:38', '2020-02-12 11:31:09');
INSERT INTO `wp_tt_vals` VALUES (219, '0_5e4452864d7a83.92497913', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434353238363464376138332E3932343937393133222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A22736561726368222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274656C222C2275726C225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 11:31:23', '2020-02-12 12:07:22');
INSERT INTO `wp_tt_vals` VALUES (220, '0_5e445b16b94710.75073028', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356231366239343731302E3735303733303238222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A22736561726368222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274656C222C227375626D6974225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:07:56', '2020-02-12 12:11:53');
INSERT INTO `wp_tt_vals` VALUES (221, '0_5e445c7b67fed3.04002697', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356337623637666564332E3034303032363937222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A2273656172636873222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A2274656C222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:13:54', '2020-02-12 12:25:18');
INSERT INTO `wp_tt_vals` VALUES (222, '0_5e445f31cde440.98022996', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356633316364653434302E3938303232393936222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A227375626D6974222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B227465787461726561222C2274657874225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:25:35', '2020-02-12 12:26:02');
INSERT INTO `wp_tt_vals` VALUES (223, '0_5e445f60ded065.23349819', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356636306465643036352E3233333439383139222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A227375626D6974222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274657874225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:26:15', '2020-02-12 12:26:15');
INSERT INTO `wp_tt_vals` VALUES (224, '0_5e445f6a2e8fb8.67802927', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356636613265386662382E3637383032393237222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A227375626D697464222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274657874222C2270617373776F7264225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:26:29', '2020-02-12 12:26:29');
INSERT INTO `wp_tt_vals` VALUES (225, '0_5e445f897830e0.19646611', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434356638393738333065302E3139363436363131222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A2274657874222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2272616E6765225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:27:02', '2020-02-12 12:30:11');
INSERT INTO `wp_tt_vals` VALUES (226, '0_5e44605f1db474.25661745', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434363035663164623437342E3235363631373435222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A2274657874222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B22736561726368222C2274656C225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:30:32', '2020-02-12 12:30:32');
INSERT INTO `wp_tt_vals` VALUES (227, '0_5e4460762a55f5.92488491', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434363037363261353566352E3932343838343931222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A227375626D6974222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B2274657874222C2272616E6765225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:30:54', '2020-02-12 12:30:54');
INSERT INTO `wp_tt_vals` VALUES (228, '0_5e44609064dc23.47835007', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434363039303634646332332E3437383335303037222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B227375626D6974222C226E756D626572225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B22736561726368222C2272616E6765225D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:31:41', '2020-02-12 12:32:20');
INSERT INTO `wp_tt_vals` VALUES (229, '0_5e4460d6a63d63.27755828', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434363064366136336436332E3237373535383238222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B227375626D6974222C2270617373776F7264225D2C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A5B5B22736561726368222C2274656C225D2C5B22696D616765222C2275726C225D5D2C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:32:55', '2020-02-12 12:33:18');
INSERT INTO `wp_tt_vals` VALUES (230, '0_5e446110068312.73746853', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653434363131303036383331322E3733373436383533222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A2274657874222C2274657874646972656374696F6E5F646972223A2272746C222C22696E7075742D7468726565223A22736561726368222C225F5F7373745F5F66696C6573223A5B5D7D, '0', '2020-02-12 12:33:24', '2020-02-12 12:33:24');
INSERT INTO `wp_tt_vals` VALUES (231, '0_5e4526e18f2488.94733771', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653435323665313866323438382E3934373333373731222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A22736561726368222C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2274797065223A22696D6167655C2F6A706567222C22746D705F6E616D65223A22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870424335322E746D70222C226572726F72223A302C2273697A65223A3132363230397D7D7D, '0', '2020-02-13 02:37:27', '2020-02-13 02:37:27');
INSERT INTO `wp_tt_vals` VALUES (232, '0_5e452d1d6bbcc1.53049942', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653435326431643662626363312E3533303439393432222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B22736561726368222C226E756D626572225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067222C2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870333535372E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870333535382E746D70225D2C226572726F72223A5B302C305D2C2273697A65223A5B3130313332332C3132363230395D7D7D7D, '0', '2020-02-13 03:04:10', '2020-02-13 03:04:10');
INSERT INTO `wp_tt_vals` VALUES (233, '0_5e452d604335d7.65115876', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653435326436303433333564372E3635313135383736222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C22696E7075742D666F7572223A5B2274657874222C2272616E6765225D2C2274657874646972656374696F6E5F646972223A2272746C222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870373637342E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870373638352E746D70225D2C226572726F72223A5B302C305D2C2273697A65223A5B35383734392C35303631385D7D7D7D, '0', '2020-02-13 03:05:33', '2020-02-13 03:05:33');
INSERT INTO `wp_tt_vals` VALUES (234, '0_5e453d66285345.18701884', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653435336436363238353334352E3138373031383834222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463046382E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463130422E746D70225D2C226572726F72223A5B302C305D2C2273697A65223A5B35383734392C36343635325D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D31302E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463130392E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463130412E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463130432E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463130442E746D70225D5D2C226572726F72223A5B5B302C305D2C5B302C305D5D2C2273697A65223A5B5B3132363230392C34313638395D2C5B34343534302C35303631385D5D7D7D7D, '0', '2020-02-13 04:13:47', '2020-02-13 04:13:47');
INSERT INTO `wp_tt_vals` VALUES (235, '0_5e453dba4d6ec7.28358567', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653435336462613464366563372E3238333538353637222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353846412E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35383734395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353846422E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353930452E746D70225D5D2C226572726F72223A5B5B302C305D5D2C2273697A65223A5B5B3132363230392C35383734395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30392E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353930432E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353930442E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353930462E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870353931302E746D70225D5D5D2C226572726F72223A5B5B5B302C305D2C5B302C305D5D5D2C2273697A65223A5B5B5B34313638392C35303631385D2C5B3130313332332C36343635325D5D5D7D7D7D, '0', '2020-02-13 04:15:19', '2020-02-13 04:15:19');
INSERT INTO `wp_tt_vals` VALUES (236, '0_5e47b0de1a0f12.55545543', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653437623064653161306631322E3535353435353433222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703533302E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534362E746D70225D2C226572726F72223A5B302C305D2C2273697A65223A5B35383734392C35303631385D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30392E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30392E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703533312E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534332E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534372E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534412E746D70225D5D2C226572726F72223A5B5B302C305D2C5B302C305D5D2C2273697A65223A5B5B3132363230392C36343635325D2C5B34313638392C36343635325D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D31302E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D5D2C5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D30392E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D2C5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534312E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534322E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534342E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534352E746D70225D5D2C5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534382E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534392E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068703534422E746D70225D5D5D2C226572726F72223A5B5B5B302C305D2C5B302C305D5D2C5B5B302C305D2C5B305D5D5D2C2273697A65223A5B5B5B34313638392C35303631385D2C5B34343534302C35303631385D5D2C5B5B3132363230392C35383734395D2C5B36343635325D5D5D7D7D7D, '0', '2020-02-15 01:04:17', '2020-02-16 02:27:53');
INSERT INTO `wp_tt_vals` VALUES (237, '0_5e4919446dea74.70530026', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439313934343664656137342E3730353330303236222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704433372E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35383734395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704433382E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B3132363230395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704433392E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704433412E746D70225D5D5D2C226572726F72223A5B5B5B302C305D5D5D2C2273697A65223A5B5B5B34313638392C3130313332335D5D5D7D7D7D, '0', '2020-02-16 02:29:00', '2020-02-16 02:29:00');
INSERT INTO `wp_tt_vals` VALUES (238, '0_5e4919839b3bb8.79494807', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439313938333962336262382E3739343934383037222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454145352E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35383734395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454145362E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B3132363230395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454145372E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870454145382E746D70225D5D5D2C226572726F72223A5B5B5B302C305D5D5D2C2273697A65223A5B5B5B34313638392C3130313332335D5D5D7D7D7D, '0', '2020-02-16 02:30:06', '2020-02-16 11:16:25');
INSERT INTO `wp_tt_vals` VALUES (239, '0_5e49950e2ceb84.57275909', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439393530653263656238342E3537323735393039222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35342E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464338322E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35383734395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339322E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339352E746D70225D5D2C226572726F72223A5B5B302C305D5D2C2273697A65223A5B5B3132363230392C3130313332335D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067222C2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C5B2270686F746F5F323031382D30382D31305F31342D31362D31302E6A7067222C2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D2C5B22696D6167655C2F6A706567222C22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339332E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339342E746D70225D2C5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339362E746D70222C22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870464339372E746D70225D5D5D2C226572726F72223A5B5B5B302C305D2C5B302C305D5D5D2C2273697A65223A5B5B5B34313638392C35303631385D2C5B34343534302C3132363230395D5D5D7D7D7D, '0', '2020-02-16 11:16:54', '2020-02-16 12:01:16');
INSERT INTO `wp_tt_vals` VALUES (240, '0_5e49dd37cf0688.60366197', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439646433376366303638382E3630333636313937222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704342312E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704343322E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B34313638395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C7068704343332E746D70225D5D5D2C226572726F72223A5B5B5B305D5D5D2C2273697A65223A5B5B5B3130313332335D5D5D7D7D7D, '0', '2020-02-16 16:24:34', '2020-02-16 16:24:34');
INSERT INTO `wp_tt_vals` VALUES (241, '0_5e49de4cdc6c96.45429661', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439646534636463366339362E3435343239363631222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870333135312E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B3132363230395D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870333136322E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B34313638395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870333136332E746D70225D5D5D2C226572726F72223A5B5B5B305D5D5D2C2273697A65223A5B5B5B3130313332335D5D5D7D7D7D, '0', '2020-02-16 16:29:20', '2020-02-16 16:30:11');
INSERT INTO `wp_tt_vals` VALUES (242, '0_5e49de94bcd7c5.54640730', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439646539346263643763352E3534363430373330222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870343530422E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35303631385D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30322E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870343530432E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B34313638395D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870343530442E746D70225D5D5D2C226572726F72223A5B5B5B305D5D5D2C2273697A65223A5B5B5B3130313332335D5D5D7D7D7D, '0', '2020-02-16 16:30:16', '2020-02-16 16:30:16');
INSERT INTO `wp_tt_vals` VALUES (243, '0_5e49dea3ed1f18.11738738', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439646561336564316631382E3131373338373338222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463633312E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35303631385D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463633322E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B35303631385D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31352D35392E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870463633332E746D70225D5D5D2C226572726F72223A5B5B5B305D5D5D2C2273697A65223A5B5B5B3132363230395D5D5D7D7D7D, '0', '2020-02-16 16:30:33', '2020-02-16 16:31:02');
INSERT INTO `wp_tt_vals` VALUES (244, '0_5e49ded0da4ce5.67068326', 0x7B225F5F7373745F5F73746570223A2231222C225F5F7373745F5F756E69717565223A22305F35653439646564306461346365352E3637303638333236222C225F5F7373745F5F636F6E646974696F6E73223A22312D33222C225F5F7373745F5F646174615F616374696F6E73223A2231222C225F5F7373745F5F66696C6573223A7B22696E7075742D66697665223A7B226E616D65223A5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D2C2274797065223A5B22696D6167655C2F6A706567225D2C22746D705F6E616D65223A5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870444437342E746D70225D2C226572726F72223A5B305D2C2273697A65223A5B35303631385D7D2C22696E7075742D74776F223A7B226E616D65223A5B5B2270686F746F5F323031382D30382D31305F31342D31362D30352E6A7067225D5D2C2274797065223A5B5B22696D6167655C2F6A706567225D5D2C22746D705F6E616D65223A5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870444437352E746D70225D5D2C226572726F72223A5B5B305D5D2C2273697A65223A5B5B35303631385D5D7D2C22696E7075742D6F6E65223A7B226E616D65223A5B5B5B2270686F746F5F323031382D30382D31305F31342D31362D30372E6A7067225D5D5D2C2274797065223A5B5B5B22696D6167655C2F6A706567225D5D5D2C22746D705F6E616D65223A5B5B5B22453A5C5C656872616A61742D666F726D2D6465762D68746D6C355C5C746D705C5C706870444437362E746D70225D5D5D2C226572726F72223A5B5B5B305D5D5D2C2273697A65223A5B5B5B3130313332335D5D5D7D7D7D, '0', '2020-02-16 16:31:17', '2020-02-16 16:37:28');

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_usermeta` VALUES (16, 1, 'session_tokens', 'a:1:{s:64:\"16aefe817bee959890537eb97ca8b105125b39705dea7237f4ad1126c9266073\";a:4:{s:10:\"expiration\";i:1578862692;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578689892;}}');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '5');

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
