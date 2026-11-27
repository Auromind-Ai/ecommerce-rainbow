-- MySQL dump 10.13  Distrib 9.5.0, for macos26.2 (arm64)
--
-- Host: 127.0.0.1    Database: ninico
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'MDtFTtyZ6gy9Su8e2yAsGStYQaaCv3Tv',1,'2024-04-25 00:58:39','2024-04-25 00:58:39','2024-04-25 00:58:39');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
INSERT INTO `admin_notifications` VALUES (1,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/44','Customer Vikram Aditya (+91 94444 88888) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-23 06:00:55','2026-11-23 06:00:55',''),(2,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/45','Customer Ananya &amp; Rohan (+91 98765 43210) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-23 06:20:26','2026-11-23 06:20:26',''),(3,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/46','Customer Priya &amp; Karthik (+91 99887 76655) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-23 07:05:48','2026-11-23 07:05:48',''),(4,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/47','Customer Deepak &amp; Sneha (+91 91234 56789) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-23 07:20:06','2026-11-23 07:20:06',''),(5,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/48','Customer gggg (786644543) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-23 07:22:36','2026-11-23 07:22:36',''),(6,'New Custom Statue Request','View Order','/admin/ecommerce/orders/edit/49','Customer gggg (987657435) requested a quote for Wedding &amp; Event Couple Statue',NULL,'2026-11-27 04:08:54','2026-11-27 04:08:54','');
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'New Modern & Stylist <br> Crafts','2028-04-25 07:58:45',NULL,'IYHICPADQD5X','sliders/banner-slider-01.jpg','/products',0,1,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(2,'Popular Energy with our <br> newest collection','2025-04-25 07:58:45',NULL,'R4YAV9FECJUS','sliders/banner-slider-02.jpg','/products',0,2,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(3,'Winter <br> Exclusive In','2025-04-25 07:58:45',NULL,'QPTCBJBOJOSY','banners/banner-offer-01.jpg','/products',0,3,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(4,'50% Offer','2025-04-25 07:58:45',NULL,'T2VFLDYYIJEH','banners/banner-offer-02.jpg','/products',0,4,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(5,'New Modern & Stylist <br> Crafts','2025-04-25 07:58:45',NULL,'JO7LLJHFH1RO','banners/banner-03-01.jpg','/products',0,5,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(6,'Lamp <br> Collections','2025-04-25 07:58:45',NULL,'L8GDJUBVD2TQ','banners/banner-03-02.jpg','/products',0,6,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(7,'Minimal Chair','2025-04-25 07:58:45',NULL,'PXJPAXLOCVRS','banners/banner-03-03.jpg','/products',0,7,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(8,'100% Fresh Product <br> Every Hour','2025-04-25 07:58:45',NULL,'EMRCINED6AX9','sliders/slider-05-banner-1.jpg','/products',0,8,'published','2024-04-25 00:58:45','2024-04-25 00:58:45',1,NULL,NULL,NULL,NULL),(9,'100% Fresh Product <br> Every Hour','2028-04-25 07:58:46',NULL,'JVMDAIB9HO2I','sliders/slider-05-banner-1.jpg','/products',0,9,'published','2024-04-25 00:58:46','2024-04-25 00:58:46',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',0,1,'Cecelia Smitham','info','2026-11-01 07:09:59','2026-11-01 07:09:59'),(2,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',0,1,'Cecelia Smitham','info','2026-11-01 11:48:57','2026-11-01 11:48:57'),(3,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Cecelia Smitham','info','2026-11-17 03:01:23','2026-11-17 03:01:23'),(4,1,'product','{\"name\":\"Wedding Event Couple Statue for Romantic Home Decor & Gifts\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"personalized-floral-glass-bottle\",\"slug_id\":\"322\",\"is_slug_editable\":\"1\",\"description\":\"<div class=\\\"woocommerce-product-details__short-description\\\" style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;background-color:rgb(248, 248, 248);box-sizing:border-box;clear:both;color:rgb(119, 119, 119);direction:ltr;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.4;margin:15px 0px 20px;orphans:2;overflow:hidden;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"><p style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;background-color:rgb(248, 248, 248);box-sizing:border-box;color:rgb(51, 51, 51);direction:ltr;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.6;margin:0px 0px 1.37931em;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-rendering:optimizelegibility;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\" data-start=\\\"273\\\" data-end=\\\"532\\\"><br>Capture the beauty of love and celebration with this elegant <strong style=\\\"-webkit-tap-highlight-color:transparent;box-sizing:border-box;font-weight:500 !important;line-height:inherit;\\\" data-start=\\\"361\\\" data-end=\\\"385\\\">Wedding\\/Event Couple<\\/strong> statue. Designed to reflect special moments, this charming <strong style=\\\"-webkit-tap-highlight-color:transparent;box-sizing:border-box;font-weight:500 !important;line-height:inherit;\\\" data-start=\\\"445\\\" data-end=\\\"469\\\">Wedding\\/Event Couple<\\/strong> piece adds a romantic and joyful touch to any decor setting.<\\/p><p style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;background-color:rgb(248, 248, 248);box-sizing:border-box;color:rgb(51, 51, 51);direction:ltr;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.6;margin:0px 0px 1.37931em;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-rendering:optimizelegibility;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\" data-start=\\\"534\\\" data-end=\\\"789\\\">Crafted with high-quality materials and detailed finishing, it is perfect for decorating homes, event spaces, or gifting during weddings, engagements, and anniversaries. Its timeless design blends effortlessly with both modern and traditional interiors.<\\/p><p style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;background-color:rgb(248, 248, 248);box-sizing:border-box;color:rgb(51, 51, 51);direction:ltr;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:1.6;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-rendering:optimizelegibility;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\" data-start=\\\"791\\\" data-end=\\\"933\\\" data-is-last-node=\\\"\\\" data-is-only-node=\\\"\\\">Available exclusively at <strong style=\\\"-webkit-tap-highlight-color:transparent;box-sizing:border-box;font-weight:500 !important;line-height:inherit;\\\" data-start=\\\"816\\\" data-end=\\\"842\\\">Rainbow statue gallery<\\/strong>, this decor piece is a meaningful choice for celebrating love and unforgettable occasions.<\\/p><\\/div><form class=\\\"cart\\\" style=\\\"-webkit-box-direction:normal;-webkit-box-orient:horizontal;-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;background-color:rgb(248, 248, 248);box-sizing:border-box;clear:both;color:rgb(51, 51, 51);direction:ltr;display:flex;flex-flow:wrap;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;gap:10px;letter-spacing:normal;margin:30px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\" action=\\\"https:\\/\\/rainbowstatuegallery.com\\/product\\/wedding-event-couple-statue-for-romantic-home-decor-gifts\\/\\\" method=\\\"post\\\" enctype=\\\"multipart\\/form-data\\\"><div class=\\\"wpo-options-container\\\" style=\\\"--wpo-description-font-size:0.85em;--wpo-group-name-font-size:1.3em;--wpo-input-background-color:#fff;--wpo-input-border-color-alt:#e1dfdf;--wpo-input-border-color:#eee;--wpo-input-border-radius:4px;--wpo-input-error-color:#c00;--wpo-input-focus-color:#089ec7;--wpo-input-font-size:15px;--wpo-input-success-color:#00c060;--wpo-option-gap-large:20px;--wpo-option-gap-small:5px;--wpo-option-gap:10px;--wpo-option-name-font-size:1.1em;--wpo-option-price-font-size:0.85em;-webkit-tap-highlight-color:transparent;box-sizing:border-box;direction:ltr;display:block;margin:0px;padding:0px 2px;width:577.484px;\\\"><div class=\\\"wpo-field wpo-field-file_upload wpo-field-required wpo-label-is-option-name\\\" style=\\\"-webkit-tap-highlight-color:transparent;box-sizing:border-box;direction:ltr;margin:0px 0px 20px;padding:0px;position:relative;text-align:left;\\\" data-type=\\\"file_upload\\\" data-group-id=\\\"1\\\" data-option-id=\\\"2\\\" data-clogic=\\\"false\\\" data-pricing=\\\"false\\\" data-option-price=\\\"0\\\">&nbsp;<\\/div><\\/div><\\/form><p><br>&nbsp;<\\/p>\",\"content\":\"<p><img class=\\\"image_resized emoji\\\" style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;aspect-ratio:150\\/150;background-attachment:initial !important;background-clip:initial !important;background-color:rgb(248, 248, 248);background-image:none !important;background-origin:initial !important;background-position:initial !important;background-repeat:initial !important;background-size:initial !important;border-bottom:medium none currentcolor;border-image:none !important;border-left-color:!important;border-right-color:!important;border-top:medium none currentcolor;box-shadow:none !important;box-sizing:border-box;color:transparent;display:inline !important;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;height:1em !important;letter-spacing:normal;margin:0px 0.07em !important;max-height:16px;max-width:100%;orphans:2;padding:0px !important;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:-0.1em !important;white-space:normal;widows:2;width:1em !important;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" draggable=\\\"false\\\" role=\\\"img\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"> Romantic wedding couple themed design<\\/span><\\/span><br><img class=\\\"image_resized emoji\\\" style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;aspect-ratio:150\\/150;background-attachment:initial !important;background-clip:initial !important;background-color:rgb(248, 248, 248);background-image:none !important;background-origin:initial !important;background-position:initial !important;background-repeat:initial !important;background-size:initial !important;border-bottom:medium none currentcolor;border-image:none !important;border-left-color:!important;border-right-color:!important;border-top:medium none currentcolor;box-shadow:none !important;box-sizing:border-box;color:transparent;display:inline !important;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;height:1em !important;letter-spacing:normal;margin:0px 0.07em !important;max-height:16px;max-width:100%;orphans:2;padding:0px !important;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:-0.1em !important;white-space:normal;widows:2;width:1em !important;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" draggable=\\\"false\\\" role=\\\"img\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"> Premium finish with fine detailing<\\/span><\\/span><br><img class=\\\"image_resized emoji\\\" style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;aspect-ratio:150\\/150;background-attachment:initial !important;background-clip:initial !important;background-color:rgb(248, 248, 248);background-image:none !important;background-origin:initial !important;background-position:initial !important;background-repeat:initial !important;background-size:initial !important;border-bottom:medium none currentcolor;border-image:none !important;border-left-color:!important;border-right-color:!important;border-top:medium none currentcolor;box-shadow:none !important;box-sizing:border-box;color:transparent;display:inline !important;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;height:1em !important;letter-spacing:normal;margin:0px 0.07em !important;max-height:16px;max-width:100%;orphans:2;padding:0px !important;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:-0.1em !important;white-space:normal;widows:2;width:1em !important;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" draggable=\\\"false\\\" role=\\\"img\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"> Perfect for weddings and special events<\\/span><\\/span><br><img class=\\\"image_resized emoji\\\" style=\\\"-webkit-tap-highlight-color:transparent;-webkit-text-stroke-width:0px;aspect-ratio:150\\/150;background-attachment:initial !important;background-clip:initial !important;background-color:rgb(248, 248, 248);background-image:none !important;background-origin:initial !important;background-position:initial !important;background-repeat:initial !important;background-size:initial !important;border-bottom:medium none currentcolor;border-image:none !important;border-left-color:!important;border-right-color:!important;border-top:medium none currentcolor;box-shadow:none !important;box-sizing:border-box;color:transparent;display:inline !important;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;height:1em !important;letter-spacing:normal;margin:0px 0.07em !important;max-height:16px;max-width:100%;orphans:2;padding:0px !important;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:-0.1em !important;white-space:normal;widows:2;width:1em !important;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" draggable=\\\"false\\\" role=\\\"img\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"> Ideal gift for couples and occasions<\\/span><\\/span><\\/p>\",\"images\":[null],\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"TSE-GLB-399\",\"price\":\"2499\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"cost_per_item\":null,\"product_id\":\"1\",\"barcode\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"50\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":null,\"length\":null,\"wide\":null,\"height\":null,\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"2\",\"3\",\"4\"],\"brand_id\":null,\"image\":\"couple-statue-garden.jpg\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,1,'Wedding Event Couple Statue for Romantic Home Decor & Gifts','primary','2026-11-17 03:11:24','2026-11-17 03:11:24'),(5,1,'announcement','{\"ids\":[\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"ArchiElite\\\\Announcement\\\\Tables\\\\AnnouncementTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,1,'Announcement 1','danger','2026-11-17 04:07:52','2026-11-17 04:07:52'),(6,1,'announcement','{\"ids\":[\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"ArchiElite\\\\Announcement\\\\Tables\\\\AnnouncementTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,2,'Announcement 2','danger','2026-11-17 04:07:52','2026-11-17 04:07:52'),(7,1,'announcement','{\"ids\":[\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"ArchiElite\\\\Announcement\\\\Tables\\\\AnnouncementTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,3,'Announcement 3','danger','2026-11-17 04:07:52','2026-11-17 04:07:52'),(8,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Cecelia Smitham','info','2026-11-17 08:27:17','2026-11-17 08:27:17'),(9,1,'product','{\"name\":\"Wedding & Event Couple Statue\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"personalized-floral-glass-bottle\",\"slug_id\":\"322\",\"is_slug_editable\":\"1\",\"description\":\"<div class=\\\"woocommerce-product-details__short-description\\\" style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;line-height:1.4;margin:15px 0px 20px;padding:0px;word-spacing:0px;\\\"><p style=\\\"background-color:rgb(248,248,248);color:rgb(51,51,51);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;line-height:1.6;margin:0px 0px 1.37931em;padding:0px;word-spacing:0px;\\\"><br>Capture the beauty of love and celebration with this elegant <strong style=\\\"font-weight:500;line-height:inherit;\\\">Wedding\\/Event Couple<\\/strong> statue. Designed to reflect special moments, this charming <strong style=\\\"font-weight:500;line-height:inherit;\\\">Wedding\\/Event Couple<\\/strong> piece adds a romantic and joyful touch to any decor setting.<\\/p><p style=\\\"background-color:rgb(248,248,248);color:rgb(51,51,51);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;line-height:1.6;margin:0px 0px 1.37931em;padding:0px;word-spacing:0px;\\\">Crafted with high-quality materials and detailed finishing, it is perfect for decorating homes, event spaces, or gifting during weddings, engagements, and anniversaries. Its timeless design blends effortlessly with both modern and traditional interiors.<\\/p><p style=\\\"background-color:rgb(248,248,248);color:rgb(51,51,51);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;line-height:1.6;margin:0px;padding:0px;word-spacing:0px;\\\">Available exclusively at <strong style=\\\"font-weight:500;line-height:inherit;\\\">Rainbow statue gallery<\\/strong>, this decor piece is a meaningful choice for celebrating love and unforgettable occasions.<\\/p><\\/div><div class=\\\"wpo-options-container\\\" style=\\\"margin:0px;padding:0px 2px;width:577.484px;\\\"><div class=\\\"wpo-field wpo-field-file_upload wpo-field-required wpo-label-is-option-name\\\" style=\\\"margin:0px 0px 20px;padding:0px;text-align:left;\\\">&nbsp;<\\/div><\\/div><p><br>&nbsp;<\\/p>\",\"content\":\"<p><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Romantic wedding couple themed design<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Premium finish with fine detailing<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Perfect for weddings and special events<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Ideal gift for couples and occasions<\\/span> &nbsp;<\\/span><\\/p>\",\"images\":[null],\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"TSE-GLB-399\",\"price\":\"2999\",\"sale_price\":\"2499\",\"start_date\":null,\"end_date\":null,\"cost_per_item\":null,\"product_id\":\"1\",\"barcode\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"50\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"on_backorder\",\"weight\":null,\"length\":null,\"wide\":null,\"height\":null,\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"2\"],\"brand_id\":null,\"image\":\"couple-statue-garden.jpg\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,1,'Wedding & Event Couple Statue','primary','2026-11-17 08:28:53','2026-11-17 08:28:53'),(10,1,'product','{\"name\":\"Wedding & Event Couple Statue\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"personalized-floral-glass-bottle\",\"slug_id\":\"322\",\"is_slug_editable\":\"1\",\"description\":\"<p>A charming Wedding\\/Event Couple piece that captures the beauty of love and celebration. Crafted with high-quality materials and detailed finishing, it adds a romantic and joyful touch to any decor setting.<\\/p>\",\"content\":\"<p><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Romantic wedding couple themed design<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Premium finish with fine detailing<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Perfect for weddings and special events<\\/span> &nbsp;<\\/span> &nbsp;<br><img class=\\\"image_resized emoji\\\" style=\\\"aspect-ratio:150\\/150;background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/17.0.2\\/svg\\/2705.svg\\\" alt=\\\"\\u2705\\\" width=\\\"150\\\" height=\\\"150\\\"><span style=\\\"background-color:rgb(248,248,248);color:rgb(119,119,119);\\\"><span style=\\\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\\\"> Ideal gift for couples and occasions<\\/span> &nbsp;<\\/span><\\/p>\",\"images\":[null],\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"TSE-GLB-399\",\"price\":\"2999\",\"sale_price\":\"2499\",\"start_date\":null,\"end_date\":null,\"cost_per_item\":null,\"product_id\":\"1\",\"barcode\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"50\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"on_backorder\",\"weight\":null,\"length\":null,\"wide\":null,\"height\":null,\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"1\",\"2\"],\"brand_id\":null,\"image\":\"couple-statue-garden.jpg\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,1,'Wedding & Event Couple Statue','primary','2026-11-17 09:13:02','2026-11-17 09:13:02'),(11,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Cecelia Smitham','info','2026-11-18 03:16:56','2026-11-18 03:16:56'),(12,1,'form','{\"_method\":\"PUT\",\"first_name\":\"rainbow\",\"last_name\":\"gallerey\",\"email\":\"ylangworth@rowe.info\"}','updated','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,1,'Rainbow Gallerey','primary','2026-11-18 03:25:44','2026-11-18 03:25:44'),(13,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-19 03:09:24','2026-11-19 03:09:24'),(14,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/158.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 06:55:25','2026-11-23 06:55:25'),(15,1,'to the system',NULL,'logged in','Symfony','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 06:58:09','2026-11-23 06:58:09'),(16,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:00:58','2026-11-23 07:00:58'),(17,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:02:01','2026-11-23 07:02:01'),(18,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:04:10','2026-11-23 07:04:10'),(19,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:05:49','2026-11-23 07:05:49'),(20,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:06:16','2026-11-23 07:06:16'),(21,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:20:07','2026-11-23 07:20:07'),(22,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/157.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:35:29','2026-11-23 07:35:29'),(23,1,'of the system','[]','logged out','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/158.0.0.0 Safari/537.36','127.0.0.1',1,1,'Rainbow Gallerey','info','2026-11-23 07:36:39','2026-11-23 07:36:39'),(24,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/158.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-23 07:36:46','2026-11-23 07:36:46'),(25,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/158.0.0.0 Safari/537.36','127.0.0.1',0,1,'Rainbow Gallerey','info','2026-11-27 04:06:50','2026-11-27 04:06:50');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Id aperiam eligendi inventore. Ut eum quisquam quia sunt nesciunt. Et sapiente ut et enim aut suscipit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(2,'Fashion',0,'Et animi ipsam sint nam. Iure non aut repellat molestias architecto. Optio tempora ullam aliquam itaque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(3,'Electronic',0,'Cupiditate quia quis ullam. Minima facere tenetur quia provident. Eveniet eius at consequuntur dolores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(4,'Commercial',0,'Ullam mollitia nemo voluptates veniam et et. Quas deserunt et architecto. Modi optio quia ipsum officiis occaecati. Voluptates est ipsam aspernatur atque libero sequi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-25 00:58:40','2024-04-25 00:58:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_1','2026-11-01 07:10:02','2026-11-01 07:10:02'),(2,'widget_total_2','2026-11-01 07:10:02','2026-11-01 07:10:02'),(3,'widget_total_3','2026-11-01 07:10:02','2026-11-01 07:10:02'),(4,'widget_total_4','2026-11-01 07:10:02','2026-11-01 07:10:02'),(5,'widget_total_themes','2026-11-01 07:10:02','2026-11-01 07:10:02'),(6,'widget_total_users','2026-11-01 07:10:02','2026-11-01 07:10:02'),(7,'widget_total_plugins','2026-11-01 07:10:02','2026-11-01 07:10:02'),(8,'widget_total_pages','2026-11-01 07:10:02','2026-11-01 07:10:02'),(9,'widget_analytics_general','2026-11-01 07:10:02','2026-11-01 07:10:02'),(10,'widget_analytics_page','2026-11-01 07:10:02','2026-11-01 07:10:02'),(11,'widget_analytics_browser','2026-11-01 07:10:02','2026-11-01 07:10:02'),(12,'widget_analytics_referrer','2026-11-01 07:10:02','2026-11-01 07:10:02'),(13,'widget_posts_recent','2026-11-01 07:10:02','2026-11-01 07:10:02'),(14,'widget_audit_logs','2026-11-01 07:10:02','2026-11-01 07:10:02'),(15,'widget_ecommerce_report_general','2026-11-01 07:10:02','2026-11-01 07:10:02');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/brand-01.png','published',0,0,'2024-04-25 00:58:46','2024-04-25 00:58:46'),(2,'Hand crafted',NULL,NULL,'brands/brand-02.png','published',1,0,'2024-04-25 00:58:46','2024-04-25 00:58:46'),(3,'Mestonix',NULL,NULL,'brands/brand-03.png','published',2,0,'2024-04-25 00:58:46','2024-04-25 00:58:46'),(4,'Sunshine',NULL,NULL,'brands/brand-04.png','published',3,0,'2024-04-25 00:58:46','2024-04-25 00:58:46'),(5,'Pure',NULL,NULL,'brands/brand-05.png','published',4,1,'2024-04-25 00:58:46','2024-04-25 00:58:46'),(6,'Anfold',NULL,NULL,'brands/brand-06.png','published',5,1,'2024-04-25 00:58:46','2024-04-25 00:58:46');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'INR','₹',1,0,0,1,1,'2024-04-25 00:58:39','2024-04-25 00:58:39');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jadon Hilpert II','customer@botble.com','+15017097960','MA','Louisiana','East Chauncey','345 Kiehn Ridge Suite 140',1,1,'2024-04-25 00:59:03','2024-04-25 00:59:03','96697-0880'),(2,'Jadon Hilpert II','customer@botble.com','+16314030733','IR','Maryland','Baileemouth','4794 Watsica Groves Apt. 084',1,0,'2024-04-25 00:59:03','2024-04-25 00:59:03','82188'),(3,'Janice Beahan','john.smith@botble.com','+19407344592','MD','Hawaii','South Zariafurt','434 Towne Road',2,1,'2024-04-25 00:59:03','2024-04-25 00:59:03','81715'),(4,'Janice Beahan','john.smith@botble.com','+16619406403','MH','Tennessee','Kosschester','8265 Hattie Key Suite 683',2,0,'2024-04-25 00:59:03','2024-04-25 00:59:03','65285'),(5,'Maggie Olson II','sallie14@example.org','+18578474872','MU','Connecticut','Lake Johannachester','1753 Jaylon Keys',3,1,'2024-04-25 00:59:04','2024-04-25 00:59:04','17067-7148'),(6,'Glen Rau DVM','mgraham@example.net','+13047193158','PG','Georgia','North Danmouth','84722 Becker Well Suite 919',4,1,'2024-04-25 00:59:04','2024-04-25 00:59:04','25751-1123'),(7,'Karelle Leannon I','ed.kertzmann@example.com','+15632611940','MS','Nebraska','West Hortense','129 Kirstin Well',5,1,'2024-04-25 00:59:04','2024-04-25 00:59:04','83207'),(8,'Abbigail Nicolas','ryley.rice@example.org','+14587459392','KG','California','Jaydeburgh','387 Hintz Way Suite 460',6,1,'2024-04-25 00:59:04','2024-04-25 00:59:04','55669-8228'),(9,'Adeline Fritsch','rolfson.danielle@example.net','+14422567374','PM','West Virginia','Starkville','20710 Skylar Pike Suite 031',7,1,'2024-04-25 00:59:05','2024-04-25 00:59:05','61366-4548'),(10,'Dr. Jacynthe Cole','douglas.abdullah@example.net','+16626548388','GL','Georgia','Schmelermouth','13433 Casandra Centers Apt. 300',8,1,'2024-04-25 00:59:05','2024-04-25 00:59:05','68405-9892'),(11,'Kurt Ferry V','mayer.laurie@example.org','+12608343760','NA','Ohio','East Faustoberg','8327 Merlin Way Apt. 572',9,1,'2024-04-25 00:59:05','2024-04-25 00:59:05','49685'),(12,'Vesta Glover DVM','ugottlieb@example.net','+19718640142','ZW','Wyoming','West Lemuel','2539 Llewellyn Fords',10,1,'2024-04-25 00:59:05','2024-04-25 00:59:05','40635-6412');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jadon Hilpert II','customer@botble.com','$2y$12$DddF3M4RXQpH7/jopUT/ZuODCpV6.4uZXtaZPD8481IOgxe8Fo2M2','customers/5.jpg','1980-04-03','+16084931010',NULL,'2024-04-25 00:59:03','2024-04-25 00:59:03','2024-04-25 07:59:03',NULL,'activated',NULL),(2,'Janice Beahan','john.smith@botble.com','$2y$12$qxvBxsIw5Ycpfd2el43kfeShFaCudKZv4jlRkk2UMse3gHZ0zuMfa','customers/2.jpg','1974-04-09','+18208234617',NULL,'2024-04-25 00:59:03','2024-04-25 00:59:03','2024-04-25 07:59:03',NULL,'activated',NULL),(3,'Maggie Olson II','sallie14@example.org','$2y$12$e3O3gFo..jy60jtJNxbRtuopIIO50rG5OsfxYH68uqx24sLVltoS.','customers/1.jpg','1989-04-03','+15209167619',NULL,'2024-04-25 00:59:04','2024-04-25 00:59:04','2024-04-25 07:59:04',NULL,'activated',NULL),(4,'Glen Rau DVM','mgraham@example.net','$2y$12$/89LkG/T88OGAtUcuKU2F.I4TTtNxUW7olmeu/uhRP1fp7zaGCeBq','customers/2.jpg','1980-04-04','+15716665195',NULL,'2024-04-25 00:59:04','2024-04-25 00:59:04','2024-04-25 07:59:04',NULL,'activated',NULL),(5,'Karelle Leannon I','ed.kertzmann@example.com','$2y$12$8NhgOAoXfVzy4ZPAP6lNiuE.sR/W6JVyPKL4iiIgaMPdEnh6Is6Re','customers/3.jpg','1986-04-06','+19543259822',NULL,'2024-04-25 00:59:04','2024-04-25 00:59:04','2024-04-25 07:59:04',NULL,'activated',NULL),(6,'Abbigail Nicolas','ryley.rice@example.org','$2y$12$OTCOtcJ1G1q1tK8bN6cI5uZQN/hcj4q132mp2QBW0Ar9jwzbQJwiK','customers/4.jpg','1981-04-03','+18728276311',NULL,'2024-04-25 00:59:04','2024-04-25 00:59:04','2024-04-25 07:59:04',NULL,'activated',NULL),(7,'Adeline Fritsch','rolfson.danielle@example.net','$2y$12$weaXc.Y3KHQA6KtflEjKmuNh2djoRFw55w52fmU2iUUbxpu2ADfC6','customers/5.jpg','1989-04-01','+18599203169',NULL,'2024-04-25 00:59:05','2024-04-25 00:59:05','2024-04-25 07:59:05',NULL,'activated',NULL),(8,'Dr. Jacynthe Cole','douglas.abdullah@example.net','$2y$12$VBRyRxk81pNZcncPAjW7veSAR1tETzcy52ai42hbOsNSRXTVX2vP6','customers/6.jpg','1990-04-22','+19542033830',NULL,'2024-04-25 00:59:05','2024-04-25 00:59:05','2024-04-25 07:59:05',NULL,'activated',NULL),(9,'Kurt Ferry V','mayer.laurie@example.org','$2y$12$/d/SuDaw/K1ijpxrwkeB3.F1l2lOsU6C0lKUHFXHmUqz.G0o5V05i','customers/7.jpg','1991-03-27','+16127917641',NULL,'2024-04-25 00:59:05','2024-04-25 00:59:05','2024-04-25 07:59:05',NULL,'activated',NULL),(10,'Vesta Glover DVM','ugottlieb@example.net','$2y$12$wZOGOOAfkNlsQIYslkgAkudXjk6vTDB.o.wmejxtf1quXUPcZek26','customers/8.jpg','1982-04-01','+18172606833',NULL,'2024-04-25 00:59:05','2024-04-25 00:59:05','2024-04-25 07:59:05',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-25 00:00:00','published','2024-04-25 00:59:06','2024-04-25 00:59:06'),(2,'Cosmetics Sale','2024-05-25 00:00:00','published','2024-04-25 00:59:06','2024-04-25 00:59:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(1,2,'2 Year',10,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(1,3,'3 Year',20,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,4,'4GB',0,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,5,'8GB',10,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,6,'16GB',20,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,7,'Core i5',0,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,8,'Core i7',10,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,9,'Core i9',20,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,10,'128GB',0,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,11,'256GB',10,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,12,'512GB',20,9999,0,'2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',1,'Wedding &amp; Event Couple Statue',NULL,'couple-statue-garden.jpg',1,2499.00,2499.00,0.00,0.00,2499.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 98401 23456\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/localhost:8000\\/storage\\/custom-orders\\/custom-statue-TzNlQDHeCX-1795433226.jpg\"},{\"key\":\"Customer Note\",\"value\":\"8-inch couple statue with gold rim wooden base. Please call in evening.\"}]}','2026-11-23 05:57:06','2026-11-23 05:57:06'),(2,2,'Botble\\Ecommerce\\Models\\Product',1,'Wedding &amp; Event Couple Statue',NULL,'couple-statue-garden.jpg',1,2499.00,2499.00,0.00,0.00,2499.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 98401 23456\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-eWK4wMkYRq-1795433349.jpg\"},{\"key\":\"Customer Note\",\"value\":\"8-inch couple statue with gold rim wooden base. Please call in evening.\"}]}','2026-11-23 05:59:09','2026-11-23 05:59:09');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',42,'INV-1','Arun Kumar','',NULL,'inquiry-42@rainbowstatue.com','+91 98401 23456','Custom Statue Request - Phone Consultation, Direct Consultation, Tamil Nadu, IN',NULL,2499.00,0.00,0.00,0.00,'custom_statue_quote','',NULL,NULL,2499.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Arun Kumar\nPhone: +91 98401 23456\nPhoto: http://localhost:8000/storage/custom-orders/custom-statue-TzNlQDHeCX-1795433226.jpg\nNotes: 8-inch couple statue with gold rim wooden base. Please call in evening.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,'',NULL,'2026-11-23 05:57:06','2026-11-23 05:57:06'),(2,'Botble\\Ecommerce\\Models\\Order',43,'INV-2','Arun Kumar','',NULL,'inquiry-43@rainbowstatue.com','+91 98401 23456','Custom Statue Request - Phone Consultation, Direct Consultation, Tamil Nadu, IN',NULL,2499.00,0.00,0.00,0.00,'custom_statue_quote','',NULL,NULL,2499.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Arun Kumar\nPhone: +91 98401 23456\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-eWK4wMkYRq-1795433349.jpg\nNotes: 8-inch couple statue with gold rim wooden base. Please call in evening.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,'',NULL,'2026-11-23 05:59:09','2026-11-23 05:59:09');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (2,'Arun Kumar','+91 98401 23456','inquiry-42@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',42,NULL,'shipping_address'),(3,'Arun Kumar','+91 98401 23456','inquiry-43@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',43,NULL,'shipping_address'),(4,'Vikram Aditya','+91 94444 88888','inquiry-44@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',44,NULL,'shipping_address'),(5,'Ananya & Rohan','+91 98765 43210','inquiry-45@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',45,NULL,'shipping_address'),(6,'Priya & Karthik','+91 99887 76655','inquiry-46@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',46,NULL,'shipping_address'),(7,'Deepak & Sneha','+91 91234 56789','inquiry-47@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',47,NULL,'shipping_address'),(8,'gggg','786644543','inquiry-48@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',48,NULL,'shipping_address'),(9,'gggg','987657435','inquiry-49@rainbowstatue.com','IN','Tamil Nadu','Direct Consultation','Custom Statue Request - Phone Consultation',49,NULL,'shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (2,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 98401 23456.',NULL,42,NULL,'2026-11-23 05:57:06','2026-11-23 05:57:06'),(3,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 98401 23456.',NULL,43,NULL,'2026-11-23 05:59:09','2026-11-23 05:59:09'),(4,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 94444 88888.',NULL,44,NULL,'2026-11-23 06:00:55','2026-11-23 06:00:55'),(5,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 98765 43210.',NULL,45,NULL,'2026-11-23 06:20:26','2026-11-23 06:20:26'),(6,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 99887 76655.',NULL,46,NULL,'2026-11-23 07:05:48','2026-11-23 07:05:48'),(7,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: +91 91234 56789.',NULL,47,NULL,'2026-11-23 07:20:06','2026-11-23 07:20:06'),(8,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: 786644543.',NULL,48,NULL,'2026-11-23 07:22:36','2026-11-23 07:22:36'),(9,'create_order_from_payment_page','Custom statue order request submitted directly from product page. Customer Phone: 987657435.',NULL,49,NULL,'2026-11-27 04:08:54','2026-11-27 04:08:54');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,399.00,0.00,'{\"image\":\"products\\/the-self-edit-personalized-glass-bottle-square.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Personalized Floral Glass Bottle','products/the-self-edit-personalized-glass-bottle-square.jpg',0.01,0,'2026-11-01 08:31:55','2026-11-01 08:31:55','physical',0,NULL),(2,2,1,399.00,0.00,'{\"image\":\"products\\/the-self-edit-personalized-glass-bottle-square.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Personalized Floral Glass Bottle','products/the-self-edit-personalized-glass-bottle-square.jpg',0.01,0,'2026-11-01 09:03:38','2026-11-01 09:03:38','physical',0,NULL),(3,3,1,399.00,0.00,'{\"image\":\"products\\/the-self-edit-personalized-glass-bottle-square.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Personalized Floral Glass Bottle','products/the-self-edit-personalized-glass-bottle-square.jpg',0.01,0,'2026-11-01 09:16:56','2026-11-01 09:16:56','physical',0,NULL),(4,4,1,399.00,0.00,'{\"image\":\"products\\/the-self-edit-personalized-glass-bottle-square.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Personalized Floral Glass Bottle','products/the-self-edit-personalized-glass-bottle-square.jpg',0.01,0,'2026-11-01 11:50:37','2026-11-01 11:50:37','physical',0,NULL),(5,5,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding Event Couple Statue for Romantic Home Decor &amp; Gifts','couple-statue-garden.jpg',0.01,0,'2026-11-17 03:34:37','2026-11-17 03:34:37','physical',0,NULL),(6,6,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 04:03:13','2026-11-17 04:03:13','physical',0,NULL),(7,7,2,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 09:00:30','2026-11-17 09:00:30','physical',0,NULL),(8,8,2,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 09:53:36','2026-11-17 09:53:36','physical',0,NULL),(9,9,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:43:56','2026-11-17 10:43:56','physical',0,NULL),(10,10,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:44:23','2026-11-17 10:44:23','physical',0,NULL),(11,11,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:55:48','2026-11-17 10:55:48','physical',0,NULL),(12,12,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:56:30','2026-11-17 10:56:30','physical',0,NULL),(13,13,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:57:17','2026-11-17 10:57:17','physical',0,NULL),(14,14,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:57:34','2026-11-17 10:57:34','physical',0,NULL),(15,15,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 10:57:55','2026-11-17 10:57:55','physical',0,NULL),(16,16,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:01:23','2026-11-17 11:01:23','physical',0,NULL),(17,17,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:02:17','2026-11-17 11:02:17','physical',0,NULL),(18,18,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:04:34','2026-11-17 11:04:34','physical',0,NULL),(19,19,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:06:14','2026-11-17 11:06:14','physical',0,NULL),(20,20,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:07:03','2026-11-17 11:07:03','physical',0,NULL),(21,21,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:07:39','2026-11-17 11:07:39','physical',0,NULL),(22,22,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:09:22','2026-11-17 11:09:22','physical',0,NULL),(23,23,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:16:12','2026-11-17 11:16:12','physical',0,NULL),(24,24,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:17:40','2026-11-17 11:17:40','physical',0,NULL),(25,25,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:26:33','2026-11-17 11:26:33','physical',0,NULL),(26,26,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:27:17','2026-11-17 11:27:17','physical',0,NULL),(27,27,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:27:46','2026-11-17 11:27:46','physical',0,NULL),(28,28,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:28:07','2026-11-17 11:28:07','physical',0,NULL),(29,29,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:30:20','2026-11-17 11:30:20','physical',0,NULL),(30,30,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:40:46','2026-11-17 11:40:46','physical',0,NULL),(31,31,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:41:53','2026-11-17 11:41:53','physical',0,NULL),(32,32,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:45:47','2026-11-17 11:45:47','physical',0,NULL),(33,33,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:51:40','2026-11-17 11:51:40','physical',0,NULL),(34,34,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-17 11:55:05','2026-11-17 11:55:05','physical',0,NULL),(35,35,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 03:15:53','2026-11-18 03:15:53','physical',0,NULL),(36,36,2,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 06:24:04','2026-11-18 06:24:04','physical',0,NULL),(37,37,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 06:25:28','2026-11-18 06:25:28','physical',0,NULL),(38,38,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 06:42:20','2026-11-18 06:42:20','physical',0,NULL),(39,39,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 06:50:14','2026-11-18 06:50:14','physical',0,NULL),(40,40,1,2499.00,0.00,'{\"image\":\"couple-statue-garden.jpg\",\"attributes\":\"\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"TSE-GLB-399\",\"weight\":null}','[]',1,'Wedding &amp; Event Couple Statue','couple-statue-garden.jpg',0.01,0,'2026-11-18 06:52:16','2026-11-18 06:52:16','physical',0,NULL),(42,42,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 98401 23456\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/localhost:8000\\/storage\\/custom-orders\\/custom-statue-TzNlQDHeCX-1795433226.jpg\"},{\"key\":\"Customer Note\",\"value\":\"8-inch couple statue with gold rim wooden base. Please call in evening.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 05:57:06','2026-11-23 05:57:06','physical',0,NULL),(43,43,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 98401 23456\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-eWK4wMkYRq-1795433349.jpg\"},{\"key\":\"Customer Note\",\"value\":\"8-inch couple statue with gold rim wooden base. Please call in evening.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 05:59:09','2026-11-23 05:59:09','physical',0,NULL),(44,44,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 94444 88888\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-Wf1g3Q6je7-1795433455.jpg\"},{\"key\":\"Customer Note\",\"value\":\"Need 7-inch couple statue with anniversary date engraved on base.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 06:00:55','2026-11-23 06:00:55','physical',0,NULL),(45,45,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 98765 43210\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-Y1DRItQSXd-1795434626.jpg\"},{\"key\":\"Customer Note\",\"value\":\"Preferred 8-inch height on premium teak wood base with anniversary date \'24-11-2024\'.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 06:20:26','2026-11-23 06:20:26','physical',0,NULL),(46,46,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 99887 76655\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-Ja840jguo2-1795437348.jpg\"},{\"key\":\"Customer Note\",\"value\":\"Looking for 10-inch marble finish statue with brass nameplate.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 07:05:48','2026-11-23 07:05:48','physical',0,NULL),(47,47,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"+91 91234 56789\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/localhost:8000\\/storage\\/custom-orders\\/custom-statue-6HYrDvgy2G-1795438206.jpg\"},{\"key\":\"Customer Note\",\"value\":\"Tested with 3.5MB high-resolution camera photo.\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 07:20:06','2026-11-23 07:20:06','physical',0,NULL),(48,48,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"786644543\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/custom-orders\\/custom-statue-LfT9IycqRS-1795438356.jpg\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-23 07:22:36','2026-11-23 07:22:36','physical',0,NULL),(49,49,1,2499.00,0.00,'{\"extras\":[{\"key\":\"Customer Phone\",\"value\":\"987657435\"},{\"key\":\"Pricing Status\",\"value\":\"Admin calls to decide pricing\"},{\"key\":\"Uploaded Photo\",\"value\":\"http:\\/\\/localhost:8000\\/storage\\/custom-orders\\/custom-statue-og0NooeFUu-1795772333.jpg\"}]}',NULL,1,'Wedding & Event Couple Statue','couple-statue-garden.jpg',0.00,0,'2026-11-27 04:08:54','2026-11-27 04:08:54','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
INSERT INTO `ec_order_referrals` VALUES (1,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-11-01 08:31:55','2026-11-01 08:31:55'),(2,'2405:201:e04e:70ae:e8ad:7fb4:1bc3:69d9','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2026-11-01 09:03:38','2026-11-01 09:03:38'),(3,'49.37.215.153','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2026-11-01 09:16:56','2026-11-01 09:16:56'),(4,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2026-11-01 11:50:37','2026-11-01 11:50:37'),(5,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2026-11-17 03:34:37','2026-11-17 03:34:37'),(6,'49.37.215.153','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'2026-11-17 04:03:13','2026-11-17 04:03:13'),(7,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2026-11-17 09:00:30','2026-11-17 09:00:30'),(8,'2409:40f4:3a:f617:8000::','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,'2026-11-17 09:53:36','2026-11-17 09:53:36'),(9,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'2026-11-17 10:43:56','2026-11-17 10:43:56'),(10,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'2026-11-17 10:44:23','2026-11-17 10:44:23'),(11,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,'2026-11-17 10:55:48','2026-11-17 10:55:48'),(12,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,'2026-11-17 10:56:30','2026-11-17 10:56:30'),(13,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,'2026-11-17 10:57:17','2026-11-17 10:57:17'),(14,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,'2026-11-17 10:57:34','2026-11-17 10:57:34'),(15,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,'2026-11-17 10:57:55','2026-11-17 10:57:55'),(16,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,'2026-11-17 11:01:23','2026-11-17 11:01:23'),(17,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,'2026-11-17 11:02:17','2026-11-17 11:02:17'),(18,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,'2026-11-17 11:04:34','2026-11-17 11:04:34'),(19,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,'2026-11-17 11:06:14','2026-11-17 11:06:14'),(20,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'2026-11-17 11:07:03','2026-11-17 11:07:03'),(21,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,'2026-11-17 11:07:39','2026-11-17 11:07:39'),(22,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,'2026-11-17 11:09:22','2026-11-17 11:09:22'),(23,'49.37.215.153','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,'2026-11-17 11:16:12','2026-11-17 11:16:12'),(24,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,'2026-11-17 11:17:40','2026-11-17 11:17:40'),(25,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,'2026-11-17 11:26:33','2026-11-17 11:26:33'),(26,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,'2026-11-17 11:27:17','2026-11-17 11:27:17'),(27,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,'2026-11-17 11:27:46','2026-11-17 11:27:46'),(28,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,'2026-11-17 11:28:07','2026-11-17 11:28:07'),(29,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,'2026-11-17 11:30:20','2026-11-17 11:30:20'),(30,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,'2026-11-17 11:40:46','2026-11-17 11:40:46'),(31,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,'2026-11-17 11:41:53','2026-11-17 11:41:53'),(32,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,'2026-11-17 11:45:47','2026-11-17 11:45:47'),(33,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,'2026-11-17 11:51:40','2026-11-17 11:51:40'),(34,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,'2026-11-17 11:55:05','2026-11-17 11:55:05'),(35,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,'2026-11-18 03:15:53','2026-11-18 03:15:53'),(36,'2409:40f4:3a:f617:8000::','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,'2026-11-18 06:24:04','2026-11-18 06:24:04'),(37,'49.37.215.153','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,'2026-11-18 06:25:28','2026-11-18 06:25:28'),(38,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,'2026-11-18 06:42:20','2026-11-18 06:42:20'),(39,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,'2026-11-18 06:50:14','2026-11-18 06:50:14'),(40,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,'2026-11-18 06:52:16','2026-11-18 06:52:16');
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',0,NULL,'default','pending',399.00,0.00,0.00,NULL,NULL,0.00,399.00,0,NULL,0,NULL,NULL,NULL,'0bfcf42be86a0a01e0c7665ea532001f',NULL,'2026-11-01 08:31:55','2026-11-01 08:31:55',NULL),(2,'#10000002',0,NULL,'default','pending',399.00,0.00,0.00,NULL,NULL,0.00,399.00,0,NULL,0,NULL,NULL,NULL,'e432c7f726bf45fd3efb08ae456e38cd',NULL,'2026-11-01 09:03:38','2026-11-01 09:03:38',NULL),(3,'#10000003',0,NULL,'default','pending',399.00,0.00,0.00,NULL,NULL,0.00,399.00,0,NULL,0,NULL,NULL,NULL,'226448def56789a56e175118d8fcc157',NULL,'2026-11-01 09:16:56','2026-11-01 09:16:56',NULL),(4,'#10000004',0,NULL,'default','pending',399.00,0.00,0.00,NULL,NULL,0.00,399.00,0,NULL,0,NULL,NULL,NULL,'05b417a6490c74c956d9ffad341fd9e8',NULL,'2026-11-01 11:50:37','2026-11-01 11:50:37',NULL),(5,'#10000005',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'d14aabf96f747d3f6b3eebf5295668f1',NULL,'2026-11-17 03:34:37','2026-11-17 03:34:37',NULL),(6,'#10000006',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'98c5fa9c086627eba945f796514999d9',NULL,'2026-11-17 04:03:13','2026-11-17 04:03:13',NULL),(7,'#10000007',0,NULL,'default','pending',4998.00,0.00,0.00,NULL,NULL,0.00,4998.00,0,NULL,0,NULL,NULL,NULL,'a49da15588ed537fc8312bbff68e3769',NULL,'2026-11-17 09:00:30','2026-11-17 09:00:30',NULL),(8,'#10000008',0,NULL,'default','pending',4998.00,0.00,0.00,NULL,NULL,0.00,4998.00,0,NULL,0,NULL,NULL,NULL,'6496e940495e8e24e42586439dcbbfa5',NULL,'2026-11-17 09:53:36','2026-11-17 09:53:36',NULL),(9,'#10000009',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'be429fdb09cdb727789a28f79e43eb8b',NULL,'2026-11-17 10:43:56','2026-11-17 10:43:56',NULL),(10,'#10000010',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'8f27ff8470ef4a7e76be20fe10258079',NULL,'2026-11-17 10:44:23','2026-11-17 10:44:23',NULL),(11,'#10000011',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'fa82ac24e72a2426ea2f0010648dc1c7',NULL,'2026-11-17 10:55:48','2026-11-17 10:55:48',NULL),(12,'#10000012',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'baa0377575c301c4124ab86abac9a8b3',NULL,'2026-11-17 10:56:30','2026-11-17 10:56:30',NULL),(13,'#10000013',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'29c325d2db3411e44aeb8c589847338c',NULL,'2026-11-17 10:57:17','2026-11-17 10:57:17',NULL),(14,'#10000014',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'b29385b220a691e19051bc99b2e312ac',NULL,'2026-11-17 10:57:34','2026-11-17 10:57:34',NULL),(15,'#10000015',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'11b9ec7a28f58db576b1cc0ecb259e51',NULL,'2026-11-17 10:57:55','2026-11-17 10:57:55',NULL),(16,'#10000016',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'ad5ce44aed3542caaf9b20a64724e77f',NULL,'2026-11-17 11:01:23','2026-11-17 11:01:23',NULL),(17,'#10000017',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'975ed108448dbb5f85050af910e42356',NULL,'2026-11-17 11:02:17','2026-11-17 11:02:17',NULL),(18,'#10000018',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'a84e88ab5a0b0f1086ee9cb1a694c4f4',NULL,'2026-11-17 11:04:34','2026-11-17 11:04:34',NULL),(19,'#10000019',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'11c51c5465352a4f96046f1dc4169873',NULL,'2026-11-17 11:06:14','2026-11-17 11:06:14',NULL),(20,'#10000020',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'e8dab6901c0d112c8f6e029751276c44',NULL,'2026-11-17 11:07:03','2026-11-17 11:07:03',NULL),(21,'#10000021',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'5911c1777e0275ccbade1ae3696dd899',NULL,'2026-11-17 11:07:39','2026-11-17 11:07:39',NULL),(22,'#10000022',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'1e0d5bc3d13ac7efda9b1e98e458eb09',NULL,'2026-11-17 11:09:22','2026-11-17 11:09:22',NULL),(23,'#10000023',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'5d98a63a3fa2ea5cb325426ba3d4035e',NULL,'2026-11-17 11:16:12','2026-11-17 11:16:12',NULL),(24,'#10000024',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'0e1550cd4b5e5f12b684da50748db725',NULL,'2026-11-17 11:17:40','2026-11-17 11:17:40',NULL),(25,'#10000025',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'b2ed6782978da32b840bebf3c238b11a',NULL,'2026-11-17 11:26:33','2026-11-17 11:26:33',NULL),(26,'#10000026',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'72ae5f6b7285c9281ae1123d917be5c4',NULL,'2026-11-17 11:27:17','2026-11-17 11:27:17',NULL),(27,'#10000027',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'69886a8dbb8a0d6fb1dfa33997122bd6',NULL,'2026-11-17 11:27:46','2026-11-17 11:27:46',NULL),(28,'#10000028',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'f37f5f48d17e1887f59aec7bf4f6b739',NULL,'2026-11-17 11:28:07','2026-11-17 11:28:07',NULL),(29,'#10000029',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'22fde24d75495e48972722719500aa0f',NULL,'2026-11-17 11:30:20','2026-11-17 11:30:20',NULL),(30,'#10000030',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'ae97382b7e385a283b3084fd3a0939cd',NULL,'2026-11-17 11:40:46','2026-11-17 11:40:46',NULL),(31,'#10000031',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'8acb069ce23a5156338ab009ea695b7c',NULL,'2026-11-17 11:41:53','2026-11-17 11:41:53',NULL),(32,'#10000032',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'69dd13565081df4934f6d70d47f825c6',NULL,'2026-11-17 11:45:47','2026-11-17 11:45:47',NULL),(33,'#10000033',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'8b4bf7e1b8f852ab7bb0602f1fb81c5f',NULL,'2026-11-17 11:51:40','2026-11-17 11:51:40',NULL),(34,'#10000034',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'93c264ca409c8249ee63a330556a94e6',NULL,'2026-11-17 11:55:05','2026-11-17 11:55:05',NULL),(35,'#10000035',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'b53dcd1ef4eda025823b921985815348',NULL,'2026-11-18 03:15:53','2026-11-18 03:15:53',NULL),(36,'#10000036',0,NULL,'default','pending',4998.00,0.00,0.00,NULL,NULL,0.00,4998.00,0,NULL,0,NULL,NULL,NULL,'9f9aee77e8019efac3339d051544a3f3',NULL,'2026-11-18 06:24:04','2026-11-18 06:24:04',NULL),(37,'#10000037',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'3ad169e6c4157202896157a2a9135428',NULL,'2026-11-18 06:25:28','2026-11-18 06:25:28',NULL),(38,'#10000038',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'f4346f4a73589ff5f110817d3215e24b',NULL,'2026-11-18 06:42:20','2026-11-18 06:42:20',NULL),(39,'#10000039',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'3a5e9cdbcc86a06e602354fa836a5531',NULL,'2026-11-18 06:50:14','2026-11-18 06:50:14',NULL),(40,'#10000040',0,NULL,'default','pending',2499.00,0.00,0.00,NULL,NULL,0.00,2499.00,0,NULL,0,NULL,NULL,NULL,'1442ab72487a71ee2e771eaafffa35f0',NULL,'2026-11-18 06:52:16','2026-11-18 06:52:16',NULL),(42,'#10000042',0,'custom_statue_quote','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Arun Kumar\nPhone: +91 98401 23456\nPhoto: http://localhost:8000/storage/custom-orders/custom-statue-TzNlQDHeCX-1795433226.jpg\nNotes: 8-inch couple statue with gold rim wooden base. Please call in evening.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'ad95fa3edc2113d8467093a492a1f67e',1,'2026-11-23 05:57:06','2026-11-23 07:03:58','storage/custom-orders/custom-statue-TzNlQDHeCX-1795433226.jpg'),(43,'#10000043',0,'custom_statue_quote','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Arun Kumar\nPhone: +91 98401 23456\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-eWK4wMkYRq-1795433349.jpg\nNotes: 8-inch couple statue with gold rim wooden base. Please call in evening.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'954f78b32cb22a174aee14003535875f',2,'2026-11-23 05:59:09','2026-11-23 07:03:58','storage/custom-orders/custom-statue-eWK4wMkYRq-1795433349.jpg'),(44,'#10000044',0,'custom_statue_quote','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Vikram Aditya\nPhone: +91 94444 88888\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-Wf1g3Q6je7-1795433455.jpg\nNotes: Need 7-inch couple statue with anniversary date engraved on base.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'31e5d9a7707db613966f27b128becc40',3,'2026-11-23 06:00:55','2026-11-23 07:03:58','storage/custom-orders/custom-statue-Wf1g3Q6je7-1795433455.jpg'),(45,'#10000045',0,'custom_statue_quote','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Ananya & Rohan\nPhone: +91 98765 43210\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-Y1DRItQSXd-1795434626.jpg\nNotes: Preferred 8-inch height on premium teak wood base with anniversary date \'24-11-2024\'.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'4b0af16f69aeb1c64064af384c402a71',4,'2026-11-23 06:20:26','2026-11-23 07:03:58','storage/custom-orders/custom-statue-Y1DRItQSXd-1795434626.jpg'),(46,'#10000046',0,'default','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Priya & Karthik\nPhone: +91 99887 76655\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-Ja840jguo2-1795437348.jpg\nNotes: Looking for 10-inch marble finish statue with brass nameplate.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'faf241494b03ab9c906bce389183e3af',5,'2026-11-23 07:05:48','2026-11-23 07:05:48','storage/custom-orders/custom-statue-Ja840jguo2-1795437348.jpg'),(47,'#10000047',0,'default','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: Deepak & Sneha\nPhone: +91 91234 56789\nPhoto: http://localhost:8000/storage/custom-orders/custom-statue-6HYrDvgy2G-1795438206.jpg\nNotes: Tested with 3.5MB high-resolution camera photo.\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'03f7a234d6cd3b5eaf8eb0bd10c6d299',6,'2026-11-23 07:20:06','2026-11-23 07:20:06','storage/custom-orders/custom-statue-6HYrDvgy2G-1795438206.jpg'),(48,'#10000048',0,'default','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: gggg\nPhone: 786644543\nPhoto: http://127.0.0.1:8000/storage/custom-orders/custom-statue-LfT9IycqRS-1795438356.jpg\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'a16aff60cd992941153911255a25fa8e',7,'2026-11-23 07:22:36','2026-11-23 07:22:36','storage/custom-orders/custom-statue-LfT9IycqRS-1795438356.jpg'),(49,'#10000049',0,'default','default','pending',2499.00,0.00,0.00,'🌟 Custom Statue Inquiry (Pricing to be decided on call)\nCustomer Name: gggg\nPhone: 987657435\nPhoto: http://localhost:8000/storage/custom-orders/custom-statue-og0NooeFUu-1795772333.jpg\n*Action: Admin to call customer, confirm dimensions/finish, and agree on pricing.',NULL,0.00,2499.00,1,NULL,1,NULL,NULL,NULL,'b6123fb5ed1d441a8b6e6e7f53a98a63',8,'2026-11-27 04:08:54','2026-11-27 04:08:54','storage/custom-orders/custom-statue-og0NooeFUu-1795772333.jpg');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-25 00:58:47','2024-04-25 00:58:47',1),(2,'Size','size','text',1,1,1,'published',1,'2024-04-25 00:58:47','2024-04-25 00:58:47',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-25 00:58:47','2024-04-25 00:58:47'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Couple Figurines',0,NULL,'published',1,'categories/category-couple-figurines.jpg',1,'2024-04-25 00:58:47','2026-11-17 02:10:49',NULL,NULL),(2,'Personalized Statues',0,NULL,'published',2,'categories/category-personalized-statues.jpg',1,'2024-04-25 00:58:47','2026-11-17 02:10:49',NULL,NULL),(3,'Custom Gifts',0,NULL,'published',3,'categories/category-custom-gifts.jpg',1,'2024-04-25 00:58:47','2026-11-17 02:10:49',NULL,NULL),(4,'Gods Statues',0,NULL,'published',4,'categories/category-gods-statues.jpg',1,'2026-11-17 02:10:49','2026-11-17 02:10:49',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(4,'Reactive Providence Hair Color','reactive-providence-hair-color',NULL,'banners/thumb-01.jpg','published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(5,'New Modern &amp; Stylist Makeup','new-modern-stylist-makeup',NULL,'banners/thumb-02.jpg','published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(6,'Intensive Glow C+ Serum','intensive-glow-c-serum',NULL,'banners/thumb-03.jpg','published','2024-04-25 00:58:47','2024-04-25 00:58:47',0),(7,'Vogue','vogue',NULL,'banners/thumb-04.jpg','published','2024-04-25 00:58:47','2024-04-25 00:58:47',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,76,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(2,76,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(3,76,'ecommerce/digital-product-files/product-82.jpg','{\"filename\":\"product-82.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-82.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-82\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(4,76,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(5,76,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(6,76,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(7,76,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(8,76,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(9,76,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(10,76,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(11,76,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(12,76,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(13,77,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(14,77,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:56\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2024-04-25 00:58:56','2024-04-25 00:58:56'),(15,77,'ecommerce/digital-product-files/product-82.jpg','{\"filename\":\"product-82.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-82.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-82\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(16,77,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(17,77,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(18,77,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(19,77,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(20,77,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(21,77,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(22,77,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(23,77,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(24,77,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(25,78,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(26,78,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(27,78,'ecommerce/digital-product-files/product-82.jpg','{\"filename\":\"product-82.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-82.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-82\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(28,78,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(29,78,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(30,78,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(31,78,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(32,78,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(33,78,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(34,78,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(35,78,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(36,78,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(37,87,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(38,87,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(39,87,'ecommerce/digital-product-files/product-33.jpg','{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-33\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(40,87,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(41,87,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(42,87,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(43,87,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(44,97,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(45,97,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(46,97,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(47,97,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(48,97,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(49,97,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(50,97,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(51,97,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(52,97,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(53,98,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(54,98,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(55,98,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(56,98,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(57,98,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(58,98,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(59,98,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(60,98,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(61,98,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(62,108,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:57\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-25 00:58:57','2024-04-25 00:58:57'),(63,108,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(64,108,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(65,108,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(66,108,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(67,108,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(68,108,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(69,108,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(70,108,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(71,109,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(72,109,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(73,109,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(74,109,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(75,109,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(76,109,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(77,109,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(78,109,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(79,109,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(80,110,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(81,110,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(82,110,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(83,110,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(84,110,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(85,110,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(86,110,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(87,110,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(88,110,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(89,120,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(90,120,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(91,120,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(92,120,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(93,120,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(94,120,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(95,120,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(96,120,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(97,120,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(98,120,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(99,121,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(100,121,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(101,121,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(102,121,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(103,121,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(104,121,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(105,121,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(106,121,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(107,121,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(108,121,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(109,127,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(110,127,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(111,127,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(112,127,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(113,127,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(114,127,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(115,128,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(116,128,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(117,128,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(118,128,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(119,128,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(120,128,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(121,129,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(122,129,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(123,129,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(124,129,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(125,129,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(126,129,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(127,136,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(128,136,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(129,136,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(130,136,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(131,136,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(132,136,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(133,136,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(134,136,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(135,136,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(136,137,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(137,137,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(138,137,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(139,137,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(140,137,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(141,137,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:58\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2024-04-25 00:58:58','2024-04-25 00:58:58'),(142,137,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(143,137,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(144,137,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(145,145,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(146,145,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(147,145,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(148,145,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(149,145,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(150,145,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(151,145,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(152,145,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(153,146,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(154,146,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(155,146,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(156,146,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(157,146,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(158,146,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(159,146,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(160,146,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(161,152,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(162,152,'ecommerce/digital-product-files/product-82.jpg','{\"filename\":\"product-82.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-82.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-82\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(163,152,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(164,152,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(165,152,'ecommerce/digital-product-files/product-62.jpg','{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-62\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(166,153,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(167,153,'ecommerce/digital-product-files/product-82.jpg','{\"filename\":\"product-82.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-82.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-82\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(168,153,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(169,153,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(170,153,'ecommerce/digital-product-files/product-62.jpg','{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-62\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(171,160,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(172,160,'ecommerce/digital-product-files/product-57.jpg','{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-57\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(173,160,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(174,160,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(175,160,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(176,160,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(177,160,'ecommerce/digital-product-files/product-63.jpg','{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-63\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(178,160,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(179,161,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(180,161,'ecommerce/digital-product-files/product-57.jpg','{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-57\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(181,161,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(182,161,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(183,161,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(184,161,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(185,161,'ecommerce/digital-product-files/product-63.jpg','{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-63\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(186,161,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:58:59\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2024-04-25 00:58:59','2024-04-25 00:58:59'),(187,172,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(188,172,'ecommerce/digital-product-files/product-61.jpg','{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-61\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(189,172,'ecommerce/digital-product-files/product-27.jpg','{\"filename\":\"product-27.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-27.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-27\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(190,172,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(191,172,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(192,172,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(193,172,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(194,172,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(195,172,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(196,172,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(197,172,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(198,172,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(199,173,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(200,173,'ecommerce/digital-product-files/product-61.jpg','{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-61\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(201,173,'ecommerce/digital-product-files/product-27.jpg','{\"filename\":\"product-27.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-27.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-27\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(202,173,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(203,173,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(204,173,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(205,173,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(206,173,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(207,173,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(208,173,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(209,173,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(210,173,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(211,174,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(212,174,'ecommerce/digital-product-files/product-61.jpg','{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-61\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(213,174,'ecommerce/digital-product-files/product-27.jpg','{\"filename\":\"product-27.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-27.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-27\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(214,174,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(215,174,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(216,174,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(217,174,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(218,174,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(219,174,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(220,174,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(221,174,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(222,174,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(223,181,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(224,181,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(225,181,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(226,181,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(227,181,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(228,181,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(229,182,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(230,182,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(231,182,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(232,182,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(233,182,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(234,182,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(235,191,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(236,191,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(237,191,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(238,191,'ecommerce/digital-product-files/product-69.jpg','{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-69\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(239,191,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(240,191,'ecommerce/digital-product-files/product-62.jpg','{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-62\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(241,191,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(242,201,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(243,201,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(244,201,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(245,201,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(246,201,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(247,201,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(248,201,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(249,201,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(250,201,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:59:00','2024-04-25 00:59:00'),(251,202,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:00\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(252,202,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(253,202,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(254,202,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(255,202,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(256,202,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(257,202,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(258,202,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(259,202,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(260,203,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(261,203,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(262,203,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(263,203,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(264,203,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(265,203,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(266,203,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(267,203,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(268,203,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(269,204,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(270,204,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(271,204,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(272,204,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(273,204,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(274,204,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(275,204,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(276,204,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(277,204,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(278,205,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(279,205,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(280,205,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(281,205,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(282,205,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(283,205,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(284,205,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(285,205,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(286,205,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(287,212,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(288,212,'ecommerce/digital-product-files/product-95.jpg','{\"filename\":\"product-95.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-95.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-95\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(289,212,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(290,212,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(291,212,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(292,212,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(293,212,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(294,212,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(295,212,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(296,213,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(297,213,'ecommerce/digital-product-files/product-95.jpg','{\"filename\":\"product-95.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-95.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-95\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(298,213,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(299,213,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(300,213,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(301,213,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(302,213,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(303,213,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(304,213,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(305,217,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(306,217,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(307,217,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(308,217,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(309,217,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(310,217,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(311,217,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(312,217,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(313,217,'ecommerce/digital-product-files/product-66.jpg','{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-66\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(314,217,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(315,218,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(316,218,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(317,218,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(318,218,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(319,218,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(320,218,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(321,218,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(322,218,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(323,218,'ecommerce/digital-product-files/product-66.jpg','{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-66\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(324,218,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(325,219,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(326,219,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(327,219,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(328,219,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(329,219,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(330,219,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(331,219,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(332,219,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(333,219,'ecommerce/digital-product-files/product-66.jpg','{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-66\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(334,219,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(335,220,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(336,220,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(337,220,'ecommerce/digital-product-files/product-81.jpg','{\"filename\":\"product-81.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-81\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(338,220,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(339,220,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(340,220,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(341,220,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(342,220,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(343,220,'ecommerce/digital-product-files/product-66.jpg','{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-66\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(344,220,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(345,228,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:01\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2024-04-25 00:59:01','2024-04-25 00:59:01'),(346,228,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(347,228,'ecommerce/digital-product-files/product-32.jpg','{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-32\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(348,228,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(349,228,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(350,229,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(351,229,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(352,229,'ecommerce/digital-product-files/product-32.jpg','{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-32\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(353,229,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(354,229,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(355,239,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(356,239,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(357,239,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(358,239,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(359,239,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(360,239,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(361,240,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(362,240,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(363,240,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(364,240,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(365,240,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(366,240,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(367,241,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(368,241,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(369,241,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(370,241,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(371,241,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(372,241,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(373,242,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(374,242,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(375,242,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(376,242,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(377,242,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(378,242,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(379,251,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(380,251,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(381,251,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(382,251,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(383,251,'ecommerce/digital-product-files/product-69.jpg','{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-69\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(384,251,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(385,251,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(386,252,'ecommerce/digital-product-files/product-85.jpg','{\"filename\":\"product-85.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-85.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-85\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(387,252,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(388,252,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(389,252,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(390,252,'ecommerce/digital-product-files/product-69.jpg','{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-69\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(391,252,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02'),(392,252,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-04-25 07:59:02\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2024-04-25 00:59:02','2024-04-25 00:59:02');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,'New','#02856e','published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,'Sale','#fe9931','published','2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,'Mobile',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,'Iphone',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,'Printer',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(5,'Office',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(6,'IT',NULL,'published','2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-04-25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
INSERT INTO `ec_product_views` VALUES (1,1,6,'2026-11-01'),(7,1,34,'2026-11-17'),(41,1,3,'2026-11-18'),(44,1,17,'2026-11-23'),(61,1,1,'2026-11-27');
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Wedding &amp; Event Couple Statue','<p>A charming Wedding/Event Couple piece that captures the beauty of love and celebration. Crafted with high-quality materials and detailed finishing, it adds a romantic and joyful touch to any decor setting.</p>','<p><img class=\"image_resized emoji\" style=\"background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\" src=\"https://s.w.org/images/core/emoji/17.0.2/svg/2705.svg\" alt=\"✅\" width=\"150\" height=\"150\"><span style=\"background-color:rgb(248,248,248);color:rgb(119,119,119);\"><span style=\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\"> Romantic wedding couple themed design</span>  </span>  <br><img class=\"image_resized emoji\" style=\"background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\" src=\"https://s.w.org/images/core/emoji/17.0.2/svg/2705.svg\" alt=\"✅\" width=\"150\" height=\"150\"><span style=\"background-color:rgb(248,248,248);color:rgb(119,119,119);\"><span style=\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\"> Premium finish with fine detailing</span>  </span>  <br><img class=\"image_resized emoji\" style=\"background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\" src=\"https://s.w.org/images/core/emoji/17.0.2/svg/2705.svg\" alt=\"✅\" width=\"150\" height=\"150\"><span style=\"background-color:rgb(248,248,248);color:rgb(119,119,119);\"><span style=\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\"> Perfect for weddings and special events</span>  </span>  <br><img class=\"image_resized emoji\" style=\"background-color:rgb(248,248,248);font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;height:1em;margin:0px 0.07em;max-height:16px;max-width:100%;padding:0px;width:1em;word-spacing:0px;\" src=\"https://s.w.org/images/core/emoji/17.0.2/svg/2705.svg\" alt=\"✅\" width=\"150\" height=\"150\"><span style=\"background-color:rgb(248,248,248);color:rgb(119,119,119);\"><span style=\"font-family:Quantico, Arial, Helvetica, sans-serif;font-size:14.5px;font-style:normal;font-weight:400;word-spacing:0px;\"> Ideal gift for couples and occasions</span>  </span></p>','published','[]','TSE-GLB-399',0,50,0,1,1,NULL,0,0,2999,2499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,'2026-11-01 08:10:50','2026-11-17 09:13:02','on_backorder',0,'Botble\\ACL\\Models\\User','couple-statue-garden.jpg','physical',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-25 00:58:46','2024-04-25 00:58:46');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-25 00:58:46','2024-04-25 00:58:46');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,'None',0.000000,2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,'Import Tax',15.000000,3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Ordering Process',0,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(2,'Product Returns',1,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(3,'Product Availability',2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'How do I place an order?','To place an order, navigate to the product page, select the desired options, and click the \"Add to Cart\" button.',1,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(2,'What are the shipping options?','We offer standard and expedited shipping options. Shipping costs and delivery times vary based on your location and chosen shipping method.',2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(3,'How can I return a product?','If you are not satisfied with your purchase, you can initiate a return within 30 days of receiving the product. Contact our customer service for further instructions.',3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(4,'What payment methods do you accept?','We accept major credit cards, PayPal, and other secure payment methods.',1,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(5,'How can I update my account information?','Log in to your account and go to the \"Account Settings\" page to update your information, including your password and shipping address.',3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(6,'Are there any ongoing promotions or discounts?','Check our \"Promotions\" page for information on current discounts, special offers, and ongoing promotions.',3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(7,'Is the product in stock?','Product availability is indicated on each product page. If a product is out of stock, you may choose to be notified when it becomes available.',3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(8,'How is my personal information secured?','We take the security and privacy of your information seriously. Our website uses encryption technology to protect your personal data.',1,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(9,'How do I get technical support?','For technical issues or assistance, contact our customer support team through the \"Contact Us\" page, and we will help you resolve any problems.',2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(10,'Do you offer international shipping?','Yes, we offer international shipping to many countries. Shipping costs and delivery times vary based on the destination.',2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(11,'Can I purchase a gift card?','Yes, we offer gift cards of varying denominations. Gift cards can be purchased on our website and make for a great gift for friends and family.',3,'published','2024-04-25 00:58:47','2024-04-25 00:58:47'),(12,'What is the warranty on your products?','Our products come with a standard warranty. Check the product documentation or contact our customer service for details on specific product warranties.',2,'published','2024-04-25 00:58:47','2024-04-25 00:58:47');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Numquam debitis tempore et non magni corporis quae. Minima et sed aut.',1,0,'galleries/1.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(2,'New Day','Ut necessitatibus qui est libero molestias perspiciatis est reprehenderit. Natus et ex vero voluptate harum. Occaecati dolore rem sapiente.',1,0,'galleries/2.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(3,'Happy Day','Aut quae reiciendis dolorem hic aliquam. Necessitatibus voluptas a odit sint.',1,0,'galleries/3.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(4,'Nature','Numquam aut minima illo at placeat vero. Facere fuga tempora recusandae quam nihil optio. Architecto nihil itaque quae vitae.',1,0,'galleries/4.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(5,'Morning','Ut quia atque beatae tenetur. Fugiat modi et non ipsam ut rerum. Recusandae iusto voluptatibus velit et id.',1,0,'galleries/5.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(6,'Photography','Voluptas iste omnis repudiandae et maxime. Aliquam dolor ut ex. Earum totam iusto rem odio sed magnam ea.',1,0,'galleries/6.jpg',1,'published','2024-04-25 00:59:07','2024-04-25 00:59:07');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptatibus velit est nihil. Rem ut vel voluptate quis nobis facere. Velit asperiores aut dicta ea blanditiis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est sit ipsa omnis quam reprehenderit vel maxime incidunt. Et tempora similique dolor temporibus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Assumenda dolore maxime est et ut. Et laudantium labore ullam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Voluptas omnis rem autem velit. Cumque omnis sit vero cupiditate a. Occaecati qui eum eius facere.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Qui laboriosam ea recusandae. Doloribus similique id molestiae ex praesentium omnis corporis.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Ut aspernatur rerum ducimus quam nemo nesciunt. Consequatur natus reprehenderit et nemo et eos. Debitis veniam est laborum est laudantium.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-04-25 00:59:07','2024-04-25 00:59:07');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','69b25df3c2390bad7dbcfde8f9e38ab7',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','e36be0185e2091b5955f454bae8dae13',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','064f95d7dd9d020300fac4da97f4ab8c',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','822a80e9fb2ad8b9cec7a588d3efb987',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','b99016325e9da9e836273b8b1d71094f',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','c5d203b06fedac1ea7e958c1e066a62f',1,'Botble\\Menu\\Models\\MenuLocation'),(7,'en_US','e756506a115d2b3fbabb8ef35bfbc966',1,'Botble\\Menu\\Models\\Menu'),(8,'en_US','6cc9ac367c6a67135260b21a802edc3e',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','1c3f3bf56b1da2723ced3320d558f776',2,'Botble\\Menu\\Models\\Menu'),(10,'en_US','1d2b0f73bcf94ad7d6e789e56b50f204',3,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','2763474b3d436727c187d5ec8a329c84',3,'Botble\\Menu\\Models\\Menu'),(12,'en_US','c40ee177f6ca89f784d57b1801baaa62',4,'Botble\\Menu\\Models\\MenuLocation'),(13,'en_US','f09eea5ce7fb3a65427fbaff60f7f07d',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'f-app','f-app',1,'image/jpeg',617,'general/f-app.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(2,0,'f-brand-icon-01','f-brand-icon-01',1,'image/png',448,'general/f-brand-icon-01.png','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(3,0,'f-google','f-google',1,'image/jpeg',617,'general/f-google.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(4,0,'favicon','favicon',1,'image/png',14917,'general/favicon.png','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(5,0,'logo-white','logo-white',1,'image/png',905,'general/logo-white.png','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(6,0,'logo','logo',1,'image/png',941,'general/logo.png','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(7,0,'newsletter-popup','newsletter-popup',1,'image/png',28834,'general/newsletter-popup.png','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(8,0,'1','1',2,'image/jpeg',3319,'blog/1.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(9,0,'10','10',2,'image/jpeg',3319,'blog/10.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(10,0,'11','11',2,'image/jpeg',3319,'blog/11.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(11,0,'2','2',2,'image/jpeg',3319,'blog/2.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(12,0,'3','3',2,'image/jpeg',3319,'blog/3.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(13,0,'4','4',2,'image/jpeg',3319,'blog/4.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(14,0,'5','5',2,'image/jpeg',3319,'blog/5.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(15,0,'6','6',2,'image/jpeg',3319,'blog/6.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(16,0,'7','7',2,'image/jpeg',3319,'blog/7.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(17,0,'8','8',2,'image/jpeg',3319,'blog/8.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(18,0,'9','9',2,'image/jpeg',3319,'blog/9.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(19,0,'blog-in-01','blog-in-01',2,'image/jpeg',9623,'blog/blog-in-01.jpg','[]','2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(20,0,'blog-in-02','blog-in-02',2,'image/jpeg',9623,'blog/blog-in-02.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(21,0,'blog-in-03','blog-in-03',2,'image/jpeg',9623,'blog/blog-in-03.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(22,0,'blog-in-04','blog-in-04',2,'image/jpeg',9623,'blog/blog-in-04.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(23,0,'blog-in-05','blog-in-05',2,'image/jpeg',9623,'blog/blog-in-05.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(24,0,'blog-in-06','blog-in-06',2,'image/jpeg',9623,'blog/blog-in-06.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(25,0,'blog-sm-1','blog-sm-1',2,'image/jpeg',9623,'blog/blog-sm-1.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(26,0,'blog-sm-2','blog-sm-2',2,'image/jpeg',9623,'blog/blog-sm-2.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(27,0,'blog-sm-3','blog-sm-3',2,'image/jpeg',9623,'blog/blog-sm-3.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(28,0,'blog-sm-4','blog-sm-4',2,'image/jpeg',9623,'blog/blog-sm-4.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(29,0,'comment-1','comment-1',2,'image/jpeg',9803,'blog/comment-1.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(30,0,'comment-2','comment-2',2,'image/jpeg',9803,'blog/comment-2.jpg','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(31,0,'location-1','location-1',3,'image/png',5309,'shop/location-1.png','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(32,0,'location-2','location-2',3,'image/png',5309,'shop/location-2.png','[]','2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(33,0,'location-3','location-3',3,'image/png',5309,'shop/location-3.png','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(34,0,'location-4','location-4',3,'image/png',5309,'shop/location-4.png','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(35,0,'login_bg','login_bg',3,'image/jpeg',5443,'shop/login-bg.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(36,0,'reviewer-01','reviewer-01',3,'image/png',1070,'shop/reviewer-01.png','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(37,0,'reviewer-02','reviewer-02',3,'image/png',1070,'shop/reviewer-02.png','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(38,0,'reviewer-03','reviewer-03',3,'image/png',1070,'shop/reviewer-03.png','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(39,0,'s-thumb-01','s-thumb-01',3,'image/jpeg',2813,'shop/s-thumb-01.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(40,0,'s-thumb-02','s-thumb-02',3,'image/jpeg',2813,'shop/s-thumb-02.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(41,0,'s-thumb-03','s-thumb-03',3,'image/jpeg',2813,'shop/s-thumb-03.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(42,0,'s-thumb-04','s-thumb-04',3,'image/jpeg',2813,'shop/s-thumb-04.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(43,0,'s-thumb-05','s-thumb-05',3,'image/jpeg',2813,'shop/s-thumb-05.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(44,0,'s-thumb-06','s-thumb-06',3,'image/jpeg',2813,'shop/s-thumb-06.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(45,0,'sign_bg','sign_bg',3,'image/jpeg',5443,'shop/sign-bg.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(46,0,'track_bg','track_bg',3,'image/jpeg',6224,'shop/track-bg.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(47,0,'w-product-01','w-product-01',3,'image/jpeg',5528,'shop/w-product-01.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(48,0,'w-product-02','w-product-02',3,'image/jpeg',5528,'shop/w-product-02.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(49,0,'w-product-03','w-product-03',3,'image/jpeg',5528,'shop/w-product-03.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(50,0,'w-product-04','w-product-04',3,'image/jpeg',5528,'shop/w-product-04.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(51,0,'w-product-05','w-product-05',3,'image/jpeg',5528,'shop/w-product-05.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(52,0,'about-banner-1','about-banner-1',4,'image/jpeg',8335,'banners/about-banner-1.jpg','[]','2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(53,0,'about-banner-2','about-banner-2',4,'image/jpeg',8335,'banners/about-banner-2.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(54,0,'about-img-1','about-img-1',4,'image/jpeg',8914,'banners/about-img-1.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(55,0,'about-img-2','about-img-2',4,'image/jpeg',8914,'banners/about-img-2.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(56,0,'about-img-3','about-img-3',4,'image/png',6771,'banners/about-img-3.png','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(57,0,'banner-03-01','banner-03-01',4,'image/jpeg',6612,'banners/banner-03-01.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(58,0,'banner-03-02','banner-03-02',4,'image/jpeg',5283,'banners/banner-03-02.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(59,0,'banner-03-03','banner-03-03',4,'image/jpeg',5077,'banners/banner-03-03.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(60,0,'banner-2-01','banner-2-01',4,'image/jpeg',5452,'banners/banner-2-01.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(61,0,'banner-2-02','banner-2-02',4,'image/jpeg',5452,'banners/banner-2-02.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(62,0,'banner-2-03','banner-2-03',4,'image/jpeg',12296,'banners/banner-2-03.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(63,0,'banner-2-04','banner-2-04',4,'image/jpeg',7318,'banners/banner-2-04.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(64,0,'banner-bg-05','banner-bg-05',4,'image/jpeg',23672,'banners/banner-bg-05.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(65,0,'banner-offer-01','banner-offer-01',4,'image/jpeg',10330,'banners/banner-offer-01.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(66,0,'banner-offer-02','banner-offer-02',4,'image/jpeg',9086,'banners/banner-offer-02.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(67,0,'breadcrumb-01','breadcrumb-01',4,'image/jpeg',5276,'banners/breadcrumb-01.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(68,0,'coming-soon','coming-soon',4,'image/jpeg',27345,'banners/coming-soon.jpg','[]','2024-04-25 00:58:42','2024-04-25 00:58:42',NULL),(69,0,'login-bg','login-bg',4,'image/jpeg',5443,'banners/login-bg.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(70,0,'product-shape-01','product-shape-01',4,'image/png',3161,'banners/product-shape-01.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(71,0,'product-shape-02','product-shape-02',4,'image/png',2281,'banners/product-shape-02.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(72,0,'sign-bg','sign-bg',4,'image/jpeg',5443,'banners/sign-bg.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(73,0,'thumb-01','thumb-01',4,'image/jpeg',16230,'banners/thumb-01.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(74,0,'thumb-02','thumb-02',4,'image/jpeg',7655,'banners/thumb-02.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(75,0,'thumb-03','thumb-03',4,'image/jpeg',7655,'banners/thumb-03.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(76,0,'thumb-04','thumb-04',4,'image/jpeg',16230,'banners/thumb-04.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(77,0,'track-bg','track-bg',4,'image/jpeg',6224,'banners/track-bg.jpg','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(78,0,'box','box',5,'image/png',842,'icons/box.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(79,0,'car','car',5,'image/png',780,'icons/car.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(80,0,'cat-icon-01','cat-icon-01',5,'image/png',107,'icons/cat-icon-01.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(81,0,'cat-icon-02','cat-icon-02',5,'image/png',110,'icons/cat-icon-02.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(82,0,'cat-icon-03','cat-icon-03',5,'image/png',111,'icons/cat-icon-03.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(83,0,'cat-icon-04','cat-icon-04',5,'image/png',110,'icons/cat-icon-04.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(84,0,'cat-icon-05','cat-icon-05',5,'image/png',108,'icons/cat-icon-05.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(85,0,'cat-icon-06','cat-icon-06',5,'image/png',1543,'icons/cat-icon-06.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(86,0,'error','error',5,'image/png',3808,'icons/error.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(87,0,'hours','hours',5,'image/png',924,'icons/hours.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(88,0,'lang-flag','lang-flag',5,'image/png',1596,'icons/lang-flag.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(89,0,'payment','payment',5,'image/png',741,'icons/payment.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(90,0,'product-det-1','product-det-1',5,'image/png',901,'icons/product-det-1.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(91,0,'product-det-2','product-det-2',5,'image/png',1033,'icons/product-det-2.png','[]','2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(92,0,'product-det-3','product-det-3',5,'image/png',657,'icons/product-det-3.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(93,0,'product-det-4','product-det-4',5,'image/png',1133,'icons/product-det-4.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(94,0,'title-shape-02','title-shape-02',5,'image/jpeg',737,'icons/title-shape-02.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(95,0,'track-1','track-1',5,'image/png',318,'icons/track-1.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(96,0,'banner-1','banner-1',6,'image/jpeg',9766,'sliders/banner-1.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(97,0,'banner-2','banner-2',6,'image/jpeg',9766,'sliders/banner-2.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(98,0,'banner-3','banner-3',6,'image/jpeg',9766,'sliders/banner-3.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(99,0,'banner-slider-01','banner-slider-01',6,'image/jpeg',4081,'sliders/banner-slider-01.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(100,0,'banner-slider-02','banner-slider-02',6,'image/jpeg',4081,'sliders/banner-slider-02.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(101,0,'fasion-tag-01','fasion-tag-01',6,'image/png',2647,'sliders/fasion-tag-01.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(102,0,'fasion-tag-02','fasion-tag-02',6,'image/png',2675,'sliders/fasion-tag-02.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(103,0,'fasion-tag-03','fasion-tag-03',6,'image/png',2675,'sliders/fasion-tag-03.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(104,0,'slider-01','slider-01',6,'image/png',13507,'sliders/slider-01.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(105,0,'slider-02','slider-02',6,'image/png',13507,'sliders/slider-02.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(106,0,'slider-03','slider-03',6,'image/png',13507,'sliders/slider-03.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(107,0,'slider-04','slider-04',6,'image/png',11780,'sliders/slider-04.png','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(108,0,'slider-05-banner-1','slider-05-banner-1',6,'image/jpeg',3724,'sliders/slider-05-banner-1.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(109,0,'slider-05-banner-2','slider-05-banner-2',6,'image/jpeg',3724,'sliders/slider-05-banner-2.jpg','[]','2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(110,0,'slider-05-bg-1','slider-05-bg-1',6,'image/jpeg',11103,'sliders/slider-05-bg-1.jpg','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(111,0,'slider-05-bg-2','slider-05-bg-2',6,'image/jpeg',11103,'sliders/slider-05-bg-2.jpg','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(112,0,'slider-05-bg-3','slider-05-bg-3',6,'image/jpeg',11103,'sliders/slider-05-bg-3.jpg','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(113,0,'slider-05-bg-4','slider-05-bg-4',6,'image/jpeg',11103,'sliders/slider-05-bg-4.jpg','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(114,0,'slider-05','slider-05',6,'image/png',11780,'sliders/slider-05.png','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(115,0,'slider-06','slider-06',6,'image/png',11780,'sliders/slider-06.png','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(116,0,'slider-bg-04','slider-bg-04',6,'image/png',7941,'sliders/slider-bg-04.png','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(117,0,'slider-bg-05','slider-bg-05',6,'image/png',7941,'sliders/slider-bg-05.png','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(118,0,'slider-bg-06','slider-bg-06',6,'image/png',7941,'sliders/slider-bg-06.png','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(119,0,'video-bg-01','video-bg-01',6,'image/jpeg',14217,'sliders/video-bg-01.jpg','[]','2024-04-25 00:58:45','2024-04-25 00:58:45',NULL),(120,0,'brand-01','brand-01',7,'image/png',630,'brands/brand-01.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(121,0,'brand-02','brand-02',7,'image/png',630,'brands/brand-02.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(122,0,'brand-03','brand-03',7,'image/png',630,'brands/brand-03.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(123,0,'brand-04','brand-04',7,'image/png',630,'brands/brand-04.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(124,0,'brand-05','brand-05',7,'image/png',630,'brands/brand-05.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(125,0,'brand-06','brand-06',7,'image/png',630,'brands/brand-06.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(126,0,'brand-w-01','brand-w-01',7,'image/png',630,'brands/brand-w-01.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(127,0,'brand-w-02','brand-w-02',7,'image/png',630,'brands/brand-w-02.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(128,0,'brand-w-03','brand-w-03',7,'image/png',630,'brands/brand-w-03.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(129,0,'brand-w-04','brand-w-04',7,'image/png',630,'brands/brand-w-04.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(130,0,'brand-w-05','brand-w-05',7,'image/png',630,'brands/brand-w-05.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(131,0,'brand-w-06','brand-w-06',7,'image/png',630,'brands/brand-w-06.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(132,0,'pla-brand-01','pla-brand-01',7,'image/png',630,'brands/pla-brand-01.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(133,0,'pla-brand-02','pla-brand-02',7,'image/png',630,'brands/pla-brand-02.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(134,0,'pla-brand-03','pla-brand-03',7,'image/png',630,'brands/pla-brand-03.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(135,0,'pla-brand-04','pla-brand-04',7,'image/png',630,'brands/pla-brand-04.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(136,0,'pla-brand-05','pla-brand-05',7,'image/png',630,'brands/pla-brand-05.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(137,0,'pla-brand-06','pla-brand-06',7,'image/png',630,'brands/pla-brand-06.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(138,0,'feature-icon-01','feature-icon-01',8,'image/png',2045,'features/feature-icon-01.png','[]','2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(139,0,'feature-icon-02','feature-icon-02',8,'image/png',1873,'features/feature-icon-02.png','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(140,0,'feature-icon-03','feature-icon-03',8,'image/png',2289,'features/feature-icon-03.png','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(141,0,'feature-icon-04','feature-icon-04',8,'image/png',1121,'features/feature-icon-04.png','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(142,0,'feature-icon-05','feature-icon-05',8,'image/png',1705,'features/feature-icon-05.png','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(143,0,'feature-icon-06','feature-icon-06',8,'image/png',1508,'features/feature-icon-06.png','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(144,0,'pla-product-01','pla-product-01',9,'image/jpeg',9803,'products/pla-product-01.jpg','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(145,0,'pla-product-02','pla-product-02',9,'image/jpeg',9803,'products/pla-product-02.jpg','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(146,0,'pla-product-03','pla-product-03',9,'image/jpeg',9803,'products/pla-product-03.jpg','[]','2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(147,0,'pla-product-04','pla-product-04',9,'image/jpeg',9803,'products/pla-product-04.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(148,0,'product-1','product-1',9,'image/jpeg',9803,'products/product-1.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(149,0,'product-10','product-10',9,'image/jpeg',9803,'products/product-10.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(150,0,'product-11','product-11',9,'image/jpeg',9803,'products/product-11.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(151,0,'product-12','product-12',9,'image/jpeg',9803,'products/product-12.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(152,0,'product-13','product-13',9,'image/jpeg',9803,'products/product-13.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(153,0,'product-14','product-14',9,'image/jpeg',9803,'products/product-14.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(154,0,'product-15','product-15',9,'image/jpeg',9803,'products/product-15.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(155,0,'product-16','product-16',9,'image/jpeg',9803,'products/product-16.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(156,0,'product-17','product-17',9,'image/jpeg',9803,'products/product-17.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(157,0,'product-18','product-18',9,'image/jpeg',9803,'products/product-18.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(158,0,'product-19','product-19',9,'image/jpeg',9803,'products/product-19.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(159,0,'product-2','product-2',9,'image/jpeg',9803,'products/product-2.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(160,0,'product-20','product-20',9,'image/jpeg',9803,'products/product-20.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(161,0,'product-21','product-21',9,'image/jpeg',9803,'products/product-21.jpg','[]','2024-04-25 00:58:48','2024-04-25 00:58:48',NULL),(162,0,'product-22','product-22',9,'image/jpeg',9803,'products/product-22.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(163,0,'product-23','product-23',9,'image/jpeg',9803,'products/product-23.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(164,0,'product-24','product-24',9,'image/jpeg',9803,'products/product-24.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(165,0,'product-25','product-25',9,'image/jpeg',9803,'products/product-25.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(166,0,'product-26','product-26',9,'image/jpeg',9803,'products/product-26.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(167,0,'product-27','product-27',9,'image/jpeg',9803,'products/product-27.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(168,0,'product-28','product-28',9,'image/jpeg',9803,'products/product-28.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(169,0,'product-29','product-29',9,'image/jpeg',9803,'products/product-29.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(170,0,'product-3','product-3',9,'image/jpeg',9803,'products/product-3.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(171,0,'product-30','product-30',9,'image/jpeg',9803,'products/product-30.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(172,0,'product-31','product-31',9,'image/jpeg',9803,'products/product-31.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(173,0,'product-32','product-32',9,'image/jpeg',9803,'products/product-32.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(174,0,'product-33','product-33',9,'image/jpeg',9803,'products/product-33.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(175,0,'product-34','product-34',9,'image/jpeg',9803,'products/product-34.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(176,0,'product-35','product-35',9,'image/jpeg',9803,'products/product-35.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(177,0,'product-36','product-36',9,'image/jpeg',9803,'products/product-36.jpg','[]','2024-04-25 00:58:49','2024-04-25 00:58:49',NULL),(178,0,'product-37','product-37',9,'image/jpeg',9803,'products/product-37.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(179,0,'product-38','product-38',9,'image/jpeg',9803,'products/product-38.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(180,0,'product-39','product-39',9,'image/jpeg',9803,'products/product-39.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(181,0,'product-4','product-4',9,'image/jpeg',9803,'products/product-4.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(182,0,'product-40','product-40',9,'image/jpeg',9803,'products/product-40.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(183,0,'product-41','product-41',9,'image/jpeg',9803,'products/product-41.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(184,0,'product-42','product-42',9,'image/jpeg',9803,'products/product-42.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(185,0,'product-43','product-43',9,'image/jpeg',9803,'products/product-43.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(186,0,'product-44','product-44',9,'image/jpeg',9803,'products/product-44.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(187,0,'product-45','product-45',9,'image/jpeg',9803,'products/product-45.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(188,0,'product-46','product-46',9,'image/jpeg',9803,'products/product-46.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(189,0,'product-47','product-47',9,'image/jpeg',9803,'products/product-47.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(190,0,'product-48','product-48',9,'image/jpeg',9803,'products/product-48.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(191,0,'product-49','product-49',9,'image/jpeg',9803,'products/product-49.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(192,0,'product-5','product-5',9,'image/jpeg',9803,'products/product-5.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(193,0,'product-50','product-50',9,'image/jpeg',9803,'products/product-50.jpg','[]','2024-04-25 00:58:50','2024-04-25 00:58:50',NULL),(194,0,'product-51','product-51',9,'image/jpeg',9803,'products/product-51.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(195,0,'product-52','product-52',9,'image/jpeg',9803,'products/product-52.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(196,0,'product-53','product-53',9,'image/jpeg',9803,'products/product-53.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(197,0,'product-54','product-54',9,'image/jpeg',9803,'products/product-54.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(198,0,'product-55','product-55',9,'image/jpeg',9803,'products/product-55.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(199,0,'product-56','product-56',9,'image/jpeg',9803,'products/product-56.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(200,0,'product-57','product-57',9,'image/jpeg',9803,'products/product-57.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(201,0,'product-58','product-58',9,'image/jpeg',9803,'products/product-58.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(202,0,'product-59','product-59',9,'image/jpeg',9803,'products/product-59.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(203,0,'product-6','product-6',9,'image/jpeg',9803,'products/product-6.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(204,0,'product-60','product-60',9,'image/jpeg',9803,'products/product-60.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(205,0,'product-61','product-61',9,'image/jpeg',9803,'products/product-61.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(206,0,'product-62','product-62',9,'image/jpeg',9803,'products/product-62.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(207,0,'product-63','product-63',9,'image/jpeg',9803,'products/product-63.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(208,0,'product-64','product-64',9,'image/jpeg',9803,'products/product-64.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(209,0,'product-65','product-65',9,'image/jpeg',9803,'products/product-65.jpg','[]','2024-04-25 00:58:51','2024-04-25 00:58:51',NULL),(210,0,'product-66','product-66',9,'image/jpeg',9803,'products/product-66.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(211,0,'product-67','product-67',9,'image/jpeg',9803,'products/product-67.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(212,0,'product-68','product-68',9,'image/jpeg',9803,'products/product-68.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(213,0,'product-69','product-69',9,'image/jpeg',9803,'products/product-69.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(214,0,'product-7','product-7',9,'image/jpeg',9803,'products/product-7.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(215,0,'product-70','product-70',9,'image/jpeg',9803,'products/product-70.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(216,0,'product-71','product-71',9,'image/jpeg',9803,'products/product-71.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(217,0,'product-72','product-72',9,'image/jpeg',9803,'products/product-72.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(218,0,'product-73','product-73',9,'image/jpeg',9803,'products/product-73.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(219,0,'product-74','product-74',9,'image/jpeg',9803,'products/product-74.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(220,0,'product-75','product-75',9,'image/jpeg',9803,'products/product-75.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(221,0,'product-76','product-76',9,'image/jpeg',9803,'products/product-76.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(222,0,'product-77','product-77',9,'image/jpeg',9803,'products/product-77.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(223,0,'product-78','product-78',9,'image/jpeg',9803,'products/product-78.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(224,0,'product-79','product-79',9,'image/jpeg',9803,'products/product-79.jpg','[]','2024-04-25 00:58:52','2024-04-25 00:58:52',NULL),(225,0,'product-8','product-8',9,'image/jpeg',9803,'products/product-8.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(226,0,'product-80','product-80',9,'image/jpeg',9803,'products/product-80.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(227,0,'product-81','product-81',9,'image/jpeg',9803,'products/product-81.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(228,0,'product-82','product-82',9,'image/jpeg',9803,'products/product-82.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(229,0,'product-83','product-83',9,'image/jpeg',9803,'products/product-83.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(230,0,'product-84','product-84',9,'image/jpeg',9803,'products/product-84.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(231,0,'product-85','product-85',9,'image/jpeg',9803,'products/product-85.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(232,0,'product-86','product-86',9,'image/jpeg',9803,'products/product-86.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(233,0,'product-87','product-87',9,'image/jpeg',9803,'products/product-87.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(234,0,'product-88','product-88',9,'image/jpeg',9803,'products/product-88.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(235,0,'product-89','product-89',9,'image/jpeg',9803,'products/product-89.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(236,0,'product-9','product-9',9,'image/jpeg',9803,'products/product-9.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(237,0,'product-90','product-90',9,'image/jpeg',9803,'products/product-90.jpg','[]','2024-04-25 00:58:53','2024-04-25 00:58:53',NULL),(238,0,'product-91','product-91',9,'image/jpeg',9803,'products/product-91.jpg','[]','2024-04-25 00:58:54','2024-04-25 00:58:54',NULL),(239,0,'product-92','product-92',9,'image/jpeg',9803,'products/product-92.jpg','[]','2024-04-25 00:58:54','2024-04-25 00:58:54',NULL),(240,0,'product-93','product-93',9,'image/jpeg',9803,'products/product-93.jpg','[]','2024-04-25 00:58:54','2024-04-25 00:58:54',NULL),(241,0,'product-94','product-94',9,'image/jpeg',9803,'products/product-94.jpg','[]','2024-04-25 00:58:54','2024-04-25 00:58:54',NULL),(242,0,'product-95','product-95',9,'image/jpeg',9803,'products/product-95.jpg','[]','2024-04-25 00:58:54','2024-04-25 00:58:54',NULL),(243,0,'1','1',10,'image/jpeg',9803,'customers/1.jpg','[]','2024-04-25 00:59:02','2024-04-25 00:59:02',NULL),(244,0,'10','10',10,'image/jpeg',9803,'customers/10.jpg','[]','2024-04-25 00:59:02','2024-04-25 00:59:02',NULL),(245,0,'2','2',10,'image/jpeg',9803,'customers/2.jpg','[]','2024-04-25 00:59:02','2024-04-25 00:59:02',NULL),(246,0,'3','3',10,'image/jpeg',9803,'customers/3.jpg','[]','2024-04-25 00:59:02','2024-04-25 00:59:02',NULL),(247,0,'4','4',10,'image/jpeg',9803,'customers/4.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(248,0,'5','5',10,'image/jpeg',9803,'customers/5.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(249,0,'6','6',10,'image/jpeg',9803,'customers/6.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(250,0,'7','7',10,'image/jpeg',9803,'customers/7.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(251,0,'8','8',10,'image/jpeg',9803,'customers/8.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(252,0,'9','9',10,'image/jpeg',9803,'customers/9.jpg','[]','2024-04-25 00:59:03','2024-04-25 00:59:03',NULL),(253,0,'1','1',11,'image/jpeg',9803,'galleries/1.jpg','[]','2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(254,0,'2','2',11,'image/jpeg',9803,'galleries/2.jpg','[]','2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(255,0,'3','3',11,'image/jpeg',9803,'galleries/3.jpg','[]','2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(256,0,'4','4',11,'image/jpeg',9803,'galleries/4.jpg','[]','2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(257,0,'5','5',11,'image/jpeg',9803,'galleries/5.jpg','[]','2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(258,0,'6','6',11,'image/jpeg',9803,'galleries/6.jpg','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(266,0,'avatar-1','avatar-1',13,'image/png',674,'testimonials/avatar-1.png','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(267,0,'avatar-2','avatar-2',13,'image/png',674,'testimonials/avatar-2.png','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(268,0,'avatar-3','avatar-3',13,'image/png',674,'testimonials/avatar-3.png','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(269,0,'team-1','team-1',13,'image/jpeg',6202,'testimonials/team-1.jpg','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(270,0,'team-2','team-2',13,'image/jpeg',6202,'testimonials/team-2.jpg','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(271,0,'team-3','team-3',13,'image/jpeg',6202,'testimonials/team-3.jpg','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(272,0,'team-4','team-4',13,'image/jpeg',6202,'testimonials/team-4.jpg','[]','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL),(273,1,'754884403_122190698738796687_1856006485071134477_n','754884403_122190698738796687_1856006485071134477_n',0,'image/jpeg',261813,'754884403-122190698738796687-1856006485071134477-n.jpg','[]','2026-11-17 03:04:57','2026-11-17 03:05:42','2026-11-17 03:05:42'),(274,1,'couple-statue-garden','couple-statue-garden',0,'image/jpeg',164424,'couple-statue-garden.jpg','[]','2026-11-17 03:09:52','2026-11-17 03:09:52',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(2,0,'blog',NULL,'blog',0,'2024-04-25 00:58:39','2024-04-25 00:58:39',NULL),(3,0,'shop',NULL,'shop',0,'2024-04-25 00:58:40','2024-04-25 00:58:40',NULL),(4,0,'banners',NULL,'banners',0,'2024-04-25 00:58:41','2024-04-25 00:58:41',NULL),(5,0,'icons',NULL,'icons',0,'2024-04-25 00:58:43','2024-04-25 00:58:43',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-04-25 00:58:44','2024-04-25 00:58:44',NULL),(7,0,'brands',NULL,'brands',0,'2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(8,0,'features',NULL,'features',0,'2024-04-25 00:58:46','2024-04-25 00:58:46',NULL),(9,0,'products',NULL,'products',0,'2024-04-25 00:58:47','2024-04-25 00:58:47',NULL),(10,0,'customers',NULL,'customers',0,'2024-04-25 00:59:02','2024-04-25 00:59:02',NULL),(11,0,'galleries',NULL,'galleries',0,'2024-04-25 00:59:06','2024-04-25 00:59:06',NULL),(13,0,'testimonials',NULL,'testimonials',0,'2024-04-25 00:59:07','2024-04-25 00:59:07',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-25 00:59:06','2024-04-25 00:59:06'),(2,2,'information','2024-04-25 00:59:06','2024-04-25 00:59:06'),(3,3,'my-account','2024-04-25 00:59:06','2024-04-25 00:59:06'),(4,4,'social-network','2024-04-25 00:59:06','2024-04-25 00:59:06');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (25,2,0,1,'Botble\\Page\\Models\\Page','/',NULL,1,'Custom Service',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(26,2,0,1,'Botble\\Page\\Models\\Page','/',NULL,1,'FAQs',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(27,2,0,1,'Botble\\Page\\Models\\Page','/',NULL,1,'Order Tracking',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(28,2,0,1,'Botble\\Page\\Models\\Page','/',NULL,1,'Contacts',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(29,2,0,1,'Botble\\Page\\Models\\Page','/',NULL,1,'Events',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(30,3,0,1,'Botble\\Page\\Models\\Page','/',NULL,2,'Delivery Information',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(31,3,0,1,'Botble\\Page\\Models\\Page','/',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(32,3,0,1,'Botble\\Page\\Models\\Page','/',NULL,2,'Discount',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(33,3,0,1,'Botble\\Page\\Models\\Page','/',NULL,2,'Custom Service',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(34,3,0,1,'Botble\\Page\\Models\\Page','/',NULL,2,'Terms & Condition',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(35,4,0,NULL,NULL,'#','fab fa-facebook',3,'Facebook',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(36,4,0,NULL,NULL,'#','fab fa-dribbble',3,'Dribble',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(37,4,0,NULL,NULL,'#','fab fa-twitter',3,'Twitter',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(38,4,0,NULL,NULL,'#','fab fa-behance',3,'Behance',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(39,4,0,NULL,NULL,'#','fab fa-youtube',3,'Youtube',NULL,'_self',0,'2024-04-25 00:59:06','2024-04-25 00:59:06'),(40,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,NULL,NULL),(41,1,0,NULL,NULL,'/product-categories/couple-figurines',NULL,1,'Couple Figurines',NULL,'_self',0,NULL,NULL),(42,1,0,NULL,NULL,'/product-categories/personalized-statues',NULL,2,'Personalized Statues',NULL,'_self',0,NULL,NULL),(43,1,0,NULL,NULL,'/product-categories/custom-gifts',NULL,3,'Custom Gifts',NULL,'_self',0,NULL,NULL),(44,1,0,NULL,NULL,'/products',NULL,5,'Shop',NULL,'_self',0,NULL,NULL),(45,1,0,NULL,NULL,'/about',NULL,6,'About',NULL,'_self',0,NULL,NULL),(46,1,0,NULL,NULL,'/contact',NULL,7,'Contact',NULL,'_self',0,NULL,NULL),(47,1,0,NULL,NULL,'/product-categories/gods-statues',NULL,4,'Gods Statues',NULL,'_self',0,NULL,NULL);
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-25 00:59:06','2024-04-25 00:59:06'),(2,'Information','information','published','2024-04-25 00:59:06','2024-04-25 00:59:06'),(3,'My Account','my-account','published','2024-04-25 00:59:06','2024-04-25 00:59:06'),(4,'Social Network','social-network','published','2024-04-25 00:59:06','2024-04-25 00:59:06');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'header_style','[\"collapsed\"]',1,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(2,'customize_footer','[\"custom\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(3,'footer_background_color','[\"#040404\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(4,'footer_text_color','[\"#fff\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(5,'footer_text_muted_color','[\"#a0a0a0\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(6,'footer_logo','[\"general\\/logo-white.png\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(7,'footer_border_color','[\"#282828\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(8,'footer_bottom_background_color','[\"#040404\"]',2,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(9,'customize_footer','[\"custom\"]',3,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(10,'footer_bottom_background_color','[\"#f8f8f8\"]',3,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(11,'header_style','[\"centered-logo\"]',4,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(12,'customize_footer','[\"custom\"]',4,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(13,'footer_background_color','[\"#F7EFEC\"]',4,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(14,'footer_bottom_background_color','[\"#F7EFEC\"]',4,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(15,'customize_footer','[\"custom\"]',5,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(16,'footer_background_color','[\"#F7EFEC\"]',5,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(17,'footer_bottom_background_color','[\"#F7EFEC\"]',5,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(18,'customize_footer','[\"custom\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(19,'footer_background_color','[\"#040404\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(20,'footer_text_color','[\"#fff\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(21,'footer_text_muted_color','[\"#a0a0a0\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(22,'footer_logo','[\"general\\/logo-white.png\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(23,'footer_border_color','[\"#282828\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(24,'footer_bottom_background_color','[\"#040404\"]',7,'Botble\\Page\\Models\\Page','2024-04-25 00:58:41','2024-04-25 00:58:41'),(29,'subtitle','[\"Accessories\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(30,'action_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(31,'subtitle','[\"Winter\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(32,'action_label','[\"Shop Now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(33,'subtitle','[\"Winter\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(34,'action_label','[\"Shop Now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(35,'subtitle','[\"Winter\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(36,'action_label','[\"Shop Now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(37,'subtitle','[null]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(38,'action_label','[\"Shop Now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(39,'subtitle','[\"New Modern Stylist Fashionable Women\'s Wear holder\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(40,'action_label','[\"Shop Now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(41,'subtitle','[\"New Modern Stylist Fashionable Women\'s Wear holder\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(42,'action_label','[\"Shop Now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(43,'subtitle','[null]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(44,'action_label','[\"Shop Now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(45,'subtitle','[null]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(46,'action_label','[\"Shop Now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(47,'subtitle','[null]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(48,'action_label','[\"Shop Now\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(49,'subtitle','[null]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(50,'action_label','[\"Shop Now\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(51,'subtitle','[null]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(52,'action_label','[\"Shop Now\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(53,'subtitle','[null]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(54,'action_label','[\"Shop Now\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-25 00:58:45','2024-04-25 00:58:45'),(55,'subtitle','[\"Collection\"]',3,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(56,'subtitle','[\"New Modern Stylist Fashionable <br> Women\'s Wear holder\"]',4,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(57,'subtitle','[\"Furniture\"]',5,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(58,'subtitle','[\"100 Added\"]',6,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(59,'subtitle','[\"-60% Offer\"]',7,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(60,'subtitle','[\"Best Bakery Products\"]',8,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:45','2024-04-25 00:58:45'),(61,'subtitle','[\"Best Bakery Products\"]',9,'Botble\\Ads\\Models\\Ads','2024-04-25 00:58:46','2024-04-25 00:58:46'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(63,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(66,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(68,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(69,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(70,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(71,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(72,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(73,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(74,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(75,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(76,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(77,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(78,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:54','2024-04-25 00:58:54'),(79,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(80,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(81,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(82,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(83,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(84,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(85,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(86,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(87,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(88,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(89,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(90,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(91,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(92,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(93,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',32,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(94,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',33,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(95,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',34,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(96,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',35,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(97,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',36,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(98,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',37,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(99,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',38,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(100,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',39,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(101,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',40,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(102,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',41,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(103,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',42,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(104,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',43,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(105,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',44,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(106,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',45,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(107,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',46,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(108,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',47,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:55','2024-04-25 00:58:55'),(109,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',48,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(110,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',49,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(111,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',50,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(112,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',51,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(113,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',52,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(114,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',53,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(115,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',54,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(116,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',55,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(117,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',56,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(118,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',57,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(119,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',58,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(120,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',59,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(121,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',60,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(122,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',61,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(123,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',62,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(124,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',63,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(125,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',64,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(126,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',65,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(127,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',66,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(128,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',67,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(129,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',68,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(130,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',69,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(131,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',70,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(132,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',71,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(133,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',72,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(134,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',73,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(135,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',74,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(136,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',75,'Botble\\Ecommerce\\Models\\Product','2024-04-25 00:58:56','2024-04-25 00:58:56'),(137,'title','[\"Satisfied client testimonial\"]',1,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(138,'star','[5]',1,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(139,'title','[\"98% of residents recommend us\"]',2,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(140,'star','[5]',2,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(141,'title','[\"Our success stories\"]',3,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(142,'star','[5]',3,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(143,'title','[\"This is simply unbelievable\"]',4,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(144,'star','[5]',4,'Botble\\Testimonial\\Models\\Testimonial','2024-04-25 00:59:07','2024-04-25 00:59:07'),(145,'seo_meta','[{\"index\":\"index\"}]',1,'Botble\\Ecommerce\\Models\\Product','2026-11-17 03:11:24','2026-11-17 03:11:24'),(146,'faq_ids','[[]]',1,'Botble\\Ecommerce\\Models\\Product','2026-11-17 03:11:24','2026-11-17 03:11:24');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_08_26_080444_fix_missing_copyright_widget',1),(30,'2023_09_07_025340_activate_mollie_and_sale_popup_plugin',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_10_27_023808_update_page_metabox',1),(33,'2023_11_22_071805_migrate_header_messages_to_announcements_table',1),(34,'2023_12_06_100448_change_random_hash_for_media',1),(35,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(36,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(37,'2024_03_25_000000_migrate_rename_shortcode_contact_box_to_contact_form',1),(38,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(39,'2020_11_18_150916_ads_create_ads_table',2),(40,'2021_12_02_035301_add_ads_translations_table',2),(41,'2023_04_17_062645_add_open_in_new_tab',2),(42,'2023_11_07_023805_add_tablet_mobile_image',2),(43,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(44,'2023_08_11_060908_create_announcements_table',3),(45,'2015_06_29_025744_create_audit_history',4),(46,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(47,'2015_06_18_033822_create_blog_table',5),(48,'2021_02_16_092633_remove_default_value_for_author_type',5),(49,'2021_12_03_030600_create_blog_translations',5),(50,'2022_04_19_113923_add_index_to_table_posts',5),(51,'2023_08_29_074620_make_column_author_id_nullable',5),(52,'2016_06_17_091537_create_contacts_table',6),(53,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(54,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(55,'2024_03_25_000001_update_captcha_settings_for_contact',6),(56,'2024_04_19_063914_create_custom_fields_table',6),(57,'2020_03_05_041139_create_ecommerce_tables',7),(58,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(59,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(60,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(61,'2021_02_18_073505_update_table_ec_reviews',7),(62,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(63,'2021_03_10_025153_change_column_tax_amount',7),(64,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(65,'2021_04_28_074008_ecommerce_create_product_label_table',7),(66,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(67,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(68,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(69,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(70,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(71,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(72,'2021_11_23_071403_correct_languages_for_product_variations',7),(73,'2021_11_28_031808_add_product_tags_translations',7),(74,'2021_12_01_031123_add_featured_image_to_ec_products',7),(75,'2022_01_01_033107_update_table_ec_shipments',7),(76,'2022_02_16_042457_improve_product_attribute_sets',7),(77,'2022_03_22_075758_correct_product_name',7),(78,'2022_04_19_113334_add_index_to_ec_products',7),(79,'2022_04_28_144405_remove_unused_table',7),(80,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(81,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(82,'2022_06_16_095633_add_index_to_some_tables',7),(83,'2022_06_30_035148_create_order_referrals_table',7),(84,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(85,'2022_08_14_032836_create_ec_order_returns_table',7),(86,'2022_08_14_033554_create_ec_order_return_items_table',7),(87,'2022_08_15_040324_add_billing_address',7),(88,'2022_08_30_091114_support_digital_products_table',7),(89,'2022_09_13_095744_create_options_table',7),(90,'2022_09_13_104347_create_option_value_table',7),(91,'2022_10_05_163518_alter_table_ec_order_product',7),(92,'2022_10_12_041517_create_invoices_table',7),(93,'2022_10_12_142226_update_orders_table',7),(94,'2022_10_13_024916_update_table_order_returns',7),(95,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(96,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(97,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(98,'2022_11_19_041643_add_ec_tax_product_table',7),(99,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(100,'2022_12_17_041532_fix_address_in_order_invoice',7),(101,'2022_12_26_070329_create_ec_product_views_table',7),(102,'2023_01_04_033051_fix_product_categories',7),(103,'2023_01_09_050400_add_ec_global_options_translations_table',7),(104,'2023_01_10_093754_add_missing_option_value_id',7),(105,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(106,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(107,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(108,'2023_02_27_095752_remove_duplicate_reviews',7),(109,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(110,'2023_04_21_082427_create_ec_product_categorizables_table',7),(111,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(112,'2023_05_17_025812_fix_invoice_issue',7),(113,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(114,'2023_05_27_144611_fix_exchange_rate_setting',7),(115,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(116,'2023_06_30_042512_create_ec_order_tax_information_table',7),(117,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(118,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(119,'2023_08_15_064505_create_ec_tax_rules_table',7),(120,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(121,'2023_08_22_094114_drop_unique_for_barcode',7),(122,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(123,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(124,'2023_09_19_024955_create_discount_product_categories_table',7),(125,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(126,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(127,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(128,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(129,'2023_12_25_040604_ec_create_review_replies_table',7),(130,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(131,'2024_01_16_070706_fix_translation_tables',7),(132,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(133,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(134,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(135,'2024_03_29_042242_migrate_old_captcha_settings',7),(136,'2024_03_29_093946_create_ec_order_return_histories_table',7),(137,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(138,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(139,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(140,'2018_07_09_221238_create_faq_table',8),(141,'2021_12_03_082134_create_faq_translations',8),(142,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(143,'2016_10_13_150201_create_galleries_table',9),(144,'2021_12_03_082953_create_gallery_translations',9),(145,'2022_04_30_034048_create_gallery_meta_translations_table',9),(146,'2023_08_29_075308_make_column_user_id_nullable',9),(147,'2016_10_03_032336_create_languages_table',10),(148,'2023_09_14_022423_add_index_for_language_table',10),(149,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(150,'2021_12_03_075608_create_page_translations',11),(151,'2023_07_06_011444_create_slug_translations_table',11),(152,'2019_11_18_061011_create_country_table',12),(153,'2021_12_03_084118_create_location_translations',12),(154,'2021_12_03_094518_migrate_old_location_data',12),(155,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(156,'2022_01_16_085908_improve_plugin_location',12),(157,'2022_08_04_052122_delete_location_backup_tables',12),(158,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(159,'2023_07_26_041451_add_more_columns_to_location_table',12),(160,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(161,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(162,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(163,'2017_10_24_154832_create_newsletter_table',13),(164,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(165,'2017_05_18_080441_create_payment_tables',14),(166,'2021_03_27_144913_add_customer_type_into_table_payments',14),(167,'2021_05_24_034720_make_column_currency_nullable',14),(168,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(169,'2021_10_19_020859_update_metadata_field',14),(170,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(171,'2022_07_07_153354_update_charge_id_in_table_payments',14),(172,'2017_07_11_140018_create_simple_slider_table',15),(173,'2022_11_02_092723_team_create_team_table',16),(174,'2023_08_11_094574_update_team_table',16),(175,'2023_11_30_085354_add_missing_description_to_team',16),(176,'2018_07_09_214610_create_testimonial_table',17),(177,'2021_12_03_083642_create_testimonials_translations',17),(178,'2016_10_07_193005_create_translations_table',18),(179,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Wooden Home','[simple-slider key=\"slider-home-1\" style=\"wooden\"][/simple-slider][product-categories style=\"wooden\" title=\"Shop by occasion\" category_ids=\"1,2,3,4\"][/product-categories][products style=\"wooden\" title=\"Popular <span>Collections</span>\" limit=\"8\" enable_lazy_loading=\"yes\"][/products]',1,NULL,'full-width',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(2,'Fashion Home','[simple-slider key=\"slider-home-2\" style=\"fashion\"][/simple-slider][product-categories title=&quot;Top &lt;span&gt;Categories&lt;/span&gt;&quot; category_ids=&quot;1,2,3,4&quot; style=&quot;fashion&quot; enable_lazy_loading=&quot;yes&quot;][/product-categories][products style=&quot;fashion&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;10&quot; enable_lazy_loading=&quot;yes&quot;][/products][theme-ads key_1=\"QPTCBJBOJOSY\" key_2=\"T2VFLDYYIJEH\" enable_lazy_loading=\"yes\"][/theme-ads][featured-posts title=\"Popular Posts\" limit=\"4\" enable_lazy_loading=\"yes\"][/featured-posts][brands title=\"Happy Sponsors\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/brand-01.png\" link_1=\"#\" name_2=\"Bazaar\" image_2=\"brands/brand-02.png\" link_2=\"#\" name_3=\"goop\" image_3=\"brands/brand-03.png\" link_3=\"#\" name_4=\"Brit + Co\" image_4=\"brands/brand-04.png\" link_4=\"#\" name_5=\"The Coveteur\" image_5=\"brands/brand-05.png\" link_5=\"#\" name_6=\"allure\" image_6=\"brands/brand-06.png\" link_6=\"#\" enable_lazy_loading=\"yes\"][/brands]',1,NULL,'full-width',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(3,'Furniture Home','[simple-slider key=\"slider-furniture\" style=\"furniture\"][/simple-slider][services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;10&quot; enable_lazy_loading=&quot;yes&quot;][/products][theme-ads style=\"furniture\" key_1=\"JO7LLJHFH1RO\" key_2=\"L8GDJUBVD2TQ\" key_3=\"PXJPAXLOCVRS\" enable_lazy_loading=\"yes\"][/theme-ads][deal-product flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/deal-product][products-slide title=\"Top Sell In Month\" limit=\"5\" type=\"trending\" enable_lazy_loading=\"yes\"][/products-slide][brands title=\"Happy Sponsors\" background_color=\"#040404\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/brand-w-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/brand-w-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/brand-w-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/brand-w-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/brand-w-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/brand-w-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands][featured-posts title=\"Blog & Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(4,'Cosmetics Home','[simple-slider key=\"slider-cosmetics\" style=\"cosmetics\"][/simple-slider][brands background_color=\"#F7EFEC\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/pla-brand-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/pla-brand-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/pla-brand-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/pla-brand-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/pla-brand-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/pla-brand-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands][product-collections collection_ids=\"4,5,6,7\" enable_lazy_loading=\"yes\"][/product-collections][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;4&quot; enable_lazy_loading=&quot;yes&quot;][/products][product-categories category_ids=\"10,11,12,13,14,15\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/product-categories][deal-product flash_sale_id=\"1\" style=\"cosmetics\" marque_text=\"Great Deal Of The Day Shop Now\" marque_highlight_text=\"Shop Now\" marque_highlight_url=\"/products\" highlight_background=\"blog/9.jpg\" enable_lazy_loading=\"yes\"][/deal-product][testimonials title=\"User Feedbacks\" limit=\"3\" enable_lazy_loading=\"yes\"][/testimonials][featured-posts title=\"Blog & Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(5,'Food Grocery Home','[simple-slider key=\"slider-grocery\" style=\"grocery\" ads_1=\"EMRCINED6AX9\" ads_2=\"JVMDAIB9HO2I\" background_image=\"banners/banner-bg-05.jpg\"][/simple-slider][services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;10&quot; enable_lazy_loading=&quot;yes&quot;][/products][deal-product flash_sale_id=\"1\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/deal-product][products-by-categories category_ids=\"2,3,6,11\" number_of_products=\"4\" enable_lazy_loading=\"yes\"][/products-by-categories][testimonials title=\"User Feedbacks\" limit=\"3\" background_color=\"#F7EFEC\" card_color=\"#FFFFFF\" enable_lazy_loading=\"yes\"][/testimonials][featured-posts title=\"Blog & Insights\" limit=\"4\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(6,'Blog',NULL,1,NULL,NULL,NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(7,'About','[about image_1=\"banners/about-img-1.jpg\" image_2=\"banners/about-img-2.jpg\" logo=\"banners/about-img-3.png\" title=\"About Our Story\" subtitle=\"About Us\" story_text_1=\"Publish your eCommerce site quickly with our easy-to-use store builder— no coding required. Migrate your items from your point of sale system or turn your Instagram feed into a shopping site and start selling fast. Square Online works for all kinds of businesses—retail, restaurants, services without costly customization or add ons. Get orders to your customers in lots of ways by offering shipping, pickup, delivery, and even QR code ordering.\" story_text_2=\"Expand your reach and sell more using seamless integrations with Google, Instagram, Facebook, and more. Built- in SEO tools make it easy for shoppers to find your business on search engines. Get access to the entire suite of integrated Square solutions to help you run your business. Integration between Square Online and all Square point of sale systems makes inventory management easy. Subscribe to Square Marketing and easily send email promotions to your customers using the contact information.\" list_item_1=\"Orders go right to your restaurant point of sale, KDS, and kitchen\" list_item_url_1=\"#\" list_item_2=\"Provide in-person pickup, & delivery by professional couriers\" list_item_url_2=\"#\" list_item_3=\"Offer in-person diners self-serve, contactless ordering via QR codes.\" list_item_url_3=\"#\" enable_lazy_loading=\"yes\"][/about][team title=\"Meet With Team\" subtitle=\"Team\" team_ids=\"1,2,3,4\"][/team][features quantity=\"2\" title_1=\"Solutions that work together\" subtitle_1=\"Features #01\" description_1=\"Publish your eCommerce site quickly with our easy-to-use store builder— no coding required. Migrate your items from your point of sale system or turn your Instagram feed into a shopping site and start selling fast. Square Online works for all kinds of businesses—retail, restaurants, services.\" image_1=\"banners/about-banner-1.jpg\" button_label_1=\"Get In Touch\" button_url_1=\"#\" title_2=\"All kinds of payments securely\" subtitle_2=\"Features #02\" description_2=\"Publish your eCommerce site quickly with our easy-to-use store builder— no coding required. Migrate your items from your point of sale system or turn your Instagram feed into a shopping site and start selling fast. Square Online works for all kinds of businesses—retail, restaurants, services.\" image_2=\"banners/about-banner-2.jpg\" button_label_2=\"Contact With Us\" button_url_2=\"#\" enable_lazy_loading=\"yes\"][/features]',1,NULL,'default',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(8,'Contact','[contact-box title=\"Get In Touch\" address=\"24/26 Strait Bargate, Boston, PE21, United Kingdom\" phone=\" +098 (905) 786 897 8\" email=\"ninico@example.com\" hours=\"10 am - 10 pm EST, 7 days a week\" show_contact_form=\"1\" button_label_1=\"Get Support On Call\" button_url_1=\"#\" button_icon_1=\"fa fa-headphones-alt\" button_label_2=\"Get Direction\" button_url_2=\"#\" button_icon_2=\"fa fa-map-marker-alt\"][/contact-box][google-map]24/26 Strait Bargate, Boston, PE21, United Kingdom[/google-map]',1,NULL,NULL,NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(9,'Coming soon','[coming-soon title=\"We are Coming Soon\" subtitle=\"Coming Soon!\" time=\"2025-10-24\" background_image=\"banners/coming-soon.jpg\" logo_style=\"general/logo-white.png\" show_subscribe_form=\"1\"][/coming-soon]',1,NULL,'blank',NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(10,'Store Locator','[shop-location quantity=\"4\" name_1=\"Baldwin Hills Crenshaw Plaza\" address_1=\"24/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_1=\"+098 (905) 786 897 8\" hours_1=\"10 am - 10 pm EST, 7 days a week\" image_1=\"shop/location-1.png\" name_2=\"Ninico Hills Crenshaw Plaza\" address_2=\" 36/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_2=\"+098 112 786 897 8\" hours_2=\"9 am - 10 pm EST, 5 days a week\" image_2=\"shop/location-2.png\" name_3=\"Vegas BGM Crenshaw Plaza\" address_3=\"40/26 Strait Bargate, Vegas, PE21, United Kingdom\" phone_3=\" +098 (905) 786 897 8\" hours_3=\"10 am - 10 pm EST, 7 days a week\" image_3=\"shop/location-3.png\" name_4=\"Bargate Cine Crenshaw Plaza\" address_4=\"38/26 Strait Bargate, Point, PE21, United Kingdom\" phone_4=\"6 - 146 - 389 - 5748\" hours_4=\"10 am - 10 pm EST, 7 days a week\" image_4=\"shop/location-4.png\" enable_lazy_loading=\"yes\"][/shop-location][google-map]New York, USA[/google-map]',1,NULL,NULL,NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41'),(11,'FAQs','[faqs category_ids=\"1,2,3\"][/faqs]Get in touch<p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p><span style=\"font-size:24px;\"><strong>Get in touch</strong></span></p>[contact-form][/contact-form]',1,NULL,NULL,NULL,'published','2024-04-25 00:58:41','2024-04-25 00:58:41');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'INR',0,'XMEVFR5XLB','cod',NULL,2499.00,42,'pending','confirm',NULL,NULL,NULL,'2026-11-23 07:03:58','2026-11-23 07:03:58',NULL,NULL),(2,'INR',0,'FXJOE8MKEA','cod',NULL,2499.00,43,'pending','confirm',NULL,NULL,NULL,'2026-11-23 07:03:58','2026-11-23 07:03:58',NULL,NULL),(3,'INR',0,'V1QOGZPC9D','cod',NULL,2499.00,44,'pending','confirm',NULL,NULL,NULL,'2026-11-23 07:03:58','2026-11-23 07:03:58',NULL,NULL),(4,'INR',0,'46PUNQ1SKR','cod',NULL,2499.00,45,'pending','confirm',NULL,NULL,NULL,'2026-11-23 07:03:58','2026-11-23 07:03:58',NULL,NULL),(5,'INR',0,'OHAPZTMBPU','cod',NULL,2499.00,46,'pending','confirm',0,NULL,NULL,'2026-11-23 07:05:48','2026-11-23 07:05:48',NULL,NULL),(6,'INR',0,'4SSXBZS3ZB','cod',NULL,2499.00,47,'pending','confirm',0,NULL,NULL,'2026-11-23 07:20:06','2026-11-23 07:20:06',NULL,NULL),(7,'INR',0,'BCWARWYRIY','cod',NULL,2499.00,48,'pending','confirm',0,NULL,NULL,'2026-11-23 07:22:36','2026-11-23 07:22:36',NULL,NULL),(8,'INR',0,'07A1ZUQURL','cod',NULL,2499.00,49,'pending','confirm',0,NULL,NULL,'2026-11-27 04:08:54','2026-11-27 04:08:54',NULL,NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(3,2),(4,2),(4,3),(1,3),(3,4),(2,4),(3,5),(1,5),(2,6),(1,6),(4,7),(1,7),(2,8),(1,8),(2,9),(4,9),(2,10),(1,10),(4,11),(2,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(1,2),(5,2),(2,2),(5,3),(1,3),(3,3),(4,4),(1,4),(2,5),(3,5),(4,6),(3,6),(1,6),(5,7),(1,7),(5,8),(4,8),(4,9),(3,9),(3,10),(1,10),(2,10),(5,11),(4,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','The Mouse did not answer, so Alice went on, yawning and rubbing its eyes, for it now, I suppose, by being drowned in my time, but never ONE with such a tiny golden key, and when she had finished.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/1.jpg',408,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Sir, With no jury or judge, would be offended again. \'Mine is a very grave voice, \'until all the creatures wouldn\'t be so easily offended!\' \'You\'ll get used to it in asking riddles that have no.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'blog/2.jpg',1084,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(3,'The Top 2020 Handbag Trends to Know','Alice sadly. \'Hand it over a little shriek and a sad tale!\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, that she ran across the garden, where Alice could see, when she.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'blog/3.jpg',1164,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(4,'How to Match the Color of Your Handbag With an Outfit','Presently she began very cautiously: \'But I don\'t like the three gardeners, oblong and flat, with their heads off?\' shouted the Queen in front of the evening, beautiful Soup! Beau--ootiful Soo--oop!.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/4.jpg',1669,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(5,'How to Care for Leather Bags','I only wish people knew that: then they both bowed low, and their curls got entangled together. Alice was very like a wild beast, screamed \'Off with her friend. When she got to grow up again! Let me.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/5.jpg',2285,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','All the time she went on all the way to explain it as you say it.\' \'That\'s nothing to do: once or twice, half hoping that the best plan.\' It sounded an excellent opportunity for making her escape.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/6.jpg',778,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(7,'Essential Qualities of Highly Successful Music','It doesn\'t look like one, but it was done. They had not gone much farther before she found to be two people. \'But it\'s no use going back to the waving of the players to be patted on the top of his.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/7.jpg',2432,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(8,'9 Things I Love About Shaving My Head','Oh, how I wish you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all what had become of me? They\'re dreadfully fond of beheading people here; the great.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'blog/8.jpg',2307,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(9,'Why Teamwork Really Makes The Dream Work','Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Caterpillar angrily, rearing itself upright as it was the White Rabbit cried out.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'blog/9.jpg',217,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(10,'The World Caters to Average People','Mock Turtle, and to hear his history. I must have a prize herself, you know,\' the Mock Turtle is.\' \'It\'s the first witness,\' said the King eagerly, and he poured a little shriek, and went back to.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'blog/10.jpg',2362,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40'),(11,'The litigants on the screen are not actors','Footman continued in the sea. The master was an uncomfortably sharp chin. However, she soon made out the Fish-Footman was gone, and, by the prisoner to--to somebody.\' \'It must have a trial: For.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'blog/11.jpg',1092,NULL,'2024-04-25 00:58:40','2024-04-25 00:58:40');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-25 00:58:39','2024-04-25 00:58:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','d944ea9791e51c5bde4b370c26e4f31e',NULL,'2026-11-23 07:29:51'),(2,'api_enabled','0',NULL,'2026-11-23 07:29:51'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]',NULL,'2026-11-23 07:29:51'),(6,'theme','ninico',NULL,'2026-11-23 07:29:51'),(7,'show_admin_bar','1',NULL,'2026-11-23 07:29:51'),(8,'language_hide_default','1',NULL,'2026-11-23 07:29:51'),(9,'language_switcher_display','dropdown',NULL,'2026-11-23 07:29:51'),(10,'language_display','all',NULL,'2026-11-23 07:29:51'),(11,'language_hide_languages','[]',NULL,'2026-11-23 07:29:51'),(12,'payment_cod_status','1',NULL,'2026-11-23 07:29:51'),(13,'payment_bank_transfer_status','1',NULL,'2026-11-23 07:29:51'),(14,'admin_favicon','general/favicon.png',NULL,'2026-11-23 07:29:51'),(15,'admin_logo','general/logo-white.png',NULL,'2026-11-23 07:29:51'),(16,'permalink-botble-blog-models-post','blog',NULL,'2026-11-23 07:29:51'),(17,'permalink-botble-blog-models-category','blog',NULL,'2026-11-23 07:29:51'),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2026-11-23 07:29:51'),(19,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2026-11-23 07:29:51'),(20,'payment_stripe_payment_type','stripe_checkout',NULL,'2026-11-23 07:29:51'),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,'2026-11-23 07:29:51'),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,'2026-11-23 07:29:51'),(23,'ecommerce_is_enabled_support_digital_products','1',NULL,'2026-11-23 07:29:51'),(24,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2026-11-23 07:29:51'),(25,'ecommerce_product_sku_format','NN-2443-[%S]',NULL,'2026-11-23 07:29:51'),(26,'theme-ninico-site_title','Rainbow Statue Gallery',NULL,'2026-11-23 07:29:51'),(27,'theme-ninico-seo_description','Rainbow Statue Gallery — Exquisite spiritual statues, sacred sculptures, and divine art handcrafted for your home and temples.',NULL,'2026-11-23 07:29:51'),(28,'theme-ninico-favicon','general/favicon.png',NULL,'2026-11-23 07:29:51'),(29,'theme-ninico-logo_light','general/logo-white.png',NULL,'2026-11-23 07:29:51'),(30,'theme-ninico-logo','general/logo.png',NULL,'2026-11-23 07:29:51'),(31,'theme-ninico-primary_font','Jost',NULL,'2026-11-23 07:29:51'),(32,'theme-ninico-primary_color','#2073BF',NULL,'2026-11-23 07:29:51'),(33,'theme-ninico-hotline','908. 408. 501. 89',NULL,'2026-11-23 07:29:51'),(34,'theme-ninico-homepage_id','1',NULL,'2026-11-23 07:29:51'),(35,'theme-ninico-blog_page_id','6',NULL,'2026-11-23 07:29:51'),(36,'theme-ninico-cart_footer_description','Free shipping for orders <b>under 10km</b>',NULL,'2026-11-23 07:29:51'),(37,'theme-ninico-breadcrumb_background','',NULL,'2026-11-23 07:29:51'),(38,'theme-ninico-login_background','banners/login-bg.jpg',NULL,'2026-11-23 07:29:51'),(39,'theme-ninico-register_background','banners/sign-bg.jpg',NULL,'2026-11-23 07:29:51'),(40,'theme-ninico-404_not_found_icon','icons/error.png',NULL,'2026-11-23 07:29:51'),(41,'theme-ninico-order_tracking_background','banners/track-bg.jpg',NULL,'2026-11-23 07:29:51'),(42,'theme-ninico-default_product_list_layout','grid',NULL,'2026-11-23 07:29:51'),(43,'theme-ninico-number_of_products_per_page','30',NULL,'2026-11-23 07:29:51'),(44,'theme-ninico-footer_background_color','#F4F8FD',NULL,'2026-11-23 07:29:51'),(45,'theme-ninico-footer_text_color','#182A3E',NULL,'2026-11-23 07:29:51'),(46,'theme-ninico-footer_text_muted_color','#6B7C93',NULL,'2026-11-23 07:29:51'),(47,'theme-ninico-footer_border_color','#D0E2F4',NULL,'2026-11-23 07:29:51'),(48,'theme-ninico-footer_bottom_background_color','#EAF2FA',NULL,'2026-11-23 07:29:51'),(49,'theme-ninico-preloader_version','v2',NULL,'2026-11-23 07:29:51'),(50,'theme-ninico-newsletter_popup_enable','0',NULL,'2026-11-23 07:29:51'),(51,'theme-ninico-newsletter_popup_image','general/newsletter-popup.png',NULL,'2026-11-23 07:29:51'),(52,'theme-ninico-newsletter_popup_title','Subscribe Now',NULL,'2026-11-23 07:29:51'),(53,'theme-ninico-newsletter_popup_subtitle','Newsletter',NULL,'2026-11-23 07:29:51'),(54,'theme-ninico-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,'2026-11-23 07:29:51'),(55,'theme-ninico-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"name\",\"value\":\"Behance\"},{\"key\":\"icon\",\"value\":\"fab fa-behance\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.behance.net\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"LinkedIn\"},{\"key\":\"icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2026-11-23 07:29:51'),(56,'announcement_text_alignment','start',NULL,'2026-11-23 07:29:51'),(57,'announcement_background_color','#E5EFF9',NULL,'2026-11-23 07:29:51'),(58,'announcement_text_color','#10243C',NULL,'2026-11-23 07:29:51'),(59,'announcement_font_size','13',NULL,'2026-11-23 07:29:51'),(60,'announcement_font_size_unit','px',NULL,'2026-11-23 07:29:51'),(61,'announcement_autoplay','1',NULL,'2026-11-23 07:29:51'),(62,'announcement_autoplay_delay','3000',NULL,'2026-11-23 07:29:51'),(63,'theme-ninico-logo_height','68',NULL,'2026-11-23 07:29:51'),(64,'admin_primary_color','#2073BF',NULL,'2026-11-23 07:29:51'),(65,'theme-ninico-sticky_header_enabled','yes',NULL,'2026-11-23 07:29:51'),(66,'theme-ninico-sticky_header_mobile_enabled','yes',NULL,'2026-11-23 07:29:51'),(67,'theme-ninico-bottom_mobile_menu_enabled','yes',NULL,'2026-11-23 07:29:51'),(68,'theme-ninico-bottom_mobile_menu_show_label','yes',NULL,'2026-11-23 07:29:51'),(69,'theme-ninico-show_site_name','0',NULL,'2026-11-23 07:29:51'),(70,'theme-ninico-seo_title','',NULL,'2026-11-23 07:29:51'),(71,'theme-ninico-seo_og_image','',NULL,'2026-11-23 07:29:51'),(72,'theme-ninico-theme_breadcrumb_enabled','1',NULL,'2026-11-23 07:29:51'),(73,'theme-ninico-preloader_enabled','no',NULL,'2026-11-23 07:29:51'),(74,'theme-ninico-header_style','default',NULL,'2026-11-23 07:29:51'),(75,'theme-ninico-collapsing_product_categories_on_homepage','no',NULL,'2026-11-23 07:29:51'),(76,'theme-ninico-breadcrumb_background_color','#F8F8F8',NULL,'2026-11-23 07:29:51'),(77,'theme-ninico-galleries_page_id',NULL,NULL,'2026-11-23 07:29:51'),(78,'theme-ninico-facebook_comment_enabled_in_product','no',NULL,'2026-11-23 07:29:51'),(79,'theme-ninico-facebook_chat_enabled','no',NULL,'2026-11-23 07:29:51'),(80,'theme-ninico-facebook_page_id','',NULL,'2026-11-23 07:29:51'),(81,'theme-ninico-facebook_comment_enabled_in_post','no',NULL,'2026-11-23 07:29:51'),(82,'theme-ninico-facebook_app_id','',NULL,'2026-11-23 07:29:51'),(83,'theme-ninico-facebook_admins','[]',NULL,'2026-11-23 07:29:51'),(84,'theme-ninico-newsletter_popup_delay','5',NULL,'2026-11-23 07:29:51'),(85,'theme-ninico-number_of_posts_in_a_category','12',NULL,'2026-11-23 07:29:51'),(86,'theme-ninico-number_of_posts_in_a_tag','12',NULL,'2026-11-23 07:29:51'),(87,'theme-ninico-display_product_categories_select_on_header','yes',NULL,'2026-11-23 07:29:51'),(88,'theme-ninico-display_product_categories_on_mobile_menu','yes',NULL,'2026-11-23 07:29:51'),(89,'theme-ninico-ecommerce_product_gallery_image_style','vertical',NULL,'2026-11-23 07:29:51'),(90,'theme-ninico-ecommerce_products_page_layout','left_sidebar',NULL,'2026-11-23 07:29:51'),(91,'theme-ninico-ecommerce_header_categories_limit','10',NULL,'2026-11-23 07:29:51'),(92,'theme-ninico-number_of_cross_sale_product','4',NULL,'2026-11-23 07:29:51'),(93,'theme-ninico-max_filter_price','497',NULL,'2026-11-23 07:29:51'),(94,'theme-ninico-logo_in_the_checkout_page',NULL,NULL,'2026-11-23 07:29:51'),(95,'theme-ninico-ecommerce_term_and_privacy_policy_url',NULL,NULL,'2026-11-23 07:29:51'),(96,'theme-ninico-ecommerce_login_page_slug','login',NULL,'2026-11-23 07:29:51'),(97,'theme-ninico-ecommerce_register_page_slug','register',NULL,'2026-11-23 07:29:51'),(98,'theme-ninico-ecommerce_reset_password_page_slug','password/reset',NULL,'2026-11-23 07:29:51'),(99,'theme-ninico-ecommerce_product_listing_page_slug','products',NULL,'2026-11-23 07:29:51'),(100,'theme-ninico-ecommerce_cart_page_slug','cart',NULL,'2026-11-23 07:29:51'),(101,'theme-ninico-ecommerce_checkout_page_slug','checkout',NULL,'2026-11-23 07:29:51'),(102,'theme-ninico-ecommerce_order_tracking_page_slug','orders/tracking',NULL,'2026-11-23 07:29:51'),(103,'theme-ninico-ecommerce_wishlist_page_slug','wishlist',NULL,'2026-11-23 07:29:51'),(104,'theme-ninico-ecommerce_compare_page_slug','compare',NULL,'2026-11-23 07:29:51'),(105,'theme-ninico-ecommerce_customer_overview_page_slug','customer/overview',NULL,'2026-11-23 07:29:51'),(106,'theme-ninico-ecommerce_customer_address_page_slug','customer/address',NULL,'2026-11-23 07:29:51'),(107,'theme-ninico-ecommerce_customer_change_password_page_slug','customer/change-password',NULL,'2026-11-23 07:29:51'),(108,'theme-ninico-ecommerce_customer_downloads_page_slug','customer/downloads',NULL,'2026-11-23 07:29:51'),(109,'theme-ninico-ecommerce_customer_edit_account_page_slug','customer/edit-account',NULL,'2026-11-23 07:29:51'),(110,'theme-ninico-ecommerce_customer_order_returns_page_slug','customer/order-returns',NULL,'2026-11-23 07:29:51'),(111,'theme-ninico-ecommerce_customer_orders_page_slug','customer/orders',NULL,'2026-11-23 07:29:51'),(112,'theme-ninico-ecommerce_customer_product_reviews_page_slug','customer/product-reviews',NULL,'2026-11-23 07:29:51'),(113,'theme-ninico-cookie_consent_enable','no',NULL,'2026-11-23 07:29:51'),(114,'theme-ninico-cookie_consent_style','full-width',NULL,'2026-11-23 07:29:51'),(115,'theme-ninico-cookie_consent_message','Your experience on this site will be improved by allowing cookies.',NULL,'2026-11-23 07:29:51'),(116,'theme-ninico-cookie_consent_button_text','Allow cookies',NULL,'2026-11-23 07:29:51'),(117,'theme-ninico-cookie_consent_learn_more_url','',NULL,'2026-11-23 07:29:51'),(118,'theme-ninico-cookie_consent_learn_more_text','',NULL,'2026-11-23 07:29:51'),(119,'theme-ninico-cookie_consent_background_color','#000',NULL,'2026-11-23 07:29:51'),(120,'theme-ninico-cookie_consent_text_color','#fff',NULL,'2026-11-23 07:29:51'),(121,'theme-ninico-cookie_consent_max_width','1170',NULL,'2026-11-23 07:29:51'),(122,'sale_popup_enabled','0',NULL,'2026-11-23 07:29:51'),(123,'licensed_to','Rainbow Gallery',NULL,'2026-11-23 07:29:51'),(124,'admin_title','Rainbow Gallery',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'','sliders/rainbow-banner-god-statues.jpg','/product-categories/gods-statues','',1,'2026-11-17 02:26:06','2026-11-17 02:26:06'),(2,1,'','sliders/rainbow-banner-personalized-statues.jpg','/product-categories/personalized-statues','',2,'2026-11-17 02:26:06','2026-11-17 02:26:06'),(4,2,'Exclusive <br> Winter Collection','sliders/slider-01.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',1,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(5,2,'Exclusive <br> Women\'s Fashion','sliders/slider-02.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',2,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(6,2,'Exclusive <br> Summer Collection','sliders/slider-03.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',3,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(7,3,'Wooden <br> Lounge Furniture','sliders/slider-04.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',1,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(8,3,'Wooden <br> Lounge Chair','sliders/slider-05.png','/products',NULL,2,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(9,3,'Wooden <br> Houston Furniture','sliders/slider-06.png','/products',NULL,3,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(10,4,'Will Never <br> Compromise Beauty','sliders/slider-bg-04.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',1,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(11,4,'Will Never <br> Compromise Glow','sliders/slider-bg-05.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',2,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(12,4,'Will Never <br> Compromise Health','sliders/slider-bg-06.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',3,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(13,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-1.jpg','/products','Quality &amp; Fresh Products',1,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(14,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-2.jpg','/products','Quality &amp; Fresh Products',2,'2024-04-25 00:58:45','2024-04-25 00:58:45'),(15,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-3.jpg','/products','Quality &amp; Fresh Products',3,'2024-04-25 00:58:45','2024-04-25 00:58:45');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Slider home 1','slider-home-1','The slider on home page 1','published','2024-04-25 00:58:45','2024-04-25 00:58:45'),(2,'Slider home 2','slider-home-2','The slider on home page 2','published','2024-04-25 00:58:45','2024-04-25 00:58:45'),(3,'Slider Furniture','slider-furniture','The slider for furniture style','published','2024-04-25 00:58:45','2024-04-25 00:58:45'),(4,'Slider Cosmetics','slider-cosmetics','The slider for cosmetics style','published','2024-04-25 00:58:45','2024-04-25 00:58:45'),(5,'Slider Grocery','slider-grocery','The slider for grocery style','published','2024-04-25 00:58:45','2024-04-25 00:58:45');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(2,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(3,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(4,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(5,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-25 00:58:40','2024-04-25 00:58:40'),(6,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-25 00:58:40','2024-04-25 00:58:40'),(7,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-25 00:58:40','2024-04-25 00:58:40'),(8,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-25 00:58:40','2024-04-25 00:58:40'),(9,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-25 00:58:40','2024-04-25 00:58:40'),(10,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(11,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(12,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(13,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(14,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(15,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(16,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(17,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(18,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(19,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(20,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-25 00:58:40','2024-04-25 00:58:40'),(21,'wooden-home',1,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(22,'fashion-home',2,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(23,'furniture-home',3,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(24,'cosmetics-home',4,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(25,'food-grocery-home',5,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(26,'blog',6,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(27,'about',7,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(28,'contact',8,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(29,'coming-soon',9,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(30,'store-locator',10,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(31,'faqs',11,'Botble\\Page\\Models\\Page','','2024-04-25 00:58:41','2024-04-25 00:58:41'),(32,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(33,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(34,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(35,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(36,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(37,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-25 00:58:46','2024-04-25 00:58:46'),(38,'couple-figurines',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-25 00:58:47','2026-11-17 02:10:49'),(39,'personalized-statues',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-25 00:58:47','2026-11-17 02:10:49'),(40,'custom-gifts',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-25 00:58:47','2026-11-17 02:10:49'),(55,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(56,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(57,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(58,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(59,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(60,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-25 00:58:47','2024-04-25 00:58:47'),(136,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(137,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(138,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(139,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(140,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(141,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-25 00:59:07','2024-04-25 00:59:07'),(322,'personalized-floral-glass-bottle',1,'Botble\\Ecommerce\\Models\\Product','products','2026-11-01 13:41:25','2026-11-01 13:41:25'),(323,'gods-statues',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-11-17 02:10:49','2026-11-17 02:10:49');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-25 00:58:40','2024-04-25 00:58:40'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-25 00:58:40','2024-04-25 00:58:40'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-25 00:58:40','2024-04-25 00:58:40'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-25 00:58:40','2024-04-25 00:58:40'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-25 00:58:40','2024-04-25 00:58:40');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Rosalina D. Willson','testimonials/team-1.jpg','Founder','USA',NULL,'published','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Ukolilix X. Xilanorix','testimonials/team-2.jpg','CEO','Qatar',NULL,'published','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Alonso M. Miklonax','testimonials/team-3.jpg','Designer','India',NULL,'published','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Miranda H. Halim','testimonials/team-4.jpg','Developer','China',NULL,'published','2024-04-25 00:59:07','2024-04-25 00:59:07',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Guy Hawkins','Five stars! Their cosmetics are magic. Transformed my skin, enhanced my beauty. A go-to for quality and results ⭐⭐⭐⭐⭐','testimonials/avatar-1.png','Bank of America','published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(2,'Eleanor Pena','Top-notch! 5 stars. Makeup, skincare, all exceptional. Delighted with my purchases. A must-visit for every beauty enthusiast! ⭐⭐⭐⭐⭐','testimonials/avatar-2.png','Nintendo','published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(3,'Cody Fisher','Thrilled with results! 5 stars. Solved my sensitive skin issues. The cosmetics shop is a gem. Highly recommended. ⭐⭐⭐⭐⭐','testimonials/avatar-3.png','Starbucks','published','2024-04-25 00:59:07','2024-04-25 00:59:07'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star. Impressed beyond words. ⭐⭐⭐⭐⭐','testimonials/avatar-4.png','Bank of America','published','2024-04-25 00:59:07','2024-04-25 00:59:07');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'theme_mode','light',1,'2026-11-01 07:58:46','2026-11-01 07:58:48');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ylangworth@rowe.info',NULL,'$2y$12$.oFBKyUnYyjm6H7nE9knjefi3zmSHMqTMUCzRq6al9cwiyYej/LPC','VswC24TCmgxdRm2RbGvW31xlyEkvgnOVFFj90UQFqsss2X0ySdxTfuM7G50u','2024-04-25 00:58:39','2026-11-18 03:25:44','Rainbow','Gallerey','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','ninico',0,'{\"description\":\"Rainbow Statue Gallery is your premier destination for handcrafted spiritual statues, divine sculptures, and sacred art for all faiths. Beautifully crafted with devotion and grace.\",\"logo\":null}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(2,'CustomMenuWidget','footer_sidebar','ninico',1,'{\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(3,'CustomMenuWidget','footer_sidebar','ninico',2,'{\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(4,'CustomMenuWidget','footer_sidebar','ninico',3,'{\"name\":\"Social Network\",\"menu_id\":\"social-network\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(5,'NewsletterWidget','footer_sidebar','ninico',4,'[]','2024-04-25 00:58:45','2024-04-25 00:58:45'),(6,'CtaContactWidget','footer_middle_sidebar','ninico',1,'[]','2024-04-25 00:58:45','2024-04-25 00:58:45'),(7,'DownloadAppsWidget','footer_middle_sidebar','ninico',2,'{\"ios_image\":\"general\\/f-app.jpg\",\"android_image\":\"general\\/f-google.jpg\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(8,'SiteCopyrightWidget','footer_bottom_sidebar','ninico',0,'{\"description\":\"Copyright 2026 \\u00a9 <strong>Rainbow Statue Gallery<\\/strong>. All rights reserved.\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(9,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','ninico',1,'{\"image\":\"general\\/f-brand-icon-01.png\",\"url\":\"\\/\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(10,'BlogSearchWidget','blog_sidebar','ninico',1,'{\"name\":\"Search\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(11,'BlogCategoriesWidget','blog_sidebar','ninico',2,'{\"name\":\"Categories\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(12,'BlogPostsWidget','blog_sidebar','ninico',3,'{\"name\":\"Recent Posts\",\"type\":\"recent\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(13,'BlogTagsWidget','blog_sidebar','ninico',4,'{\"name\":\"Popular Tag\"}','2024-04-25 00:58:45','2024-04-25 00:58:45'),(14,'SiteFeaturesWidget','product_detail_sidebar','ninico',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"icons\\/product-det-1.png\",\"text\":\"Free Shipping apply to all orders over $100\"},\"2\":{\"icon\":\"icons\\/product-det-2.png\",\"text\":\"Guaranteed 100% Organic from natural farms\"},\"3\":{\"icon\":\"icons\\/product-det-3.png\",\"text\":\"1 Day Returns if you change your mind\"},\"4\":{\"icon\":\"icons\\/product-det-4.png\",\"text\":\"Covid-19 Info: We keep delivering.\"}}}','2024-04-25 00:58:45','2024-04-25 00:58:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-27 19:50:19
