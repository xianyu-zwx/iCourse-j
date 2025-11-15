/*
 Navicat Premium Data Transfer

 Source Server         : scoremanage
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42)
 Source Host           : localhost:3306
 Source Schema         : scoremanage

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42)
 File Encoding         : 65001

 Date: 15/11/2025 19:07:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `t_attendance_record`;
CREATE TABLE `t_attendance_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '考勤ID（主键）',
  `device_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '考勤设备ID',
  `face_id` int NOT NULL COMMENT '人脸ID（关联t_student.face_id）',
  `timestamp` int NOT NULL COMMENT '考勤时间戳（秒级）',
  `visual_mode` int NULL DEFAULT NULL COMMENT '识别模式（1：正常识别）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_attendance_face`(`face_id` ASC) USING BTREE COMMENT '人脸ID索引',
  INDEX `idx_attendance_time`(`timestamp` ASC) USING BTREE COMMENT '考勤时间索引'
) ENGINE = InnoDB AUTO_INCREMENT = 1013 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '考勤记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attendance_record
-- ----------------------------
INSERT INTO `t_attendance_record` VALUES (58, '001', 535, 1763230368, 0, '2025-11-15 18:12:47');
INSERT INTO `t_attendance_record` VALUES (59, '001', 536, 1763230369, 0, '2025-11-15 18:12:48');
INSERT INTO `t_attendance_record` VALUES (60, '001', 537, 1763230370, 0, '2025-11-15 18:12:50');
INSERT INTO `t_attendance_record` VALUES (61, '001', 538, 1763230371, 0, '2025-11-15 18:12:51');
INSERT INTO `t_attendance_record` VALUES (62, '001', 539, 1763230372, 0, '2025-11-15 18:12:52');
INSERT INTO `t_attendance_record` VALUES (63, '001', 540, 1763230374, 0, '2025-11-15 18:12:53');
INSERT INTO `t_attendance_record` VALUES (64, '001', 541, 1763230375, 0, '2025-11-15 18:12:54');
INSERT INTO `t_attendance_record` VALUES (65, '001', 542, 1763230376, 0, '2025-11-15 18:12:56');
INSERT INTO `t_attendance_record` VALUES (66, '001', 543, 1763230377, 0, '2025-11-15 18:12:57');
INSERT INTO `t_attendance_record` VALUES (67, '001', 544, 1763230378, 0, '2025-11-15 18:12:58');
INSERT INTO `t_attendance_record` VALUES (68, '001', 545, 1763230379, 0, '2025-11-15 18:12:59');
INSERT INTO `t_attendance_record` VALUES (69, '001', 546, 1763230381, 0, '2025-11-15 18:13:00');
INSERT INTO `t_attendance_record` VALUES (70, '001', 547, 1763230382, 0, '2025-11-15 18:13:01');
INSERT INTO `t_attendance_record` VALUES (71, '001', 548, 1763230383, 0, '2025-11-15 18:13:02');
INSERT INTO `t_attendance_record` VALUES (72, '001', 549, 1763230384, 0, '2025-11-15 18:13:04');
INSERT INTO `t_attendance_record` VALUES (73, '001', 550, 1763230385, 0, '2025-11-15 18:13:05');
INSERT INTO `t_attendance_record` VALUES (74, '001', 551, 1763230386, 0, '2025-11-15 18:13:06');
INSERT INTO `t_attendance_record` VALUES (75, '001', 552, 1763230387, 0, '2025-11-15 18:13:07');
INSERT INTO `t_attendance_record` VALUES (76, '001', 553, 1763230389, 0, '2025-11-15 18:13:08');
INSERT INTO `t_attendance_record` VALUES (77, '001', 554, 1763230390, 0, '2025-11-15 18:13:09');
INSERT INTO `t_attendance_record` VALUES (78, '001', 555, 1763230391, 0, '2025-11-15 18:13:10');
INSERT INTO `t_attendance_record` VALUES (79, '001', 556, 1763230392, 0, '2025-11-15 18:13:12');
INSERT INTO `t_attendance_record` VALUES (80, '001', 557, 1763230393, 0, '2025-11-15 18:13:13');
INSERT INTO `t_attendance_record` VALUES (81, '001', 558, 1763230394, 0, '2025-11-15 18:13:14');
INSERT INTO `t_attendance_record` VALUES (82, '001', 559, 1763230396, 0, '2025-11-15 18:13:15');
INSERT INTO `t_attendance_record` VALUES (83, '001', 560, 1763230397, 0, '2025-11-15 18:13:16');
INSERT INTO `t_attendance_record` VALUES (84, '001', 561, 1763230398, 0, '2025-11-15 18:13:18');
INSERT INTO `t_attendance_record` VALUES (85, '001', 562, 1763230399, 0, '2025-11-15 18:13:19');
INSERT INTO `t_attendance_record` VALUES (86, '001', 563, 1763230400, 0, '2025-11-15 18:13:20');
INSERT INTO `t_attendance_record` VALUES (87, '001', 564, 1763230402, 0, '2025-11-15 18:13:21');
INSERT INTO `t_attendance_record` VALUES (88, '001', 565, 1763230403, 0, '2025-11-15 18:13:22');
INSERT INTO `t_attendance_record` VALUES (89, '001', 566, 1763230404, 0, '2025-11-15 18:13:24');
INSERT INTO `t_attendance_record` VALUES (90, '001', 567, 1763230405, 0, '2025-11-15 18:13:25');
INSERT INTO `t_attendance_record` VALUES (91, '001', 568, 1763230406, 0, '2025-11-15 18:13:26');
INSERT INTO `t_attendance_record` VALUES (92, '001', 569, 1763230408, 0, '2025-11-15 18:13:27');
INSERT INTO `t_attendance_record` VALUES (93, '001', 570, 1763230409, 0, '2025-11-15 18:13:28');
INSERT INTO `t_attendance_record` VALUES (94, '001', 571, 1763230410, 0, '2025-11-15 18:13:30');
INSERT INTO `t_attendance_record` VALUES (95, '001', 572, 1763230411, 0, '2025-11-15 18:13:31');
INSERT INTO `t_attendance_record` VALUES (96, '001', 573, 1763230412, 0, '2025-11-15 18:13:32');
INSERT INTO `t_attendance_record` VALUES (97, '001', 574, 1763230414, 0, '2025-11-15 18:13:33');
INSERT INTO `t_attendance_record` VALUES (98, '001', 575, 1763230415, 0, '2025-11-15 18:13:34');
INSERT INTO `t_attendance_record` VALUES (99, '001', 576, 1763230416, 0, '2025-11-15 18:13:36');
INSERT INTO `t_attendance_record` VALUES (100, '001', 577, 1763230417, 0, '2025-11-15 18:13:37');
INSERT INTO `t_attendance_record` VALUES (101, '001', 578, 1763230418, 0, '2025-11-15 18:13:38');
INSERT INTO `t_attendance_record` VALUES (102, '001', 579, 1763230420, 0, '2025-11-15 18:13:39');
INSERT INTO `t_attendance_record` VALUES (103, '001', 580, 1763230421, 0, '2025-11-15 18:13:40');
INSERT INTO `t_attendance_record` VALUES (104, '001', 581, 1763230422, 0, '2025-11-15 18:13:42');
INSERT INTO `t_attendance_record` VALUES (105, '001', 582, 1763230423, 0, '2025-11-15 18:13:43');
INSERT INTO `t_attendance_record` VALUES (106, '001', 583, 1763230425, 0, '2025-11-15 18:13:44');
INSERT INTO `t_attendance_record` VALUES (107, '001', 584, 1763230426, 0, '2025-11-15 18:13:45');
INSERT INTO `t_attendance_record` VALUES (108, '001', 585, 1763230427, 0, '2025-11-15 18:13:47');
INSERT INTO `t_attendance_record` VALUES (109, '001', 586, 1763230428, 0, '2025-11-15 18:13:48');
INSERT INTO `t_attendance_record` VALUES (110, '001', 587, 1763230429, 0, '2025-11-15 18:13:49');
INSERT INTO `t_attendance_record` VALUES (111, '001', 588, 1763230431, 0, '2025-11-15 18:13:50');
INSERT INTO `t_attendance_record` VALUES (112, '001', 589, 1763230432, 0, '2025-11-15 18:13:51');
INSERT INTO `t_attendance_record` VALUES (113, '001', 590, 1763230433, 0, '2025-11-15 18:13:53');
INSERT INTO `t_attendance_record` VALUES (114, '001', 591, 1763230434, 0, '2025-11-15 18:13:54');
INSERT INTO `t_attendance_record` VALUES (115, '001', 592, 1763230436, 0, '2025-11-15 18:13:55');
INSERT INTO `t_attendance_record` VALUES (116, '001', 593, 1763230437, 0, '2025-11-15 18:13:56');
INSERT INTO `t_attendance_record` VALUES (117, '001', 594, 1763230438, 0, '2025-11-15 18:13:58');
INSERT INTO `t_attendance_record` VALUES (118, '001', 595, 1763230439, 0, '2025-11-15 18:13:59');
INSERT INTO `t_attendance_record` VALUES (119, '001', 596, 1763230440, 0, '2025-11-15 18:14:00');
INSERT INTO `t_attendance_record` VALUES (120, '001', 597, 1763230442, 0, '2025-11-15 18:14:01');
INSERT INTO `t_attendance_record` VALUES (121, '001', 598, 1763230443, 0, '2025-11-15 18:14:02');
INSERT INTO `t_attendance_record` VALUES (122, '001', 599, 1763230444, 0, '2025-11-15 18:14:03');
INSERT INTO `t_attendance_record` VALUES (123, '001', 600, 1763230445, 0, '2025-11-15 18:14:05');
INSERT INTO `t_attendance_record` VALUES (124, '001', 601, 1763230446, 0, '2025-11-15 18:14:06');
INSERT INTO `t_attendance_record` VALUES (125, '001', 602, 1763230447, 0, '2025-11-15 18:14:07');
INSERT INTO `t_attendance_record` VALUES (126, '001', 603, 1763230449, 0, '2025-11-15 18:14:08');
INSERT INTO `t_attendance_record` VALUES (127, '001', 604, 1763230450, 0, '2025-11-15 18:14:09');
INSERT INTO `t_attendance_record` VALUES (128, '001', 605, 1763230451, 0, '2025-11-15 18:14:11');
INSERT INTO `t_attendance_record` VALUES (129, '001', 606, 1763230452, 0, '2025-11-15 18:14:12');
INSERT INTO `t_attendance_record` VALUES (130, '001', 607, 1763230453, 0, '2025-11-15 18:14:13');
INSERT INTO `t_attendance_record` VALUES (131, '001', 608, 1763230455, 0, '2025-11-15 18:14:14');
INSERT INTO `t_attendance_record` VALUES (132, '001', 609, 1763230456, 0, '2025-11-15 18:14:15');
INSERT INTO `t_attendance_record` VALUES (133, '001', 610, 1763230457, 0, '2025-11-15 18:14:16');
INSERT INTO `t_attendance_record` VALUES (134, '001', 611, 1763230458, 0, '2025-11-15 18:14:18');
INSERT INTO `t_attendance_record` VALUES (135, '001', 612, 1763230459, 0, '2025-11-15 18:14:19');
INSERT INTO `t_attendance_record` VALUES (136, '001', 613, 1763230461, 0, '2025-11-15 18:14:20');
INSERT INTO `t_attendance_record` VALUES (137, '001', 614, 1763230462, 0, '2025-11-15 18:14:21');
INSERT INTO `t_attendance_record` VALUES (138, '001', 615, 1763230463, 0, '2025-11-15 18:14:23');
INSERT INTO `t_attendance_record` VALUES (139, '001', 616, 1763230464, 0, '2025-11-15 18:14:24');
INSERT INTO `t_attendance_record` VALUES (140, '001', 617, 1763230465, 0, '2025-11-15 18:14:25');
INSERT INTO `t_attendance_record` VALUES (141, '001', 618, 1763230467, 0, '2025-11-15 18:14:26');
INSERT INTO `t_attendance_record` VALUES (142, '001', 619, 1763230468, 0, '2025-11-15 18:14:27');
INSERT INTO `t_attendance_record` VALUES (143, '001', 620, 1763230469, 0, '2025-11-15 18:14:29');
INSERT INTO `t_attendance_record` VALUES (144, '001', 621, 1763230470, 0, '2025-11-15 18:14:30');
INSERT INTO `t_attendance_record` VALUES (145, '001', 622, 1763230471, 0, '2025-11-15 18:14:31');
INSERT INTO `t_attendance_record` VALUES (146, '001', 623, 1763230473, 0, '2025-11-15 18:14:32');
INSERT INTO `t_attendance_record` VALUES (147, '001', 624, 1763230474, 0, '2025-11-15 18:14:33');
INSERT INTO `t_attendance_record` VALUES (148, '001', 625, 1763230475, 0, '2025-11-15 18:14:35');
INSERT INTO `t_attendance_record` VALUES (149, '001', 626, 1763230476, 0, '2025-11-15 18:14:36');
INSERT INTO `t_attendance_record` VALUES (150, '001', 627, 1763230477, 0, '2025-11-15 18:14:37');
INSERT INTO `t_attendance_record` VALUES (151, '001', 628, 1763230479, 0, '2025-11-15 18:14:38');
INSERT INTO `t_attendance_record` VALUES (152, '001', 629, 1763230480, 0, '2025-11-15 18:14:39');
INSERT INTO `t_attendance_record` VALUES (153, '001', 630, 1763230481, 0, '2025-11-15 18:14:41');
INSERT INTO `t_attendance_record` VALUES (154, '001', 631, 1763230482, 0, '2025-11-15 18:14:42');
INSERT INTO `t_attendance_record` VALUES (155, '001', 632, 1763230484, 0, '2025-11-15 18:14:43');
INSERT INTO `t_attendance_record` VALUES (156, '001', 633, 1763230485, 0, '2025-11-15 18:14:44');
INSERT INTO `t_attendance_record` VALUES (157, '001', 634, 1763230486, 0, '2025-11-15 18:14:46');
INSERT INTO `t_attendance_record` VALUES (158, '001', 635, 1763230487, 0, '2025-11-15 18:14:47');
INSERT INTO `t_attendance_record` VALUES (159, '001', 636, 1763230488, 0, '2025-11-15 18:14:48');
INSERT INTO `t_attendance_record` VALUES (160, '001', 637, 1763230489, 0, '2025-11-15 18:14:49');
INSERT INTO `t_attendance_record` VALUES (161, '001', 638, 1763230491, 0, '2025-11-15 18:14:50');
INSERT INTO `t_attendance_record` VALUES (162, '001', 639, 1763230492, 0, '2025-11-15 18:14:52');
INSERT INTO `t_attendance_record` VALUES (163, '001', 640, 1763230493, 0, '2025-11-15 18:14:53');
INSERT INTO `t_attendance_record` VALUES (164, '001', 641, 1763230494, 0, '2025-11-15 18:14:54');
INSERT INTO `t_attendance_record` VALUES (165, '001', 642, 1763230496, 0, '2025-11-15 18:14:55');
INSERT INTO `t_attendance_record` VALUES (166, '001', 643, 1763230497, 0, '2025-11-15 18:14:56');
INSERT INTO `t_attendance_record` VALUES (167, '001', 644, 1763230498, 0, '2025-11-15 18:14:57');
INSERT INTO `t_attendance_record` VALUES (168, '001', 645, 1763230499, 0, '2025-11-15 18:14:59');
INSERT INTO `t_attendance_record` VALUES (169, '001', 646, 1763230500, 0, '2025-11-15 18:15:00');
INSERT INTO `t_attendance_record` VALUES (170, '001', 647, 1763230501, 0, '2025-11-15 18:15:01');
INSERT INTO `t_attendance_record` VALUES (171, '001', 648, 1763230503, 0, '2025-11-15 18:15:02');
INSERT INTO `t_attendance_record` VALUES (172, '001', 649, 1763230504, 0, '2025-11-15 18:15:03');
INSERT INTO `t_attendance_record` VALUES (173, '001', 650, 1763230505, 0, '2025-11-15 18:15:05');
INSERT INTO `t_attendance_record` VALUES (174, '001', 651, 1763230506, 0, '2025-11-15 18:15:06');
INSERT INTO `t_attendance_record` VALUES (175, '001', 652, 1763230507, 0, '2025-11-15 18:15:07');
INSERT INTO `t_attendance_record` VALUES (176, '001', 653, 1763230509, 0, '2025-11-15 18:15:08');
INSERT INTO `t_attendance_record` VALUES (177, '001', 654, 1763230510, 0, '2025-11-15 18:15:09');
INSERT INTO `t_attendance_record` VALUES (178, '001', 655, 1763230511, 0, '2025-11-15 18:15:11');
INSERT INTO `t_attendance_record` VALUES (179, '001', 656, 1763230512, 0, '2025-11-15 18:15:12');
INSERT INTO `t_attendance_record` VALUES (180, '001', 657, 1763230513, 0, '2025-11-15 18:15:13');
INSERT INTO `t_attendance_record` VALUES (181, '001', 658, 1763230514, 0, '2025-11-15 18:15:14');
INSERT INTO `t_attendance_record` VALUES (182, '001', 659, 1763230516, 0, '2025-11-15 18:15:15');
INSERT INTO `t_attendance_record` VALUES (183, '001', 660, 1763230517, 0, '2025-11-15 18:15:16');
INSERT INTO `t_attendance_record` VALUES (184, '001', 661, 1763230518, 0, '2025-11-15 18:15:18');
INSERT INTO `t_attendance_record` VALUES (185, '001', 662, 1763230519, 0, '2025-11-15 18:15:19');
INSERT INTO `t_attendance_record` VALUES (186, '001', 663, 1763230521, 0, '2025-11-15 18:15:20');
INSERT INTO `t_attendance_record` VALUES (187, '001', 664, 1763230522, 0, '2025-11-15 18:15:21');
INSERT INTO `t_attendance_record` VALUES (188, '001', 665, 1763230523, 0, '2025-11-15 18:15:22');
INSERT INTO `t_attendance_record` VALUES (189, '001', 666, 1763230524, 0, '2025-11-15 18:15:24');
INSERT INTO `t_attendance_record` VALUES (190, '001', 667, 1763230525, 0, '2025-11-15 18:15:25');
INSERT INTO `t_attendance_record` VALUES (191, '001', 668, 1763230527, 0, '2025-11-15 18:15:26');
INSERT INTO `t_attendance_record` VALUES (192, '001', 669, 1763230528, 0, '2025-11-15 18:15:27');
INSERT INTO `t_attendance_record` VALUES (193, '001', 670, 1763230529, 0, '2025-11-15 18:15:29');
INSERT INTO `t_attendance_record` VALUES (194, '001', 671, 1763230530, 0, '2025-11-15 18:15:30');
INSERT INTO `t_attendance_record` VALUES (195, '001', 672, 1763230531, 0, '2025-11-15 18:15:31');
INSERT INTO `t_attendance_record` VALUES (196, '001', 673, 1763230533, 0, '2025-11-15 18:15:32');
INSERT INTO `t_attendance_record` VALUES (197, '001', 674, 1763230534, 0, '2025-11-15 18:15:33');
INSERT INTO `t_attendance_record` VALUES (198, '001', 675, 1763230535, 0, '2025-11-15 18:15:35');
INSERT INTO `t_attendance_record` VALUES (199, '001', 676, 1763230536, 0, '2025-11-15 18:15:36');
INSERT INTO `t_attendance_record` VALUES (200, '001', 677, 1763230537, 0, '2025-11-15 18:15:37');
INSERT INTO `t_attendance_record` VALUES (201, '001', 678, 1763230539, 0, '2025-11-15 18:15:38');
INSERT INTO `t_attendance_record` VALUES (202, '001', 679, 1763230540, 0, '2025-11-15 18:15:39');
INSERT INTO `t_attendance_record` VALUES (203, '001', 680, 1763230541, 0, '2025-11-15 18:15:41');
INSERT INTO `t_attendance_record` VALUES (204, '001', 681, 1763230542, 0, '2025-11-15 18:15:42');
INSERT INTO `t_attendance_record` VALUES (205, '001', 682, 1763230543, 0, '2025-11-15 18:15:43');
INSERT INTO `t_attendance_record` VALUES (206, '001', 683, 1763230545, 0, '2025-11-15 18:15:44');
INSERT INTO `t_attendance_record` VALUES (207, '001', 684, 1763230546, 0, '2025-11-15 18:15:45');
INSERT INTO `t_attendance_record` VALUES (208, '001', 685, 1763230547, 0, '2025-11-15 18:15:47');
INSERT INTO `t_attendance_record` VALUES (209, '001', 686, 1763230548, 0, '2025-11-15 18:15:48');
INSERT INTO `t_attendance_record` VALUES (210, '001', 687, 1763230549, 0, '2025-11-15 18:15:49');
INSERT INTO `t_attendance_record` VALUES (211, '001', 688, 1763230551, 0, '2025-11-15 18:15:50');
INSERT INTO `t_attendance_record` VALUES (212, '001', 689, 1763230552, 0, '2025-11-15 18:15:51');
INSERT INTO `t_attendance_record` VALUES (213, '001', 690, 1763230553, 0, '2025-11-15 18:15:52');
INSERT INTO `t_attendance_record` VALUES (214, '001', 691, 1763230554, 0, '2025-11-15 18:15:54');
INSERT INTO `t_attendance_record` VALUES (215, '001', 692, 1763230555, 0, '2025-11-15 18:15:55');
INSERT INTO `t_attendance_record` VALUES (216, '001', 693, 1763230557, 0, '2025-11-15 18:15:56');
INSERT INTO `t_attendance_record` VALUES (217, '001', 694, 1763230558, 0, '2025-11-15 18:15:57');
INSERT INTO `t_attendance_record` VALUES (218, '001', 695, 1763230559, 0, '2025-11-15 18:15:58');
INSERT INTO `t_attendance_record` VALUES (219, '001', 696, 1763230560, 0, '2025-11-15 18:16:00');
INSERT INTO `t_attendance_record` VALUES (220, '001', 697, 1763230561, 0, '2025-11-15 18:16:01');
INSERT INTO `t_attendance_record` VALUES (221, '001', 698, 1763230562, 0, '2025-11-15 18:16:02');
INSERT INTO `t_attendance_record` VALUES (222, '001', 699, 1763230564, 0, '2025-11-15 18:16:03');
INSERT INTO `t_attendance_record` VALUES (223, '001', 700, 1763230565, 0, '2025-11-15 18:16:04');
INSERT INTO `t_attendance_record` VALUES (224, '001', 701, 1763230566, 0, '2025-11-15 18:16:06');
INSERT INTO `t_attendance_record` VALUES (225, '001', 702, 1763230567, 0, '2025-11-15 18:16:07');
INSERT INTO `t_attendance_record` VALUES (226, '001', 703, 1763230569, 0, '2025-11-15 18:16:08');
INSERT INTO `t_attendance_record` VALUES (227, '001', 704, 1763230570, 0, '2025-11-15 18:16:09');
INSERT INTO `t_attendance_record` VALUES (228, '001', 705, 1763230571, 0, '2025-11-15 18:16:11');
INSERT INTO `t_attendance_record` VALUES (229, '001', 706, 1763230572, 0, '2025-11-15 18:16:12');
INSERT INTO `t_attendance_record` VALUES (230, '001', 707, 1763230573, 0, '2025-11-15 18:16:13');
INSERT INTO `t_attendance_record` VALUES (231, '001', 708, 1763230575, 0, '2025-11-15 18:16:14');
INSERT INTO `t_attendance_record` VALUES (232, '001', 709, 1763230576, 0, '2025-11-15 18:16:15');
INSERT INTO `t_attendance_record` VALUES (233, '001', 710, 1763230577, 0, '2025-11-15 18:16:17');
INSERT INTO `t_attendance_record` VALUES (234, '001', 711, 1763230578, 0, '2025-11-15 18:16:18');
INSERT INTO `t_attendance_record` VALUES (235, '001', 712, 1763230579, 0, '2025-11-15 18:16:19');
INSERT INTO `t_attendance_record` VALUES (236, '001', 722, 1763230591, 0, '2025-11-15 18:16:31');
INSERT INTO `t_attendance_record` VALUES (237, '001', 723, 1763230592, 0, '2025-11-15 18:16:31');
INSERT INTO `t_attendance_record` VALUES (238, '001', 724, 1763230593, 0, '2025-11-15 18:16:33');
INSERT INTO `t_attendance_record` VALUES (239, '001', 725, 1763230594, 0, '2025-11-15 18:16:34');
INSERT INTO `t_attendance_record` VALUES (240, '001', 726, 1763230596, 0, '2025-11-15 18:16:35');
INSERT INTO `t_attendance_record` VALUES (241, '001', 727, 1763230597, 0, '2025-11-15 18:16:36');
INSERT INTO `t_attendance_record` VALUES (242, '001', 728, 1763230598, 0, '2025-11-15 18:16:38');
INSERT INTO `t_attendance_record` VALUES (243, '001', 729, 1763230599, 0, '2025-11-15 18:16:39');
INSERT INTO `t_attendance_record` VALUES (244, '001', 730, 1763230600, 0, '2025-11-15 18:16:40');
INSERT INTO `t_attendance_record` VALUES (245, '001', 731, 1763230601, 0, '2025-11-15 18:16:41');
INSERT INTO `t_attendance_record` VALUES (246, '001', 732, 1763230603, 0, '2025-11-15 18:16:42');
INSERT INTO `t_attendance_record` VALUES (247, '001', 733, 1763230604, 0, '2025-11-15 18:16:44');
INSERT INTO `t_attendance_record` VALUES (248, '001', 734, 1763230605, 0, '2025-11-15 18:16:45');
INSERT INTO `t_attendance_record` VALUES (249, '001', 735, 1763230606, 0, '2025-11-15 18:16:46');
INSERT INTO `t_attendance_record` VALUES (250, '001', 736, 1763230607, 0, '2025-11-15 18:16:47');
INSERT INTO `t_attendance_record` VALUES (251, '001', 737, 1763230609, 0, '2025-11-15 18:16:48');
INSERT INTO `t_attendance_record` VALUES (252, '001', 738, 1763230610, 0, '2025-11-15 18:16:49');
INSERT INTO `t_attendance_record` VALUES (253, '001', 739, 1763230611, 0, '2025-11-15 18:16:51');
INSERT INTO `t_attendance_record` VALUES (254, '001', 740, 1763230612, 0, '2025-11-15 18:16:52');
INSERT INTO `t_attendance_record` VALUES (255, '001', 741, 1763230613, 0, '2025-11-15 18:16:53');
INSERT INTO `t_attendance_record` VALUES (256, '001', 742, 1763230615, 0, '2025-11-15 18:16:54');
INSERT INTO `t_attendance_record` VALUES (257, '001', 743, 1763230616, 0, '2025-11-15 18:16:55');
INSERT INTO `t_attendance_record` VALUES (258, '001', 744, 1763230617, 0, '2025-11-15 18:16:56');
INSERT INTO `t_attendance_record` VALUES (259, '001', 745, 1763230618, 0, '2025-11-15 18:16:58');
INSERT INTO `t_attendance_record` VALUES (260, '001', 746, 1763230619, 0, '2025-11-15 18:16:59');
INSERT INTO `t_attendance_record` VALUES (261, '001', 747, 1763230620, 0, '2025-11-15 18:17:00');
INSERT INTO `t_attendance_record` VALUES (262, '001', 748, 1763230622, 0, '2025-11-15 18:17:01');
INSERT INTO `t_attendance_record` VALUES (263, '001', 749, 1763230623, 0, '2025-11-15 18:17:02');
INSERT INTO `t_attendance_record` VALUES (264, '001', 750, 1763230624, 0, '2025-11-15 18:17:03');
INSERT INTO `t_attendance_record` VALUES (265, '001', 751, 1763230625, 0, '2025-11-15 18:17:05');
INSERT INTO `t_attendance_record` VALUES (266, '001', 752, 1763230626, 0, '2025-11-15 18:17:06');
INSERT INTO `t_attendance_record` VALUES (267, '001', 753, 1763230627, 0, '2025-11-15 18:17:07');
INSERT INTO `t_attendance_record` VALUES (268, '001', 754, 1763230629, 0, '2025-11-15 18:17:08');
INSERT INTO `t_attendance_record` VALUES (269, '001', 755, 1763230630, 0, '2025-11-15 18:17:09');
INSERT INTO `t_attendance_record` VALUES (270, '001', 1, 1763230648, 0, '2025-11-15 18:17:27');
INSERT INTO `t_attendance_record` VALUES (271, '001', 1, 1763230649, 0, '2025-11-15 18:17:29');
INSERT INTO `t_attendance_record` VALUES (272, '001', 1, 1763230650, 0, '2025-11-15 18:17:30');
INSERT INTO `t_attendance_record` VALUES (273, '001', 1, 1763230651, 0, '2025-11-15 18:17:31');
INSERT INTO `t_attendance_record` VALUES (274, '001', 1, 1763230652, 0, '2025-11-15 18:17:32');
INSERT INTO `t_attendance_record` VALUES (275, '001', 1, 1763230654, 0, '2025-11-15 18:17:33');
INSERT INTO `t_attendance_record` VALUES (276, '001', 1, 1763230655, 0, '2025-11-15 18:17:34');
INSERT INTO `t_attendance_record` VALUES (277, '001', 1, 1763230656, 0, '2025-11-15 18:17:35');
INSERT INTO `t_attendance_record` VALUES (278, '001', 1, 1763230657, 0, '2025-11-15 18:17:37');
INSERT INTO `t_attendance_record` VALUES (279, '001', 1, 1763230658, 0, '2025-11-15 18:17:38');
INSERT INTO `t_attendance_record` VALUES (280, '001', 1, 1763230659, 0, '2025-11-15 18:17:39');
INSERT INTO `t_attendance_record` VALUES (281, '001', 1, 1763230661, 0, '2025-11-15 18:17:40');
INSERT INTO `t_attendance_record` VALUES (282, '001', 1, 1763230662, 0, '2025-11-15 18:17:41');
INSERT INTO `t_attendance_record` VALUES (283, '001', 1, 1763230663, 0, '2025-11-15 18:17:42');
INSERT INTO `t_attendance_record` VALUES (284, '001', 1, 1763230664, 0, '2025-11-15 18:17:43');
INSERT INTO `t_attendance_record` VALUES (285, '001', 1, 1763230665, 0, '2025-11-15 18:17:45');
INSERT INTO `t_attendance_record` VALUES (286, '001', 1, 1763230666, 0, '2025-11-15 18:17:46');
INSERT INTO `t_attendance_record` VALUES (287, '001', 1, 1763230667, 0, '2025-11-15 18:17:47');
INSERT INTO `t_attendance_record` VALUES (288, '001', 1, 1763230669, 0, '2025-11-15 18:17:48');
INSERT INTO `t_attendance_record` VALUES (289, '001', 1, 1763230670, 0, '2025-11-15 18:17:49');
INSERT INTO `t_attendance_record` VALUES (290, '001', 1, 1763230671, 0, '2025-11-15 18:17:50');
INSERT INTO `t_attendance_record` VALUES (291, '001', 1, 1763230672, 0, '2025-11-15 18:17:52');
INSERT INTO `t_attendance_record` VALUES (292, '001', 1, 1763230673, 0, '2025-11-15 18:17:53');
INSERT INTO `t_attendance_record` VALUES (293, '001', 1, 1763230674, 0, '2025-11-15 18:17:54');
INSERT INTO `t_attendance_record` VALUES (294, '001', 1, 1763230676, 0, '2025-11-15 18:17:55');
INSERT INTO `t_attendance_record` VALUES (295, '001', 1, 1763230677, 0, '2025-11-15 18:17:56');
INSERT INTO `t_attendance_record` VALUES (296, '001', 1, 1763230678, 0, '2025-11-15 18:17:58');
INSERT INTO `t_attendance_record` VALUES (297, '001', 1, 1763230679, 0, '2025-11-15 18:17:59');
INSERT INTO `t_attendance_record` VALUES (298, '001', 1, 1763230681, 0, '2025-11-15 18:18:00');
INSERT INTO `t_attendance_record` VALUES (299, '001', 1, 1763230682, 0, '2025-11-15 18:18:01');
INSERT INTO `t_attendance_record` VALUES (300, '001', 1, 1763230683, 0, '2025-11-15 18:18:03');
INSERT INTO `t_attendance_record` VALUES (301, '001', 1, 1763230684, 0, '2025-11-15 18:18:04');
INSERT INTO `t_attendance_record` VALUES (302, '001', 1, 1763230685, 0, '2025-11-15 18:18:05');
INSERT INTO `t_attendance_record` VALUES (303, '001', 1, 1763230687, 0, '2025-11-15 18:18:06');
INSERT INTO `t_attendance_record` VALUES (304, '001', 1, 1763230688, 0, '2025-11-15 18:18:07');
INSERT INTO `t_attendance_record` VALUES (305, '001', 1, 1763230689, 0, '2025-11-15 18:18:09');
INSERT INTO `t_attendance_record` VALUES (306, '001', 1, 1763230690, 0, '2025-11-15 18:18:10');
INSERT INTO `t_attendance_record` VALUES (307, '001', 1, 1763230691, 0, '2025-11-15 18:18:11');
INSERT INTO `t_attendance_record` VALUES (308, '001', 1, 1763230692, 0, '2025-11-15 18:18:12');
INSERT INTO `t_attendance_record` VALUES (309, '001', 1, 1763230694, 0, '2025-11-15 18:18:13');
INSERT INTO `t_attendance_record` VALUES (310, '001', 1, 1763230695, 0, '2025-11-15 18:18:14');
INSERT INTO `t_attendance_record` VALUES (311, '001', 1, 1763230696, 0, '2025-11-15 18:18:16');
INSERT INTO `t_attendance_record` VALUES (312, '001', 1, 1763230697, 0, '2025-11-15 18:18:17');
INSERT INTO `t_attendance_record` VALUES (313, '001', 1, 1763230699, 0, '2025-11-15 18:18:18');
INSERT INTO `t_attendance_record` VALUES (314, '001', 1, 1763230700, 0, '2025-11-15 18:18:19');
INSERT INTO `t_attendance_record` VALUES (315, '001', 1, 1763230701, 0, '2025-11-15 18:18:20');
INSERT INTO `t_attendance_record` VALUES (316, '001', 1, 1763230702, 0, '2025-11-15 18:18:22');
INSERT INTO `t_attendance_record` VALUES (317, '001', 1, 1763230703, 0, '2025-11-15 18:18:23');
INSERT INTO `t_attendance_record` VALUES (318, '001', 1, 1763230704, 0, '2025-11-15 18:18:24');
INSERT INTO `t_attendance_record` VALUES (319, '001', 1, 1763230706, 0, '2025-11-15 18:18:25');
INSERT INTO `t_attendance_record` VALUES (320, '001', 1, 1763230707, 0, '2025-11-15 18:18:26');
INSERT INTO `t_attendance_record` VALUES (321, '001', 1, 1763230708, 0, '2025-11-15 18:18:28');
INSERT INTO `t_attendance_record` VALUES (322, '001', 1, 1763230709, 0, '2025-11-15 18:18:29');
INSERT INTO `t_attendance_record` VALUES (323, '001', 1, 1763230710, 0, '2025-11-15 18:18:30');
INSERT INTO `t_attendance_record` VALUES (324, '001', 1, 1763230712, 0, '2025-11-15 18:18:31');
INSERT INTO `t_attendance_record` VALUES (325, '001', 1, 1763230713, 0, '2025-11-15 18:18:32');
INSERT INTO `t_attendance_record` VALUES (326, '001', 1, 1763230714, 0, '2025-11-15 18:18:34');
INSERT INTO `t_attendance_record` VALUES (327, '001', 1, 1763230715, 0, '2025-11-15 18:18:35');
INSERT INTO `t_attendance_record` VALUES (328, '001', 1, 1763230716, 0, '2025-11-15 18:18:36');
INSERT INTO `t_attendance_record` VALUES (329, '001', 1, 1763230718, 0, '2025-11-15 18:18:37');
INSERT INTO `t_attendance_record` VALUES (330, '001', 1, 1763230719, 0, '2025-11-15 18:18:38');
INSERT INTO `t_attendance_record` VALUES (331, '001', 1, 1763230720, 0, '2025-11-15 18:18:40');
INSERT INTO `t_attendance_record` VALUES (332, '001', 1, 1763230721, 0, '2025-11-15 18:18:41');
INSERT INTO `t_attendance_record` VALUES (333, '001', 1, 1763230722, 0, '2025-11-15 18:18:42');
INSERT INTO `t_attendance_record` VALUES (334, '001', 1, 1763230724, 0, '2025-11-15 18:18:43');
INSERT INTO `t_attendance_record` VALUES (335, '001', 1, 1763230725, 0, '2025-11-15 18:18:44');
INSERT INTO `t_attendance_record` VALUES (336, '001', 1, 1763230726, 0, '2025-11-15 18:18:46');
INSERT INTO `t_attendance_record` VALUES (337, '001', 1, 1763230727, 0, '2025-11-15 18:18:47');
INSERT INTO `t_attendance_record` VALUES (338, '001', 1, 1763230728, 0, '2025-11-15 18:18:48');
INSERT INTO `t_attendance_record` VALUES (339, '001', 1, 1763230730, 0, '2025-11-15 18:18:49');
INSERT INTO `t_attendance_record` VALUES (340, '001', 1, 1763230731, 0, '2025-11-15 18:18:50');
INSERT INTO `t_attendance_record` VALUES (341, '001', 1, 1763230732, 0, '2025-11-15 18:18:51');
INSERT INTO `t_attendance_record` VALUES (342, '001', 1, 1763230733, 0, '2025-11-15 18:18:53');
INSERT INTO `t_attendance_record` VALUES (343, '001', 1, 1763230734, 0, '2025-11-15 18:18:54');
INSERT INTO `t_attendance_record` VALUES (344, '001', 1, 1763230735, 0, '2025-11-15 18:18:55');
INSERT INTO `t_attendance_record` VALUES (345, '001', 1, 1763230737, 0, '2025-11-15 18:18:56');
INSERT INTO `t_attendance_record` VALUES (346, '001', 1, 1763230738, 0, '2025-11-15 18:18:57');
INSERT INTO `t_attendance_record` VALUES (347, '001', 1, 1763230739, 0, '2025-11-15 18:18:59');
INSERT INTO `t_attendance_record` VALUES (348, '001', 1, 1763230740, 0, '2025-11-15 18:19:00');
INSERT INTO `t_attendance_record` VALUES (349, '001', 1, 1763230741, 0, '2025-11-15 18:19:01');
INSERT INTO `t_attendance_record` VALUES (350, '001', 1, 1763230743, 0, '2025-11-15 18:19:02');
INSERT INTO `t_attendance_record` VALUES (351, '001', 1, 1763230744, 0, '2025-11-15 18:19:03');
INSERT INTO `t_attendance_record` VALUES (352, '001', 1, 1763230745, 0, '2025-11-15 18:19:05');
INSERT INTO `t_attendance_record` VALUES (353, '001', 1, 1763230746, 0, '2025-11-15 18:19:06');
INSERT INTO `t_attendance_record` VALUES (354, '001', 1, 1763230747, 0, '2025-11-15 18:19:07');
INSERT INTO `t_attendance_record` VALUES (355, '001', 1, 1763230749, 0, '2025-11-15 18:19:08');
INSERT INTO `t_attendance_record` VALUES (356, '001', 1, 1763230750, 0, '2025-11-15 18:19:09');
INSERT INTO `t_attendance_record` VALUES (357, '001', 1, 1763230751, 0, '2025-11-15 18:19:10');
INSERT INTO `t_attendance_record` VALUES (358, '001', 1, 1763230752, 0, '2025-11-15 18:19:12');
INSERT INTO `t_attendance_record` VALUES (359, '001', 1, 1763230753, 0, '2025-11-15 18:19:13');
INSERT INTO `t_attendance_record` VALUES (360, '001', 1, 1763230754, 0, '2025-11-15 18:19:14');
INSERT INTO `t_attendance_record` VALUES (361, '001', 1, 1763230756, 0, '2025-11-15 18:19:15');
INSERT INTO `t_attendance_record` VALUES (362, '001', 1, 1763230757, 0, '2025-11-15 18:19:16');
INSERT INTO `t_attendance_record` VALUES (363, '001', 1, 1763230758, 0, '2025-11-15 18:19:18');
INSERT INTO `t_attendance_record` VALUES (364, '001', 1, 1763230759, 0, '2025-11-15 18:19:19');
INSERT INTO `t_attendance_record` VALUES (365, '001', 1, 1763230760, 0, '2025-11-15 18:19:20');
INSERT INTO `t_attendance_record` VALUES (366, '001', 1, 1763230762, 0, '2025-11-15 18:19:21');
INSERT INTO `t_attendance_record` VALUES (367, '001', 1, 1763230763, 0, '2025-11-15 18:19:22');
INSERT INTO `t_attendance_record` VALUES (368, '001', 1, 1763230764, 0, '2025-11-15 18:19:24');
INSERT INTO `t_attendance_record` VALUES (369, '001', 1, 1763230765, 0, '2025-11-15 18:19:25');
INSERT INTO `t_attendance_record` VALUES (370, '001', 1, 1763230766, 0, '2025-11-15 18:19:26');
INSERT INTO `t_attendance_record` VALUES (371, '001', 1, 1763230768, 0, '2025-11-15 18:19:27');
INSERT INTO `t_attendance_record` VALUES (372, '001', 1, 1763230769, 0, '2025-11-15 18:19:28');
INSERT INTO `t_attendance_record` VALUES (373, '001', 1, 1763230770, 0, '2025-11-15 18:19:30');
INSERT INTO `t_attendance_record` VALUES (374, '001', 1, 1763230771, 0, '2025-11-15 18:19:31');
INSERT INTO `t_attendance_record` VALUES (375, '001', 1, 1763230772, 0, '2025-11-15 18:19:32');
INSERT INTO `t_attendance_record` VALUES (376, '001', 1, 1763230773, 0, '2025-11-15 18:19:33');
INSERT INTO `t_attendance_record` VALUES (377, '001', 1, 1763230775, 0, '2025-11-15 18:19:34');
INSERT INTO `t_attendance_record` VALUES (378, '001', 1, 1763230776, 0, '2025-11-15 18:19:35');
INSERT INTO `t_attendance_record` VALUES (379, '001', 1, 1763230777, 0, '2025-11-15 18:19:37');
INSERT INTO `t_attendance_record` VALUES (380, '001', 1, 1763230778, 0, '2025-11-15 18:19:38');
INSERT INTO `t_attendance_record` VALUES (381, '001', 1, 1763230780, 0, '2025-11-15 18:19:39');
INSERT INTO `t_attendance_record` VALUES (382, '001', 1, 1763230781, 0, '2025-11-15 18:19:40');
INSERT INTO `t_attendance_record` VALUES (383, '001', 1, 1763230782, 0, '2025-11-15 18:19:41');
INSERT INTO `t_attendance_record` VALUES (384, '001', 1, 1763230783, 0, '2025-11-15 18:19:43');
INSERT INTO `t_attendance_record` VALUES (385, '001', 1, 1763230784, 0, '2025-11-15 18:19:44');
INSERT INTO `t_attendance_record` VALUES (386, '001', 1, 1763230786, 0, '2025-11-15 18:19:45');
INSERT INTO `t_attendance_record` VALUES (387, '001', 1, 1763230787, 0, '2025-11-15 18:19:46');
INSERT INTO `t_attendance_record` VALUES (388, '001', 1, 1763230788, 0, '2025-11-15 18:19:47');
INSERT INTO `t_attendance_record` VALUES (389, '001', 1, 1763230789, 0, '2025-11-15 18:19:49');
INSERT INTO `t_attendance_record` VALUES (390, '001', 1, 1763230790, 0, '2025-11-15 18:19:50');
INSERT INTO `t_attendance_record` VALUES (391, '001', 1, 1763230791, 0, '2025-11-15 18:19:51');
INSERT INTO `t_attendance_record` VALUES (392, '001', 1, 1763230793, 0, '2025-11-15 18:19:52');
INSERT INTO `t_attendance_record` VALUES (393, '001', 1, 1763230794, 0, '2025-11-15 18:19:53');
INSERT INTO `t_attendance_record` VALUES (394, '001', 1, 1763230795, 0, '2025-11-15 18:19:54');
INSERT INTO `t_attendance_record` VALUES (395, '001', 1, 1763230796, 0, '2025-11-15 18:19:56');
INSERT INTO `t_attendance_record` VALUES (396, '001', 1, 1763230797, 0, '2025-11-15 18:19:57');
INSERT INTO `t_attendance_record` VALUES (397, '001', 1, 1763230798, 0, '2025-11-15 18:19:58');
INSERT INTO `t_attendance_record` VALUES (398, '001', 1, 1763230799, 0, '2025-11-15 18:19:59');
INSERT INTO `t_attendance_record` VALUES (399, '001', 1, 1763230800, 0, '2025-11-15 18:20:00');
INSERT INTO `t_attendance_record` VALUES (400, '001', 1, 1763230802, 0, '2025-11-15 18:20:01');
INSERT INTO `t_attendance_record` VALUES (401, '001', 1, 1763230803, 0, '2025-11-15 18:20:02');
INSERT INTO `t_attendance_record` VALUES (402, '001', 1, 1763230804, 0, '2025-11-15 18:20:03');
INSERT INTO `t_attendance_record` VALUES (403, '001', 1, 1763230805, 0, '2025-11-15 18:20:05');
INSERT INTO `t_attendance_record` VALUES (404, '001', 1, 1763230806, 0, '2025-11-15 18:20:06');
INSERT INTO `t_attendance_record` VALUES (405, '001', 1, 1763230807, 0, '2025-11-15 18:20:07');
INSERT INTO `t_attendance_record` VALUES (406, '001', 1, 1763230808, 0, '2025-11-15 18:20:08');
INSERT INTO `t_attendance_record` VALUES (407, '001', 1, 1763230810, 0, '2025-11-15 18:20:09');
INSERT INTO `t_attendance_record` VALUES (408, '001', 1, 1763230811, 0, '2025-11-15 18:20:10');
INSERT INTO `t_attendance_record` VALUES (409, '001', 1, 1763230812, 0, '2025-11-15 18:20:11');
INSERT INTO `t_attendance_record` VALUES (410, '001', 1, 1763230813, 0, '2025-11-15 18:20:13');
INSERT INTO `t_attendance_record` VALUES (411, '001', 1, 1763230814, 0, '2025-11-15 18:20:14');
INSERT INTO `t_attendance_record` VALUES (412, '001', 1, 1763230815, 0, '2025-11-15 18:20:15');
INSERT INTO `t_attendance_record` VALUES (413, '001', 1, 1763230816, 0, '2025-11-15 18:20:16');
INSERT INTO `t_attendance_record` VALUES (414, '001', 1, 1763230818, 0, '2025-11-15 18:20:17');
INSERT INTO `t_attendance_record` VALUES (415, '001', 1, 1763230819, 0, '2025-11-15 18:20:18');
INSERT INTO `t_attendance_record` VALUES (416, '001', 1, 1763230820, 0, '2025-11-15 18:20:19');
INSERT INTO `t_attendance_record` VALUES (417, '001', 1, 1763230821, 0, '2025-11-15 18:20:21');
INSERT INTO `t_attendance_record` VALUES (418, '001', 1, 1763230822, 0, '2025-11-15 18:20:22');
INSERT INTO `t_attendance_record` VALUES (419, '001', 1, 1763230823, 0, '2025-11-15 18:20:23');
INSERT INTO `t_attendance_record` VALUES (420, '001', 1, 1763230825, 0, '2025-11-15 18:20:24');
INSERT INTO `t_attendance_record` VALUES (421, '001', 1, 1763230826, 0, '2025-11-15 18:20:25');
INSERT INTO `t_attendance_record` VALUES (422, '001', 1, 1763230827, 0, '2025-11-15 18:20:26');
INSERT INTO `t_attendance_record` VALUES (423, '001', 1, 1763230828, 0, '2025-11-15 18:20:28');
INSERT INTO `t_attendance_record` VALUES (424, '001', 1, 1763230829, 0, '2025-11-15 18:20:29');
INSERT INTO `t_attendance_record` VALUES (425, '001', 1, 1763230830, 0, '2025-11-15 18:20:30');
INSERT INTO `t_attendance_record` VALUES (426, '001', 1, 1763230831, 0, '2025-11-15 18:20:31');
INSERT INTO `t_attendance_record` VALUES (427, '001', 1, 1763230833, 0, '2025-11-15 18:20:32');
INSERT INTO `t_attendance_record` VALUES (428, '001', 1, 1763230834, 0, '2025-11-15 18:20:33');
INSERT INTO `t_attendance_record` VALUES (429, '001', 1, 1763230835, 0, '2025-11-15 18:20:34');
INSERT INTO `t_attendance_record` VALUES (430, '001', 1, 1763230836, 0, '2025-11-15 18:20:36');
INSERT INTO `t_attendance_record` VALUES (431, '001', 1, 1763230837, 0, '2025-11-15 18:20:37');
INSERT INTO `t_attendance_record` VALUES (432, '001', 1, 1763230838, 0, '2025-11-15 18:20:38');
INSERT INTO `t_attendance_record` VALUES (433, '001', 1, 1763230840, 0, '2025-11-15 18:20:39');
INSERT INTO `t_attendance_record` VALUES (434, '001', 1, 1763230841, 0, '2025-11-15 18:20:40');
INSERT INTO `t_attendance_record` VALUES (435, '001', 1, 1763230842, 0, '2025-11-15 18:20:41');
INSERT INTO `t_attendance_record` VALUES (436, '001', 1, 1763230843, 0, '2025-11-15 18:20:43');
INSERT INTO `t_attendance_record` VALUES (437, '001', 1, 1763230844, 0, '2025-11-15 18:20:44');
INSERT INTO `t_attendance_record` VALUES (438, '001', 1, 1763230845, 0, '2025-11-15 18:20:45');
INSERT INTO `t_attendance_record` VALUES (439, '001', 1, 1763230847, 0, '2025-11-15 18:20:46');
INSERT INTO `t_attendance_record` VALUES (440, '001', 1, 1763230848, 0, '2025-11-15 18:20:47');
INSERT INTO `t_attendance_record` VALUES (441, '001', 1, 1763230849, 0, '2025-11-15 18:20:48');
INSERT INTO `t_attendance_record` VALUES (442, '001', 1, 1763230850, 0, '2025-11-15 18:20:50');
INSERT INTO `t_attendance_record` VALUES (443, '001', 1, 1763230851, 0, '2025-11-15 18:20:51');
INSERT INTO `t_attendance_record` VALUES (444, '001', 1, 1763230852, 0, '2025-11-15 18:20:52');
INSERT INTO `t_attendance_record` VALUES (445, '001', 1, 1763230854, 0, '2025-11-15 18:20:53');
INSERT INTO `t_attendance_record` VALUES (446, '001', 1, 1763230855, 0, '2025-11-15 18:20:54');
INSERT INTO `t_attendance_record` VALUES (447, '001', 1, 1763230856, 0, '2025-11-15 18:20:55');
INSERT INTO `t_attendance_record` VALUES (448, '001', 1, 1763230857, 0, '2025-11-15 18:20:57');
INSERT INTO `t_attendance_record` VALUES (449, '001', 1, 1763230858, 0, '2025-11-15 18:20:58');
INSERT INTO `t_attendance_record` VALUES (450, '001', 1, 1763230859, 0, '2025-11-15 18:20:59');
INSERT INTO `t_attendance_record` VALUES (451, '001', 1, 1763230860, 0, '2025-11-15 18:21:00');
INSERT INTO `t_attendance_record` VALUES (452, '001', 1, 1763230862, 0, '2025-11-15 18:21:01');
INSERT INTO `t_attendance_record` VALUES (453, '001', 1, 1763230863, 0, '2025-11-15 18:21:02');
INSERT INTO `t_attendance_record` VALUES (454, '001', 1, 1763230864, 0, '2025-11-15 18:21:03');
INSERT INTO `t_attendance_record` VALUES (455, '001', 1, 1763230865, 0, '2025-11-15 18:21:05');
INSERT INTO `t_attendance_record` VALUES (456, '001', 1, 1763230866, 0, '2025-11-15 18:21:06');
INSERT INTO `t_attendance_record` VALUES (457, '001', 1, 1763230867, 0, '2025-11-15 18:21:07');
INSERT INTO `t_attendance_record` VALUES (458, '001', 1, 1763230971, 0, '2025-11-15 18:22:51');
INSERT INTO `t_attendance_record` VALUES (459, '001', 1, 1763230972, 0, '2025-11-15 18:22:52');
INSERT INTO `t_attendance_record` VALUES (460, '001', 1, 1763230974, 0, '2025-11-15 18:22:55');
INSERT INTO `t_attendance_record` VALUES (461, '001', 1, 1763230977, 0, '2025-11-15 18:22:57');
INSERT INTO `t_attendance_record` VALUES (462, '001', 1, 1763230978, 0, '2025-11-15 18:22:58');
INSERT INTO `t_attendance_record` VALUES (463, '001', 1, 1763230979, 0, '2025-11-15 18:22:59');
INSERT INTO `t_attendance_record` VALUES (464, '001', 1, 1763230980, 0, '2025-11-15 18:23:00');
INSERT INTO `t_attendance_record` VALUES (465, '001', 1, 1763230982, 0, '2025-11-15 18:23:01');
INSERT INTO `t_attendance_record` VALUES (466, '001', 1, 1763230983, 0, '2025-11-15 18:23:02');
INSERT INTO `t_attendance_record` VALUES (467, '001', 1, 1763230984, 0, '2025-11-15 18:23:03');
INSERT INTO `t_attendance_record` VALUES (468, '001', 1, 1763230985, 0, '2025-11-15 18:23:05');
INSERT INTO `t_attendance_record` VALUES (469, '001', 1, 1763230986, 0, '2025-11-15 18:23:06');
INSERT INTO `t_attendance_record` VALUES (470, '001', 1, 1763230987, 0, '2025-11-15 18:23:07');
INSERT INTO `t_attendance_record` VALUES (471, '001', 1, 1763230989, 0, '2025-11-15 18:23:08');
INSERT INTO `t_attendance_record` VALUES (472, '001', 1, 1763230990, 0, '2025-11-15 18:23:09');
INSERT INTO `t_attendance_record` VALUES (473, '001', 1, 1763230991, 0, '2025-11-15 18:23:11');
INSERT INTO `t_attendance_record` VALUES (474, '001', 1, 1763230992, 0, '2025-11-15 18:23:12');
INSERT INTO `t_attendance_record` VALUES (475, '001', 1, 1763230993, 0, '2025-11-15 18:23:13');
INSERT INTO `t_attendance_record` VALUES (476, '001', 1, 1763230994, 0, '2025-11-15 18:23:14');
INSERT INTO `t_attendance_record` VALUES (477, '001', 1, 1763230996, 0, '2025-11-15 18:23:15');
INSERT INTO `t_attendance_record` VALUES (478, '001', 1, 1763230997, 0, '2025-11-15 18:23:16');
INSERT INTO `t_attendance_record` VALUES (479, '001', 1, 1763230998, 0, '2025-11-15 18:23:17');
INSERT INTO `t_attendance_record` VALUES (480, '001', 1, 1763230999, 0, '2025-11-15 18:23:19');
INSERT INTO `t_attendance_record` VALUES (481, '001', 1, 1763231000, 0, '2025-11-15 18:23:20');
INSERT INTO `t_attendance_record` VALUES (482, '001', 1, 1763231001, 0, '2025-11-15 18:23:21');
INSERT INTO `t_attendance_record` VALUES (483, '001', 1, 1763231003, 0, '2025-11-15 18:23:22');
INSERT INTO `t_attendance_record` VALUES (484, '001', 1, 1763231004, 0, '2025-11-15 18:23:23');
INSERT INTO `t_attendance_record` VALUES (485, '001', 1, 1763231005, 0, '2025-11-15 18:23:24');
INSERT INTO `t_attendance_record` VALUES (486, '001', 1, 1763231006, 0, '2025-11-15 18:23:26');
INSERT INTO `t_attendance_record` VALUES (487, '001', 1, 1763231007, 0, '2025-11-15 18:23:27');
INSERT INTO `t_attendance_record` VALUES (488, '001', 1, 1763231008, 0, '2025-11-15 18:23:28');
INSERT INTO `t_attendance_record` VALUES (489, '001', 1, 1763231009, 0, '2025-11-15 18:23:29');
INSERT INTO `t_attendance_record` VALUES (490, '001', 1, 1763231011, 0, '2025-11-15 18:23:30');
INSERT INTO `t_attendance_record` VALUES (491, '001', 1, 1763231012, 0, '2025-11-15 18:23:31');
INSERT INTO `t_attendance_record` VALUES (492, '001', 1, 1763231013, 0, '2025-11-15 18:23:33');
INSERT INTO `t_attendance_record` VALUES (493, '001', 1, 1763231014, 0, '2025-11-15 18:23:34');
INSERT INTO `t_attendance_record` VALUES (494, '001', 1, 1763231015, 0, '2025-11-15 18:23:35');
INSERT INTO `t_attendance_record` VALUES (495, '001', 1, 1763231016, 0, '2025-11-15 18:23:36');
INSERT INTO `t_attendance_record` VALUES (496, '001', 1, 1763231018, 0, '2025-11-15 18:23:37');
INSERT INTO `t_attendance_record` VALUES (497, '001', 1, 1763231019, 0, '2025-11-15 18:23:38');
INSERT INTO `t_attendance_record` VALUES (498, '001', 1, 1763231020, 0, '2025-11-15 18:23:39');
INSERT INTO `t_attendance_record` VALUES (499, '001', 1, 1763231021, 0, '2025-11-15 18:23:41');
INSERT INTO `t_attendance_record` VALUES (500, '001', 1, 1763231022, 0, '2025-11-15 18:23:42');
INSERT INTO `t_attendance_record` VALUES (501, '001', 1, 1763231023, 0, '2025-11-15 18:23:43');
INSERT INTO `t_attendance_record` VALUES (502, '001', 1, 1763231024, 0, '2025-11-15 18:23:44');
INSERT INTO `t_attendance_record` VALUES (503, '001', 1, 1763231026, 0, '2025-11-15 18:23:45');
INSERT INTO `t_attendance_record` VALUES (504, '001', 1, 1763231027, 0, '2025-11-15 18:23:46');
INSERT INTO `t_attendance_record` VALUES (505, '001', 1, 1763231028, 0, '2025-11-15 18:23:47');
INSERT INTO `t_attendance_record` VALUES (506, '001', 1, 1763231029, 0, '2025-11-15 18:23:49');
INSERT INTO `t_attendance_record` VALUES (507, '001', 1, 1763231030, 0, '2025-11-15 18:23:50');
INSERT INTO `t_attendance_record` VALUES (508, '001', 1, 1763231031, 0, '2025-11-15 18:23:51');
INSERT INTO `t_attendance_record` VALUES (509, '001', 1, 1763231032, 0, '2025-11-15 18:23:52');
INSERT INTO `t_attendance_record` VALUES (510, '001', 1, 1763231034, 0, '2025-11-15 18:23:53');
INSERT INTO `t_attendance_record` VALUES (511, '001', 1, 1763231035, 0, '2025-11-15 18:23:54');
INSERT INTO `t_attendance_record` VALUES (512, '001', 1, 1763231036, 0, '2025-11-15 18:23:55');
INSERT INTO `t_attendance_record` VALUES (513, '001', 1, 1763231037, 0, '2025-11-15 18:23:57');
INSERT INTO `t_attendance_record` VALUES (514, '001', 1, 1763231038, 0, '2025-11-15 18:23:58');
INSERT INTO `t_attendance_record` VALUES (515, '001', 1, 1763231039, 0, '2025-11-15 18:23:59');
INSERT INTO `t_attendance_record` VALUES (516, '001', 1, 1763231041, 0, '2025-11-15 18:24:00');
INSERT INTO `t_attendance_record` VALUES (517, '001', 1, 1763231042, 0, '2025-11-15 18:24:01');
INSERT INTO `t_attendance_record` VALUES (518, '001', 1, 1763231043, 0, '2025-11-15 18:24:02');
INSERT INTO `t_attendance_record` VALUES (519, '001', 1, 1763231044, 0, '2025-11-15 18:24:03');
INSERT INTO `t_attendance_record` VALUES (520, '001', 1, 1763231045, 0, '2025-11-15 18:24:05');
INSERT INTO `t_attendance_record` VALUES (521, '001', 1, 1763231046, 0, '2025-11-15 18:24:06');
INSERT INTO `t_attendance_record` VALUES (522, '001', 1, 1763231047, 0, '2025-11-15 18:24:07');
INSERT INTO `t_attendance_record` VALUES (523, '001', 1, 1763231049, 0, '2025-11-15 18:24:08');
INSERT INTO `t_attendance_record` VALUES (524, '001', 1, 1763231050, 0, '2025-11-15 18:24:09');
INSERT INTO `t_attendance_record` VALUES (525, '001', 1, 1763231051, 0, '2025-11-15 18:24:10');
INSERT INTO `t_attendance_record` VALUES (526, '001', 1, 1763231052, 0, '2025-11-15 18:24:12');
INSERT INTO `t_attendance_record` VALUES (527, '001', 1, 1763231053, 0, '2025-11-15 18:24:13');
INSERT INTO `t_attendance_record` VALUES (528, '001', 1, 1763231054, 0, '2025-11-15 18:24:14');
INSERT INTO `t_attendance_record` VALUES (529, '001', 1, 1763231056, 0, '2025-11-15 18:24:15');
INSERT INTO `t_attendance_record` VALUES (530, '001', 1, 1763231057, 0, '2025-11-15 18:24:16');
INSERT INTO `t_attendance_record` VALUES (531, '001', 1, 1763231058, 0, '2025-11-15 18:24:17');
INSERT INTO `t_attendance_record` VALUES (532, '001', 1, 1763231059, 0, '2025-11-15 18:24:19');
INSERT INTO `t_attendance_record` VALUES (533, '001', 1, 1763231060, 0, '2025-11-15 18:24:20');
INSERT INTO `t_attendance_record` VALUES (534, '001', 1, 1763231061, 0, '2025-11-15 18:24:21');
INSERT INTO `t_attendance_record` VALUES (535, '001', 1, 1763231062, 0, '2025-11-15 18:24:22');
INSERT INTO `t_attendance_record` VALUES (536, '001', 1, 1763231064, 0, '2025-11-15 18:24:23');
INSERT INTO `t_attendance_record` VALUES (537, '001', 1, 1763231065, 0, '2025-11-15 18:24:24');
INSERT INTO `t_attendance_record` VALUES (538, '001', 1, 1763231066, 0, '2025-11-15 18:24:25');
INSERT INTO `t_attendance_record` VALUES (539, '001', 1, 1763231067, 0, '2025-11-15 18:24:27');
INSERT INTO `t_attendance_record` VALUES (540, '001', 1, 1763231068, 0, '2025-11-15 18:24:28');
INSERT INTO `t_attendance_record` VALUES (541, '001', 1, 1763231069, 0, '2025-11-15 18:24:29');
INSERT INTO `t_attendance_record` VALUES (542, '001', 1, 1763231071, 0, '2025-11-15 18:24:30');
INSERT INTO `t_attendance_record` VALUES (543, '001', 1, 1763231072, 0, '2025-11-15 18:24:31');
INSERT INTO `t_attendance_record` VALUES (544, '001', 1, 1763231073, 0, '2025-11-15 18:24:32');
INSERT INTO `t_attendance_record` VALUES (545, '001', 1, 1763231074, 0, '2025-11-15 18:24:34');
INSERT INTO `t_attendance_record` VALUES (546, '001', 1, 1763231075, 0, '2025-11-15 18:24:35');
INSERT INTO `t_attendance_record` VALUES (547, '001', 1, 1763231076, 0, '2025-11-15 18:24:36');
INSERT INTO `t_attendance_record` VALUES (548, '001', 1, 1763231077, 0, '2025-11-15 18:24:37');
INSERT INTO `t_attendance_record` VALUES (549, '001', 1, 1763231079, 0, '2025-11-15 18:24:38');
INSERT INTO `t_attendance_record` VALUES (550, '001', 1, 1763231080, 0, '2025-11-15 18:24:39');
INSERT INTO `t_attendance_record` VALUES (551, '001', 1, 1763231081, 0, '2025-11-15 18:24:40');
INSERT INTO `t_attendance_record` VALUES (552, '001', 1, 1763231082, 0, '2025-11-15 18:24:42');
INSERT INTO `t_attendance_record` VALUES (553, '001', 1, 1763231083, 0, '2025-11-15 18:24:43');
INSERT INTO `t_attendance_record` VALUES (554, '001', 1, 1763231084, 0, '2025-11-15 18:24:44');
INSERT INTO `t_attendance_record` VALUES (555, '001', 1, 1763231086, 0, '2025-11-15 18:24:45');
INSERT INTO `t_attendance_record` VALUES (556, '001', 1, 1763231087, 0, '2025-11-15 18:24:46');
INSERT INTO `t_attendance_record` VALUES (557, '001', 1, 1763231088, 0, '2025-11-15 18:24:47');
INSERT INTO `t_attendance_record` VALUES (558, '001', 1, 1763231089, 0, '2025-11-15 18:24:49');
INSERT INTO `t_attendance_record` VALUES (559, '001', 1, 1763231090, 0, '2025-11-15 18:24:50');
INSERT INTO `t_attendance_record` VALUES (560, '001', 1, 1763231091, 0, '2025-11-15 18:24:51');
INSERT INTO `t_attendance_record` VALUES (561, '001', 1, 1763231092, 0, '2025-11-15 18:24:52');
INSERT INTO `t_attendance_record` VALUES (562, '001', 1, 1763231094, 0, '2025-11-15 18:24:53');
INSERT INTO `t_attendance_record` VALUES (563, '001', 1, 1763231095, 0, '2025-11-15 18:24:54');
INSERT INTO `t_attendance_record` VALUES (564, '001', 1, 1763231096, 0, '2025-11-15 18:24:55');
INSERT INTO `t_attendance_record` VALUES (565, '001', 1, 1763231097, 0, '2025-11-15 18:24:57');
INSERT INTO `t_attendance_record` VALUES (566, '001', 1, 1763231098, 0, '2025-11-15 18:24:58');
INSERT INTO `t_attendance_record` VALUES (567, '001', 1, 1763231099, 0, '2025-11-15 18:24:59');
INSERT INTO `t_attendance_record` VALUES (568, '001', 1, 1763231101, 0, '2025-11-15 18:25:00');
INSERT INTO `t_attendance_record` VALUES (569, '001', 1, 1763231102, 0, '2025-11-15 18:25:01');
INSERT INTO `t_attendance_record` VALUES (570, '001', 1, 1763231103, 0, '2025-11-15 18:25:02');
INSERT INTO `t_attendance_record` VALUES (571, '001', 1, 1763231104, 0, '2025-11-15 18:25:04');
INSERT INTO `t_attendance_record` VALUES (572, '001', 1, 1763231105, 0, '2025-11-15 18:25:05');
INSERT INTO `t_attendance_record` VALUES (573, '001', 1, 1763231106, 0, '2025-11-15 18:25:06');
INSERT INTO `t_attendance_record` VALUES (574, '001', 1, 1763231107, 0, '2025-11-15 18:25:07');
INSERT INTO `t_attendance_record` VALUES (575, '001', 1, 1763231109, 0, '2025-11-15 18:25:08');
INSERT INTO `t_attendance_record` VALUES (576, '001', 1, 1763231110, 0, '2025-11-15 18:25:09');
INSERT INTO `t_attendance_record` VALUES (577, '001', 1, 1763231111, 0, '2025-11-15 18:25:10');
INSERT INTO `t_attendance_record` VALUES (578, '001', 1, 1763231112, 0, '2025-11-15 18:25:12');
INSERT INTO `t_attendance_record` VALUES (579, '001', 1, 1763231113, 0, '2025-11-15 18:25:13');
INSERT INTO `t_attendance_record` VALUES (580, '001', 1, 1763231114, 0, '2025-11-15 18:25:14');
INSERT INTO `t_attendance_record` VALUES (581, '001', 1, 1763231115, 0, '2025-11-15 18:25:15');
INSERT INTO `t_attendance_record` VALUES (582, '001', 1, 1763231117, 0, '2025-11-15 18:25:16');
INSERT INTO `t_attendance_record` VALUES (583, '001', 1, 1763231118, 0, '2025-11-15 18:25:17');
INSERT INTO `t_attendance_record` VALUES (584, '001', 1, 1763231119, 0, '2025-11-15 18:25:19');
INSERT INTO `t_attendance_record` VALUES (585, '001', 1, 1763231120, 0, '2025-11-15 18:25:20');
INSERT INTO `t_attendance_record` VALUES (586, '001', 1, 1763231121, 0, '2025-11-15 18:25:21');
INSERT INTO `t_attendance_record` VALUES (587, '001', 1, 1763231122, 0, '2025-11-15 18:25:22');
INSERT INTO `t_attendance_record` VALUES (588, '001', 1, 1763231124, 0, '2025-11-15 18:25:23');
INSERT INTO `t_attendance_record` VALUES (589, '001', 1, 1763231125, 0, '2025-11-15 18:25:24');
INSERT INTO `t_attendance_record` VALUES (590, '001', 1, 1763231126, 0, '2025-11-15 18:25:25');
INSERT INTO `t_attendance_record` VALUES (591, '001', 1, 1763231127, 0, '2025-11-15 18:25:27');
INSERT INTO `t_attendance_record` VALUES (592, '001', 1, 1763231128, 0, '2025-11-15 18:25:28');
INSERT INTO `t_attendance_record` VALUES (593, '001', 1, 1763231129, 0, '2025-11-15 18:25:29');
INSERT INTO `t_attendance_record` VALUES (594, '001', 1, 1763231130, 0, '2025-11-15 18:25:30');
INSERT INTO `t_attendance_record` VALUES (595, '001', 1, 1763231132, 0, '2025-11-15 18:25:31');
INSERT INTO `t_attendance_record` VALUES (596, '001', 1, 1763231133, 0, '2025-11-15 18:25:32');
INSERT INTO `t_attendance_record` VALUES (597, '001', 1, 1763231134, 0, '2025-11-15 18:25:34');
INSERT INTO `t_attendance_record` VALUES (598, '001', 1, 1763231135, 0, '2025-11-15 18:25:35');
INSERT INTO `t_attendance_record` VALUES (599, '001', 1, 1763231136, 0, '2025-11-15 18:25:36');
INSERT INTO `t_attendance_record` VALUES (600, '001', 1, 1763231137, 0, '2025-11-15 18:25:37');
INSERT INTO `t_attendance_record` VALUES (601, '001', 1, 1763231139, 0, '2025-11-15 18:25:38');
INSERT INTO `t_attendance_record` VALUES (602, '001', 1, 1763231140, 0, '2025-11-15 18:25:39');
INSERT INTO `t_attendance_record` VALUES (603, '001', 1, 1763231141, 0, '2025-11-15 18:25:40');
INSERT INTO `t_attendance_record` VALUES (604, '001', 1, 1763231142, 0, '2025-11-15 18:25:42');
INSERT INTO `t_attendance_record` VALUES (605, '001', 1, 1763231143, 0, '2025-11-15 18:25:43');
INSERT INTO `t_attendance_record` VALUES (606, '001', 1, 1763231144, 0, '2025-11-15 18:25:44');
INSERT INTO `t_attendance_record` VALUES (607, '001', 1, 1763231145, 0, '2025-11-15 18:25:45');
INSERT INTO `t_attendance_record` VALUES (608, '001', 1, 1763231147, 0, '2025-11-15 18:25:46');
INSERT INTO `t_attendance_record` VALUES (609, '001', 1, 1763231148, 0, '2025-11-15 18:25:47');
INSERT INTO `t_attendance_record` VALUES (610, '001', 1, 1763231149, 0, '2025-11-15 18:25:48');
INSERT INTO `t_attendance_record` VALUES (611, '001', 1, 1763231150, 0, '2025-11-15 18:25:50');
INSERT INTO `t_attendance_record` VALUES (612, '001', 1, 1763231151, 0, '2025-11-15 18:25:51');
INSERT INTO `t_attendance_record` VALUES (613, '001', 1, 1763231152, 0, '2025-11-15 18:25:52');
INSERT INTO `t_attendance_record` VALUES (614, '001', 1, 1763231153, 0, '2025-11-15 18:25:53');
INSERT INTO `t_attendance_record` VALUES (615, '001', 1, 1763231155, 0, '2025-11-15 18:25:54');
INSERT INTO `t_attendance_record` VALUES (616, '001', 1, 1763231156, 0, '2025-11-15 18:25:55');
INSERT INTO `t_attendance_record` VALUES (617, '001', 1, 1763231157, 0, '2025-11-15 18:25:57');
INSERT INTO `t_attendance_record` VALUES (618, '001', 1, 1763231158, 0, '2025-11-15 18:25:58');
INSERT INTO `t_attendance_record` VALUES (619, '001', 1, 1763231159, 0, '2025-11-15 18:25:59');
INSERT INTO `t_attendance_record` VALUES (620, '001', 1, 1763231160, 0, '2025-11-15 18:26:00');
INSERT INTO `t_attendance_record` VALUES (621, '001', 1, 1763231162, 0, '2025-11-15 18:26:01');
INSERT INTO `t_attendance_record` VALUES (622, '001', 1, 1763231163, 0, '2025-11-15 18:26:02');
INSERT INTO `t_attendance_record` VALUES (623, '001', 1, 1763231164, 0, '2025-11-15 18:26:03');
INSERT INTO `t_attendance_record` VALUES (624, '001', 1, 1763231165, 0, '2025-11-15 18:26:05');
INSERT INTO `t_attendance_record` VALUES (625, '001', 1, 1763231166, 0, '2025-11-15 18:26:06');
INSERT INTO `t_attendance_record` VALUES (626, '001', 1, 1763231167, 0, '2025-11-15 18:26:07');
INSERT INTO `t_attendance_record` VALUES (627, '001', 1, 1763231168, 0, '2025-11-15 18:26:08');
INSERT INTO `t_attendance_record` VALUES (628, '001', 1, 1763231170, 0, '2025-11-15 18:26:09');
INSERT INTO `t_attendance_record` VALUES (629, '001', 1, 1763231171, 0, '2025-11-15 18:26:10');
INSERT INTO `t_attendance_record` VALUES (630, '001', 1, 1763231172, 0, '2025-11-15 18:26:11');
INSERT INTO `t_attendance_record` VALUES (631, '001', 1, 1763231173, 0, '2025-11-15 18:26:13');
INSERT INTO `t_attendance_record` VALUES (632, '001', 1, 1763231174, 0, '2025-11-15 18:26:14');
INSERT INTO `t_attendance_record` VALUES (633, '001', 1, 1763231175, 0, '2025-11-15 18:26:15');
INSERT INTO `t_attendance_record` VALUES (634, '001', 1, 1763231176, 0, '2025-11-15 18:26:16');
INSERT INTO `t_attendance_record` VALUES (635, '001', 1, 1763231178, 0, '2025-11-15 18:26:17');
INSERT INTO `t_attendance_record` VALUES (636, '001', 1, 1763231179, 0, '2025-11-15 18:26:18');
INSERT INTO `t_attendance_record` VALUES (637, '001', 1, 1763231180, 0, '2025-11-15 18:26:20');
INSERT INTO `t_attendance_record` VALUES (638, '001', 1, 1763231181, 0, '2025-11-15 18:26:21');
INSERT INTO `t_attendance_record` VALUES (639, '001', 1, 1763231182, 0, '2025-11-15 18:26:22');
INSERT INTO `t_attendance_record` VALUES (640, '001', 1, 1763231183, 0, '2025-11-15 18:26:23');
INSERT INTO `t_attendance_record` VALUES (641, '001', 1, 1763231185, 0, '2025-11-15 18:26:24');
INSERT INTO `t_attendance_record` VALUES (642, '001', 1, 1763231186, 0, '2025-11-15 18:26:25');
INSERT INTO `t_attendance_record` VALUES (643, '001', 1, 1763231187, 0, '2025-11-15 18:26:26');
INSERT INTO `t_attendance_record` VALUES (644, '001', 1, 1763231188, 0, '2025-11-15 18:26:28');
INSERT INTO `t_attendance_record` VALUES (645, '001', 1, 1763231189, 0, '2025-11-15 18:26:29');
INSERT INTO `t_attendance_record` VALUES (646, '001', 1, 1763231190, 0, '2025-11-15 18:26:30');
INSERT INTO `t_attendance_record` VALUES (647, '001', 1, 1763231191, 0, '2025-11-15 18:26:31');
INSERT INTO `t_attendance_record` VALUES (648, '001', 1, 1763231193, 0, '2025-11-15 18:26:32');
INSERT INTO `t_attendance_record` VALUES (649, '001', 1, 1763231194, 0, '2025-11-15 18:26:33');
INSERT INTO `t_attendance_record` VALUES (650, '001', 1, 1763231195, 0, '2025-11-15 18:26:34');
INSERT INTO `t_attendance_record` VALUES (651, '001', 1, 1763231196, 0, '2025-11-15 18:26:36');
INSERT INTO `t_attendance_record` VALUES (652, '001', 1, 1763231197, 0, '2025-11-15 18:26:37');
INSERT INTO `t_attendance_record` VALUES (653, '001', 1, 1763231198, 0, '2025-11-15 18:26:38');
INSERT INTO `t_attendance_record` VALUES (654, '001', 1, 1763231199, 0, '2025-11-15 18:26:39');
INSERT INTO `t_attendance_record` VALUES (655, '001', 1, 1763231201, 0, '2025-11-15 18:26:40');
INSERT INTO `t_attendance_record` VALUES (656, '001', 1, 1763231202, 0, '2025-11-15 18:26:41');
INSERT INTO `t_attendance_record` VALUES (657, '001', 1, 1763231203, 0, '2025-11-15 18:26:43');
INSERT INTO `t_attendance_record` VALUES (658, '001', 1, 1763231204, 0, '2025-11-15 18:26:44');
INSERT INTO `t_attendance_record` VALUES (659, '001', 1, 1763231205, 0, '2025-11-15 18:26:45');
INSERT INTO `t_attendance_record` VALUES (660, '001', 1, 1763231206, 0, '2025-11-15 18:26:46');
INSERT INTO `t_attendance_record` VALUES (661, '001', 1, 1763231207, 0, '2025-11-15 18:26:47');
INSERT INTO `t_attendance_record` VALUES (662, '001', 1, 1763231209, 0, '2025-11-15 18:26:48');
INSERT INTO `t_attendance_record` VALUES (663, '001', 1, 1763231210, 0, '2025-11-15 18:26:49');
INSERT INTO `t_attendance_record` VALUES (664, '001', 1, 1763231211, 0, '2025-11-15 18:26:50');
INSERT INTO `t_attendance_record` VALUES (665, '001', 1, 1763231212, 0, '2025-11-15 18:26:52');
INSERT INTO `t_attendance_record` VALUES (666, '001', 1, 1763231213, 0, '2025-11-15 18:26:53');
INSERT INTO `t_attendance_record` VALUES (667, '001', 1, 1763231214, 0, '2025-11-15 18:26:54');
INSERT INTO `t_attendance_record` VALUES (668, '001', 1, 1763231215, 0, '2025-11-15 18:26:55');
INSERT INTO `t_attendance_record` VALUES (669, '001', 1, 1763231217, 0, '2025-11-15 18:26:56');
INSERT INTO `t_attendance_record` VALUES (670, '001', 1, 1763231218, 0, '2025-11-15 18:26:57');
INSERT INTO `t_attendance_record` VALUES (671, '001', 1, 1763231219, 0, '2025-11-15 18:26:58');
INSERT INTO `t_attendance_record` VALUES (672, '001', 1, 1763231220, 0, '2025-11-15 18:27:00');
INSERT INTO `t_attendance_record` VALUES (673, '001', 1, 1763231221, 0, '2025-11-15 18:27:01');
INSERT INTO `t_attendance_record` VALUES (674, '001', 1, 1763231222, 0, '2025-11-15 18:27:02');
INSERT INTO `t_attendance_record` VALUES (675, '001', 1, 1763231224, 0, '2025-11-15 18:27:03');
INSERT INTO `t_attendance_record` VALUES (676, '001', 1, 1763231225, 0, '2025-11-15 18:27:04');
INSERT INTO `t_attendance_record` VALUES (677, '001', 1, 1763231226, 0, '2025-11-15 18:27:05');
INSERT INTO `t_attendance_record` VALUES (678, '001', 1, 1763231227, 0, '2025-11-15 18:27:07');
INSERT INTO `t_attendance_record` VALUES (679, '001', 1, 1763231228, 0, '2025-11-15 18:27:08');
INSERT INTO `t_attendance_record` VALUES (680, '001', 1, 1763231229, 0, '2025-11-15 18:27:09');
INSERT INTO `t_attendance_record` VALUES (681, '001', 1, 1763231230, 0, '2025-11-15 18:27:10');
INSERT INTO `t_attendance_record` VALUES (682, '001', 1, 1763231232, 0, '2025-11-15 18:27:11');
INSERT INTO `t_attendance_record` VALUES (683, '001', 1, 1763231233, 0, '2025-11-15 18:27:12');
INSERT INTO `t_attendance_record` VALUES (684, '001', 1, 1763231234, 0, '2025-11-15 18:27:14');
INSERT INTO `t_attendance_record` VALUES (685, '001', 1, 1763231235, 0, '2025-11-15 18:27:15');
INSERT INTO `t_attendance_record` VALUES (686, '001', 1, 1763231236, 0, '2025-11-15 18:27:16');
INSERT INTO `t_attendance_record` VALUES (687, '001', 1, 1763231237, 0, '2025-11-15 18:27:17');
INSERT INTO `t_attendance_record` VALUES (688, '001', 1, 1763231239, 0, '2025-11-15 18:27:18');
INSERT INTO `t_attendance_record` VALUES (689, '001', 1, 1763231240, 0, '2025-11-15 18:27:19');
INSERT INTO `t_attendance_record` VALUES (690, '001', 1, 1763231241, 0, '2025-11-15 18:27:20');
INSERT INTO `t_attendance_record` VALUES (691, '001', 1, 1763231242, 0, '2025-11-15 18:27:22');
INSERT INTO `t_attendance_record` VALUES (692, '001', 1, 1763231243, 0, '2025-11-15 18:27:23');
INSERT INTO `t_attendance_record` VALUES (693, '001', 1, 1763231244, 0, '2025-11-15 18:27:24');
INSERT INTO `t_attendance_record` VALUES (694, '001', 1, 1763231245, 0, '2025-11-15 18:27:25');
INSERT INTO `t_attendance_record` VALUES (695, '001', 1, 1763231247, 0, '2025-11-15 18:27:26');
INSERT INTO `t_attendance_record` VALUES (696, '001', 1, 1763231248, 0, '2025-11-15 18:27:27');
INSERT INTO `t_attendance_record` VALUES (697, '001', 1, 1763231249, 0, '2025-11-15 18:27:28');
INSERT INTO `t_attendance_record` VALUES (698, '001', 1, 1763231250, 0, '2025-11-15 18:27:30');
INSERT INTO `t_attendance_record` VALUES (699, '001', 1, 1763231251, 0, '2025-11-15 18:27:31');
INSERT INTO `t_attendance_record` VALUES (700, '001', 1, 1763231252, 0, '2025-11-15 18:27:32');
INSERT INTO `t_attendance_record` VALUES (701, '001', 1, 1763231254, 0, '2025-11-15 18:27:33');
INSERT INTO `t_attendance_record` VALUES (702, '001', 1, 1763231255, 0, '2025-11-15 18:27:34');
INSERT INTO `t_attendance_record` VALUES (703, '001', 1, 1763231256, 0, '2025-11-15 18:27:35');
INSERT INTO `t_attendance_record` VALUES (704, '001', 1, 1763231257, 0, '2025-11-15 18:27:37');
INSERT INTO `t_attendance_record` VALUES (705, '001', 1, 1763231258, 0, '2025-11-15 18:27:38');
INSERT INTO `t_attendance_record` VALUES (706, '001', 1, 1763231259, 0, '2025-11-15 18:27:39');
INSERT INTO `t_attendance_record` VALUES (707, '001', 1, 1763231260, 0, '2025-11-15 18:27:40');
INSERT INTO `t_attendance_record` VALUES (708, '001', 1, 1763231262, 0, '2025-11-15 18:27:41');
INSERT INTO `t_attendance_record` VALUES (709, '001', 1, 1763231263, 0, '2025-11-15 18:27:42');
INSERT INTO `t_attendance_record` VALUES (710, '001', 1, 1763231264, 0, '2025-11-15 18:27:43');
INSERT INTO `t_attendance_record` VALUES (711, '001', 1, 1763231265, 0, '2025-11-15 18:27:45');
INSERT INTO `t_attendance_record` VALUES (712, '001', 1, 1763231266, 0, '2025-11-15 18:27:46');
INSERT INTO `t_attendance_record` VALUES (713, '001', 1, 1763231267, 0, '2025-11-15 18:27:47');
INSERT INTO `t_attendance_record` VALUES (714, '001', 1, 1763231269, 0, '2025-11-15 18:27:48');
INSERT INTO `t_attendance_record` VALUES (715, '001', 1, 1763231270, 0, '2025-11-15 18:27:49');
INSERT INTO `t_attendance_record` VALUES (716, '001', 1, 1763231271, 0, '2025-11-15 18:27:50');
INSERT INTO `t_attendance_record` VALUES (717, '001', 1, 1763231272, 0, '2025-11-15 18:27:52');
INSERT INTO `t_attendance_record` VALUES (718, '001', 1, 1763231273, 0, '2025-11-15 18:27:53');
INSERT INTO `t_attendance_record` VALUES (719, '001', 1, 1763231274, 0, '2025-11-15 18:27:54');
INSERT INTO `t_attendance_record` VALUES (720, '001', 1, 1763231276, 0, '2025-11-15 18:27:55');
INSERT INTO `t_attendance_record` VALUES (721, '001', 1, 1763231277, 0, '2025-11-15 18:27:56');
INSERT INTO `t_attendance_record` VALUES (722, '001', 1, 1763231278, 0, '2025-11-15 18:27:57');
INSERT INTO `t_attendance_record` VALUES (723, '001', 1, 1763231279, 0, '2025-11-15 18:27:59');
INSERT INTO `t_attendance_record` VALUES (724, '001', 1, 1763231280, 0, '2025-11-15 18:28:00');
INSERT INTO `t_attendance_record` VALUES (725, '001', 1, 1763231281, 0, '2025-11-15 18:28:01');
INSERT INTO `t_attendance_record` VALUES (726, '001', 1, 1763231283, 0, '2025-11-15 18:28:02');
INSERT INTO `t_attendance_record` VALUES (727, '001', 1, 1763231284, 0, '2025-11-15 18:28:03');
INSERT INTO `t_attendance_record` VALUES (728, '001', 1, 1763231285, 0, '2025-11-15 18:28:04');
INSERT INTO `t_attendance_record` VALUES (729, '001', 1, 1763231286, 0, '2025-11-15 18:28:05');
INSERT INTO `t_attendance_record` VALUES (730, '001', 1, 1763231287, 0, '2025-11-15 18:28:07');
INSERT INTO `t_attendance_record` VALUES (731, '001', 1, 1763231288, 0, '2025-11-15 18:28:08');
INSERT INTO `t_attendance_record` VALUES (732, '001', 1, 1763231289, 0, '2025-11-15 18:28:09');
INSERT INTO `t_attendance_record` VALUES (733, '001', 1, 1763231291, 0, '2025-11-15 18:28:10');
INSERT INTO `t_attendance_record` VALUES (734, '001', 1, 1763231292, 0, '2025-11-15 18:28:11');
INSERT INTO `t_attendance_record` VALUES (735, '001', 1, 1763231293, 0, '2025-11-15 18:28:12');
INSERT INTO `t_attendance_record` VALUES (736, '001', 1, 1763231294, 0, '2025-11-15 18:28:13');
INSERT INTO `t_attendance_record` VALUES (737, '001', 1, 1763231295, 0, '2025-11-15 18:28:15');
INSERT INTO `t_attendance_record` VALUES (738, '001', 1, 1763231296, 0, '2025-11-15 18:28:16');
INSERT INTO `t_attendance_record` VALUES (739, '001', 1, 1763231297, 0, '2025-11-15 18:28:17');
INSERT INTO `t_attendance_record` VALUES (740, '001', 1, 1763231299, 0, '2025-11-15 18:28:18');
INSERT INTO `t_attendance_record` VALUES (741, '001', 1, 1763231300, 0, '2025-11-15 18:28:19');
INSERT INTO `t_attendance_record` VALUES (742, '001', 1, 1763231301, 0, '2025-11-15 18:28:20');
INSERT INTO `t_attendance_record` VALUES (743, '001', 1, 1763231302, 0, '2025-11-15 18:28:22');
INSERT INTO `t_attendance_record` VALUES (744, '001', 1, 1763231303, 0, '2025-11-15 18:28:23');
INSERT INTO `t_attendance_record` VALUES (745, '001', 1, 1763231304, 0, '2025-11-15 18:28:24');
INSERT INTO `t_attendance_record` VALUES (746, '001', 1, 1763231306, 0, '2025-11-15 18:28:25');
INSERT INTO `t_attendance_record` VALUES (747, '001', 1, 1763231307, 0, '2025-11-15 18:28:26');
INSERT INTO `t_attendance_record` VALUES (748, '001', 1, 1763231308, 0, '2025-11-15 18:28:27');
INSERT INTO `t_attendance_record` VALUES (749, '001', 1, 1763231309, 0, '2025-11-15 18:28:29');
INSERT INTO `t_attendance_record` VALUES (750, '001', 1, 1763231310, 0, '2025-11-15 18:28:30');
INSERT INTO `t_attendance_record` VALUES (751, '001', 1, 1763231311, 0, '2025-11-15 18:28:31');
INSERT INTO `t_attendance_record` VALUES (752, '001', 1, 1763231312, 0, '2025-11-15 18:28:32');
INSERT INTO `t_attendance_record` VALUES (753, '001', 1, 1763231314, 0, '2025-11-15 18:28:33');
INSERT INTO `t_attendance_record` VALUES (754, '001', 1, 1763231315, 0, '2025-11-15 18:28:34');
INSERT INTO `t_attendance_record` VALUES (755, '001', 1, 1763231316, 0, '2025-11-15 18:28:35');
INSERT INTO `t_attendance_record` VALUES (756, '001', 1, 1763231317, 0, '2025-11-15 18:28:37');
INSERT INTO `t_attendance_record` VALUES (757, '001', 1, 1763231318, 0, '2025-11-15 18:28:38');
INSERT INTO `t_attendance_record` VALUES (758, '001', 1, 1763231319, 0, '2025-11-15 18:28:39');
INSERT INTO `t_attendance_record` VALUES (759, '001', 1, 1763231321, 0, '2025-11-15 18:28:40');
INSERT INTO `t_attendance_record` VALUES (760, '001', 1, 1763231322, 0, '2025-11-15 18:28:41');
INSERT INTO `t_attendance_record` VALUES (761, '001', 1, 1763231323, 0, '2025-11-15 18:28:42');
INSERT INTO `t_attendance_record` VALUES (762, '001', 1, 1763231324, 0, '2025-11-15 18:28:44');
INSERT INTO `t_attendance_record` VALUES (763, '001', 1, 1763231325, 0, '2025-11-15 18:28:45');
INSERT INTO `t_attendance_record` VALUES (764, '001', 1, 1763231326, 0, '2025-11-15 18:28:46');
INSERT INTO `t_attendance_record` VALUES (765, '001', 1, 1763231328, 0, '2025-11-15 18:28:47');
INSERT INTO `t_attendance_record` VALUES (766, '001', 1, 1763231329, 0, '2025-11-15 18:28:48');
INSERT INTO `t_attendance_record` VALUES (767, '001', 1, 1763231330, 0, '2025-11-15 18:28:49');
INSERT INTO `t_attendance_record` VALUES (768, '001', 1, 1763231331, 0, '2025-11-15 18:28:51');
INSERT INTO `t_attendance_record` VALUES (769, '001', 1, 1763231332, 0, '2025-11-15 18:28:52');
INSERT INTO `t_attendance_record` VALUES (770, '001', 1, 1763231333, 0, '2025-11-15 18:28:53');
INSERT INTO `t_attendance_record` VALUES (771, '001', 1, 1763231334, 0, '2025-11-15 18:28:54');
INSERT INTO `t_attendance_record` VALUES (772, '001', 1, 1763231336, 0, '2025-11-15 18:28:55');
INSERT INTO `t_attendance_record` VALUES (773, '001', 1, 1763231337, 0, '2025-11-15 18:28:56');
INSERT INTO `t_attendance_record` VALUES (774, '001', 1, 1763231338, 0, '2025-11-15 18:28:57');
INSERT INTO `t_attendance_record` VALUES (775, '001', 1, 1763231339, 0, '2025-11-15 18:28:59');
INSERT INTO `t_attendance_record` VALUES (776, '001', 1, 1763231340, 0, '2025-11-15 18:29:00');
INSERT INTO `t_attendance_record` VALUES (777, '001', 1, 1763231341, 0, '2025-11-15 18:29:01');
INSERT INTO `t_attendance_record` VALUES (778, '001', 1, 1763231342, 0, '2025-11-15 18:29:02');
INSERT INTO `t_attendance_record` VALUES (779, '001', 1, 1763231344, 0, '2025-11-15 18:29:03');
INSERT INTO `t_attendance_record` VALUES (780, '001', 1, 1763231345, 0, '2025-11-15 18:29:04');
INSERT INTO `t_attendance_record` VALUES (781, '001', 1, 1763231346, 0, '2025-11-15 18:29:06');
INSERT INTO `t_attendance_record` VALUES (782, '001', 1, 1763231347, 0, '2025-11-15 18:29:07');
INSERT INTO `t_attendance_record` VALUES (783, '001', 1, 1763231348, 0, '2025-11-15 18:29:08');
INSERT INTO `t_attendance_record` VALUES (784, '001', 1, 1763231349, 0, '2025-11-15 18:29:09');
INSERT INTO `t_attendance_record` VALUES (785, '001', 1, 1763231351, 0, '2025-11-15 18:29:10');
INSERT INTO `t_attendance_record` VALUES (786, '001', 1, 1763231352, 0, '2025-11-15 18:29:11');
INSERT INTO `t_attendance_record` VALUES (787, '001', 1, 1763231353, 0, '2025-11-15 18:29:12');
INSERT INTO `t_attendance_record` VALUES (788, '001', 1, 1763231354, 0, '2025-11-15 18:29:14');
INSERT INTO `t_attendance_record` VALUES (789, '001', 1, 1763231355, 0, '2025-11-15 18:29:15');
INSERT INTO `t_attendance_record` VALUES (790, '001', 1, 1763231356, 0, '2025-11-15 18:29:16');
INSERT INTO `t_attendance_record` VALUES (791, '001', 1, 1763231358, 0, '2025-11-15 18:29:17');
INSERT INTO `t_attendance_record` VALUES (792, '001', 1, 1763231359, 0, '2025-11-15 18:29:18');
INSERT INTO `t_attendance_record` VALUES (793, '001', 1, 1763231360, 0, '2025-11-15 18:29:19');
INSERT INTO `t_attendance_record` VALUES (794, '001', 1, 1763231361, 0, '2025-11-15 18:29:21');
INSERT INTO `t_attendance_record` VALUES (795, '001', 1, 1763231362, 0, '2025-11-15 18:29:22');
INSERT INTO `t_attendance_record` VALUES (796, '001', 1, 1763231363, 0, '2025-11-15 18:29:23');
INSERT INTO `t_attendance_record` VALUES (797, '001', 1, 1763231364, 0, '2025-11-15 18:29:24');
INSERT INTO `t_attendance_record` VALUES (798, '001', 1, 1763231366, 0, '2025-11-15 18:29:25');
INSERT INTO `t_attendance_record` VALUES (799, '001', 1, 1763231367, 0, '2025-11-15 18:29:26');
INSERT INTO `t_attendance_record` VALUES (800, '001', 1, 1763231368, 0, '2025-11-15 18:29:27');
INSERT INTO `t_attendance_record` VALUES (801, '001', 1, 1763231369, 0, '2025-11-15 18:29:29');
INSERT INTO `t_attendance_record` VALUES (802, '001', 1, 1763231370, 0, '2025-11-15 18:29:30');
INSERT INTO `t_attendance_record` VALUES (803, '001', 1, 1763231371, 0, '2025-11-15 18:29:31');
INSERT INTO `t_attendance_record` VALUES (804, '001', 1, 1763231372, 0, '2025-11-15 18:29:32');
INSERT INTO `t_attendance_record` VALUES (805, '001', 1, 1763231374, 0, '2025-11-15 18:29:33');
INSERT INTO `t_attendance_record` VALUES (806, '001', 1, 1763231375, 0, '2025-11-15 18:29:34');
INSERT INTO `t_attendance_record` VALUES (807, '001', 1, 1763231376, 0, '2025-11-15 18:29:35');
INSERT INTO `t_attendance_record` VALUES (808, '001', 1, 1763231377, 0, '2025-11-15 18:29:37');
INSERT INTO `t_attendance_record` VALUES (809, '001', 1, 1763231378, 0, '2025-11-15 18:29:38');
INSERT INTO `t_attendance_record` VALUES (810, '001', 1, 1763231379, 0, '2025-11-15 18:29:39');
INSERT INTO `t_attendance_record` VALUES (811, '001', 1, 1763231381, 0, '2025-11-15 18:29:40');
INSERT INTO `t_attendance_record` VALUES (812, '001', 1, 1763231382, 0, '2025-11-15 18:29:41');
INSERT INTO `t_attendance_record` VALUES (813, '001', 1, 1763231383, 0, '2025-11-15 18:29:42');
INSERT INTO `t_attendance_record` VALUES (814, '001', 1, 1763231384, 0, '2025-11-15 18:29:44');
INSERT INTO `t_attendance_record` VALUES (815, '001', 1, 1763231385, 0, '2025-11-15 18:29:45');
INSERT INTO `t_attendance_record` VALUES (816, '001', 1, 1763231386, 0, '2025-11-15 18:29:46');
INSERT INTO `t_attendance_record` VALUES (817, '001', 1, 1763231387, 0, '2025-11-15 18:29:47');
INSERT INTO `t_attendance_record` VALUES (818, '001', 1, 1763231389, 0, '2025-11-15 18:29:48');
INSERT INTO `t_attendance_record` VALUES (819, '001', 1, 1763231390, 0, '2025-11-15 18:29:49');
INSERT INTO `t_attendance_record` VALUES (820, '001', 1, 1763231391, 0, '2025-11-15 18:29:50');
INSERT INTO `t_attendance_record` VALUES (821, '001', 1, 1763231392, 0, '2025-11-15 18:29:52');
INSERT INTO `t_attendance_record` VALUES (822, '001', 1, 1763231393, 0, '2025-11-15 18:29:53');
INSERT INTO `t_attendance_record` VALUES (823, '001', 1, 1763231394, 0, '2025-11-15 18:29:54');
INSERT INTO `t_attendance_record` VALUES (824, '001', 1, 1763231396, 0, '2025-11-15 18:29:55');
INSERT INTO `t_attendance_record` VALUES (825, '001', 1, 1763231397, 0, '2025-11-15 18:29:56');
INSERT INTO `t_attendance_record` VALUES (826, '001', 1, 1763231398, 0, '2025-11-15 18:29:57');
INSERT INTO `t_attendance_record` VALUES (827, '001', 1, 1763231399, 0, '2025-11-15 18:29:59');
INSERT INTO `t_attendance_record` VALUES (828, '001', 1, 1763231400, 0, '2025-11-15 18:30:00');
INSERT INTO `t_attendance_record` VALUES (829, '001', 1, 1763231401, 0, '2025-11-15 18:30:01');
INSERT INTO `t_attendance_record` VALUES (830, '001', 1, 1763231403, 0, '2025-11-15 18:30:02');
INSERT INTO `t_attendance_record` VALUES (831, '001', 1, 1763231404, 0, '2025-11-15 18:30:03');
INSERT INTO `t_attendance_record` VALUES (832, '001', 1, 1763231405, 0, '2025-11-15 18:30:05');
INSERT INTO `t_attendance_record` VALUES (833, '001', 1, 1763231406, 0, '2025-11-15 18:30:06');
INSERT INTO `t_attendance_record` VALUES (834, '001', 1, 1763231408, 0, '2025-11-15 18:30:07');
INSERT INTO `t_attendance_record` VALUES (835, '001', 1, 1763231409, 0, '2025-11-15 18:30:08');
INSERT INTO `t_attendance_record` VALUES (836, '001', 1, 1763231410, 0, '2025-11-15 18:30:10');
INSERT INTO `t_attendance_record` VALUES (837, '001', 1, 1763231411, 0, '2025-11-15 18:30:11');
INSERT INTO `t_attendance_record` VALUES (838, '001', 1, 1763231413, 0, '2025-11-15 18:30:12');
INSERT INTO `t_attendance_record` VALUES (839, '001', 1, 1763231414, 0, '2025-11-15 18:30:13');
INSERT INTO `t_attendance_record` VALUES (840, '001', 1, 1763231415, 0, '2025-11-15 18:30:15');
INSERT INTO `t_attendance_record` VALUES (841, '001', 1, 1763231416, 0, '2025-11-15 18:30:16');
INSERT INTO `t_attendance_record` VALUES (842, '001', 1, 1763231418, 0, '2025-11-15 18:30:17');
INSERT INTO `t_attendance_record` VALUES (843, '001', 1, 1763231419, 0, '2025-11-15 18:30:19');
INSERT INTO `t_attendance_record` VALUES (844, '001', 1, 1763231420, 0, '2025-11-15 18:30:20');
INSERT INTO `t_attendance_record` VALUES (845, '001', 1, 1763231422, 0, '2025-11-15 18:30:21');
INSERT INTO `t_attendance_record` VALUES (846, '001', 1, 1763231423, 0, '2025-11-15 18:30:22');
INSERT INTO `t_attendance_record` VALUES (847, '001', 1, 1763231424, 0, '2025-11-15 18:30:24');
INSERT INTO `t_attendance_record` VALUES (848, '001', 1, 1763231425, 0, '2025-11-15 18:30:25');
INSERT INTO `t_attendance_record` VALUES (849, '001', 1, 1763231427, 0, '2025-11-15 18:30:26');
INSERT INTO `t_attendance_record` VALUES (850, '001', 1, 1763231428, 0, '2025-11-15 18:30:27');
INSERT INTO `t_attendance_record` VALUES (851, '001', 1, 1763231429, 0, '2025-11-15 18:30:29');
INSERT INTO `t_attendance_record` VALUES (852, '001', 1, 1763231430, 0, '2025-11-15 18:30:30');
INSERT INTO `t_attendance_record` VALUES (853, '001', 1, 1763231431, 0, '2025-11-15 18:30:31');
INSERT INTO `t_attendance_record` VALUES (854, '001', 1, 1763231433, 0, '2025-11-15 18:30:32');
INSERT INTO `t_attendance_record` VALUES (855, '001', 1, 1763231434, 0, '2025-11-15 18:30:34');
INSERT INTO `t_attendance_record` VALUES (856, '001', 1, 1763231435, 0, '2025-11-15 18:30:35');
INSERT INTO `t_attendance_record` VALUES (857, '001', 1, 1763231437, 0, '2025-11-15 18:30:36');
INSERT INTO `t_attendance_record` VALUES (858, '001', 1, 1763231438, 0, '2025-11-15 18:30:38');
INSERT INTO `t_attendance_record` VALUES (859, '001', 1, 1763231439, 0, '2025-11-15 18:30:39');
INSERT INTO `t_attendance_record` VALUES (860, '001', 1, 1763231440, 0, '2025-11-15 18:30:40');
INSERT INTO `t_attendance_record` VALUES (861, '001', 1, 1763231442, 0, '2025-11-15 18:30:41');
INSERT INTO `t_attendance_record` VALUES (862, '001', 1, 1763232089, 0, '2025-11-15 18:41:28');
INSERT INTO `t_attendance_record` VALUES (863, '001', 1, 1763232090, 0, '2025-11-15 18:41:29');
INSERT INTO `t_attendance_record` VALUES (864, '001', 1, 1763232091, 0, '2025-11-15 18:41:30');
INSERT INTO `t_attendance_record` VALUES (865, '001', 1, 1763232092, 0, '2025-11-15 18:41:32');
INSERT INTO `t_attendance_record` VALUES (866, '001', 1, 1763232093, 0, '2025-11-15 18:41:33');
INSERT INTO `t_attendance_record` VALUES (867, '001', 1, 1763232094, 0, '2025-11-15 18:41:34');
INSERT INTO `t_attendance_record` VALUES (868, '001', 1, 1763232095, 0, '2025-11-15 18:41:35');
INSERT INTO `t_attendance_record` VALUES (869, '001', 1, 1763232097, 0, '2025-11-15 18:41:36');
INSERT INTO `t_attendance_record` VALUES (870, '001', 1, 1763232098, 0, '2025-11-15 18:41:38');
INSERT INTO `t_attendance_record` VALUES (871, '001', 1, 1763232099, 0, '2025-11-15 18:41:39');
INSERT INTO `t_attendance_record` VALUES (872, '001', 1, 1763232100, 0, '2025-11-15 18:41:40');
INSERT INTO `t_attendance_record` VALUES (873, '001', 1, 1763232102, 0, '2025-11-15 18:41:41');
INSERT INTO `t_attendance_record` VALUES (874, '001', 1, 1763232103, 0, '2025-11-15 18:41:42');
INSERT INTO `t_attendance_record` VALUES (875, '001', 1, 1763232104, 0, '2025-11-15 18:41:44');
INSERT INTO `t_attendance_record` VALUES (876, '001', 1, 1763232105, 0, '2025-11-15 18:41:45');
INSERT INTO `t_attendance_record` VALUES (877, '001', 1, 1763232106, 0, '2025-11-15 18:41:46');
INSERT INTO `t_attendance_record` VALUES (878, '001', 1, 1763232108, 0, '2025-11-15 18:41:47');
INSERT INTO `t_attendance_record` VALUES (879, '001', 1, 1763232109, 0, '2025-11-15 18:41:48');
INSERT INTO `t_attendance_record` VALUES (880, '001', 1, 1763232110, 0, '2025-11-15 18:41:50');
INSERT INTO `t_attendance_record` VALUES (881, '001', 1, 1763232111, 0, '2025-11-15 18:41:51');
INSERT INTO `t_attendance_record` VALUES (882, '001', 1, 1763232112, 0, '2025-11-15 18:41:52');
INSERT INTO `t_attendance_record` VALUES (883, '001', 1, 1763232114, 0, '2025-11-15 18:41:53');
INSERT INTO `t_attendance_record` VALUES (884, '001', 1, 1763232115, 0, '2025-11-15 18:41:54');
INSERT INTO `t_attendance_record` VALUES (885, '001', 1, 1763232116, 0, '2025-11-15 18:41:55');
INSERT INTO `t_attendance_record` VALUES (886, '001', 1, 1763232117, 0, '2025-11-15 18:41:57');
INSERT INTO `t_attendance_record` VALUES (887, '001', 1, 1763232118, 0, '2025-11-15 18:41:58');
INSERT INTO `t_attendance_record` VALUES (888, '001', 1, 1763232120, 0, '2025-11-15 18:41:59');
INSERT INTO `t_attendance_record` VALUES (889, '001', 1, 1763232121, 0, '2025-11-15 18:42:01');
INSERT INTO `t_attendance_record` VALUES (890, '001', 1, 1763232122, 0, '2025-11-15 18:42:02');
INSERT INTO `t_attendance_record` VALUES (891, '001', 1, 1763232123, 0, '2025-11-15 18:42:03');
INSERT INTO `t_attendance_record` VALUES (892, '001', 1, 1763232124, 0, '2025-11-15 18:42:04');
INSERT INTO `t_attendance_record` VALUES (893, '001', 1, 1763232126, 0, '2025-11-15 18:42:05');
INSERT INTO `t_attendance_record` VALUES (894, '001', 1, 1763232127, 0, '2025-11-15 18:42:06');
INSERT INTO `t_attendance_record` VALUES (895, '001', 1, 1763232128, 0, '2025-11-15 18:42:07');
INSERT INTO `t_attendance_record` VALUES (896, '001', 1, 1763232129, 0, '2025-11-15 18:42:09');
INSERT INTO `t_attendance_record` VALUES (897, '001', 1, 1763232130, 0, '2025-11-15 18:42:10');
INSERT INTO `t_attendance_record` VALUES (898, '001', 1, 1763232131, 0, '2025-11-15 18:42:11');
INSERT INTO `t_attendance_record` VALUES (899, '001', 1, 1763232133, 0, '2025-11-15 18:42:12');
INSERT INTO `t_attendance_record` VALUES (900, '001', 1, 1763232134, 0, '2025-11-15 18:42:13');
INSERT INTO `t_attendance_record` VALUES (901, '001', 1, 1763232135, 0, '2025-11-15 18:42:14');
INSERT INTO `t_attendance_record` VALUES (902, '001', 1, 1763232136, 0, '2025-11-15 18:42:16');
INSERT INTO `t_attendance_record` VALUES (903, '001', 1, 1763232137, 0, '2025-11-15 18:42:17');
INSERT INTO `t_attendance_record` VALUES (904, '001', 1, 1763232138, 0, '2025-11-15 18:42:18');
INSERT INTO `t_attendance_record` VALUES (905, '001', 1, 1763232139, 0, '2025-11-15 18:42:19');
INSERT INTO `t_attendance_record` VALUES (906, '001', 1, 1763232141, 0, '2025-11-15 18:42:20');
INSERT INTO `t_attendance_record` VALUES (907, '001', 1, 1763232142, 0, '2025-11-15 18:42:21');
INSERT INTO `t_attendance_record` VALUES (908, '001', 1, 1763232143, 0, '2025-11-15 18:42:22');
INSERT INTO `t_attendance_record` VALUES (909, '001', 1, 1763232144, 0, '2025-11-15 18:42:24');
INSERT INTO `t_attendance_record` VALUES (910, '001', 1, 1763232145, 0, '2025-11-15 18:42:25');
INSERT INTO `t_attendance_record` VALUES (911, '001', 1, 1763232146, 0, '2025-11-15 18:42:26');
INSERT INTO `t_attendance_record` VALUES (912, '001', 1, 1763232148, 0, '2025-11-15 18:42:27');
INSERT INTO `t_attendance_record` VALUES (913, '001', 1, 1763232149, 0, '2025-11-15 18:42:28');
INSERT INTO `t_attendance_record` VALUES (914, '001', 1, 1763232150, 0, '2025-11-15 18:42:29');
INSERT INTO `t_attendance_record` VALUES (915, '001', 1, 1763232151, 0, '2025-11-15 18:42:30');
INSERT INTO `t_attendance_record` VALUES (916, '001', 1, 1763232152, 0, '2025-11-15 18:42:32');
INSERT INTO `t_attendance_record` VALUES (917, '001', 1, 1763232153, 0, '2025-11-15 18:42:33');
INSERT INTO `t_attendance_record` VALUES (918, '001', 1, 1763232154, 0, '2025-11-15 18:42:34');
INSERT INTO `t_attendance_record` VALUES (919, '001', 1, 1763232156, 0, '2025-11-15 18:42:35');
INSERT INTO `t_attendance_record` VALUES (920, '001', 1, 1763232157, 0, '2025-11-15 18:42:36');
INSERT INTO `t_attendance_record` VALUES (921, '001', 1, 1763232158, 0, '2025-11-15 18:42:37');
INSERT INTO `t_attendance_record` VALUES (922, '001', 1, 1763232159, 0, '2025-11-15 18:42:39');
INSERT INTO `t_attendance_record` VALUES (923, '001', 1, 1763232160, 0, '2025-11-15 18:42:40');
INSERT INTO `t_attendance_record` VALUES (924, '001', 1, 1763232161, 0, '2025-11-15 18:42:41');
INSERT INTO `t_attendance_record` VALUES (925, '001', 1, 1763232162, 0, '2025-11-15 18:42:42');
INSERT INTO `t_attendance_record` VALUES (926, '001', 1, 1763232164, 0, '2025-11-15 18:42:43');
INSERT INTO `t_attendance_record` VALUES (927, '001', 1, 1763232165, 0, '2025-11-15 18:42:44');
INSERT INTO `t_attendance_record` VALUES (928, '001', 1, 1763232166, 0, '2025-11-15 18:42:45');
INSERT INTO `t_attendance_record` VALUES (929, '001', 1, 1763232167, 0, '2025-11-15 18:42:47');
INSERT INTO `t_attendance_record` VALUES (930, '001', 1, 1763232168, 0, '2025-11-15 18:42:48');
INSERT INTO `t_attendance_record` VALUES (931, '001', 1, 1763232169, 0, '2025-11-15 18:42:49');
INSERT INTO `t_attendance_record` VALUES (932, '001', 1, 1763232170, 0, '2025-11-15 18:42:50');
INSERT INTO `t_attendance_record` VALUES (933, '001', 1, 1763232172, 0, '2025-11-15 18:42:51');
INSERT INTO `t_attendance_record` VALUES (934, '001', 1, 1763232173, 0, '2025-11-15 18:42:52');
INSERT INTO `t_attendance_record` VALUES (935, '001', 1, 1763232174, 0, '2025-11-15 18:42:54');
INSERT INTO `t_attendance_record` VALUES (936, '001', 1, 1763232175, 0, '2025-11-15 18:42:55');
INSERT INTO `t_attendance_record` VALUES (937, '001', 1, 1763232176, 0, '2025-11-15 18:42:56');
INSERT INTO `t_attendance_record` VALUES (938, '001', 1, 1763232177, 0, '2025-11-15 18:42:57');
INSERT INTO `t_attendance_record` VALUES (939, '001', 1, 1763232179, 0, '2025-11-15 18:42:58');
INSERT INTO `t_attendance_record` VALUES (940, '001', 1, 1763232180, 0, '2025-11-15 18:42:59');
INSERT INTO `t_attendance_record` VALUES (941, '001', 1, 1763232181, 0, '2025-11-15 18:43:00');
INSERT INTO `t_attendance_record` VALUES (942, '001', 1, 1763232182, 0, '2025-11-15 18:43:01');
INSERT INTO `t_attendance_record` VALUES (943, '001', 1, 1763232183, 0, '2025-11-15 18:43:03');
INSERT INTO `t_attendance_record` VALUES (944, '001', 1, 1763232184, 0, '2025-11-15 18:43:04');
INSERT INTO `t_attendance_record` VALUES (945, '001', 1, 1763232185, 0, '2025-11-15 18:43:05');
INSERT INTO `t_attendance_record` VALUES (946, '001', 1, 1763232187, 0, '2025-11-15 18:43:06');
INSERT INTO `t_attendance_record` VALUES (947, '001', 1, 1763232188, 0, '2025-11-15 18:43:07');
INSERT INTO `t_attendance_record` VALUES (948, '001', 1, 1763232189, 0, '2025-11-15 18:43:08');
INSERT INTO `t_attendance_record` VALUES (949, '001', 1, 1763232190, 0, '2025-11-15 18:43:10');
INSERT INTO `t_attendance_record` VALUES (950, '001', 1, 1763232191, 0, '2025-11-15 18:43:11');
INSERT INTO `t_attendance_record` VALUES (951, '001', 1, 1763232192, 0, '2025-11-15 18:43:12');
INSERT INTO `t_attendance_record` VALUES (952, '001', 1, 1763232193, 0, '2025-11-15 18:43:13');
INSERT INTO `t_attendance_record` VALUES (953, '001', 1, 1763232195, 0, '2025-11-15 18:43:14');
INSERT INTO `t_attendance_record` VALUES (954, '001', 1, 1763232196, 0, '2025-11-15 18:43:15');
INSERT INTO `t_attendance_record` VALUES (955, '001', 1, 1763232197, 0, '2025-11-15 18:43:16');
INSERT INTO `t_attendance_record` VALUES (956, '001', 1, 1763232198, 0, '2025-11-15 18:43:18');
INSERT INTO `t_attendance_record` VALUES (957, '001', 1, 1763232199, 0, '2025-11-15 18:43:19');
INSERT INTO `t_attendance_record` VALUES (958, '001', 1, 1763232200, 0, '2025-11-15 18:43:20');
INSERT INTO `t_attendance_record` VALUES (959, '001', 1, 1763232201, 0, '2025-11-15 18:43:21');
INSERT INTO `t_attendance_record` VALUES (960, '001', 1, 1763232203, 0, '2025-11-15 18:43:22');
INSERT INTO `t_attendance_record` VALUES (961, '001', 1, 1763232204, 0, '2025-11-15 18:43:23');
INSERT INTO `t_attendance_record` VALUES (962, '001', 1, 1763232205, 0, '2025-11-15 18:43:24');
INSERT INTO `t_attendance_record` VALUES (963, '001', 1, 1763232206, 0, '2025-11-15 18:43:26');
INSERT INTO `t_attendance_record` VALUES (964, '001', 1, 1763232207, 0, '2025-11-15 18:43:27');
INSERT INTO `t_attendance_record` VALUES (965, '001', 1, 1763232208, 0, '2025-11-15 18:43:28');
INSERT INTO `t_attendance_record` VALUES (966, '001', 1, 1763232209, 0, '2025-11-15 18:43:29');
INSERT INTO `t_attendance_record` VALUES (967, '001', 1, 1763232210, 0, '2025-11-15 18:43:30');
INSERT INTO `t_attendance_record` VALUES (968, '001', 1, 1763232212, 0, '2025-11-15 18:43:31');
INSERT INTO `t_attendance_record` VALUES (969, '001', 1, 1763232213, 0, '2025-11-15 18:43:32');
INSERT INTO `t_attendance_record` VALUES (970, '001', 1, 1763232214, 0, '2025-11-15 18:43:34');
INSERT INTO `t_attendance_record` VALUES (971, '001', 1, 1763232215, 0, '2025-11-15 18:43:35');
INSERT INTO `t_attendance_record` VALUES (972, '001', 1, 1763232216, 0, '2025-11-15 18:43:36');
INSERT INTO `t_attendance_record` VALUES (973, '001', 1, 1763232217, 0, '2025-11-15 18:43:37');
INSERT INTO `t_attendance_record` VALUES (974, '001', 1, 1763232218, 0, '2025-11-15 18:43:38');
INSERT INTO `t_attendance_record` VALUES (975, '001', 1, 1763232220, 0, '2025-11-15 18:43:39');
INSERT INTO `t_attendance_record` VALUES (976, '001', 1, 1763232221, 0, '2025-11-15 18:43:40');
INSERT INTO `t_attendance_record` VALUES (977, '001', 1, 1763232222, 0, '2025-11-15 18:43:41');
INSERT INTO `t_attendance_record` VALUES (978, '001', 1, 1763232223, 0, '2025-11-15 18:43:43');
INSERT INTO `t_attendance_record` VALUES (979, '001', 1, 1763232224, 0, '2025-11-15 18:43:44');
INSERT INTO `t_attendance_record` VALUES (980, '001', 1, 1763232225, 0, '2025-11-15 18:43:45');
INSERT INTO `t_attendance_record` VALUES (981, '001', 1, 1763232226, 0, '2025-11-15 18:43:46');
INSERT INTO `t_attendance_record` VALUES (982, '001', 1, 1763232227, 0, '2025-11-15 18:43:47');
INSERT INTO `t_attendance_record` VALUES (983, '001', 1, 1763232229, 0, '2025-11-15 18:43:48');
INSERT INTO `t_attendance_record` VALUES (984, '001', 1, 1763232230, 0, '2025-11-15 18:43:49');
INSERT INTO `t_attendance_record` VALUES (985, '001', 1, 1763232231, 0, '2025-11-15 18:43:50');
INSERT INTO `t_attendance_record` VALUES (986, '001', 1, 1763232232, 0, '2025-11-15 18:43:52');
INSERT INTO `t_attendance_record` VALUES (987, '001', 1, 1763232233, 0, '2025-11-15 18:43:53');
INSERT INTO `t_attendance_record` VALUES (988, '001', 1, 1763232234, 0, '2025-11-15 18:43:54');
INSERT INTO `t_attendance_record` VALUES (989, '001', 1, 1763232235, 0, '2025-11-15 18:43:55');
INSERT INTO `t_attendance_record` VALUES (990, '001', 1, 1763232237, 0, '2025-11-15 18:43:56');
INSERT INTO `t_attendance_record` VALUES (991, '001', 1, 1763232238, 0, '2025-11-15 18:43:57');
INSERT INTO `t_attendance_record` VALUES (992, '001', 1, 1763232239, 0, '2025-11-15 18:43:58');
INSERT INTO `t_attendance_record` VALUES (993, '001', 1, 1763232240, 0, '2025-11-15 18:44:00');
INSERT INTO `t_attendance_record` VALUES (994, '001', 1, 1763232241, 0, '2025-11-15 18:44:01');
INSERT INTO `t_attendance_record` VALUES (995, '001', 1, 1763232242, 0, '2025-11-15 18:44:02');
INSERT INTO `t_attendance_record` VALUES (996, '001', 1, 1763232243, 0, '2025-11-15 18:44:03');
INSERT INTO `t_attendance_record` VALUES (997, '001', 1, 1763232245, 0, '2025-11-15 18:44:04');
INSERT INTO `t_attendance_record` VALUES (998, '001', 1, 1763232246, 0, '2025-11-15 18:44:05');
INSERT INTO `t_attendance_record` VALUES (999, '001', 1, 1763232247, 0, '2025-11-15 18:44:06');
INSERT INTO `t_attendance_record` VALUES (1000, '001', 1, 1763232248, 0, '2025-11-15 18:44:07');
INSERT INTO `t_attendance_record` VALUES (1001, '001', 1, 1763232249, 0, '2025-11-15 18:44:09');
INSERT INTO `t_attendance_record` VALUES (1002, '001', 1, 1763232250, 0, '2025-11-15 18:44:10');
INSERT INTO `t_attendance_record` VALUES (1003, '001', 1, 1763232251, 0, '2025-11-15 18:44:11');
INSERT INTO `t_attendance_record` VALUES (1004, '001', 1, 1763232252, 0, '2025-11-15 18:44:12');
INSERT INTO `t_attendance_record` VALUES (1005, '001', 1, 1763232254, 0, '2025-11-15 18:44:13');
INSERT INTO `t_attendance_record` VALUES (1006, '001', 1, 1763232255, 0, '2025-11-15 18:44:14');
INSERT INTO `t_attendance_record` VALUES (1007, '001', 1, 1763232256, 0, '2025-11-15 18:44:15');
INSERT INTO `t_attendance_record` VALUES (1008, '001', 1, 1763232257, 0, '2025-11-15 18:44:16');
INSERT INTO `t_attendance_record` VALUES (1009, '001', 1, 1763232258, 0, '2025-11-15 18:44:18');
INSERT INTO `t_attendance_record` VALUES (1010, '001', 1, 1763232259, 0, '2025-11-15 18:44:19');
INSERT INTO `t_attendance_record` VALUES (1011, '001', 1, 1763232260, 0, '2025-11-15 18:44:20');
INSERT INTO `t_attendance_record` VALUES (1012, '001', 1, 1763232261, 0, '2025-11-15 18:44:21');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '课程ID（主键）',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称（如：云计算技术）',
  `credit` int NULL DEFAULT NULL COMMENT '课程学分',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程代码',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课教师ID（关联t_teacher表）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_course_name`(`name` ASC) USING BTREE COMMENT '课程名称唯一约束',
  INDEX `idx_course_teacher`(`teacher_id` ASC) USING BTREE COMMENT '教师ID索引',
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES (1, '电路理论', 4, 'EE2022001', 4, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (2, '模拟电子技术', 4, 'EE2022002', 3, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (3, '数字电子技术', 3, 'EE2022003', 3, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (4, '自动控制原理', 3, 'EE2022004', 6, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (5, '电机学', 4, 'EE2022005', 8, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (6, '电力系统分析', 4, 'EE2022006', 1, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (7, '电力电子技术', 3, 'EE2022007', 5, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (8, '信号与系统', 3, 'EE2022008', 7, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (9, '通信原理', 4, 'EE2022009', 9, '2025-11-15 18:37:12');
INSERT INTO `t_course` VALUES (10, '物联网技术', 3, 'EE2022010', 10, '2025-11-15 18:37:12');

-- ----------------------------
-- Table structure for t_environment
-- ----------------------------
DROP TABLE IF EXISTS `t_environment`;
CREATE TABLE `t_environment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '数据ID（主键）',
  `temperature` float NULL DEFAULT NULL COMMENT '温度（单位：℃）',
  `humidity` float NULL DEFAULT NULL COMMENT '湿度（单位：%）',
  `co2` int NULL DEFAULT NULL COMMENT 'CO2浓度（单位：ppm）',
  `light_condition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '光照强度（如：强光、弱光）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采集时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_environment_time`(`create_time` ASC) USING BTREE COMMENT '采集时间索引'
) ENGINE = InnoDB AUTO_INCREMENT = 8321 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '环境数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_environment
-- ----------------------------
INSERT INTO `t_environment` VALUES (8191, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8192, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8193, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8194, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8195, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8196, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8197, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8198, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8199, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8200, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8201, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8202, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8203, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8204, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8205, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8206, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8207, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8208, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8209, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8210, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8211, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8212, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8213, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8214, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8215, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8216, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8217, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8218, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8219, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8220, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8221, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8222, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8223, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8224, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8225, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8226, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8227, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8228, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8229, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8230, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8231, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8232, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8233, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8234, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8235, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8236, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8237, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8238, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8239, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8240, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8241, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8242, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8243, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8244, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8245, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8246, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8247, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8248, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8249, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8250, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8251, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8252, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8253, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8254, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8255, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8256, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8257, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8258, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8259, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8260, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8261, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8262, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8263, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8264, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8265, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8266, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8267, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8268, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8269, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8270, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8271, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8272, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8273, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8274, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8275, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8276, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8277, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8278, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8279, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8280, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8281, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8282, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8283, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8284, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8285, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8286, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8287, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8288, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8289, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8290, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8291, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8292, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8293, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8294, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8295, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8296, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8297, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8298, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8299, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8300, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8301, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8302, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8303, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8304, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8305, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8306, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8307, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8308, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8309, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8310, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');
INSERT INTO `t_environment` VALUES (8311, 24.5, 45.2, 520, '自然光', '2025-11-15 08:30:00');
INSERT INTO `t_environment` VALUES (8312, 25.1, 43.8, 550, '自然光', '2025-11-15 09:15:00');
INSERT INTO `t_environment` VALUES (8313, 25.3, 42.5, 580, '强光', '2025-11-15 10:00:00');
INSERT INTO `t_environment` VALUES (8314, 24.8, 44, 610, '强光', '2025-11-15 10:45:00');
INSERT INTO `t_environment` VALUES (8315, 24.2, 46.3, 590, '自然光', '2025-11-15 14:00:00');
INSERT INTO `t_environment` VALUES (8316, 23.9, 47.1, 630, '弱光', '2025-11-15 14:45:00');
INSERT INTO `t_environment` VALUES (8317, 23.5, 48, 650, '弱光', '2025-11-15 15:30:00');
INSERT INTO `t_environment` VALUES (8318, 23.8, 47.5, 620, '自然光', '2025-11-15 16:15:00');
INSERT INTO `t_environment` VALUES (8319, 22.9, 50.2, 580, '弱光', '2025-11-15 19:00:00');
INSERT INTO `t_environment` VALUES (8320, 22.5, 51, 550, '弱光', '2025-11-15 19:45:00');

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '班级ID（主键）',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级名称（如：22gb物联1）',
  `major` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业',
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系部',
  `college` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学院',
  `monitor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班长姓名',
  `learning_committee` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学习委员姓名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_grade_name`(`name` ASC) USING BTREE COMMENT '班级名称唯一约束'
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班级信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES (1, '22电气1班', '电气工程及其自动化', '电气与电子工程系', '湖北工业大学工程技术学院', '张明', '李华', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (2, '22电气2班', '电气工程及其自动化', '电气与电子工程系', '湖北工业大学工程技术学院', '王强', '赵静', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (3, '22电子1班', '电子信息工程', '电气与电子工程系', '湖北工业大学工程技术学院', '刘芳', '陈杰', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (4, '22电子2班', '电子信息工程', '电气与电子工程系', '湖北工业大学工程技术学院', '周伟', '吴婷', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (5, '22通信1班', '通信工程', '电气与电子工程系', '湖北工业大学工程技术学院', '郑浩', '孙悦', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (6, '22通信2班', '通信工程', '电气与电子工程系', '湖北工业大学工程技术学院', '钱明', '杨梅', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (7, '22物联1班', '物联网工程', '电气与电子工程系', '湖北工业大学工程技术学院', '冯磊', '朱琳', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (8, '22物联2班', '物联网工程', '电气与电子工程系', '湖北工业大学工程技术学院', '何勇', '林溪', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (9, '22电力专科1班', '电力系统自动化技术', '电气与电子工程系', '湖北工业大学工程技术学院', '郭阳', '肖敏', '2025-11-15 18:36:33');
INSERT INTO `t_grade` VALUES (10, '22电子专科1班', '电子信息工程技术', '电气与电子工程系', '湖北工业大学工程技术学院', '唐辉', '胡丽', '2025-11-15 18:36:33');

-- ----------------------------
-- Table structure for t_grade_course_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_course_schedule`;
CREATE TABLE `t_grade_course_schedule`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '排课ID（主键）',
  `grade_id` int NOT NULL COMMENT '班级ID（关联t_grade表）',
  `course_id` int NOT NULL COMMENT '课程ID（关联t_course表）',
  `week` int NOT NULL COMMENT '周次（如：1-18周）',
  `day` int NOT NULL COMMENT '星期（1：周一；7：周日）',
  `period` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课时（如：1-2节）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_schedule_unique`(`grade_id` ASC, `week` ASC, `day` ASC, `period` ASC) USING BTREE COMMENT '同一班级同一时间不重复排课',
  INDEX `idx_schedule_grade`(`grade_id` ASC) USING BTREE COMMENT '班级ID索引',
  INDEX `idx_schedule_course`(`course_id` ASC) USING BTREE COMMENT '课程ID索引',
  CONSTRAINT `fk_schedule_course` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_schedule_grade` FOREIGN KEY (`grade_id`) REFERENCES `t_grade` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班级课程安排表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_grade_course_schedule
-- ----------------------------
INSERT INTO `t_grade_course_schedule` VALUES (21, 1, 6, -11, 3, '5-6节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (22, 2, 7, -15, 4, '3-4节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (23, 3, 2, -17, 5, '7-8节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (24, 4, 8, -9, 1, '1-2节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (25, 5, 4, -8, 2, '5-6节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (26, 6, 3, -8, 4, '7-8节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (27, 7, 9, -13, 3, '3-4节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (28, 8, 10, -13, 1, '5-6节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (29, 9, 1, -17, 2, '1-2节', '2025-11-15 18:54:13');
INSERT INTO `t_grade_course_schedule` VALUES (30, 10, 8, -17, 3, '7-8节', '2025-11-15 18:54:13');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '学生ID（主键）',
  `stu_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生姓名',
  `age` int NULL DEFAULT NULL COMMENT '学生年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别（男/女）',
  `grade_id` int NULL DEFAULT NULL COMMENT '班级ID（关联t_grade表）',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'QQ号',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片存储路径',
  `face_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人脸识别ID',
  `device_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定设备ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_student_no`(`stu_no` ASC) USING BTREE COMMENT '学号唯一约束',
  INDEX `idx_student_grade`(`grade_id` ASC) USING BTREE COMMENT '班级ID索引',
  CONSTRAINT `fk_student_grade` FOREIGN KEY (`grade_id`) REFERENCES `t_grade` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (28, '202201005', '刘阳', 20, '男', 1, '100011', '/photos/stu/liuyang.jpg', '1011', 'DEV001', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (29, '202201006', '陈静', 19, '女', 1, '100012', '/photos/stu/chenjing.jpg', '1012', 'DEV001', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (30, '202202003', '马超', 20, '男', 3, '100013', '/photos/stu/machao.jpg', '1013', 'DEV003', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (31, '202202004', '张琪', 19, '女', 3, '100014', '/photos/stu/zhangqi.jpg', '1014', 'DEV003', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (32, '202203003', '杨帆', 20, '男', 5, '100015', '/photos/stu/yangfan.jpg', '1015', 'DEV004', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (33, '202203004', '刘佳', 19, '女', 5, '100016', '/photos/stu/liujia.jpg', '1016', 'DEV004', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (34, '202204003', '赵鹏', 20, '男', 7, '100017', '/photos/stu/zhaopeng.jpg', '1017', 'DEV005', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (35, '202204004', '孙琳', 19, '女', 7, '100018', '/photos/stu/sunlin.jpg', '1018', 'DEV005', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (36, '202205001', '周杰', 20, '男', 9, '100019', '/photos/stu/zhoujie.jpg', '1019', 'DEV006', '2025-11-15 18:54:28');
INSERT INTO `t_student` VALUES (37, '202206001', '吴燕', 19, '女', 10, '100020', '/photos/stu/wuyan.jpg', '1020', 'DEV007', '2025-11-15 18:54:28');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '教师ID（主键）',
  `tea_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '教师工号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '教师姓名',
  `age` int NULL DEFAULT NULL COMMENT '教师年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别（男/女）',
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属系部',
  `college` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属学院',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'QQ号',
  `qualification` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称（如：讲师、教授）',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片存储路径',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_teacher_no`(`tea_no` ASC) USING BTREE COMMENT '教师工号唯一约束'
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '教师信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES (1, 'T2022001', '张小华', 45, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13800138001', '123456', '教授', '/photos/tea/zxh.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (2, 'T2022002', '高峰', 38, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13900139002', '234567', '副教授', '/photos/tea/gf.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (3, 'T2022003', '王莎', 35, '女', '电气与电子工程系', '湖北工业大学工程技术学院', '13700137003', '345678', '副教授', '/photos/tea/ws.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (4, 'T2022004', '丁稳房', 40, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13600136004', '456789', '讲师', '/photos/tea/dwf.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (5, 'T2022005', '王雪梅', 36, '女', '电气与电子工程系', '湖北工业大学工程技术学院', '13500135005', '567890', '讲师', '/photos/tea/wxm.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (6, 'T2022006', '戴志平', 42, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13400134006', '678901', '副教授', '/photos/tea/dzp.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (7, 'T2022007', '章穗', 39, '女', '电气与电子工程系', '湖北工业大学工程技术学院', '13300133007', '789012', '讲师', '/photos/tea/zs.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (8, 'T2022008', '周卫平', 48, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13200132008', '890123', '教授', '/photos/tea/zwp.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (9, 'T2022009', '宋玲', 34, '女', '电气与电子工程系', '湖北工业大学工程技术学院', '13100131009', '901234', '讲师', '/photos/tea/sl.jpg', '2025-11-15 18:37:05');
INSERT INTO `t_teacher` VALUES (10, 'T2022010', '张行星', 28, '男', '电气与电子工程系', '湖北工业大学工程技术学院', '13000130010', '012345', '助教', '/photos/tea/zxx.jpg', '2025-11-15 18:37:05');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID（主键）',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码（建议加密存储）',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `identity` int NOT NULL COMMENT '身份类型（0：管理员；1：教师；2：学生）',
  `identity_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份编号（教师工号/学号）',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `isdel` tinyint NULL DEFAULT 0 COMMENT '是否删除（0：未删除；1：已删除）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_account`(`account` ASC) USING BTREE COMMENT '登录账号唯一约束',
  INDEX `idx_user_identity`(`identity` ASC, `identity_no` ASC) USING BTREE COMMENT '身份类型+身份编号索引'
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (3, 'admin', 'admin', NULL, 0, NULL, NULL, 0, '2025-11-15 18:15:56');
INSERT INTO `t_user` VALUES (4, 'centos', '123456', NULL, 0, NULL, NULL, 0, '2025-11-15 18:16:13');

SET FOREIGN_KEY_CHECKS = 1;
