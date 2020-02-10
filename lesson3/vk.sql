#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (4, 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'est');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'officiis');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'saepe');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'veniam');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 10);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 1, 1, '2020-01-02 13:07:58', '1983-11-16 07:20:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 2, 1, '1986-07-17 04:56:09', '2017-10-08 18:20:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 3, 1, '1971-12-09 07:11:53', '1981-09-14 13:35:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 4, 1, '1983-07-31 09:55:27', '1992-09-13 12:38:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 5, 2, '1993-04-02 22:30:22', '1995-11-02 08:44:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 6, 1, '2003-02-18 04:31:19', '2006-10-29 11:00:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 7, 2, '1988-04-11 18:10:53', '1992-07-23 03:50:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 8, 1, '2001-10-16 17:15:21', '2004-12-23 08:25:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 9, 2, '2018-10-26 10:26:22', '1975-08-19 01:52:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 10, 1, '1989-05-08 14:24:01', '2013-06-19 06:23:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 11, 1, '1997-01-15 10:26:56', '2006-03-24 02:28:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 12, 1, '2019-04-28 09:10:28', '1992-06-26 09:55:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 13, 1, '2007-11-23 02:52:14', '2010-11-28 15:50:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 14, 1, '1981-01-16 23:20:26', '1974-03-05 18:12:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 15, 1, '2004-10-07 05:12:21', '2013-01-28 20:51:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 16, 2, '1997-04-26 10:33:38', '1976-08-02 13:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 17, 1, '1976-10-27 00:34:00', '2000-04-13 21:13:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 18, 1, '1994-10-02 02:06:30', '1970-07-15 12:03:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 19, 2, '2015-06-03 14:23:11', '2018-07-21 05:01:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 20, 2, '1995-03-11 22:48:38', '1987-09-13 12:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 21, 1, '1979-07-18 11:15:31', '1993-07-30 11:26:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 22, 2, '1977-12-10 19:42:20', '1970-10-13 11:37:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 23, 1, '2009-09-12 14:34:48', '1993-02-25 04:45:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 24, 1, '1997-09-08 02:01:08', '1989-10-06 21:51:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 25, 1, '1977-03-19 16:53:21', '2015-08-15 14:06:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 26, 2, '2017-01-22 22:53:20', '1989-09-12 08:06:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 27, 1, '1981-11-05 13:12:35', '2013-03-21 08:10:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 28, 1, '2011-01-13 17:43:34', '2016-05-30 09:52:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 29, 1, '1987-02-19 23:26:59', '2009-10-18 09:40:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 30, 2, '1995-01-30 11:22:58', '1997-05-25 02:05:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 31, 1, '1988-07-26 05:55:46', '1976-08-24 11:21:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 32, 2, '1995-07-09 00:04:22', '2012-08-19 03:01:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 33, 2, '1986-05-13 17:47:12', '2015-01-01 02:15:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 34, 1, '1996-11-14 03:39:00', '2015-07-30 02:15:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 35, 2, '1973-10-14 07:46:33', '2005-07-31 09:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 36, 2, '2016-08-25 00:05:43', '2019-08-03 00:58:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 37, 2, '2001-10-20 08:21:59', '1989-11-11 20:38:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 38, 1, '1987-01-31 09:07:21', '1996-12-14 05:13:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 39, 1, '2014-12-07 01:48:12', '1971-06-29 15:12:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 40, 2, '2002-08-10 11:55:49', '1976-02-13 01:47:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 41, 2, '2004-10-05 12:17:49', '1991-08-11 15:03:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 42, 2, '1981-06-05 06:55:24', '2020-01-21 09:13:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 43, 2, '2019-08-19 16:22:56', '2014-05-12 14:08:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 44, 1, '1997-02-11 16:42:17', '1988-01-15 03:19:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 45, 2, '2016-12-14 01:32:32', '1978-05-13 19:08:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 46, 2, '1972-05-27 02:37:17', '1974-06-30 03:40:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 47, 2, '1994-12-11 17:39:32', '1999-05-20 04:07:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 48, 2, '1987-02-19 21:22:47', '1985-06-06 08:28:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 49, 1, '1979-10-05 17:31:44', '1971-04-08 01:22:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 50, 2, '2004-04-09 11:50:28', '2014-04-30 01:10:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 51, 1, '1976-08-01 17:24:34', '1976-06-10 21:55:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 52, 2, '1998-11-20 20:26:30', '1995-03-24 12:20:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 53, 2, '2003-09-11 17:05:15', '1980-01-08 02:19:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 54, 2, '2013-07-15 04:12:09', '2005-04-06 10:00:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 55, 2, '1977-05-04 00:20:21', '2003-03-15 07:14:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 56, 1, '2009-07-28 05:43:15', '2015-04-15 08:04:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 57, 2, '2010-05-01 09:11:25', '1991-06-21 00:51:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 58, 2, '1981-07-29 13:23:53', '1992-07-30 16:50:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 59, 1, '1988-02-15 22:12:50', '1987-12-02 02:36:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 60, 2, '1980-07-16 21:03:07', '1970-12-23 04:32:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 61, 2, '2016-08-10 10:04:12', '2001-10-06 02:02:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 62, 1, '2006-12-09 04:57:28', '1994-07-05 08:10:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 63, 2, '2012-04-09 05:55:25', '1996-03-22 22:29:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 64, 2, '1986-07-10 05:39:18', '1988-01-14 18:18:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 65, 2, '2004-12-21 08:33:37', '2016-12-08 02:26:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 66, 2, '1982-08-17 13:39:35', '1996-08-10 12:19:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 67, 1, '2006-08-12 06:53:34', '2008-12-18 22:14:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 68, 2, '1976-11-09 06:48:04', '1996-11-01 23:13:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 69, 2, '2001-06-04 22:46:23', '1980-04-18 02:09:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 70, 2, '2002-06-09 11:53:56', '1983-08-05 23:23:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 71, 2, '2013-09-06 01:44:40', '1974-05-14 10:11:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 72, 2, '2008-11-08 13:36:35', '2012-05-10 14:14:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 73, 2, '2007-11-06 18:54:07', '1971-08-27 20:39:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 74, 1, '2015-10-03 23:46:22', '2009-06-23 21:58:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 75, 1, '1992-03-06 06:35:47', '1972-03-27 06:53:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 76, 1, '1985-07-27 01:46:31', '2017-09-15 19:01:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 77, 2, '1974-04-28 00:03:24', '1988-10-14 18:43:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 78, 2, '1982-02-10 14:43:44', '1993-11-01 16:58:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 79, 2, '2008-05-18 16:04:16', '1989-11-05 13:23:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 80, 1, '1988-10-05 07:38:18', '2017-01-13 02:20:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 81, 2, '1985-02-08 09:39:56', '2009-12-19 21:24:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 82, 1, '1970-10-31 08:12:32', '1996-05-19 12:19:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 83, 1, '1983-01-21 23:43:33', '1981-02-06 05:12:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 84, 1, '1982-08-13 19:00:20', '2015-01-14 03:10:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 85, 2, '1996-06-28 21:37:37', '2004-05-16 21:32:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 86, 1, '1973-05-10 01:06:17', '2002-09-10 10:50:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 87, 2, '2007-08-31 03:06:47', '2000-06-08 07:51:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 88, 1, '1972-05-22 14:49:55', '1971-12-28 04:58:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 89, 1, '1996-12-26 12:13:24', '1977-12-08 21:15:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 90, 2, '2012-02-08 02:44:32', '2000-11-11 07:04:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 91, 1, '1979-08-17 21:20:26', '1985-03-08 01:54:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 92, 1, '1981-10-09 13:52:39', '1980-09-03 16:26:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 93, 1, '1978-02-20 18:33:47', '2010-12-07 02:37:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 94, 2, '1970-06-22 14:31:36', '1977-12-22 11:03:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 95, 1, '1997-01-05 01:06:04', '2005-10-13 05:00:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 96, 1, '1988-08-11 21:47:14', '2004-09-11 15:37:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 97, 1, '2018-01-02 18:28:52', '1994-03-25 14:18:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 98, 1, '2019-10-09 19:33:35', '2005-12-01 22:07:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 99, 2, '1996-01-29 12:12:25', '1977-01-26 05:28:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 100, 1, '2006-09-18 03:57:41', '1986-11-26 23:50:25');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'ipsum', 9747, NULL, '1988-09-25 10:43:47', '2010-03-18 09:06:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'temporibus', 9, NULL, '1990-10-16 22:44:47', '1973-12-31 14:55:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'qui', 2, NULL, '2002-06-13 21:04:17', '1984-03-17 10:29:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'qui', 9385224, NULL, '2010-04-02 01:37:26', '1978-06-06 03:57:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'occaecati', 164, NULL, '1977-08-11 11:31:49', '1992-06-11 17:23:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 6, 'ut', 9191, NULL, '1984-06-12 23:19:58', '2010-01-27 20:46:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 7, 'consequatur', 1747, NULL, '2010-12-15 08:10:48', '2001-04-12 13:09:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 3, 8, 'nostrum', 7, NULL, '1995-07-24 04:53:36', '1971-12-16 01:03:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 4, 9, 'similique', 475, NULL, '1989-05-04 14:54:33', '1997-04-15 15:57:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 5, 10, 'deleniti', 102868681, NULL, '2015-04-03 17:38:00', '1974-02-13 19:38:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 11, 'saepe', 208887, NULL, '1971-04-06 19:47:30', '2013-01-21 01:35:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 12, 'reprehenderit', 718606, NULL, '1989-02-04 02:19:04', '1979-08-01 21:28:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 13, 'consequatur', 355179, NULL, '2019-01-27 02:30:27', '2001-02-14 11:12:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 4, 14, 'sed', 4963, NULL, '2004-10-08 12:46:34', '1989-10-04 15:59:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 5, 15, 'quod', 211, NULL, '2005-05-11 18:31:41', '1974-05-16 03:19:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 16, 'laudantium', 925, NULL, '1977-01-15 16:32:49', '2013-05-20 11:27:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, 'quam', 1, NULL, '1998-11-01 13:12:30', '2014-08-13 08:34:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 18, 'dicta', 62841334, NULL, '2004-09-30 07:04:53', '1996-06-27 15:48:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 4, 19, 'iste', 546, NULL, '1980-11-20 21:45:57', '1984-09-22 15:48:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 5, 20, 'deserunt', 4, NULL, '2010-12-18 01:50:29', '1997-04-19 18:48:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, 'architecto', 52, NULL, '1993-12-14 16:57:24', '2005-09-18 10:46:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 22, 'quis', 99522, NULL, '1980-05-17 04:32:12', '2004-05-12 14:31:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 23, 'vel', 19818423, NULL, '1977-11-16 10:59:28', '2007-09-28 19:01:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 24, 'porro', 394904862, NULL, '2011-07-26 17:52:53', '1993-10-11 06:43:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 5, 25, 'facilis', 148670, NULL, '2013-12-13 10:33:38', '1986-02-14 19:19:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 26, 'vel', 95, NULL, '1996-09-20 04:22:26', '2000-09-15 06:10:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 27, 'dolore', 1274237, NULL, '2001-05-24 08:35:26', '1996-01-25 08:00:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 28, 'commodi', 8343617, NULL, '1991-09-14 17:50:44', '2012-02-04 17:05:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 4, 29, 'autem', 1850, NULL, '2012-08-14 17:39:57', '1983-08-16 05:04:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 5, 30, 'aliquam', 0, NULL, '1980-10-17 16:59:53', '1998-05-16 17:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, 'aliquid', 9829369, NULL, '2014-09-19 07:12:38', '1987-07-10 01:32:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, 'deserunt', 73802495, NULL, '2002-05-23 00:40:58', '2017-08-12 10:47:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 33, 'omnis', 21816631, NULL, '1975-09-20 14:48:11', '1979-01-18 14:58:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 4, 34, 'aut', 311967, NULL, '1972-10-06 08:12:37', '2009-05-29 20:13:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 5, 35, 'vel', 52, NULL, '1972-09-26 18:37:22', '1976-01-18 16:27:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 36, 'repellat', 586, NULL, '1975-10-17 14:24:43', '2008-12-14 16:29:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 2, 37, 'repellat', 92982, NULL, '2002-04-06 12:27:50', '2019-03-01 20:37:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 38, 'quia', 11557278, NULL, '2016-06-16 18:47:27', '1985-05-03 00:02:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 4, 39, 'rerum', 56, NULL, '1982-10-27 07:43:21', '1997-05-02 09:42:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 5, 40, 'sequi', 82853, NULL, '1976-03-12 17:47:33', '1975-03-13 05:04:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 41, 'dolore', 62, NULL, '2004-04-07 04:00:19', '1988-04-24 08:10:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 2, 42, 'aut', 5, NULL, '1978-05-24 22:40:25', '2011-01-31 07:35:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 43, 'ex', 0, NULL, '1983-02-19 15:57:55', '2001-10-03 13:08:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 4, 44, 'magni', 928, NULL, '1980-01-06 01:23:55', '1981-08-02 11:42:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 5, 45, 'vero', 73637, NULL, '2009-06-03 20:45:39', '1987-03-19 19:17:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 46, 'id', 8829, NULL, '2015-07-15 20:50:28', '1970-12-07 06:58:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, 'et', 1937, NULL, '1979-04-22 17:30:37', '2014-03-20 19:53:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, 'adipisci', 8, NULL, '1978-04-29 06:31:55', '2007-03-26 21:02:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 4, 49, 'occaecati', 497, NULL, '1992-02-03 22:55:35', '1997-05-26 12:36:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 5, 50, 'odit', 0, NULL, '1973-08-01 11:07:53', '1982-06-25 08:36:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 51, 'architecto', 717858177, NULL, '2011-11-05 03:17:19', '2019-05-25 20:35:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 2, 52, 'et', 60399, NULL, '1991-01-03 16:14:27', '2001-10-03 21:09:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 3, 53, 'voluptas', 1, NULL, '1976-12-29 18:57:24', '1994-06-27 09:47:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 4, 54, 'voluptates', 5, NULL, '1978-10-16 23:22:16', '1977-06-06 22:09:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 5, 55, 'sint', 5, NULL, '2002-06-19 20:18:19', '1983-01-07 10:33:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 56, 'qui', 32049186, NULL, '1973-12-27 12:22:41', '2018-04-08 10:59:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 57, 'consequuntur', 515, NULL, '2004-12-02 05:28:31', '2017-01-03 18:49:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 3, 58, 'consectetur', 61879405, NULL, '1979-12-06 01:31:27', '1971-02-26 02:44:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 4, 59, 'est', 57462130, NULL, '2009-05-20 13:56:31', '1994-09-06 16:50:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 5, 60, 'possimus', 96073588, NULL, '2015-10-16 00:42:46', '1973-02-10 20:08:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'quis', 62717086, NULL, '2002-11-11 10:23:15', '2015-06-17 09:08:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, 'pariatur', 7539171, NULL, '1985-10-04 15:15:45', '2006-10-01 01:13:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, 'unde', 72374601, NULL, '1977-08-17 22:25:16', '1992-05-19 23:22:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 4, 64, 'molestias', 0, NULL, '2010-02-24 10:22:09', '1975-02-17 03:48:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 5, 65, 'culpa', 54648798, NULL, '2001-06-24 01:35:03', '2007-10-30 06:31:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 66, 'architecto', 3968931, NULL, '2011-10-29 21:30:41', '2014-04-14 10:24:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 67, 'quod', 44093, NULL, '1985-06-13 17:34:43', '2010-09-12 16:39:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 68, 'enim', 5525, NULL, '2019-06-13 16:34:35', '1995-08-04 04:50:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 4, 69, 'ipsum', 1917283, NULL, '2002-06-19 22:50:12', '1974-02-16 18:33:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 5, 70, 'aliquam', 64, NULL, '1989-12-29 22:12:24', '2004-04-17 12:17:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 71, 'eos', 13003, NULL, '1981-06-15 23:05:19', '2006-12-22 12:27:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 72, 'quis', 0, NULL, '2019-04-09 09:37:50', '2010-11-25 05:00:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 73, 'at', 52744922, NULL, '1982-09-06 02:43:18', '1979-04-17 03:16:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 4, 74, 'facilis', 161, NULL, '2005-08-17 16:56:27', '2005-07-28 16:17:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 5, 75, 'nisi', 65, NULL, '1995-06-12 23:41:49', '2016-03-17 16:15:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 76, 'et', 12041, NULL, '2016-02-09 06:23:43', '1998-03-07 00:12:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, 'dignissimos', 1522438, NULL, '1971-06-16 05:53:27', '2007-11-22 22:33:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 78, 'quia', 4876, NULL, '1999-09-19 14:42:47', '1989-04-23 01:42:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 4, 79, 'quas', 0, NULL, '2013-07-30 11:58:54', '2006-08-21 11:46:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 5, 80, 'et', 0, NULL, '2007-11-13 17:38:38', '1979-07-30 21:05:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 1, 81, 'omnis', 0, NULL, '2018-03-24 09:43:53', '2010-02-03 19:50:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, 'qui', 2, NULL, '1989-06-05 12:01:47', '2011-06-13 22:55:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 3, 83, 'quas', 59, NULL, '1989-02-13 12:36:44', '1973-10-01 06:41:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 4, 84, 'repellat', 31376819, NULL, '1985-06-04 09:45:12', '2005-07-09 09:20:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 85, 'exercitationem', 9, NULL, '1994-08-11 04:57:32', '1975-12-23 13:11:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 86, 'inventore', 52765174, NULL, '1986-10-08 20:13:49', '2014-06-09 16:07:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 87, 'eligendi', 81727810, NULL, '2011-07-25 07:51:53', '2011-02-15 17:19:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 88, 'fugit', 0, NULL, '2001-01-24 18:58:45', '1993-05-16 18:48:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 4, 89, 'sed', 863, NULL, '2014-02-09 02:49:27', '1991-05-19 19:37:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 5, 90, 'iusto', 588990, NULL, '1985-04-13 20:04:52', '1976-04-30 13:15:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, 'sit', 56698, NULL, '2005-03-20 21:10:36', '2008-10-02 21:46:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 92, 'quidem', 892596, NULL, '2005-05-22 05:53:27', '2008-06-09 08:02:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 93, 'quisquam', 7898, NULL, '1981-11-29 01:52:20', '1988-02-22 15:37:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 4, 94, 'rerum', 9956, NULL, '1997-01-12 17:22:43', '1997-04-11 18:01:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 5, 95, 'molestiae', 733710, NULL, '1977-09-02 00:26:11', '2011-11-18 10:10:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 96, 'quis', 0, NULL, '2007-07-14 01:51:48', '1986-04-01 03:35:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 97, 'ea', 81720, NULL, '1994-12-25 13:04:20', '2003-05-06 09:31:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 3, 98, 'asperiores', 6642, NULL, '2007-08-06 02:46:10', '1975-10-10 14:14:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 4, 99, 'cupiditate', 953373882, NULL, '1983-03-08 11:32:27', '2005-06-16 05:11:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 5, 100, 'assumenda', 90, NULL, '1977-07-30 12:14:03', '2002-09-20 15:20:02');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'debitis');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'iure');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'molestiae');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'qui');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'similique');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Quisquam quia quidem repellat numquam deserunt dolorem. Omnis sapiente quisquam quibusdam dolor temporibus omnis. Ullam earum qui quos in ullam suscipit omnis. Dolores minus minus eos ab saepe placeat.', 0, 0, '2008-08-21 14:10:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Nemo at qui voluptatibus vitae adipisci quidem numquam. Iusto veritatis inventore eveniet ipsam velit ea nemo voluptatum. Laboriosam et sit rerum omnis velit ipsam.', 0, 0, '1979-06-30 11:50:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Qui occaecati a magni non. Doloremque distinctio doloremque provident voluptatum dolorem vero. Quae maxime quos optio velit.', 0, 0, '2013-02-24 17:57:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Quia cumque sit atque nobis. Et deleniti qui ad illo vel. Ex dolores rerum eligendi in asperiores et. Sed asperiores vero maxime illo et et.', 0, 1, '1997-02-03 20:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Incidunt vel est ad tempora voluptatem. Error sapiente ad ullam sit voluptas possimus. Reiciendis voluptatem error ut pariatur dolor voluptatem. Sed quia velit dolores voluptatem hic totam iusto. Unde praesentium aut earum vel.', 0, 0, '2018-04-09 21:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Quia quia et aut rerum. Laborum excepturi deserunt maiores. Magni nam quia qui ipsum quo non nobis quidem.', 0, 0, '2010-02-15 02:02:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Sequi delectus est qui nam. Voluptatem incidunt error iste deleniti soluta optio adipisci. Qui et pariatur ipsam repudiandae eum.', 1, 1, '1975-10-20 17:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Nesciunt numquam aliquid tenetur architecto veniam iusto quae. Accusantium molestiae ut quo dicta. Delectus consequatur doloribus et reprehenderit laborum impedit cum.', 1, 0, '1980-09-08 09:19:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Ut ea quam velit laboriosam quibusdam. Aut adipisci non voluptatem aliquam enim beatae quia. Voluptas totam sit aperiam ab.', 0, 0, '2006-06-23 01:49:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Unde dignissimos aspernatur et libero. Quam provident sed rerum placeat repellendus sint. Aut quia asperiores nostrum a accusantium omnis veniam.', 1, 0, '2018-12-04 03:41:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Eligendi error sed placeat quia dolores nihil. Quia odit deleniti saepe quia laudantium. Ut qui culpa et debitis et. Dolorem accusamus quae id sit impedit reprehenderit quia.', 0, 0, '1973-01-09 00:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Aut temporibus labore ea commodi ipsam est. Voluptatibus sunt dignissimos deserunt in suscipit voluptas. Animi sequi et aut officia voluptatem illo quasi.', 0, 0, '1999-05-06 18:55:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Praesentium delectus aliquid voluptates quibusdam. Voluptatum est beatae excepturi fugiat odio excepturi. Dolorem provident velit molestiae deleniti veritatis nisi delectus. Aut sint nihil unde earum voluptatem animi.', 1, 0, '2019-05-10 22:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Animi aut tenetur aut velit voluptatem cumque. Enim quia impedit est reiciendis aut exercitationem. Non sequi quibusdam corrupti eligendi sit. Dolorem cum ut id. Doloremque libero exercitationem placeat eligendi corrupti.', 0, 0, '1987-09-13 21:06:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Et consectetur adipisci quod molestiae explicabo quasi. Quisquam excepturi earum ut ipsam delectus iure. Qui beatae iusto dolores cupiditate aut omnis asperiores. Nulla deleniti facilis beatae nulla quia explicabo adipisci.', 0, 0, '1992-04-08 21:22:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Dolores corporis ut asperiores sed. Soluta sunt ut totam voluptas eum molestiae. Et provident dolor vel harum. Officiis in omnis veniam iste culpa et.', 1, 0, '1985-02-07 23:05:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Ab id velit qui et autem repudiandae ut aliquam. Aut eos quia dolorem sequi voluptates assumenda ut.', 1, 0, '1991-06-06 10:31:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Blanditiis assumenda nihil neque libero. Assumenda aliquid cupiditate officiis voluptate. Aut aut consequatur ipsam.', 1, 0, '1976-08-30 02:39:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Excepturi libero earum minus neque tempore accusamus. Cupiditate veritatis error omnis beatae ipsam. Hic ipsa sed necessitatibus.', 1, 0, '2007-12-25 05:21:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Impedit quia sit est cum eaque repellendus eum. Voluptas fugit dolorum facere incidunt.', 1, 0, '1973-06-08 05:51:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Ipsa recusandae optio praesentium in eos. Ex nulla repellendus quia quia ut facilis.', 1, 1, '1997-04-15 13:16:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Totam assumenda illum commodi non enim non. Quo qui non voluptas velit magnam. Voluptates et qui dolores rerum sunt similique. Odit aut sunt ipsa dolorem rerum aut.', 0, 1, '1979-09-14 20:15:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Optio et iste illum esse quibusdam sapiente quia doloribus. Et suscipit eaque quo laborum laudantium et. Eius voluptatum voluptatem voluptas velit a. Unde eius odio vero nam.', 0, 1, '1988-09-18 14:49:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Reiciendis sed ut nisi aut. Modi quasi delectus dignissimos dolores voluptate fugit velit. Et aut ut necessitatibus exercitationem rem.', 1, 0, '2018-02-19 07:47:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Doloremque error est officiis autem et autem quidem. Aliquid harum fuga maiores aspernatur magnam.', 1, 1, '2014-03-13 05:03:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Qui nostrum omnis tenetur aut. Architecto sit numquam nostrum perferendis. Dolores tempore optio quia fugiat. Quaerat voluptatum vitae qui vitae voluptatem ut totam.', 1, 0, '1996-01-31 05:36:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Libero dolores sunt consequatur dolorem necessitatibus non minima. Qui consequuntur iure accusamus eveniet ut asperiores est. Exercitationem consequuntur voluptates blanditiis ratione. Nisi nemo quas et aut.', 0, 0, '1996-10-17 06:47:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Suscipit delectus blanditiis aut suscipit. Eum sit amet deserunt et aspernatur. Tenetur fuga eos nostrum omnis unde.', 0, 0, '1988-04-06 18:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Quaerat ea facilis voluptatibus molestiae facere consectetur. Iusto non quia necessitatibus aliquam nemo.', 1, 1, '1988-10-29 22:10:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Aliquid sit ut dolor saepe nobis. Architecto et ratione et omnis mollitia. Quasi praesentium sunt odit omnis perferendis id temporibus vitae.', 0, 0, '2003-09-26 05:08:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Repellendus dolorem et pariatur qui. Porro placeat eaque quod non sit facere mollitia. Possimus nemo qui quo nisi esse. Consequuntur et totam reprehenderit beatae maiores.', 0, 1, '2004-12-24 06:54:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Et cum delectus et. Animi fuga est eos qui. Accusamus architecto asperiores ipsa pariatur. Repellat labore sed molestiae sunt ratione ea aperiam ab.', 1, 0, '2019-04-15 23:10:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Vel nihil minus aliquam non saepe suscipit et. Quis unde iure suscipit. Facilis ipsam et qui animi perspiciatis voluptatibus.', 1, 0, '1972-07-27 09:59:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Laborum omnis tempora est. Saepe porro ad fugiat. Omnis autem voluptatem a officia aliquam rerum. Dignissimos voluptatibus quas illo fuga ut velit aut.', 0, 0, '1991-02-27 19:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Laboriosam et quae tempora et ipsam et error. Molestiae perferendis a id a odio unde consequatur. Rerum sunt a incidunt velit ratione illum ut.', 0, 0, '1991-12-24 22:52:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Odit reprehenderit at hic tenetur odio et. Illum molestias ut nemo dolorem consequatur.', 0, 1, '1972-03-24 14:52:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Voluptate velit praesentium voluptate est perspiciatis. Quasi eum consequatur aut ut. Et ut atque voluptatem ut. Ipsum aut odit at sunt.', 1, 0, '2006-01-30 18:46:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Qui deserunt dolorum aut iste consequatur quos voluptatum. Itaque quo non dolor. Sequi corporis laudantium odit quia voluptas voluptate qui.', 0, 1, '1982-03-01 02:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Optio voluptatem totam beatae voluptatibus voluptas iure. Non exercitationem quia eos qui rem occaecati. Quae sapiente ut nihil eaque quam quia. Blanditiis amet quis molestiae optio quo quis.', 0, 1, '1986-06-01 15:41:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Reprehenderit voluptatem repellendus ea id. Et cum aperiam necessitatibus fuga consequuntur non dolore. Dolorem vel fugiat sed mollitia nulla. Est et dolorem impedit a molestiae.', 1, 1, '2005-04-24 20:23:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Eos veniam molestias omnis inventore. Et quaerat velit sit harum corporis et expedita. Qui et magni nostrum dolor.', 0, 1, '2000-06-12 15:28:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Voluptates ad neque sint laborum recusandae ab. Ea illo ut in repellat consequuntur et unde. Vero inventore perspiciatis repellat non quia sunt.', 0, 0, '1992-10-11 13:20:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Aut est blanditiis aut nesciunt qui. Ipsa incidunt necessitatibus expedita rem consequatur. Tempora ipsam cumque deserunt error. Expedita qui et quis sed magni pariatur.', 0, 0, '1984-01-21 10:20:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Sit eum itaque iusto voluptatem deserunt sed. A et dolores exercitationem saepe debitis. Molestiae omnis unde eaque ipsum dolore. Veritatis in quaerat omnis veniam laudantium possimus.', 0, 1, '1979-01-11 04:53:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Ea deserunt omnis quidem totam asperiores facilis exercitationem. Nihil sit qui quis nisi. Reiciendis impedit ut eveniet reiciendis ratione quia quae.', 1, 0, '2019-07-21 14:37:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Molestiae assumenda sunt mollitia libero dolores praesentium. Expedita excepturi ut vel velit nulla. Porro voluptas eligendi similique eius alias totam officia. Repellendus voluptatum debitis ea soluta aut. Omnis enim maiores et dicta sed.', 1, 0, '1990-09-01 04:18:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Illo harum quo ut autem. Saepe enim odio omnis voluptatibus et a iste. Magnam fugiat consequatur adipisci sed vel ducimus dolor.', 0, 1, '2003-08-31 13:40:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Pariatur est sit et et eos qui. Natus velit tempore explicabo suscipit debitis exercitationem cum. Autem natus voluptatum quia dolorem id.', 0, 1, '2018-03-15 14:35:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Laboriosam itaque rerum aperiam ipsa veritatis nulla. Voluptate excepturi dignissimos exercitationem qui eius sequi. Ea eligendi eveniet magnam soluta officiis excepturi repellendus.', 1, 1, '1991-05-12 00:04:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Sit maiores consectetur voluptas. Sit expedita qui deserunt amet cumque consequuntur itaque. Beatae aspernatur et sunt enim magni quia dolor. Unde aut accusantium aut suscipit error est harum autem.', 0, 0, '1984-09-23 02:11:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Accusamus animi doloribus ducimus voluptas beatae. Vel molestias iusto debitis ab. Consequuntur excepturi repellendus ipsa eius ut quasi molestiae. Repellendus sint ullam officiis cumque numquam doloremque. Harum et consequuntur consequatur tempora quis et quisquam.', 0, 0, '2007-11-27 00:20:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Repudiandae aut sapiente ea. Qui et eligendi repellendus ut. Tempora dolores commodi cumque possimus ullam voluptatem. Enim eos porro et ullam et sed. Corrupti nesciunt sit sit earum sed sed.', 0, 0, '2003-02-10 20:16:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Id eos est ad provident. Perferendis est esse maiores aut possimus vero assumenda. Sed et ut expedita animi.', 1, 1, '1996-05-20 04:34:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Dolorum ab ducimus sed consequatur quia et. Qui velit unde in ut eum. Occaecati qui quae sunt deserunt non modi repellat. Dolores rerum omnis qui numquam quibusdam excepturi sit.', 1, 0, '1976-10-08 01:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'At modi ipsum distinctio ab at molestiae. Blanditiis velit magnam ipsa tenetur ab necessitatibus et. Enim quia voluptas nostrum qui quia facere aspernatur.', 1, 1, '1997-01-17 20:20:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Aut laudantium error culpa quos optio quo aut sequi. Aliquid exercitationem doloremque maiores quo dolorum nihil qui. Occaecati sit fugit fuga ab distinctio quisquam aut.', 0, 1, '1979-08-28 02:15:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Ab quisquam voluptatem provident. Similique neque autem quae cumque vitae labore. Aut eaque ad est dicta id. Ut officia officia quasi laborum nihil.', 1, 0, '1989-10-21 13:39:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Consequatur est rerum tempore a non ut. Quaerat explicabo consequatur exercitationem eaque. Ut ipsa ut eaque eum. Voluptatum rerum sint quo ea.', 0, 1, '2016-11-10 13:58:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'In et praesentium nihil vel reprehenderit quo iusto. Dolor corrupti repellat quae quisquam et explicabo. Voluptatem soluta ea aut et ducimus consequatur fugit.', 0, 1, '2017-07-26 12:52:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Distinctio non quis impedit voluptas vitae laboriosam molestiae. Repellendus voluptas hic quisquam voluptates.', 0, 0, '2019-11-22 12:23:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Consequatur minima corrupti ut deleniti. Praesentium quia quaerat unde. Voluptate quos aperiam nulla. Quasi asperiores dolorem mollitia fugit omnis.', 1, 0, '1995-11-02 04:29:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Vel accusantium officia libero id ut et et quis. Commodi libero consectetur id tempore sunt. Corrupti et velit recusandae temporibus occaecati cum eius. Quas distinctio dolor perferendis voluptatum dolorum perferendis.', 0, 1, '1998-02-15 18:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Quia qui et aut optio. Qui et quia et tenetur suscipit. Quia asperiores consequuntur et dolorem eos. Eos placeat explicabo et voluptatem molestiae beatae iste consequuntur. Officiis voluptas quisquam consequatur voluptatem ut perferendis qui.', 0, 0, '1983-05-06 17:17:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Nihil ut dignissimos voluptatem sapiente possimus. Illo nisi aut odio ut. Nulla ducimus repellendus officiis omnis omnis corporis natus. Iure rem omnis et omnis aliquid autem molestiae error.', 1, 1, '1991-12-07 08:20:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Qui repellendus hic sunt autem quia. Qui iusto quia magni sequi aut iure maxime. Ex enim repellat odio repellendus aliquid pariatur. Voluptatum et dicta et ad nesciunt sed.', 0, 1, '2015-12-17 04:31:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Maiores provident omnis ab reprehenderit delectus unde. In repellat culpa explicabo quia voluptatem. Et pariatur voluptate repudiandae dolore dolor.', 1, 0, '1973-01-05 00:37:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Qui illo eos sed quia aut magnam quo. Animi et dolorem assumenda eos ex. Iure voluptatum aut repudiandae tenetur perferendis sed eos. Magni ipsum eaque dolor quae.', 1, 1, '1973-12-19 03:36:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Nemo ut fugit nihil voluptatem est est ea voluptatem. Aspernatur repellat repudiandae consequatur esse qui ut. Libero exercitationem dolorem adipisci facilis vitae. Tenetur tenetur eveniet rem soluta rerum omnis vel.', 0, 0, '2016-11-29 18:20:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Laborum ipsum quo eveniet veniam et illum cupiditate. Et veniam aliquam ea voluptatem consequatur hic sint error. Dolor autem id et nam placeat nisi.', 0, 0, '1972-11-09 12:56:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Quos rerum et omnis. Laborum occaecati tempora sed laudantium aut itaque aut sunt.', 1, 0, '2011-08-12 01:45:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Vitae illum totam in ab iusto. Sed iusto et suscipit omnis iure temporibus et. Velit sunt dolorem quos suscipit laboriosam velit aspernatur.', 1, 0, '1996-03-26 18:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Nostrum itaque dolorem architecto sed est illo. Velit et voluptas vel ut. Molestiae et iure qui debitis magnam. Repellendus dolores in quisquam sint et ex. Cumque aut iusto ut eius cumque.', 0, 1, '1973-11-14 05:30:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Neque aut et aut nihil. Eius quos id et est nihil harum. Sit praesentium pariatur velit perspiciatis.', 1, 0, '2010-06-12 19:53:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Aut quia saepe debitis voluptates magni ipsa. Repudiandae sequi quas voluptatem voluptas. Magni doloribus ad iste nihil quisquam quas.', 0, 0, '2017-03-19 04:17:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Sed non nulla ipsam ut ipsam reprehenderit et veniam. Reiciendis qui perferendis repellendus. Ipsa eligendi maiores laboriosam est cum.', 0, 0, '1979-07-07 17:03:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Officiis iste eum sint voluptate sunt ea. Qui ipsum provident omnis. Dolore omnis perspiciatis libero deleniti.', 0, 0, '2014-01-08 12:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Odit rerum explicabo et nulla sequi est aliquid. Sed non labore quibusdam iure. Non similique non nostrum labore reprehenderit. Eveniet consectetur non eligendi rerum eum voluptatibus. Magni excepturi ullam labore ut voluptates magni suscipit.', 1, 0, '1985-12-17 21:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Necessitatibus quam molestias aut tempora eos. Et dignissimos eum reprehenderit sint numquam. Non rem ut fugit illum. Illo facere quia velit officia perferendis officia odio.', 0, 1, '2004-06-03 21:04:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Velit itaque et molestiae aperiam. Repellat eum omnis maxime est rerum beatae temporibus. Ad molestiae architecto molestiae iure temporibus qui reiciendis qui. Numquam expedita a eum ut.', 0, 1, '1981-01-04 18:48:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Consequatur quam cumque dolore ad. Laboriosam fuga quaerat commodi repellendus eos. Ea perferendis ad omnis sed.', 1, 0, '2008-06-20 16:48:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Quos autem ad qui. Qui vel autem neque deleniti deleniti excepturi.', 0, 0, '2000-04-26 16:43:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Est suscipit corporis qui. In velit labore deserunt ea. Porro est cupiditate debitis doloremque. Omnis cupiditate modi dolores exercitationem expedita et non aut.', 0, 1, '2016-03-11 23:04:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Tempora dolorum cupiditate expedita non qui quis. Ipsam dolores fugiat voluptatem architecto asperiores. Animi autem vel ab ut porro. Eveniet error ut sint est vel.', 0, 0, '1975-08-16 14:49:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Beatae enim minima molestiae porro nemo ut. Culpa nihil excepturi repudiandae qui perferendis. Eaque facilis aspernatur est sit consequatur in voluptatibus ut.', 1, 1, '2008-09-10 22:17:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Voluptatum ut dolorem dicta non voluptatem. Adipisci doloremque autem eos quibusdam est velit. Nesciunt quia est omnis voluptas. Debitis qui dolor est dolores impedit laboriosam ipsa labore.', 0, 1, '1995-10-13 09:12:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Quaerat voluptas illo odit quia deserunt quia impedit. Et delectus et occaecati sint corrupti ad. Et nihil labore corporis est illum quas blanditiis. Officia sit eos odio doloremque et blanditiis nostrum et.', 0, 1, '1985-09-16 15:16:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Reprehenderit ut alias explicabo adipisci quia eligendi. Aliquid molestias eos culpa at deleniti. Est possimus numquam eos sint. Ut officia et ullam sed possimus optio.', 0, 0, '1989-03-02 14:22:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Qui dolore minus vero natus maxime. Aut natus deleniti quia. Quis et nam atque ea sed aut. Voluptate alias sint esse ea molestiae ut.', 0, 0, '2004-04-04 02:04:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Exercitationem qui debitis ad et veritatis sed hic. In in aliquid qui sed repellat excepturi qui. Quia quis magnam labore necessitatibus.', 0, 1, '2008-03-30 20:31:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Exercitationem amet veritatis voluptatem porro molestias odit. Cupiditate praesentium porro voluptas nemo. Beatae voluptatem aspernatur fugit quasi ea temporibus iste nisi.', 1, 0, '1975-11-24 12:17:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Nesciunt animi dignissimos eveniet itaque ut. Dolore rerum provident excepturi ex. Laboriosam accusantium non exercitationem porro consequatur officiis.', 0, 0, '2000-12-01 08:53:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Voluptate ducimus qui eos exercitationem. Dolores vitae quibusdam vero non accusantium occaecati libero animi. Similique commodi assumenda exercitationem ipsam dolorem nesciunt ut.', 1, 1, '1993-01-23 01:39:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Dolorum ea laborum eos ea eos illo. Voluptatem est tempore dolorum voluptatem ea eos dignissimos harum. Recusandae sint laborum minus aut cupiditate et rerum corrupti. Enim tempore et quod aut dolorem numquam repudiandae qui.', 1, 0, '2012-09-23 12:05:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Omnis culpa rem error ut omnis sit. Ea temporibus eligendi eum nam est necessitatibus quam. Exercitationem dolor odio officia quasi aspernatur dolorem.', 0, 0, '1973-02-27 06:47:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Accusantium voluptatibus quae omnis et. Est molestiae quo incidunt consectetur minima sit vitae. Illum quam distinctio dolorem consequatur sed ut.', 0, 1, '2004-03-22 13:28:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Molestiae et corrupti voluptate asperiores quia laudantium. Iste ut qui consectetur et magni qui corporis. A autem nihil culpa quos ea assumenda molestiae non.', 1, 0, '2007-07-02 23:01:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Optio assumenda sapiente dolor et blanditiis corrupti est ipsam. Molestiae non maiores ut ea blanditiis. Est optio in aut quis dolorem quo.', 1, 1, '2016-11-14 20:38:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Quia eveniet ullam dicta. Molestiae dolor quia qui architecto expedita dolorem. Placeat sed tempore aut aut alias.', 1, 0, '1995-05-12 17:45:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Dolorem sequi autem optio rerum quo eaque. Qui qui distinctio debitis nisi et. Eum minima ut unde quos dolor labore quam.', 0, 0, '1999-07-15 01:44:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Amet sint saepe quia exercitationem. Ut officia laborum cum excepturi. Aut culpa dolores dolorem aut amet.', 0, 0, '2009-12-22 11:55:48');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (1, '1', '2014-09-23', 'West Leonieport', 93, '2009-07-22 02:44:32', '1985-07-04 20:15:48');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (2, '1', '1997-04-24', 'Bryonberg', 41, '1986-02-13 01:00:04', '1976-03-27 02:15:54');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (3, '2', '2007-02-12', 'Luettgenport', 50, '1982-09-19 08:12:27', '1978-01-14 08:43:06');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (4, '1', '1970-02-08', 'Port Amanibury', 10, '2001-05-06 14:34:01', '1974-07-11 19:57:10');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (5, '2', '2011-11-06', 'Howellmouth', 29, '2009-12-09 00:39:43', '2018-05-01 20:46:35');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (6, '2', '2017-10-07', 'Valerieport', 23, '2009-01-15 11:58:19', '1980-04-01 08:53:49');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (7, '1', '1973-05-17', 'Wilbertside', 81, '1996-04-02 13:29:21', '2003-11-25 17:11:44');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (8, '1', '2013-12-02', 'Rhettfort', 1, '1981-11-24 10:46:45', '1996-10-02 07:05:55');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (9, '2', '1981-07-26', 'Spinkaberg', 91, '1994-07-30 21:04:01', '1993-06-06 10:25:01');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (10, '1', '2013-01-09', 'Port Nola', 22, '1986-09-21 22:14:05', '1970-09-16 13:34:19');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (11, '2', '2007-12-16', 'South Kieraborough', 27, '1987-02-11 17:28:43', '1976-12-03 00:28:19');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (12, '1', '1992-10-09', 'Schultzland', 89, '2001-04-07 07:07:35', '1974-02-18 11:16:19');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (13, '1', '2019-01-18', 'Lake Burley', 63, '2003-05-21 16:15:11', '1976-07-04 15:26:31');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (14, '1', '1990-07-04', 'Port Wadestad', 20, '1998-05-14 16:26:23', '1972-06-11 03:42:05');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (15, '2', '2001-04-18', 'Pacochashire', 55, '2018-03-25 22:25:08', '2000-09-10 20:06:29');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (16, '1', '2018-06-29', 'East Gaetanofort', 21, '1972-02-03 08:15:11', '1974-11-13 05:30:34');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (17, '2', '2016-11-15', 'Sawaynfort', 61, '1978-08-27 12:36:35', '1970-02-22 17:08:49');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (18, '1', '1987-05-28', 'West Vickyhaven', 76, '1991-01-14 13:28:40', '2010-09-20 01:05:11');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (19, '2', '2006-09-27', 'Kristoferberg', 39, '1972-07-24 10:44:08', '2007-01-30 09:06:26');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (20, '2', '1970-01-03', 'Jerrodview', 12, '2019-11-23 21:52:17', '2019-10-23 21:49:46');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (21, '1', '1985-12-30', 'Lake Danny', 71, '1977-11-20 23:30:58', '1995-08-07 06:09:31');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (22, '1', '1972-12-27', 'New Douglas', 52, '2014-11-09 09:51:51', '1999-03-13 05:24:55');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (23, '1', '2018-09-14', 'South Lisetteborough', 58, '1993-01-10 03:47:01', '1990-11-17 06:03:20');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (24, '2', '2011-04-12', 'East Janellechester', 52, '1995-06-01 23:45:43', '1993-05-12 21:20:34');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (25, '2', '1971-06-16', 'New Zita', 23, '1981-10-12 08:49:22', '2002-11-10 03:02:02');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (26, '1', '1997-12-30', 'Hayesfurt', 95, '2016-08-03 21:57:12', '1991-02-07 22:17:17');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (27, '1', '2006-06-28', 'Karsonland', 89, '2008-07-24 22:02:37', '2001-12-26 21:05:33');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (28, '1', '1970-08-26', 'Lake Estelhaven', 53, '1984-12-04 14:01:46', '2007-10-23 13:09:10');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (29, '1', '2012-02-17', 'New Ellie', 90, '1978-07-08 10:10:11', '2004-04-19 21:29:42');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (30, '1', '2017-05-13', 'New Zelma', 34, '2012-06-23 12:22:32', '1989-05-31 21:54:35');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (31, '1', '1989-05-03', 'Billieton', 54, '2014-07-13 15:15:55', '2002-09-03 16:10:14');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (32, '2', '2010-01-17', 'Adellshire', 46, '1984-06-21 23:28:50', '1998-07-30 16:19:15');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (33, '2', '2014-08-09', 'New Agustina', 28, '1974-07-29 15:26:44', '1989-08-15 23:11:43');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (34, '2', '1997-06-29', 'Port Brendon', 70, '1971-08-28 13:54:02', '1978-02-01 21:39:18');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (35, '1', '1981-07-20', 'West Dorothea', 28, '2006-06-01 14:01:35', '1975-08-31 10:05:38');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (36, '1', '1991-07-11', 'South Madonnastad', 70, '2013-07-28 20:35:07', '2009-09-13 20:18:42');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (37, '2', '1973-09-30', 'North Ceciliaburgh', 17, '1970-03-09 23:12:51', '2014-05-16 22:42:46');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (38, '1', '1980-02-24', 'South Narcisoland', 53, '2018-09-11 01:31:23', '1972-08-27 02:47:39');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (39, '2', '2019-09-22', 'Hegmannshire', 61, '2017-03-24 08:28:49', '1989-08-27 21:46:34');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (40, '1', '1981-07-06', 'West Anaisberg', 21, '1980-12-28 13:59:57', '2012-05-25 00:54:01');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (41, '1', '1975-09-23', 'Darienland', 34, '2001-08-16 11:15:09', '2000-10-24 15:55:06');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (42, '2', '1977-12-20', 'Port Santiagofort', 86, '1977-03-18 13:35:04', '1978-03-14 18:47:47');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (43, '1', '1971-01-21', 'Harristown', 15, '2012-11-14 14:17:15', '2009-01-25 14:40:40');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (44, '1', '1990-01-10', 'South Benton', 33, '1998-04-07 18:19:15', '2012-07-29 21:42:27');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (45, '1', '2013-06-23', 'Rocioland', 94, '2010-05-07 20:40:01', '1993-02-20 18:41:35');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (46, '2', '1994-11-07', 'Wardside', 51, '1974-05-08 01:42:47', '2004-11-19 04:15:40');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (47, '1', '1979-01-20', 'Torpchester', 72, '1999-11-04 22:19:56', '2001-07-28 08:53:33');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (48, '1', '2016-11-15', 'Lake Raoulhaven', 31, '2013-07-19 12:33:32', '1992-11-05 09:40:26');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (49, '1', '2013-04-15', 'South Myron', 68, '1988-10-25 05:20:54', '1986-06-18 13:50:27');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (50, '1', '2019-10-24', 'South Ransomberg', 90, '2005-01-26 20:42:28', '1972-05-04 20:36:06');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (51, '2', '1975-10-03', 'Marcville', 41, '2009-04-16 15:22:44', '1976-09-15 17:29:36');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (52, '2', '2012-11-03', 'Toytown', 61, '1975-09-17 23:53:19', '1973-11-27 15:11:15');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (53, '2', '1990-05-19', 'Lake Flossie', 51, '1979-10-09 16:04:58', '1999-10-04 01:03:01');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (54, '2', '2003-07-06', 'Dillanmouth', 1, '1995-02-15 07:40:09', '1989-09-16 04:48:41');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (55, '1', '1990-11-06', 'Lake Jayson', 13, '1998-12-26 21:40:56', '1995-02-03 01:44:04');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (56, '1', '2006-04-04', 'New Bennieside', 67, '1979-11-20 06:06:12', '1972-05-22 08:14:13');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (57, '2', '2009-02-05', 'West Preciousberg', 69, '1976-11-23 05:33:45', '2004-12-27 02:35:41');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (58, '1', '1973-05-20', 'New Velda', 82, '1974-09-30 23:40:00', '2001-12-09 10:01:03');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (59, '2', '2015-07-20', 'West Dorothyshire', 28, '2002-02-03 23:38:08', '1982-08-21 08:23:51');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (60, '1', '2011-05-26', 'East Meredithfurt', 74, '2011-04-30 05:21:53', '1985-10-28 02:21:55');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (61, '1', '2014-02-03', 'Alvenatown', 59, '1993-09-13 02:33:58', '1998-07-18 13:46:23');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (62, '1', '1971-05-16', 'Jeanettehaven', 67, '2018-07-01 16:48:53', '2000-09-06 23:25:18');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (63, '2', '1996-09-23', 'Port Emmiebury', 42, '2010-06-22 16:35:50', '2017-12-19 22:53:17');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (64, '1', '2016-04-30', 'Maxhaven', 80, '1997-07-24 11:41:13', '2004-11-24 00:50:54');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (65, '2', '2010-04-14', 'North Liaside', 44, '2007-08-17 22:23:16', '1979-01-01 00:40:59');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (66, '2', '1987-06-06', 'Domenickberg', 8, '1982-01-15 05:41:46', '1975-10-19 23:53:13');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (67, '2', '1981-05-22', 'Tabithastad', 79, '2015-04-11 02:18:38', '1993-09-30 15:53:56');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (68, '2', '1985-04-04', 'Noemyfurt', 49, '2012-10-31 20:00:08', '1977-08-02 14:36:16');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (69, '2', '2013-05-15', 'Loyalview', 61, '2016-05-18 12:42:43', '1981-09-01 05:36:56');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (70, '1', '1995-02-06', 'South Magdalen', 52, '1987-05-12 01:13:51', '1992-11-02 16:58:59');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (71, '1', '2011-06-21', 'Lake Mollychester', 11, '1973-07-31 16:00:11', '1988-04-11 06:28:13');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (72, '1', '1986-05-29', 'Devantefurt', 76, '1978-01-04 16:37:57', '1975-04-03 17:34:25');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (73, '2', '1979-01-17', 'Stoltenbergport', 76, '2017-09-14 04:37:39', '2005-07-14 03:10:04');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (74, '2', '1981-04-28', 'Mikaylamouth', 98, '1995-02-09 14:57:23', '2011-08-06 05:29:43');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (75, '2', '1972-07-10', 'Port Cadenton', 73, '1973-01-04 20:46:48', '1990-11-01 11:41:38');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (76, '1', '2016-08-19', 'Gulgowskiville', 13, '1987-10-15 06:32:09', '2016-03-09 07:28:54');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (77, '1', '1978-11-17', 'South Freda', 41, '1993-07-04 00:45:02', '2016-05-17 10:05:18');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (78, '1', '2020-01-05', 'Darianaland', 31, '1976-06-19 03:18:43', '1996-04-22 20:56:25');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (79, '2', '2005-12-23', 'Dillonhaven', 47, '2015-01-09 16:15:29', '1976-09-09 13:23:01');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (80, '2', '2005-05-20', 'South Corymouth', 95, '2013-07-31 13:22:27', '1981-01-30 07:41:05');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (81, '2', '1997-07-10', 'Port Waino', 29, '1996-07-27 19:17:23', '2011-10-06 07:35:14');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (82, '2', '2015-01-24', 'North Agustinastad', 63, '2010-10-23 19:00:29', '1993-01-28 06:22:36');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (83, '2', '1981-12-11', 'Hesselstad', 46, '2009-07-18 19:00:09', '2015-08-27 18:33:00');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (84, '1', '1982-12-14', 'Grantton', 47, '2006-08-26 11:30:18', '1988-07-12 17:36:22');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (85, '2', '1987-10-12', 'Alysonside', 18, '1999-02-12 08:13:11', '2009-06-23 02:57:53');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (86, '2', '1981-11-14', 'Declantown', 36, '2005-12-23 19:49:05', '2001-04-25 16:17:17');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (87, '1', '1982-09-18', 'North Florence', 72, '1981-04-21 09:16:13', '2007-06-13 23:07:41');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (88, '2', '1976-11-14', 'New Vivafurt', 5, '1986-06-05 10:59:28', '1980-11-24 17:35:02');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (89, '1', '1970-09-20', 'Eldredmouth', 66, '1997-12-20 04:27:17', '1981-04-03 00:46:15');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (90, '2', '1991-12-11', 'Corwinland', 99, '1986-01-04 18:57:20', '1973-04-14 00:46:53');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (91, '1', '1979-07-15', 'Krystalfurt', 66, '2014-09-10 11:02:18', '2019-08-01 06:37:55');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (92, '1', '1998-03-08', 'Darleneshire', 36, '2001-09-05 10:40:18', '2009-07-26 21:16:39');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (93, '1', '1973-06-22', 'New Johnnie', 38, '2017-05-30 09:59:52', '2002-10-11 22:15:00');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (94, '2', '1999-01-27', 'North Darenland', 89, '2016-03-26 12:30:03', '2008-06-11 16:42:20');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (95, '1', '2002-04-27', 'New Michaela', 94, '2004-10-26 20:47:32', '2013-10-16 02:20:46');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (96, '1', '1986-12-05', 'Port Charlesland', 57, '2008-03-27 06:54:58', '1971-04-26 16:09:07');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (97, '2', '1998-11-08', 'Hanstown', 61, '1976-01-19 23:35:42', '1992-04-10 14:00:05');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (98, '2', '1998-09-25', 'Huelschester', 41, '2007-06-24 05:38:12', '2018-07-09 07:34:15');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (99, '2', '2009-01-30', 'Kovacekton', 67, '1980-06-22 05:20:51', '2001-07-11 01:07:23');
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`, `created_at`, `updated_at`) VALUES (100, '1', '1997-12-29', 'Lake Walterton', 23, '1996-04-01 07:45:41', '2003-10-05 10:47:49');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Opal', 'Wilderman', 'tyrel.rolfson@example.com', '0782808164', '2010-12-13 11:51:24', '1995-06-19 05:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Domenick', 'Wiza', 'ramona99@example.com', '+75(4)9216', '2017-10-26 06:09:33', '1986-10-25 04:35:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Rusty', 'Pacocha', 'hkohler@example.org', '(761)357-3', '1995-10-16 13:00:06', '1987-10-25 12:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Maci', 'Koss', 'yasmine.rowe@example.com', '0345055564', '1975-01-11 02:28:20', '1991-03-25 15:15:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Devan', 'Kuhic', 'irving66@example.com', '(644)852-1', '2000-01-31 03:41:30', '1985-07-30 07:22:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Bobby', 'Leffler', 'bette.ondricka@example.org', '023-540-97', '1989-01-07 09:31:53', '1975-02-24 08:36:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Gardner', 'Watsica', 'nhartmann@example.net', '773-543-24', '1997-12-15 09:14:47', '1994-10-31 12:25:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Zetta', 'Casper', 'ibrahim.donnelly@example.org', '557.291.90', '2015-02-14 04:59:49', '1988-07-25 14:38:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Loraine', 'Reinger', 'dereck75@example.net', '(397)363-6', '2003-04-28 06:35:23', '2006-08-14 16:35:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Hilario', 'Hermann', 'darlene63@example.org', '1-030-387-', '1999-07-24 10:28:11', '1971-03-31 23:55:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Khalil', 'Schneider', 'megane.mosciski@example.net', '772-913-92', '2017-06-05 17:22:08', '1978-02-22 13:54:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Wilfredo', 'McLaughlin', 'harmon20@example.net', '(284)982-5', '2005-04-03 06:17:05', '1988-06-28 13:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Lauryn', 'Becker', 'dominique.cronin@example.net', '590.544.87', '1978-07-31 09:59:00', '2012-03-28 15:30:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Marcel', 'Spinka', 'jerad94@example.com', '1-861-897-', '1976-04-19 02:46:19', '1970-08-26 16:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Blake', 'Zemlak', 'xrolfson@example.org', '+60(8)0420', '1995-05-08 05:01:30', '1971-07-08 00:24:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Lenore', 'Stamm', 'judah14@example.com', '670-269-83', '1985-07-25 14:03:18', '1994-02-01 08:49:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Rita', 'Parisian', 'baumbach.eunice@example.com', '(066)589-5', '1975-03-14 12:10:07', '1997-12-19 18:02:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Rico', 'Roberts', 'cormier.elias@example.com', '(025)020-1', '2007-12-04 12:58:56', '1993-01-16 23:55:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Roosevelt', 'Toy', 'vward@example.org', '851-452-13', '1986-10-10 21:52:06', '1981-09-18 12:52:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Alf', 'Romaguera', 'walsh.greg@example.com', '(594)406-3', '1991-11-04 21:45:45', '2007-11-19 20:52:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Trisha', 'Lang', 'arussel@example.org', '1-383-408-', '1982-05-31 18:42:35', '2015-08-25 19:46:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Hayley', 'Hintz', 'willy.hessel@example.org', '1-326-091-', '1980-03-22 11:23:59', '1995-09-28 04:58:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Loma', 'O\'Keefe', 'rigoberto63@example.net', '857-222-40', '1973-05-13 13:08:50', '1977-01-27 02:29:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Sanford', 'Baumbach', 'reba.kunze@example.net', '214.620.79', '1987-10-26 11:11:34', '2006-10-11 05:29:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Kimberly', 'Parker', 'elmore.raynor@example.com', '(045)409-3', '2014-01-19 20:09:14', '1987-08-03 00:14:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Aniyah', 'Lind', 'emilie82@example.net', '983-715-21', '1973-04-08 18:52:23', '2009-10-29 09:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Lauriane', 'Windler', 'bhaley@example.org', '894-520-16', '1974-04-18 11:27:38', '2000-12-25 21:34:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Giovanna', 'King', 'fluettgen@example.net', '1-575-638-', '2010-10-11 21:33:28', '1991-07-23 03:50:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Cathrine', 'Waters', 'fredy97@example.org', '+05(8)1316', '2005-08-14 09:19:05', '1979-02-03 07:48:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Osborne', 'Wiegand', 'ckertzmann@example.org', '1-494-398-', '2002-07-22 18:56:41', '2011-04-22 02:54:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Alvena', 'Heaney', 'helmer83@example.org', '421.689.06', '1975-03-24 15:58:49', '1976-02-28 22:15:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Isidro', 'VonRueden', 'seth34@example.com', '(848)389-4', '2003-11-02 06:27:38', '1971-07-05 08:18:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Elmore', 'Schoen', 'turcotte.davonte@example.org', '301.153.09', '2003-11-13 17:38:44', '2000-01-02 08:55:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Harmon', 'Hoppe', 'blang@example.net', '+57(8)1258', '1998-04-13 03:58:21', '1971-02-06 00:46:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Lukas', 'Koss', 'hector32@example.org', '662-647-73', '1973-01-13 07:05:59', '2019-02-20 13:08:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Aniyah', 'Boehm', 'kali.blanda@example.org', '1-050-267-', '1973-04-02 02:02:17', '2019-01-06 10:05:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Dorothy', 'Baumbach', 'dsmith@example.net', '704.516.14', '1984-04-03 01:45:03', '1971-10-30 02:22:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Orland', 'Schuster', 'sigrid.schoen@example.com', '0220026081', '1989-01-01 11:34:03', '2015-04-03 11:51:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Fritz', 'Raynor', 'lavinia.considine@example.com', '968.274.87', '1978-04-12 19:24:39', '2000-08-07 18:58:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Vivien', 'Medhurst', 'braxton91@example.com', '(987)531-4', '2014-10-17 11:56:27', '2018-06-14 01:52:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Brain', 'Mayert', 'robel.anastacio@example.com', '1-489-514-', '1976-03-10 14:51:02', '2001-08-13 17:58:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Dane', 'D\'Amore', 'enrico.huels@example.org', '400.897.71', '1977-11-10 09:41:05', '1997-03-21 18:02:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Jody', 'Feeney', 'gutkowski.keshawn@example.com', '697.720.64', '2012-06-25 06:22:44', '2010-09-12 00:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Estelle', 'Goyette', 'agnes30@example.net', '0616739687', '2017-09-10 05:35:13', '2016-01-04 13:25:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Annabel', 'Purdy', 'marley55@example.net', '930-349-92', '1997-12-26 20:16:51', '2016-09-07 23:03:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Madisyn', 'Block', 'macey91@example.net', '(726)476-7', '1977-08-03 01:58:01', '2007-11-28 02:34:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Danika', 'Huel', 'umclaughlin@example.org', '(731)965-6', '1989-04-27 22:01:36', '1977-01-29 01:02:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Deshawn', 'Bernhard', 'prudence57@example.net', '+31(9)3336', '1987-01-02 19:16:07', '2010-02-23 09:08:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Carolyne', 'Murazik', 'herman11@example.org', '(954)904-8', '2010-09-11 13:14:37', '2011-12-10 11:25:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Nelson', 'Feeney', 'muller.stuart@example.com', '(778)991-1', '2015-11-22 04:41:43', '1982-06-28 04:19:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Charlene', 'Ryan', 'ervin.tromp@example.com', '400.347.15', '2009-12-05 00:50:01', '2005-11-13 13:44:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Mireya', 'Goodwin', 'darrel85@example.org', '101.276.32', '2017-10-14 14:37:24', '2016-07-09 19:41:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Ardith', 'Donnelly', 'hilll.hilma@example.net', '+93(1)8400', '1988-05-09 02:03:13', '1978-08-01 04:32:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Oral', 'Senger', 'pacocha.name@example.org', '1-405-372-', '1989-11-01 07:10:29', '1993-10-26 00:13:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Lysanne', 'Mertz', 'mary96@example.com', '0491569919', '1999-12-31 15:22:31', '1993-10-26 15:52:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Renee', 'Pfannerstill', 'andreane.gerhold@example.com', '+28(9)6811', '1993-11-20 11:08:00', '1977-01-05 06:08:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Wilburn', 'Shanahan', 'bsatterfield@example.net', '+80(7)5215', '1984-04-24 14:12:46', '1984-10-08 04:39:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Alexandrine', 'Bradtke', 'bogan.bret@example.com', '763-481-29', '1975-05-25 04:21:48', '1983-06-16 19:00:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Alana', 'Funk', 'fpfannerstill@example.org', '+04(0)1852', '2015-05-04 05:13:55', '1979-10-30 07:46:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ezra', 'McDermott', 'jenkins.victoria@example.net', '681.506.84', '2004-01-24 16:45:25', '1991-04-13 16:41:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Madyson', 'Conn', 'carlos58@example.net', '0855514129', '2011-06-24 07:08:03', '1972-01-24 03:52:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Evans', 'D\'Amore', 'jbosco@example.org', '(957)272-4', '1984-12-25 20:13:52', '1989-09-25 00:49:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Reyes', 'Effertz', 'shirley.rogahn@example.com', '167-661-79', '2017-05-21 18:22:32', '1999-06-16 14:50:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Rhett', 'Parker', 'purdy.elliott@example.net', '358-474-55', '1976-11-16 10:02:19', '1983-08-20 17:47:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Coleman', 'Beahan', 'rath.marielle@example.com', '0931831737', '1997-12-16 03:03:07', '2008-03-11 02:59:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Kenny', 'Boehm', 'ianderson@example.net', '+89(6)1920', '2019-08-08 15:05:46', '1989-01-31 09:09:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jermain', 'Bartell', 'maximillian68@example.org', '(584)619-2', '2010-01-04 20:48:35', '2015-06-10 02:09:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Stephanie', 'Kovacek', 'zwelch@example.org', '178.336.42', '1977-09-17 14:02:17', '2003-08-30 09:32:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Pete', 'Rowe', 'easter.glover@example.org', '266-680-26', '1973-11-15 15:54:46', '1991-09-12 23:12:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Cathryn', 'Koelpin', 'vdeckow@example.org', '(532)207-6', '1971-07-19 21:23:34', '2011-03-01 07:15:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Neal', 'Gutkowski', 'dallas.jacobs@example.org', '1-189-879-', '2005-09-21 02:16:01', '1976-08-24 12:38:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Axel', 'Ledner', 'hpouros@example.org', '161.987.98', '2016-09-01 02:31:39', '2007-11-15 17:01:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Damaris', 'Morissette', 'adan68@example.com', '668.231.46', '2014-02-01 10:39:53', '2004-06-27 16:51:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Lacey', 'Armstrong', 'victoria.mcglynn@example.org', '(364)115-6', '1984-03-02 20:56:03', '2002-10-26 22:19:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Tara', 'Ernser', 'else.dubuque@example.net', '408-011-12', '2011-10-12 10:24:13', '1995-07-09 01:45:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Erich', 'Hoeger', 'maggio.willow@example.org', '1-508-282-', '2017-04-15 06:07:07', '1980-02-16 15:48:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Asha', 'Kertzmann', 'donnelly.trevion@example.net', '929.786.19', '1984-10-31 07:01:13', '2019-11-29 18:47:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Ronny', 'Bode', 'gkeebler@example.net', '(402)389-3', '1982-10-21 08:01:56', '2004-10-07 10:44:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Violet', 'Stanton', 'zhomenick@example.org', '+77(8)4550', '1997-06-11 02:29:29', '1971-02-26 05:06:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Vinnie', 'Kertzmann', 'presley39@example.org', '486-660-78', '1982-11-29 09:58:01', '1978-02-28 16:57:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Jesse', 'Streich', 'ettie.quitzon@example.com', '795-181-86', '2009-05-24 13:29:37', '1992-03-07 04:06:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Jerrold', 'Hermiston', 'theodore.krajcik@example.org', '(494)594-6', '1989-07-26 14:25:39', '1972-02-13 21:21:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Dolly', 'Considine', 'ygorczany@example.net', '675-896-33', '2013-03-18 03:15:16', '1976-09-15 15:36:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Mustafa', 'Little', 'alden32@example.com', '1-195-854-', '1989-06-12 16:30:28', '2018-08-11 05:37:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Jesse', 'Walker', 'meaghan.kihn@example.com', '184-071-11', '1980-04-11 00:43:00', '2002-05-15 20:13:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Lurline', 'Farrell', 'maryam.bayer@example.org', '+06(2)5497', '1974-02-16 05:27:56', '2005-12-10 02:50:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Kaylin', 'Yundt', 'mario31@example.com', '0993265472', '1972-11-28 08:23:38', '2018-12-20 07:00:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Lennie', 'McDermott', 'uflatley@example.com', '797-644-31', '2002-03-13 08:47:48', '2016-08-30 14:55:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'William', 'Frami', 'lavinia45@example.com', '326-067-41', '1978-09-30 20:04:59', '1993-05-03 18:17:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Marcos', 'Pfannerstill', 'mariana16@example.net', '+00(9)8889', '1994-05-06 15:21:58', '1980-03-08 11:37:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lucie', 'Wiza', 'abbott.jaquan@example.com', '0777346876', '1976-04-20 00:37:08', '1990-05-08 11:06:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Maximo', 'Feil', 'hcummerata@example.org', '0138651344', '2017-02-19 02:30:22', '2014-02-17 13:17:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Gwendolyn', 'Borer', 'diamond67@example.com', '574-779-37', '2014-04-11 04:30:52', '1975-04-19 01:20:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Guido', 'Abshire', 'jacobi.jane@example.com', '252.989.70', '1988-06-20 00:09:44', '2009-07-21 01:57:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Susana', 'Hayes', 'uriel57@example.com', '499.665.42', '1998-02-23 11:15:56', '1981-12-01 11:29:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Winifred', 'Smitham', 'barton.oren@example.org', '1-552-138-', '2003-10-05 04:55:29', '1975-09-12 04:55:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Bridie', 'Bernhard', 'madalyn03@example.com', '223-300-95', '2001-09-18 13:30:53', '2011-11-11 12:11:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Olga', 'Moore', 'heaven52@example.org', '747.457.66', '2013-09-17 09:51:06', '2015-05-30 22:01:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Jamie', 'Harvey', 'coy.kertzmann@example.org', '(156)277-2', '2010-10-16 05:39:33', '1989-08-30 04:24:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Everette', 'Ortiz', 'ward.keshaun@example.net', '1-735-969-', '1991-05-19 03:23:42', '1989-11-24 20:10:00');


