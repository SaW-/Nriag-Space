-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2017 at 05:35 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `space_mission`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Egypt', '2017-04-27 11:58:00', '2017-04-27 11:58:00'),
(2, 'USA', '2017-04-27 11:58:00', '2017-04-27 11:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_193651_create_roles_permissions_tables', 2),
(4, '2017_04_26_082548_create_sattalites_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2017-04-27 07:23:06', '2017-04-27 07:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sattalites`
--

CREATE TABLE `sattalites` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `data_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coverage_area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sattalites`
--

INSERT INTO `sattalites` (`id`, `title`, `description`, `category_id`, `data_file`, `image`, `coverage_area`, `tle`, `created_at`, `updated_at`) VALUES
(9, 'Aura', 'NORAD ID: 28376  \r\nInt\'l Code: 2004‐026A  \r\nSemi‐major axis: 7080  \r\nEccentricity: 0.0001\r\nPerigee: 708 km\r\nApogee: 710 km\r\nInclination: 98.22 degrees\r\nRAAN: 96.81 degrees\r\nArgument of perigee: 89.50 degrees\r\nMean anomaly:270.62 degrees\r\nMean motion: 14.571 rev/day\r\nPeriod: 98.83 minutes\r\nLaunch date July 15, 2004\r\nMission description and instrumentation:\r\nThe Aura spacecraft was successfully launched on July 15, 2004 aboard a Delta II 7920‐10L, a\r\ntwo stage expendable rocket, from the Vandenberg Western Test Range. Aura was launched\r\ninto a sun‐synchronous.\r\nAura\'s instruments measure trace gases in the atmosphere by detecting their unique spectral\r\nsignatures. (MLS) observes the faint microwave emissions from rotating and vibrating\r\nmolecules. (HIRDLS) and (TES) observe the infrared thermal emissions also due to molecular\r\nvibrations and rotations. OMI detects the molecular absorption of backscattered sunlight in the\r\nvisible and ultraviolet wavelengths.\r\nFor more about instruments and data\r\n <a href="https://aura.gsfc.nasa.gov/scinst.html">1-\r\n instruments </a>\r\n\r\n<a href="https://aura.gsfc.nasa.gov/science/data.html">1-\r\n Data </a>', 1, '[ {\n    "id":"document",\n    "name":"Lunar Transfer Trajectory",\n    "version":"1.0",\n	"clock":{\n      "interval":"2013-01-04T01:39:24.59Z/2013-01-04T03:12:24.59Z",\n      "currentTime":"2013-01-04T01:39:24.59Z",\n      "multiplier":10,\n      "range":"LOOP_STOP",\n      "step":"SYSTEM_CLOCK_MULTIPLIER"\n  }},\n{  \n   "id": "lunarProbe",\n   "availability":["2013-01-04T01:39:24.59Z/2013-01-04T03:12:24.59Z"],\n   "model" : {\n       "gltf" : "../Apps/LRO_spacecraft_with_materials.gltf",\n	   "scale" : 5000.0,\n       "show" : [{\n                "interval" : "2013-01-04T01:39:24.59Z/2013-01-04T03:12:24.59Z",\n                "boolean" : true\n            }]\n   },\n    "billboard" : {\n        "eyeOffset" : {\n            "cartesian" : [0.0, 0.0, 0.0]\n        },\n        "horizontalOrigin" : "CENTER",\n        "image" : "data:image/png;base64,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",\n        "pixelOffset" : {\n            "cartesian2" : [0.0, 0.0]\n        },\n        "scale" : 0.4,\n        "show" : true,\n        "verticalOrigin" : "BOTTOM"\n    },\n    "label" : {\n        "fillColor" : {\n            "rgba" : [255, 255, 0, 255]\n        },\n        "font" : "bold 10pt Segoe UI Semibold",\n        "horizontalOrigin" : "LEFT",\n        "outlineColor" : {\n            "rgba" : [0, 0, 0, 255]\n        },\n        "pixelOffset" : {\n            "cartesian2" : [10.0, 0.0]\n        },\n        "scale" : 1.0,\n        "show" : true,\n        "style" : "FILL",\n        "text" : "lunarProbe",\n        "verticalOrigin" : "CENTER"\n    },\n    "ellipse" : {\n        "semiMinorAxis" : 250000.0,\n        "semiMajorAxis" : 400000.0,\n        "height" : 0,\n        "material" : {\n            "solidColor" : {\n                "color" : {\n                    "rgba" : [255, 0, 0, 180]\n                }\n            }\n        },\n        "outline" : true,\n        "outlineColor" : {\n            "rgba" : [255, 0, 0, 255]\n        }\n    },\n   "path" : {\n			"width" : 1.5,\n			"material":{\n               "solidColor":{ "color":{ "rgba":[ 200,100,150,255 ] } }\n            },\n		   "show"  : true\n     },		   \n   "position": {\n        "referenceFrame": "INERTIAL",\n        "cartesian": [  \n"2013-01-04T01:39:24.59Z",-6740158.1745,-1034886.5884,14241.7142,\n"2013-01-04T01:40:24.59Z",-6722057.8476,-1040027.6818,472222.9881,\n"2013-01-04T01:41:24.59Z",-6673582.7354,-1040469.3361,928070.3976,\n"2013-01-04T01:42:24.59Z",-6594942.0262,-1036208.1203,1379722.7481,\n"2013-01-04T01:43:24.59Z",-6486481.5787,-1027261.8864,1825136.4967,\n"2013-01-04T01:44:24.59Z",-6348682.5286,-1013669.7150,2262295.0520,\n"2013-01-04T01:45:24.59Z",-6182159.2715,-995491.7643,2689217.9751,\n"2013-01-04T01:46:24.59Z",-5987656.8315,-972809.0217,3103970.0376,\n"2013-01-04T01:47:24.59Z",-5766047.6226,-945722.9593,3504670.0934,\n"2013-01-04T01:48:24.59Z",-5518327.6167,-914355.0945,3889499.7231,\n"2013-01-04T01:49:24.59Z",-5245611.9317,-878846.4566,4256711.6079,\n"2013-01-04T01:50:24.59Z",-4949129.8607,-839356.9625,4604637.5933,\n"2013-01-04T01:51:24.59Z",-4630219.3603,-796064.7036,4931696.4021,\n"2013-01-04T01:52:24.59Z",-4290321.0255,-749165.1468,5236400.9597,\n"2013-01-04T01:53:24.59Z",-3930971.5752,-698870.2531,5517365.2939,\n"2013-01-04T01:54:24.59Z",-3553796.8796,-645407.5186,5773310.9761,\n"2013-01-04T01:55:24.59Z",-3160504.5607,-589018.9410,6003073.0704,\n"2013-01-04T01:56:24.59Z",-2752876.2012,-529959.9168,6205605.5607,\n"2013-01-04T01:57:24.59Z",-2332759.1976,-468498.0752,6379986.2292,\n"2013-01-04T01:58:24.59Z",-1902058.2962,-404912.0530,6525420.9597,\n"2013-01-04T01:59:24.59Z",-1462726.8531,-339490.2169,6641247.4456,\n"2013-01-04T02:00:24.59Z",-1016757.8596,-272529.3396,6726938.2816,\n"2013-01-04T02:01:24.59Z",-566174.7764,-204333.2349,6782103.4256,\n"2013-01-04T02:02:24.59Z",-113022.2215,-135211.3603,6806492.0158,\n"2013-01-04T02:03:24.59Z",340643.4440,-65477.3921,6799993.5360,\n"2013-01-04T02:04:24.59Z",792763.5845,4552.2189,6762638.3213,\n"2013-01-04T02:05:24.59Z",1241286.7695,74559.7051,6694597.4031,\n"2013-01-04T02:06:24.59Z",1684178.2153,144227.4450,6596181.6941,\n"2013-01-04T02:07:24.59Z",2119429.1444,213239.4244,6467840.5173,\n"2013-01-04T02:08:24.59Z",2545066.0173,281282.6902,6310159.4876,\n"2013-01-04T02:09:24.59Z",2959159.5912,348048.7874,6123857.7569,\n"2013-01-04T02:10:24.59Z",3359833.7629,413235.1743,5909784.6365,\n"2013-01-04T02:11:24.59Z",3745274.1531,476546.6085,5668915.6162,\n"2013-01-04T02:12:24.59Z",4113736.3910,537696.4964,5402347.7985,\n"2013-01-04T02:13:24.59Z",4463554.0610,596408.2008,5111294.7732,\n"2013-01-04T02:14:24.59Z",4793146.2740,652416.3004,4797080.9583,\n"2013-01-04T02:15:24.59Z",5101024.8273,705467.7938,4461135.4351,\n"2013-01-04T02:16:24.59Z",5385800.9228,755323.2453,4104985.3104,\n"2013-01-04T02:17:24.59Z",5646191.4100,801757.8641,3730248.6370,\n"2013-01-04T02:18:24.59Z",5881024.5293,844562.5143,3338626.9298,\n"2013-01-04T02:19:24.59Z",6089245.1284,883544.6506,2931897.3138,\n"2013-01-04T02:20:24.59Z",6269919.3310,918529.1750,2511904.3414,\n"2013-01-04T02:21:24.59Z",6422238.6374,949359.2119,2080551.5209,\n"2013-01-04T02:22:24.59Z",6545523.4417,975896.7976,1639792.5954,\n"2013-01-04T02:23:24.59Z",6639225.9512,998023.4821,1191622.6138,\n"2013-01-04T02:24:24.59Z",6702932.4988,1015640.8398,738068.8377,\n"2013-01-04T02:25:24.59Z",6736365.2387,1028670.8881,281181.5240,\n"2013-01-04T02:26:24.59Z",6739383.2240,1037056.4133,-176975.3709,\n"2013-01-04T02:27:24.59Z",6711982.8615,1040761.2001,-634333.5253,\n"2013-01-04T02:28:24.59Z",6654297.7468,1039770.1670,-1088829.5813,\n"2013-01-04T02:29:24.59Z",6566597.8832,1034089.4061,-1538414.4268,\n"2013-01-04T02:30:24.59Z",6449288.2909,1023746.1277,-1981062.3892,\n"2013-01-04T02:31:24.59Z",6302907.0165,1008788.5108,-2414780.3012,\n"2013-01-04T02:32:24.59Z",6128122.5531,989285.4604,-2837616.3983,\n"2013-01-04T02:33:24.59Z",5925730.6881,965326.2729,-3247669.0099,\n"2013-01-04T02:34:24.59Z",5696650.7922,937020.2126,-3643095.0076,\n"2013-01-04T02:35:24.59Z",5441921.5708,904496.0001,-4022117.9741,\n"2013-01-04T02:36:24.59Z",5162696.2973,867901.2158,-4383036.0598,\n"2013-01-04T02:37:24.59Z",4860237.5520,827401.6224,-4724229.4930,\n"2013-01-04T02:38:24.59Z",4535911.4906,783180.4078,-5044167.7145,\n"2013-01-04T02:39:24.59Z",4191181.6691,735437.3541,-5341416.1072,\n"2013-01-04T02:40:24.59Z",3827602.4535,684387.9342,-5614642.2920,\n"2013-01-04T02:41:24.59Z",3446812.0421,630262.3421,-5862621.9678,\n"2013-01-04T02:42:24.59Z",3050525.1336,573304.4605,-6084244.2693,\n"2013-01-04T02:43:24.59Z",2640525.2702,513770.7690,-6278516.6236,\n"2013-01-04T02:44:24.59Z",2218656.8909,451929.2005,-6444569.0858,\n"2013-01-04T02:45:24.59Z",1786817.1280,388057.9474,-6581658.1358,\n"2013-01-04T02:46:24.59Z",1346947.3816,322444.2254,-6689169.9234,\n"2013-01-04T02:47:24.59Z",901024.7079,255382.9981,-6766622.9466,\n"2013-01-04T02:48:24.59Z",451053.0569,187175.6694,-6813670.1552,\n"2013-01-04T02:49:24.59Z",-945.6030,118128.7483,-6830100.4694,\n"2013-01-04T02:50:24.59Z",-452940.2373,48552.4914,-6815839.7084,\n"2013-01-04T02:51:24.59Z",-902899.7370,-21240.4704,-6770950.9251,\n"2013-01-04T02:52:24.59Z",-1348801.9124,-90936.5160,-6695634.1457,\n"2013-01-04T02:53:24.59Z",-1788642.4508,-160222.4227,-6590225.5137,\n"2013-01-04T02:54:24.59Z",-2220443.8020,-228786.7539,-6455195.8434,\n"2013-01-04T02:55:24.59Z",-2642263.9537,-296321.2400,-6291148.5858,\n"2013-01-04T02:56:24.59Z",-3052205.0596,-362522.1472,-6098817.2169,\n"2013-01-04T02:57:24.59Z",-3448421.8847,-427091.6266,-5879062.0555,\n"2013-01-04T02:58:24.59Z",-3829130.0311,-489739.0408,-5632866.5255,\n"2013-01-04T02:59:24.59Z",-4192613.9095,-550182.2600,-5361332.8747,\n"2013-01-04T03:00:24.59Z",-4537234.4215,-608148.9227,-5065677.3670,\n"2013-01-04T03:01:24.59Z",-4861436.3202,-663377.6561,-4747224.9679,\n"2013-01-04T03:02:24.59Z",-5163755.2153,-715619.2502,-4407403.5431,\n"2013-01-04T03:03:24.59Z",-5442824.1921,-764637.7806,-4047737.5927,\n"2013-01-04T03:04:24.59Z",-5697380.0148,-810211.6753,-3669841.5475,\n"2013-01-04T03:05:24.59Z",-5926268.8852,-852134.7199,-3275412.6532,\n"2013-01-04T03:06:24.59Z",-6128451.7288,-890216.9973,-2866223.4723,\n"2013-01-04T03:07:24.59Z",-6303008.9855,-924285.7578,-2444114.0333,\n"2013-01-04T03:08:24.59Z",-6449144.8794,-954186.2137,-2010983.6621,\n"2013-01-04T03:09:24.59Z",-6566191.1467,-979782.2566,-1568782.5272,\n"2013-01-04T03:10:24.59Z",-6653610.2043,-1000957.0933,-1119502.9376,\n"2013-01-04T03:11:24.59Z",-6710997.7389,-1017613.7955,-665170.4274,\n"2013-01-04T03:12:24.59Z",-6738084.7049,-1029675.7630,-207834.6697\n ]\n    } }]', '1493298496.jpg', '"2017-04-25T21:38:25Z",3307661.5750,6132130.8736,-1262396.2559, "2017-04-', 'Two Line Element Set (TLE):\r\n1 28376U 04026A   17115.83501587 +.00000235 +00000‐0 +62074‐4 0  9993\r\n2 28376 098.1999 060.0959 0000909 093.8939 266.2363 14.57125131679652', '2017-04-27 11:08:16', '2017-04-27 11:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@spaceapp.com', '$2y$10$4j10xhREC3DCyEG3YvNBoOXMW63ucvLia8m.rr9yMN0iYgF0RMU3G', '1BQ7e1Ox5TmAfIp1QYrP1nfxnUtKOW3uGJO7m9N5Tb4TCLO8lVOZyufGn3fY', '2017-04-27 07:27:30', '2017-04-27 07:27:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sattalites`
--
ALTER TABLE `sattalites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sattalites`
--
ALTER TABLE `sattalites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
