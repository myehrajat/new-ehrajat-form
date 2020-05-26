/*
 Navicat Premium Data Transfer

 Source Server         : myehrajat
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : ehrajat-dev

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 26/05/2020 10:40:55
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
) ENGINE = InnoDB AUTO_INCREMENT = 1411 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:6:{i:1590477003;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590513603;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590556803;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590556816;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590556817;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
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
INSERT INTO `wp_options` VALUES (1395, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1590473434;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES (1396, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590473434;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:0:\"\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (1397, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590473413;s:8:\"response\";a:1:{s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/jquery-updater.3.5.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"fast-user-switching/fast-user-switching.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/fast-user-switching\";s:4:\"slug\";s:19:\"fast-user-switching\";s:6:\"plugin\";s:43:\"fast-user-switching/fast-user-switching.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/fast-user-switching/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/fast-user-switching.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/fast-user-switching/assets/icon-256x256.png?rev=1736245\";s:2:\"1x\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";s:3:\"svg\";s:64:\"https://ps.w.org/fast-user-switching/assets/icon.svg?rev=1736245\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/fast-user-switching/assets/banner-1544x500.png?rev=1736245\";s:2:\"1x\";s:74:\"https://ps.w.org/fast-user-switching/assets/banner-772x250.png?rev=1736245\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES (1409, '_site_transient_timeout_theme_roots', '1590475216', 'no');
INSERT INTO `wp_options` VALUES (1410, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');

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
  `remove_attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_changer
-- ----------------------------
INSERT INTO `wp_tt_attr_changer` VALUES (1, 'Disable 204,205', NULL, '204,205', 'disabled', 'disabled', '', NULL, NULL, '2020-04-12 03:41:47', '2020-04-12 03:41:47');
INSERT INTO `wp_tt_attr_changer` VALUES (2, 'Disable 205', NULL, '205', 'disabled', 'disabled', '', NULL, NULL, '2020-04-17 17:31:27', '2020-04-17 17:31:27');
INSERT INTO `wp_tt_attr_changer` VALUES (3, 'Enable 204', NULL, '204', 'disabled', '', 'remove', NULL, NULL, '2020-04-17 17:59:29', '2020-04-17 17:59:29');
INSERT INTO `wp_tt_attr_changer` VALUES (4, 'Disable 204', NULL, '204', 'disabled', 'disabled', NULL, NULL, NULL, '2020-04-17 17:59:54', '2020-04-17 17:59:54');
INSERT INTO `wp_tt_attr_changer` VALUES (5, 'Enable 205', NULL, '205', 'disabled', '', 'remove', NULL, NULL, '2020-04-17 17:59:55', '2020-04-17 17:59:55');
INSERT INTO `wp_tt_attr_changer` VALUES (6, 'Disable 204,205', NULL, '224,225', 'disabled', 'disabled', '', NULL, NULL, '2020-05-12 03:43:15', '2020-05-12 03:43:15');
INSERT INTO `wp_tt_attr_changer` VALUES (7, 'Disable 205', NULL, '225', 'disabled', 'disabled', '', NULL, NULL, '2020-05-12 03:43:17', '2020-05-12 03:43:17');
INSERT INTO `wp_tt_attr_changer` VALUES (8, 'Enable 204', NULL, '224', 'disabled', '', 'remove', NULL, NULL, '2020-05-12 03:43:17', '2020-05-12 03:43:17');
INSERT INTO `wp_tt_attr_changer` VALUES (9, 'Disable 204', NULL, '224', 'disabled', 'disabled', NULL, NULL, NULL, '2020-05-12 03:43:18', '2020-05-12 03:43:18');
INSERT INTO `wp_tt_attr_changer` VALUES (10, 'Enable 205', NULL, '225', 'disabled', '', 'remove', NULL, NULL, '2020-05-12 03:43:20', '2020-05-12 03:43:20');

-- ----------------------------
-- Table structure for wp_tt_attr_changer_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_changer_condition`;
CREATE TABLE `wp_tt_attr_changer_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `condition` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_changer_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_changer_condition
-- ----------------------------
INSERT INTO `wp_tt_attr_changer_condition` VALUES (1, 'Source Type value', NULL, '{self}==\'value\'', '1', NULL, NULL, '2020-04-12 03:38:42', '2020-04-12 03:38:42');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (2, 'Source Type query', NULL, '{name:source_type-12}==\'query\'', '2,3', NULL, NULL, '2020-04-12 03:40:50', '2020-04-12 03:40:50');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (3, 'Source Type json', NULL, '{self}==\'json\'', '4,5', NULL, NULL, '2020-04-16 03:16:59', '2020-04-16 03:16:59');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (4, 'Source Type value', NULL, '{self}==\'value\'', '6', NULL, NULL, '2020-05-12 03:42:35', '2020-05-12 03:42:35');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (5, 'Source Type query', NULL, '{name:source_type-13}==\'query\'', '7,8', NULL, NULL, '2020-05-12 03:42:37', '2020-05-12 03:42:37');
INSERT INTO `wp_tt_attr_changer_condition` VALUES (6, 'Source Type json', NULL, '{self}==\'json\'', '9,10', NULL, NULL, '2020-05-12 03:42:39', '2020-05-12 03:42:39');

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
INSERT INTO `wp_tt_attr_custom` VALUES (1, 'Sample', 'Sample', 'Sample', 'Sample', NULL, NULL, '2020-03-19 08:41:21', '2020-03-19 08:41:21');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_event
-- ----------------------------
INSERT INTO `wp_tt_attr_html_event` VALUES (1, 'Slugify', '', 'onchange', '1', NULL, NULL, '2020-03-16 07:40:39', '2020-03-16 07:40:39');
INSERT INTO `wp_tt_attr_html_event` VALUES (2, 'Is attribute', '', 'onchange', '2', NULL, NULL, '2020-04-01 20:48:07', '2020-04-01 20:48:07');
INSERT INTO `wp_tt_attr_html_event` VALUES (3, 'Slot Attribute', '', 'onchange', '3', NULL, NULL, '2020-04-02 12:58:42', '2020-04-02 12:58:42');
INSERT INTO `wp_tt_attr_html_event` VALUES (4, 'Event Name', '', 'onchange', '4', NULL, NULL, '2020-04-02 16:08:00', '2020-04-02 16:08:00');
INSERT INTO `wp_tt_attr_html_event` VALUES (5, 'Data-* Attributes', '', 'onchange', '5', NULL, NULL, '2020-04-03 16:16:11', '2020-04-03 16:16:11');
INSERT INTO `wp_tt_attr_html_event` VALUES (6, 'File Accept Checker', '', 'onchange', '6', NULL, NULL, '2020-04-03 20:19:23', '2020-04-03 20:19:23');

-- ----------------------------
-- Table structure for wp_tt_attr_html_event_jsfunction
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_attr_html_event_jsfunction`;
CREATE TABLE `wp_tt_attr_html_event_jsfunction`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsfunction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_event_jsfunction
-- ----------------------------
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (1, 'make_slug', 'make_slug', 'this.value = make_slug(this.value);', NULL, NULL, '2020-03-16 07:33:05', '2020-03-16 07:33:05');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (2, 'is_attr_maker', 'is_attr_maker', 'this.value = is_attr_maker(this.value);', NULL, NULL, '2020-04-01 20:48:44', '2020-04-01 20:48:44');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (3, 'slot_attr_maker', 'slot_attr_maker', 'this.value = slot_attr_maker(this.value);', NULL, NULL, '2020-04-02 12:59:00', '2020-04-02 12:59:00');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (4, 'event_name_attr_maker', 'event_name_attr_maker', 'this.value = event_name_attr_maker(this.value);', NULL, NULL, '2020-04-02 16:08:19', '2020-04-02 16:08:19');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (5, 'data_attr_maker', 'data_attr_maker', 'this.value = data_attr_maker(this.value);', NULL, NULL, '2020-04-03 16:16:28', '2020-04-03 16:16:28');
INSERT INTO `wp_tt_attr_html_event_jsfunction` VALUES (6, 'file_accept_checker', 'file_accept_checker', 'this.value = file_accept_checker(this.value);', NULL, NULL, '2020-04-03 20:19:40', '2020-04-03 20:19:40');

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
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'This table contain all HTML5 global tags this mean ALL not only input elements.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global` VALUES (1, 'Bootstrap class for input', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 05:35:16', '2020-03-16 05:35:16');
INSERT INTO `wp_tt_attr_html_global` VALUES (2, 'Bootstrap class for submit', '', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-16 06:58:21', '2020-03-16 06:58:21');
INSERT INTO `wp_tt_attr_html_global` VALUES (3, 'Slug maker', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', NULL, NULL, '2020-03-16 07:39:55', '2020-03-16 07:39:55');
INSERT INTO `wp_tt_attr_html_global` VALUES (4, 'Bootstrap class for checkbox', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-17 06:10:46', '2020-03-17 06:10:46');
INSERT INTO `wp_tt_attr_html_global` VALUES (5, 'Is attribute', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', '', '', '', '', '', NULL, NULL, '2020-04-01 20:47:16', '2020-04-01 20:47:16');
INSERT INTO `wp_tt_attr_html_global` VALUES (6, 'Slot Attribute', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', '', '', '', '', '', NULL, NULL, '2020-04-02 12:57:47', '2020-04-02 12:57:47');
INSERT INTO `wp_tt_attr_html_global` VALUES (7, 'Event Name', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '', '', '', '', '', '', NULL, NULL, '2020-04-02 16:07:24', '2020-04-02 16:07:24');
INSERT INTO `wp_tt_attr_html_global` VALUES (8, 'Java Script Code Editor', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-04-02 21:39:16', '2020-04-02 21:39:16');
INSERT INTO `wp_tt_attr_html_global` VALUES (9, 'Data-* Attributes', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '', '', '', '', '', '', NULL, NULL, '2020-04-03 16:15:25', '2020-04-03 16:15:25');
INSERT INTO `wp_tt_attr_html_global` VALUES (10, 'File Accept', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', '', '', '', '', '', NULL, NULL, '2020-04-03 20:18:32', '2020-04-03 20:18:32');
INSERT INTO `wp_tt_attr_html_global` VALUES (101, 'Form', '', '', '', '', '', '', '', '', '', '', '', 'input-maker', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-03-17 06:19:54', '2020-03-17 06:19:54');
INSERT INTO `wp_tt_attr_html_global` VALUES (102, 'form 2', '', '', '', '', '', '', '', '', '', '', '', 'sssssssssss', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2020-04-28 04:22:42', '2020-04-28 04:22:42');

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
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_data
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_data` VALUES (1, 'Sample', 'Sample', 'Sample', 'Sample', 'Sample', NULL, '2020-04-01 19:34:32', '2020-04-01 19:34:32');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_itemprop
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_itemprop` VALUES (1, 'Sample', 'Sample', 'Sample', NULL, NULL, '2020-04-01 23:29:11', '2020-04-01 23:29:11');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_html_global_itemref
-- ----------------------------
INSERT INTO `wp_tt_attr_html_global_itemref` VALUES (1, 'Sample', 'Sample', 'Sample', NULL, NULL, '2020-04-01 23:30:24', '2020-04-01 23:30:24');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_attr_list
-- ----------------------------
INSERT INTO `wp_tt_attr_input_attr_list` VALUES (1, 'Test', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:02:25', '2020-03-30 18:02:25');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_checkbox_radio
-- ----------------------------
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (1, 'Disabled', 'disabled', '', '', '', 'disabled', NULL, NULL, '2020-03-17 05:31:12', '2020-03-17 05:31:12');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (2, 'Autofocus', 'autofocus', '', '', '', 'autofocus', NULL, NULL, '2020-03-21 02:51:46', '2020-03-21 02:51:46');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (3, 'Checked', 'checked', '', '', '', 'checked', NULL, NULL, '2020-03-21 02:51:47', '2020-03-21 02:51:47');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (4, 'Required', 'required', '', '', '', 'required', NULL, NULL, '2020-03-21 02:51:48', '2020-03-21 02:51:48');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (5, 'AutoComplete', 'autocomplete', '', '', '', 'autocomplete', NULL, NULL, '2020-03-30 17:52:05', '2020-03-30 17:52:05');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (6, 'ReadOnly', 'readonly', '', '', '', 'readonly', NULL, NULL, '2020-03-30 18:14:33', '2020-03-30 18:14:33');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (7, 'Multiple', 'multiple', '', '', '', 'multiple', NULL, NULL, '2020-03-30 18:28:39', '2020-03-30 18:28:39');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (8, 'FormNoValidate', 'formnovalidate', '', '', '', 'formnovalidate', NULL, NULL, '2020-03-31 01:18:26', '2020-03-31 01:18:26');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (9, 'ContentEditable', 'ContentEditable', '', '', '', 'true', NULL, NULL, '2020-04-01 19:21:59', '2020-04-01 19:21:59');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (10, 'Draggable', 'Draggable', '', '', '', 'true', NULL, NULL, '2020-04-01 19:52:00', '2020-04-01 19:52:00');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (11, 'Hidden', 'Hidden', '', '', '', 'hidden', NULL, NULL, '2020-04-01 19:59:28', '2020-04-01 19:59:28');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (12, 'ItemScope', 'ItemScope', '', '', '', 'itemscope', NULL, NULL, '2020-04-02 02:13:54', '2020-04-02 02:13:54');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (13, 'SpellCheck', 'spellcheck', '', '', '', 'true', NULL, NULL, '2020-04-02 13:05:20', '2020-04-02 13:05:20');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (14, 'Translate', 'translate', '', '', '', 'yes', NULL, NULL, '2020-04-02 13:25:49', '2020-04-02 13:25:49');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (15, 'Important', 'Important', '', '', '', '!important', NULL, NULL, '2020-04-03 19:57:50', '2020-04-03 19:57:50');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (16, 'Remove', 'Remove', '', '', '', 'remove', NULL, NULL, '2020-04-18 07:23:57', '2020-04-18 07:23:57');
INSERT INTO `wp_tt_attr_input_checkbox_radio` VALUES (17, 'Enable', 'Enable', '', '', '', 'enable', NULL, NULL, '2020-04-18 09:14:52', '2020-04-18 09:14:52');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_number
-- ----------------------------
INSERT INTO `wp_tt_attr_input_number` VALUES (1, 'Max & Min', 'Max-Min', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '2020-03-30 18:12:25', '2020-03-30 18:12:25');
INSERT INTO `wp_tt_attr_input_number` VALUES (2, 'Step One', 'Step One', '', '', '', '', '', '', '', '', '', '1', NULL, NULL, NULL, '2020-03-30 18:27:54', '2020-03-30 18:27:54');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select` VALUES (1, 'Select Input Type', 'Select-Input-Type', 'Select Input Type', '', '', '', 'required', '', '', '', '1', 'Select Input Type', NULL, '2020-03-16 05:28:07', '2020-03-16 05:28:07');
INSERT INTO `wp_tt_attr_input_select` VALUES (2, 'Select Form', 'Select-Form', 'Select Form', '', '', '', '', '', '', '', '2', NULL, NULL, '2020-03-17 06:14:32', '2020-03-17 06:14:32');
INSERT INTO `wp_tt_attr_input_select` VALUES (3, 'Select Tag', 'Select-Tag', 'Select Tag', '', '', 'multiple', '', '', '', '', '3,4', NULL, NULL, '2020-03-19 07:55:43', '2020-03-19 07:55:43');
INSERT INTO `wp_tt_attr_input_select` VALUES (4, 'Global Attribute', 'Global-Attribute', 'Select Global Attribute', '', '', '', '', '', '', '', '5,6', NULL, NULL, '2020-03-19 08:16:42', '2020-03-19 08:16:42');
INSERT INTO `wp_tt_attr_input_select` VALUES (5, 'Custom Attributes', 'Custom-Attributes', 'Select Custom Attributes', '', '', 'multiple', '', '5', '', '', '7,8', NULL, NULL, '2020-03-19 08:42:11', '2020-03-19 08:42:11');
INSERT INTO `wp_tt_attr_input_select` VALUES (6, 'User Access', 'User-Access', 'Select User Access', '', '', '', 'required', '', '', '', '9,10', NULL, NULL, '2020-03-19 09:01:23', '2020-03-19 09:01:23');
INSERT INTO `wp_tt_attr_input_select` VALUES (7, 'Input Meta', 'Input-Meta', 'Select Input Meta', '', '', 'multiple', '', '5', '', '', '11,12', NULL, NULL, '2020-03-19 09:08:17', '2020-03-19 09:08:17');
INSERT INTO `wp_tt_attr_input_select` VALUES (8, 'Specific Attributes', 'Specific-Attributes', 'Select Specific Attributes', '', '', '', 'required', '', '', '', '13', NULL, NULL, '2020-03-21 03:36:35', '2020-03-21 03:36:35');
INSERT INTO `wp_tt_attr_input_select` VALUES (9, 'List', 'List', 'Select List', '', '', 'multiple', '', '5', '', '', '14,15', NULL, NULL, '2020-03-30 17:55:32', '2020-03-30 17:55:32');
INSERT INTO `wp_tt_attr_input_select` VALUES (10, 'Accepts', 'Accepts', 'Select Accepts', '', '', 'multiple', '', '5', '', '', '16,17', NULL, NULL, '2020-03-30 20:58:49', '2020-03-30 20:58:49');
INSERT INTO `wp_tt_attr_input_select` VALUES (11, 'Capture', 'Capture', 'Select Capture', '', '', '', '', '', '', '', '18-20', NULL, NULL, '2020-03-30 20:59:12', '2020-03-30 20:59:12');
INSERT INTO `wp_tt_attr_input_select` VALUES (12, 'FormEnctype', 'FormEnctype', 'Select FormEnctype', '', '', '', '', '', '', '', '21-23', NULL, NULL, '2020-03-30 22:46:53', '2020-03-30 22:46:53');
INSERT INTO `wp_tt_attr_input_select` VALUES (13, 'FormMethod', 'FormMethod', 'Select FormMethod', '', '', '', '', '', '', '', '24-26', NULL, NULL, '2020-03-30 22:53:58', '2020-03-30 22:53:58');
INSERT INTO `wp_tt_attr_input_select` VALUES (14, 'FormTarget', 'FormTarget', 'Select FormTarget', '', '', '', '', '', '', '', '27-30', NULL, NULL, '2020-03-31 01:24:33', '2020-03-31 01:24:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (15, 'Show First Opt Or OptGroup', 'Show-First', 'Select Show Options First', '', '', '', '', '', '', '', '31,32', NULL, NULL, '2020-03-31 14:20:11', '2020-03-31 14:20:11');
INSERT INTO `wp_tt_attr_input_select` VALUES (16, 'OptGroups', 'OptGroups', 'Select OptGroups', '', '', 'multiple', '', '', '', '', '33,34', NULL, NULL, '2020-03-31 14:58:00', '2020-03-31 14:58:00');
INSERT INTO `wp_tt_attr_input_select` VALUES (17, 'Options', 'Options', 'Select Options', '', '', 'multiple', '', '', '', '', '35,36', NULL, NULL, '2020-03-31 14:58:03', '2020-03-31 14:58:03');
INSERT INTO `wp_tt_attr_input_select` VALUES (18, 'Wrap', 'Wrap', 'Select Wrap', '', '', '', '', '', '', '', '37-39', NULL, NULL, '2020-04-01 00:43:33', '2020-04-01 00:43:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (19, 'AutoCaptilize', 'AutoCaptilize', 'Select AutoCaptilize Mode', '', '', '', '', '', '', '', '40-45', NULL, NULL, '2020-04-01 19:11:31', '2020-04-01 19:11:31');
INSERT INTO `wp_tt_attr_input_select` VALUES (20, 'Classes', 'Classes', 'Select Classes', '', '', 'multiple', '', '5', '', '', '46,47', NULL, NULL, '2020-04-01 19:15:53', '2020-04-01 19:15:53');
INSERT INTO `wp_tt_attr_input_select` VALUES (21, 'Data', 'Data', 'Select Data', '', '', 'multiple', '', '5', '', '', '48,49', NULL, NULL, '2020-04-01 19:31:57', '2020-04-01 19:31:57');
INSERT INTO `wp_tt_attr_input_select` VALUES (22, 'Dir', 'Dir', 'Select Direction', '', '', '', '', '', '', '', '50-52', NULL, NULL, '2020-04-01 19:48:11', '2020-04-01 19:48:11');
INSERT INTO `wp_tt_attr_input_select` VALUES (23, 'Dropzone', 'Dropzone', 'Select Dropzone Mode', '', '', '', '', '', '', '', '53-55', NULL, NULL, '2020-04-01 19:48:20', '2020-04-01 19:48:20');
INSERT INTO `wp_tt_attr_input_select` VALUES (24, 'InputMode', 'InputMode', 'Select InputMode', '', '', '', '', '', '', '', '56-63', NULL, NULL, '2020-04-01 20:03:05', '2020-04-01 20:03:05');
INSERT INTO `wp_tt_attr_input_select` VALUES (25, 'ItemProps', 'ItemProps', 'Select ItemProps', '', '', 'multiple', '', '5', '', '', '64,65', NULL, NULL, '2020-04-01 23:25:10', '2020-04-01 23:25:10');
INSERT INTO `wp_tt_attr_input_select` VALUES (26, 'ItemRefs', 'ItemRefs', 'Select ItemRefs', '', '', 'multiple', '', '5', '', '', '66,67', NULL, NULL, '2020-04-01 23:30:56', '2020-04-01 23:30:56');
INSERT INTO `wp_tt_attr_input_select` VALUES (27, 'OnEvents', 'OnEvents', 'Select OnEvents', '', '', 'multiple', '', '5', '', '', '68,69', NULL, NULL, '2020-04-02 03:13:52', '2020-04-02 03:13:52');
INSERT INTO `wp_tt_attr_input_select` VALUES (28, 'Styles', 'Styles', 'Select Styles', '', '', 'multiple', '', '5', '', '', '70,71', NULL, NULL, '2020-04-02 13:06:52', '2020-04-02 13:06:52');
INSERT INTO `wp_tt_attr_input_select` VALUES (29, 'Js Functions', 'Js Functions', 'Select JavaScript Functions', '', '', 'multiple', '', '5', '', '', '72,73', NULL, NULL, '2020-04-02 13:22:16', '2020-04-02 13:22:16');
INSERT INTO `wp_tt_attr_input_select` VALUES (30, 'Select Input Source Type', 'Select Input Source Type', 'Select Source Type', '', '', '', 'required', '', '', '', '74-76', NULL, NULL, '2020-04-11 05:20:35', '2020-04-11 05:20:35');
INSERT INTO `wp_tt_attr_input_select` VALUES (31, 'Attribute Changer Conditions', 'Select Attribute Changer Conditions', 'Select Attribute Changer Conditions', '', '', 'multiple', '', '5', '', '', '77-78', NULL, NULL, '2020-04-17 18:28:11', '2020-04-17 18:28:11');
INSERT INTO `wp_tt_attr_input_select` VALUES (32, 'Attribute Changers', 'Select Attribute Changers', 'Select Attribute Changers', '', '', 'multiple', '', '5', '', '', '79-80', NULL, NULL, '2020-04-18 06:27:52', '2020-04-18 06:27:52');
INSERT INTO `wp_tt_attr_input_select` VALUES (33, 'Inputs', 'Select Inputs', 'Select Inputs', '', '', 'multiple', '', '5', '', '', '81-82', NULL, NULL, '2020-04-18 07:29:56', '2020-04-18 07:29:56');
INSERT INTO `wp_tt_attr_input_select` VALUES (34, 'WP Users', 'WP Users', 'Select Users', '', '', 'multiple', '', '5', '', '', '83', NULL, NULL, '2020-04-18 09:10:33', '2020-04-18 09:10:33');
INSERT INTO `wp_tt_attr_input_select` VALUES (35, 'Processes', 'Processes', 'Select  Process', '', '', '', '', '', '', '', '84', NULL, NULL, '2020-05-10 21:49:47', '2020-05-10 21:49:47');
INSERT INTO `wp_tt_attr_input_select` VALUES (36, 'Insert Reference', 'Insert Reference', 'Select Insert Reference', '', '', '', '', '', '', '', '85', NULL, NULL, '2020-05-10 21:53:01', '2020-05-10 21:53:01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_optgroup
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_optgroup` VALUES (1, '', '', '1', '3,4', NULL, NULL, NULL, '2020-05-26 05:56:46', '2020-05-26 05:56:46');

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
  `selected` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attr_html_global_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_select_options
-- ----------------------------
INSERT INTO `wp_tt_attr_input_select_options` VALUES (1, 'Input Types', 'Input-Types', 'query', 'SELECT * FROM wp_tt_input_types', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-16 05:29:48', '2020-03-16 05:29:48');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (2, 'Forms', 'Forms', 'query', 'SELECT f.epithet AS epithet,g.the_id AS the_id  FROM wp_tt_form AS f JOIN wp_tt_attr_html_global As g WHERE f.attr_html_global_id=g.id', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->the_id;', '', '', NULL, NULL, NULL, '2020-03-17 06:15:39', '2020-03-17 06:15:39');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (3, 'Add New Tag', 'add-new-tag', 'value', NULL, NULL, 'Add New Tag', 'Add New Tag', 'add-new-tag', 'add-new-tag', '', NULL, NULL, NULL, '2020-03-19 08:03:43', '2020-03-19 08:03:43');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (4, 'Tags', 'Tags', 'query', 'SELECT * FROM wp_tt_tags', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-19 07:56:23', '2020-03-19 07:56:23');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (5, 'Add New Global Attribute', 'add-new-global-attribute', 'value', NULL, NULL, 'Add New Global Attribute', 'Add New Global Attribute', 'add-new-global-attribute', 'add-new-global-attribute', '', NULL, NULL, NULL, '2020-03-19 08:24:20', '2020-03-19 08:24:20');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (6, 'Global Attributes', '', 'query', 'SELECT * FROM wp_tt_attr_html_global', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-19 08:24:02', '2020-03-19 08:24:02');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (7, 'Add New Custom Attributes', '', 'value', NULL, NULL, 'Add New Custom Attributes', 'Add New Custom Attributes', 'add-new-custom-attributes', 'add-new-custom-attributes', '', NULL, NULL, NULL, '2020-03-19 08:52:05', '2020-03-19 08:52:05');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (8, 'Custom Attributes', '', 'query', 'SELECT * FROM wp_tt_attr_custom', NULL, 'return $a->epithet.\' (\'.$a->attr_name.\'=\"\'.$a->attr_value.\'\")\';', 'return $a->epithet.\' (\'.$a->attr_name.\'=\"\'.$a->attr_value.\'\")\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-19 08:52:09', '2020-03-19 08:52:09');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (9, 'Add New User Access', '', 'value', NULL, NULL, 'Add New User Access', 'Add New User Access', 'add-new-user-access', 'add-new-user-access', '', NULL, NULL, NULL, '2020-03-19 09:02:02', '2020-03-19 09:02:02');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (10, 'User Access', '', 'query', 'SELECT * FROM wp_tt_user_access', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-19 09:02:05', '2020-03-19 09:02:05');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (11, 'Add New Input Meta', '', 'value', NULL, NULL, 'Add New Input Meta', 'Add New Input Meta', 'add-new-input-meta', 'add-new-input-meta', '', NULL, NULL, NULL, '2020-03-19 09:09:27', '2020-03-19 09:09:27');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (12, 'Input Meta', '', 'query', 'SELECT * FROM wp_tt_input_meta', NULL, 'return $a->epithet.\' (\'.$a->key.\'=\'.$a->value.\')\';', 'return $a->epithet.\' (\'.$a->key.\'=\'.$a->value.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-19 09:09:29', '2020-03-19 09:09:29');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (13, 'Add New Specific Attributes', '', 'value', NULL, NULL, 'Add New Select Attributes', 'Add New Select Attributes', 'add-new-select_attributes', 'add-new-select_attributes', '', NULL, NULL, NULL, '2020-03-21 03:37:39', '2020-03-21 03:37:39');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (14, 'Add New List', '', 'value', NULL, NULL, 'Add New List', 'Add New List', 'add-new-list', 'add-new-list', '', NULL, NULL, NULL, '2020-03-30 17:56:43', '2020-03-30 17:56:43');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (15, 'Lists', '', 'query', 'SELECT * FROM wp_tt_attr_input_attr_list', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-30 17:56:45', '2020-03-30 17:56:45');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (16, 'Add New Accept', '', 'value', NULL, NULL, 'Add New Accept', 'Add New Accept', 'add-new-accept', 'add-new-accept', '', NULL, NULL, NULL, '2020-03-30 21:02:10', '2020-03-30 21:02:10');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (17, 'Accepts', '', 'query', 'SELECT * FROM wp_tt_attr_input_file_accept', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-30 21:02:38', '2020-03-30 21:02:38');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (18, 'Capture', '', 'value', NULL, NULL, 'Capture', 'Capture', 'capture', 'capture', '', NULL, NULL, NULL, '2020-03-30 21:02:46', '2020-03-30 21:02:46');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (19, 'User Mode', '', 'value', NULL, NULL, 'User Mode', 'User Mode', 'user', '', '', NULL, NULL, NULL, '2020-03-30 21:03:16', '2020-03-30 21:03:16');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (20, 'Enviroment Mode', '', 'value', NULL, NULL, 'Enviroment Mode', 'Enviroment Mode', 'enviroment', '', '', NULL, NULL, NULL, '2020-03-30 21:03:24', '2020-03-30 21:03:24');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (21, 'Multipart/Form-Data', '', 'value', NULL, NULL, 'Multipart/Form-Data', 'Multipart/Form-Data', 'multipart/form-data', 'multipart/form-data', '', NULL, NULL, NULL, '2020-03-30 22:48:01', '2020-03-30 22:48:01');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (22, 'Application/x-www-Form-URLEncoded', '', 'value', NULL, NULL, 'Application/x-www-Form-URLEncoded', 'Application/x-www-Form-URLEncoded', 'application/x-www-form-urlencoded', '', '', NULL, NULL, NULL, '2020-03-30 22:48:16', '2020-03-30 22:48:16');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (23, 'Text/Plain', '', 'value', NULL, NULL, 'Text/Plain', 'Text/Plain', 'text/plain', '', '', NULL, NULL, NULL, '2020-03-30 22:48:36', '2020-03-30 22:48:36');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (24, 'Get', '', 'value', NULL, NULL, 'Get', 'Get', 'get', '', '', NULL, NULL, NULL, '2020-03-30 22:54:20', '2020-03-30 22:54:20');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (25, 'Post', '', 'value', NULL, NULL, 'Post', 'Post', 'post', 'post', '', NULL, NULL, NULL, '2020-03-30 22:54:22', '2020-03-30 22:54:22');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (26, 'Dialog', '', 'value', NULL, NULL, 'Dialog', 'Dialog', 'dialog', '', '', NULL, NULL, NULL, '2020-03-30 22:54:23', '2020-03-30 22:54:23');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (27, '_Blank', '', 'value', NULL, NULL, '_Blank', '_Blank', '_blank', '', '', NULL, NULL, NULL, '2020-03-31 01:20:20', '2020-03-31 01:20:20');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (28, '_Self', '', 'value', NULL, NULL, '_Self', '_Self', '_self', '_self', '', NULL, NULL, NULL, '2020-03-31 01:20:36', '2020-03-31 01:20:36');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (29, '_Parent', '', 'value', NULL, NULL, '_Parent', '_Parent', '_parent', '', '', NULL, NULL, NULL, '2020-03-31 01:20:49', '2020-03-31 01:20:49');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (30, '_Top', '', 'value', NULL, NULL, '_Top', '_Top', '_top', '', '', NULL, NULL, NULL, '2020-03-31 01:20:55', '2020-03-31 01:20:55');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (31, 'Options', '', 'value', NULL, NULL, 'Options', 'Options', 'option', '', '', NULL, NULL, NULL, '2020-03-31 14:22:50', '2020-03-31 14:22:50');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (32, 'Option Groups', '', 'value', NULL, NULL, 'Option Groups', 'Option Groups', 'optgroup', '', '', NULL, NULL, NULL, '2020-03-31 14:23:06', '2020-03-31 14:23:06');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (33, 'Add New OptGroup', '', 'value', NULL, NULL, 'Add New OptGroup', 'Add New OptGroup', 'add-new-optgroup', 'add-new-optgroup', '', NULL, NULL, NULL, '2020-03-31 14:59:07', '2020-03-31 14:59:07');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (34, 'OptGroups', '', 'query', 'SELECT * FROM wp_tt_attr_input_select_optgroup', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-31 14:59:10', '2020-03-31 14:59:10');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (35, 'Add New Options', '', 'value', NULL, NULL, 'Add New Options', 'Add New Options', 'add-new-option', 'add-new-option', '', NULL, NULL, NULL, '2020-03-31 14:59:17', '2020-03-31 14:59:17');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (36, 'Options', '', 'query', 'SELECT * FROM wp_tt_attr_input_select_options', NULL, 'return $a->epithet.\' (\'.$a->source_type.\')\';', 'return $a->epithet.\' (\'.$a->source_type.\')\';;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-03-31 14:59:20', '2020-03-31 14:59:20');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (37, 'Hard', '', 'value', NULL, NULL, 'Hard', 'Hard', 'hard', '', '', NULL, NULL, NULL, '2020-04-01 00:45:11', '2020-04-01 00:45:11');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (38, 'Soft', '', 'value', NULL, NULL, 'Soft', 'Soft', 'soft', '', '', NULL, NULL, NULL, '2020-04-01 00:45:16', '2020-04-01 00:45:16');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (39, 'Off', '', 'value', NULL, NULL, 'Off', 'Off', 'off', 'off', '', NULL, NULL, NULL, '2020-04-01 00:45:18', '2020-04-01 00:45:18');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (40, 'None', '', 'value', NULL, NULL, 'None', 'None', 'none', 'none', '', NULL, NULL, NULL, '2020-04-01 19:12:23', '2020-04-01 19:12:23');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (41, 'Off', '', 'value', NULL, NULL, 'Off', 'Off', 'off', '', '', NULL, NULL, NULL, '2020-04-01 19:12:28', '2020-04-01 19:12:28');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (42, 'On', '', 'value', NULL, NULL, 'On', 'On', 'on', '', '', NULL, NULL, NULL, '2020-04-01 19:12:30', '2020-04-01 19:12:30');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (43, 'Sentences', '', 'value', NULL, NULL, 'Sentences', 'Sentences', 'sentences', '', '', NULL, NULL, NULL, '2020-04-01 19:12:31', '2020-04-01 19:12:31');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (44, 'Words', '', 'value', NULL, NULL, 'Words', 'Words', 'words', '', '', NULL, NULL, NULL, '2020-04-01 19:12:33', '2020-04-01 19:12:33');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (45, 'Characters', '', 'value', NULL, NULL, 'Characters', 'Characters', 'characters', '', '', NULL, NULL, NULL, '2020-04-01 19:12:35', '2020-04-01 19:12:35');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (46, 'Add New Class', '', 'value', NULL, NULL, 'Add New Class', 'Add New Class', 'add-new-class', 'add-new-class', '', NULL, NULL, NULL, '2020-04-01 19:16:33', '2020-04-01 19:16:33');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (47, 'Classes', '', 'query', 'SELECT * FROM wp_tt_attr_html_global_class', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-01 19:17:24', '2020-04-01 19:17:24');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (48, 'Add New Data', '', 'value', NULL, NULL, 'Add New Data', 'Add New Data', 'add-new-data', 'add-new-data', '', NULL, NULL, NULL, '2020-04-01 19:16:33', '2020-04-01 19:16:33');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (49, 'Data', '', 'query', 'SELECT * FROM wp_tt_attr_html_global_data', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-01 19:17:24', '2020-04-01 19:17:24');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (50, 'Auto', '', 'value', NULL, NULL, 'Auto', 'Auto', 'auto', '', '', NULL, NULL, NULL, '2020-04-01 19:49:07', '2020-04-01 19:49:07');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (51, 'LTR', '', 'value', NULL, NULL, 'LTR', 'LTR', 'ltr', '', '', NULL, NULL, NULL, '2020-04-01 19:49:11', '2020-04-01 19:49:11');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (52, 'RTL', '', 'value', NULL, NULL, 'RTL', 'RTL', 'rtl', '', '', NULL, NULL, NULL, '2020-04-01 19:49:21', '2020-04-01 19:49:21');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (53, 'Copy', '', 'value', NULL, NULL, 'Copy', 'Copy', 'copy', '', '', NULL, NULL, NULL, '2020-04-01 19:57:40', '2020-04-01 19:57:40');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (54, 'Move', '', 'value', NULL, NULL, 'Move', 'Move', 'move', '', '', NULL, NULL, NULL, '2020-04-01 19:57:43', '2020-04-01 19:57:43');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (55, 'Link', '', 'value', NULL, NULL, 'Link', 'Link', 'link', '', '', NULL, NULL, NULL, '2020-04-01 19:57:48', '2020-04-01 19:57:48');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (56, 'None', '', 'value', NULL, NULL, 'None', 'None', 'none', '', '', NULL, NULL, NULL, '2020-04-01 20:02:25', '2020-04-01 20:02:25');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (57, 'Text', '', 'value', NULL, NULL, 'Text', 'Text', 'text', '', '', NULL, NULL, NULL, '2020-04-01 20:04:27', '2020-04-01 20:04:27');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (58, 'Decimal', '', 'value', NULL, NULL, 'Decimal', 'Decimal', 'decimal', '', '', NULL, NULL, NULL, '2020-04-01 20:04:40', '2020-04-01 20:04:40');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (59, 'Numeric', '', 'value', NULL, NULL, 'Numeric', 'Numeric', 'numeric', '', '', NULL, NULL, NULL, '2020-04-01 20:04:50', '2020-04-01 20:04:50');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (60, 'Tel', '', 'value', NULL, NULL, 'Tel', 'Tel', 'tel', '', '', NULL, NULL, NULL, '2020-04-01 20:04:57', '2020-04-01 20:04:57');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (61, 'Search', '', 'value', NULL, NULL, 'Search', 'Search', 'search', '', '', NULL, NULL, NULL, '2020-04-01 20:05:12', '2020-04-01 20:05:12');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (62, 'Email', '', 'value', NULL, NULL, 'Email', 'Email', 'email', '', '', NULL, NULL, NULL, '2020-04-01 20:05:22', '2020-04-01 20:05:22');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (63, 'URL', '', 'value', NULL, NULL, 'URL', 'URL', 'url', '', '', NULL, NULL, NULL, '2020-04-01 20:05:29', '2020-04-01 20:05:29');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (64, 'Add New ItemProp', '', 'value', NULL, NULL, 'Add New ItemProp', 'Add New ItemProp', 'add-new-itemprop', 'add-new-itemprop', '', NULL, NULL, NULL, '2020-04-01 23:26:06', '2020-04-01 23:26:06');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (65, 'ItemProp', '', 'query', 'SELECT * FROM wp_tt_attr_html_global_itemprop', NULL, 'return $a->epithet.\' (\'.$a->itemprop.\')\';', 'return $a->epithet.\' (\'.$a->itemprop.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-01 23:26:08', '2020-04-01 23:26:08');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (66, 'Add New ItemRef', '', 'value', NULL, NULL, 'Add New ItemRef', 'Add New ItemRef', 'add-new-itemref', 'add-new-itemref', '', NULL, NULL, NULL, '2020-04-01 23:31:41', '2020-04-01 23:31:41');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (67, 'ItemRef', '', 'query', 'SELECT * FROM wp_tt_attr_html_global_itemref', NULL, 'return $a->epithet.\' (\'.$a->itemref.\')\';', 'return $a->epithet.\' (\'.$a->itemref.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-01 23:31:44', '2020-04-01 23:31:44');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (68, 'Add New OnEvent', '', 'value', NULL, NULL, 'Add New OnEvent', 'Add New OnEvent', 'add-new-onevent', 'add-new-onevent', '', NULL, NULL, NULL, '2020-04-02 03:15:38', '2020-04-02 03:15:38');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (69, 'OnEvent', '', 'query', 'SELECT * FROM wp_tt_attr_html_event', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-02 03:15:41', '2020-04-02 03:15:41');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (70, 'Add New Style', '', 'value', NULL, NULL, 'Add New Style', 'Add New Style', 'add-new-style', 'add-new-style', '', NULL, NULL, NULL, '2020-04-02 13:07:46', '2020-04-02 13:07:46');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (71, 'Styles', '', 'query', 'SELECT * FROM wp_tt_attr_html_event', NULL, 'return $a->epithet.\' (\'.$a->event.\')\';', 'return $a->epithet.\' (\'.$a->event.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-02 13:07:48', '2020-04-02 13:07:48');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (72, 'Add JavaScript Functions', '', 'value', NULL, NULL, 'Add JavaScript Functions', 'Add JavaScript Functions', 'add-javascript-functions', 'add-javascript-functions', '', NULL, NULL, NULL, '2020-04-02 16:21:32', '2020-04-02 16:21:32');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (73, 'JavaScript Functions', '', 'query', 'SELECT * FROM wp_tt_attr_html_event_jsfunction', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-02 16:21:48', '2020-04-02 16:21:48');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (74, 'Simple Value & Text', '', 'value', NULL, NULL, 'Simple Value & Text', 'Simple Value & Text', 'value', '', '', NULL, NULL, NULL, '2020-04-11 05:21:50', '2020-04-11 05:21:50');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (75, 'Query', '', 'value', NULL, NULL, 'Query', 'Query', 'query', '', '', NULL, NULL, NULL, '2020-04-11 05:21:52', '2020-04-11 05:21:52');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (76, 'Json', '', 'value', NULL, NULL, 'Json', 'Json', 'json', '', '', NULL, NULL, NULL, '2020-04-11 05:21:53', '2020-04-11 05:21:53');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (77, 'Add Attribute Changer Conditions', '', 'value', NULL, NULL, 'Add Attribute Changer Conditions', 'Add Attribute Changer Conditions', 'add-new-attr_changer_condition_ids-1', '', '', NULL, NULL, NULL, '2020-04-17 18:30:51', '2020-04-17 18:30:51');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (78, 'Attribute Changer Conditions', '', 'query', 'SELECT * FROM wp_tt_attr_changer_condition', NULL, 'return $a->epithet.\' (\'.$a->condition.\')\';', 'return $a->epithet.\' (\'.$a->condition.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-17 18:31:12', '2020-04-17 18:31:12');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (79, 'Add Attribute Changer', '', 'value', NULL, NULL, 'Add Attribute Changer Conditions', 'Add Attribute Changer Conditions', 'add-new-attr_changer_condition_ids-1', 'url', '', NULL, NULL, NULL, '2020-04-18 06:28:48', '2020-04-18 06:28:48');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (80, 'Attribute Changers', '', 'query', 'SELECT * FROM wp_tt_attr_changer', NULL, 'return $a->epithet.\' (\'.$a->attr.\'=\'.$a->value.\') \'.$a->remove_attr;', 'return $a->epithet.\' (\'.$a->attr.\'=\'.$a->value.\') \'.$a->remove_attr;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-18 06:28:52', '2020-04-18 06:28:52');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (81, 'Add Input', '', 'value', NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, '2020-04-18 07:31:01', '2020-04-18 07:31:01');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (82, 'Inputs', '', 'query', 'SELECT * FROM wp_tt_input', NULL, 'return $a->epithet.\' (\'.$a->name.\')\';', 'return $a->epithet.\' (\'.$a->name.\')\';', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-04-18 07:31:04', '2020-04-18 07:31:04');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (83, 'WP Users', '', 'query', 'SELECT * FROM wp_users', NULL, 'return $a->display_name.\' (\'.$a->user_nicename.\')\';', 'return $a->display_name.\' (\'.$a->user_nicename.\')\';', 'return $a->ID;', '', '', NULL, NULL, NULL, '2020-04-18 09:17:05', '2020-04-18 09:17:05');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (84, 'Processes', '', 'query', 'SELECT * FROM wp_tt_process', NULL, 'return $a->epithet;', 'return $a->epithet;', 'return $a->id;', '', '', NULL, NULL, NULL, '2020-05-10 21:50:55', '2020-05-10 21:50:55');
INSERT INTO `wp_tt_attr_input_select_options` VALUES (85, 'Insert Reference', '', 'query', 'SELECT * FROM wp_tt_data_action', NULL, 'return $a->epithet.\' (\'.$a->insert_ref.\')\';', 'return $a->epithet.\' (\'.$a->insert_ref.\')\';', 'if(empty($a->insert_ref)){\r\n	$a->insert_ref=$a->id;\r\n}\r\nreturn $a->insert_ref;', '', '', NULL, NULL, NULL, '2020-05-10 21:54:27', '2020-05-10 21:54:27');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_submit
-- ----------------------------
INSERT INTO `wp_tt_attr_input_submit` VALUES (1, 'Submit', 'Submit', '', '', '', '', '', '', 'Submit', NULL, NULL, '2020-03-16 06:53:11', '2020-03-16 06:53:11');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_tel_url
-- ----------------------------
INSERT INTO `wp_tt_attr_input_tel_url` VALUES (1, 'Absolute URL', 'Absolute URL', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '2020-04-02 02:17:15', '2020-04-02 02:17:15');

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
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_text_search
-- ----------------------------
INSERT INTO `wp_tt_attr_input_text_search` VALUES (1, 'Required', 'Required', '', '', '', '', '', '', '', '', '', '', 'required', '', NULL, NULL, NULL, '2020-03-16 07:25:01', '2020-03-16 07:25:01');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (2, 'Empty', 'Empty', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '2020-03-16 07:28:23', '2020-03-16 07:28:23');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (3, 'AccessKey', 'AccessKey', '', '', '', '', '', '1', '', '', '', '', '', '', NULL, NULL, NULL, '2020-03-16 07:31:15', '2020-03-16 07:31:15');
INSERT INTO `wp_tt_attr_input_text_search` VALUES (4, 'ContextMenu (Obsolete)', 'ContextMenu', '', '', '', '', '', '', '', '', 'ContextMenu Is Obsoleted!', '', '', '', NULL, NULL, NULL, '2020-04-01 19:27:30', '2020-04-01 19:27:30');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_attr_input_textarea
-- ----------------------------
INSERT INTO `wp_tt_attr_input_textarea` VALUES (1, 'Description', 'Description', NULL, '', '', '', '', 'Description', '', '', '', '', NULL, NULL, '2020-03-19 07:36:51', '2020-03-19 07:36:51');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (2, 'Input Specific Attributes Description', 'Input Specific Attributes Description', NULL, '', '', '', '', 'Input Specific Attributes Description', '', '', '', '', NULL, NULL, '2020-03-21 02:53:31', '2020-03-21 02:53:31');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (3, 'Alt Attribute For Image Input', 'Alt Attribute For Image Input', NULL, '', '', '', '', 'Alt Attribute For Image Input', '', '', '', '', NULL, NULL, '2020-03-30 22:43:04', '2020-03-30 22:43:04');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (4, 'Text Of TextArea', 'Text Of TextArea', NULL, '', '', '', '', 'Text Of TextArea', '', '', '', '', NULL, NULL, '2020-04-01 00:41:06', '2020-04-01 00:41:06');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (5, 'Custom Attribute Value', 'Custom Attribute Value', NULL, '', '', '', '', 'Custom Attribute Value', '', '', '', '', NULL, NULL, '2020-04-01 10:28:25', '2020-04-01 10:28:25');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (6, 'Custom Attribute Description', 'Custom Attribute Description', NULL, '', '', '', '', 'Custom Attribute Description', '', '', '', '', NULL, NULL, '2020-04-01 10:29:06', '2020-04-01 10:29:06');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (7, 'Title Of Element', 'Title Of Element', NULL, '', '', '', '', 'Title Of Element', '', '', '', '', NULL, NULL, '2020-04-02 13:21:31', '2020-04-02 13:21:31');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (8, 'JavaScript Code', 'JavaScript Code', NULL, '', '', '', '', 'JavaScript Code', '', '', '', '', NULL, NULL, '2020-04-02 17:29:06', '2020-04-02 17:29:06');
INSERT INTO `wp_tt_attr_input_textarea` VALUES (9, 'PHP Code', 'PHP Code', NULL, '', '', '', '', 'PHP Code', '', '', '', '', NULL, NULL, '2020-04-19 13:04:00', '2020-04-19 13:04:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_block
-- ----------------------------
INSERT INTO `wp_tt_block` VALUES (1, 'Input', 'Input', NULL, NULL, NULL, '11-26', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:21', '2020-05-23 01:54:21');
INSERT INTO `wp_tt_block` VALUES (2, 'Input CheckBox Radio Specific Attributes', 'Input CheckBox Radio Specific Attributes', NULL, NULL, NULL, '31-37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-16 21:12:47', '2020-05-16 21:12:47');
INSERT INTO `wp_tt_block` VALUES (3, 'Input Color Specific Attributes ', 'Input Color Specific Attributes ', NULL, NULL, NULL, '31-32,39,33,40,41,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (4, 'Input Date Time Specific Attributes ', 'Input Date Time Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,40,41,42-44,35,45,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (5, 'Input Email Specific Attributes ', 'Input Email Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,40,41,46,47,48,49,50,44,35,51,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (6, 'Input File Specific Attributes ', 'Input File Specific Attributes ', NULL, NULL, NULL, '31,32,52,33,53,48,35,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (7, 'Input Image Specific Attributes ', 'Input Image Specific Attributes ', NULL, NULL, NULL, '31,32,54,33,55,56,57,58,59,60,61,36,62,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (8, 'Input Number Specific Attributes ', 'Input Number Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,40,41,42,43,50,44,35,45,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:36', '2020-05-23 01:54:36');
INSERT INTO `wp_tt_block` VALUES (9, 'Input Password Specific Attributes ', 'Input Password Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,46,47,49,50,44,35,51,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (10, 'Input Range Specific Attributes ', 'Input Range Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,40,41,42,43,48,45', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (11, 'Input Select Specific Attributes ', 'Input Select Specific Attributes ', NULL, NULL, NULL, '31,32,63,39,33,48,35,51,64,65,66,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (12, 'Input Submit Specific Attributes ', 'Input Submit Specific Attributes ', NULL, NULL, NULL, '31,32,33,55,56,57,58,59,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (13, 'Input Tel URL Specific Attributes ', 'Input Tel URL Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,40,41,46,47,49,50,44,35,51,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (14, 'Input Text Search Specific Attributes ', 'Input Text Search Specific Attributes ', NULL, NULL, NULL, '31,32,39,33,67,40,41,46,47,49,50,44,35,51,36,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (15, 'Input TextArea Specific Attributes ', 'Input TextArea Specific Attributes ', NULL, NULL, NULL, '31,32,68,39,69,70,46,47,50,44,35,71,37', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (16, 'Custom Attributes', 'Custom Attributes', NULL, NULL, NULL, '81-85', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (17, 'Global Attributes', 'Global Attributes', NULL, NULL, NULL, '91-119', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (18, 'Global Attributes (Event Js)', 'Global Attributes (Event Js)', NULL, NULL, NULL, '131-135', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (19, 'Global Attributes (Js Functions)', 'Global Attributes (Js Functions)', NULL, NULL, NULL, '141-144', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (20, 'Global Attributes (Classes)', 'Global Attributes (Classes)', NULL, NULL, NULL, '151-154', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (21, 'Global Attributes (Data)', 'Global Attributes (Data)', NULL, NULL, NULL, '161-165', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (22, 'Global Attributes (ItemProps)', 'Global Attributes (ItemProps)', NULL, NULL, NULL, '171-174', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (23, 'Global Attributes (ItemRefs)', 'Global Attributes (ItemRefs)', NULL, NULL, NULL, '181-184', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (24, 'Global Attributes (Styles)', 'Global Attributes (Styles)', NULL, NULL, NULL, '191-196', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (25, 'Input Specific Attributes (Lists)', 'Input Specific Attributes (Lists)', NULL, NULL, NULL, '201-210', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (26, 'Input Specific Attributes (Options)', 'Input Specific Attributes (Options)', NULL, NULL, NULL, '221-231', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (27, 'Input Specific Attributes (Option Groups)', 'Input Specific Attributes (Option Groups)', NULL, NULL, NULL, '241-246', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (28, 'Input Specific Attributes (File Accept)', 'Input Specific Attributes (File Accept)', NULL, NULL, NULL, '251-254', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (29, 'Input Attribute Changer Condition', 'Input Attribute Changer Condition', NULL, NULL, NULL, '261-265', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (30, 'Input Attribute Changer', 'Input Attribute Changer', NULL, NULL, NULL, '271-277', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (31, 'Input Meta', 'Input Meta', NULL, NULL, NULL, '281-285', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (32, 'Tag', 'Tag', NULL, NULL, NULL, '291-296', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (33, 'User Access', 'User Access', NULL, NULL, NULL, '301-309', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (34, 'Eval', 'Eval', NULL, NULL, NULL, '311-314', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (35, 'Variable', 'Variable', NULL, NULL, NULL, '321-325', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');
INSERT INTO `wp_tt_block` VALUES (36, 'Option', 'Option', NULL, NULL, NULL, '331-335', NULL, NULL, NULL, '1', '3', NULL, NULL, '2020-05-23 01:54:37', '2020-05-23 01:54:37');

-- ----------------------------
-- Table structure for wp_tt_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_condition`;
CREATE TABLE `wp_tt_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `function` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_condition
-- ----------------------------
INSERT INTO `wp_tt_condition` VALUES (1, '', '', '			global $wpdb;$input_type = $vals[\'input_type-1\'];\r\n			$q = \"SELECT * FROM wp_tt_input_types WHERE id = \".$input_type.\" LIMIT 1;\";\r\n			\r\n			$result = $wpdb->get_results($q);\r\n			$result = $result[0];', '$result->html_type==\'checkbox\' or $result->html_type==\'radio\'', '2', '', NULL, '2020-03-19 09:51:17', '2020-03-19 09:51:17');
INSERT INTO `wp_tt_condition` VALUES (2, '', '', NULL, '$result->html_type==\'color\'', '3', '', NULL, '2020-03-19 09:53:04', '2020-03-19 09:53:04');
INSERT INTO `wp_tt_condition` VALUES (3, '', '', NULL, '$result->html_type==\'date\' or $result->html_type==\'datetime-local\' or $result->html_type==\'month\' or $result->html_type==\'time\' or $result->html_type==\'week\' or $result->html_type==\'datetime\'', '4', '', NULL, '2020-03-21 01:55:22', '2020-03-21 01:55:22');
INSERT INTO `wp_tt_condition` VALUES (4, '', '', NULL, '$result->html_type==\'email\'', '5', '', NULL, '2020-03-21 01:57:43', '2020-03-21 01:57:43');
INSERT INTO `wp_tt_condition` VALUES (5, '', '', NULL, '$result->html_type==\'file\'', '6', '', NULL, '2020-03-21 01:58:11', '2020-03-21 01:58:11');
INSERT INTO `wp_tt_condition` VALUES (6, '', '', NULL, '$result->html_type==\'image\'', '7', '', NULL, '2020-03-21 01:58:37', '2020-03-21 01:58:37');
INSERT INTO `wp_tt_condition` VALUES (7, '', '', NULL, '$result->html_type==\'number\'', '8', '', NULL, '2020-03-21 01:58:54', '2020-03-21 01:58:54');
INSERT INTO `wp_tt_condition` VALUES (8, '', '', NULL, '$result->html_type==\'password\'', '9', '', NULL, '2020-03-21 01:59:07', '2020-03-21 01:59:07');
INSERT INTO `wp_tt_condition` VALUES (9, '', '', NULL, '$result->html_type==\'range\'', '10', '', NULL, '2020-03-21 01:59:20', '2020-03-21 01:59:20');
INSERT INTO `wp_tt_condition` VALUES (10, '', '', NULL, '$result->html_type==\'select\'', '11', '', NULL, '2020-03-21 01:59:22', '2020-03-21 01:59:22');
INSERT INTO `wp_tt_condition` VALUES (11, '', '', NULL, '$result->html_type==\'submit\'', '12', '', NULL, '2020-03-21 01:59:48', '2020-03-21 01:59:48');
INSERT INTO `wp_tt_condition` VALUES (12, '', '', NULL, '$result->html_type==\'tel\' or $result->html_type==\'url\'', '13', '', NULL, '2020-03-21 01:59:53', '2020-03-21 01:59:53');
INSERT INTO `wp_tt_condition` VALUES (13, '', '', NULL, '$result->html_type==\'text\' or $result->html_type==\'search\'', '14', '', NULL, '2020-03-21 02:00:31', '2020-03-21 02:00:31');
INSERT INTO `wp_tt_condition` VALUES (14, '', '', NULL, '$result->html_type==\'textarea\'', '15', '', NULL, '2020-03-21 02:01:05', '2020-03-21 02:01:05');

-- ----------------------------
-- Table structure for wp_tt_data_actio_sms
-- ----------------------------
DROP TABLE IF EXISTS `wp_tt_data_actio_sms`;
CREATE TABLE `wp_tt_data_actio_sms`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_numbers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `colval_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `func_before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `func_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_action_add_result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `data_action_edit_result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action
-- ----------------------------
INSERT INTO `wp_tt_data_action` VALUES (1, 'Tag', 'Tag', 'database', '1', '1-9', NULL, NULL, NULL, '', NULL, NULL, '2020-04-22 04:09:48', '2020-04-22 04:09:48');
INSERT INTO `wp_tt_data_action` VALUES (2, 'test', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 22:03:21', '2020-05-10 22:03:21');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_colval
-- ----------------------------
INSERT INTO `wp_tt_data_action_colval` VALUES (1, '', '', 'simple-variable', 'epithet', 'epithet-19', 'epithet-19', NULL, NULL, '', NULL, '2020-04-22 04:11:58', '2020-04-22 04:11:58');
INSERT INTO `wp_tt_data_action_colval` VALUES (2, '', '', 'simple-variable', 'slug', 'slug-19', 'slug-19', NULL, NULL, '', NULL, '2020-04-22 04:12:01', '2020-04-22 04:12:01');
INSERT INTO `wp_tt_data_action_colval` VALUES (3, '', '', 'simple-variable', 'tag_before', 'tag_before-19', 'tag_before-19', NULL, NULL, '', NULL, '2020-04-22 04:12:02', '2020-04-22 04:12:02');
INSERT INTO `wp_tt_data_action_colval` VALUES (4, '', '', 'simple-variable', 'tag_after', 'tag_after-19', 'tag_after-19', NULL, NULL, '', NULL, '2020-04-22 04:12:03', '2020-04-22 04:12:03');
INSERT INTO `wp_tt_data_action_colval` VALUES (5, '', '', 'ecode-group-before', 'parent_tag_id', 'parent_tag_id-19', 'return implode(\',\',{array:parent_tag_id});', NULL, NULL, '', NULL, '2020-04-22 04:12:03', '2020-04-22 04:12:03');
INSERT INTO `wp_tt_data_action_colval` VALUES (6, '', '', 'simple-variable', 'description', 'description-19', 'description-19', NULL, NULL, '', NULL, '2020-04-22 04:12:06', '2020-04-22 04:12:06');
INSERT INTO `wp_tt_data_action_colval` VALUES (7, '', '', 'variable', 'owner', '', '$this->user_id;', NULL, NULL, '', NULL, '2020-04-22 04:12:08', '2020-04-22 04:12:08');
INSERT INTO `wp_tt_data_action_colval` VALUES (8, '', '', 'mysql-code', 'created', '', 'NOW()', NULL, NULL, '', NULL, '2020-04-22 04:12:08', '2020-04-22 04:12:08');
INSERT INTO `wp_tt_data_action_colval` VALUES (9, '', '', 'mysql-code', 'modified', '', 'NOW()', NULL, NULL, '', NULL, '2020-04-22 04:12:11', '2020-04-22 04:12:11');
INSERT INTO `wp_tt_data_action_colval` VALUES (10, '', '', 'ecode-group-before', '', '', '', NULL, NULL, '', NULL, '2020-05-26 06:16:44', '2020-05-26 06:16:44');

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
  `added_result_html` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edited_result_html` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prevented_result_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `database_error_result_html` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted_result_html` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_data_action_database
-- ----------------------------
INSERT INTO `wp_tt_data_action_database` VALUES (1, NULL, NULL, 'tt_tags', '(slug={slug} AND epithet={epithet}) OR (tag_after={tag_after})', 'tag_id', '{insert_id}:{data_value:tag_before}:{data_column:tag_before}<br>\r\nTag entry has been added. Access it by {insert_id} id.<br><br>', NULL, '{insert_id}:{data_value:tag_before}:{data_column:tag_before}<br>\r\nPPPPPPPPPPP:::::::::Tag entry has been added. Access it by {insert_id} id.<br><br>', NULL, NULL, NULL, '2020-05-25 21:59:28', '2020-05-25 21:59:28');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_evals
-- ----------------------------
INSERT INTO `wp_tt_evals` VALUES (1, '', '', '\r\n$other_input_name = \'css_value-11\';\r\n\r\n$other_input_id =  search_by_attr_to_get_other_attr(\'name\',$other_input_name,\'id\', $process_data ,\'process\');\r\n$input_data[\'attrs\'][\'onchange\']=$input_data[\'attrs\'][\'onchange\'].\"; style_attr_checker(\'\".$input_data[\'attrs\'][\'id\'].\"\',\'\".$other_input_id.\"\');\";\r\n', NULL, NULL, '2020-04-04 05:17:51', '2020-04-04 05:17:51');
INSERT INTO `wp_tt_evals` VALUES (2, '', '', '$other_input_name = \'css_attribute-11\';\r\n$other_input_id = search_by_attr_to_get_other_attr(\'name\',$other_input_name,\'id\', $process_data ,\'process\');\r\n$input_data[\'attrs\'][\'onchange\']=$input_data[\'attrs\'][\'onchange\'].\"; style_attr_checker(\'\".$other_input_id.\"\',\'\".$input_data[\'attrs\'][\'id\'].\"\');\";\r\n$input_data[\'tag\'][\'after\']=$input_data[\'attrs\'][\'tag\'][\'after\'].\'<div id=\"\'.$input_data[\'attrs\'][\'id\'].\'_error\"></div>\';\r\n', NULL, NULL, '2020-04-04 07:26:04', '2020-04-04 07:26:04');

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
  `use_ajax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'values:yes|no',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_form
-- ----------------------------
INSERT INTO `wp_tt_form` VALUES (1, 'Input', 'Input', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '1', '', '1', '1', NULL, '', NULL, '2020-03-16 05:59:30', '2020-03-16 05:59:30');
INSERT INTO `wp_tt_form` VALUES (2, 'Input CheckBox Radio Specific Attributes', 'Input CheckBox Radio Specific Attributes', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '2', '', '1', '1', NULL, '', NULL, '2020-03-16 05:59:31', '2020-03-16 05:59:31');
INSERT INTO `wp_tt_form` VALUES (3, 'Input Color Specific Attributes ', 'Input Color Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '3', '', '1', '1', NULL, '', NULL, '2020-03-16 05:59:33', '2020-03-16 05:59:33');
INSERT INTO `wp_tt_form` VALUES (4, 'Input Date Time Specific Attributes ', 'Input Date Time Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '4', '', '1', '1', NULL, '', NULL, '2020-03-16 05:59:36', '2020-03-16 05:59:36');
INSERT INTO `wp_tt_form` VALUES (5, 'Input Email Specific Attributes ', 'Input Email Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '5', '', '1', '1', NULL, '', NULL, '2020-03-16 05:59:39', '2020-03-16 05:59:39');
INSERT INTO `wp_tt_form` VALUES (6, 'Input File Specific Attributes ', 'Input File Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '6', '', '1', '1', NULL, '', NULL, '2020-03-15 00:48:09', '2020-03-15 00:48:09');
INSERT INTO `wp_tt_form` VALUES (7, 'Input Image Specific Attributes ', 'Input Image Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '7', '', '1', '1', NULL, '', NULL, '2020-03-15 00:48:35', '2020-03-15 00:48:35');
INSERT INTO `wp_tt_form` VALUES (8, 'Input Number Specific Attributes ', 'Input Number Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '8', '', '1', '1', NULL, '', NULL, '2020-03-15 00:48:50', '2020-03-15 00:48:50');
INSERT INTO `wp_tt_form` VALUES (9, 'Input Password Specific Attributes ', 'Input Password Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '9', '', '1', '1', NULL, '', NULL, '2020-03-15 00:48:59', '2020-03-15 00:48:59');
INSERT INTO `wp_tt_form` VALUES (10, 'Input Range Specific Attributes ', 'Input Range Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '10', '', '1', '1', NULL, '', NULL, '2020-03-15 00:49:25', '2020-03-15 00:49:25');
INSERT INTO `wp_tt_form` VALUES (11, 'Input Select Specific Attributes ', 'Input Select Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '11', '', '1', '1', NULL, '', NULL, '2020-03-15 00:49:49', '2020-03-15 00:49:49');
INSERT INTO `wp_tt_form` VALUES (12, 'Input Submit Specific Attributes ', 'Input Submit Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '12', '', '1', '1', NULL, '', NULL, '2020-03-15 00:50:40', '2020-03-15 00:50:40');
INSERT INTO `wp_tt_form` VALUES (13, 'Input Tel URL Specific Attributes ', 'Input Tel URL Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '13', '', '1', '1', NULL, '', NULL, '2020-03-15 00:50:48', '2020-03-15 00:50:48');
INSERT INTO `wp_tt_form` VALUES (14, 'Input Text Search Specific Attributes ', 'Input Text Search Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '14', '', '1', '1', NULL, '', NULL, '2020-03-15 00:50:49', '2020-03-15 00:50:49');
INSERT INTO `wp_tt_form` VALUES (15, 'Input TextArea Specific Attributes ', 'Input TextArea Specific Attributes ', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '15', '', '1', '1', NULL, '', NULL, '2020-03-16 04:42:16', '2020-03-16 04:42:16');
INSERT INTO `wp_tt_form` VALUES (16, 'Custom Attributes', 'Custom Attributes', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '16', '', '1', '1', NULL, '', NULL, '2020-03-16 04:49:59', '2020-03-16 04:49:59');
INSERT INTO `wp_tt_form` VALUES (17, 'Global Attributes', 'Global Attributes', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '17', '', '1', '1', NULL, '', NULL, '2020-03-16 04:51:05', '2020-03-16 04:51:05');
INSERT INTO `wp_tt_form` VALUES (18, 'Global Attributes (Event Js)', 'Global Attributes (Event Js)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '18', '', '1', '1', NULL, '', NULL, '2020-03-16 04:51:31', '2020-03-16 04:51:31');
INSERT INTO `wp_tt_form` VALUES (19, 'Global Attributes (Js Functions)', 'Global Attributes (Js Functions)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '19', '', '1', '1', NULL, '', NULL, '2020-03-16 04:51:45', '2020-03-16 04:51:45');
INSERT INTO `wp_tt_form` VALUES (20, 'Global Attributes (Classes)', 'Global Attributes (Classes)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '20', '', '1', '1', NULL, '', NULL, '2020-03-16 04:51:51', '2020-03-16 04:51:51');
INSERT INTO `wp_tt_form` VALUES (21, 'Global Attributes (Data)', 'Global Attributes (Data)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '21', '', '1', '1', NULL, '', NULL, '2020-03-16 04:52:34', '2020-03-16 04:52:34');
INSERT INTO `wp_tt_form` VALUES (22, 'Global Attributes (ItemProps)', 'Global Attributes (ItemProps)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '22', '', '1', '1', NULL, '', NULL, '2020-03-16 05:01:24', '2020-03-16 05:01:24');
INSERT INTO `wp_tt_form` VALUES (23, 'Global Attributes (ItemRefs)', 'Global Attributes (ItemRefs)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '23', '', '1', '1', NULL, '', NULL, '2020-03-16 05:01:37', '2020-03-16 05:01:37');
INSERT INTO `wp_tt_form` VALUES (24, 'Global Attributes (Styles)', 'Global Attributes (Styles)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '24', '', '1', '1', NULL, '', NULL, '2020-03-16 05:01:41', '2020-03-16 05:01:41');
INSERT INTO `wp_tt_form` VALUES (25, 'Input Specific Attributes (Lists)', 'Input Specific Attributes (Lists)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '25', '', '1', '1', NULL, '', NULL, '2020-03-16 05:01:55', '2020-03-16 05:01:55');
INSERT INTO `wp_tt_form` VALUES (26, 'Input Specific Attributes (Options)', 'Input Specific Attributes (Options)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '26', '', '1', '1', NULL, '', NULL, '2020-03-16 05:01:56', '2020-03-16 05:01:56');
INSERT INTO `wp_tt_form` VALUES (27, 'Input Specific Attributes (Option Groups)', 'Input Specific Attributes (Option Groups)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '27', '', '1', '1', NULL, '', NULL, '2020-03-16 05:02:38', '2020-03-16 05:02:38');
INSERT INTO `wp_tt_form` VALUES (28, 'Input Specific Attributes (File Accept)', 'Input Specific Attributes (File Accept)', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '28', '', '1', '1', NULL, '', NULL, '2020-03-16 05:02:53', '2020-03-16 05:02:53');
INSERT INTO `wp_tt_form` VALUES (29, 'Input Attribute Changer Condition', 'Input Attribute Changer Condition', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '29', '', '1', '1', NULL, '', NULL, '2020-03-16 05:03:23', '2020-03-16 05:03:23');
INSERT INTO `wp_tt_form` VALUES (30, 'Input Attribute Changer', 'Input Attribute Changer', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '30', '', '1', '1', NULL, '', NULL, '2020-03-16 05:03:51', '2020-03-16 05:03:51');
INSERT INTO `wp_tt_form` VALUES (31, 'Input Meta', 'Input Meta', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '31', '', '1', '1', NULL, '', NULL, '2020-03-16 05:18:31', '2020-03-16 05:18:31');
INSERT INTO `wp_tt_form` VALUES (32, 'Tag', 'Tag', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '32', '', '1', '1', NULL, '', NULL, '2020-03-16 05:18:43', '2020-03-16 05:18:43');
INSERT INTO `wp_tt_form` VALUES (33, 'User Access', 'User Access', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '33', '', '1', '1', NULL, '', NULL, '2020-03-16 05:18:44', '2020-03-16 05:18:44');
INSERT INTO `wp_tt_form` VALUES (34, 'Eval', 'Eval', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '34', '', '1', '1', NULL, '', NULL, '2020-04-18 05:13:07', '2020-04-18 05:13:07');
INSERT INTO `wp_tt_form` VALUES (35, 'Variable', 'Variable', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '35', '', '1', '1', NULL, '', NULL, '2020-04-18 05:13:09', '2020-04-18 05:13:09');
INSERT INTO `wp_tt_form` VALUES (36, 'Option', 'Option', '', '', '', '', '', '', 'post', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '36', '', '1', '1', NULL, '', NULL, '2020-04-18 05:13:17', '2020-04-18 05:13:17');
INSERT INTO `wp_tt_form` VALUES (37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'block', 'fieldset', 'input', '1', '37', '', '', '', NULL, '', NULL, '2020-05-23 01:53:43', '2020-05-23 01:53:43');

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
  `eval_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_changer_condition_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modal_process_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modal_insert_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 337 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input
-- ----------------------------
INSERT INTO `wp_tt_input` VALUES (1, 'Submit', 'submit', '', '', '', 'submit', '5', '2', '1', '', '1', '', NULL, NULL, NULL, NULL, 'Submit', NULL, '2020-03-16 05:24:11', '2020-03-16 05:24:11');
INSERT INTO `wp_tt_input` VALUES (11, 'Epithet', 'epithet', '4', '', '', 'epithet-1', '1', '1', '1', '', '1', '', NULL, NULL, NULL, '', NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (12, 'Input Type', 'type_id', '4', '', '', 'input_type-1', '22', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:48:28', '2020-03-16 06:48:28');
INSERT INTO `wp_tt_input` VALUES (13, 'Slug', 'slug', '4', '', '', 'slug-1', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (14, 'Disabled', 'disabled', '5', '', '', 'disabled-1', '19', '4', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (15, 'Blong To Form', 'form', '4', '', '', 'form-1', '22', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-17 06:12:39', '2020-03-17 06:12:39');
INSERT INTO `wp_tt_input` VALUES (16, 'Input Name', 'name', '4', '', '', 'name-1', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (17, 'Description', 'description', '4', '', '', 'description-1', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (18, 'Input Tag Wrapper', 'tag_id', '4', '', '', 'tag_id-1', '22', '1', '3', '', '1', '', NULL, NULL, '32', 'tag_id', NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (19, 'Global Attribute', 'attr_html_global_id', '4', '', '', 'attr_html_global_id-1', '22', '1', '4', '', '1', '', NULL, NULL, '17', NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (20, 'Custom Attributes', 'attr_custom_ids', '4', '', '', 'attr_custom_ids-1', '22', '1', '5', '', '1', '', NULL, NULL, '16', NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (21, 'User Access', 'access_id', '4', '', '', 'access_id-1', '22', '1', '6', '', '1', '', NULL, NULL, '33', NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (22, 'Input Meta', 'input_meta_ids', '4', '', '', 'input_meta_ids-1', '22', '1', '7', '', '1', '', NULL, NULL, '31', NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (23, 'Attribute Changer Conditions', 'attr_changer_condition_ids', '4', '', '', 'attr_changer_condition_ids-1', '22', '1', '31', '', '1', '', NULL, NULL, '29', NULL, NULL, NULL, '2020-04-17 18:26:40', '2020-04-17 18:26:40');
INSERT INTO `wp_tt_input` VALUES (24, 'Specific Attributes', 'attr_input_specific', '4', '', '', 'attr_input_specific-1', '24', '1', '8', '', '1', '1-17', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (25, 'modal_process_id', 'modal_process_id', '4', '', '', 'modal_process_id-1', '22', '1', '35', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 21:46:24', '2020-05-10 21:46:24');
INSERT INTO `wp_tt_input` VALUES (26, 'modal_insert_ref', 'modal_insert_ref', '4', '', '', 'modal_insert_ref-1', '22', '1', '36', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 21:46:26', '2020-05-10 21:46:26');
INSERT INTO `wp_tt_input` VALUES (31, 'Epithet', 'epithet', '4', '', '', 'epithet-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (32, 'Slug', 'slug', '4', '', '', 'slug-2', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (33, 'Autofocus', 'autofocus', '5', '', '', 'autofocus-2', '19', '4', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 07:07:01', '2020-03-16 07:07:01');
INSERT INTO `wp_tt_input` VALUES (34, 'Checked', 'checked', '5', '', '', 'checked-2', '19', '4', '3', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:44:47', '2020-03-21 02:44:47');
INSERT INTO `wp_tt_input` VALUES (35, 'Required', 'required', '5', '', '', 'required-2', '19', '4', '4', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:03', '2020-03-21 02:45:03');
INSERT INTO `wp_tt_input` VALUES (36, 'Value', 'value', '4', '', '', 'value-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:05', '2020-03-21 02:45:05');
INSERT INTO `wp_tt_input` VALUES (37, 'Description', 'description', '4', '', '', 'description-2', '23', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:07', '2020-03-21 02:45:07');
INSERT INTO `wp_tt_input` VALUES (39, 'AutoComplete', 'autocomplete', '5', '', '', 'autocomplete-2', '19', '4', '5', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:09', '2020-03-21 02:45:09');
INSERT INTO `wp_tt_input` VALUES (40, 'List HTML ID', 'list', '4', '', '', 'list-2', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:11', '2020-03-21 02:45:11');
INSERT INTO `wp_tt_input` VALUES (41, 'Lists Options', 'list_ids', '4', '', '', 'list_ids-2', '22', '1', '9', '', '1', '', NULL, NULL, '25', NULL, NULL, NULL, '2020-03-21 02:45:13', '2020-03-21 02:45:13');
INSERT INTO `wp_tt_input` VALUES (42, 'Max', 'max', '4', '', '', 'max-2', '8', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 02:45:15', '2020-03-21 02:45:15');
INSERT INTO `wp_tt_input` VALUES (43, 'Min', 'min', '4', '', '', 'min-2', '8', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:11', '2020-03-21 03:29:11');
INSERT INTO `wp_tt_input` VALUES (44, 'ReadOnly', 'readonly', '5', '', '', 'readonly-2', '19', '4', '6', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:13', '2020-03-21 03:29:13');
INSERT INTO `wp_tt_input` VALUES (45, 'Step', 'step', '4', '', '', 'step-2', '8', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:15', '2020-03-21 03:29:15');
INSERT INTO `wp_tt_input` VALUES (46, 'MaxLength', 'maxlength', '4', '', '', 'maxlength-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:17', '2020-03-21 03:29:17');
INSERT INTO `wp_tt_input` VALUES (47, 'MinLength', 'minlength', '4', '', '', 'minlength-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:20', '2020-03-21 03:29:20');
INSERT INTO `wp_tt_input` VALUES (48, 'Multiple', 'multiple', '5', '', '', 'multiple-2', '19', '4', '7', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:22', '2020-03-21 03:29:22');
INSERT INTO `wp_tt_input` VALUES (49, 'Pattern', 'pattern', '4', '', '', 'pattern-2', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:23', '2020-03-21 03:29:23');
INSERT INTO `wp_tt_input` VALUES (50, 'PlaceHolder', 'placeholder', '4', '', '', 'placeholder-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:26', '2020-03-21 03:29:26');
INSERT INTO `wp_tt_input` VALUES (51, 'Size', 'size', '4', '', '', 'size-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 03:29:27', '2020-03-21 03:29:27');
INSERT INTO `wp_tt_input` VALUES (52, 'Accepts', 'accept_ids', '4', '', '', 'accept_ids-2', '22', '1', '10', '', '1', '', NULL, NULL, '28', NULL, NULL, NULL, '2020-03-30 18:03:54', '2020-03-30 18:03:54');
INSERT INTO `wp_tt_input` VALUES (53, 'Capture', 'capture', '4', '', '', 'capture-2', '22', '1', '11', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:03:59', '2020-03-30 18:03:59');
INSERT INTO `wp_tt_input` VALUES (54, 'Alt', 'alt', '4', '', '', 'alt-2', '23', '1', '3', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:04:01', '2020-03-30 18:04:01');
INSERT INTO `wp_tt_input` VALUES (55, 'FormAction', 'formaction', '4', '', '', 'formaction-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:04:05', '2020-03-30 18:04:05');
INSERT INTO `wp_tt_input` VALUES (56, 'FormEnctype', 'formenctype', '4', '', '', 'formenctype-2', '22', '1', '12', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:06', '2020-03-30 18:18:06');
INSERT INTO `wp_tt_input` VALUES (57, 'FormMethod', 'formmethod', '4', '', '', 'formmethod-2', '22', '1', '13', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:09', '2020-03-30 18:18:09');
INSERT INTO `wp_tt_input` VALUES (58, 'FormNoValidate', 'formnovalidate', '5', '', '', 'formnovalidate-2', '19', '4', '8', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:11', '2020-03-30 18:18:11');
INSERT INTO `wp_tt_input` VALUES (59, 'FormTarget', 'formtarget', '4', '', '', 'formtarget-2', '22', '1', '14', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:13', '2020-03-30 18:18:13');
INSERT INTO `wp_tt_input` VALUES (60, 'Height', 'height', '4', '', '', 'height-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:16', '2020-03-30 18:18:16');
INSERT INTO `wp_tt_input` VALUES (61, 'Src', 'src', '4', '', '', 'src-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:30', '2020-03-30 18:18:30');
INSERT INTO `wp_tt_input` VALUES (62, 'Width', 'width', '4', '', '', 'width-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:34', '2020-03-30 18:18:34');
INSERT INTO `wp_tt_input` VALUES (63, 'Unselected Text', 'unselected_text', '4', '', '', 'unselected_text-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:18:37', '2020-03-30 18:18:37');
INSERT INTO `wp_tt_input` VALUES (64, 'Show First', 'show_first', '4', '', '', 'show_first-2', '22', '1', '15', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 18:44:31', '2020-03-30 18:44:31');
INSERT INTO `wp_tt_input` VALUES (65, 'OptGroups', 'optgroup_ids', '4', '', '', 'optgroup_ids-2', '22', '1', '16', '', '1', '', NULL, NULL, '27', NULL, NULL, NULL, '2020-03-30 21:09:03', '2020-03-30 21:09:03');
INSERT INTO `wp_tt_input` VALUES (66, 'Options', 'option_ids', '4', '', '', 'option_ids-2', '22', '1', '17', '', '1', '', NULL, NULL, '26', NULL, NULL, NULL, '2020-03-30 21:09:05', '2020-03-30 21:09:05');
INSERT INTO `wp_tt_input` VALUES (67, 'DirName', 'dirname', '4', '', '', 'dirname-2', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:06', '2020-03-30 21:09:06');
INSERT INTO `wp_tt_input` VALUES (68, 'Text', 'text', '4', '', '', 'text-2', '23', '1', '4', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:07', '2020-03-30 21:09:07');
INSERT INTO `wp_tt_input` VALUES (69, 'Cols', 'cols', '4', '', '', 'cols-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:11', '2020-03-30 21:09:11');
INSERT INTO `wp_tt_input` VALUES (70, 'Rows', 'rows', '4', '', '', 'rows-2', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:14', '2020-03-30 21:09:14');
INSERT INTO `wp_tt_input` VALUES (71, 'Wrap', 'wrap', '4', '', '', 'wrap-2', '22', '1', '18', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:15', '2020-03-30 21:09:15');
INSERT INTO `wp_tt_input` VALUES (81, 'Epithet', 'epithet', '4', '', '', 'epithet-3', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 21:09:17', '2020-03-30 21:09:17');
INSERT INTO `wp_tt_input` VALUES (82, 'Slug', 'slug', '4', '', '', 'slug-3', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:30:31', '2020-03-31 01:30:31');
INSERT INTO `wp_tt_input` VALUES (83, 'Attribute Name', 'attr_name', '4', '', '', 'attr_name-3', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:30:36', '2020-03-31 01:30:36');
INSERT INTO `wp_tt_input` VALUES (84, 'Attribute Value', 'attr_value', '4', '', '', 'attr_value-3', '23', '1', '5', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:31:19', '2020-03-31 01:31:19');
INSERT INTO `wp_tt_input` VALUES (85, 'Description', 'description', '4', '', '', 'description-3', '23', '1', '6', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:31:23', '2020-03-31 01:31:23');
INSERT INTO `wp_tt_input` VALUES (91, 'Epithet', 'epithet', '4', '', '', 'epithet-4', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:31:25', '2020-03-31 01:31:25');
INSERT INTO `wp_tt_input` VALUES (92, 'Slug', 'slug', '4', '', '', 'slug-4', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:31:27', '2020-03-31 01:31:27');
INSERT INTO `wp_tt_input` VALUES (93, 'AccessKey', 'accesskey', '4', '', '', 'accesskey-4', '1', '1', '3', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-31 01:31:35', '2020-03-31 01:31:35');
INSERT INTO `wp_tt_input` VALUES (94, 'AutoCapitalize', 'autocapitalize', '4', '', '', 'autocapitalize-4', '22', '1', '19', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:25', '2020-04-01 10:31:25');
INSERT INTO `wp_tt_input` VALUES (95, 'Classes', 'class_ids', '4', '', '', 'class_ids-4', '22', '1', '20', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:28', '2020-04-01 10:31:28');
INSERT INTO `wp_tt_input` VALUES (96, 'ContentEditable', 'contenteditable', '5', '', '', 'contenteditable-4', '19', '4', '9', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:29', '2020-04-01 10:31:29');
INSERT INTO `wp_tt_input` VALUES (97, 'ContextMenu (Obsolete)', 'contextmenu', '4', 'disabled', '', 'contextmenu-4', '1', '1', '4', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:31', '2020-04-01 10:31:31');
INSERT INTO `wp_tt_input` VALUES (98, 'Data', 'data_ids', '4', '', '', 'data_ids-4', '22', '1', '21', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:36', '2020-04-01 10:31:36');
INSERT INTO `wp_tt_input` VALUES (99, 'Dir', 'dir', '4', '', '', 'dir-4', '22', '1', '22', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:40', '2020-04-01 10:31:40');
INSERT INTO `wp_tt_input` VALUES (100, 'Draggable', 'draggable', '5', '', '', 'draggable-4', '19', '4', '10', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:42', '2020-04-01 10:31:42');
INSERT INTO `wp_tt_input` VALUES (101, 'Dropzone', 'dropzone', '4', '', '', 'dropzone-4', '22', '1', '23', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:47', '2020-04-01 10:31:47');
INSERT INTO `wp_tt_input` VALUES (102, 'Hidden', 'hidden', '5', '', '', 'hidden-4', '19', '4', '11', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:49', '2020-04-01 10:31:49');
INSERT INTO `wp_tt_input` VALUES (103, 'ID', 'the_id', '4', '', '', 'the_id-4', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:51', '2020-04-01 10:31:51');
INSERT INTO `wp_tt_input` VALUES (104, 'InputMode', 'inputmode', '4', '', '', 'inputmode-4', '22', '1', '24', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:53', '2020-04-01 10:31:53');
INSERT INTO `wp_tt_input` VALUES (105, 'Is', 'is', '4', '', '', 'is-4', '1', '5', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:55', '2020-04-01 10:31:55');
INSERT INTO `wp_tt_input` VALUES (106, 'ItemID', 'itemid', '4', '', '', 'itemid-4', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:57', '2020-04-01 10:31:57');
INSERT INTO `wp_tt_input` VALUES (107, 'ItemProps', 'itemprop_ids', '4', '', '', 'itemprop_ids-4', '22', '1', '25', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:31:59', '2020-04-01 10:31:59');
INSERT INTO `wp_tt_input` VALUES (108, 'ItemRefs', 'itemref_ids', '4', '', '', 'itemref_ids-4', '22', '1', '26', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:05', '2020-04-01 10:32:05');
INSERT INTO `wp_tt_input` VALUES (109, 'ItemScopes', 'itemscope', '5', '', '', 'itemscope-4', '19', '4', '12', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:18', '2020-04-01 10:32:18');
INSERT INTO `wp_tt_input` VALUES (110, 'ItemType', 'itemtype', '4', '', '', 'itemtype-4', '4', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, 'See full list of ItemTypes at: <a href=\"https://schema.org/docs/full.html\" target=\"new\">https://schema.org/docs/full.html</a>', NULL, '2020-04-01 10:32:22', '2020-04-01 10:32:22');
INSERT INTO `wp_tt_input` VALUES (111, 'Lang', 'lang', '4', '', '', 'lang-4', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, 'See full list of Languages at: <a href=\"http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry\" target=\"new\">http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry</a>', NULL, '2020-04-01 10:32:25', '2020-04-01 10:32:25');
INSERT INTO `wp_tt_input` VALUES (112, 'OnEvent', 'onevent_ids', '4', '', '', 'onevent_ids-4', '22', '1', '27', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:28', '2020-04-01 10:32:28');
INSERT INTO `wp_tt_input` VALUES (113, 'Slot', 'slot', '4', '', '', 'slot-4', '1', '6', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:31', '2020-04-01 10:32:31');
INSERT INTO `wp_tt_input` VALUES (114, 'SpellCheck', 'spellcheck', '5', '', '', 'spellcheck-4', '19', '4', '13', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:34', '2020-04-01 10:32:34');
INSERT INTO `wp_tt_input` VALUES (115, 'Styles', 'style_ids', '4', '', '', 'style_ids-4', '22', '1', '28', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:37', '2020-04-01 10:32:37');
INSERT INTO `wp_tt_input` VALUES (116, 'TabIndex', 'tabindex', '4', '', '', 'tabindex-4', '8', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:39', '2020-04-01 10:32:39');
INSERT INTO `wp_tt_input` VALUES (117, 'Title', 'title', '4', '', '', 'title-4', '23', '1', '7', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:42', '2020-04-01 10:32:42');
INSERT INTO `wp_tt_input` VALUES (118, 'Translate', 'translate', '5', '', '', 'translate-4', '19', '4', '14', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:48', '2020-04-01 10:32:48');
INSERT INTO `wp_tt_input` VALUES (119, 'Description', 'description', '4', '', '', 'description-4', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:51', '2020-04-01 10:32:51');
INSERT INTO `wp_tt_input` VALUES (131, 'Epithet', 'epithet', '4', '', '', 'epithet-5', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:53', '2020-04-01 10:32:53');
INSERT INTO `wp_tt_input` VALUES (132, 'Slug', 'slug', '4', '', '', 'slug-5', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:32:59', '2020-04-01 10:32:59');
INSERT INTO `wp_tt_input` VALUES (133, 'Event', 'event', '4', '', '', 'event-5', '1', '7', '2', '', '1', '', NULL, NULL, NULL, NULL, 'See complete list of events: <a href=\"https://developer.mozilla.org/en-US/docs/Web/Events\" target=\"new\">https://developer.mozilla.org/en-US/docs/Web/Events</a>', NULL, '2020-04-02 14:29:36', '2020-04-02 14:29:36');
INSERT INTO `wp_tt_input` VALUES (134, 'Javascript Functions', 'jsfunction_ids', '4', '', '', 'jsfunction_ids-5', '22', '1', '29', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 14:29:38', '2020-04-02 14:29:38');
INSERT INTO `wp_tt_input` VALUES (135, 'Description', 'description', '4', '', '', 'description-5', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 14:29:41', '2020-04-02 14:29:41');
INSERT INTO `wp_tt_input` VALUES (141, 'Epithet', 'epithet', '4', '', '', 'epithet-6', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 14:29:43', '2020-04-02 14:29:43');
INSERT INTO `wp_tt_input` VALUES (142, 'Slug', 'slug', '4', '', '', 'slug-6', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 14:29:46', '2020-04-02 14:29:46');
INSERT INTO `wp_tt_input` VALUES (143, 'Javascript Function', 'jsfunction', '4', '', '', 'jsfunction-6', '25', '1', '8', '', '1', '19-23', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 14:29:49', '2020-04-02 14:29:49');
INSERT INTO `wp_tt_input` VALUES (144, 'Description', 'description', '4', '', '', 'description-6', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 17:26:32', '2020-04-02 17:26:32');
INSERT INTO `wp_tt_input` VALUES (151, 'Epithet', 'epithet', '4', '', '', 'epithet-7', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-02 17:26:34', '2020-04-02 17:26:34');
INSERT INTO `wp_tt_input` VALUES (152, 'Slug', 'slug', '4', '', '', 'slug-7', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:14:33', '2020-04-03 02:14:33');
INSERT INTO `wp_tt_input` VALUES (153, 'Class', 'class', '4', '', '', 'class-7', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:14:34', '2020-04-03 02:14:34');
INSERT INTO `wp_tt_input` VALUES (154, 'Description', 'description', '4', '', '', 'description-7', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:14:36', '2020-04-03 02:14:36');
INSERT INTO `wp_tt_input` VALUES (161, 'Epithet', 'epithet', '4', '', '', 'epithet-8', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:14:42', '2020-04-03 02:14:42');
INSERT INTO `wp_tt_input` VALUES (162, 'Slug', 'slug', '4', '', '', 'slug-8', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:20:07', '2020-04-03 02:20:07');
INSERT INTO `wp_tt_input` VALUES (163, 'Data Attribute', 'data_attribute', '4', '', '', 'data_attribute-8', '1', '9', '1', '', '1', '', NULL, NULL, NULL, NULL, 'See: <a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes\"  target=\"new\">https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes</a>', NULL, '2020-04-03 02:20:09', '2020-04-03 02:20:09');
INSERT INTO `wp_tt_input` VALUES (164, 'Data Value', 'data_value', '4', '', '', 'data_value-8', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:20:39', '2020-04-03 02:20:39');
INSERT INTO `wp_tt_input` VALUES (165, 'Description', 'description', '4', '', '', 'description-8', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 02:20:41', '2020-04-03 02:20:41');
INSERT INTO `wp_tt_input` VALUES (171, 'Epithet', 'epithet', '4', '', '', 'epithet-9', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:53:52', '2020-04-03 16:53:52');
INSERT INTO `wp_tt_input` VALUES (172, 'Slug', 'slug', '4', '', '', 'slug-9', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:53:55', '2020-04-03 16:53:55');
INSERT INTO `wp_tt_input` VALUES (173, 'ItemProp', 'itemprop', '4', '', '', 'itemprop-9', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:53:57', '2020-04-03 16:53:57');
INSERT INTO `wp_tt_input` VALUES (174, 'Description', 'description', '4', '', '', 'description-9', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:53:59', '2020-04-03 16:53:59');
INSERT INTO `wp_tt_input` VALUES (181, 'Epithet', 'epithet', '4', '', '', 'epithet-10', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:54:01', '2020-04-03 16:54:01');
INSERT INTO `wp_tt_input` VALUES (182, 'Slug', 'slug', '4', '', '', 'slug-10', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 16:54:03', '2020-04-03 16:54:03');
INSERT INTO `wp_tt_input` VALUES (183, 'ItemRef', 'itemref', '4', '', '', 'itemref-10', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:03:29', '2020-04-03 17:03:29');
INSERT INTO `wp_tt_input` VALUES (184, 'Description', 'description', '4', '', '', 'description-10', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:03:31', '2020-04-03 17:03:31');
INSERT INTO `wp_tt_input` VALUES (191, 'Epithet', 'epithet', '4', '', '', 'epithet-11', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:11:49', '2020-04-03 17:11:49');
INSERT INTO `wp_tt_input` VALUES (192, 'Slug', 'slug', '4', '', '', 'slug-11', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:11:50', '2020-04-03 17:11:50');
INSERT INTO `wp_tt_input` VALUES (193, 'CSS Properties Name', 'css_attribute', '4', '', '', 'css_attribute-11', '1', '1', '1', '', '1', '', '1', NULL, NULL, NULL, 'See the list of CSS propertes (complete list): <a href=\"https://www.w3.org/Style/CSS/all-properties.en.html\" target=\"new\">https://www.w3.org/Style/CSS/all-properties.en.html</a>', NULL, '2020-04-03 17:11:52', '2020-04-03 17:11:52');
INSERT INTO `wp_tt_input` VALUES (194, 'CSS Properties Value', 'css_value', '4', '', '', 'css_value-11', '1', '1', '1', '', '1', '', '2', NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:11:53', '2020-04-03 17:11:53');
INSERT INTO `wp_tt_input` VALUES (195, 'Important', 'important', '5', '', '', 'important-11', '19', '4', '15', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:11:56', '2020-04-03 17:11:56');
INSERT INTO `wp_tt_input` VALUES (196, 'Description', 'description', '4', '', '', 'description-11', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:11:58', '2020-04-03 17:11:58');
INSERT INTO `wp_tt_input` VALUES (201, 'Epithet', 'epithet', '4', '', '', 'epithet-12', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:12:03', '2020-04-03 17:12:03');
INSERT INTO `wp_tt_input` VALUES (202, 'Slug', 'slug', '4', '', '', 'slug-12', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:07', '2020-04-08 04:44:07');
INSERT INTO `wp_tt_input` VALUES (203, 'Source Type', 'source_type', '4', '', '', 'source_type-12', '22', '1', '30', '', '1', '', NULL, '1,2,3', NULL, NULL, NULL, NULL, '2020-04-08 04:44:08', '2020-04-08 04:44:08');
INSERT INTO `wp_tt_input` VALUES (204, 'Query', 'query', '4', 'disabled', '', 'query-12', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:10', '2020-04-08 04:44:10');
INSERT INTO `wp_tt_input` VALUES (205, 'Json URL', 'json_url', '4', 'disabled', '', 'json_url-12', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:12', '2020-04-08 04:44:12');
INSERT INTO `wp_tt_input` VALUES (206, 'Label', 'label', '4', '', '', 'label-12', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:14', '2020-04-08 04:44:14');
INSERT INTO `wp_tt_input` VALUES (207, 'Value', 'value', '4', '', '', 'value-12', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:15', '2020-04-08 04:44:15');
INSERT INTO `wp_tt_input` VALUES (208, 'Disabled Values', 'disabled', '4', '', '', 'disabled-12', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:24', '2020-04-08 04:44:24');
INSERT INTO `wp_tt_input` VALUES (209, 'Global Attributes', 'attr_html_global_id', '4', '', '', 'attr_html_global_id-12', '22', '1', '4', '', '1', '', NULL, NULL, '17', NULL, NULL, NULL, '2020-04-08 04:44:26', '2020-04-08 04:44:26');
INSERT INTO `wp_tt_input` VALUES (210, 'Description', 'description', '4', '', '', 'description-12', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:32', '2020-04-08 04:44:32');
INSERT INTO `wp_tt_input` VALUES (221, 'Epithet', 'epithet', '4', '', '', 'epithet-13', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 17:12:03', '2020-04-17 21:01:49');
INSERT INTO `wp_tt_input` VALUES (222, 'Slug', 'slug', '4', '', '', 'slug-13', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:07', '2020-04-17 21:01:51');
INSERT INTO `wp_tt_input` VALUES (223, 'Source Type', 'source_type', '4', '', '', 'source_type-13', '22', '1', '30', '', '1', '', NULL, '4,5,6', NULL, NULL, NULL, NULL, '2020-04-08 04:44:08', '2020-04-17 21:01:54');
INSERT INTO `wp_tt_input` VALUES (224, 'Query', 'query', '4', 'disabled', '', 'query-13', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:10', '2020-04-17 21:01:59');
INSERT INTO `wp_tt_input` VALUES (225, 'Json URL', 'json_url', '4', 'disabled', '', 'json_url-13', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:12', '2020-04-17 21:02:02');
INSERT INTO `wp_tt_input` VALUES (226, 'Label', 'label', '4', '', '', 'label-13', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:14', '2020-04-17 21:02:05');
INSERT INTO `wp_tt_input` VALUES (227, 'Text', 'Text', '4', '', '', 'text-13', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:15', '2020-04-17 21:02:09');
INSERT INTO `wp_tt_input` VALUES (228, 'Value', 'value', '4', '', '', 'value-13', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:24', '2020-04-17 21:02:12');
INSERT INTO `wp_tt_input` VALUES (229, 'Disabled Values', 'disabled', '4', '', '', 'disabled-13', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-08 04:44:26', '2020-04-17 21:02:14');
INSERT INTO `wp_tt_input` VALUES (230, 'Global Attributes', 'attr_html_global_id', '4', '', '', 'attr_html_global_id-13', '22', '1', '4', '', '1', '', NULL, NULL, '17', NULL, NULL, NULL, '2020-04-08 04:44:32', '2020-04-17 21:02:17');
INSERT INTO `wp_tt_input` VALUES (231, 'Description', 'description', '4', '', '', 'description-13', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:02:19', '2020-04-17 21:02:19');
INSERT INTO `wp_tt_input` VALUES (241, 'Epithet', 'epithet', '4', '', '', 'epithet-14', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:02:22', '2020-04-17 21:02:22');
INSERT INTO `wp_tt_input` VALUES (242, 'Slug', 'slug', '4', '', '', 'slug-14', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:02:24', '2020-04-17 21:02:24');
INSERT INTO `wp_tt_input` VALUES (243, 'Label', 'label', '4', '', '', 'label-14', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:15', '2020-04-17 21:08:15');
INSERT INTO `wp_tt_input` VALUES (244, 'Options', 'option_ids', '4', '', '', 'option_ids-14', '22', '1', '17', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:19', '2020-04-17 21:08:19');
INSERT INTO `wp_tt_input` VALUES (245, 'Global Attributes', 'attr_html_global_id', '4', '', '', 'attr_html_global_id-14', '22', '1', '4', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:21', '2020-04-17 21:08:21');
INSERT INTO `wp_tt_input` VALUES (246, 'Description', 'description', '4', '', '', 'description-14', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:23', '2020-04-17 21:08:23');
INSERT INTO `wp_tt_input` VALUES (251, 'Epithet', 'epithet', '4', '', '', 'epithet-15', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:25', '2020-04-17 21:08:25');
INSERT INTO `wp_tt_input` VALUES (252, 'Slug', 'slug', '4', '', '', 'slug-15', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:08:27', '2020-04-17 21:08:27');
INSERT INTO `wp_tt_input` VALUES (253, 'Accept', 'accept', '4', '', '', 'accept-15', '1', '10', '2', '', '1', '', NULL, NULL, NULL, NULL, 'For more info visit : <a href=\"https://www.iana.org/assignments/media-types/media-types.xhtml\">https://www.iana.org/assignments/media-types/media-types.xhtml</a>', NULL, '2020-04-17 21:08:29', '2020-04-17 21:08:29');
INSERT INTO `wp_tt_input` VALUES (254, 'Description', 'description', '4', '', '', 'description-15', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17 21:28:05', '2020-04-17 21:28:05');
INSERT INTO `wp_tt_input` VALUES (261, 'Epithet', 'epithet', '4', '', '', 'epithet-16', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 05:16:26', '2020-04-18 05:16:26');
INSERT INTO `wp_tt_input` VALUES (262, 'Slug', 'slug', '4', '', '', 'slug-16', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 05:16:27', '2020-04-18 05:16:27');
INSERT INTO `wp_tt_input` VALUES (263, 'Conditions', 'condition', '4', '', '', 'condition-16', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, 'Use {self} to refer to this input value or use {name:****} to refer to other input value in this form or even use \"else\". Note the format of condition must be based on Javascript coding.Do not use quotation for {self} and {name:****}', NULL, '2020-04-18 05:16:28', '2020-04-18 05:16:28');
INSERT INTO `wp_tt_input` VALUES (264, 'Attribute Changers', 'attr_changer_ids', '4', '', '', 'attr_changer_ids-16', '22', '1', '32', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 05:16:30', '2020-04-18 05:16:30');
INSERT INTO `wp_tt_input` VALUES (265, 'Description', 'description', '4', '', '', 'description-16', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 05:16:32', '2020-04-18 05:16:32');
INSERT INTO `wp_tt_input` VALUES (271, 'Epithet', 'epithet', '4', '', '', 'epithet-17', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:38', '2020-04-18 07:19:38');
INSERT INTO `wp_tt_input` VALUES (272, 'Slug', 'slug', '4', '', '', 'slug-17', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:40', '2020-04-18 07:19:40');
INSERT INTO `wp_tt_input` VALUES (273, 'Inputs', 'input_ids', '4', '', '', 'input_ids-17', '22', '1', '33', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:42', '2020-04-18 07:19:42');
INSERT INTO `wp_tt_input` VALUES (274, 'Attribute Name', 'attr', '4', '', '', 'attr-17', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:43', '2020-04-18 07:19:43');
INSERT INTO `wp_tt_input` VALUES (275, 'Attribute Value', 'value', '4', '', '', 'value-17', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:44', '2020-04-18 07:19:44');
INSERT INTO `wp_tt_input` VALUES (276, 'Remove Attribute', 'remove_attr', '5', '', '', 'remove_attr-17', '19', '4', '16', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:46', '2020-04-18 07:19:46');
INSERT INTO `wp_tt_input` VALUES (277, 'Description', 'description', '4', '', '', 'description-17', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 07:19:49', '2020-04-18 07:19:49');
INSERT INTO `wp_tt_input` VALUES (281, 'Epithet', 'epithet', '4', '', '', 'epithet-18', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:40:48', '2020-04-18 08:40:48');
INSERT INTO `wp_tt_input` VALUES (282, 'Slug', 'slug', '4', '', '', 'slug-18', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:40:49', '2020-04-18 08:40:49');
INSERT INTO `wp_tt_input` VALUES (283, 'Key', 'key', '4', '', '', 'key-18', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:40:52', '2020-04-18 08:40:52');
INSERT INTO `wp_tt_input` VALUES (284, 'Value', 'value', '4', '', '', 'value-18', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:40:54', '2020-04-18 08:40:54');
INSERT INTO `wp_tt_input` VALUES (285, 'Description', 'description', '4', '', '', 'description-18', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:40:59', '2020-04-18 08:40:59');
INSERT INTO `wp_tt_input` VALUES (291, 'Epithet', 'epithet', '4', '', '', 'epithet-19', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:41:01', '2020-04-18 08:41:01');
INSERT INTO `wp_tt_input` VALUES (292, 'Slug', 'slug', '4', '', '', 'slug-19', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:59:51', '2020-04-18 08:59:51');
INSERT INTO `wp_tt_input` VALUES (293, 'Tag Before', 'tag_before', '4', '', '', 'tag_before-19', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:59:52', '2020-04-18 08:59:52');
INSERT INTO `wp_tt_input` VALUES (294, 'Tag After', 'tag_after', '4', '', '', 'tag_after-19', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:59:55', '2020-04-18 08:59:55');
INSERT INTO `wp_tt_input` VALUES (295, 'Parent Tag', 'parent_tag_id', '4', '', '', 'parent_tag_id-19', '22', '1', '3', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 08:59:59', '2020-04-18 08:59:59');
INSERT INTO `wp_tt_input` VALUES (296, 'Description', 'description', '4', '', '', 'description-19', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:00:07', '2020-04-18 09:00:07');
INSERT INTO `wp_tt_input` VALUES (301, 'Epithet', 'epithet', '4', '', '', 'epithet-20', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:00:09', '2020-04-18 09:00:09');
INSERT INTO `wp_tt_input` VALUES (302, 'Slug', 'slug', '4', '', '', 'slug-20', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:05:51', '2020-04-18 09:05:51');
INSERT INTO `wp_tt_input` VALUES (303, 'Enable Default View', 'default_view', '6', '', '', 'default_view-20', '26', '4', '17', '', '1', '23-30', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:05:53', '2020-04-18 09:05:53');
INSERT INTO `wp_tt_input` VALUES (304, 'Except Users To View / Not View', 'except_view', '4', '', '', 'except_view-20', '22', '1', '34', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:05:57', '2020-04-18 09:05:57');
INSERT INTO `wp_tt_input` VALUES (305, 'Enable Default Edit', 'default_edit', '6', '', '', 'default_edit-20', '26', '4', '17', '', '1', '31-34', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:05:59', '2020-04-18 09:05:59');
INSERT INTO `wp_tt_input` VALUES (306, 'Except Users To Edit / Not Edit', 'except_edit', '4', '', '', 'except_edit-20', '22', '1', '34', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:06:02', '2020-04-18 09:06:02');
INSERT INTO `wp_tt_input` VALUES (307, 'Enable Default Add', 'default_add', '6', '', '', 'default_add-20', '26', '4', '17', '', '1', '35-38', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:06:05', '2020-04-18 09:06:05');
INSERT INTO `wp_tt_input` VALUES (308, 'Except Users To Add / Not Add', 'except_add', '4', '', '', 'except_add-20', '22', '1', '34', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:06:07', '2020-04-18 09:06:07');
INSERT INTO `wp_tt_input` VALUES (309, 'Description', 'description', '4', '', '', 'description-20', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-18 09:06:11', '2020-04-18 09:06:11');
INSERT INTO `wp_tt_input` VALUES (311, 'Epithet', 'epithet', '4', '', '', 'epithet-21', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 10:57:22', '2020-04-19 10:57:22');
INSERT INTO `wp_tt_input` VALUES (312, 'Slug', 'slug', '4', '', '', 'slug-21', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:37:40', '2020-04-19 12:37:40');
INSERT INTO `wp_tt_input` VALUES (313, 'Eval', 'eval', '4', '', '', 'eval-21', '23', '1', '9', '', '1', '', NULL, NULL, NULL, NULL, 'Don\'t need to use &#x3C;?php and ?&#x3E;.', NULL, '2020-04-19 12:37:40', '2020-04-19 12:37:40');
INSERT INTO `wp_tt_input` VALUES (314, 'Description', 'description', '4', '', '', 'description-21', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:37:40', '2020-04-19 12:37:40');
INSERT INTO `wp_tt_input` VALUES (321, 'Epithet', 'epithet', '4', '', '', 'epithet-22', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:37:40', '2020-04-19 12:37:40');
INSERT INTO `wp_tt_input` VALUES (322, 'Slug', 'slug', '4', '', '', 'slug-22', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:38:33', '2020-04-19 12:38:33');
INSERT INTO `wp_tt_input` VALUES (323, 'Name', 'name', '4', '', '', 'name-22', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:38:42', '2020-04-19 12:38:42');
INSERT INTO `wp_tt_input` VALUES (324, 'Value', 'value', '4', '', '', 'value-22', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:38:44', '2020-04-19 12:38:44');
INSERT INTO `wp_tt_input` VALUES (325, 'Description', 'description', '4', '', '', 'description-22', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:38:46', '2020-04-19 12:38:46');
INSERT INTO `wp_tt_input` VALUES (331, 'Epithet', 'epithet', '4', '', '', 'epithet-23', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:04', '2020-04-19 12:43:04');
INSERT INTO `wp_tt_input` VALUES (332, 'Slug', 'slug', '4', '', '', 'slug-23', '1', '3', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:09', '2020-04-19 12:43:09');
INSERT INTO `wp_tt_input` VALUES (333, 'Key', 'key', '4', '', '', 'key-23', '1', '1', '2', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:09', '2020-04-19 12:43:09');
INSERT INTO `wp_tt_input` VALUES (334, 'Value', 'value', '4', '', '', 'value-23', '1', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:09', '2020-04-19 12:43:09');
INSERT INTO `wp_tt_input` VALUES (335, 'Description', 'description', '4', '', '', 'description-23', '23', '1', '1', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:09', '2020-04-19 12:43:09');
INSERT INTO `wp_tt_input` VALUES (336, '', '', '', '', '', '', '', '', '', '', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 12:43:09', '2020-04-19 12:43:09');

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_input_meta
-- ----------------------------
INSERT INTO `wp_tt_input_meta` VALUES (1, 'Controller Input Of Dependent Select', NULL, 'controller-input-name', 'input_type-1', 'can be multipe like query', NULL, '2020-03-19 09:14:47', '2020-03-19 09:14:47');
INSERT INTO `wp_tt_input_meta` VALUES (2, NULL, NULL, 'query-on-change', 'SELECT * FROM wp_tt_input_types WHERE id={name:input_type-1}', NULL, NULL, '2020-03-21 04:31:05', '2020-03-21 04:31:05');
INSERT INTO `wp_tt_input_meta` VALUES (3, NULL, NULL, 'return-type', 'string', NULL, NULL, '2020-03-21 04:31:25', '2020-03-21 04:31:25');
INSERT INTO `wp_tt_input_meta` VALUES (4, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'textarea\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_textarea\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'textarea', NULL, '2020-03-21 04:31:34', '2020-03-21 04:31:34');
INSERT INTO `wp_tt_input_meta` VALUES (5, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'text\\\' or {col:html_type}==\\\'search\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_text_search\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'text,search', NULL, '2020-03-26 19:07:04', '2020-03-26 19:07:04');
INSERT INTO `wp_tt_input_meta` VALUES (6, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'tel\\\' or {col:html_type}==\\\'url\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_tel_url\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'tel,url', NULL, '2020-03-26 19:08:00', '2020-03-26 19:08:00');
INSERT INTO `wp_tt_input_meta` VALUES (7, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'submit\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_submit\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'submit', NULL, '2020-03-26 19:08:02', '2020-03-26 19:08:02');
INSERT INTO `wp_tt_input_meta` VALUES (8, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'select\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_select\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'select', NULL, '2020-03-26 19:08:03', '2020-03-26 19:08:03');
INSERT INTO `wp_tt_input_meta` VALUES (9, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'range\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_range\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'range', NULL, '2020-03-26 19:08:04', '2020-03-26 19:08:04');
INSERT INTO `wp_tt_input_meta` VALUES (10, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'password\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_password\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'password', NULL, '2020-03-26 19:08:05', '2020-03-26 19:08:05');
INSERT INTO `wp_tt_input_meta` VALUES (11, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'number\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_number\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'number', NULL, '2020-03-26 19:12:58', '2020-03-26 19:12:58');
INSERT INTO `wp_tt_input_meta` VALUES (12, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'image\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_image\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'image', NULL, '2020-03-26 19:13:26', '2020-03-26 19:13:26');
INSERT INTO `wp_tt_input_meta` VALUES (13, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'file\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_file\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'file', NULL, '2020-03-26 19:13:26', '2020-03-26 19:13:26');
INSERT INTO `wp_tt_input_meta` VALUES (14, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'email\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_email\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'email', NULL, '2020-03-26 19:13:27', '2020-03-26 19:13:27');
INSERT INTO `wp_tt_input_meta` VALUES (15, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'date\\\' or {col:html_type}==\\\'datetime-local\\\' or {col:html_type}==\\\'month\\\' or {col:html_type}==\\\'time\\\' or {col:html_type}==\\\'week\\\' or {col:html_type}==\\\'datetime\\\' \" , \"query\":\"SELECT * FROM wp_tt_attr_input_date_time_related\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'date time related', NULL, '2020-03-26 19:15:05', '2020-03-26 19:15:05');
INSERT INTO `wp_tt_input_meta` VALUES (16, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'color\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_color\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'color', NULL, '2020-03-26 19:18:39', '2020-03-26 19:18:39');
INSERT INTO `wp_tt_input_meta` VALUES (17, NULL, NULL, 'query', '{ \"condition\":\"{col:html_type}==\\\'checkbox\\\' or {col:html_type}==\\\'radio\\\'\" , \"query\":\"SELECT * FROM wp_tt_attr_input_checkbox_radio\", \"text\":\"epithet\", \"label\":\"epithet\", \"value\":\"id\" , \"selected\":\"\" , \"disabled\":\"\" }', 'checkbox', NULL, '2020-03-26 19:19:00', '2020-03-26 19:19:00');
INSERT INTO `wp_tt_input_meta` VALUES (18, NULL, NULL, 'theme', 'ace/theme/chaos', NULL, NULL, '2020-03-29 17:25:46', '2020-03-29 17:25:46');
INSERT INTO `wp_tt_input_meta` VALUES (19, NULL, NULL, 'mode', 'ace/mode/javascript', NULL, NULL, '2020-04-02 22:07:10', '2020-04-02 22:07:10');
INSERT INTO `wp_tt_input_meta` VALUES (20, NULL, NULL, 'minLines', '5', NULL, NULL, '2020-04-02 22:07:12', '2020-04-02 22:07:12');
INSERT INTO `wp_tt_input_meta` VALUES (21, NULL, NULL, 'maxLines ', '30', NULL, NULL, '2020-04-02 22:07:28', '2020-04-02 22:07:28');
INSERT INTO `wp_tt_input_meta` VALUES (22, NULL, NULL, 'fontSize', '16px', NULL, NULL, '2020-04-02 22:33:58', '2020-04-02 22:33:58');
INSERT INTO `wp_tt_input_meta` VALUES (23, NULL, NULL, 'data-size', '', NULL, NULL, '2020-04-02 22:40:47', '2020-04-02 22:40:47');
INSERT INTO `wp_tt_input_meta` VALUES (24, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-04-19 01:53:30', '2020-04-19 01:53:30');
INSERT INTO `wp_tt_input_meta` VALUES (25, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-04-19 01:56:40', '2020-04-19 01:56:40');
INSERT INTO `wp_tt_input_meta` VALUES (26, NULL, NULL, 'data-onstyle', '', NULL, NULL, '2020-04-19 01:57:12', '2020-04-19 01:57:12');
INSERT INTO `wp_tt_input_meta` VALUES (27, NULL, NULL, 'data-offstyle', '', NULL, NULL, '2020-04-19 02:02:47', '2020-04-19 02:02:47');
INSERT INTO `wp_tt_input_meta` VALUES (28, NULL, NULL, 'data-on', 'By default any one can view.', NULL, NULL, '2020-04-19 02:05:28', '2020-04-19 02:05:28');
INSERT INTO `wp_tt_input_meta` VALUES (29, NULL, NULL, 'data-off', 'By default no one can view.', NULL, NULL, '2020-04-19 02:05:32', '2020-04-19 02:05:32');
INSERT INTO `wp_tt_input_meta` VALUES (30, NULL, NULL, 'data-style', '', NULL, NULL, '2020-04-19 02:22:51', '2020-04-19 02:22:51');
INSERT INTO `wp_tt_input_meta` VALUES (31, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-04-19 03:00:49', '2020-04-19 03:00:49');
INSERT INTO `wp_tt_input_meta` VALUES (32, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-04-19 03:00:49', '2020-04-19 03:00:49');
INSERT INTO `wp_tt_input_meta` VALUES (33, NULL, NULL, 'data-on', 'By default any one can edit.', NULL, NULL, '2020-04-19 03:00:54', '2020-04-19 03:00:54');
INSERT INTO `wp_tt_input_meta` VALUES (34, NULL, NULL, 'data-off', 'By default no one can edit.', NULL, NULL, '2020-04-19 03:00:54', '2020-04-19 03:00:54');
INSERT INTO `wp_tt_input_meta` VALUES (35, NULL, NULL, 'data-width', '280', NULL, NULL, '2020-04-19 03:02:37', '2020-04-19 03:02:37');
INSERT INTO `wp_tt_input_meta` VALUES (36, NULL, NULL, 'data-height', '40', NULL, NULL, '2020-04-19 03:02:37', '2020-04-19 03:02:37');
INSERT INTO `wp_tt_input_meta` VALUES (37, NULL, NULL, 'data-on', 'By default any one can add.', NULL, NULL, '2020-04-19 03:02:37', '2020-04-19 03:02:37');
INSERT INTO `wp_tt_input_meta` VALUES (38, NULL, NULL, 'data-off', 'By default no one can add.', NULL, NULL, '2020-04-19 03:02:37', '2020-04-19 03:02:37');

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
INSERT INTO `wp_tt_input_types` VALUES (1, 'Text Field', 'text_field', 'text', 'simple-text', 'sst_text', 'This is simple text input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (2, 'Search Field', 'search_field', 'search', 'simple-search', 'sst_search', 'This is simple search input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (3, 'Tel Field', 'tel_field', 'tel', 'simple-tel', 'sst_tel', 'This is simple tel input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (4, 'Url Field', 'url_field', 'url', 'simple-url', 'sst_url', 'This is simple url input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (5, 'Submit Field', 'submit_field', 'submit', 'simple-submit', 'sst_submit', 'This is simple submit input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (6, 'Range Field', 'range_field', 'range', 'simple-range', 'sst_range', 'This is simple range input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (7, 'Password Field', 'password_field', 'password', 'simple-password', 'sst_password', 'This is simple password input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (8, 'Number Field', 'number_field', 'number', 'simple-number', 'sst_number', 'This is simple number input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (9, 'Image Field', 'image_field', 'image', 'simple-image', 'sst_image', 'This is simple image input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (10, 'File Field', 'file_field', 'file', 'simple-file', 'sst_file', 'This is simple file input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (11, 'Email Field', 'email_field', 'email', 'simple-email', 'sst_email', 'This is simple email input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (12, 'Date Field', 'date_field', 'date', 'simple-date', 'sst_date', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (13, 'Datetime-local Field', 'datetime-local_field', 'datetime-local', 'simple-datetime-local', 'sst_datetime_local', 'This is simple datetime-local input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (14, 'Month Field', 'month_field', 'month', 'simple-month', 'sst_month', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (15, 'Time Field', 'time_field', 'time', 'simple-time', 'sst_time', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (16, 'Week Field', 'week_field', 'week', 'simple-week', 'sst_week', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (17, 'Datetime Field', 'datetime_field', 'datetime', 'simple-datetime', 'sst_datetime', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (18, 'Color Field', 'color_field', 'color', 'simple-color', 'sst_color', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (19, 'Checkbox Field', 'checkbox_field', 'checkbox', 'simple-checkbox', 'sst_checkbox', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (20, 'Radio Field', 'radio_field', 'radio', 'simple-radio', 'sst_radio', 'This is simple dat input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (21, 'Hidden Field', 'hidden_field', 'hidden', 'simple-hidden', 'sst_hidden', 'This is simple hidden input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (22, 'Select Field', 'select_field', 'select', 'simple-select', 'sst_select', 'This is simple select input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (23, 'Textarea Field', 'textarea_field', 'textarea', 'simple-textarea', 'sst_textarea', 'This is simple textarea input type as a HTML code!', 'Ehrajat', '2020-03-15 07:44:07', '2020-03-15 07:44:07');
INSERT INTO `wp_tt_input_types` VALUES (24, 'Depened Select Field', 'depend_select', 'select', 'depend-select', 'sst_depend_select', 'This is Depened Select Field!', 'Ehrajat', '2020-03-21 10:57:47', '2020-03-21 10:57:47');
INSERT INTO `wp_tt_input_types` VALUES (25, 'Code Editor', 'code_editor', 'hidden', 'code-editor', 'sst_code_editor', 'This is code editor by Ace editor!', 'Ehrajat', '2020-04-03 04:35:46', '2020-04-03 04:35:46');
INSERT INTO `wp_tt_input_types` VALUES (26, 'Checkbox Bootstrap Toggle Field', 'checkbox_bootstrap_toggle', 'checkbox', 'checkbox-bootstrap-toggle', 'sst_checkbox_bootstrap_toggle', 'This is Checkbox Bootstrap Toggle Field!', 'Ehrajat', '2020-04-18 16:55:57', '2020-04-18 16:55:57');
INSERT INTO `wp_tt_input_types` VALUES (27, 'Persian and gregorian datetime picker', 'persian-bootstrap4-datetime-picker', 'text', 'persian-bootstrap4-datetime-picker', 'sst_persian_bootstrap4_datetime_picker', 'This is persian datetime picker', 'Ehrajat', '2020-04-19 17:56:50', '2020-04-19 17:56:50');

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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_process
-- ----------------------------
INSERT INTO `wp_tt_process` VALUES (1, 'Input', '', '1', '', '', '', NULL, '2020-03-19 09:47:10', '2020-03-19 09:47:10');
INSERT INTO `wp_tt_process` VALUES (2, 'Input CheckBox Radio Specific Attributes ', '', '2', '', '', '', NULL, '2020-03-19 11:19:33', '2020-03-19 11:19:33');
INSERT INTO `wp_tt_process` VALUES (3, 'Input Color Specific Attributes ', '', '3', '', '', '', NULL, '2020-03-19 11:19:35', '2020-03-19 11:19:35');
INSERT INTO `wp_tt_process` VALUES (4, 'Input Date Time Specific Attributes ', '', '4', '', '', '', NULL, '2020-03-21 02:21:40', '2020-03-21 02:21:40');
INSERT INTO `wp_tt_process` VALUES (5, 'Input Email Specific Attributes ', '', '5', '', '', '', NULL, '2020-03-21 02:23:14', '2020-03-21 02:23:14');
INSERT INTO `wp_tt_process` VALUES (6, 'Input File Specific Attributes ', '', '6', '', '', '', NULL, '2020-03-21 02:23:19', '2020-03-21 02:23:19');
INSERT INTO `wp_tt_process` VALUES (7, 'Input Image Specific Attributes ', '', '7', '', '', '', NULL, '2020-03-21 02:23:27', '2020-03-21 02:23:27');
INSERT INTO `wp_tt_process` VALUES (8, 'Input Number Specific Attributes ', '', '8', '', '', '', NULL, '2020-03-21 02:23:41', '2020-03-21 02:23:41');
INSERT INTO `wp_tt_process` VALUES (9, 'Input Password Specific Attributes ', '', '9', '', '', '', NULL, '2020-03-21 02:23:48', '2020-03-21 02:23:48');
INSERT INTO `wp_tt_process` VALUES (10, 'Input Range Specific Attributes ', '', '10', '', '', '', NULL, '2020-03-21 02:23:54', '2020-03-21 02:23:54');
INSERT INTO `wp_tt_process` VALUES (11, 'Input Select Specific Attributes ', '', '11', '', '', '', NULL, '2020-03-21 02:24:08', '2020-03-21 02:24:08');
INSERT INTO `wp_tt_process` VALUES (12, 'Input Submit Specific Attributes ', '', '12', '', '', '', NULL, '2020-03-21 02:24:13', '2020-03-21 02:24:13');
INSERT INTO `wp_tt_process` VALUES (13, 'Input Tel URL Specific Attributes ', '', '13', '', '', '', NULL, '2020-03-21 02:24:14', '2020-03-21 02:24:14');
INSERT INTO `wp_tt_process` VALUES (14, 'Input Text Search Specific Attributes ', '', '14', '', '', '', NULL, '2020-03-21 02:25:43', '2020-03-21 02:25:43');
INSERT INTO `wp_tt_process` VALUES (15, 'Input TextArea Specific Attributes ', '', '15', '', '', '', NULL, '2020-03-21 02:25:51', '2020-03-21 02:25:51');
INSERT INTO `wp_tt_process` VALUES (16, 'Custom Attributes', '', '16', '', '', '', NULL, '2020-04-01 10:23:15', '2020-04-01 10:23:15');
INSERT INTO `wp_tt_process` VALUES (17, 'Global Attributes', '', '17', '', '', '', NULL, '2020-04-01 19:09:37', '2020-04-01 19:09:37');
INSERT INTO `wp_tt_process` VALUES (18, 'Global Attributes (Event Js)', '', '18', '', '', '', NULL, '2020-04-02 14:33:56', '2020-04-02 14:33:56');
INSERT INTO `wp_tt_process` VALUES (19, 'Global Attributes (Js Functions)', '', '19', '', '', '', NULL, '2020-04-02 17:30:31', '2020-04-02 17:30:31');
INSERT INTO `wp_tt_process` VALUES (20, 'Global Attributes (Classes)', '', '20', '', '', '', NULL, '2020-04-03 02:18:03', '2020-04-03 02:18:03');
INSERT INTO `wp_tt_process` VALUES (21, 'Global Attributes (Data)', '', '21', '', '', '', NULL, '2020-04-03 02:18:18', '2020-04-03 02:18:18');
INSERT INTO `wp_tt_process` VALUES (22, 'Global Attributes (ItemProps)', '', '22', '', '', '', NULL, '2020-04-03 02:18:21', '2020-04-03 02:18:21');
INSERT INTO `wp_tt_process` VALUES (23, 'Global Attributes (ItemRefs)', '', '23', '', '', '', NULL, '2020-04-03 02:18:26', '2020-04-03 02:18:26');
INSERT INTO `wp_tt_process` VALUES (24, 'Global Attributes (Styles)', '', '24', '', '', '', NULL, '2020-04-03 02:18:28', '2020-04-03 02:18:28');
INSERT INTO `wp_tt_process` VALUES (25, 'Input Specific Attributes (Lists)', '', '25', '', '', '', NULL, '2020-04-03 02:18:29', '2020-04-03 02:18:29');
INSERT INTO `wp_tt_process` VALUES (26, 'Input Specific Attributes (Options)', '', '26', '', '', '', NULL, '2020-04-03 02:18:30', '2020-04-03 02:18:30');
INSERT INTO `wp_tt_process` VALUES (27, 'Input Specific Attributes (Option Groups)', '', '27', '', '', '', NULL, '2020-04-03 02:18:32', '2020-04-03 02:18:32');
INSERT INTO `wp_tt_process` VALUES (28, 'Input Specific Attributes (File Accept)', '', '28', '', '', '', NULL, '2020-04-03 02:18:35', '2020-04-03 02:18:35');
INSERT INTO `wp_tt_process` VALUES (29, 'Input Attribute Changer Condition', '', '29', '', '', '', NULL, '2020-04-03 02:18:38', '2020-04-03 02:18:38');
INSERT INTO `wp_tt_process` VALUES (30, 'Input Attribute Changer', '', '30', '', '', '', NULL, '2020-04-03 02:18:41', '2020-04-03 02:18:41');
INSERT INTO `wp_tt_process` VALUES (31, 'Input Meta', '', '31', '', '', '', NULL, '2020-04-18 05:14:00', '2020-04-18 05:14:00');
INSERT INTO `wp_tt_process` VALUES (32, 'Tag', '', '32', '', '1', '', NULL, '2020-04-18 05:14:19', '2020-04-18 05:14:19');
INSERT INTO `wp_tt_process` VALUES (33, 'User Access', '', '33', '', '', '', NULL, '2020-04-18 08:58:42', '2020-04-18 08:58:42');
INSERT INTO `wp_tt_process` VALUES (34, 'Eval', '', '34', '', '', '', NULL, '2020-04-18 08:58:46', '2020-04-18 08:58:46');
INSERT INTO `wp_tt_process` VALUES (35, 'Variable', '', '35', '', '', '', NULL, '2020-04-19 11:02:31', '2020-04-19 11:02:31');
INSERT INTO `wp_tt_process` VALUES (36, 'Option', '', '36', '', '', '', NULL, '2020-04-19 11:02:32', '2020-04-19 11:02:32');

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
  `save_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_tags
-- ----------------------------
INSERT INTO `wp_tt_tags` VALUES (1, 'Form Tag', 'Form-Tag', '<div style=\"padding:12px;\"><h2 style=\"text-shadow:1px 1px 5px blue;\">{own-data:epithet}</h2>', '</div>', NULL, NULL, NULL, '2020-03-16 06:08:08', '2020-03-16 06:08:08', NULL);
INSERT INTO `wp_tt_tags` VALUES (2, 'Block Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:01', '2020-03-16 06:44:01', NULL);
INSERT INTO `wp_tt_tags` VALUES (3, 'FieldSet Tag', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-16 06:44:03', '2020-03-16 06:44:03', NULL);
INSERT INTO `wp_tt_tags` VALUES (4, 'Bootstrap Form Input (With Label)', 'Bootstrap Form-Input-With-Label', '<div class=\"form-group\"><label for=\"{attr:id}\">{own-data:epithet}</label>--{attr:id}', '<small id=\"passwordHelpBlock\" class=\"form-text text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-03-16 06:09:12', '2020-03-16 06:09:12', NULL);
INSERT INTO `wp_tt_tags` VALUES (5, 'Bootstrap Form Checkbox Input', NULL, '<div class=\"form-group form-check\">\r\n', '<label class=\"form-check-label\" for=\"{attr:id}\">{own-data:epithet}</label><small class=\"text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-03-17 06:08:12', '2020-03-17 06:08:12', NULL);
INSERT INTO `wp_tt_tags` VALUES (6, 'Bootstrap Form Toggle Checkbox Input', NULL, '<div class=\"form-group form-check\">\r\n', '<small class=\"text-muted\">{own-data:description}</small></div>', NULL, NULL, NULL, '2020-04-19 03:05:25', '2020-04-19 03:05:25', NULL);
INSERT INTO `wp_tt_tags` VALUES (7, 'bbbbbbb', 'bbbbbbbbbbbb', 'bbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbbbb', 'add-new-tag,2,4', 'bbbbbbbbbb', '0', '2020-05-26 08:34:42', '2020-05-26 08:34:42', '0_5ecc95459c13a9.61135724');

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
) ENGINE = InnoDB AUTO_INCREMENT = 356 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_tt_vals
-- ----------------------------
INSERT INTO `wp_tt_vals` VALUES (355, '0_5ecc95459c13a9.61135724', 0x7B22223A6E756C6C2C22657069746865742D31395B305D223A2262626262626262222C22736C75672D31395B305D223A22626262626262626262626262222C227461675F6265666F72652D31395B305D223A22626262626262626262626262222C227461675F61667465722D31395B305D223A2262626262626262626262626262626262626262626262222C226465736372697074696F6E2D31395B305D223A2262626262626262626262222C22706172656E745F7461675F69642D31395B305D5B305D223A226164642D6E65772D746167222C22706172656E745F7461675F69642D31395B305D5B315D223A2232222C22706172656E745F7461675F69642D31395B305D5B325D223A2234227D, '0', '2020-05-26 08:34:41', '2020-05-26 08:34:42');

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
  `user_registered` datetime(0) NOT NULL,
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
